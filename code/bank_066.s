; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

	ccf                                              ; $4000: $3f
	rrca                                             ; $4001: $0f
	add b                                            ; $4002: $80
	adc h                                            ; $4003: $8c
	ei                                               ; $4004: $fb
	ld h, b                                          ; $4005: $60
	ld sp, hl                                        ; $4006: $f9
	or b                                             ; $4007: $b0
	db $fc                                           ; $4008: $fc
	add b                                            ; $4009: $80
	call c, $cec0                                    ; $400a: $dc $c0 $ce
	nop                                              ; $400d: $00
	inc a                                            ; $400e: $3c
	stop                                             ; $400f: $10 $00
	nop                                              ; $4011: $00
	inc bc                                           ; $4012: $03
	ld bc, $1e37                                     ; $4013: $01 $37 $1e
	inc e                                            ; $4016: $1c
	cp l                                             ; $4017: $bd
	ld [rRAMG], sp                                   ; $4018: $08 $00 $00
	pop bc                                           ; $401b: $c1
	sbc d                                            ; $401c: $9a
	add b                                            ; $401d: $80
	rst $38                                          ; $401e: $ff
	ld h, e                                          ; $401f: $63
	ld a, a                                          ; $4020: $7f
	inc e                                            ; $4021: $1c
	ld b, a                                          ; $4022: $47
	ldh [$9b], a                                     ; $4023: $e0 $9b
	inc hl                                           ; $4025: $23
	ld [hl], $1e                                     ; $4026: $36 $1e
	inc e                                            ; $4028: $1c
	ld l, a                                          ; $4029: $6f
	sbc $2b                                          ; $402a: $de $2b
	ldh [$9a], a                                     ; $402c: $e0 $9a
	scf                                              ; $402e: $37
	ld a, $1e                                        ; $402f: $3e $1e
	ld e, $0c                                        ; $4031: $1e $0c
	dec de                                           ; $4033: $1b
	ret nz                                           ; $4034: $c0

	sbc l                                            ; $4035: $9d
	scf                                              ; $4036: $37
	ccf                                              ; $4037: $3f
	db $dd                                           ; $4038: $dd
	ld e, $df                                        ; $4039: $1e $df
	inc c                                            ; $403b: $0c
	ld l, e                                          ; $403c: $6b
	ldh [hDisp1_SCX], a                                     ; $403d: $e0 $91
	ld [bc], a                                       ; $403f: $02
	push af                                          ; $4040: $f5
	rst SubAFromDE                                          ; $4041: $df
	ld bc, $03df                                     ; $4042: $01 $df $03
	pop af                                           ; $4045: $f1
	ld [hl], a                                       ; $4046: $77
	db $ec                                           ; $4047: $ec
	add e                                            ; $4048: $83
	rlca                                             ; $4049: $07
	ld b, $0b                                        ; $404a: $06 $0b
	ld c, $17                                        ; $404c: $0e $17
	inc e                                            ; $404e: $1c
	rra                                              ; $404f: $1f
	inc d                                            ; $4050: $14
	cpl                                              ; $4051: $2f
	inc [hl]                                         ; $4052: $34
	dec sp                                           ; $4053: $3b
	ld h, $3d                                        ; $4054: $26 $3d
	inc hl                                           ; $4056: $23
	ld a, $21                                        ; $4057: $3e $21
	ld a, $21                                        ; $4059: $3e $21
	ccf                                              ; $405b: $3f
	ld hl, $615f                                     ; $405c: $21 $5f $61
	ld e, a                                          ; $405f: $5f
	ld h, c                                          ; $4060: $61
	cp a                                             ; $4061: $bf
	pop bc                                           ; $4062: $c1
	rst $38                                          ; $4063: $ff
	add d                                            ; $4064: $82
	jp hl                                            ; $4065: $e9


	rst SubAFromDE                                          ; $4066: $df
	ld bc, $0280                                     ; $4067: $01 $80 $02
	inc bc                                           ; $406a: $03
	rlca                                             ; $406b: $07
	rlca                                             ; $406c: $07
	ld a, [bc]                                       ; $406d: $0a
	dec bc                                           ; $406e: $0b
	dec b                                            ; $406f: $05
	rlca                                             ; $4070: $07
	dec bc                                           ; $4071: $0b
	rrca                                             ; $4072: $0f
	rra                                              ; $4073: $1f
	ld d, $3e                                        ; $4074: $16 $3e
	dec l                                            ; $4076: $2d
	ld l, a                                          ; $4077: $6f
	ld e, c                                          ; $4078: $59
	sub l                                            ; $4079: $95
	ei                                               ; $407a: $fb
	ld l, [hl]                                       ; $407b: $6e
	di                                               ; $407c: $f3
	xor e                                            ; $407d: $ab
	or [hl]                                          ; $407e: $b6
	dec a                                            ; $407f: $3d
	ld h, $57                                        ; $4080: $26 $57
	ld l, h                                          ; $4082: $6c
	ld a, e                                          ; $4083: $7b
	ld c, h                                          ; $4084: $4c
	ld a, [hl]                                       ; $4085: $7e
	ld c, c                                          ; $4086: $49
	ld a, [hl]                                       ; $4087: $7e
	sbc b                                            ; $4088: $98
	ld c, c                                          ; $4089: $49
	ld l, [hl]                                       ; $408a: $6e
	ld e, c                                          ; $408b: $59
	ld l, h                                          ; $408c: $6c
	ld e, e                                          ; $408d: $5b
	ld c, l                                          ; $408e: $4d

jr_066_408f:
	ld a, e                                          ; $408f: $7b
	ldh [$c1], a                                     ; $4090: $e0 $c1
	add b                                            ; $4092: $80
	jr nc, @-$1e                                     ; $4093: $30 $e0

	inc sp                                           ; $4095: $33
	pop hl                                           ; $4096: $e1
	ld h, a                                          ; $4097: $67
	jp nz, Jump_066_4c4f                             ; $4098: $c2 $4f $4c

	ld c, a                                          ; $409b: $4f
	ld b, h                                          ; $409c: $44
	ld c, a                                          ; $409d: $4f
	ld b, b                                          ; $409e: $40
	ld h, a                                          ; $409f: $67
	ld b, b                                          ; $40a0: $40
	ld h, a                                          ; $40a1: $67
	ret nz                                           ; $40a2: $c0

	inc hl                                           ; $40a3: $23
	ldh [$a3], a                                     ; $40a4: $e0 $a3
	ldh [$e1], a                                     ; $40a6: $e0 $e1
	ldh [$e1], a                                     ; $40a8: $e0 $e1
	ret nz                                           ; $40aa: $c0

	ld h, b                                          ; $40ab: $60
	ret nz                                           ; $40ac: $c0

	jr nc, jr_066_408f                               ; $40ad: $30 $e0

	ccf                                              ; $40af: $3f
	ldh a, [$1f]                                     ; $40b0: $f0 $1f
	sbc [hl]                                         ; $40b2: $9e
	ld a, a                                          ; $40b3: $7f
	ccf                                              ; $40b4: $3f
	ld l, b                                          ; $40b5: $68
	add b                                            ; $40b6: $80
	ld c, $0f                                        ; $40b7: $0e $0f
	ld [hl], $39                                     ; $40b9: $36 $39
	sbc $ef                                          ; $40bb: $de $ef
	scf                                              ; $40bd: $37
	ld hl, sp-$22                                    ; $40be: $f8 $de

Jump_066_40c0:
	rst SubAFromBC                                          ; $40c0: $e7
	ld a, a                                          ; $40c1: $7f
	sbc b                                            ; $40c2: $98
	ei                                               ; $40c3: $fb
	ld h, a                                          ; $40c4: $67
	xor $9c                                          ; $40c5: $ee $9c
	cp l                                             ; $40c7: $bd
	ld [hl], b                                       ; $40c8: $70
	ld a, d                                          ; $40c9: $7a
	pop hl                                           ; $40ca: $e1
	db $f4                                           ; $40cb: $f4
	jp $c6a9                                         ; $40cc: $c3 $a9 $c6


	ld b, d                                          ; $40cf: $42
	adc h                                            ; $40d0: $8c
	sbc h                                            ; $40d1: $9c
	ld [$188c], sp                                   ; $40d2: $08 $8c $18
	ld sp, $18df                                     ; $40d5: $31 $df $18
	sub d                                            ; $40d8: $92
	ld sp, $3111                                     ; $40d9: $31 $11 $31
	dec h                                            ; $40dc: $25
	ld sp, $2561                                     ; $40dd: $31 $61 $25
	dec l                                            ; $40e0: $2d
	ld h, l                                          ; $40e1: $65
	dec l                                            ; $40e2: $2d
	ld h, l                                          ; $40e3: $65
	xor a                                            ; $40e4: $af
	ld h, l                                          ; $40e5: $65
	ldh [$c1], a                                     ; $40e6: $e0 $c1
	add b                                            ; $40e8: $80
	ld e, $10                                        ; $40e9: $1e $10
	call z, $ec88                                    ; $40eb: $cc $88 $ec
	ld c, b                                          ; $40ee: $48
	db $fd                                           ; $40ef: $fd
	ld l, b                                          ; $40f0: $68
	ld sp, hl                                        ; $40f1: $f9
	ld e, c                                          ; $40f2: $59
	ei                                               ; $40f3: $fb
	ld b, c                                          ; $40f4: $41
	and $83                                          ; $40f5: $e6 $83
	call z, wShiftedFarTextByteAddr+1                                    ; $40f7: $cc $07 $d8
	rrca                                             ; $40fa: $0f
	ret c                                            ; $40fb: $d8

	rra                                              ; $40fc: $1f
	ld hl, sp+$1f                                    ; $40fd: $f8 $1f
	add sp, $3f                                      ; $40ff: $e8 $3f
	ld sp, hl                                        ; $4101: $f9
	ccf                                              ; $4102: $3f
	ld [$ec3e], a                                    ; $4103: $ea $3e $ec
	ld a, h                                          ; $4106: $7c
	ret z                                            ; $4107: $c8

	sbc [hl]                                         ; $4108: $9e
	rst $38                                          ; $4109: $ff
	rst FarCall                                          ; $410a: $f7
	rst SubAFromDE                                          ; $410b: $df
	rrca                                             ; $410c: $0f
	rst SubAFromDE                                          ; $410d: $df
	ld bc, $dfff                                     ; $410e: $01 $ff $df
	rst $38                                          ; $4111: $ff
	add b                                            ; $4112: $80
	pop hl                                           ; $4113: $e1
	nop                                              ; $4114: $00
	cp $ff                                           ; $4115: $fe $ff
	pop af                                           ; $4117: $f1
	nop                                              ; $4118: $00
	ld l, h                                          ; $4119: $6c
	ldh a, [$f7]                                     ; $411a: $f0 $f7
	rrca                                             ; $411c: $0f
	rst SubAFromDE                                          ; $411d: $df
	ldh [$73], a                                     ; $411e: $e0 $73
	adc a                                            ; $4120: $8f
	jp $183c                                         ; $4121: $c3 $3c $18


	ldh [$66], a                                     ; $4124: $e0 $66
	add c                                            ; $4126: $81
	sub [hl]                                         ; $4127: $96
	rrca                                             ; $4128: $0f
	jr z, jr_066_4147                                ; $4129: $28 $1c

	ld d, e                                          ; $412b: $53
	jr c, @-$59                                      ; $412c: $38 $a5

	ld [hl], e                                       ; $412e: $73
	ld c, d                                          ; $412f: $4a
	and $94                                          ; $4130: $e6 $94
	sub b                                            ; $4132: $90
	call $99cb                                       ; $4133: $cd $cb $99
	add hl, hl                                       ; $4136: $29
	sbc e                                            ; $4137: $9b
	sub [hl]                                         ; $4138: $96
	ld [hl-], a                                      ; $4139: $32
	ld d, $32                                        ; $413a: $16 $32
	ld a, [hl+]                                      ; $413c: $2a
	scf                                              ; $413d: $37
	ld l, [hl]                                       ; $413e: $6e
	scf                                              ; $413f: $37
	ld l, $77                                        ; $4140: $2e $77
	ldh [$c1], a                                     ; $4142: $e0 $c1
	db $dd                                           ; $4144: $dd
	ld b, b                                          ; $4145: $40
	rst SubAFromDE                                          ; $4146: $df

jr_066_4147:
	add e                                            ; $4147: $83
	rst SubAFromDE                                          ; $4148: $df
	ldh a, [$8c]                                     ; $4149: $f0 $8c
	db $fd                                           ; $414b: $fd
	inc c                                            ; $414c: $0c
	rra                                              ; $414d: $1f
	inc bc                                           ; $414e: $03
	rst GetHLinHL                                          ; $414f: $cf
	inc b                                            ; $4150: $04
	rst AddAOntoHL                                          ; $4151: $ef
	ld [$10ff], sp                                   ; $4152: $08 $ff $10
	rst $38                                          ; $4155: $ff
	jr nz, @+$81                                     ; $4156: $20 $7f

	ret nz                                           ; $4158: $c0

	rst $38                                          ; $4159: $ff
	add b                                            ; $415a: $80
	rst $38                                          ; $415b: $ff
	nop                                              ; $415c: $00
	rra                                              ; $415d: $1f
	cp $9e                                           ; $415e: $fe $9e
	ldh [$f6], a                                     ; $4160: $e0 $f6
	rst SubAFromDE                                          ; $4162: $df
	add a                                            ; $4163: $87
	add b                                            ; $4164: $80
	ldh [c], a                                       ; $4165: $e2
	db $e3                                           ; $4166: $e3
	ld e, c                                          ; $4167: $59
	ld a, c                                          ; $4168: $79
	rst FarCall                                          ; $4169: $f7
	rst SubAFromBC                                          ; $416a: $e7
	cp e                                             ; $416b: $bb
	ld [hl], e                                       ; $416c: $73
	db $ed                                           ; $416d: $ed
	add hl, de                                       ; $416e: $19
	ld h, l                                          ; $416f: $65
	rst $38                                          ; $4170: $ff
	ld d, [hl]                                       ; $4171: $56
	ccf                                              ; $4172: $3f
	cp l                                             ; $4173: $bd
	rst GetHLinHL                                          ; $4174: $cf
	and $3f                                          ; $4175: $e6 $3f
	xor h                                            ; $4177: $ac
	rst SubAFromDE                                          ; $4178: $df
	or a                                             ; $4179: $b7
	ld a, a                                          ; $417a: $7f
	xor $1f                                          ; $417b: $ee $1f
	push af                                          ; $417d: $f5
	rst $38                                          ; $417e: $ff
	ld l, $1f                                        ; $417f: $2e $1f
	db $fc                                           ; $4181: $fc
	rlca                                             ; $4182: $07
	ld [hl], a                                       ; $4183: $77
	adc d                                            ; $4184: $8a
	rst $38                                          ; $4185: $ff
	adc [hl]                                         ; $4186: $8e
	rst $38                                          ; $4187: $ff
	ld [hl], a                                       ; $4188: $77
	rst $38                                          ; $4189: $ff
	adc h                                            ; $418a: $8c
	rst SubAFromDE                                          ; $418b: $df
	ld e, $bf                                        ; $418c: $1e $bf
	ccf                                              ; $418e: $3f
	ld [hl], l                                       ; $418f: $75
	pop hl                                           ; $4190: $e1
	ld b, c                                          ; $4191: $41
	ld b, c                                          ; $4192: $41
	pop bc                                           ; $4193: $c1
	pop bc                                           ; $4194: $c1
	add c                                            ; $4195: $81
	jp $c281                                         ; $4196: $c3 $81 $c2


	add e                                            ; $4199: $83
	ldh [$c1], a                                     ; $419a: $e0 $c1
	rst SubAFromDE                                          ; $419c: $df
	dec e                                            ; $419d: $1d
	ld a, a                                          ; $419e: $7f
	and d                                            ; $419f: $a2
	sub c                                            ; $41a0: $91
	dec l                                            ; $41a1: $2d
	scf                                              ; $41a2: $37
	ld e, l                                          ; $41a3: $5d
	ld h, a                                          ; $41a4: $67
	db $fd                                           ; $41a5: $fd
	add a                                            ; $41a6: $87
	db $fd                                           ; $41a7: $fd
	rlca                                             ; $41a8: $07
	db $fd                                           ; $41a9: $fd
	rlca                                             ; $41aa: $07
	cp $03                                           ; $41ab: $fe $03
	rst $38                                          ; $41ad: $ff
	ld [bc], a                                       ; $41ae: $02
	ld a, e                                          ; $41af: $7b
	cp $7e                                           ; $41b0: $fe $7e
	jp c, $fe6b                                      ; $41b2: $da $6b $fe

	ld a, d                                          ; $41b5: $7a
	rst GetHLinHL                                          ; $41b6: $cf
	or $df                                           ; $41b7: $f6 $df
	add b                                            ; $41b9: $80
	add b                                            ; $41ba: $80
	ld b, e                                          ; $41bb: $43
	jp Jump_066_7dfe                                 ; $41bc: $c3 $fe $7d


	db $db                                           ; $41bf: $db
	ld h, a                                          ; $41c0: $67
	ld a, a                                          ; $41c1: $7f
	ld a, a                                          ; $41c2: $7f
	cp [hl]                                          ; $41c3: $be
	pop bc                                           ; $41c4: $c1
	jp $bf3f                                         ; $41c5: $c3 $3f $bf


	ret nz                                           ; $41c8: $c0

	ld b, b                                          ; $41c9: $40
	cp a                                             ; $41ca: $bf
	di                                               ; $41cb: $f3
	ret nz                                           ; $41cc: $c0

	ld b, b                                          ; $41cd: $40
	add b                                            ; $41ce: $80
	ld l, e                                          ; $41cf: $6b
	pop af                                           ; $41d0: $f1
	and c                                            ; $41d1: $a1
	ret nz                                           ; $41d2: $c0

	add $38                                          ; $41d3: $c6 $38
	jp c, $43e7                                      ; $41d5: $da $e7 $43

	add c                                            ; $41d8: $81
	push af                                          ; $41d9: $f5
	sub l                                            ; $41da: $95
	ld hl, sp+$6b                                    ; $41db: $f8 $6b
	sbc h                                            ; $41dd: $9c
	rst FarCall                                          ; $41de: $f7
	db $ed                                           ; $41df: $ed
	ld e, l                                          ; $41e0: $5d
	or $55                                           ; $41e1: $f6 $55
	sub $57                                          ; $41e3: $d6 $57
	ld a, e                                          ; $41e5: $7b
	cp $99                                           ; $41e6: $fe $99
	ld d, [hl]                                       ; $41e8: $56
	rst FarCall                                          ; $41e9: $f7
	ld d, l                                          ; $41ea: $55
	rst FarCall                                          ; $41eb: $f7
	push de                                          ; $41ec: $d5
	rst FarCall                                          ; $41ed: $f7
	ldh [$c1], a                                     ; $41ee: $e0 $c1
	sbc b                                            ; $41f0: $98
	ld b, c                                          ; $41f1: $41
	cp $47                                           ; $41f2: $fe $47
	ld hl, sp+$5f                                    ; $41f4: $f8 $5f
	ldh [$bf], a                                     ; $41f6: $e0 $bf
	ld a, d                                          ; $41f8: $7a
	adc $9e                                          ; $41f9: $ce $9e
	ld a, a                                          ; $41fb: $7f
	ld a, d                                          ; $41fc: $7a
	call z, $fe67                                    ; $41fd: $cc $67 $fe
	sub [hl]                                         ; $4200: $96
	cp $00                                           ; $4201: $fe $00
	db $fc                                           ; $4203: $fc

jr_066_4204:
	nop                                              ; $4204: $00
	ld hl, sp+$00                                    ; $4205: $f8 $00
	pop af                                           ; $4207: $f1
	nop                                              ; $4208: $00
	db $e3                                           ; $4209: $e3
	ldh a, [c]                                       ; $420a: $f2
	rst SubAFromDE                                          ; $420b: $df
	ret nz                                           ; $420c: $c0

	rst SubAFromDE                                          ; $420d: $df
	add b                                            ; $420e: $80
	ld l, a                                          ; $420f: $6f
	ld hl, sp-$80                                    ; $4210: $f8 $80
	jr nc, jr_066_4204                               ; $4212: $30 $f0

	add sp, -$08                                     ; $4214: $e8 $f8
	inc e                                            ; $4216: $1c
	db $fc                                           ; $4217: $fc
	and $fe                                          ; $4218: $e6 $fe
	db $d3                                           ; $421a: $d3
	ccf                                              ; $421b: $3f
	ld a, c                                          ; $421c: $79
	adc a                                            ; $421d: $8f
	ld e, h                                          ; $421e: $5c
	rst SubAFromBC                                          ; $421f: $e7
	ld l, [hl]                                       ; $4220: $6e
	inc sp                                           ; $4221: $33
	sub l                                            ; $4222: $95
	dec sp                                           ; $4223: $3b
	ld c, c                                          ; $4224: $49
	sbc a                                            ; $4225: $9f
	or h                                             ; $4226: $b4
	rst GetHLinHL                                          ; $4227: $cf
	db $f4                                           ; $4228: $f4
	ld l, a                                          ; $4229: $6f
	ld [$da37], a                                    ; $422a: $ea $37 $da
	or a                                             ; $422d: $b7
	or l                                             ; $422e: $b5
	db $db                                           ; $422f: $db
	ld l, l                                          ; $4230: $6d
	sub l                                            ; $4231: $95
	db $db                                           ; $4232: $db
	db $ed                                           ; $4233: $ed
	ld e, e                                          ; $4234: $5b
	ret z                                            ; $4235: $c8

	ld a, a                                          ; $4236: $7f
	and h                                            ; $4237: $a4
	ld a, a                                          ; $4238: $7f
	inc h                                            ; $4239: $24
	rst $38                                          ; $423a: $ff
	sub h                                            ; $423b: $94
	ld a, e                                          ; $423c: $7b
	cp $8c                                           ; $423d: $fe $8c
	call nc, $747f                                   ; $423f: $d4 $7f $74
	cp a                                             ; $4242: $bf
	or h                                             ; $4243: $b4
	rst SubAFromDE                                          ; $4244: $df
	ld e, h                                          ; $4245: $5c
	rst AddAOntoHL                                          ; $4246: $ef
	cp a                                             ; $4247: $bf
	di                                               ; $4248: $f3
	sbc [hl]                                         ; $4249: $9e
	rst $38                                          ; $424a: $ff
	ld d, l                                          ; $424b: $55
	rst $38                                          ; $424c: $ff
	push de                                          ; $424d: $d5
	rst $38                                          ; $424e: $ff
	ld l, c                                          ; $424f: $69
	rst $38                                          ; $4250: $ff
	ld l, d                                          ; $4251: $6a
	ld a, e                                          ; $4252: $7b

jr_066_4253:
	cp $9c                                           ; $4253: $fe $9c
	ld d, d                                          ; $4255: $52
	rst $38                                          ; $4256: $ff
	ld d, h                                          ; $4257: $54
	ld a, e                                          ; $4258: $7b
	ldh a, [c]                                       ; $4259: $f2
	add b                                            ; $425a: $80
	sub l                                            ; $425b: $95
	rst $38                                          ; $425c: $ff
	xor d                                            ; $425d: $aa
	cp $aa                                           ; $425e: $fe $aa
	cp $3c                                           ; $4260: $fe $3c
	db $ec                                           ; $4262: $ec
	inc a                                            ; $4263: $3c
	db $ec                                           ; $4264: $ec
	ld e, b                                          ; $4265: $58
	add sp, $68                                      ; $4266: $e8 $68
	ret c                                            ; $4268: $d8

	ld [hl], b                                       ; $4269: $70
	ret nc                                           ; $426a: $d0

	ld [hl], b                                       ; $426b: $70
	ret nc                                           ; $426c: $d0

	ldh a, [$d0]                                     ; $426d: $f0 $d0
	sub b                                            ; $426f: $90
	ldh a, [$e0]                                     ; $4270: $f0 $e0
	and b                                            ; $4272: $a0
	ldh [$a0], a                                     ; $4273: $e0 $a0
	and b                                            ; $4275: $a0
	ldh [$60], a                                     ; $4276: $e0 $60
	ldh [$30], a                                     ; $4278: $e0 $30
	sbc c                                            ; $427a: $99
	ldh a, [$08]                                     ; $427b: $f0 $08
	ld hl, sp+$06                                    ; $427d: $f8 $06
	cp $01                                           ; $427f: $fe $01
	ld [hl], e                                       ; $4281: $73
	ld l, e                                          ; $4282: $6b
	adc d                                            ; $4283: $8a
	ld bc, $07fe                                     ; $4284: $01 $fe $07
	ld hl, sp+$1e                                    ; $4287: $f8 $1e
	pop hl                                           ; $4289: $e1
	jr c, jr_066_4253                                ; $428a: $38 $c7

	ld [hl], c                                       ; $428c: $71
	adc a                                            ; $428d: $8f
	db $e3                                           ; $428e: $e3
	rra                                              ; $428f: $1f
	adc $3f                                          ; $4290: $ce $3f
	sbc b                                            ; $4292: $98
	ld a, a                                          ; $4293: $7f
	jr nc, @+$01                                     ; $4294: $30 $ff

	ld h, b                                          ; $4296: $60
	rst $38                                          ; $4297: $ff
	ret nz                                           ; $4298: $c0

	ld [hl], c                                       ; $4299: $71
	add b                                            ; $429a: $80
	db $dd                                           ; $429b: $dd
	add b                                            ; $429c: $80
	sbc h                                            ; $429d: $9c
	ld b, b                                          ; $429e: $40
	ret nz                                           ; $429f: $c0

	ld b, b                                          ; $42a0: $40
	call c, Call_066_7fc0                            ; $42a1: $dc $c0 $7f
	call z, $fe7f                                    ; $42a4: $cc $7f $fe
	sbc [hl]                                         ; $42a7: $9e
	jr nz, jr_066_431d                               ; $42a8: $20 $73

	cp $7b                                           ; $42aa: $fe $7b
	cp l                                             ; $42ac: $bd
	dec sp                                           ; $42ad: $3b
	cp $7f                                           ; $42ae: $fe $7f
	add sp, $77                                      ; $42b0: $e8 $77
	sub $7f                                          ; $42b2: $d6 $7f
	cp $db                                           ; $42b4: $fe $db
	add b                                            ; $42b6: $80
	ld e, a                                          ; $42b7: $5f
	jr z, jr_066_4339                                ; $42b8: $28 $7f

	add sp, -$6a                                     ; $42ba: $e8 $96
	ld hl, sp+$18                                    ; $42bc: $f8 $18
	db $fc                                           ; $42be: $fc
	inc b                                            ; $42bf: $04
	ld [bc], a                                       ; $42c0: $02
	cp $7a                                           ; $42c1: $fe $7a
	cp $86                                           ; $42c3: $fe $86
	sbc $fe                                          ; $42c5: $de $fe
	ld a, a                                          ; $42c7: $7f
	ld hl, sp+$7f                                    ; $42c8: $f8 $7f
	cp $7f                                           ; $42ca: $fe $7f
	adc d                                            ; $42cc: $8a
	ld [hl], a                                       ; $42cd: $77
	cp $1d                                           ; $42ce: $fe $1d
	nop                                              ; $42d0: $00
	db $dd                                           ; $42d1: $dd
	adc b                                            ; $42d2: $88
	rst SubAFromDE                                          ; $42d3: $df
	sbc c                                            ; $42d4: $99
	sbc h                                            ; $42d5: $9c
	ld de, $0088                                     ; $42d6: $11 $88 $00
	ld a, e                                          ; $42d9: $7b
	ei                                               ; $42da: $fb
	sbc [hl]                                         ; $42db: $9e
	add b                                            ; $42dc: $80
	ld a, e                                          ; $42dd: $7b
	ei                                               ; $42de: $fb
	sbc [hl]                                         ; $42df: $9e
	nop                                              ; $42e0: $00
	ld e, a                                          ; $42e1: $5f
	ei                                               ; $42e2: $fb
	ld a, a                                          ; $42e3: $7f
	db $ec                                           ; $42e4: $ec
	ld a, a                                          ; $42e5: $7f
	db $fd                                           ; $42e6: $fd
	sbc e                                            ; $42e7: $9b
	xor d                                            ; $42e8: $aa
	adc b                                            ; $42e9: $88
	adc b                                            ; $42ea: $88
	xor d                                            ; $42eb: $aa
	xor a                                            ; $42ec: $af
	ld bc, $4d80                                     ; $42ed: $01 $80 $4d
	ld a, e                                          ; $42f0: $7b
	add hl, hl                                       ; $42f1: $29
	ccf                                              ; $42f2: $3f
	dec h                                            ; $42f3: $25
	ccf                                              ; $42f4: $3f
	dec d                                            ; $42f5: $15
	rra                                              ; $42f6: $1f
	dec d                                            ; $42f7: $15
	rra                                              ; $42f8: $1f
	ld a, [bc]                                       ; $42f9: $0a
	dec bc                                           ; $42fa: $0b
	ld a, [bc]                                       ; $42fb: $0a
	dec bc                                           ; $42fc: $0b
	ld bc, $0301                                     ; $42fd: $01 $01 $03
	inc bc                                           ; $4300: $03
	ld [bc], a                                       ; $4301: $02
	inc bc                                           ; $4302: $03
	dec b                                            ; $4303: $05
	rlca                                             ; $4304: $07
	rlca                                             ; $4305: $07
	dec b                                            ; $4306: $05
	ld c, $0b                                        ; $4307: $0e $0b
	ld c, $0b                                        ; $4309: $0e $0b
	ld a, [de]                                       ; $430b: $1a
	rla                                              ; $430c: $17
	inc e                                            ; $430d: $1c
	sub a                                            ; $430e: $97
	rla                                              ; $430f: $17
	inc d                                            ; $4310: $14
	rra                                              ; $4311: $1f
	dec h                                            ; $4312: $25
	ccf                                              ; $4313: $3f
	inc hl                                           ; $4314: $23
	ld a, $2b                                        ; $4315: $3e $2b
	ld [hl], e                                       ; $4317: $73
	cp $89                                           ; $4318: $fe $89
	dec de                                           ; $431a: $1b
	ld e, $1b                                        ; $431b: $1e $1b

jr_066_431d:
	ld e, $0b                                        ; $431d: $1e $0b
	rrca                                             ; $431f: $0f
	rrca                                             ; $4320: $0f
	ld c, $17                                        ; $4321: $0e $17
	inc e                                            ; $4323: $1c
	daa                                              ; $4324: $27
	ccf                                              ; $4325: $3f
	ld c, a                                          ; $4326: $4f
	ld a, h                                          ; $4327: $7c
	ld c, a                                          ; $4328: $4f
	ld a, b                                          ; $4329: $78
	sbc a                                            ; $432a: $9f
	di                                               ; $432b: $f3
	sbc a                                            ; $432c: $9f
	db $f4                                           ; $432d: $f4
	dec h                                            ; $432e: $25
	rst AddAOntoHL                                          ; $432f: $ef
	ld a, e                                          ; $4330: $7b
	cp $9e                                           ; $4331: $fe $9e
	rst $38                                          ; $4333: $ff
	ld [hl], a                                       ; $4334: $77
	cp $8e                                           ; $4335: $fe $8e
	sub l                                            ; $4337: $95
	rst $38                                          ; $4338: $ff

jr_066_4339:
	sub d                                            ; $4339: $92
	rst $38                                          ; $433a: $ff
	ld d, d                                          ; $433b: $52
	rst $38                                          ; $433c: $ff
	ld l, c                                          ; $433d: $69
	rst $38                                          ; $433e: $ff
	cp l                                             ; $433f: $bd
	rst FarCall                                          ; $4340: $f7
	cp [hl]                                          ; $4341: $be
	db $e3                                           ; $4342: $e3
	cp a                                             ; $4343: $bf
	pop hl                                           ; $4344: $e1
	sbc c                                            ; $4345: $99
	ldh a, [hDisp1_SCY]                                     ; $4346: $f0 $90
	ld a, e                                          ; $4348: $7b
	cp $80                                           ; $4349: $fe $80
	ret c                                            ; $434b: $d8

	ldh a, [$a8]                                     ; $434c: $f0 $a8
	cp b                                             ; $434e: $b8
	inc l                                            ; $434f: $2c
	jr c, jr_066_439e                                ; $4350: $38 $4c

	ld a, h                                          ; $4352: $7c
	ld c, [hl]                                       ; $4353: $4e
	ld a, h                                          ; $4354: $7c
	set 7, [hl]                                      ; $4355: $cb $fe
	bit 7, a                                         ; $4357: $cb $7f
	ld c, d                                          ; $4359: $4a
	ld a, a                                          ; $435a: $7f
	rst $38                                          ; $435b: $ff
	ld a, a                                          ; $435c: $7f
	ret nz                                           ; $435d: $c0

	add b                                            ; $435e: $80
	rrca                                             ; $435f: $0f
	nop                                              ; $4360: $00
	ld a, a                                          ; $4361: $7f
	rra                                              ; $4362: $1f
	ld sp, hl                                        ; $4363: $f9
	rst $38                                          ; $4364: $ff
	rrca                                             ; $4365: $0f
	rlca                                             ; $4366: $07
	ldh [rP1], a                                     ; $4367: $e0 $00
	rst $38                                          ; $4369: $ff
	sbc d                                            ; $436a: $9a
	ldh a, [rIE]                                     ; $436b: $f0 $ff
	ccf                                              ; $436d: $3f
	daa                                              ; $436e: $27
	ld a, l                                          ; $436f: $7d
	ld a, e                                          ; $4370: $7b
	cp $80                                           ; $4371: $fe $80
	db $fd                                           ; $4373: $fd
	daa                                              ; $4374: $27
	db $fc                                           ; $4375: $fc
	daa                                              ; $4376: $27
	db $fc                                           ; $4377: $fc
	sub a                                            ; $4378: $97
	db $fc                                           ; $4379: $fc
	sbc e                                            ; $437a: $9b
	cp $df                                           ; $437b: $fe $df
	or $4f                                           ; $437d: $f6 $4f
	ld sp, hl                                        ; $437f: $f9
	ld l, a                                          ; $4380: $6f
	ld hl, sp-$09                                    ; $4381: $f8 $f7

Jump_066_4383:
	sbc h                                            ; $4383: $9c
	ld a, a                                          ; $4384: $7f
	adc $ff                                          ; $4385: $ce $ff
	ldh [$7e], a                                     ; $4387: $e0 $7e
	db $10                                           ; $4389: $10
	inc a                                            ; $438a: $3c
	stop                                             ; $438b: $10 $00
	nop                                              ; $438d: $00
	add $83                                          ; $438e: $c6 $83
	call $8a87                                       ; $4390: $cd $87 $8a
	rst GetHLinHL                                          ; $4393: $cf
	adc [hl]                                         ; $4394: $8e
	ret nz                                           ; $4395: $c0

	cp a                                             ; $4396: $bf
	cp a                                             ; $4397: $bf
	ld a, a                                          ; $4398: $7f
	rst $38                                          ; $4399: $ff
	ld b, b                                          ; $439a: $40
	rst $38                                          ; $439b: $ff
	nop                                              ; $439c: $00
	rst $38                                          ; $439d: $ff

jr_066_439e:
	rra                                              ; $439e: $1f
	ld sp, hl                                        ; $439f: $f9
	add hl, sp                                       ; $43a0: $39
	rst SubAFromBC                                          ; $43a1: $e7
	scf                                              ; $43a2: $37
	db $e4                                           ; $43a3: $e4
	ld b, $03                                        ; $43a4: $06 $03
	rrca                                             ; $43a6: $0f
	inc bc                                           ; $43a7: $03
	cp d                                             ; $43a8: $ba
	ld l, a                                          ; $43a9: $6f
	ld e, e                                          ; $43aa: $5b
	rlca                                             ; $43ab: $07
	rrca                                             ; $43ac: $0f
	rrca                                             ; $43ad: $0f
	rra                                              ; $43ae: $1f
	rra                                              ; $43af: $1f
	sbc d                                            ; $43b0: $9a
	ld bc, $073b                                     ; $43b1: $01 $3b $07
	ld l, a                                          ; $43b4: $6f
	rra                                              ; $43b5: $1f
	ld a, e                                          ; $43b6: $7b
	call c, $ffdf                                    ; $43b7: $dc $df $ff
	ld a, a                                          ; $43ba: $7f
	and l                                            ; $43bb: $a5
	add b                                            ; $43bc: $80
	ld bc, $03fe                                     ; $43bd: $01 $fe $03
	ld a, [hl]                                       ; $43c0: $7e
	inc bc                                           ; $43c1: $03
	ld a, $02                                        ; $43c2: $3e $02
	ld a, [hl-]                                      ; $43c4: $3a
	ld b, $6c                                        ; $43c5: $06 $6c
	ld b, $d4                                        ; $43c7: $06 $d4
	dec c                                            ; $43c9: $0d
	jp nc, $d2f7                                     ; $43ca: $d2 $f7 $d2

	ld a, e                                          ; $43cd: $7b
	ld a, [$796b]                                    ; $43ce: $fa $6b $79
	set 7, c                                         ; $43d1: $cb $f9
	call $1df5                                       ; $43d3: $cd $f5 $1d
	db $f4                                           ; $43d6: $f4
	rra                                              ; $43d7: $1f
	ldh a, [c]                                       ; $43d8: $f2
	rra                                              ; $43d9: $1f
	di                                               ; $43da: $f3
	rst SubAFromDE                                          ; $43db: $df
	sub a                                            ; $43dc: $97
	ldh a, [c]                                       ; $43dd: $f2
	rst $38                                          ; $43de: $ff
	ldh a, [c]                                       ; $43df: $f2
	sbc a                                            ; $43e0: $9f
	ld [hl], d                                       ; $43e1: $72
	sbc a                                            ; $43e2: $9f
	ldh [c], a                                       ; $43e3: $e2
	scf                                              ; $43e4: $37
	ld [hl], e                                       ; $43e5: $73
	cp $81                                           ; $43e6: $fe $81
	daa                                              ; $43e8: $27
	call z, $ce67                                    ; $43e9: $cc $67 $ce
	ld h, l                                          ; $43ec: $65
	add $cd                                          ; $43ed: $c6 $cd
	rst SubAFromHL                                          ; $43ef: $d7
	adc l                                            ; $43f0: $8d
	db $db                                           ; $43f1: $db
	adc l                                            ; $43f2: $8d
	adc l                                            ; $43f3: $8d
	sbc e                                            ; $43f4: $9b
	xor e                                            ; $43f5: $ab
	dec de                                           ; $43f6: $1b
	cp d                                             ; $43f7: $ba
	inc de                                           ; $43f8: $13
	ld d, $33                                        ; $43f9: $16 $33
	ld d, [hl]                                       ; $43fb: $56
	scf                                              ; $43fc: $37
	ld a, [hl]                                       ; $43fd: $7e
	daa                                              ; $43fe: $27
	ld [hl], $6f                                     ; $43ff: $36 $6f
	ld [$515f], a                                    ; $4401: $ea $5f $51
	rst $38                                          ; $4404: $ff
	and b                                            ; $4405: $a0
	ld a, e                                          ; $4406: $7b
	cp $6f                                           ; $4407: $fe $6f
	add b                                            ; $4409: $80
	sbc c                                            ; $440a: $99
	ldh [$9f], a                                     ; $440b: $e0 $9f
	sbc a                                            ; $440d: $9f
	ld a, a                                          ; $440e: $7f
	rst $38                                          ; $440f: $ff
	ld h, b                                          ; $4410: $60
	ld a, e                                          ; $4411: $7b
	add b                                            ; $4412: $80
	ld a, e                                          ; $4413: $7b
	ld a, [hl]                                       ; $4414: $7e
	sbc l                                            ; $4415: $9d
	push af                                          ; $4416: $f5
	dec a                                            ; $4417: $3d
	ld d, a                                          ; $4418: $57
	add b                                            ; $4419: $80
	ld l, a                                          ; $441a: $6f
	and b                                            ; $441b: $a0
	sbc c                                            ; $441c: $99
	ld sp, hl                                        ; $441d: $f9
	ld c, e                                          ; $441e: $4b
	ld a, c                                          ; $441f: $79
	call $ddf5                                       ; $4420: $cd $f5 $dd
	ld [hl], e                                       ; $4423: $73
	and b                                            ; $4424: $a0
	ld a, a                                          ; $4425: $7f
	db $fc                                           ; $4426: $fc
	ld d, e                                          ; $4427: $53
	and b                                            ; $4428: $a0
	ld l, a                                          ; $4429: $6f
	ret nz                                           ; $442a: $c0

	sbc c                                            ; $442b: $99
	ldh a, [hDisp1_LCDC]                                     ; $442c: $f0 $8f
	adc a                                            ; $442e: $8f
	ld a, a                                          ; $442f: $7f
	rst $38                                          ; $4430: $ff
	ld [hl], b                                       ; $4431: $70
	ld [hl], e                                       ; $4432: $73
	ret nz                                           ; $4433: $c0

	sbc b                                            ; $4434: $98
	nop                                              ; $4435: $00
	ldh a, [c]                                       ; $4436: $f2
	dec sp                                           ; $4437: $3b
	db $fd                                           ; $4438: $fd
	rrca                                             ; $4439: $0f
	rrca                                             ; $443a: $0f
	inc bc                                           ; $443b: $03
	dec de                                           ; $443c: $1b
	ret nz                                           ; $443d: $c0

	ld a, a                                          ; $443e: $7f
	ld e, [hl]                                       ; $443f: $5e
	sbc h                                            ; $4440: $9c
	sbc a                                            ; $4441: $9f
	ldh a, [c]                                       ; $4442: $f2
	rra                                              ; $4443: $1f
	ld c, a                                          ; $4444: $4f
	ret nz                                           ; $4445: $c0

	sbc h                                            ; $4446: $9c
	rst GetHLinHL                                          ; $4447: $cf
	add b                                            ; $4448: $80
	add b                                            ; $4449: $80
	ld a, d                                          ; $444a: $7a
	call nz, $c06f                                   ; $444b: $c4 $6f $c0
	ld a, a                                          ; $444e: $7f
	ld a, [hl]                                       ; $444f: $7e
	sbc e                                            ; $4450: $9b
	rst $38                                          ; $4451: $ff
	jr nz, jr_066_4473                               ; $4452: $20 $1f

	rra                                              ; $4454: $1f
	ld b, a                                          ; $4455: $47
	ret nz                                           ; $4456: $c0

jr_066_4457:
	sbc c                                            ; $4457: $99
	ld sp, hl                                        ; $4458: $f9
	dec c                                            ; $4459: $0d
	dec [hl]                                         ; $445a: $35
	db $dd                                           ; $445b: $dd
	db $f4                                           ; $445c: $f4
	rst SubAFromDE                                          ; $445d: $df
	ld [hl], e                                       ; $445e: $73
	ret nz                                           ; $445f: $c0

	ld a, a                                          ; $4460: $7f
	jp nz, $7f9d                                     ; $4461: $c2 $9d $7f

	ldh a, [c]                                       ; $4464: $f2
	ld h, e                                          ; $4465: $63
	add b                                            ; $4466: $80
	sbc d                                            ; $4467: $9a
	ld h, e                                          ; $4468: $63
	ld [hl], $3e                                     ; $4469: $36 $3e
	inc e                                            ; $446b: $1c
	inc e                                            ; $446c: $1c
	cp l                                             ; $446d: $bd
	ld [$8000], sp                                   ; $446e: $08 $00 $80
	pop bc                                           ; $4471: $c1
	adc h                                            ; $4472: $8c

jr_066_4473:
	add b                                            ; $4473: $80
	rst SubAFromBC                                          ; $4474: $e7
	pop hl                                           ; $4475: $e1
	ccf                                              ; $4476: $3f
	rra                                              ; $4477: $1f
	rst AddAOntoHL                                          ; $4478: $ef
	jr z, jr_066_4457                                ; $4479: $28 $dc

	ret z                                            ; $447b: $c8

	sbc b                                            ; $447c: $98
	sub b                                            ; $447d: $90
	cp b                                             ; $447e: $b8
	db $10                                           ; $447f: $10
	or b                                             ; $4480: $b0
	and b                                            ; $4481: $a0
	ldh [$a0], a                                     ; $4482: $e0 $a0
	ld h, b                                          ; $4484: $60
	ld b, b                                          ; $4485: $40
	ld a, e                                          ; $4486: $7b
	ldh [$7b], a                                     ; $4487: $e0 $7b
	rst SubAFromDE                                          ; $4489: $df
	rla                                              ; $448a: $17
	ldh [$9e], a                                     ; $448b: $e0 $9e
	ccf                                              ; $448d: $3f
	ld l, e                                          ; $448e: $6b
	rst SubAFromDE                                          ; $448f: $df
	daa                                              ; $4490: $27
	ldh [$9b], a                                     ; $4491: $e0 $9b
	ld a, a                                          ; $4493: $7f
	ld a, $3e                                        ; $4494: $3e $3e
	ld e, $77                                        ; $4496: $1e $77
	sbc $2f                                          ; $4498: $de $2f
	ldh [$b7], a                                     ; $449a: $e0 $b7
	ld bc, $4d80                                     ; $449c: $01 $80 $4d
	ld a, e                                          ; $449f: $7b
	add hl, hl                                       ; $44a0: $29
	ccf                                              ; $44a1: $3f
	dec h                                            ; $44a2: $25
	ccf                                              ; $44a3: $3f
	dec d                                            ; $44a4: $15
	rra                                              ; $44a5: $1f
	dec d                                            ; $44a6: $15
	rra                                              ; $44a7: $1f
	ld a, [bc]                                       ; $44a8: $0a
	dec bc                                           ; $44a9: $0b
	ld a, [bc]                                       ; $44aa: $0a
	dec bc                                           ; $44ab: $0b
	ld bc, $0301                                     ; $44ac: $01 $01 $03
	inc bc                                           ; $44af: $03
	ld [bc], a                                       ; $44b0: $02
	inc bc                                           ; $44b1: $03
	dec b                                            ; $44b2: $05
	rlca                                             ; $44b3: $07
	rlca                                             ; $44b4: $07
	dec b                                            ; $44b5: $05
	ld c, $0b                                        ; $44b6: $0e $0b
	ld c, $0b                                        ; $44b8: $0e $0b
	ld a, [de]                                       ; $44ba: $1a
	rla                                              ; $44bb: $17
	inc e                                            ; $44bc: $1c
	sub a                                            ; $44bd: $97
	rla                                              ; $44be: $17
	inc d                                            ; $44bf: $14
	rra                                              ; $44c0: $1f
	dec h                                            ; $44c1: $25
	ccf                                              ; $44c2: $3f
	inc hl                                           ; $44c3: $23
	ld a, $2b                                        ; $44c4: $3e $2b
	ld [hl], e                                       ; $44c6: $73
	cp $89                                           ; $44c7: $fe $89
	dec de                                           ; $44c9: $1b
	ld e, $1b                                        ; $44ca: $1e $1b
	ld e, $0b                                        ; $44cc: $1e $0b
	rrca                                             ; $44ce: $0f
	rrca                                             ; $44cf: $0f
	ld c, $17                                        ; $44d0: $0e $17
	inc e                                            ; $44d2: $1c
	daa                                              ; $44d3: $27
	ccf                                              ; $44d4: $3f
	ld c, a                                          ; $44d5: $4f
	ld a, h                                          ; $44d6: $7c
	ld c, a                                          ; $44d7: $4f
	ld a, b                                          ; $44d8: $78
	sbc a                                            ; $44d9: $9f
	di                                               ; $44da: $f3
	sbc a                                            ; $44db: $9f
	db $f4                                           ; $44dc: $f4
	dec h                                            ; $44dd: $25
	rst AddAOntoHL                                          ; $44de: $ef
	ld a, e                                          ; $44df: $7b
	cp $9e                                           ; $44e0: $fe $9e
	rst $38                                          ; $44e2: $ff
	ld [hl], a                                       ; $44e3: $77
	cp $8e                                           ; $44e4: $fe $8e
	sub l                                            ; $44e6: $95
	rst $38                                          ; $44e7: $ff
	sub d                                            ; $44e8: $92
	rst $38                                          ; $44e9: $ff
	ld d, d                                          ; $44ea: $52
	rst $38                                          ; $44eb: $ff
	ld l, c                                          ; $44ec: $69

Call_066_44ed:
	rst $38                                          ; $44ed: $ff
	cp l                                             ; $44ee: $bd
	rst FarCall                                          ; $44ef: $f7
	cp [hl]                                          ; $44f0: $be
	db $e3                                           ; $44f1: $e3
	cp a                                             ; $44f2: $bf
	pop hl                                           ; $44f3: $e1
	sbc c                                            ; $44f4: $99
	ldh a, [hDisp1_SCY]                                     ; $44f5: $f0 $90
	ld a, e                                          ; $44f7: $7b
	cp $80                                           ; $44f8: $fe $80
	ret c                                            ; $44fa: $d8

	ldh a, [$a8]                                     ; $44fb: $f0 $a8
	cp b                                             ; $44fd: $b8
	inc l                                            ; $44fe: $2c
	jr c, jr_066_454d                                ; $44ff: $38 $4c

	ld a, h                                          ; $4501: $7c
	ld c, [hl]                                       ; $4502: $4e
	ld a, h                                          ; $4503: $7c
	set 7, [hl]                                      ; $4504: $cb $fe
	bit 7, a                                         ; $4506: $cb $7f
	ld c, d                                          ; $4508: $4a
	ld a, a                                          ; $4509: $7f
	rst $38                                          ; $450a: $ff
	ld a, a                                          ; $450b: $7f
	ret nz                                           ; $450c: $c0

	add b                                            ; $450d: $80
	rrca                                             ; $450e: $0f
	nop                                              ; $450f: $00
	ld a, a                                          ; $4510: $7f
	rra                                              ; $4511: $1f
	ld sp, hl                                        ; $4512: $f9
	rst $38                                          ; $4513: $ff
	rrca                                             ; $4514: $0f
	rlca                                             ; $4515: $07
	ldh [rP1], a                                     ; $4516: $e0 $00
	rst $38                                          ; $4518: $ff
	sbc d                                            ; $4519: $9a
	ldh a, [rIE]                                     ; $451a: $f0 $ff
	ccf                                              ; $451c: $3f
	daa                                              ; $451d: $27
	ld a, l                                          ; $451e: $7d
	ld a, e                                          ; $451f: $7b
	cp $80                                           ; $4520: $fe $80
	db $fd                                           ; $4522: $fd
	daa                                              ; $4523: $27
	db $fc                                           ; $4524: $fc
	daa                                              ; $4525: $27
	db $fc                                           ; $4526: $fc
	sub a                                            ; $4527: $97
	db $fc                                           ; $4528: $fc
	sbc e                                            ; $4529: $9b
	cp $df                                           ; $452a: $fe $df
	or $4f                                           ; $452c: $f6 $4f
	ld sp, hl                                        ; $452e: $f9
	ld l, a                                          ; $452f: $6f
	ld hl, sp-$09                                    ; $4530: $f8 $f7
	sbc h                                            ; $4532: $9c
	ld a, a                                          ; $4533: $7f
	adc $ff                                          ; $4534: $ce $ff
	ldh [$7e], a                                     ; $4536: $e0 $7e
	db $10                                           ; $4538: $10
	inc a                                            ; $4539: $3c
	stop                                             ; $453a: $10 $00
	nop                                              ; $453c: $00
	add $83                                          ; $453d: $c6 $83
	call $8a87                                       ; $453f: $cd $87 $8a
	rst GetHLinHL                                          ; $4542: $cf
	adc [hl]                                         ; $4543: $8e
	ret nz                                           ; $4544: $c0

	sbc a                                            ; $4545: $9f
	sbc a                                            ; $4546: $9f
	ld a, a                                          ; $4547: $7f
	rst $38                                          ; $4548: $ff
	ld h, b                                          ; $4549: $60
	rst $38                                          ; $454a: $ff
	rrca                                             ; $454b: $0f
	db $fc                                           ; $454c: $fc

jr_066_454d:
	dec e                                            ; $454d: $1d
	pop af                                           ; $454e: $f1
	add hl, sp                                       ; $454f: $39
	rst SubAFromBC                                          ; $4550: $e7
	rrca                                             ; $4551: $0f
	db $e4                                           ; $4552: $e4
	ld b, $03                                        ; $4553: $06 $03
	rrca                                             ; $4555: $0f
	rlca                                             ; $4556: $07
	cp d                                             ; $4557: $ba
	ld bc, $0703                                     ; $4558: $01 $03 $07
	rrca                                             ; $455b: $0f
	rrca                                             ; $455c: $0f
	rra                                              ; $455d: $1f
	rra                                              ; $455e: $1f
	sbc b                                            ; $455f: $98
	ld bc, $073b                                     ; $4560: $01 $3b $07
	ld l, a                                          ; $4563: $6f
	rra                                              ; $4564: $1f
	cp a                                             ; $4565: $bf
	ld a, a                                          ; $4566: $7f
	sbc $ff                                          ; $4567: $de $ff
	ld a, a                                          ; $4569: $7f
	and l                                            ; $456a: $a5
	add b                                            ; $456b: $80
	ld bc, $03fe                                     ; $456c: $01 $fe $03
	ld a, [hl]                                       ; $456f: $7e
	inc bc                                           ; $4570: $03
	ld a, $02                                        ; $4571: $3e $02
	ld a, [hl-]                                      ; $4573: $3a
	ld b, $6c                                        ; $4574: $06 $6c
	ld b, $d4                                        ; $4576: $06 $d4
	dec c                                            ; $4578: $0d
	jp nc, $d2f7                                     ; $4579: $d2 $f7 $d2

	ld a, e                                          ; $457c: $7b
	ld a, [$796b]                                    ; $457d: $fa $6b $79
	res 7, c                                         ; $4580: $cb $b9
	call $5df5                                       ; $4582: $cd $f5 $5d
	db $f4                                           ; $4585: $f4
	sbc a                                            ; $4586: $9f
	ldh a, [c]                                       ; $4587: $f2
	rst SubAFromDE                                          ; $4588: $df
	di                                               ; $4589: $f3
	rst $38                                          ; $458a: $ff
	sub a                                            ; $458b: $97
	or d                                             ; $458c: $b2
	sbc a                                            ; $458d: $9f
	ldh a, [c]                                       ; $458e: $f2
	sbc a                                            ; $458f: $9f
	ld [hl], d                                       ; $4590: $72
	sbc a                                            ; $4591: $9f
	ldh [c], a                                       ; $4592: $e2
	scf                                              ; $4593: $37
	ld [hl], e                                       ; $4594: $73
	cp $81                                           ; $4595: $fe $81
	daa                                              ; $4597: $27
	call z, $ce67                                    ; $4598: $cc $67 $ce
	ld h, l                                          ; $459b: $65
	add $cd                                          ; $459c: $c6 $cd
	rst SubAFromHL                                          ; $459e: $d7
	adc l                                            ; $459f: $8d
	db $db                                           ; $45a0: $db
	adc l                                            ; $45a1: $8d
	adc l                                            ; $45a2: $8d
	sbc e                                            ; $45a3: $9b
	xor e                                            ; $45a4: $ab
	dec de                                           ; $45a5: $1b
	cp d                                             ; $45a6: $ba
	inc de                                           ; $45a7: $13
	ld d, $33                                        ; $45a8: $16 $33
	ld d, [hl]                                       ; $45aa: $56
	scf                                              ; $45ab: $37
	ld a, [hl]                                       ; $45ac: $7e
	daa                                              ; $45ad: $27
	ld [hl], $6f                                     ; $45ae: $36 $6f
	ld [$515f], a                                    ; $45b0: $ea $5f $51
	rst $38                                          ; $45b3: $ff
	and b                                            ; $45b4: $a0
	ld a, e                                          ; $45b5: $7b
	cp $67                                           ; $45b6: $fe $67
	add b                                            ; $45b8: $80
	sbc d                                            ; $45b9: $9a
	adc a                                            ; $45ba: $8f
	ld a, a                                          ; $45bb: $7f
	rst $38                                          ; $45bc: $ff
	ld [hl], b                                       ; $45bd: $70
	rst $38                                          ; $45be: $ff
	cp a                                             ; $45bf: $bf
	rst $38                                          ; $45c0: $ff
	rst $38                                          ; $45c1: $ff
	sbc h                                            ; $45c2: $9c
	rra                                              ; $45c3: $1f
	push af                                          ; $45c4: $f5
	dec a                                            ; $45c5: $3d
	ld [hl], a                                       ; $45c6: $77
	add b                                            ; $45c7: $80
	ld a, a                                          ; $45c8: $7f
	adc d                                            ; $45c9: $8a
	ld l, a                                          ; $45ca: $6f
	add b                                            ; $45cb: $80
	ld d, e                                          ; $45cc: $53
	and b                                            ; $45cd: $a0
	sbc b                                            ; $45ce: $98
	rra                                              ; $45cf: $1f
	ldh a, [c]                                       ; $45d0: $f2
	rra                                              ; $45d1: $1f
	di                                               ; $45d2: $f3
	rra                                              ; $45d3: $1f
	ldh a, [c]                                       ; $45d4: $f2
	rst $38                                          ; $45d5: $ff
	ld d, a                                          ; $45d6: $57
	and b                                            ; $45d7: $a0
	ld l, a                                          ; $45d8: $6f
	ret nz                                           ; $45d9: $c0

	sbc c                                            ; $45da: $99
	call z, $e383                                    ; $45db: $cc $83 $e3
	rra                                              ; $45de: $1f
	sbc a                                            ; $45df: $9f
	ld a, h                                          ; $45e0: $7c
	ld a, e                                          ; $45e1: $7b
	ld a, $bf                                        ; $45e2: $3e $bf
	rst $38                                          ; $45e4: $ff
	ldh a, [c]                                       ; $45e5: $f2
	sbc c                                            ; $45e6: $99
	dec sp                                           ; $45e7: $3b
	db $fd                                           ; $45e8: $fd
	rrca                                             ; $45e9: $0f
	rrca                                             ; $45ea: $0f
	inc bc                                           ; $45eb: $03
	rra                                              ; $45ec: $1f
	rra                                              ; $45ed: $1f
	ret nz                                           ; $45ee: $c0

	sbc d                                            ; $45ef: $9a
	rst SubAFromDE                                          ; $45f0: $df
	ldh a, [c]                                       ; $45f1: $f2
	sbc a                                            ; $45f2: $9f
	ldh a, [c]                                       ; $45f3: $f2
	rra                                              ; $45f4: $1f
	ld c, a                                          ; $45f5: $4f
	ret nz                                           ; $45f6: $c0

	sub a                                            ; $45f7: $97
	rst GetHLinHL                                          ; $45f8: $cf
	add b                                            ; $45f9: $80
	ld hl, sp+$07                                    ; $45fa: $f8 $07
	add a                                            ; $45fc: $87
	ld a, a                                          ; $45fd: $7f
	rst $38                                          ; $45fe: $ff
	ld a, b                                          ; $45ff: $78
	ld l, a                                          ; $4600: $6f
	ld a, [hl]                                       ; $4601: $7e
	sbc d                                            ; $4602: $9a
	rst $38                                          ; $4603: $ff
	jr nz, jr_066_4625                               ; $4604: $20 $1f

	rra                                              ; $4606: $1f
	ccf                                              ; $4607: $3f
	ld d, e                                          ; $4608: $53
	ret nz                                           ; $4609: $c0

jr_066_460a:
	sbc c                                            ; $460a: $99
	ld sp, hl                                        ; $460b: $f9
	ld c, e                                          ; $460c: $4b
	add hl, sp                                       ; $460d: $39
	call $ddf5                                       ; $460e: $cd $f5 $dd
	ld l, e                                          ; $4611: $6b
	ret nz                                           ; $4612: $c0

	ld a, a                                          ; $4613: $7f
	jp nz, $7f9d                                     ; $4614: $c2 $9d $7f

	ldh a, [c]                                       ; $4617: $f2
	ld h, e                                          ; $4618: $63
	add b                                            ; $4619: $80
	sbc d                                            ; $461a: $9a
	ld [hl], e                                       ; $461b: $73
	ld hl, $1612                                     ; $461c: $21 $12 $16
	inc c                                            ; $461f: $0c
	cp l                                             ; $4620: $bd
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	add b                                            ; $4623: $80
	pop bc                                           ; $4624: $c1

jr_066_4625:
	add [hl]                                         ; $4625: $86
	add b                                            ; $4626: $80
	rst SubAFromBC                                          ; $4627: $e7
	pop hl                                           ; $4628: $e1
	ccf                                              ; $4629: $3f
	rra                                              ; $462a: $1f
	rst AddAOntoHL                                          ; $462b: $ef
	jr z, jr_066_460a                                ; $462c: $28 $dc

	ret z                                            ; $462e: $c8

	sbc b                                            ; $462f: $98
	sub b                                            ; $4630: $90
	cp b                                             ; $4631: $b8
	db $10                                           ; $4632: $10
	or b                                             ; $4633: $b0
	and b                                            ; $4634: $a0
	ldh [$a0], a                                     ; $4635: $e0 $a0
	ld h, b                                          ; $4637: $60
	ld b, b                                          ; $4638: $40
	ld [hl], e                                       ; $4639: $73
	ld hl, $1633                                     ; $463a: $21 $33 $16
	ld e, $0c                                        ; $463d: $1e $0c
	ld [hl], a                                       ; $463f: $77
	sbc $2f                                          ; $4640: $de $2f
	ldh [$99], a                                     ; $4642: $e0 $99
	inc hl                                           ; $4644: $23
	ld bc, $3721                                     ; $4645: $01 $21 $37
	ccf                                              ; $4648: $3f
	ld e, $77                                        ; $4649: $1e $77
	sbc $13                                          ; $464b: $de $13
	ldh [$7b], a                                     ; $464d: $e0 $7b
	sbc $2f                                          ; $464f: $de $2f
	ldh [$b6], a                                     ; $4651: $e0 $b6
	ld bc, $4d80                                     ; $4653: $01 $80 $4d
	ld a, e                                          ; $4656: $7b
	add hl, hl                                       ; $4657: $29
	ccf                                              ; $4658: $3f
	dec h                                            ; $4659: $25
	ccf                                              ; $465a: $3f
	dec d                                            ; $465b: $15
	rra                                              ; $465c: $1f
	dec d                                            ; $465d: $15
	rra                                              ; $465e: $1f
	ld a, [bc]                                       ; $465f: $0a
	dec bc                                           ; $4660: $0b
	ld a, [bc]                                       ; $4661: $0a
	dec bc                                           ; $4662: $0b
	ld bc, $0301                                     ; $4663: $01 $01 $03
	inc bc                                           ; $4666: $03
	ld [bc], a                                       ; $4667: $02
	inc bc                                           ; $4668: $03
	dec b                                            ; $4669: $05
	rlca                                             ; $466a: $07
	rlca                                             ; $466b: $07
	dec b                                            ; $466c: $05
	ld c, $0b                                        ; $466d: $0e $0b
	ld c, $0b                                        ; $466f: $0e $0b
	ld a, [de]                                       ; $4671: $1a
	rla                                              ; $4672: $17
	inc e                                            ; $4673: $1c
	sub a                                            ; $4674: $97
	rla                                              ; $4675: $17
	inc d                                            ; $4676: $14
	rra                                              ; $4677: $1f
	dec h                                            ; $4678: $25
	ccf                                              ; $4679: $3f
	inc hl                                           ; $467a: $23
	ld a, $2b                                        ; $467b: $3e $2b
	ld [hl], e                                       ; $467d: $73
	cp $89                                           ; $467e: $fe $89
	dec de                                           ; $4680: $1b
	ld e, $1b                                        ; $4681: $1e $1b
	ld e, $0b                                        ; $4683: $1e $0b
	rrca                                             ; $4685: $0f
	rrca                                             ; $4686: $0f
	ld c, $17                                        ; $4687: $0e $17
	inc e                                            ; $4689: $1c
	daa                                              ; $468a: $27
	ccf                                              ; $468b: $3f
	ld c, a                                          ; $468c: $4f
	ld a, h                                          ; $468d: $7c
	ld c, a                                          ; $468e: $4f
	ld a, b                                          ; $468f: $78
	sbc a                                            ; $4690: $9f
	di                                               ; $4691: $f3
	sbc a                                            ; $4692: $9f
	db $f4                                           ; $4693: $f4
	dec h                                            ; $4694: $25
	rst AddAOntoHL                                          ; $4695: $ef
	ld a, e                                          ; $4696: $7b
	cp $9e                                           ; $4697: $fe $9e
	rst $38                                          ; $4699: $ff
	ld [hl], a                                       ; $469a: $77
	cp $8e                                           ; $469b: $fe $8e
	sub l                                            ; $469d: $95
	rst $38                                          ; $469e: $ff
	sub d                                            ; $469f: $92
	rst $38                                          ; $46a0: $ff
	ld d, d                                          ; $46a1: $52
	rst $38                                          ; $46a2: $ff
	ld l, c                                          ; $46a3: $69
	rst $38                                          ; $46a4: $ff
	cp l                                             ; $46a5: $bd
	rst FarCall                                          ; $46a6: $f7
	cp [hl]                                          ; $46a7: $be
	db $e3                                           ; $46a8: $e3
	cp a                                             ; $46a9: $bf
	pop hl                                           ; $46aa: $e1
	sbc c                                            ; $46ab: $99
	ldh a, [hDisp1_SCY]                                     ; $46ac: $f0 $90
	ld a, e                                          ; $46ae: $7b
	cp $80                                           ; $46af: $fe $80
	ret c                                            ; $46b1: $d8

	ldh a, [$a8]                                     ; $46b2: $f0 $a8
	cp b                                             ; $46b4: $b8
	inc l                                            ; $46b5: $2c
	jr c, jr_066_4704                                ; $46b6: $38 $4c

	ld a, h                                          ; $46b8: $7c
	ld c, [hl]                                       ; $46b9: $4e
	ld a, h                                          ; $46ba: $7c
	set 7, [hl]                                      ; $46bb: $cb $fe
	bit 7, a                                         ; $46bd: $cb $7f
	ld c, d                                          ; $46bf: $4a
	ld a, a                                          ; $46c0: $7f
	rst $38                                          ; $46c1: $ff
	ld a, a                                          ; $46c2: $7f
	ret nz                                           ; $46c3: $c0

	add b                                            ; $46c4: $80
	rrca                                             ; $46c5: $0f
	nop                                              ; $46c6: $00
	ld a, a                                          ; $46c7: $7f
	rra                                              ; $46c8: $1f
	ld sp, hl                                        ; $46c9: $f9
	rst $38                                          ; $46ca: $ff
	rrca                                             ; $46cb: $0f
	rlca                                             ; $46cc: $07
	ldh [rP1], a                                     ; $46cd: $e0 $00
	rst $38                                          ; $46cf: $ff
	sbc d                                            ; $46d0: $9a
	ldh a, [rIE]                                     ; $46d1: $f0 $ff
	ccf                                              ; $46d3: $3f
	daa                                              ; $46d4: $27
	ld a, l                                          ; $46d5: $7d
	ld a, e                                          ; $46d6: $7b
	cp $80                                           ; $46d7: $fe $80
	db $fd                                           ; $46d9: $fd
	daa                                              ; $46da: $27
	db $fc                                           ; $46db: $fc
	daa                                              ; $46dc: $27
	db $fc                                           ; $46dd: $fc
	sub a                                            ; $46de: $97
	db $fc                                           ; $46df: $fc
	sbc e                                            ; $46e0: $9b
	cp $df                                           ; $46e1: $fe $df
	or $4f                                           ; $46e3: $f6 $4f
	ld sp, hl                                        ; $46e5: $f9
	ld l, a                                          ; $46e6: $6f
	ld hl, sp-$09                                    ; $46e7: $f8 $f7
	sbc h                                            ; $46e9: $9c
	ld a, a                                          ; $46ea: $7f
	adc $ff                                          ; $46eb: $ce $ff
	ldh [$7e], a                                     ; $46ed: $e0 $7e
	db $10                                           ; $46ef: $10
	inc a                                            ; $46f0: $3c
	stop                                             ; $46f1: $10 $00
	nop                                              ; $46f3: $00
	add $83                                          ; $46f4: $c6 $83
	call $8a87                                       ; $46f6: $cd $87 $8a
	rst GetHLinHL                                          ; $46f9: $cf
	adc [hl]                                         ; $46fa: $8e
	ret nz                                           ; $46fb: $c0

	adc a                                            ; $46fc: $8f
	adc a                                            ; $46fd: $8f
	ld a, a                                          ; $46fe: $7f
	rst $38                                          ; $46ff: $ff
	ld [hl], b                                       ; $4700: $70
	rst $38                                          ; $4701: $ff
	nop                                              ; $4702: $00
	rst $38                                          ; $4703: $ff

jr_066_4704:
	rra                                              ; $4704: $1f
	ld sp, hl                                        ; $4705: $f9
	add hl, sp                                       ; $4706: $39
	rst SubAFromBC                                          ; $4707: $e7
	ccf                                              ; $4708: $3f
	db $e4                                           ; $4709: $e4
	ld b, $03                                        ; $470a: $06 $03
	rrca                                             ; $470c: $0f
	rlca                                             ; $470d: $07
	cp d                                             ; $470e: $ba
	ld bc, $0703                                     ; $470f: $01 $03 $07
	rrca                                             ; $4712: $0f
	rrca                                             ; $4713: $0f
	rra                                              ; $4714: $1f
	rra                                              ; $4715: $1f
	sbc b                                            ; $4716: $98
	ld bc, $073b                                     ; $4717: $01 $3b $07
	ld l, a                                          ; $471a: $6f
	rra                                              ; $471b: $1f
	cp a                                             ; $471c: $bf
	ld a, a                                          ; $471d: $7f
	sbc $ff                                          ; $471e: $de $ff
	ld a, a                                          ; $4720: $7f
	and l                                            ; $4721: $a5
	add b                                            ; $4722: $80
	ld bc, $03fe                                     ; $4723: $01 $fe $03
	ld a, [hl]                                       ; $4726: $7e
	inc bc                                           ; $4727: $03
	ld a, $02                                        ; $4728: $3e $02
	ld a, [hl-]                                      ; $472a: $3a
	ld b, $6c                                        ; $472b: $06 $6c
	ld b, $d4                                        ; $472d: $06 $d4
	dec c                                            ; $472f: $0d
	jp nc, $d2f7                                     ; $4730: $d2 $f7 $d2

	ld a, e                                          ; $4733: $7b
	ld a, [$796b]                                    ; $4734: $fa $6b $79
	res 7, c                                         ; $4737: $cb $b9
	call $5df5                                       ; $4739: $cd $f5 $5d
	db $f4                                           ; $473c: $f4
	rra                                              ; $473d: $1f
	ldh a, [c]                                       ; $473e: $f2
	sbc a                                            ; $473f: $9f
	di                                               ; $4740: $f3
	rst $38                                          ; $4741: $ff
	sub a                                            ; $4742: $97
	ldh a, [c]                                       ; $4743: $f2
	rst SubAFromDE                                          ; $4744: $df
	ldh a, [c]                                       ; $4745: $f2
	sbc a                                            ; $4746: $9f
	ld [hl], d                                       ; $4747: $72
	sbc a                                            ; $4748: $9f
	ldh [c], a                                       ; $4749: $e2
	scf                                              ; $474a: $37
	ld [hl], e                                       ; $474b: $73
	cp $81                                           ; $474c: $fe $81
	daa                                              ; $474e: $27
	call z, $ce67                                    ; $474f: $cc $67 $ce
	ld h, l                                          ; $4752: $65
	add $cd                                          ; $4753: $c6 $cd
	rst SubAFromHL                                          ; $4755: $d7
	adc l                                            ; $4756: $8d
	db $db                                           ; $4757: $db
	adc l                                            ; $4758: $8d
	adc l                                            ; $4759: $8d
	sbc e                                            ; $475a: $9b
	xor e                                            ; $475b: $ab
	dec de                                           ; $475c: $1b
	cp d                                             ; $475d: $ba
	inc de                                           ; $475e: $13
	ld d, $33                                        ; $475f: $16 $33
	ld d, [hl]                                       ; $4761: $56
	scf                                              ; $4762: $37
	ld a, [hl]                                       ; $4763: $7e
	daa                                              ; $4764: $27
	ld [hl], $6f                                     ; $4765: $36 $6f
	ld [$515f], a                                    ; $4767: $ea $5f $51
	rst $38                                          ; $476a: $ff
	and b                                            ; $476b: $a0
	ld a, e                                          ; $476c: $7b
	cp $67                                           ; $476d: $fe $67
	add b                                            ; $476f: $80
	sbc e                                            ; $4770: $9b
	add a                                            ; $4771: $87
	ld a, a                                          ; $4772: $7f
	rst $38                                          ; $4773: $ff
	ld a, b                                          ; $4774: $78
	ld a, e                                          ; $4775: $7b
	add b                                            ; $4776: $80
	ld a, e                                          ; $4777: $7b
	ld a, [hl]                                       ; $4778: $7e
	sbc l                                            ; $4779: $9d
	pop af                                           ; $477a: $f1
	add hl, sp                                       ; $477b: $39
	ld [hl], a                                       ; $477c: $77
	add b                                            ; $477d: $80
	ld a, a                                          ; $477e: $7f
	adc d                                            ; $477f: $8a
	ld l, a                                          ; $4780: $6f
	add b                                            ; $4781: $80
	ld c, e                                          ; $4782: $4b
	and b                                            ; $4783: $a0
	sbc d                                            ; $4784: $9a
	rra                                              ; $4785: $1f
	di                                               ; $4786: $f3
	rra                                              ; $4787: $1f
	ldh a, [c]                                       ; $4788: $f2
	rst $38                                          ; $4789: $ff
	ld d, a                                          ; $478a: $57
	and b                                            ; $478b: $a0
	ld l, a                                          ; $478c: $6f
	ret nz                                           ; $478d: $c0

	sub a                                            ; $478e: $97
	call z, $e383                                    ; $478f: $cc $83 $e3
	rra                                              ; $4792: $1f
	sbc a                                            ; $4793: $9f
	ld a, h                                          ; $4794: $7c
	rst $38                                          ; $4795: $ff
	ld h, b                                          ; $4796: $60
	ld [hl], a                                       ; $4797: $77
	cp [hl]                                          ; $4798: $be
	sbc b                                            ; $4799: $98
	ldh a, [c]                                       ; $479a: $f2
	dec sp                                           ; $479b: $3b
	db $fd                                           ; $479c: $fd
	rrca                                             ; $479d: $0f
	rrca                                             ; $479e: $0f
	inc bc                                           ; $479f: $03
	rra                                              ; $47a0: $1f
	rra                                              ; $47a1: $1f
	ret nz                                           ; $47a2: $c0

	ld a, e                                          ; $47a3: $7b
	ld h, b                                          ; $47a4: $60
	ld a, a                                          ; $47a5: $7f
	ld hl, sp+$4f                                    ; $47a6: $f8 $4f
	ret nz                                           ; $47a8: $c0

	sbc c                                            ; $47a9: $99
	rst GetHLinHL                                          ; $47aa: $cf
	add b                                            ; $47ab: $80
	ldh [$1f], a                                     ; $47ac: $e0 $1f
	sbc a                                            ; $47ae: $9f
	ld a, a                                          ; $47af: $7f
	ld l, a                                          ; $47b0: $6f
	ret nz                                           ; $47b1: $c0

	ld a, a                                          ; $47b2: $7f
	ld a, [hl]                                       ; $47b3: $7e
	sbc d                                            ; $47b4: $9a
	rst $38                                          ; $47b5: $ff
	jr nz, jr_066_47d7                               ; $47b6: $20 $1f

	rra                                              ; $47b8: $1f
	ccf                                              ; $47b9: $3f
	ld d, e                                          ; $47ba: $53
	ret nz                                           ; $47bb: $c0

jr_066_47bc:
	sbc c                                            ; $47bc: $99
	ld sp, hl                                        ; $47bd: $f9
	ld c, e                                          ; $47be: $4b
	add hl, sp                                       ; $47bf: $39
	call $ddf5                                       ; $47c0: $cd $f5 $dd
	ld l, e                                          ; $47c3: $6b
	ret nz                                           ; $47c4: $c0

	ld a, a                                          ; $47c5: $7f
	jp nz, $7f9d                                     ; $47c6: $c2 $9d $7f

	ldh a, [c]                                       ; $47c9: $f2
	ld h, e                                          ; $47ca: $63
	add b                                            ; $47cb: $80
	sbc d                                            ; $47cc: $9a
	ld h, $02                                        ; $47cd: $26 $02
	ld e, $1c                                        ; $47cf: $1e $1c
	inc e                                            ; $47d1: $1c
	cp l                                             ; $47d2: $bd
	ld [$8000], sp                                   ; $47d3: $08 $00 $80
	pop bc                                           ; $47d6: $c1

jr_066_47d7:
	adc b                                            ; $47d7: $88
	add b                                            ; $47d8: $80
	rst SubAFromBC                                          ; $47d9: $e7
	pop hl                                           ; $47da: $e1
	ccf                                              ; $47db: $3f
	rra                                              ; $47dc: $1f
	rst AddAOntoHL                                          ; $47dd: $ef
	jr z, jr_066_47bc                                ; $47de: $28 $dc

	ret z                                            ; $47e0: $c8

	sbc b                                            ; $47e1: $98
	sub b                                            ; $47e2: $90
	cp b                                             ; $47e3: $b8
	db $10                                           ; $47e4: $10
	or b                                             ; $47e5: $b0
	and b                                            ; $47e6: $a0
	ldh [$a0], a                                     ; $47e7: $e0 $a0
	ld h, b                                          ; $47e9: $60
	ld b, b                                          ; $47ea: $40
	ld h, $02                                        ; $47eb: $26 $02
	ld [hl+], a                                      ; $47ed: $22
	ld [hl], $de                                     ; $47ee: $36 $de
	inc e                                            ; $47f0: $1c
	inc hl                                           ; $47f1: $23
	ldh [hDisp1_WX], a                                     ; $47f2: $e0 $96
	daa                                              ; $47f4: $27
	ld [bc], a                                       ; $47f5: $02
	ld h, e                                          ; $47f6: $63
	ld [hl], $3e                                     ; $47f7: $36 $3e
	ld a, $1e                                        ; $47f9: $3e $1e
	inc e                                            ; $47fb: $1c
	inc c                                            ; $47fc: $0c
	dec de                                           ; $47fd: $1b
	ldh [$9e], a                                     ; $47fe: $e0 $9e
	ccf                                              ; $4800: $3f
	ld a, e                                          ; $4801: $7b
	ldh [$9d], a                                     ; $4802: $e0 $9d
	inc e                                            ; $4804: $1c
	ld [$e02f], sp                                   ; $4805: $08 $2f $e0
	xor l                                            ; $4808: $ad
	ld bc, $4d80                                     ; $4809: $01 $80 $4d
	ld a, e                                          ; $480c: $7b
	add hl, hl                                       ; $480d: $29
	ccf                                              ; $480e: $3f
	dec h                                            ; $480f: $25
	ccf                                              ; $4810: $3f
	dec d                                            ; $4811: $15
	rra                                              ; $4812: $1f
	dec d                                            ; $4813: $15
	rra                                              ; $4814: $1f
	ld a, [bc]                                       ; $4815: $0a
	dec bc                                           ; $4816: $0b
	ld a, [bc]                                       ; $4817: $0a
	dec bc                                           ; $4818: $0b
	ld bc, $0301                                     ; $4819: $01 $01 $03
	inc bc                                           ; $481c: $03
	ld [bc], a                                       ; $481d: $02
	inc bc                                           ; $481e: $03
	dec b                                            ; $481f: $05
	rlca                                             ; $4820: $07
	rlca                                             ; $4821: $07
	dec b                                            ; $4822: $05
	ld c, $0b                                        ; $4823: $0e $0b
	ld c, $0b                                        ; $4825: $0e $0b
	ld a, [de]                                       ; $4827: $1a
	rla                                              ; $4828: $17
	inc e                                            ; $4829: $1c
	sub a                                            ; $482a: $97
	rla                                              ; $482b: $17
	inc d                                            ; $482c: $14
	rra                                              ; $482d: $1f
	dec h                                            ; $482e: $25
	ccf                                              ; $482f: $3f
	inc hl                                           ; $4830: $23
	ld a, $2b                                        ; $4831: $3e $2b
	ld [hl], e                                       ; $4833: $73
	cp $89                                           ; $4834: $fe $89
	dec de                                           ; $4836: $1b
	ld e, $1b                                        ; $4837: $1e $1b
	ld e, $0b                                        ; $4839: $1e $0b
	rrca                                             ; $483b: $0f
	rrca                                             ; $483c: $0f
	ld c, $17                                        ; $483d: $0e $17
	inc e                                            ; $483f: $1c
	daa                                              ; $4840: $27
	ccf                                              ; $4841: $3f
	ld c, a                                          ; $4842: $4f
	ld a, h                                          ; $4843: $7c
	ld c, a                                          ; $4844: $4f
	ld a, b                                          ; $4845: $78
	sbc a                                            ; $4846: $9f
	di                                               ; $4847: $f3
	sbc a                                            ; $4848: $9f
	db $f4                                           ; $4849: $f4
	dec h                                            ; $484a: $25
	rst AddAOntoHL                                          ; $484b: $ef
	ld a, e                                          ; $484c: $7b
	cp $9e                                           ; $484d: $fe $9e
	rst $38                                          ; $484f: $ff
	ld [hl], a                                       ; $4850: $77
	cp $8e                                           ; $4851: $fe $8e
	sub l                                            ; $4853: $95
	rst $38                                          ; $4854: $ff
	sub d                                            ; $4855: $92
	rst $38                                          ; $4856: $ff
	ld d, d                                          ; $4857: $52
	rst $38                                          ; $4858: $ff
	ld l, c                                          ; $4859: $69
	rst $38                                          ; $485a: $ff
	cp l                                             ; $485b: $bd
	rst FarCall                                          ; $485c: $f7
	cp [hl]                                          ; $485d: $be
	db $e3                                           ; $485e: $e3
	cp a                                             ; $485f: $bf
	pop hl                                           ; $4860: $e1
	sbc c                                            ; $4861: $99
	ldh a, [hDisp1_SCY]                                     ; $4862: $f0 $90
	ld a, e                                          ; $4864: $7b
	cp $80                                           ; $4865: $fe $80
	ret c                                            ; $4867: $d8

	ldh a, [$a8]                                     ; $4868: $f0 $a8
	cp b                                             ; $486a: $b8
	inc l                                            ; $486b: $2c
	jr c, jr_066_48ba                                ; $486c: $38 $4c

	ld a, h                                          ; $486e: $7c
	ld c, [hl]                                       ; $486f: $4e
	ld a, h                                          ; $4870: $7c
	set 7, [hl]                                      ; $4871: $cb $fe
	bit 7, a                                         ; $4873: $cb $7f
	ld c, d                                          ; $4875: $4a
	ld a, a                                          ; $4876: $7f
	rst $38                                          ; $4877: $ff
	ld a, a                                          ; $4878: $7f
	ret nz                                           ; $4879: $c0

	add b                                            ; $487a: $80
	rrca                                             ; $487b: $0f
	nop                                              ; $487c: $00
	ld a, a                                          ; $487d: $7f
	rra                                              ; $487e: $1f
	ld sp, hl                                        ; $487f: $f9
	rst $38                                          ; $4880: $ff
	rrca                                             ; $4881: $0f
	rlca                                             ; $4882: $07
	ldh [rP1], a                                     ; $4883: $e0 $00
	rst $38                                          ; $4885: $ff
	sbc d                                            ; $4886: $9a
	ldh a, [rIE]                                     ; $4887: $f0 $ff
	ccf                                              ; $4889: $3f
	daa                                              ; $488a: $27
	ld a, l                                          ; $488b: $7d
	ld a, e                                          ; $488c: $7b
	cp $80                                           ; $488d: $fe $80
	db $fd                                           ; $488f: $fd
	daa                                              ; $4890: $27
	db $fc                                           ; $4891: $fc
	daa                                              ; $4892: $27
	db $fc                                           ; $4893: $fc
	sub a                                            ; $4894: $97
	db $fc                                           ; $4895: $fc
	sbc e                                            ; $4896: $9b
	cp $df                                           ; $4897: $fe $df
	or $4f                                           ; $4899: $f6 $4f
	ld sp, hl                                        ; $489b: $f9
	ld l, a                                          ; $489c: $6f
	ld hl, sp-$09                                    ; $489d: $f8 $f7
	sbc h                                            ; $489f: $9c
	ld a, a                                          ; $48a0: $7f
	adc $ff                                          ; $48a1: $ce $ff
	ldh [$7e], a                                     ; $48a3: $e0 $7e
	db $10                                           ; $48a5: $10
	inc a                                            ; $48a6: $3c
	stop                                             ; $48a7: $10 $00
	nop                                              ; $48a9: $00
	add $83                                          ; $48aa: $c6 $83
	call $8a87                                       ; $48ac: $cd $87 $8a
	rst GetHLinHL                                          ; $48af: $cf
	adc [hl]                                         ; $48b0: $8e
	ret z                                            ; $48b1: $c8

	add a                                            ; $48b2: $87
	rst SubAFromBC                                          ; $48b3: $e7
	rra                                              ; $48b4: $1f
	sbc a                                            ; $48b5: $9f
	ld a, b                                          ; $48b6: $78
	rst $38                                          ; $48b7: $ff
	ld h, b                                          ; $48b8: $60
	rst $38                                          ; $48b9: $ff

jr_066_48ba:
	rra                                              ; $48ba: $1f
	ld sp, hl                                        ; $48bb: $f9
	add hl, sp                                       ; $48bc: $39
	rst SubAFromBC                                          ; $48bd: $e7
	ccf                                              ; $48be: $3f
	db $e4                                           ; $48bf: $e4
	ld b, $03                                        ; $48c0: $06 $03
	rrca                                             ; $48c2: $0f
	rlca                                             ; $48c3: $07
	cp d                                             ; $48c4: $ba
	ld bc, $0703                                     ; $48c5: $01 $03 $07
	rrca                                             ; $48c8: $0f
	rrca                                             ; $48c9: $0f
	rra                                              ; $48ca: $1f
	rra                                              ; $48cb: $1f
	sbc b                                            ; $48cc: $98
	ld bc, $073b                                     ; $48cd: $01 $3b $07
	ld l, a                                          ; $48d0: $6f
	rra                                              ; $48d1: $1f
	cp a                                             ; $48d2: $bf
	ld a, a                                          ; $48d3: $7f
	sbc $ff                                          ; $48d4: $de $ff
	ld a, a                                          ; $48d6: $7f
	and l                                            ; $48d7: $a5
	add b                                            ; $48d8: $80
	ld bc, $03fe                                     ; $48d9: $01 $fe $03
	ld a, [hl]                                       ; $48dc: $7e
	inc bc                                           ; $48dd: $03
	ld a, $02                                        ; $48de: $3e $02
	ld a, [hl-]                                      ; $48e0: $3a
	ld b, $6c                                        ; $48e1: $06 $6c
	ld b, $d4                                        ; $48e3: $06 $d4
	dec c                                            ; $48e5: $0d
	jp nc, $d2f7                                     ; $48e6: $d2 $f7 $d2

	ld a, e                                          ; $48e9: $7b
	ld a, [$796b]                                    ; $48ea: $fa $6b $79
	res 7, c                                         ; $48ed: $cb $b9
	call $5df5                                       ; $48ef: $cd $f5 $5d
	db $f4                                           ; $48f2: $f4
	rra                                              ; $48f3: $1f
	ldh a, [c]                                       ; $48f4: $f2
	sbc a                                            ; $48f5: $9f
	di                                               ; $48f6: $f3
	rst $38                                          ; $48f7: $ff
	sub a                                            ; $48f8: $97
	ldh a, [c]                                       ; $48f9: $f2
	rst SubAFromDE                                          ; $48fa: $df
	ldh a, [c]                                       ; $48fb: $f2
	sbc a                                            ; $48fc: $9f
	ld [hl], d                                       ; $48fd: $72
	sbc a                                            ; $48fe: $9f
	ldh [c], a                                       ; $48ff: $e2
	scf                                              ; $4900: $37
	ld [hl], e                                       ; $4901: $73
	cp $81                                           ; $4902: $fe $81
	daa                                              ; $4904: $27
	call z, $ce67                                    ; $4905: $cc $67 $ce
	ld h, l                                          ; $4908: $65
	add $cd                                          ; $4909: $c6 $cd
	rst SubAFromHL                                          ; $490b: $d7
	adc l                                            ; $490c: $8d
	db $db                                           ; $490d: $db
	adc l                                            ; $490e: $8d
	adc l                                            ; $490f: $8d
	sbc e                                            ; $4910: $9b
	xor e                                            ; $4911: $ab
	dec de                                           ; $4912: $1b
	cp d                                             ; $4913: $ba
	inc de                                           ; $4914: $13
	ld d, $33                                        ; $4915: $16 $33
	ld d, [hl]                                       ; $4917: $56
	scf                                              ; $4918: $37
	ld a, [hl]                                       ; $4919: $7e
	daa                                              ; $491a: $27
	ld [hl], $6f                                     ; $491b: $36 $6f
	ld [$515f], a                                    ; $491d: $ea $5f $51
	rst $38                                          ; $4920: $ff
	and b                                            ; $4921: $a0
	ld a, e                                          ; $4922: $7b
	cp $6f                                           ; $4923: $fe $6f
	add b                                            ; $4925: $80
	sbc c                                            ; $4926: $99
	call z, $e383                                    ; $4927: $cc $83 $e3
	rra                                              ; $492a: $1f
	sbc a                                            ; $492b: $9f
	ld a, h                                          ; $492c: $7c
	ld a, e                                          ; $492d: $7b
	add b                                            ; $492e: $80
	ld a, a                                          ; $492f: $7f
	ld c, h                                          ; $4930: $4c
	sbc h                                            ; $4931: $9c
	rra                                              ; $4932: $1f
	push af                                          ; $4933: $f5
	dec a                                            ; $4934: $3d
	ld [hl], a                                       ; $4935: $77
	add b                                            ; $4936: $80
	ld a, a                                          ; $4937: $7f
	adc d                                            ; $4938: $8a
	ld l, a                                          ; $4939: $6f
	add b                                            ; $493a: $80
	ld c, e                                          ; $493b: $4b
	and b                                            ; $493c: $a0
	sbc d                                            ; $493d: $9a
	rra                                              ; $493e: $1f
	di                                               ; $493f: $f3
	rra                                              ; $4940: $1f
	ldh a, [c]                                       ; $4941: $f2
	rst $38                                          ; $4942: $ff
	ld d, a                                          ; $4943: $57
	and b                                            ; $4944: $a0
	ld l, a                                          ; $4945: $6f
	ret nz                                           ; $4946: $c0

	sub a                                            ; $4947: $97
	rst GetHLinHL                                          ; $4948: $cf
	add b                                            ; $4949: $80
	ldh a, [rIF]                                     ; $494a: $f0 $0f
	adc a                                            ; $494c: $8f
	ld a, a                                          ; $494d: $7f
	rst $38                                          ; $494e: $ff
	ld [hl], b                                       ; $494f: $70
	ld a, e                                          ; $4950: $7b
	ret nz                                           ; $4951: $c0

	sub a                                            ; $4952: $97
	nop                                              ; $4953: $00
	ldh a, [c]                                       ; $4954: $f2
	dec sp                                           ; $4955: $3b
	db $fd                                           ; $4956: $fd
	rrca                                             ; $4957: $0f
	rrca                                             ; $4958: $0f
	inc bc                                           ; $4959: $03
	rra                                              ; $495a: $1f
	ld d, e                                          ; $495b: $53
	ret nz                                           ; $495c: $c0

	sbc c                                            ; $495d: $99
	ld sp, hl                                        ; $495e: $f9
	ld c, e                                          ; $495f: $4b
	add hl, sp                                       ; $4960: $39
	call $ddf5                                       ; $4961: $cd $f5 $dd
	ld l, e                                          ; $4964: $6b
	ret nz                                           ; $4965: $c0

	ld a, e                                          ; $4966: $7b
	ld h, b                                          ; $4967: $60
	ld a, a                                          ; $4968: $7f
	ld hl, sp+$47                                    ; $4969: $f8 $47
	ret nz                                           ; $496b: $c0

	sbc l                                            ; $496c: $9d
	ld hl, sp+$07                                    ; $496d: $f8 $07
	ld l, d                                          ; $496f: $6a
	cp $7b                                           ; $4970: $fe $7b
	ld a, [hl]                                       ; $4972: $7e
	sbc d                                            ; $4973: $9a
	rst $38                                          ; $4974: $ff
	jr nz, jr_066_4996                               ; $4975: $20 $1f

	rra                                              ; $4977: $1f
	ccf                                              ; $4978: $3f
	rra                                              ; $4979: $1f
	ret nz                                           ; $497a: $c0

	ld a, a                                          ; $497b: $7f
	jp nz, $7f9d                                     ; $497c: $c2 $9d $7f

	ldh a, [c]                                       ; $497f: $f2
	ld h, e                                          ; $4980: $63
	add b                                            ; $4981: $80
	rst $38                                          ; $4982: $ff
	sbc h                                            ; $4983: $9c
	ld [hl], $1c                                     ; $4984: $36 $1c
	inc e                                            ; $4986: $1c
	cp l                                             ; $4987: $bd
	ld [$8000], sp                                   ; $4988: $08 $00 $80
	pop bc                                           ; $498b: $c1
	add l                                            ; $498c: $85
	add b                                            ; $498d: $80
	rst SubAFromBC                                          ; $498e: $e7
	pop hl                                           ; $498f: $e1
	ccf                                              ; $4990: $3f
	rra                                              ; $4991: $1f
	rst AddAOntoHL                                          ; $4992: $ef
	jr z, @-$22                                      ; $4993: $28 $dc

	ret z                                            ; $4995: $c8

jr_066_4996:
	sbc b                                            ; $4996: $98
	sub b                                            ; $4997: $90
	cp b                                             ; $4998: $b8
	db $10                                           ; $4999: $10
	or b                                             ; $499a: $b0
	and b                                            ; $499b: $a0
	ldh [$a0], a                                     ; $499c: $e0 $a0
	ld h, b                                          ; $499e: $60
	ld b, b                                          ; $499f: $40
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	scf                                              ; $49a2: $37
	ld e, $1e                                        ; $49a3: $1e $1e
	inc c                                            ; $49a5: $0c
	inc c                                            ; $49a6: $0c
	dec de                                           ; $49a7: $1b
	ldh [$9c], a                                     ; $49a8: $e0 $9c
	inc hl                                           ; $49aa: $23
	ld d, $3f                                        ; $49ab: $16 $3f
	ld [hl], e                                       ; $49ad: $73
	sbc $17                                          ; $49ae: $de $17
	ldh [rPCM34], a                                  ; $49b0: $e0 $77
	sbc $2f                                          ; $49b2: $de $2f
	ldh [$bc], a                                     ; $49b4: $e0 $bc
	ld bc, $4d80                                     ; $49b6: $01 $80 $4d
	ld a, e                                          ; $49b9: $7b
	add hl, hl                                       ; $49ba: $29
	ccf                                              ; $49bb: $3f
	dec h                                            ; $49bc: $25
	ccf                                              ; $49bd: $3f
	dec d                                            ; $49be: $15
	rra                                              ; $49bf: $1f
	dec d                                            ; $49c0: $15
	rra                                              ; $49c1: $1f
	ld a, [bc]                                       ; $49c2: $0a
	dec bc                                           ; $49c3: $0b
	ld a, [bc]                                       ; $49c4: $0a
	dec bc                                           ; $49c5: $0b
	ld bc, $0301                                     ; $49c6: $01 $01 $03
	inc bc                                           ; $49c9: $03
	ld [bc], a                                       ; $49ca: $02
	inc bc                                           ; $49cb: $03
	dec b                                            ; $49cc: $05
	rlca                                             ; $49cd: $07
	rlca                                             ; $49ce: $07
	dec b                                            ; $49cf: $05
	ld c, $0b                                        ; $49d0: $0e $0b
	ld c, $0b                                        ; $49d2: $0e $0b
	ld a, [de]                                       ; $49d4: $1a
	rla                                              ; $49d5: $17
	inc e                                            ; $49d6: $1c
	sub a                                            ; $49d7: $97
	rla                                              ; $49d8: $17
	inc d                                            ; $49d9: $14
	rra                                              ; $49da: $1f
	dec h                                            ; $49db: $25
	ccf                                              ; $49dc: $3f
	inc hl                                           ; $49dd: $23
	ld a, $2b                                        ; $49de: $3e $2b
	ld [hl], e                                       ; $49e0: $73
	cp $89                                           ; $49e1: $fe $89
	dec de                                           ; $49e3: $1b
	ld e, $1b                                        ; $49e4: $1e $1b
	ld e, $0b                                        ; $49e6: $1e $0b
	rrca                                             ; $49e8: $0f
	rrca                                             ; $49e9: $0f
	ld c, $17                                        ; $49ea: $0e $17
	inc e                                            ; $49ec: $1c
	daa                                              ; $49ed: $27
	ccf                                              ; $49ee: $3f
	ld c, a                                          ; $49ef: $4f
	ld a, h                                          ; $49f0: $7c
	ld c, a                                          ; $49f1: $4f
	ld a, b                                          ; $49f2: $78
	sbc a                                            ; $49f3: $9f
	di                                               ; $49f4: $f3
	sbc a                                            ; $49f5: $9f
	db $f4                                           ; $49f6: $f4
	dec h                                            ; $49f7: $25
	rst AddAOntoHL                                          ; $49f8: $ef
	ld a, e                                          ; $49f9: $7b
	cp $9e                                           ; $49fa: $fe $9e
	rst $38                                          ; $49fc: $ff
	ld [hl], a                                       ; $49fd: $77
	cp $8e                                           ; $49fe: $fe $8e
	sub l                                            ; $4a00: $95
	rst $38                                          ; $4a01: $ff
	sub d                                            ; $4a02: $92
	rst $38                                          ; $4a03: $ff
	ld d, d                                          ; $4a04: $52
	rst $38                                          ; $4a05: $ff
	ld l, c                                          ; $4a06: $69
	rst $38                                          ; $4a07: $ff
	cp l                                             ; $4a08: $bd
	rst FarCall                                          ; $4a09: $f7
	cp [hl]                                          ; $4a0a: $be
	db $e3                                           ; $4a0b: $e3
	cp a                                             ; $4a0c: $bf
	pop hl                                           ; $4a0d: $e1
	sbc c                                            ; $4a0e: $99
	ldh a, [hDisp1_SCY]                                     ; $4a0f: $f0 $90
	ld a, e                                          ; $4a11: $7b
	cp $80                                           ; $4a12: $fe $80
	ret c                                            ; $4a14: $d8

	ldh a, [$a8]                                     ; $4a15: $f0 $a8
	cp b                                             ; $4a17: $b8
	inc l                                            ; $4a18: $2c
	jr c, jr_066_4a67                                ; $4a19: $38 $4c

	ld a, h                                          ; $4a1b: $7c
	ld c, [hl]                                       ; $4a1c: $4e
	ld a, h                                          ; $4a1d: $7c
	set 7, [hl]                                      ; $4a1e: $cb $fe
	bit 7, a                                         ; $4a20: $cb $7f
	ld c, d                                          ; $4a22: $4a
	ld a, a                                          ; $4a23: $7f
	rst $38                                          ; $4a24: $ff
	ld a, a                                          ; $4a25: $7f
	ret nz                                           ; $4a26: $c0

	add b                                            ; $4a27: $80
	rrca                                             ; $4a28: $0f
	nop                                              ; $4a29: $00
	ld a, a                                          ; $4a2a: $7f
	rra                                              ; $4a2b: $1f
	ld sp, hl                                        ; $4a2c: $f9
	rst $38                                          ; $4a2d: $ff
	rrca                                             ; $4a2e: $0f
	rlca                                             ; $4a2f: $07
	ldh [rP1], a                                     ; $4a30: $e0 $00
	rst $38                                          ; $4a32: $ff
	sbc d                                            ; $4a33: $9a
	ldh a, [rIE]                                     ; $4a34: $f0 $ff
	ccf                                              ; $4a36: $3f
	daa                                              ; $4a37: $27
	ld a, l                                          ; $4a38: $7d
	ld a, e                                          ; $4a39: $7b
	cp $80                                           ; $4a3a: $fe $80
	db $fd                                           ; $4a3c: $fd
	daa                                              ; $4a3d: $27
	db $fc                                           ; $4a3e: $fc
	daa                                              ; $4a3f: $27
	db $fc                                           ; $4a40: $fc
	sub a                                            ; $4a41: $97
	db $fc                                           ; $4a42: $fc
	sbc e                                            ; $4a43: $9b
	cp $df                                           ; $4a44: $fe $df
	or $4f                                           ; $4a46: $f6 $4f
	ld sp, hl                                        ; $4a48: $f9
	ld l, a                                          ; $4a49: $6f
	ld hl, sp-$09                                    ; $4a4a: $f8 $f7
	sbc h                                            ; $4a4c: $9c
	ld a, a                                          ; $4a4d: $7f
	adc $ff                                          ; $4a4e: $ce $ff
	ldh [$7e], a                                     ; $4a50: $e0 $7e
	db $10                                           ; $4a52: $10
	inc a                                            ; $4a53: $3c
	stop                                             ; $4a54: $10 $00
	nop                                              ; $4a56: $00
	add $83                                          ; $4a57: $c6 $83
	call $8a87                                       ; $4a59: $cd $87 $8a
	rst GetHLinHL                                          ; $4a5c: $cf
	adc [hl]                                         ; $4a5d: $8e
	rst GetHLinHL                                          ; $4a5e: $cf
	add b                                            ; $4a5f: $80
	cp $01                                           ; $4a60: $fe $01
	pop af                                           ; $4a62: $f1
	rrca                                             ; $4a63: $0f
	rst GetHLinHL                                          ; $4a64: $cf
	ld a, $bf                                        ; $4a65: $3e $bf

jr_066_4a67:
	ld [hl], b                                       ; $4a67: $70
	rst $38                                          ; $4a68: $ff
	ld b, b                                          ; $4a69: $40

Jump_066_4a6a:
	rst $38                                          ; $4a6a: $ff
	rra                                              ; $4a6b: $1f
	rst $38                                          ; $4a6c: $ff
	jr nz, jr_066_4a8e                               ; $4a6d: $20 $1f

	rra                                              ; $4a6f: $1f
	ccf                                              ; $4a70: $3f
	cp d                                             ; $4a71: $ba
	ld bc, $0703                                     ; $4a72: $01 $03 $07
	rrca                                             ; $4a75: $0f
	rrca                                             ; $4a76: $0f
	rra                                              ; $4a77: $1f
	rra                                              ; $4a78: $1f
	sbc b                                            ; $4a79: $98
	ld bc, $073b                                     ; $4a7a: $01 $3b $07
	ld l, a                                          ; $4a7d: $6f
	rra                                              ; $4a7e: $1f
	cp a                                             ; $4a7f: $bf
	ld a, a                                          ; $4a80: $7f
	sbc $ff                                          ; $4a81: $de $ff
	ld a, a                                          ; $4a83: $7f
	and l                                            ; $4a84: $a5
	add c                                            ; $4a85: $81
	ld bc, $03fe                                     ; $4a86: $01 $fe $03
	ld a, [hl]                                       ; $4a89: $7e
	inc bc                                           ; $4a8a: $03
	ld a, $02                                        ; $4a8b: $3e $02
	ld a, [hl-]                                      ; $4a8d: $3a

jr_066_4a8e:
	ld b, $6c                                        ; $4a8e: $06 $6c
	ld b, $d4                                        ; $4a90: $06 $d4
	dec c                                            ; $4a92: $0d
	jp nc, $d2f7                                     ; $4a93: $d2 $f7 $d2

	ld a, e                                          ; $4a96: $7b
	ld a, [$f96b]                                    ; $4a97: $fa $6b $f9
	ld c, e                                          ; $4a9a: $4b
	add hl, sp                                       ; $4a9b: $39
	call $ddf5                                       ; $4a9c: $cd $f5 $dd
	db $f4                                           ; $4a9f: $f4
	rra                                              ; $4aa0: $1f
	ldh a, [c]                                       ; $4aa1: $f2
	rra                                              ; $4aa2: $1f
	di                                               ; $4aa3: $f3
	ld a, e                                          ; $4aa4: $7b
	db $fc                                           ; $4aa5: $fc
	sbc c                                            ; $4aa6: $99
	ldh a, [c]                                       ; $4aa7: $f2
	ld e, a                                          ; $4aa8: $5f
	ldh a, [c]                                       ; $4aa9: $f2
	sbc a                                            ; $4aaa: $9f
	ldh [c], a                                       ; $4aab: $e2
	scf                                              ; $4aac: $37
	ld [hl], e                                       ; $4aad: $73
	cp $81                                           ; $4aae: $fe $81
	daa                                              ; $4ab0: $27
	call z, $ce67                                    ; $4ab1: $cc $67 $ce
	ld h, l                                          ; $4ab4: $65
	add $cd                                          ; $4ab5: $c6 $cd
	rst SubAFromHL                                          ; $4ab7: $d7
	adc l                                            ; $4ab8: $8d
	db $db                                           ; $4ab9: $db
	adc l                                            ; $4aba: $8d
	adc l                                            ; $4abb: $8d
	sbc e                                            ; $4abc: $9b
	xor e                                            ; $4abd: $ab
	dec de                                           ; $4abe: $1b
	cp d                                             ; $4abf: $ba
	inc de                                           ; $4ac0: $13
	ld d, $33                                        ; $4ac1: $16 $33
	ld d, [hl]                                       ; $4ac3: $56
	scf                                              ; $4ac4: $37
	ld a, [hl]                                       ; $4ac5: $7e
	daa                                              ; $4ac6: $27
	ld [hl], $6f                                     ; $4ac7: $36 $6f
	ld [$515f], a                                    ; $4ac9: $ea $5f $51
	rst $38                                          ; $4acc: $ff
	and b                                            ; $4acd: $a0
	ld a, e                                          ; $4ace: $7b
	cp $67                                           ; $4acf: $fe $67
	add b                                            ; $4ad1: $80
	adc [hl]                                         ; $4ad2: $8e
	db $fc                                           ; $4ad3: $fc
	inc bc                                           ; $4ad4: $03
	db $e3                                           ; $4ad5: $e3
	rra                                              ; $4ad6: $1f
	sbc a                                            ; $4ad7: $9f
	ld a, h                                          ; $4ad8: $7c
	rst $38                                          ; $4ad9: $ff
	ld h, b                                          ; $4ada: $60
	rst $38                                          ; $4adb: $ff
	nop                                              ; $4adc: $00
	ldh a, [c]                                       ; $4add: $f2
	dec sp                                           ; $4ade: $3b
	db $fd                                           ; $4adf: $fd
	rrca                                             ; $4ae0: $0f
	rrca                                             ; $4ae1: $0f
	inc bc                                           ; $4ae2: $03
	rra                                              ; $4ae3: $1f
	cp l                                             ; $4ae4: $bd
	ld bc, $0703                                     ; $4ae5: $01 $03 $07
	jp nc, $a03f                                     ; $4ae8: $d2 $3f $a0

	sbc d                                            ; $4aeb: $9a
	rst SubAFromDE                                          ; $4aec: $df
	ldh a, [c]                                       ; $4aed: $f2
	sbc a                                            ; $4aee: $9f
	ldh a, [c]                                       ; $4aef: $f2
	rra                                              ; $4af0: $1f
	ld h, a                                          ; $4af1: $67
	and b                                            ; $4af2: $a0
	ld l, a                                          ; $4af3: $6f
	ret nz                                           ; $4af4: $c0

	sub a                                            ; $4af5: $97
	adc $81                                          ; $4af6: $ce $81
	ld sp, hl                                        ; $4af8: $f9
	rlca                                             ; $4af9: $07
	rst SubAFromBC                                          ; $4afa: $e7
	ld e, $9f                                        ; $4afb: $1e $9f
	ld a, b                                          ; $4afd: $78
	ld a, e                                          ; $4afe: $7b
	ret nz                                           ; $4aff: $c0

	sub a                                            ; $4b00: $97
	rra                                              ; $4b01: $1f
	pop af                                           ; $4b02: $f1
	add hl, sp                                       ; $4b03: $39
	db $e4                                           ; $4b04: $e4
	ld h, [hl]                                       ; $4b05: $66
	inc bc                                           ; $4b06: $03
	rrca                                             ; $4b07: $0f
	rrca                                             ; $4b08: $0f
	ld d, e                                          ; $4b09: $53
	ret nz                                           ; $4b0a: $c0

	sbc c                                            ; $4b0b: $99
	ld a, c                                          ; $4b0c: $79
	set 7, c                                         ; $4b0d: $cb $f9
	call $1df5                                       ; $4b0f: $cd $f5 $1d
	ld [hl], e                                       ; $4b12: $73
	ret nz                                           ; $4b13: $c0

	ld a, a                                          ; $4b14: $7f
	call nz, $ff9b                                   ; $4b15: $c4 $9b $ff
	ldh a, [c]                                       ; $4b18: $f2
	sbc a                                            ; $4b19: $9f
	ld [hl], d                                       ; $4b1a: $72
	ld h, e                                          ; $4b1b: $63
	ld h, b                                          ; $4b1c: $60
	ld l, a                                          ; $4b1d: $6f
	ret nz                                           ; $4b1e: $c0

	sbc l                                            ; $4b1f: $9d
	call z, Call_066_6b83                            ; $4b20: $cc $83 $6b
	add d                                            ; $4b23: $82
	sub l                                            ; $4b24: $95
	rlca                                             ; $4b25: $07
	ld sp, hl                                        ; $4b26: $f9

jr_066_4b27:
	add hl, de                                       ; $4b27: $19
	or $3f                                           ; $4b28: $f6 $3f
	db $e4                                           ; $4b2a: $e4
	ld b, [hl]                                       ; $4b2b: $46
	inc bc                                           ; $4b2c: $03
	rrca                                             ; $4b2d: $0f
	rlca                                             ; $4b2e: $07
	cpl                                              ; $4b2f: $2f
	ret nz                                           ; $4b30: $c0

	ld a, [hl]                                       ; $4b31: $7e
	ld l, l                                          ; $4b32: $6d
	ld a, a                                          ; $4b33: $7f
	jp nz, $807b                                     ; $4b34: $c2 $7b $80

	ld e, a                                          ; $4b37: $5f
	ret nz                                           ; $4b38: $c0

	rst SubAFromDE                                          ; $4b39: $df
	inc e                                            ; $4b3a: $1c
	sbc l                                            ; $4b3b: $9d
	ld a, $22                                        ; $4b3c: $3e $22
	ei                                               ; $4b3e: $fb
	add a                                            ; $4b3f: $87
	add b                                            ; $4b40: $80
	nop                                              ; $4b41: $00
	pop bc                                           ; $4b42: $c1
	add b                                            ; $4b43: $80
	rst SubAFromBC                                          ; $4b44: $e7
	pop hl                                           ; $4b45: $e1
	ccf                                              ; $4b46: $3f
	rra                                              ; $4b47: $1f
	rst AddAOntoHL                                          ; $4b48: $ef
	jr z, jr_066_4b27                                ; $4b49: $28 $dc

	ret z                                            ; $4b4b: $c8

	sbc b                                            ; $4b4c: $98
	sub b                                            ; $4b4d: $90
	cp b                                             ; $4b4e: $b8
	db $10                                           ; $4b4f: $10
	or b                                             ; $4b50: $b0
	and b                                            ; $4b51: $a0
	ldh [$a0], a                                     ; $4b52: $e0 $a0
	ld h, b                                          ; $4b54: $60
	ld b, b                                          ; $4b55: $40
	ld a, $1c                                        ; $4b56: $3e $1c
	sbc $3e                                          ; $4b58: $de $3e
	sbc [hl]                                         ; $4b5a: $9e
	inc e                                            ; $4b5b: $1c
	rra                                              ; $4b5c: $1f
	ldh [$9d], a                                     ; $4b5d: $e0 $9d
	ld h, $2c                                        ; $4b5f: $26 $2c
	call c, $df3e                                    ; $4b61: $dc $3e $df
	inc e                                            ; $4b64: $1c
	inc hl                                           ; $4b65: $23
	ldh [$9c], a                                     ; $4b66: $e0 $9c
	ld a, [hl]                                       ; $4b68: $7e
	ld a, $7e                                        ; $4b69: $3e $7e
	ld [hl], e                                       ; $4b6b: $73
	sbc $9e                                          ; $4b6c: $de $9e
	sbc b                                            ; $4b6e: $98
	inc sp                                           ; $4b6f: $33
	ldh [$be], a                                     ; $4b70: $e0 $be
	ld bc, $4d80                                     ; $4b72: $01 $80 $4d
	ld a, e                                          ; $4b75: $7b
	add hl, hl                                       ; $4b76: $29
	ccf                                              ; $4b77: $3f
	dec h                                            ; $4b78: $25
	ccf                                              ; $4b79: $3f
	dec d                                            ; $4b7a: $15
	rra                                              ; $4b7b: $1f
	dec d                                            ; $4b7c: $15
	rra                                              ; $4b7d: $1f
	ld a, [bc]                                       ; $4b7e: $0a
	dec bc                                           ; $4b7f: $0b
	ld a, [bc]                                       ; $4b80: $0a
	dec bc                                           ; $4b81: $0b
	ld bc, $0301                                     ; $4b82: $01 $01 $03
	inc bc                                           ; $4b85: $03
	ld [bc], a                                       ; $4b86: $02
	inc bc                                           ; $4b87: $03
	dec b                                            ; $4b88: $05
	rlca                                             ; $4b89: $07
	rlca                                             ; $4b8a: $07
	dec b                                            ; $4b8b: $05
	ld c, $0b                                        ; $4b8c: $0e $0b
	ld c, $0b                                        ; $4b8e: $0e $0b
	ld a, [de]                                       ; $4b90: $1a
	rla                                              ; $4b91: $17
	inc e                                            ; $4b92: $1c
	sub a                                            ; $4b93: $97
	rla                                              ; $4b94: $17
	inc d                                            ; $4b95: $14
	rra                                              ; $4b96: $1f
	dec h                                            ; $4b97: $25
	ccf                                              ; $4b98: $3f
	inc hl                                           ; $4b99: $23
	ld a, $2b                                        ; $4b9a: $3e $2b
	ld [hl], e                                       ; $4b9c: $73
	cp $89                                           ; $4b9d: $fe $89
	dec de                                           ; $4b9f: $1b
	ld e, $1b                                        ; $4ba0: $1e $1b
	ld e, $0b                                        ; $4ba2: $1e $0b
	rrca                                             ; $4ba4: $0f
	rrca                                             ; $4ba5: $0f
	ld c, $17                                        ; $4ba6: $0e $17
	inc e                                            ; $4ba8: $1c
	daa                                              ; $4ba9: $27
	ccf                                              ; $4baa: $3f
	ld c, a                                          ; $4bab: $4f
	ld a, h                                          ; $4bac: $7c
	ld c, a                                          ; $4bad: $4f
	ld a, b                                          ; $4bae: $78
	sbc a                                            ; $4baf: $9f
	di                                               ; $4bb0: $f3
	sbc a                                            ; $4bb1: $9f
	db $f4                                           ; $4bb2: $f4
	dec h                                            ; $4bb3: $25
	rst AddAOntoHL                                          ; $4bb4: $ef
	ld a, e                                          ; $4bb5: $7b
	cp $9e                                           ; $4bb6: $fe $9e
	rst $38                                          ; $4bb8: $ff
	ld [hl], a                                       ; $4bb9: $77
	cp $8e                                           ; $4bba: $fe $8e
	sub l                                            ; $4bbc: $95
	rst $38                                          ; $4bbd: $ff
	sub d                                            ; $4bbe: $92
	rst $38                                          ; $4bbf: $ff
	ld d, d                                          ; $4bc0: $52
	rst $38                                          ; $4bc1: $ff
	ld l, c                                          ; $4bc2: $69
	rst $38                                          ; $4bc3: $ff
	cp l                                             ; $4bc4: $bd
	rst FarCall                                          ; $4bc5: $f7
	cp [hl]                                          ; $4bc6: $be
	db $e3                                           ; $4bc7: $e3
	cp a                                             ; $4bc8: $bf
	pop hl                                           ; $4bc9: $e1
	sbc c                                            ; $4bca: $99
	ldh a, [hDisp1_SCY]                                     ; $4bcb: $f0 $90
	ld a, e                                          ; $4bcd: $7b
	cp $80                                           ; $4bce: $fe $80
	ret c                                            ; $4bd0: $d8

	ldh a, [$a8]                                     ; $4bd1: $f0 $a8
	cp b                                             ; $4bd3: $b8
	inc l                                            ; $4bd4: $2c
	jr c, jr_066_4c23                                ; $4bd5: $38 $4c

	ld a, h                                          ; $4bd7: $7c
	ld c, [hl]                                       ; $4bd8: $4e
	ld a, h                                          ; $4bd9: $7c
	set 7, [hl]                                      ; $4bda: $cb $fe
	bit 7, a                                         ; $4bdc: $cb $7f
	ld c, d                                          ; $4bde: $4a
	ld a, a                                          ; $4bdf: $7f
	rst $38                                          ; $4be0: $ff
	ld a, a                                          ; $4be1: $7f
	ret nz                                           ; $4be2: $c0

	add b                                            ; $4be3: $80
	rrca                                             ; $4be4: $0f
	nop                                              ; $4be5: $00
	ld a, a                                          ; $4be6: $7f
	rra                                              ; $4be7: $1f
	ld sp, hl                                        ; $4be8: $f9
	rst $38                                          ; $4be9: $ff
	rrca                                             ; $4bea: $0f
	rlca                                             ; $4beb: $07
	ldh [rP1], a                                     ; $4bec: $e0 $00
	rst $38                                          ; $4bee: $ff
	sbc d                                            ; $4bef: $9a
	ldh a, [rIE]                                     ; $4bf0: $f0 $ff
	ccf                                              ; $4bf2: $3f
	daa                                              ; $4bf3: $27
	ld a, l                                          ; $4bf4: $7d
	ld a, e                                          ; $4bf5: $7b
	cp $80                                           ; $4bf6: $fe $80
	db $fd                                           ; $4bf8: $fd
	daa                                              ; $4bf9: $27
	db $fc                                           ; $4bfa: $fc
	daa                                              ; $4bfb: $27
	db $fc                                           ; $4bfc: $fc
	sub a                                            ; $4bfd: $97
	db $fc                                           ; $4bfe: $fc
	sbc e                                            ; $4bff: $9b
	cp $df                                           ; $4c00: $fe $df
	or $4f                                           ; $4c02: $f6 $4f
	ld sp, hl                                        ; $4c04: $f9
	ld l, a                                          ; $4c05: $6f
	ld hl, sp-$09                                    ; $4c06: $f8 $f7
	sbc h                                            ; $4c08: $9c
	ld a, a                                          ; $4c09: $7f
	adc $ff                                          ; $4c0a: $ce $ff
	ldh [$7e], a                                     ; $4c0c: $e0 $7e
	db $10                                           ; $4c0e: $10
	inc a                                            ; $4c0f: $3c
	stop                                             ; $4c10: $10 $00
	nop                                              ; $4c12: $00
	add $83                                          ; $4c13: $c6 $83
	call $8a87                                       ; $4c15: $cd $87 $8a
	adc a                                            ; $4c18: $8f
	adc $cf                                          ; $4c19: $ce $cf
	ldh a, [$f0]                                     ; $4c1b: $f0 $f0
	ccf                                              ; $4c1d: $3f
	rst $38                                          ; $4c1e: $ff
	rrca                                             ; $4c1f: $0f
	rst $38                                          ; $4c20: $ff
	nop                                              ; $4c21: $00
	rst $38                                          ; $4c22: $ff

jr_066_4c23:
	rra                                              ; $4c23: $1f
	ld sp, hl                                        ; $4c24: $f9
	add hl, sp                                       ; $4c25: $39
	rst SubAFromBC                                          ; $4c26: $e7
	ccf                                              ; $4c27: $3f
	db $e4                                           ; $4c28: $e4
	ld b, $03                                        ; $4c29: $06 $03
	rrca                                             ; $4c2b: $0f
	rlca                                             ; $4c2c: $07
	cp d                                             ; $4c2d: $ba
	ld bc, $0703                                     ; $4c2e: $01 $03 $07
	rrca                                             ; $4c31: $0f
	rrca                                             ; $4c32: $0f
	rra                                              ; $4c33: $1f
	rra                                              ; $4c34: $1f
	sbc b                                            ; $4c35: $98
	ld bc, $073b                                     ; $4c36: $01 $3b $07
	ld l, a                                          ; $4c39: $6f
	rra                                              ; $4c3a: $1f
	cp a                                             ; $4c3b: $bf
	ld a, a                                          ; $4c3c: $7f
	sbc $ff                                          ; $4c3d: $de $ff
	ld a, a                                          ; $4c3f: $7f
	and l                                            ; $4c40: $a5
	add b                                            ; $4c41: $80
	ld bc, $03fe                                     ; $4c42: $01 $fe $03
	ld a, [hl]                                       ; $4c45: $7e
	inc bc                                           ; $4c46: $03
	ld a, $02                                        ; $4c47: $3e $02
	ld a, [hl-]                                      ; $4c49: $3a
	ld b, $6c                                        ; $4c4a: $06 $6c
	ld b, $d4                                        ; $4c4c: $06 $d4
	dec c                                            ; $4c4e: $0d

Jump_066_4c4f:
	jp nc, $d2f7                                     ; $4c4f: $d2 $f7 $d2

	ld a, e                                          ; $4c52: $7b
	ld a, [$f96b]                                    ; $4c53: $fa $6b $f9
	ld c, e                                          ; $4c56: $4b
	ld a, c                                          ; $4c57: $79
	call $9df5                                       ; $4c58: $cd $f5 $9d
	db $f4                                           ; $4c5b: $f4
	rra                                              ; $4c5c: $1f
	ldh a, [c]                                       ; $4c5d: $f2
	sbc a                                            ; $4c5e: $9f
	di                                               ; $4c5f: $f3
	rst $38                                          ; $4c60: $ff
	sub a                                            ; $4c61: $97
	ldh a, [c]                                       ; $4c62: $f2
	rst SubAFromDE                                          ; $4c63: $df
	ldh a, [c]                                       ; $4c64: $f2
	sbc a                                            ; $4c65: $9f
	ld [hl], d                                       ; $4c66: $72
	sbc a                                            ; $4c67: $9f
	ldh [c], a                                       ; $4c68: $e2
	scf                                              ; $4c69: $37
	ld [hl], e                                       ; $4c6a: $73
	cp $81                                           ; $4c6b: $fe $81
	daa                                              ; $4c6d: $27
	call z, $ce67                                    ; $4c6e: $cc $67 $ce
	ld h, l                                          ; $4c71: $65
	add $cd                                          ; $4c72: $c6 $cd
	rst SubAFromHL                                          ; $4c74: $d7
	adc l                                            ; $4c75: $8d
	db $db                                           ; $4c76: $db
	adc l                                            ; $4c77: $8d
	adc l                                            ; $4c78: $8d
	sbc e                                            ; $4c79: $9b
	xor e                                            ; $4c7a: $ab
	dec de                                           ; $4c7b: $1b
	cp d                                             ; $4c7c: $ba
	inc de                                           ; $4c7d: $13
	ld d, $33                                        ; $4c7e: $16 $33
	ld d, [hl]                                       ; $4c80: $56
	scf                                              ; $4c81: $37
	ld a, [hl]                                       ; $4c82: $7e
	daa                                              ; $4c83: $27
	ld [hl], $6f                                     ; $4c84: $36 $6f
	ld [$515f], a                                    ; $4c86: $ea $5f $51
	rst $38                                          ; $4c89: $ff
	and b                                            ; $4c8a: $a0
	ld a, e                                          ; $4c8b: $7b
	cp $67                                           ; $4c8c: $fe $67
	add b                                            ; $4c8e: $80
	sbc c                                            ; $4c8f: $99
	pop af                                           ; $4c90: $f1
	ld a, $fe                                        ; $4c91: $3e $fe
	rrca                                             ; $4c93: $0f
	rst $38                                          ; $4c94: $ff
	ld bc, $7e77                                     ; $4c95: $01 $77 $7e
	sbc l                                            ; $4c98: $9d
	pop af                                           ; $4c99: $f1
	add hl, sp                                       ; $4c9a: $39
	ld [hl], a                                       ; $4c9b: $77
	add b                                            ; $4c9c: $80
	ld a, a                                          ; $4c9d: $7f
	adc d                                            ; $4c9e: $8a
	ld l, a                                          ; $4c9f: $6f
	add b                                            ; $4ca0: $80
	ld h, a                                          ; $4ca1: $67
	and b                                            ; $4ca2: $a0
	sub e                                            ; $4ca3: $93
	ld sp, hl                                        ; $4ca4: $f9
	dec c                                            ; $4ca5: $0d
	dec [hl]                                         ; $4ca6: $35
	db $dd                                           ; $4ca7: $dd
	db $f4                                           ; $4ca8: $f4
	rst SubAFromDE                                          ; $4ca9: $df
	ldh a, [c]                                       ; $4caa: $f2
	rra                                              ; $4cab: $1f
	di                                               ; $4cac: $f3
	rra                                              ; $4cad: $1f
	ldh a, [c]                                       ; $4cae: $f2
	rst $38                                          ; $4caf: $ff
	ld d, a                                          ; $4cb0: $57
	and b                                            ; $4cb1: $a0
	ld [hl], a                                       ; $4cb2: $77
	ret nz                                           ; $4cb3: $c0

	sub a                                            ; $4cb4: $97
	rst GetHLinHL                                          ; $4cb5: $cf
	adc [hl]                                         ; $4cb6: $8e
	sbc a                                            ; $4cb7: $9f
	ldh [$e1], a                                     ; $4cb8: $e0 $e1
	ld a, [hl]                                       ; $4cba: $7e
	cp $1f                                           ; $4cbb: $fe $1f
	ld [hl], e                                       ; $4cbd: $73
	ret nz                                           ; $4cbe: $c0

	sub a                                            ; $4cbf: $97
	nop                                              ; $4cc0: $00
	ldh a, [c]                                       ; $4cc1: $f2
	dec sp                                           ; $4cc2: $3b
	db $fd                                           ; $4cc3: $fd
	rrca                                             ; $4cc4: $0f
	rrca                                             ; $4cc5: $0f
	inc bc                                           ; $4cc6: $03
	rra                                              ; $4cc7: $1f
	rra                                              ; $4cc8: $1f
	ret nz                                           ; $4cc9: $c0

	ld a, e                                          ; $4cca: $7b
	ld h, b                                          ; $4ccb: $60
	ld a, a                                          ; $4ccc: $7f
	ld hl, sp+$47                                    ; $4ccd: $f8 $47
	ret nz                                           ; $4ccf: $c0

	sbc c                                            ; $4cd0: $99
	rst SubAFromBC                                          ; $4cd1: $e7
	ld a, b                                          ; $4cd2: $78
	ld hl, sp+$1f                                    ; $4cd3: $f8 $1f
	rst $38                                          ; $4cd5: $ff
	rlca                                             ; $4cd6: $07
	ld [hl], a                                       ; $4cd7: $77
	ret nz                                           ; $4cd8: $c0

	ld a, a                                          ; $4cd9: $7f
	ld a, [hl]                                       ; $4cda: $7e
	sbc d                                            ; $4cdb: $9a
	rst $38                                          ; $4cdc: $ff
	jr nz, jr_066_4cfe                               ; $4cdd: $20 $1f

	rra                                              ; $4cdf: $1f
	ccf                                              ; $4ce0: $3f
	ld b, e                                          ; $4ce1: $43
	ret nz                                           ; $4ce2: $c0

jr_066_4ce3:
	sbc c                                            ; $4ce3: $99
	push af                                          ; $4ce4: $f5
	dec e                                            ; $4ce5: $1d
	inc [hl]                                         ; $4ce6: $34
	rst SubAFromDE                                          ; $4ce7: $df
	ldh a, [c]                                       ; $4ce8: $f2
	rst SubAFromDE                                          ; $4ce9: $df
	ld a, e                                          ; $4cea: $7b
	ret nz                                           ; $4ceb: $c0

	ld a, a                                          ; $4cec: $7f
	jp nz, $7f9d                                     ; $4ced: $c2 $9d $7f

	ldh a, [c]                                       ; $4cf0: $f2
	ld h, e                                          ; $4cf1: $63
	add b                                            ; $4cf2: $80
	sbc d                                            ; $4cf3: $9a
	ld h, $02                                        ; $4cf4: $26 $02
	ld e, $1c                                        ; $4cf6: $1e $1c
	inc e                                            ; $4cf8: $1c
	cp l                                             ; $4cf9: $bd
	ld [$8000], sp                                   ; $4cfa: $08 $00 $80
	pop bc                                           ; $4cfd: $c1

jr_066_4cfe:
	adc b                                            ; $4cfe: $88
	add b                                            ; $4cff: $80
	rst SubAFromBC                                          ; $4d00: $e7
	pop hl                                           ; $4d01: $e1
	ccf                                              ; $4d02: $3f
	rra                                              ; $4d03: $1f
	rst AddAOntoHL                                          ; $4d04: $ef
	jr z, jr_066_4ce3                                ; $4d05: $28 $dc

	ret z                                            ; $4d07: $c8

	sbc b                                            ; $4d08: $98
	sub b                                            ; $4d09: $90
	cp b                                             ; $4d0a: $b8
	db $10                                           ; $4d0b: $10
	or b                                             ; $4d0c: $b0
	and b                                            ; $4d0d: $a0
	ldh [$a0], a                                     ; $4d0e: $e0 $a0
	ld h, b                                          ; $4d10: $60
	ld b, b                                          ; $4d11: $40
	ld h, $02                                        ; $4d12: $26 $02
	ld [hl+], a                                      ; $4d14: $22
	ld [hl], $de                                     ; $4d15: $36 $de
	inc e                                            ; $4d17: $1c
	inc hl                                           ; $4d18: $23
	ldh [hDisp1_WX], a                                     ; $4d19: $e0 $96
	daa                                              ; $4d1b: $27
	ld [bc], a                                       ; $4d1c: $02
	ld h, e                                          ; $4d1d: $63
	ld [hl], $3e                                     ; $4d1e: $36 $3e
	ld a, $1e                                        ; $4d20: $3e $1e
	inc e                                            ; $4d22: $1c
	inc c                                            ; $4d23: $0c
	dec de                                           ; $4d24: $1b
	ldh [$9e], a                                     ; $4d25: $e0 $9e
	ccf                                              ; $4d27: $3f
	ld a, e                                          ; $4d28: $7b
	ldh [$9d], a                                     ; $4d29: $e0 $9d
	inc e                                            ; $4d2b: $1c
	ld [$e02f], sp                                   ; $4d2c: $08 $2f $e0
	or l                                             ; $4d2f: $b5
	ld [bc], a                                       ; $4d30: $02
	rst FarCall                                          ; $4d31: $f7
	rst SubAFromHL                                          ; $4d32: $d7
	ld bc, $f477                                     ; $4d33: $01 $77 $f4

jr_066_4d36:
	rst SubAFromDE                                          ; $4d36: $df
	inc bc                                           ; $4d37: $03
	sbc [hl]                                         ; $4d38: $9e
	ld [bc], a                                       ; $4d39: $02
	ld a, e                                          ; $4d3a: $7b
	cp $df                                           ; $4d3b: $fe $df
	inc bc                                           ; $4d3d: $03
	rst SubAFromBC                                          ; $4d3e: $e7
	rst SubAFromDE                                          ; $4d3f: $df
	inc bc                                           ; $4d40: $03
	add b                                            ; $4d41: $80
	rrca                                             ; $4d42: $0f
	inc c                                            ; $4d43: $0c
	dec de                                           ; $4d44: $1b
	inc e                                            ; $4d45: $1c
	jr z, jr_066_4d87                                ; $4d46: $28 $3f

	ld d, a                                          ; $4d48: $57
	ld l, h                                          ; $4d49: $6c
	ld a, a                                          ; $4d4a: $7f
	ld b, a                                          ; $4d4b: $47
	cp l                                             ; $4d4c: $bd
	add $bd                                          ; $4d4d: $c6 $bd
	add $bb                                          ; $4d4f: $c6 $bb
	ld b, [hl]                                       ; $4d51: $46
	rst SubAFromDE                                          ; $4d52: $df
	ld [hl+], a                                      ; $4d53: $22
	xor $13                                          ; $4d54: $ee $13
	push af                                          ; $4d56: $f5
	dec bc                                           ; $4d57: $0b
	ld a, c                                          ; $4d58: $79
	add a                                            ; $4d59: $87
	ld hl, sp-$79                                    ; $4d5a: $f8 $87
	cp h                                             ; $4d5c: $bc
	jp $f16e                                         ; $4d5d: $c3 $6e $f1


	ret c                                            ; $4d60: $d8

	sbc d                                            ; $4d61: $9a
	ccf                                              ; $4d62: $3f
	ld a, h                                          ; $4d63: $7c

jr_066_4d64:
	add e                                            ; $4d64: $83
	jr nc, jr_066_4d36                               ; $4d65: $30 $cf

	ld l, a                                          ; $4d67: $6f
	xor b                                            ; $4d68: $a8
	ld [hl], a                                       ; $4d69: $77
	or e                                             ; $4d6a: $b3
	sub l                                            ; $4d6b: $95
	rlca                                             ; $4d6c: $07
	dec b                                            ; $4d6d: $05
	dec b                                            ; $4d6e: $05
	rlca                                             ; $4d6f: $07
	dec bc                                           ; $4d70: $0b
	rrca                                             ; $4d71: $0f
	ld c, $0f                                        ; $4d72: $0e $0f
	dec bc                                           ; $4d74: $0b
	ld a, [bc]                                       ; $4d75: $0a
	ld [hl], e                                       ; $4d76: $73
	and l                                            ; $4d77: $a5
	rst SubAFromDE                                          ; $4d78: $df
	ld [bc], a                                       ; $4d79: $02
	sbc [hl]                                         ; $4d7a: $9e
	inc bc                                           ; $4d7b: $03
	ld h, a                                          ; $4d7c: $67
	sub d                                            ; $4d7d: $92
	db $ed                                           ; $4d7e: $ed
	push bc                                          ; $4d7f: $c5
	ld bc, $dfff                                     ; $4d80: $01 $ff $df
	rra                                              ; $4d83: $1f
	sub d                                            ; $4d84: $92
	rst $38                                          ; $4d85: $ff
	ldh [c], a                                       ; $4d86: $e2

jr_066_4d87:
	db $fd                                           ; $4d87: $fd
	inc bc                                           ; $4d88: $03
	ldh a, [rIF]                                     ; $4d89: $f0 $0f
	rrca                                             ; $4d8b: $0f
	pop af                                           ; $4d8c: $f1
	cp $1f                                           ; $4d8d: $fe $1f
	add sp, -$10                                     ; $4d8f: $e8 $f0
	add b                                            ; $4d91: $80
	cp l                                             ; $4d92: $bd
	ld bc, $2422                                     ; $4d93: $01 $22 $24
	ld [$248c], sp                                   ; $4d96: $08 $8c $24
	sub h                                            ; $4d99: $94
	jr z, jr_066_4d64                                ; $4d9a: $28 $c8

	jr nc, jr_066_4dfe                               ; $4d9c: $30 $60

	or b                                             ; $4d9e: $b0
	or b                                             ; $4d9f: $b0
	ldh [$fd], a                                     ; $4da0: $e0 $fd
	db $e3                                           ; $4da2: $e3
	rst GetHLinHL                                          ; $4da3: $cf
	cp $f8                                           ; $4da4: $fe $f8
	ldh a, [$a7]                                     ; $4da6: $f0 $a7
	rst JumpTable                                          ; $4da8: $c7
	db $fd                                           ; $4da9: $fd
	ld hl, sp+$37                                    ; $4daa: $f8 $37
	ld c, b                                          ; $4dac: $48
	add e                                            ; $4dad: $83
	dec b                                            ; $4dae: $05
	ld b, $0f                                        ; $4daf: $06 $0f
	ld [$131d], sp                                   ; $4db1: $08 $1d $13
	dec sp                                           ; $4db4: $3b
	daa                                              ; $4db5: $27
	ld [hl], a                                       ; $4db6: $77
	ld c, h                                          ; $4db7: $4c
	ld l, [hl]                                       ; $4db8: $6e
	ld e, c                                          ; $4db9: $59
	db $fd                                           ; $4dba: $fd
	sub e                                            ; $4dbb: $93
	ldh a, [c]                                       ; $4dbc: $f2
	daa                                              ; $4dbd: $27
	db $ed                                           ; $4dbe: $ed
	ld b, [hl]                                       ; $4dbf: $46
	adc d                                            ; $4dc0: $8a
	call z, $88dc                                    ; $4dc1: $cc $dc $88
	inc d                                            ; $4dc4: $14
	sbc b                                            ; $4dc5: $98
	cp c                                             ; $4dc6: $b9
	db $10                                           ; $4dc7: $10
	sbc c                                            ; $4dc8: $99
	jr nc, @-$1e                                     ; $4dc9: $30 $e0

	pop bc                                           ; $4dcb: $c1
	add b                                            ; $4dcc: $80
	db $ed                                           ; $4dcd: $ed
	dec hl                                           ; $4dce: $2b
	ld l, l                                          ; $4dcf: $6d
	xor e                                            ; $4dd0: $ab
	xor $ab                                          ; $4dd1: $ee $ab
	xor d                                            ; $4dd3: $aa

jr_066_4dd4:
	xor $7c                                          ; $4dd4: $ee $7c
	xor $ec                                          ; $4dd6: $ee $ec
	db $fc                                           ; $4dd8: $fc
	jr z, @-$02                                      ; $4dd9: $28 $fc

	add sp, -$08                                     ; $4ddb: $e8 $f8
	jr @-$06                                         ; $4ddd: $18 $f8

	ret c                                            ; $4ddf: $d8

	jr c, @-$06                                      ; $4de0: $38 $f8

	jr z, jr_066_4dd4                                ; $4de2: $28 $f0

	jr nz, jr_066_4e3e                               ; $4de4: $20 $58

	jr nc, @+$6e                                     ; $4de6: $30 $6c

	jr jr_066_4e60                                   ; $4de8: $18 $76

	inc c                                            ; $4dea: $0c
	ld e, e                                          ; $4deb: $5b
	adc [hl]                                         ; $4dec: $8e
	ld b, $8b                                        ; $4ded: $06 $8b
	rlca                                             ; $4def: $07
	dec de                                           ; $4df0: $1b
	ld b, $5e                                        ; $4df1: $06 $5e
	inc a                                            ; $4df3: $3c
	db $fc                                           ; $4df4: $fc
	add sp, $38                                      ; $4df5: $e8 $38
	db $10                                           ; $4df7: $10
	jr nz, @+$32                                     ; $4df8: $20 $30

	and b                                            ; $4dfa: $a0
	ld h, b                                          ; $4dfb: $60
	ldh a, [$e0]                                     ; $4dfc: $f0 $e0

jr_066_4dfe:
	ld d, a                                          ; $4dfe: $57
	ld l, b                                          ; $4dff: $68
	ld [hl], a                                       ; $4e00: $77
	jr z, jr_066_4e82                                ; $4e01: $28 $7f

	ld [hl-], a                                      ; $4e03: $32
	add c                                            ; $4e04: $81
	ld b, d                                          ; $4e05: $42
	add c                                            ; $4e06: $81
	ld hl, $7c1e                                     ; $4e07: $21 $1e $7c
	ldh a, [$a2]                                     ; $4e0a: $f0 $a2
	pop bc                                           ; $4e0c: $c1
	sbc [hl]                                         ; $4e0d: $9e
	rrca                                             ; $4e0e: $0f
	ld [hl], h                                       ; $4e0f: $74
	jr c, @-$2b                                      ; $4e10: $38 $d3

	ldh [$4e], a                                     ; $4e12: $e0 $4e
	add c                                            ; $4e14: $81
	cp e                                             ; $4e15: $bb
	rlca                                             ; $4e16: $07
	ld l, h                                          ; $4e17: $6c
	rra                                              ; $4e18: $1f
	ld d, a                                          ; $4e19: $57
	ld a, [hl-]                                      ; $4e1a: $3a
	xor [hl]                                         ; $4e1b: $ae
	ld [hl], h                                       ; $4e1c: $74
	db $dd                                           ; $4e1d: $dd
	ld l, b                                          ; $4e1e: $68
	ld [hl], c                                       ; $4e1f: $71
	ret c                                            ; $4e20: $d8

	or b                                             ; $4e21: $b0
	ret nc                                           ; $4e22: $d0

	ldh [$c1], a                                     ; $4e23: $e0 $c1
	add b                                            ; $4e25: $80
	cp d                                             ; $4e26: $ba
	jr jr_066_4e63                                   ; $4e27: $18 $3a

	jr nc, jr_066_4e65                               ; $4e29: $30 $3a

	jr nc, @+$3f                                     ; $4e2b: $30 $3d

	jr c, @+$41                                      ; $4e2d: $38 $3f

	inc l                                            ; $4e2f: $2c
	cpl                                              ; $4e30: $2f
	ld h, $27                                        ; $4e31: $26 $27
	inc hl                                           ; $4e33: $23
	inc hl                                           ; $4e34: $23
	ld hl, $2021                                     ; $4e35: $21 $21 $20
	ld hl, $6321                                     ; $4e38: $21 $21 $63
	ld hl, $2362                                     ; $4e3b: $21 $62 $23

jr_066_4e3e:
	ld h, [hl]                                       ; $4e3e: $66
	inc hl                                           ; $4e3f: $23
	ld h, h                                          ; $4e40: $64
	daa                                              ; $4e41: $27
	db $ec                                           ; $4e42: $ec
	ld h, a                                          ; $4e43: $67
	cp $98                                           ; $4e44: $fe $98
	xor a                                            ; $4e46: $af
	ld a, [$7b3b]                                    ; $4e47: $fa $3b $7b
	inc sp                                           ; $4e4a: $33
	ld [hl], d                                       ; $4e4b: $72
	inc hl                                           ; $4e4c: $23
	ld [hl], a                                       ; $4e4d: $77
	cp $9d                                           ; $4e4e: $fe $9d
	ld a, h                                          ; $4e50: $7c
	daa                                              ; $4e51: $27
	ld [hl], a                                       ; $4e52: $77
	cp $5f                                           ; $4e53: $fe $5f
	ld h, d                                          ; $4e55: $62
	rst SubAFromDE                                          ; $4e56: $df
	pop af                                           ; $4e57: $f1
	add b                                            ; $4e58: $80
	ld e, l                                          ; $4e59: $5d
	ld l, l                                          ; $4e5a: $6d
	rst FarCall                                          ; $4e5b: $f7
	ei                                               ; $4e5c: $fb
	ld l, e                                          ; $4e5d: $6b
	dec e                                            ; $4e5e: $1d
	dec a                                            ; $4e5f: $3d

jr_066_4e60:
	cp $1b                                           ; $4e60: $fe $1b
	rlca                                             ; $4e62: $07

jr_066_4e63:
	dec b                                            ; $4e63: $05
	inc bc                                           ; $4e64: $03

jr_066_4e65:
	ccf                                              ; $4e65: $3f
	rst $38                                          ; $4e66: $ff
	add [hl]                                         ; $4e67: $86
	ld bc, $0f70                                     ; $4e68: $01 $70 $0f
	sbc a                                            ; $4e6b: $9f
	ld a, a                                          ; $4e6c: $7f
	ld e, $e1                                        ; $4e6d: $1e $e1
	ld h, e                                          ; $4e6f: $63
	add b                                            ; $4e70: $80
	sub a                                            ; $4e71: $97
	rrca                                             ; $4e72: $0f
	ld e, e                                          ; $4e73: $5b
	inc a                                            ; $4e74: $3c
	or d                                             ; $4e75: $b2
	ld h, c                                          ; $4e76: $61
	ld l, e                                          ; $4e77: $6b
	sbc d                                            ; $4e78: $9a
	rst JumpTable                                          ; $4e79: $c7
	ld d, h                                          ; $4e7a: $54
	adc l                                            ; $4e7b: $8d
	add hl, bc                                       ; $4e7c: $09
	dec de                                           ; $4e7d: $1b
	ldh [$c1], a                                     ; $4e7e: $e0 $c1
	sbc [hl]                                         ; $4e80: $9e
	ld a, a                                          ; $4e81: $7f

jr_066_4e82:
	cp l                                             ; $4e82: $bd
	ld a, $19                                        ; $4e83: $3e $19
	inc bc                                           ; $4e85: $03
	rlca                                             ; $4e86: $07
	add b                                            ; $4e87: $80
	ld bc, $028e                                     ; $4e88: $01 $8e $02
	call c, $f804                                    ; $4e8b: $dc $04 $f8
	sbc b                                            ; $4e8e: $98
	ld hl, sp-$10                                    ; $4e8f: $f8 $f0
	ldh a, [$e0]                                     ; $4e91: $f0 $e0
	ld [hl], c                                       ; $4e93: $71
	pop hl                                           ; $4e94: $e1
	ld e, c                                          ; $4e95: $59
	pop af                                           ; $4e96: $f1
	ld e, c                                          ; $4e97: $59
	pop af                                           ; $4e98: $f1
	dec c                                            ; $4e99: $0d
	ld sp, hl                                        ; $4e9a: $f9
	dec c                                            ; $4e9b: $0d
	ld sp, hl                                        ; $4e9c: $f9
	rra                                              ; $4e9d: $1f
	db $fd                                           ; $4e9e: $fd
	rra                                              ; $4e9f: $1f
	push af                                          ; $4ea0: $f5
	scf                                              ; $4ea1: $37
	ldh a, [c]                                       ; $4ea2: $f2
	db $d3                                           ; $4ea3: $d3
	ldh a, [c]                                       ; $4ea4: $f2
	ld d, e                                          ; $4ea5: $53
	ldh a, [$9b]                                     ; $4ea6: $f0 $9b
	ld d, a                                          ; $4ea8: $57
	ldh a, [rVBK]                                    ; $4ea9: $f0 $4f
	ld sp, hl                                        ; $4eab: $f9
	ld [hl], a                                       ; $4eac: $77
	cp $f7                                           ; $4ead: $fe $f7
	rst SubAFromDE                                          ; $4eaf: $df
	adc [hl]                                         ; $4eb0: $8e
	add b                                            ; $4eb1: $80
	ld d, h                                          ; $4eb2: $54
	call c, Call_066_7beb                            ; $4eb3: $dc $eb $7b
	db $ed                                           ; $4eb6: $ed
	ld e, [hl]                                       ; $4eb7: $5e
	ld e, a                                          ; $4eb8: $5f
	cp l                                             ; $4eb9: $bd
	ld [hl], b                                       ; $4eba: $70
	ldh [$c0], a                                     ; $4ebb: $e0 $c0
	db $fd                                           ; $4ebd: $fd
	xor b                                            ; $4ebe: $a8
	ldh a, [$d6]                                     ; $4ebf: $f0 $d6
	rst AddAOntoHL                                          ; $4ec1: $ef
	ld e, h                                          ; $4ec2: $5c
	ld hl, sp+$60                                    ; $4ec3: $f8 $60
	rst $38                                          ; $4ec5: $ff
	xor $f1                                          ; $4ec6: $ee $f1
	ld e, c                                          ; $4ec8: $59
	ldh [$da], a                                     ; $4ec9: $e0 $da
	db $fc                                           ; $4ecb: $fc
	ld h, l                                          ; $4ecc: $65
	cp $46                                           ; $4ecd: $fe $46
	db $e3                                           ; $4ecf: $e3
	ld l, d                                          ; $4ed0: $6a
	sbc d                                            ; $4ed1: $9a
	di                                               ; $4ed2: $f3
	db $db                                           ; $4ed3: $db
	ld sp, hl                                        ; $4ed4: $f9
	jp hl                                            ; $4ed5: $e9


	db $fd                                           ; $4ed6: $fd
	ldh [$c1], a                                     ; $4ed7: $e0 $c1
	add b                                            ; $4ed9: $80
	pop hl                                           ; $4eda: $e1
	dec sp                                           ; $4edb: $3b
	pop hl                                           ; $4edc: $e1
	scf                                              ; $4edd: $37
	db $e3                                           ; $4ede: $e3
	ld [hl], a                                       ; $4edf: $77
	jp $47ef                                         ; $4ee0: $c3 $ef $47


	ld l, [hl]                                       ; $4ee3: $6e
	ld b, a                                          ; $4ee4: $47
	ld l, h                                          ; $4ee5: $6c
	add a                                            ; $4ee6: $87
	call c, $d88f                                    ; $4ee7: $dc $8f $d8
	adc a                                            ; $4eea: $8f
	cp b                                             ; $4eeb: $b8
	sbc [hl]                                         ; $4eec: $9e
	or b                                             ; $4eed: $b0
	inc e                                            ; $4eee: $1c
	or b                                             ; $4eef: $b0
	jr c, @+$62                                      ; $4ef0: $38 $60

	ld sp, $3360                                     ; $4ef2: $31 $60 $33
	ld h, c                                          ; $4ef5: $61
	ld a, a                                          ; $4ef6: $7f
	di                                               ; $4ef7: $f3
	ld a, a                                          ; $4ef8: $7f
	sub e                                            ; $4ef9: $93
	sbc $7e                                          ; $4efa: $de $7e
	call z, $c6ff                                    ; $4efc: $cc $ff $c6
	rst $38                                          ; $4eff: $ff
	add e                                            ; $4f00: $83
	rst SubAFromDE                                          ; $4f01: $df
	add c                                            ; $4f02: $81
	rst GetHLinHL                                          ; $4f03: $cf
	add b                                            ; $4f04: $80
	rst GetHLinHL                                          ; $4f05: $cf
	cp a                                             ; $4f06: $bf
	add a                                            ; $4f07: $87
	add e                                            ; $4f08: $83
	ld c, c                                          ; $4f09: $49
	ld [hl+], a                                      ; $4f0a: $22
	rst SubAFromDE                                          ; $4f0b: $df
	ldh [$80], a                                     ; $4f0c: $e0 $80
	ld b, b                                          ; $4f0e: $40
	ret nz                                           ; $4f0f: $c0

	ldh a, [$f0]                                     ; $4f10: $f0 $f0
	db $ec                                           ; $4f12: $ec
	inc e                                            ; $4f13: $1c
	ld a, [hl-]                                      ; $4f14: $3a
	add $d7                                          ; $4f15: $c6 $d7
	add hl, sp                                       ; $4f17: $39
	ld a, l                                          ; $4f18: $7d
	add [hl]                                         ; $4f19: $86
	or [hl]                                          ; $4f1a: $b6
	ld a, e                                          ; $4f1b: $7b
	db $eb                                           ; $4f1c: $eb
	dec e                                            ; $4f1d: $1d
	dec a                                            ; $4f1e: $3d
	add $5e                                          ; $4f1f: $c6 $5e
	di                                               ; $4f21: $f3
	xor a                                            ; $4f22: $af
	ld a, c                                          ; $4f23: $79
	ld l, a                                          ; $4f24: $6f
	dec [hl]                                         ; $4f25: $35
	sbc a                                            ; $4f26: $9f
	inc [hl]                                         ; $4f27: $34
	scf                                              ; $4f28: $37
	sbc d                                            ; $4f29: $9a
	ld d, a                                          ; $4f2a: $57
	sbc d                                            ; $4f2b: $9a
	rra                                              ; $4f2c: $1f
	sbc [hl]                                         ; $4f2d: $9e
	jp z, $c1e0                                      ; $4f2e: $ca $e0 $c1

	sbc h                                            ; $4f31: $9c
	and b                                            ; $4f32: $a0
	ldh [$a0], a                                     ; $4f33: $e0 $a0
	sbc $e0                                          ; $4f35: $de $e0
	adc b                                            ; $4f37: $88
	cp $9e                                           ; $4f38: $fe $9e
	rst $38                                          ; $4f3a: $ff
	pop hl                                           ; $4f3b: $e1
	rst $38                                          ; $4f3c: $ff
	sub b                                            ; $4f3d: $90
	rst FarCall                                          ; $4f3e: $f7
	ld a, b                                          ; $4f3f: $78
	cp $4f                                           ; $4f40: $fe $4f
	ld a, a                                          ; $4f42: $7f
	ld sp, $3e6f                                     ; $4f43: $31 $6f $3e
	ld l, l                                          ; $4f46: $6d
	inc sp                                           ; $4f47: $33
	rst SubAFromDE                                          ; $4f48: $df
	ld h, b                                          ; $4f49: $60
	cp a                                             ; $4f4a: $bf
	ret nz                                           ; $4f4b: $c0

	ld a, [hl]                                       ; $4f4c: $7e
	add b                                            ; $4f4d: $80
	adc h                                            ; $4f4e: $8c
	cp a                                             ; $4f4f: $bf
	dec c                                            ; $4f50: $0d
	ld [$0190], sp                                   ; $4f51: $08 $90 $01
	dec bc                                           ; $4f54: $0b
	ld bc, $0b99                                     ; $4f55: $01 $99 $0b
	db $fd                                           ; $4f58: $fd

jr_066_4f59:
	adc e                                            ; $4f59: $8b
	rst GetHLinHL                                          ; $4f5a: $cf
	rst $38                                          ; $4f5b: $ff
	push af                                          ; $4f5c: $f5
	ld a, e                                          ; $4f5d: $7b
	rst $38                                          ; $4f5e: $ff
	rst JumpTable                                          ; $4f5f: $c7
	ei                                               ; $4f60: $fb
	cp $e7                                           ; $4f61: $fe $e7
	rst SubAFromDE                                          ; $4f63: $df
	add b                                            ; $4f64: $80
	sbc h                                            ; $4f65: $9c
	ret nz                                           ; $4f66: $c0

	ld b, b                                          ; $4f67: $40
	jr nz, jr_066_4fe5                               ; $4f68: $20 $7b

jr_066_4f6a:
	or d                                             ; $4f6a: $b2
	sbc b                                            ; $4f6b: $98
	ret nc                                           ; $4f6c: $d0

	ld [hl], b                                       ; $4f6d: $70
	ret nc                                           ; $4f6e: $d0

	ld [hl], b                                       ; $4f6f: $70
	jr z, jr_066_4f6a                                ; $4f70: $28 $f8

	xor b                                            ; $4f72: $a8
	ld a, d                                          ; $4f73: $7a
	ld [hl], l                                       ; $4f74: $75
	sbc h                                            ; $4f75: $9c
	ld e, h                                          ; $4f76: $5c
	db $fc                                           ; $4f77: $fc
	ld c, h                                          ; $4f78: $4c
	ld [hl], e                                       ; $4f79: $73
	cp $9e                                           ; $4f7a: $fe $9e
	inc h                                            ; $4f7c: $24
	ld h, e                                          ; $4f7d: $63
	cp $9c                                           ; $4f7e: $fe $9c
	and h                                            ; $4f80: $a4
	db $fc                                           ; $4f81: $fc
	db $e4                                           ; $4f82: $e4
	ld a, e                                          ; $4f83: $7b
	ld a, [$489d]                                    ; $4f84: $fa $9d $48
	ld hl, sp+$6f                                    ; $4f87: $f8 $6f
	cp $9d                                           ; $4f89: $fe $9d
	sub b                                            ; $4f8b: $90
	ldh a, [rPCM34]                                  ; $4f8c: $f0 $77
	cp $7f                                           ; $4f8e: $fe $7f
	call z, $fe7f                                    ; $4f90: $cc $7f $fe
	ld a, a                                          ; $4f93: $7f
	ld a, [de]                                       ; $4f94: $1a
	ld a, a                                          ; $4f95: $7f
	cp $dd                                           ; $4f96: $fe $dd
	add b                                            ; $4f98: $80
	rst SubAFromBC                                          ; $4f99: $e7
	rst SubAFromDE                                          ; $4f9a: $df
	ldh [$80], a                                     ; $4f9b: $e0 $80

jr_066_4f9d:
	call c, $f23c                                    ; $4f9d: $dc $3c $f2
	ld c, $e7                                        ; $4fa0: $0e $e7
	rra                                              ; $4fa2: $1f
	ret z                                            ; $4fa3: $c8

	rst $38                                          ; $4fa4: $ff
	call nc, $eb3b                                   ; $4fa5: $d4 $3b $eb
	db $f4                                           ; $4fa8: $f4
	rst FarCall                                          ; $4fa9: $f7
	ld [$102f], sp                                   ; $4faa: $08 $2f $10
	ld d, a                                          ; $4fad: $57
	ld [hl+], a                                      ; $4fae: $22
	and $44                                          ; $4faf: $e6 $44
	call z, $df88                                    ; $4fb1: $cc $88 $df
	adc e                                            ; $4fb4: $8b
	inc c                                            ; $4fb5: $0c
	sbc h                                            ; $4fb6: $9c
	cp c                                             ; $4fb7: $b9
	db $10                                           ; $4fb8: $10
	db $e3                                           ; $4fb9: $e3
	ld hl, $94c6                                     ; $4fba: $21 $c6 $94
	ld b, e                                          ; $4fbd: $43
	adc a                                            ; $4fbe: $8f
	add a                                            ; $4fbf: $87
	inc e                                            ; $4fc0: $1c
	inc c                                            ; $4fc1: $0c
	ld sp, $8010                                     ; $4fc2: $31 $10 $80
	add b                                            ; $4fc5: $80
	ld b, b                                          ; $4fc6: $40
	ret nz                                           ; $4fc7: $c0

	ld a, b                                          ; $4fc8: $78
	ret c                                            ; $4fc9: $d8

	sub e                                            ; $4fca: $93
	jr nc, jr_066_4f9d                               ; $4fcb: $30 $d0

	jr nc, @-$26                                     ; $4fcd: $30 $d8

	jr c, jr_066_4f59                                ; $4fcf: $38 $88

	ld a, b                                          ; $4fd1: $78
	ld [$08f8], sp                                   ; $4fd2: $08 $f8 $08
	ld hl, sp-$78                                    ; $4fd5: $f8 $88
	ld a, e                                          ; $4fd7: $7b
	sbc b                                            ; $4fd8: $98
	ld a, h                                          ; $4fd9: $7c
	xor l                                            ; $4fda: $ad
	sbc e                                            ; $4fdb: $9b
	db $fc                                           ; $4fdc: $fc
	call nz, $08f8                                   ; $4fdd: $c4 $f8 $08
	ld a, e                                          ; $4fe0: $7b
	ld [$709e], a                                    ; $4fe1: $ea $9e $70
	ld [hl+], a                                      ; $4fe4: $22

jr_066_4fe5:
	nop                                              ; $4fe5: $00
	sbc $bb                                          ; $4fe6: $de $bb
	rst SubAFromDE                                          ; $4fe8: $df
	adc b                                            ; $4fe9: $88
	sub e                                            ; $4fea: $93
	cp e                                             ; $4feb: $bb
	inc sp                                           ; $4fec: $33
	adc b                                            ; $4fed: $88
	ld [$8099], sp                                   ; $4fee: $08 $99 $80
	inc sp                                           ; $4ff1: $33
	add b                                            ; $4ff2: $80
	ld [$9199], sp                                   ; $4ff3: $08 $99 $91
	ld [hl+], a                                      ; $4ff6: $22
	ld h, e                                          ; $4ff7: $63
	ei                                               ; $4ff8: $fb
	sbc [hl]                                         ; $4ff9: $9e
	ld b, h                                          ; $4ffa: $44
	ld a, e                                          ; $4ffb: $7b
	db $ec                                           ; $4ffc: $ec
	sbc l                                            ; $4ffd: $9d
	call z, $de33                                    ; $4ffe: $cc $33 $de
	adc b                                            ; $5001: $88
	ld a, a                                          ; $5002: $7f
	ldh [c], a                                       ; $5003: $e2
	sbc [hl]                                         ; $5004: $9e
	cp e                                             ; $5005: $bb
	or h                                             ; $5006: $b4
	ld bc, $2892                                     ; $5007: $01 $92 $28
	ld sp, $2133                                     ; $500a: $31 $33 $21
	ld [hl], e                                       ; $500d: $73
	ld hl, $2371                                     ; $500e: $21 $71 $23
	ldh a, [c]                                       ; $5011: $f2
	inc hl                                           ; $5012: $23
	di                                               ; $5013: $f3
	ld [hl+], a                                      ; $5014: $22
	rst FarCall                                          ; $5015: $f7
	ld a, e                                          ; $5016: $7b
	cp $80                                           ; $5017: $fe $80
	ld h, a                                          ; $5019: $67
	or d                                             ; $501a: $b2
	rst SubAFromBC                                          ; $501b: $e7
	or d                                             ; $501c: $b2
	xor a                                            ; $501d: $af
	ldh a, [c]                                       ; $501e: $f2
	xor $f3                                          ; $501f: $ee $f3
	push hl                                          ; $5021: $e5
	ei                                               ; $5022: $fb
	or l                                             ; $5023: $b5
	ei                                               ; $5024: $fb
	sub b                                            ; $5025: $90
	rst $38                                          ; $5026: $ff
	ret c                                            ; $5027: $d8

	cp a                                             ; $5028: $bf
	call c, $d6bf                                    ; $5029: $dc $bf $d6
	cp a                                             ; $502c: $bf
	sub a                                            ; $502d: $97
	cp a                                             ; $502e: $bf
	and l                                            ; $502f: $a5
	cp a                                             ; $5030: $bf
	or l                                             ; $5031: $b5
	cpl                                              ; $5032: $2f
	ld a, [de]                                       ; $5033: $1a
	cpl                                              ; $5034: $2f
	ld a, $0b                                        ; $5035: $3e $0b
	ld e, [hl]                                       ; $5037: $5e
	add b                                            ; $5038: $80
	dec bc                                           ; $5039: $0b
	rla                                              ; $503a: $17
	ld c, d                                          ; $503b: $4a
	rrca                                             ; $503c: $0f
	ld d, d                                          ; $503d: $52
	ld sp, $3756                                     ; $503e: $31 $56 $37
	ld d, h                                          ; $5041: $54
	dec h                                            ; $5042: $25
	ld [hl], h                                       ; $5043: $74
	or h                                             ; $5044: $b4
	ld h, l                                          ; $5045: $65
	xor b                                            ; $5046: $a8
	ld h, l                                          ; $5047: $65
	and $29                                          ; $5048: $e6 $29
	ldh [$b0], a                                     ; $504a: $e0 $b0
	ld h, [hl]                                       ; $504c: $66
	and b                                            ; $504d: $a0
	and d                                            ; $504e: $a2
	ld h, h                                          ; $504f: $64
	jp z, $ee64                                      ; $5050: $ca $64 $ee

	ld b, h                                          ; $5053: $44
	and $4c                                          ; $5054: $e6 $4c
	push af                                          ; $5056: $f5
	ld c, [hl]                                       ; $5057: $4e
	sbc e                                            ; $5058: $9b
	ld h, l                                          ; $5059: $65
	sbc $44                                          ; $505a: $de $44
	rst $38                                          ; $505c: $ff
	ld [hl], a                                       ; $505d: $77
	cp $9e                                           ; $505e: $fe $9e
	ld [hl+], a                                      ; $5060: $22
	ld [hl], e                                       ; $5061: $73
	cp $9e                                           ; $5062: $fe $9e
	sub c                                            ; $5064: $91
	ld a, e                                          ; $5065: $7b
	cp $80                                           ; $5066: $fe $80
	ld c, c                                          ; $5068: $49
	rst $38                                          ; $5069: $ff
	ld l, c                                          ; $506a: $69
	rst $38                                          ; $506b: $ff
	ld [hl], h                                       ; $506c: $74
	rst SubAFromDE                                          ; $506d: $df
	cp [hl]                                          ; $506e: $be
	rst AddAOntoHL                                          ; $506f: $ef
	rst $38                                          ; $5070: $ff
	ld [hl], l                                       ; $5071: $75
	ldh a, [c]                                       ; $5072: $f2
	add b                                            ; $5073: $80
	ret nz                                           ; $5074: $c0

	add b                                            ; $5075: $80
	ret nz                                           ; $5076: $c0

	ret nz                                           ; $5077: $c0

	ldh [$c0], a                                     ; $5078: $e0 $c0
	or b                                             ; $507a: $b0
	ldh [$b8], a                                     ; $507b: $e0 $b8
	ldh a, [$ac]                                     ; $507d: $f0 $ac
	ld hl, sp-$51                                    ; $507f: $f8 $af
	db $fc                                           ; $5081: $fc
	cp a                                             ; $5082: $bf
	ei                                               ; $5083: $fb
	rst $38                                          ; $5084: $ff
	ret z                                            ; $5085: $c8

	cp $91                                           ; $5086: $fe $91
	sbc b                                            ; $5088: $98
	dec sp                                           ; $5089: $3b
	ld [de], a                                       ; $508a: $12
	ld [de], a                                       ; $508b: $12
	ld [hl], $76                                     ; $508c: $36 $76
	inc h                                            ; $508e: $24
	and h                                            ; $508f: $a4
	ld l, h                                          ; $5090: $6c
	xor h                                            ; $5091: $ac
	ld l, b                                          ; $5092: $68
	inc l                                            ; $5093: $2c
	add sp, $3c                                      ; $5094: $e8 $3c
	ld a, e                                          ; $5096: $7b
	cp $8c                                           ; $5097: $fe $8c
	inc l                                            ; $5099: $2c
	ld hl, sp+$2c                                    ; $509a: $f8 $2c
	ld hl, sp+$7d                                    ; $509c: $f8 $7d
	ret c                                            ; $509e: $d8

	ld a, h                                          ; $509f: $7c
	reti                                             ; $50a0: $d9


	ld a, l                                          ; $50a1: $7d
	reti                                             ; $50a2: $d9


	ld a, a                                          ; $50a3: $7f
	ret z                                            ; $50a4: $c8

	ld h, e                                          ; $50a5: $63
	ret nz                                           ; $50a6: $c0

	and e                                            ; $50a7: $a3
	ldh [$35], a                                     ; $50a8: $e0 $35
	inc e                                            ; $50aa: $1c
	inc e                                            ; $50ab: $1c
	sbc $16                                          ; $50ac: $de $16
	add b                                            ; $50ae: $80
	rla                                              ; $50af: $17
	ld d, $1e                                        ; $50b0: $16 $1e
	rla                                              ; $50b2: $17
	scf                                              ; $50b3: $37
	dec e                                            ; $50b4: $1d
	cpl                                              ; $50b5: $2f
	dec a                                            ; $50b6: $3d
	ld l, l                                          ; $50b7: $6d
	ccf                                              ; $50b8: $3f
	ld e, a                                          ; $50b9: $5f
	halt                                             ; $50ba: $76
	or $e4                                           ; $50bb: $f6 $e4
	ldh [$1f], a                                     ; $50bd: $e0 $1f
	rra                                              ; $50bf: $1f
	rst $38                                          ; $50c0: $ff
	rst $38                                          ; $50c1: $ff
	ldh [rIE], a                                     ; $50c2: $e0 $ff
	nop                                              ; $50c4: $00
	rst $38                                          ; $50c5: $ff
	ld e, $e7                                        ; $50c6: $1e $e7
	ld h, a                                          ; $50c8: $67
	cp l                                             ; $50c9: $bd
	db $fd                                           ; $50ca: $fd
	and l                                            ; $50cb: $a5
	inc [hl]                                         ; $50cc: $34
	ld e, e                                          ; $50cd: $5b
	add b                                            ; $50ce: $80
	inc a                                            ; $50cf: $3c
	rra                                              ; $50d0: $1f
	nop                                              ; $50d1: $00
	and a                                            ; $50d2: $a7
	nop                                              ; $50d3: $00
	ld e, a                                          ; $50d4: $5f
	nop                                              ; $50d5: $00
	rrca                                             ; $50d6: $0f
	ld bc, $010f                                     ; $50d7: $01 $0f $01
	ld e, $03                                        ; $50da: $1e $03
	ld e, $06                                        ; $50dc: $1e $06
	inc a                                            ; $50de: $3c
	ld c, $74                                        ; $50df: $0e $74
	ld e, $e8                                        ; $50e1: $1e $e8
	ld a, l                                          ; $50e3: $7d
	add sp, -$43                                     ; $50e4: $e8 $bd
	pop af                                           ; $50e6: $f1
	dec a                                            ; $50e7: $3d
	pop af                                           ; $50e8: $f1
	dec sp                                           ; $50e9: $3b
	xor e                                            ; $50ea: $ab
	call $adcb                                       ; $50eb: $cd $cb $ad
	add b                                            ; $50ee: $80
	rst SubAFromBC                                          ; $50ef: $e7
	sub l                                            ; $50f0: $95
	rst FarCall                                          ; $50f1: $f7
	ld e, l                                          ; $50f2: $5d
	rst SubAFromDE                                          ; $50f3: $df
	ld l, l                                          ; $50f4: $6d
	db $ed                                           ; $50f5: $ed
	scf                                              ; $50f6: $37
	ld [hl], a                                       ; $50f7: $77
	cp e                                             ; $50f8: $bb
	db $fd                                           ; $50f9: $fd
	cp [hl]                                          ; $50fa: $be
	sub e                                            ; $50fb: $93
	rst $38                                          ; $50fc: $ff
	pop de                                           ; $50fd: $d1
	ld a, a                                          ; $50fe: $7f
	add hl, hl                                       ; $50ff: $29
	rst $38                                          ; $5100: $ff
	cp $df                                           ; $5101: $fe $df
	ldh a, [c]                                       ; $5103: $f2
	rra                                              ; $5104: $1f
	ldh a, [c]                                       ; $5105: $f2
	rra                                              ; $5106: $1f
	db $f4                                           ; $5107: $f4
	ccf                                              ; $5108: $3f
	db $e4                                           ; $5109: $e4
	ccf                                              ; $510a: $3f
	db $e4                                           ; $510b: $e4
	cp a                                             ; $510c: $bf
	jp hl                                            ; $510d: $e9


	sbc [hl]                                         ; $510e: $9e
	ld a, a                                          ; $510f: $7f
	ld [hl], a                                       ; $5110: $77
	cp $98                                           ; $5111: $fe $98
	or d                                             ; $5113: $b2
	rst $38                                          ; $5114: $ff
	or d                                             ; $5115: $b2
	rst $38                                          ; $5116: $ff
	inc h                                            ; $5117: $24
	rst $38                                          ; $5118: $ff
	dec h                                            ; $5119: $25
	ld a, e                                          ; $511a: $7b
	ld d, b                                          ; $511b: $50
	sub c                                            ; $511c: $91
	ld c, d                                          ; $511d: $4a
	cp $54                                           ; $511e: $fe $54
	db $fc                                           ; $5120: $fc
	sub h                                            ; $5121: $94
	db $fc                                           ; $5122: $fc
	xor b                                            ; $5123: $a8
	ld hl, sp-$58                                    ; $5124: $f8 $a8
	ld hl, sp+$50                                    ; $5126: $f8 $50
	ldh a, [$50]                                     ; $5128: $f0 $50
	ldh a, [$2b]                                     ; $512a: $f0 $2b
	ld h, b                                          ; $512c: $60
	ld a, e                                          ; $512d: $7b
	ld e, [hl]                                       ; $512e: $5e
	sbc l                                            ; $512f: $9d
	ld a, a                                          ; $5130: $7f
	ret                                              ; $5131: $c9


	dec de                                           ; $5132: $1b
	ld h, b                                          ; $5133: $60
	rst SubAFromDE                                          ; $5134: $df
	ld a, a                                          ; $5135: $7f
	ld a, a                                          ; $5136: $7f
	ld h, b                                          ; $5137: $60
	sbc [hl]                                         ; $5138: $9e
	add b                                            ; $5139: $80
	ld a, e                                          ; $513a: $7b
	ld e, [hl]                                       ; $513b: $5e
	sbc d                                            ; $513c: $9a
	ld a, $ed                                        ; $513d: $3e $ed
	ld l, l                                          ; $513f: $6d
	and l                                            ; $5140: $a5
	or h                                             ; $5141: $b4
	inc bc                                           ; $5142: $03
	ld h, b                                          ; $5143: $60
	inc bc                                           ; $5144: $03
	ld h, b                                          ; $5145: $60
	inc bc                                           ; $5146: $03
	ld h, b                                          ; $5147: $60
	inc bc                                           ; $5148: $03
	ld h, b                                          ; $5149: $60
	ld d, e                                          ; $514a: $53
	ld h, b                                          ; $514b: $60
	rst $38                                          ; $514c: $ff
	ld h, [hl]                                       ; $514d: $66
	cp [hl]                                          ; $514e: $be
	ld a, e                                          ; $514f: $7b
	cp $9c                                           ; $5150: $fe $9c
	jp Jump_066_7fef                                 ; $5152: $c3 $ef $7f


	inc bc                                           ; $5155: $03
	ld h, b                                          ; $5156: $60
	ld c, e                                          ; $5157: $4b
	ld h, b                                          ; $5158: $60
	sbc e                                            ; $5159: $9b
	ccf                                              ; $515a: $3f
	ld a, $df                                        ; $515b: $3e $df
	ldh a, [c]                                       ; $515d: $f2
	ld a, e                                          ; $515e: $7b
	ld e, [hl]                                       ; $515f: $5e
	ld [hl], e                                       ; $5160: $73
	ld h, b                                          ; $5161: $60
	sbc [hl]                                         ; $5162: $9e
	ccf                                              ; $5163: $3f
	inc bc                                           ; $5164: $03
	ld h, b                                          ; $5165: $60
	cpl                                              ; $5166: $2f
	ld h, b                                          ; $5167: $60
	sbc d                                            ; $5168: $9a
	ret c                                            ; $5169: $d8

	ld a, [hl]                                       ; $516a: $7e
	ret                                              ; $516b: $c9


	ld h, e                                          ; $516c: $63
	pop bc                                           ; $516d: $c1
	inc hl                                           ; $516e: $23
	ld h, b                                          ; $516f: $60
	rst SubAFromDE                                          ; $5170: $df
	rrca                                             ; $5171: $0f
	rst SubAFromDE                                          ; $5172: $df
	ld a, a                                          ; $5173: $7f
	sbc [hl]                                         ; $5174: $9e
	ldh a, [$72]                                     ; $5175: $f0 $72
	cp [hl]                                          ; $5177: $be
	ld a, a                                          ; $5178: $7f
	cp $9c                                           ; $5179: $fe $9c
	add c                                            ; $517b: $81
	ld a, a                                          ; $517c: $7f
	ld a, [hl]                                       ; $517d: $7e
	inc bc                                           ; $517e: $03
	ld h, b                                          ; $517f: $60
	inc bc                                           ; $5180: $03
	ld h, b                                          ; $5181: $60
	daa                                              ; $5182: $27
	ld h, b                                          ; $5183: $60
	adc d                                            ; $5184: $8a
	di                                               ; $5185: $f3
	ld [hl], b                                       ; $5186: $70
	pop af                                           ; $5187: $f1
	nop                                              ; $5188: $00
	ret nc                                           ; $5189: $d0

	add b                                            ; $518a: $80
	ret c                                            ; $518b: $d8

	add b                                            ; $518c: $80
	call c, $fcc0                                    ; $518d: $dc $c0 $fc
	jr nz, jr_066_51ca                               ; $5190: $20 $38

	nop                                              ; $5192: $00
	ld b, d                                          ; $5193: $42
	nop                                              ; $5194: $00
	ld h, [hl]                                       ; $5195: $66
	inc l                                            ; $5196: $2c
	inc a                                            ; $5197: $3c
	jr @+$1a                                         ; $5198: $18 $18

	db $fc                                           ; $519a: $fc
	sbc c                                            ; $519b: $99
	jp $ff01                                         ; $519c: $c3 $01 $ff


	adc $ff                                          ; $519f: $ce $ff
	jr nc, jr_066_51e6                               ; $51a1: $30 $43

	ldh [$9c], a                                     ; $51a3: $e0 $9c
	ld l, [hl]                                       ; $51a5: $6e
	inc a                                            ; $51a6: $3c
	inc a                                            ; $51a7: $3c
	rrca                                             ; $51a8: $0f
	ldh [$9e], a                                     ; $51a9: $e0 $9e
	ld a, h                                          ; $51ab: $7c
	ld a, e                                          ; $51ac: $7b
	rst SubAFromDE                                          ; $51ad: $df
	ld [hl], a                                       ; $51ae: $77
	sbc $27                                          ; $51af: $de $27
	ldh [$9e], a                                     ; $51b1: $e0 $9e
	ld a, [hl]                                       ; $51b3: $7e
	sbc $3c                                          ; $51b4: $de $3c
	ld [hl], a                                       ; $51b6: $77
	rst SubAFromDE                                          ; $51b7: $df
	ld l, a                                          ; $51b8: $6f
	ldh [$b8], a                                     ; $51b9: $e0 $b8
	ld bc, $2892                                     ; $51bb: $01 $92 $28
	ld sp, $2133                                     ; $51be: $31 $33 $21
	ld [hl], e                                       ; $51c1: $73
	ld hl, $2371                                     ; $51c2: $21 $71 $23
	ldh a, [c]                                       ; $51c5: $f2
	inc hl                                           ; $51c6: $23
	di                                               ; $51c7: $f3
	ld [hl+], a                                      ; $51c8: $22
	rst FarCall                                          ; $51c9: $f7

jr_066_51ca:
	ld a, e                                          ; $51ca: $7b
	cp $80                                           ; $51cb: $fe $80
	ld h, a                                          ; $51cd: $67
	or d                                             ; $51ce: $b2
	rst SubAFromBC                                          ; $51cf: $e7
	or d                                             ; $51d0: $b2
	xor a                                            ; $51d1: $af
	ldh a, [c]                                       ; $51d2: $f2
	xor $f3                                          ; $51d3: $ee $f3
	push hl                                          ; $51d5: $e5
	ei                                               ; $51d6: $fb
	or l                                             ; $51d7: $b5
	ei                                               ; $51d8: $fb
	sub b                                            ; $51d9: $90
	rst $38                                          ; $51da: $ff
	ret c                                            ; $51db: $d8

	cp a                                             ; $51dc: $bf
	call c, $d6bf                                    ; $51dd: $dc $bf $d6
	cp a                                             ; $51e0: $bf
	sub a                                            ; $51e1: $97
	cp a                                             ; $51e2: $bf
	and l                                            ; $51e3: $a5
	cp a                                             ; $51e4: $bf
	or l                                             ; $51e5: $b5

jr_066_51e6:
	cpl                                              ; $51e6: $2f
	ld a, [de]                                       ; $51e7: $1a
	cpl                                              ; $51e8: $2f
	ld a, $0b                                        ; $51e9: $3e $0b
	ld e, [hl]                                       ; $51eb: $5e
	add b                                            ; $51ec: $80
	dec bc                                           ; $51ed: $0b
	rla                                              ; $51ee: $17
	ld c, d                                          ; $51ef: $4a
	rrca                                             ; $51f0: $0f
	ld d, d                                          ; $51f1: $52
	ld sp, $3756                                     ; $51f2: $31 $56 $37
	ld d, h                                          ; $51f5: $54
	dec h                                            ; $51f6: $25
	ld [hl], h                                       ; $51f7: $74
	or h                                             ; $51f8: $b4
	ld h, l                                          ; $51f9: $65
	xor b                                            ; $51fa: $a8
	ld h, l                                          ; $51fb: $65
	and $29                                          ; $51fc: $e6 $29
	ldh [$b0], a                                     ; $51fe: $e0 $b0
	ld h, [hl]                                       ; $5200: $66
	and b                                            ; $5201: $a0
	and d                                            ; $5202: $a2
	ld h, h                                          ; $5203: $64
	jp z, $ee64                                      ; $5204: $ca $64 $ee

	ld b, h                                          ; $5207: $44
	and $4c                                          ; $5208: $e6 $4c
	push af                                          ; $520a: $f5
	ld c, [hl]                                       ; $520b: $4e
	sbc e                                            ; $520c: $9b
	ld h, l                                          ; $520d: $65
	sbc $44                                          ; $520e: $de $44
	rst $38                                          ; $5210: $ff
	ld [hl], a                                       ; $5211: $77
	cp $9e                                           ; $5212: $fe $9e
	ld [hl+], a                                      ; $5214: $22
	ld [hl], e                                       ; $5215: $73
	cp $9e                                           ; $5216: $fe $9e
	sub c                                            ; $5218: $91
	ld a, e                                          ; $5219: $7b
	cp $80                                           ; $521a: $fe $80
	ld c, c                                          ; $521c: $49
	rst $38                                          ; $521d: $ff
	ld l, c                                          ; $521e: $69
	rst $38                                          ; $521f: $ff
	ld [hl], h                                       ; $5220: $74
	rst SubAFromDE                                          ; $5221: $df
	cp [hl]                                          ; $5222: $be
	rst AddAOntoHL                                          ; $5223: $ef
	rst $38                                          ; $5224: $ff
	ld [hl], l                                       ; $5225: $75
	ldh a, [c]                                       ; $5226: $f2
	add b                                            ; $5227: $80
	ret nz                                           ; $5228: $c0

	add b                                            ; $5229: $80
	ret nz                                           ; $522a: $c0

	ret nz                                           ; $522b: $c0

	ldh [$c0], a                                     ; $522c: $e0 $c0
	or b                                             ; $522e: $b0
	ldh [$b8], a                                     ; $522f: $e0 $b8
	ldh a, [$ac]                                     ; $5231: $f0 $ac
	ld hl, sp-$51                                    ; $5233: $f8 $af
	db $fc                                           ; $5235: $fc
	cp a                                             ; $5236: $bf
	ei                                               ; $5237: $fb
	rst $38                                          ; $5238: $ff
	ret z                                            ; $5239: $c8

	cp $91                                           ; $523a: $fe $91
	sbc b                                            ; $523c: $98
	dec sp                                           ; $523d: $3b
	ld [de], a                                       ; $523e: $12
	ld [de], a                                       ; $523f: $12
	ld [hl], $76                                     ; $5240: $36 $76
	inc h                                            ; $5242: $24
	and h                                            ; $5243: $a4
	ld l, h                                          ; $5244: $6c
	xor h                                            ; $5245: $ac
	ld l, b                                          ; $5246: $68
	inc l                                            ; $5247: $2c
	add sp, $3c                                      ; $5248: $e8 $3c
	ld a, e                                          ; $524a: $7b
	cp $8c                                           ; $524b: $fe $8c
	inc l                                            ; $524d: $2c
	ld hl, sp+$2c                                    ; $524e: $f8 $2c
	ld hl, sp+$7d                                    ; $5250: $f8 $7d
	ret c                                            ; $5252: $d8

	ld a, h                                          ; $5253: $7c
	reti                                             ; $5254: $d9


	ld a, l                                          ; $5255: $7d
	reti                                             ; $5256: $d9


	ld a, a                                          ; $5257: $7f
	ret z                                            ; $5258: $c8

	ld h, e                                          ; $5259: $63
	ret nz                                           ; $525a: $c0

	and e                                            ; $525b: $a3
	ldh [$35], a                                     ; $525c: $e0 $35
	inc e                                            ; $525e: $1c
	inc e                                            ; $525f: $1c
	sbc $16                                          ; $5260: $de $16
	add b                                            ; $5262: $80
	rla                                              ; $5263: $17
	ld d, $1e                                        ; $5264: $16 $1e
	rla                                              ; $5266: $17
	scf                                              ; $5267: $37
	dec e                                            ; $5268: $1d
	cpl                                              ; $5269: $2f
	dec a                                            ; $526a: $3d
	ld l, l                                          ; $526b: $6d
	ccf                                              ; $526c: $3f
	ld e, a                                          ; $526d: $5f
	halt                                             ; $526e: $76
	db $e4                                           ; $526f: $e4
	rst $38                                          ; $5270: $ff
	sbc a                                            ; $5271: $9f
	ld a, a                                          ; $5272: $7f
	ld a, a                                          ; $5273: $7f
	ldh [rIE], a                                     ; $5274: $e0 $ff
	add b                                            ; $5276: $80
	rst $38                                          ; $5277: $ff
	ld e, $e7                                        ; $5278: $1e $e7
	ld h, a                                          ; $527a: $67
	db $ed                                           ; $527b: $ed
	rst $38                                          ; $527c: $ff
	cp l                                             ; $527d: $bd
	db $fc                                           ; $527e: $fc

Jump_066_527f:
	and l                                            ; $527f: $a5
	inc [hl]                                         ; $5280: $34
	ld e, e                                          ; $5281: $5b
	sbc l                                            ; $5282: $9d
	inc a                                            ; $5283: $3c
	rra                                              ; $5284: $1f
	cp [hl]                                          ; $5285: $be
	rlca                                             ; $5286: $07
	rlca                                             ; $5287: $07
	rrca                                             ; $5288: $0f
	add b                                            ; $5289: $80
	ld bc, $010f                                     ; $528a: $01 $0f $01
	ld e, $03                                        ; $528d: $1e $03
	ld e, $06                                        ; $528f: $1e $06
	inc a                                            ; $5291: $3c
	ld c, $74                                        ; $5292: $0e $74
	ld e, $e8                                        ; $5294: $1e $e8
	ld a, l                                          ; $5296: $7d
	add sp, -$43                                     ; $5297: $e8 $bd
	pop af                                           ; $5299: $f1
	dec a                                            ; $529a: $3d
	pop af                                           ; $529b: $f1
	dec sp                                           ; $529c: $3b
	xor e                                            ; $529d: $ab
	call $adcb                                       ; $529e: $cd $cb $ad
	rst SubAFromBC                                          ; $52a1: $e7
	sub l                                            ; $52a2: $95
	rst FarCall                                          ; $52a3: $f7
	ld e, l                                          ; $52a4: $5d
	rst SubAFromDE                                          ; $52a5: $df
	ld l, l                                          ; $52a6: $6d
	db $ed                                           ; $52a7: $ed
	scf                                              ; $52a8: $37
	add a                                            ; $52a9: $87
	ld [hl], a                                       ; $52aa: $77
	cp e                                             ; $52ab: $bb
	db $fd                                           ; $52ac: $fd
	cp [hl]                                          ; $52ad: $be
	sub e                                            ; $52ae: $93
	rst $38                                          ; $52af: $ff
	pop de                                           ; $52b0: $d1
	ld a, a                                          ; $52b1: $7f
	add hl, hl                                       ; $52b2: $29
	rst $38                                          ; $52b3: $ff
	cp $df                                           ; $52b4: $fe $df
	ldh a, [c]                                       ; $52b6: $f2
	rra                                              ; $52b7: $1f
	ldh a, [c]                                       ; $52b8: $f2
	rra                                              ; $52b9: $1f
	db $f4                                           ; $52ba: $f4
	cp a                                             ; $52bb: $bf
	db $e4                                           ; $52bc: $e4
	ccf                                              ; $52bd: $3f
	db $e4                                           ; $52be: $e4
	ccf                                              ; $52bf: $3f
	jp hl                                            ; $52c0: $e9


	ld a, a                                          ; $52c1: $7f
	ld [hl], a                                       ; $52c2: $77
	cp $98                                           ; $52c3: $fe $98
	or d                                             ; $52c5: $b2
	rst $38                                          ; $52c6: $ff
	or d                                             ; $52c7: $b2
	rst $38                                          ; $52c8: $ff
	inc h                                            ; $52c9: $24
	rst $38                                          ; $52ca: $ff
	dec h                                            ; $52cb: $25
	ld a, e                                          ; $52cc: $7b
	ld d, b                                          ; $52cd: $50
	sub c                                            ; $52ce: $91
	ld c, d                                          ; $52cf: $4a
	cp $54                                           ; $52d0: $fe $54
	db $fc                                           ; $52d2: $fc
	sub h                                            ; $52d3: $94
	db $fc                                           ; $52d4: $fc
	xor b                                            ; $52d5: $a8
	ld hl, sp-$58                                    ; $52d6: $f8 $a8
	ld hl, sp+$50                                    ; $52d8: $f8 $50
	ldh a, [$50]                                     ; $52da: $f0 $50
	ldh a, [$2b]                                     ; $52dc: $f0 $2b
	ld h, b                                          ; $52de: $60
	ld a, e                                          ; $52df: $7b
	ld e, [hl]                                       ; $52e0: $5e
	sbc l                                            ; $52e1: $9d
	ld a, a                                          ; $52e2: $7f
	ret                                              ; $52e3: $c9


	cpl                                              ; $52e4: $2f
	ld h, b                                          ; $52e5: $60
	sbc d                                            ; $52e6: $9a
	or $e4                                           ; $52e7: $f6 $e4
	ldh [$1f], a                                     ; $52e9: $e0 $1f
	rra                                              ; $52eb: $1f
	ld l, a                                          ; $52ec: $6f
	ld e, [hl]                                       ; $52ed: $5e
	sbc b                                            ; $52ee: $98
	nop                                              ; $52ef: $00
	rst $38                                          ; $52f0: $ff
	ld a, $ed                                        ; $52f1: $3e $ed
	ld l, l                                          ; $52f3: $6d
	and l                                            ; $52f4: $a5
	or h                                             ; $52f5: $b4
	inc bc                                           ; $52f6: $03
	ld h, b                                          ; $52f7: $60
	daa                                              ; $52f8: $27
	ld h, b                                          ; $52f9: $60
	ld a, e                                          ; $52fa: $7b
	ld h, d                                          ; $52fb: $62
	sbc l                                            ; $52fc: $9d
	db $e4                                           ; $52fd: $e4
	cp a                                             ; $52fe: $bf
	inc bc                                           ; $52ff: $03
	ld h, b                                          ; $5300: $60
	inc bc                                           ; $5301: $03
	ld h, b                                          ; $5302: $60
	ld b, e                                          ; $5303: $43
	ld h, b                                          ; $5304: $60
	rst $38                                          ; $5305: $ff
	rst SubAFromDE                                          ; $5306: $df
	rra                                              ; $5307: $1f
	rst SubAFromDE                                          ; $5308: $df
	rst $38                                          ; $5309: $ff
	ld a, a                                          ; $530a: $7f
	ld e, [hl]                                       ; $530b: $5e
	cp [hl]                                          ; $530c: $be
	rst $38                                          ; $530d: $ff
	rst $38                                          ; $530e: $ff
	jp $ef9d                                         ; $530f: $c3 $9d $ef


	ld a, a                                          ; $5312: $7f
	inc bc                                           ; $5313: $03
	ld h, b                                          ; $5314: $60
	ld c, e                                          ; $5315: $4b
	ld h, b                                          ; $5316: $60
	sbc e                                            ; $5317: $9b
	ccf                                              ; $5318: $3f
	ld a, $df                                        ; $5319: $3e $df
	ldh a, [c]                                       ; $531b: $f2
	ld a, e                                          ; $531c: $7b
	ld e, [hl]                                       ; $531d: $5e
	ld [hl], e                                       ; $531e: $73
	ld h, b                                          ; $531f: $60
	ld [bc], a                                       ; $5320: $02
	ret nz                                           ; $5321: $c0

	dec hl                                           ; $5322: $2b
	ld h, b                                          ; $5323: $60
	sbc d                                            ; $5324: $9a
	ret c                                            ; $5325: $d8

	ld a, [hl]                                       ; $5326: $7e
	ret                                              ; $5327: $c9


	ld h, e                                          ; $5328: $63
	pop bc                                           ; $5329: $c1
	inc hl                                           ; $532a: $23
	ld h, b                                          ; $532b: $60
	rst SubAFromDE                                          ; $532c: $df
	rrca                                             ; $532d: $0f
	rst SubAFromDE                                          ; $532e: $df
	ld a, a                                          ; $532f: $7f
	sbc [hl]                                         ; $5330: $9e
	ldh a, [$72]                                     ; $5331: $f0 $72
	cp [hl]                                          ; $5333: $be
	ld a, a                                          ; $5334: $7f
	cp $9c                                           ; $5335: $fe $9c
	add c                                            ; $5337: $81
	ld a, a                                          ; $5338: $7f
	ld a, [hl]                                       ; $5339: $7e
	inc bc                                           ; $533a: $03
	ld h, b                                          ; $533b: $60
	inc bc                                           ; $533c: $03
	ld h, b                                          ; $533d: $60
	daa                                              ; $533e: $27
	ld h, b                                          ; $533f: $60
	sub d                                            ; $5340: $92
	di                                               ; $5341: $f3
	ld [hl], b                                       ; $5342: $70
	pop af                                           ; $5343: $f1
	nop                                              ; $5344: $00
	ret nc                                           ; $5345: $d0

	add b                                            ; $5346: $80
	ret c                                            ; $5347: $d8

	add b                                            ; $5348: $80
	call c, $fcc0                                    ; $5349: $dc $c0 $fc
	jr nz, jr_066_5386                               ; $534c: $20 $38

	cp a                                             ; $534e: $bf
	nop                                              ; $534f: $00
	add $9c                                          ; $5350: $c6 $9c
	ld l, h                                          ; $5352: $6c
	ld a, h                                          ; $5353: $7c
	jr c, jr_066_53cd                                ; $5354: $38 $77

	ld hl, sp-$01                                    ; $5356: $f8 $ff
	sbc c                                            ; $5358: $99
	jp $ff01                                         ; $5359: $c3 $01 $ff


	adc $ff                                          ; $535c: $ce $ff
	jr nc, jr_066_53a3                               ; $535e: $30 $43

	ldh [$9d], a                                     ; $5360: $e0 $9d
	xor $7c                                          ; $5362: $ee $7c
	ld l, e                                          ; $5364: $6b
	rst SubAFromDE                                          ; $5365: $df
	daa                                              ; $5366: $27
	ldh [$9e], a                                     ; $5367: $e0 $9e
	cp $6b                                           ; $5369: $fe $6b
	rst SubAFromDE                                          ; $536b: $df
	dec de                                           ; $536c: $1b
	ldh [$73], a                                     ; $536d: $e0 $73
	rst SubAFromDE                                          ; $536f: $df
	ld l, a                                          ; $5370: $6f
	ldh [$b3], a                                     ; $5371: $e0 $b3
	ld bc, $2892                                     ; $5373: $01 $92 $28
	ld sp, $2133                                     ; $5376: $31 $33 $21
	ld [hl], e                                       ; $5379: $73
	ld hl, $2371                                     ; $537a: $21 $71 $23
	ldh a, [c]                                       ; $537d: $f2
	inc hl                                           ; $537e: $23
	di                                               ; $537f: $f3
	ld [hl+], a                                      ; $5380: $22
	rst FarCall                                          ; $5381: $f7
	ld a, e                                          ; $5382: $7b
	cp $80                                           ; $5383: $fe $80
	ld h, a                                          ; $5385: $67

jr_066_5386:
	or d                                             ; $5386: $b2
	rst SubAFromBC                                          ; $5387: $e7
	or d                                             ; $5388: $b2
	xor a                                            ; $5389: $af
	ldh a, [c]                                       ; $538a: $f2
	xor $f3                                          ; $538b: $ee $f3
	push hl                                          ; $538d: $e5
	ei                                               ; $538e: $fb
	or l                                             ; $538f: $b5
	ei                                               ; $5390: $fb
	sub b                                            ; $5391: $90
	rst $38                                          ; $5392: $ff
	ret c                                            ; $5393: $d8

	cp a                                             ; $5394: $bf
	call c, $d6bf                                    ; $5395: $dc $bf $d6
	cp a                                             ; $5398: $bf
	sub a                                            ; $5399: $97
	cp a                                             ; $539a: $bf
	and l                                            ; $539b: $a5
	cp a                                             ; $539c: $bf
	or l                                             ; $539d: $b5
	cpl                                              ; $539e: $2f
	ld a, [de]                                       ; $539f: $1a
	cpl                                              ; $53a0: $2f
	ld a, $0b                                        ; $53a1: $3e $0b

jr_066_53a3:
	ld e, [hl]                                       ; $53a3: $5e
	add b                                            ; $53a4: $80
	dec bc                                           ; $53a5: $0b
	rla                                              ; $53a6: $17
	ld c, d                                          ; $53a7: $4a
	rrca                                             ; $53a8: $0f
	ld d, d                                          ; $53a9: $52
	ld sp, $3756                                     ; $53aa: $31 $56 $37
	ld d, h                                          ; $53ad: $54
	dec h                                            ; $53ae: $25
	ld [hl], h                                       ; $53af: $74
	or h                                             ; $53b0: $b4
	ld h, l                                          ; $53b1: $65
	xor b                                            ; $53b2: $a8
	ld h, l                                          ; $53b3: $65
	and $29                                          ; $53b4: $e6 $29
	ldh [$b0], a                                     ; $53b6: $e0 $b0
	ld h, [hl]                                       ; $53b8: $66
	and b                                            ; $53b9: $a0
	and d                                            ; $53ba: $a2
	ld h, h                                          ; $53bb: $64
	jp z, $ee64                                      ; $53bc: $ca $64 $ee

	ld b, h                                          ; $53bf: $44
	and $4c                                          ; $53c0: $e6 $4c
	push af                                          ; $53c2: $f5
	ld c, [hl]                                       ; $53c3: $4e
	sbc e                                            ; $53c4: $9b
	ld h, l                                          ; $53c5: $65
	sbc $44                                          ; $53c6: $de $44
	rst $38                                          ; $53c8: $ff
	ld [hl], a                                       ; $53c9: $77
	cp $9e                                           ; $53ca: $fe $9e
	ld [hl+], a                                      ; $53cc: $22

jr_066_53cd:
	ld [hl], e                                       ; $53cd: $73
	cp $9e                                           ; $53ce: $fe $9e
	sub c                                            ; $53d0: $91
	ld a, e                                          ; $53d1: $7b
	cp $80                                           ; $53d2: $fe $80
	ld c, c                                          ; $53d4: $49
	rst $38                                          ; $53d5: $ff
	ld l, c                                          ; $53d6: $69
	rst $38                                          ; $53d7: $ff
	ld [hl], h                                       ; $53d8: $74
	rst SubAFromDE                                          ; $53d9: $df
	cp [hl]                                          ; $53da: $be
	rst AddAOntoHL                                          ; $53db: $ef
	rst $38                                          ; $53dc: $ff
	ld [hl], l                                       ; $53dd: $75
	ldh a, [c]                                       ; $53de: $f2
	add b                                            ; $53df: $80
	ret nz                                           ; $53e0: $c0

	add b                                            ; $53e1: $80
	ret nz                                           ; $53e2: $c0

	ret nz                                           ; $53e3: $c0

	ldh [$c0], a                                     ; $53e4: $e0 $c0
	or b                                             ; $53e6: $b0
	ldh [$b8], a                                     ; $53e7: $e0 $b8
	ldh a, [$ac]                                     ; $53e9: $f0 $ac
	ld hl, sp-$51                                    ; $53eb: $f8 $af
	db $fc                                           ; $53ed: $fc
	cp a                                             ; $53ee: $bf
	ei                                               ; $53ef: $fb
	rst $38                                          ; $53f0: $ff
	ret z                                            ; $53f1: $c8

	cp $91                                           ; $53f2: $fe $91
	sbc b                                            ; $53f4: $98
	dec sp                                           ; $53f5: $3b
	ld [de], a                                       ; $53f6: $12
	ld [de], a                                       ; $53f7: $12
	ld [hl], $76                                     ; $53f8: $36 $76
	inc h                                            ; $53fa: $24
	and h                                            ; $53fb: $a4
	ld l, h                                          ; $53fc: $6c
	xor h                                            ; $53fd: $ac
	ld l, b                                          ; $53fe: $68
	inc l                                            ; $53ff: $2c
	add sp, $3c                                      ; $5400: $e8 $3c
	ld a, e                                          ; $5402: $7b
	cp $8c                                           ; $5403: $fe $8c
	inc l                                            ; $5405: $2c
	ld hl, sp+$2c                                    ; $5406: $f8 $2c
	ld hl, sp+$7d                                    ; $5408: $f8 $7d
	ret c                                            ; $540a: $d8

	ld a, h                                          ; $540b: $7c
	ret c                                            ; $540c: $d8

	ld a, h                                          ; $540d: $7c
	reti                                             ; $540e: $d9


	ld a, a                                          ; $540f: $7f
	ret                                              ; $5410: $c9


	ld h, e                                          ; $5411: $63
	ret nz                                           ; $5412: $c0

	and e                                            ; $5413: $a3
	ldh [$35], a                                     ; $5414: $e0 $35
	inc e                                            ; $5416: $1c
	inc e                                            ; $5417: $1c
	sbc $16                                          ; $5418: $de $16
	add b                                            ; $541a: $80
	rla                                              ; $541b: $17
	ld d, $1e                                        ; $541c: $16 $1e
	rla                                              ; $541e: $17
	scf                                              ; $541f: $37
	dec e                                            ; $5420: $1d
	cpl                                              ; $5421: $2f
	dec a                                            ; $5422: $3d
	ld l, l                                          ; $5423: $6d
	ccf                                              ; $5424: $3f
	ld e, a                                          ; $5425: $5f
	halt                                             ; $5426: $76
	or $e4                                           ; $5427: $f6 $e4
	ldh [$1f], a                                     ; $5429: $e0 $1f
	rra                                              ; $542b: $1f
	ld a, a                                          ; $542c: $7f
	ld a, a                                          ; $542d: $7f
	ldh [rIE], a                                     ; $542e: $e0 $ff
	add b                                            ; $5430: $80
	rst $38                                          ; $5431: $ff
	ld e, $e7                                        ; $5432: $1e $e7
	ld h, a                                          ; $5434: $67
	db $fd                                           ; $5435: $fd
	rst $38                                          ; $5436: $ff
	and l                                            ; $5437: $a5
	inc [hl]                                         ; $5438: $34
	ld e, e                                          ; $5439: $5b
	sbc e                                            ; $543a: $9b
	inc a                                            ; $543b: $3c
	rra                                              ; $543c: $1f
	nop                                              ; $543d: $00
	rlca                                             ; $543e: $07
	ld a, e                                          ; $543f: $7b
	cp $80                                           ; $5440: $fe $80
	rrca                                             ; $5442: $0f
	ld bc, $010f                                     ; $5443: $01 $0f $01
	ld e, $03                                        ; $5446: $1e $03
	ld e, $06                                        ; $5448: $1e $06
	inc a                                            ; $544a: $3c
	ld c, $74                                        ; $544b: $0e $74
	ld e, $e8                                        ; $544d: $1e $e8
	ld a, l                                          ; $544f: $7d
	add sp, -$43                                     ; $5450: $e8 $bd
	pop af                                           ; $5452: $f1
	dec a                                            ; $5453: $3d
	pop af                                           ; $5454: $f1
	dec sp                                           ; $5455: $3b
	xor e                                            ; $5456: $ab
	call $adcb                                       ; $5457: $cd $cb $ad
	rst SubAFromBC                                          ; $545a: $e7
	sub l                                            ; $545b: $95
	rst FarCall                                          ; $545c: $f7
	ld e, l                                          ; $545d: $5d
	rst SubAFromDE                                          ; $545e: $df
	ld l, l                                          ; $545f: $6d
	db $ed                                           ; $5460: $ed
	add [hl]                                         ; $5461: $86
	scf                                              ; $5462: $37
	ld [hl], a                                       ; $5463: $77
	cp e                                             ; $5464: $bb
	db $fd                                           ; $5465: $fd
	cp [hl]                                          ; $5466: $be
	sub e                                            ; $5467: $93
	rst $38                                          ; $5468: $ff
	pop de                                           ; $5469: $d1
	ld a, a                                          ; $546a: $7f
	add hl, hl                                       ; $546b: $29
	rst $38                                          ; $546c: $ff
	cp $df                                           ; $546d: $fe $df
	ldh a, [c]                                       ; $546f: $f2
	rra                                              ; $5470: $1f
	ldh a, [c]                                       ; $5471: $f2
	rra                                              ; $5472: $1f
	db $f4                                           ; $5473: $f4
	ccf                                              ; $5474: $3f
	db $e4                                           ; $5475: $e4
	cp a                                             ; $5476: $bf
	db $e4                                           ; $5477: $e4
	ccf                                              ; $5478: $3f
	jp hl                                            ; $5479: $e9


	ld a, a                                          ; $547a: $7f
	ld [hl], a                                       ; $547b: $77
	cp $98                                           ; $547c: $fe $98

Jump_066_547e:
	or d                                             ; $547e: $b2
	rst $38                                          ; $547f: $ff
	or d                                             ; $5480: $b2
	rst $38                                          ; $5481: $ff
	inc h                                            ; $5482: $24
	rst $38                                          ; $5483: $ff
	dec h                                            ; $5484: $25
	ld a, e                                          ; $5485: $7b
	ld d, b                                          ; $5486: $50
	sub c                                            ; $5487: $91
	ld c, d                                          ; $5488: $4a
	cp $54                                           ; $5489: $fe $54
	db $fc                                           ; $548b: $fc
	sub h                                            ; $548c: $94
	db $fc                                           ; $548d: $fc
	xor b                                            ; $548e: $a8
	ld hl, sp-$58                                    ; $548f: $f8 $a8
	ld hl, sp+$50                                    ; $5491: $f8 $50
	ldh a, [$50]                                     ; $5493: $f0 $50
	ldh a, [$03]                                     ; $5495: $f0 $03
	ld h, b                                          ; $5497: $60
	scf                                              ; $5498: $37
	ld h, b                                          ; $5499: $60
	rst SubAFromDE                                          ; $549a: $df
	rlca                                             ; $549b: $07
	rst SubAFromDE                                          ; $549c: $df
	ccf                                              ; $549d: $3f
	sub h                                            ; $549e: $94
	ld hl, sp-$01                                    ; $549f: $f8 $ff
	ret nz                                           ; $54a1: $c0

	rst $38                                          ; $54a2: $ff
	nop                                              ; $54a3: $00
	rst $38                                          ; $54a4: $ff
	ld a, $ed                                        ; $54a5: $3e $ed
	ld l, l                                          ; $54a7: $6d
	and l                                            ; $54a8: $a5
	or h                                             ; $54a9: $b4
	inc bc                                           ; $54aa: $03
	ld h, b                                          ; $54ab: $60
	rra                                              ; $54ac: $1f
	ld h, b                                          ; $54ad: $60
	ld a, e                                          ; $54ae: $7b
	ld e, [hl]                                       ; $54af: $5e
	inc bc                                           ; $54b0: $03
	ld h, b                                          ; $54b1: $60
	inc bc                                           ; $54b2: $03
	ld h, b                                          ; $54b3: $60
	ld b, e                                          ; $54b4: $43
	ld h, b                                          ; $54b5: $60
	rst $38                                          ; $54b6: $ff
	rst SubAFromDE                                          ; $54b7: $df
	rra                                              ; $54b8: $1f
	rst SubAFromDE                                          ; $54b9: $df
	rst $38                                          ; $54ba: $ff
	ld a, [hl]                                       ; $54bb: $7e
	cp [hl]                                          ; $54bc: $be
	ld a, a                                          ; $54bd: $7f
	ld h, b                                          ; $54be: $60
	ld a, e                                          ; $54bf: $7b
	cp $9c                                           ; $54c0: $fe $9c
	jp Jump_066_7fef                                 ; $54c2: $c3 $ef $7f


	inc bc                                           ; $54c5: $03
	ld h, b                                          ; $54c6: $60
	ld c, e                                          ; $54c7: $4b
	ld h, b                                          ; $54c8: $60
	sbc e                                            ; $54c9: $9b
	ccf                                              ; $54ca: $3f
	ld a, $df                                        ; $54cb: $3e $df
	ldh a, [c]                                       ; $54cd: $f2
	ld a, e                                          ; $54ce: $7b
	ld e, [hl]                                       ; $54cf: $5e
	ld [hl], e                                       ; $54d0: $73
	ld h, b                                          ; $54d1: $60
	ld [bc], a                                       ; $54d2: $02
	ret nz                                           ; $54d3: $c0

	dec hl                                           ; $54d4: $2b
	ld h, b                                          ; $54d5: $60
	sbc d                                            ; $54d6: $9a
	ret c                                            ; $54d7: $d8

	ld a, [hl]                                       ; $54d8: $7e
	ret                                              ; $54d9: $c9


	ld h, e                                          ; $54da: $63
	pop bc                                           ; $54db: $c1
	inc hl                                           ; $54dc: $23
	ld h, b                                          ; $54dd: $60
	rst SubAFromDE                                          ; $54de: $df
	rrca                                             ; $54df: $0f
	rst SubAFromDE                                          ; $54e0: $df
	ld a, a                                          ; $54e1: $7f
	sbc [hl]                                         ; $54e2: $9e
	ldh a, [$7a]                                     ; $54e3: $f0 $7a
	ld e, $77                                        ; $54e5: $1e $77
	ld e, [hl]                                       ; $54e7: $5e
	sbc h                                            ; $54e8: $9c
	add c                                            ; $54e9: $81
	ld a, a                                          ; $54ea: $7f
	ld a, [hl]                                       ; $54eb: $7e
	inc bc                                           ; $54ec: $03
	ld h, b                                          ; $54ed: $60
	inc bc                                           ; $54ee: $03
	ld h, b                                          ; $54ef: $60
	daa                                              ; $54f0: $27
	ld h, b                                          ; $54f1: $60
	adc h                                            ; $54f2: $8c
	di                                               ; $54f3: $f3
	ld [hl], b                                       ; $54f4: $70
	pop af                                           ; $54f5: $f1
	nop                                              ; $54f6: $00
	ret nc                                           ; $54f7: $d0

	add b                                            ; $54f8: $80
	ret c                                            ; $54f9: $d8

	add b                                            ; $54fa: $80
	call c, $fcc0                                    ; $54fb: $dc $c0 $fc
	jr nz, jr_066_5538                               ; $54fe: $20 $38

	nop                                              ; $5500: $00

jr_066_5501:
	ld b, d                                          ; $5501: $42
	nop                                              ; $5502: $00
	inc a                                            ; $5503: $3c
	inc l                                            ; $5504: $2c
	jr jr_066_5501                                   ; $5505: $18 $fa

	sbc c                                            ; $5507: $99
	jp $ff01                                         ; $5508: $c3 $01 $ff


	adc $ff                                          ; $550b: $ce $ff
	jr nc, @+$51                                     ; $550d: $30 $4f

	ldh [$99], a                                     ; $550f: $e0 $99
	ld b, e                                          ; $5511: $43
	nop                                              ; $5512: $00
	ld h, e                                          ; $5513: $63
	ld [hl], $3e                                     ; $5514: $36 $3e
	inc e                                            ; $5516: $1c
	dec bc                                           ; $5517: $0b
	ldh [$7f], a                                     ; $5518: $e0 $7f
	rst SubAFromDE                                          ; $551a: $df
	ld [hl], e                                       ; $551b: $73
	sbc $1f                                          ; $551c: $de $1f
	ldh [$7b], a                                     ; $551e: $e0 $7b
	rst SubAFromDE                                          ; $5520: $df
	sbc [hl]                                         ; $5521: $9e
	ld [$e067], sp                                   ; $5522: $08 $67 $e0
	xor h                                            ; $5525: $ac
	ld bc, $2892                                     ; $5526: $01 $92 $28
	ld sp, $2133                                     ; $5529: $31 $33 $21
	ld [hl], e                                       ; $552c: $73
	ld hl, $2371                                     ; $552d: $21 $71 $23
	ldh a, [c]                                       ; $5530: $f2
	inc hl                                           ; $5531: $23
	di                                               ; $5532: $f3
	ld [hl+], a                                      ; $5533: $22
	rst FarCall                                          ; $5534: $f7
	ld a, e                                          ; $5535: $7b
	cp $80                                           ; $5536: $fe $80

jr_066_5538:
	ld h, a                                          ; $5538: $67
	or d                                             ; $5539: $b2
	rst SubAFromBC                                          ; $553a: $e7
	or d                                             ; $553b: $b2
	xor a                                            ; $553c: $af
	ldh a, [c]                                       ; $553d: $f2
	xor $f3                                          ; $553e: $ee $f3
	push hl                                          ; $5540: $e5
	ei                                               ; $5541: $fb
	or l                                             ; $5542: $b5
	ei                                               ; $5543: $fb
	sub b                                            ; $5544: $90
	rst $38                                          ; $5545: $ff
	ret c                                            ; $5546: $d8

	cp a                                             ; $5547: $bf
	call c, $d6bf                                    ; $5548: $dc $bf $d6
	cp a                                             ; $554b: $bf
	sub a                                            ; $554c: $97
	cp a                                             ; $554d: $bf
	and l                                            ; $554e: $a5
	cp a                                             ; $554f: $bf
	or l                                             ; $5550: $b5
	cpl                                              ; $5551: $2f
	ld a, [de]                                       ; $5552: $1a
	cpl                                              ; $5553: $2f
	ld a, $0b                                        ; $5554: $3e $0b
	ld e, [hl]                                       ; $5556: $5e
	add b                                            ; $5557: $80
	dec bc                                           ; $5558: $0b
	rla                                              ; $5559: $17
	ld c, d                                          ; $555a: $4a
	rrca                                             ; $555b: $0f
	ld d, d                                          ; $555c: $52
	ld sp, $3756                                     ; $555d: $31 $56 $37
	ld d, h                                          ; $5560: $54
	dec h                                            ; $5561: $25
	ld [hl], h                                       ; $5562: $74
	or h                                             ; $5563: $b4
	ld h, l                                          ; $5564: $65
	xor b                                            ; $5565: $a8
	ld h, l                                          ; $5566: $65
	and $29                                          ; $5567: $e6 $29
	ldh [$b0], a                                     ; $5569: $e0 $b0
	ld h, [hl]                                       ; $556b: $66
	and b                                            ; $556c: $a0
	and d                                            ; $556d: $a2
	ld h, h                                          ; $556e: $64
	jp z, $ee64                                      ; $556f: $ca $64 $ee

	ld b, h                                          ; $5572: $44
	and $4c                                          ; $5573: $e6 $4c
	push af                                          ; $5575: $f5
	ld c, [hl]                                       ; $5576: $4e
	sbc e                                            ; $5577: $9b
	ld h, l                                          ; $5578: $65
	sbc $44                                          ; $5579: $de $44
	rst $38                                          ; $557b: $ff
	ld [hl], a                                       ; $557c: $77
	cp $9e                                           ; $557d: $fe $9e
	ld [hl+], a                                      ; $557f: $22
	ld [hl], e                                       ; $5580: $73
	cp $9e                                           ; $5581: $fe $9e
	sub c                                            ; $5583: $91
	ld a, e                                          ; $5584: $7b
	cp $80                                           ; $5585: $fe $80
	ld c, c                                          ; $5587: $49
	rst $38                                          ; $5588: $ff
	ld l, c                                          ; $5589: $69
	rst $38                                          ; $558a: $ff
	ld [hl], h                                       ; $558b: $74
	rst SubAFromDE                                          ; $558c: $df
	cp [hl]                                          ; $558d: $be
	rst AddAOntoHL                                          ; $558e: $ef
	rst $38                                          ; $558f: $ff
	ld [hl], l                                       ; $5590: $75
	ldh a, [c]                                       ; $5591: $f2
	add b                                            ; $5592: $80
	ret nz                                           ; $5593: $c0

	add b                                            ; $5594: $80
	ret nz                                           ; $5595: $c0

	ret nz                                           ; $5596: $c0

	ldh [$c0], a                                     ; $5597: $e0 $c0
	or b                                             ; $5599: $b0
	ldh [$b8], a                                     ; $559a: $e0 $b8
	ldh a, [$ac]                                     ; $559c: $f0 $ac
	ld hl, sp-$51                                    ; $559e: $f8 $af
	db $fc                                           ; $55a0: $fc
	cp a                                             ; $55a1: $bf
	ei                                               ; $55a2: $fb
	rst $38                                          ; $55a3: $ff
	ret z                                            ; $55a4: $c8

	cp $91                                           ; $55a5: $fe $91
	sbc b                                            ; $55a7: $98
	dec sp                                           ; $55a8: $3b
	ld [de], a                                       ; $55a9: $12
	ld [de], a                                       ; $55aa: $12
	ld [hl], $76                                     ; $55ab: $36 $76
	inc h                                            ; $55ad: $24
	and h                                            ; $55ae: $a4
	ld l, h                                          ; $55af: $6c
	xor h                                            ; $55b0: $ac
	ld l, b                                          ; $55b1: $68
	inc l                                            ; $55b2: $2c
	add sp, $3c                                      ; $55b3: $e8 $3c
	ld a, e                                          ; $55b5: $7b
	cp $8c                                           ; $55b6: $fe $8c
	inc l                                            ; $55b8: $2c
	ld hl, sp+$2c                                    ; $55b9: $f8 $2c
	ld hl, sp+$7d                                    ; $55bb: $f8 $7d
	ret c                                            ; $55bd: $d8

	ld a, h                                          ; $55be: $7c
	ret c                                            ; $55bf: $d8

	ld a, h                                          ; $55c0: $7c
	reti                                             ; $55c1: $d9


	ld a, a                                          ; $55c2: $7f
	ret                                              ; $55c3: $c9


	ld h, e                                          ; $55c4: $63
	ret nz                                           ; $55c5: $c0

	and e                                            ; $55c6: $a3
	ldh [$35], a                                     ; $55c7: $e0 $35
	inc e                                            ; $55c9: $1c
	inc e                                            ; $55ca: $1c
	sbc $16                                          ; $55cb: $de $16
	add b                                            ; $55cd: $80
	rla                                              ; $55ce: $17
	ld d, $1e                                        ; $55cf: $16 $1e
	rla                                              ; $55d1: $17
	scf                                              ; $55d2: $37
	dec e                                            ; $55d3: $1d
	cpl                                              ; $55d4: $2f
	dec a                                            ; $55d5: $3d
	ld l, l                                          ; $55d6: $6d
	ccf                                              ; $55d7: $3f
	ld e, a                                          ; $55d8: $5f
	halt                                             ; $55d9: $76
	or $e4                                           ; $55da: $f6 $e4
	ldh [rTAC], a                                    ; $55dc: $e0 $07
	rlca                                             ; $55de: $07
	ccf                                              ; $55df: $3f
	ccf                                              ; $55e0: $3f
	ld hl, sp-$01                                    ; $55e1: $f8 $ff
	ret nz                                           ; $55e3: $c0

	rst $38                                          ; $55e4: $ff
	ld e, $e7                                        ; $55e5: $1e $e7
	ld h, a                                          ; $55e7: $67
	db $fd                                           ; $55e8: $fd
	rst $38                                          ; $55e9: $ff
	and l                                            ; $55ea: $a5
	inc [hl]                                         ; $55eb: $34
	ld e, e                                          ; $55ec: $5b
	sbc e                                            ; $55ed: $9b
	inc a                                            ; $55ee: $3c
	rra                                              ; $55ef: $1f
	nop                                              ; $55f0: $00
	rlca                                             ; $55f1: $07
	ld a, e                                          ; $55f2: $7b
	cp $80                                           ; $55f3: $fe $80
	rrca                                             ; $55f5: $0f
	ld bc, $010f                                     ; $55f6: $01 $0f $01
	ld e, $03                                        ; $55f9: $1e $03
	ld e, $06                                        ; $55fb: $1e $06
	inc a                                            ; $55fd: $3c
	ld c, $74                                        ; $55fe: $0e $74
	ld e, $e8                                        ; $5600: $1e $e8
	ld a, l                                          ; $5602: $7d
	add sp, -$43                                     ; $5603: $e8 $bd
	pop af                                           ; $5605: $f1
	dec a                                            ; $5606: $3d
	pop af                                           ; $5607: $f1
	dec sp                                           ; $5608: $3b
	xor e                                            ; $5609: $ab
	call $adcb                                       ; $560a: $cd $cb $ad
	rst SubAFromBC                                          ; $560d: $e7
	sub l                                            ; $560e: $95
	rst FarCall                                          ; $560f: $f7
	ld e, l                                          ; $5610: $5d
	rst SubAFromDE                                          ; $5611: $df
	ld l, l                                          ; $5612: $6d
	db $ed                                           ; $5613: $ed
	add [hl]                                         ; $5614: $86
	scf                                              ; $5615: $37
	ld [hl], a                                       ; $5616: $77
	cp e                                             ; $5617: $bb
	db $fd                                           ; $5618: $fd
	cp [hl]                                          ; $5619: $be
	sub e                                            ; $561a: $93
	rst $38                                          ; $561b: $ff
	pop de                                           ; $561c: $d1
	ld a, a                                          ; $561d: $7f
	add hl, hl                                       ; $561e: $29
	rst $38                                          ; $561f: $ff
	cp $df                                           ; $5620: $fe $df
	ldh a, [c]                                       ; $5622: $f2
	rra                                              ; $5623: $1f
	ldh a, [c]                                       ; $5624: $f2
	rra                                              ; $5625: $1f
	db $f4                                           ; $5626: $f4
	ccf                                              ; $5627: $3f
	db $e4                                           ; $5628: $e4
	cp a                                             ; $5629: $bf
	db $e4                                           ; $562a: $e4
	ccf                                              ; $562b: $3f
	jp hl                                            ; $562c: $e9


	ld a, a                                          ; $562d: $7f
	ld [hl], a                                       ; $562e: $77
	cp $98                                           ; $562f: $fe $98
	or d                                             ; $5631: $b2
	rst $38                                          ; $5632: $ff
	or d                                             ; $5633: $b2
	rst $38                                          ; $5634: $ff
	inc h                                            ; $5635: $24
	rst $38                                          ; $5636: $ff
	dec h                                            ; $5637: $25
	ld a, e                                          ; $5638: $7b
	ld d, b                                          ; $5639: $50
	sub c                                            ; $563a: $91
	ld c, d                                          ; $563b: $4a
	cp $54                                           ; $563c: $fe $54
	db $fc                                           ; $563e: $fc
	sub h                                            ; $563f: $94
	db $fc                                           ; $5640: $fc
	xor b                                            ; $5641: $a8
	ld hl, sp-$58                                    ; $5642: $f8 $a8
	ld hl, sp+$50                                    ; $5644: $f8 $50
	ldh a, [$50]                                     ; $5646: $f0 $50
	ldh a, [$03]                                     ; $5648: $f0 $03
	ld h, b                                          ; $564a: $60
	scf                                              ; $564b: $37
	ld h, b                                          ; $564c: $60
	rst SubAFromDE                                          ; $564d: $df
	inc bc                                           ; $564e: $03
	rst SubAFromDE                                          ; $564f: $df
	rra                                              ; $5650: $1f
	sub h                                            ; $5651: $94
	db $fc                                           ; $5652: $fc
	rst $38                                          ; $5653: $ff
	ldh [rIE], a                                     ; $5654: $e0 $ff
	nop                                              ; $5656: $00
	rst $38                                          ; $5657: $ff
	ld a, $ed                                        ; $5658: $3e $ed
	ld l, l                                          ; $565a: $6d
	and l                                            ; $565b: $a5
	or h                                             ; $565c: $b4
	inc bc                                           ; $565d: $03
	ld h, b                                          ; $565e: $60
	rra                                              ; $565f: $1f
	ld h, b                                          ; $5660: $60
	ld a, e                                          ; $5661: $7b
	ld e, [hl]                                       ; $5662: $5e
	inc bc                                           ; $5663: $03
	ld h, b                                          ; $5664: $60
	inc bc                                           ; $5665: $03
	ld h, b                                          ; $5666: $60
	ld b, e                                          ; $5667: $43
	ld h, b                                          ; $5668: $60
	rst $38                                          ; $5669: $ff
	rst SubAFromDE                                          ; $566a: $df
	rra                                              ; $566b: $1f
	rst SubAFromDE                                          ; $566c: $df
	rst $38                                          ; $566d: $ff
	ld [hl], a                                       ; $566e: $77
	ld h, b                                          ; $566f: $60
	ld a, e                                          ; $5670: $7b
	cp $9c                                           ; $5671: $fe $9c
	jp Jump_066_7fef                                 ; $5673: $c3 $ef $7f


	inc bc                                           ; $5676: $03
	ld h, b                                          ; $5677: $60
	ld c, e                                          ; $5678: $4b
	ld h, b                                          ; $5679: $60
	sbc e                                            ; $567a: $9b
	ccf                                              ; $567b: $3f
	ld a, $df                                        ; $567c: $3e $df
	ldh a, [c]                                       ; $567e: $f2
	ld a, e                                          ; $567f: $7b
	ld e, [hl]                                       ; $5680: $5e
	ld [hl], e                                       ; $5681: $73
	ld h, b                                          ; $5682: $60
	ld [bc], a                                       ; $5683: $02
	ret nz                                           ; $5684: $c0

	dec hl                                           ; $5685: $2b
	ld h, b                                          ; $5686: $60
	sbc d                                            ; $5687: $9a
	ret c                                            ; $5688: $d8

	ld a, [hl]                                       ; $5689: $7e
	ret                                              ; $568a: $c9


	ld h, e                                          ; $568b: $63
	pop bc                                           ; $568c: $c1
	inc hl                                           ; $568d: $23
	ld h, b                                          ; $568e: $60
	ld h, [hl]                                       ; $568f: $66
	ld e, $77                                        ; $5690: $1e $77
	ld e, [hl]                                       ; $5692: $5e
	sbc h                                            ; $5693: $9c
	add c                                            ; $5694: $81
	ld a, a                                          ; $5695: $7f
	ld a, [hl]                                       ; $5696: $7e
	inc bc                                           ; $5697: $03
	ld h, b                                          ; $5698: $60
	inc bc                                           ; $5699: $03
	ld h, b                                          ; $569a: $60
	daa                                              ; $569b: $27
	ld h, b                                          ; $569c: $60
	sub d                                            ; $569d: $92
	di                                               ; $569e: $f3
	ld [hl], b                                       ; $569f: $70
	pop af                                           ; $56a0: $f1
	nop                                              ; $56a1: $00
	ret nc                                           ; $56a2: $d0

	add b                                            ; $56a3: $80
	ret c                                            ; $56a4: $d8

	add b                                            ; $56a5: $80
	call c, $fcc0                                    ; $56a6: $dc $c0 $fc
	jr nz, @+$3a                                     ; $56a9: $20 $38

jr_066_56ab:
	cp $9c                                           ; $56ab: $fe $9c
	ld a, [hl]                                       ; $56ad: $7e
	inc l                                            ; $56ae: $2c
	jr jr_066_56ab                                   ; $56af: $18 $fa

	sbc c                                            ; $56b1: $99
	jp $ff01                                         ; $56b2: $c3 $01 $ff


	adc $ff                                          ; $56b5: $ce $ff
	jr nc, jr_066_5700                               ; $56b7: $30 $47

	ldh [$9b], a                                     ; $56b9: $e0 $9b
	ld h, [hl]                                       ; $56bb: $66
	inc l                                            ; $56bc: $2c
	inc a                                            ; $56bd: $3c
	inc a                                            ; $56be: $3c
	ld l, a                                          ; $56bf: $6f
	sbc $2f                                          ; $56c0: $de $2f
	ldh [$9c], a                                     ; $56c2: $e0 $9c
	ld b, d                                          ; $56c4: $42
	inc h                                            ; $56c5: $24
	ld a, [hl]                                       ; $56c6: $7e
	ld a, e                                          ; $56c7: $7b
	rst SubAFromDE                                          ; $56c8: $df
	ld [hl], a                                       ; $56c9: $77
	sbc $1b                                          ; $56ca: $de $1b
	ldh [$73], a                                     ; $56cc: $e0 $73
	cp l                                             ; $56ce: $bd
	ld l, a                                          ; $56cf: $6f
	ldh [$b8], a                                     ; $56d0: $e0 $b8
	ld bc, $2892                                     ; $56d2: $01 $92 $28
	ld sp, $2133                                     ; $56d5: $31 $33 $21
	ld [hl], e                                       ; $56d8: $73
	ld hl, $2371                                     ; $56d9: $21 $71 $23
	ldh a, [c]                                       ; $56dc: $f2
	inc hl                                           ; $56dd: $23
	di                                               ; $56de: $f3
	ld [hl+], a                                      ; $56df: $22
	rst FarCall                                          ; $56e0: $f7
	ld a, e                                          ; $56e1: $7b
	cp $80                                           ; $56e2: $fe $80
	ld h, a                                          ; $56e4: $67
	or d                                             ; $56e5: $b2
	rst SubAFromBC                                          ; $56e6: $e7
	or d                                             ; $56e7: $b2
	xor a                                            ; $56e8: $af
	ldh a, [c]                                       ; $56e9: $f2
	xor $f3                                          ; $56ea: $ee $f3
	push hl                                          ; $56ec: $e5
	ei                                               ; $56ed: $fb
	or l                                             ; $56ee: $b5
	ei                                               ; $56ef: $fb
	sub b                                            ; $56f0: $90
	rst $38                                          ; $56f1: $ff
	ret c                                            ; $56f2: $d8

	cp a                                             ; $56f3: $bf
	call c, $d6bf                                    ; $56f4: $dc $bf $d6
	cp a                                             ; $56f7: $bf
	sub a                                            ; $56f8: $97
	cp a                                             ; $56f9: $bf
	and l                                            ; $56fa: $a5
	cp a                                             ; $56fb: $bf
	or l                                             ; $56fc: $b5
	cpl                                              ; $56fd: $2f
	ld a, [de]                                       ; $56fe: $1a
	cpl                                              ; $56ff: $2f

jr_066_5700:
	ld a, $0b                                        ; $5700: $3e $0b
	ld e, [hl]                                       ; $5702: $5e
	add b                                            ; $5703: $80
	dec bc                                           ; $5704: $0b
	rla                                              ; $5705: $17
	ld c, d                                          ; $5706: $4a
	rrca                                             ; $5707: $0f
	ld d, d                                          ; $5708: $52
	ld sp, $3756                                     ; $5709: $31 $56 $37
	ld d, h                                          ; $570c: $54
	dec h                                            ; $570d: $25
	ld [hl], h                                       ; $570e: $74
	or h                                             ; $570f: $b4
	ld h, l                                          ; $5710: $65
	xor b                                            ; $5711: $a8
	ld h, l                                          ; $5712: $65
	and $29                                          ; $5713: $e6 $29
	ldh [$b0], a                                     ; $5715: $e0 $b0
	ld h, [hl]                                       ; $5717: $66
	and b                                            ; $5718: $a0
	and d                                            ; $5719: $a2
	ld h, h                                          ; $571a: $64
	jp z, $ee64                                      ; $571b: $ca $64 $ee

	ld b, h                                          ; $571e: $44
	and $4c                                          ; $571f: $e6 $4c
	push af                                          ; $5721: $f5
	ld c, [hl]                                       ; $5722: $4e
	sbc e                                            ; $5723: $9b
	ld h, l                                          ; $5724: $65
	sbc $44                                          ; $5725: $de $44
	rst $38                                          ; $5727: $ff
	ld [hl], a                                       ; $5728: $77
	cp $9e                                           ; $5729: $fe $9e
	ld [hl+], a                                      ; $572b: $22
	ld [hl], e                                       ; $572c: $73
	cp $9e                                           ; $572d: $fe $9e
	sub c                                            ; $572f: $91
	ld a, e                                          ; $5730: $7b
	cp $80                                           ; $5731: $fe $80
	ld c, c                                          ; $5733: $49
	rst $38                                          ; $5734: $ff
	ld l, c                                          ; $5735: $69
	rst $38                                          ; $5736: $ff
	ld [hl], h                                       ; $5737: $74
	rst SubAFromDE                                          ; $5738: $df
	cp [hl]                                          ; $5739: $be
	rst AddAOntoHL                                          ; $573a: $ef
	rst $38                                          ; $573b: $ff
	ld [hl], l                                       ; $573c: $75
	ldh a, [c]                                       ; $573d: $f2
	add b                                            ; $573e: $80
	ret nz                                           ; $573f: $c0

	add b                                            ; $5740: $80
	ret nz                                           ; $5741: $c0

	ret nz                                           ; $5742: $c0

	ldh [$c0], a                                     ; $5743: $e0 $c0
	or b                                             ; $5745: $b0
	ldh [$b8], a                                     ; $5746: $e0 $b8
	ldh a, [$ac]                                     ; $5748: $f0 $ac
	ld hl, sp-$51                                    ; $574a: $f8 $af
	db $fc                                           ; $574c: $fc
	cp a                                             ; $574d: $bf
	ei                                               ; $574e: $fb
	rst $38                                          ; $574f: $ff
	ret z                                            ; $5750: $c8

	cp $91                                           ; $5751: $fe $91
	sbc b                                            ; $5753: $98
	dec sp                                           ; $5754: $3b
	ld [de], a                                       ; $5755: $12
	ld [de], a                                       ; $5756: $12
	ld [hl], $76                                     ; $5757: $36 $76
	inc h                                            ; $5759: $24
	and h                                            ; $575a: $a4
	ld l, h                                          ; $575b: $6c
	xor h                                            ; $575c: $ac
	ld l, b                                          ; $575d: $68
	inc l                                            ; $575e: $2c
	add sp, $3c                                      ; $575f: $e8 $3c
	ld a, e                                          ; $5761: $7b
	cp $98                                           ; $5762: $fe $98
	inc l                                            ; $5764: $2c
	ld hl, sp+$2c                                    ; $5765: $f8 $2c
	ld hl, sp+$7d                                    ; $5767: $f8 $7d
	ret c                                            ; $5769: $d8

	ld a, h                                          ; $576a: $7c
	ld a, e                                          ; $576b: $7b
	cp $96                                           ; $576c: $fe $96
	ld a, a                                          ; $576e: $7f
	ret z                                            ; $576f: $c8

	ld h, d                                          ; $5770: $62
	pop bc                                           ; $5771: $c1
	and e                                            ; $5772: $a3
	pop hl                                           ; $5773: $e1
	dec [hl]                                         ; $5774: $35
	inc e                                            ; $5775: $1c
	inc e                                            ; $5776: $1c
	sbc $16                                          ; $5777: $de $16
	add b                                            ; $5779: $80
	rla                                              ; $577a: $17
	ld d, $1e                                        ; $577b: $16 $1e
	rla                                              ; $577d: $17
	scf                                              ; $577e: $37
	dec e                                            ; $577f: $1d
	cpl                                              ; $5780: $2f
	dec a                                            ; $5781: $3d
	ld l, l                                          ; $5782: $6d
	ccf                                              ; $5783: $3f
	ld e, a                                          ; $5784: $5f
	halt                                             ; $5785: $76
	or $e4                                           ; $5786: $f6 $e4
	ldh [rP1], a                                     ; $5788: $e0 $00
	nop                                              ; $578a: $00
	ld bc, $0f01                                     ; $578b: $01 $01 $0f
	rst GetHLinHL                                          ; $578e: $cf
	ld a, $3f                                        ; $578f: $3e $3f
	ldh a, [rIE]                                     ; $5791: $f0 $ff
	ret nz                                           ; $5793: $c0

	rst $38                                          ; $5794: $ff
	nop                                              ; $5795: $00
	rst $38                                          ; $5796: $ff
	add c                                            ; $5797: $81
	ld a, a                                          ; $5798: $7f
	sbc e                                            ; $5799: $9b
	ld a, [hl]                                       ; $579a: $7e
	rra                                              ; $579b: $1f
	nop                                              ; $579c: $00
	rlca                                             ; $579d: $07
	ld a, e                                          ; $579e: $7b
	cp $80                                           ; $579f: $fe $80
	rrca                                             ; $57a1: $0f
	ld bc, $010f                                     ; $57a2: $01 $0f $01
	ld e, $03                                        ; $57a5: $1e $03
	ld e, $06                                        ; $57a7: $1e $06
	inc a                                            ; $57a9: $3c
	ld c, $74                                        ; $57aa: $0e $74
	ld e, $e8                                        ; $57ac: $1e $e8
	ld a, l                                          ; $57ae: $7d
	add sp, -$43                                     ; $57af: $e8 $bd
	pop af                                           ; $57b1: $f1
	dec a                                            ; $57b2: $3d
	pop af                                           ; $57b3: $f1
	dec sp                                           ; $57b4: $3b
	xor e                                            ; $57b5: $ab
	call $adcb                                       ; $57b6: $cd $cb $ad
	rst SubAFromBC                                          ; $57b9: $e7
	sub l                                            ; $57ba: $95
	rst FarCall                                          ; $57bb: $f7
	ld e, l                                          ; $57bc: $5d
	rst SubAFromDE                                          ; $57bd: $df
	ld l, l                                          ; $57be: $6d
	db $ed                                           ; $57bf: $ed
	adc e                                            ; $57c0: $8b
	scf                                              ; $57c1: $37
	ld [hl], a                                       ; $57c2: $77
	cp e                                             ; $57c3: $bb
	db $fd                                           ; $57c4: $fd
	cp [hl]                                          ; $57c5: $be
	sub e                                            ; $57c6: $93
	rst $38                                          ; $57c7: $ff
	pop de                                           ; $57c8: $d1
	ld a, a                                          ; $57c9: $7f
	add hl, hl                                       ; $57ca: $29
	ccf                                              ; $57cb: $3f
	ld a, $df                                        ; $57cc: $3e $df
	ldh a, [c]                                       ; $57ce: $f2
	rst SubAFromDE                                          ; $57cf: $df
	ldh a, [c]                                       ; $57d0: $f2
	rra                                              ; $57d1: $1f
	db $f4                                           ; $57d2: $f4
	ccf                                              ; $57d3: $3f
	db $e4                                           ; $57d4: $e4
	ld a, e                                          ; $57d5: $7b
	cp $9d                                           ; $57d6: $fe $9d
	jp hl                                            ; $57d8: $e9


	ld a, a                                          ; $57d9: $7f
	ld [hl], a                                       ; $57da: $77
	cp $98                                           ; $57db: $fe $98
	or d                                             ; $57dd: $b2
	rst $38                                          ; $57de: $ff
	or d                                             ; $57df: $b2
	rst $38                                          ; $57e0: $ff
	inc h                                            ; $57e1: $24
	rst $38                                          ; $57e2: $ff
	dec h                                            ; $57e3: $25
	ld a, e                                          ; $57e4: $7b
	ld d, b                                          ; $57e5: $50
	sub c                                            ; $57e6: $91
	ld c, d                                          ; $57e7: $4a
	cp $54                                           ; $57e8: $fe $54
	db $fc                                           ; $57ea: $fc
	sub h                                            ; $57eb: $94
	db $fc                                           ; $57ec: $fc
	xor b                                            ; $57ed: $a8
	ld hl, sp-$58                                    ; $57ee: $f8 $a8
	ld hl, sp+$50                                    ; $57f0: $f8 $50
	ldh a, [$50]                                     ; $57f2: $f0 $50
	ldh a, [$1f]                                     ; $57f4: $f0 $1f
	ld h, b                                          ; $57f6: $60
	sbc c                                            ; $57f7: $99
	ld a, [hl]                                       ; $57f8: $7e
	ret                                              ; $57f9: $c9


	ld h, e                                          ; $57fa: $63
	pop bc                                           ; $57fb: $c1
	and e                                            ; $57fc: $a3
	ldh [$2b], a                                     ; $57fd: $e0 $2b
	ld h, b                                          ; $57ff: $60
	rst SubAFromDE                                          ; $5800: $df
	rlca                                             ; $5801: $07
	rst SubAFromDE                                          ; $5802: $df
	ccf                                              ; $5803: $3f
	sbc [hl]                                         ; $5804: $9e
	ld hl, sp+$73                                    ; $5805: $f8 $73
	ld h, d                                          ; $5807: $62
	sbc d                                            ; $5808: $9a
	nop                                              ; $5809: $00
	jp Jump_066_7ff7                                 ; $580a: $c3 $f7 $7f


	inc a                                            ; $580d: $3c
	inc bc                                           ; $580e: $03
	ld h, b                                          ; $580f: $60
	inc bc                                           ; $5810: $03
	ld h, b                                          ; $5811: $60
	inc bc                                           ; $5812: $03
	ld h, b                                          ; $5813: $60
	inc bc                                           ; $5814: $03
	ld h, b                                          ; $5815: $60
	ld e, e                                          ; $5816: $5b
	ld h, b                                          ; $5817: $60
	rst SubAFromDE                                          ; $5818: $df
	inc bc                                           ; $5819: $03
	rst SubAFromDE                                          ; $581a: $df
	rra                                              ; $581b: $1f
	sbc h                                            ; $581c: $9c
	db $fc                                           ; $581d: $fc
	rst $38                                          ; $581e: $ff
	ldh [$7b], a                                     ; $581f: $e0 $7b
	ld h, d                                          ; $5821: $62
	sbc c                                            ; $5822: $99
	ccf                                              ; $5823: $3f
	db $ed                                           ; $5824: $ed
	ld a, l                                          ; $5825: $7d
	and l                                            ; $5826: $a5
	or h                                             ; $5827: $b4
	ld e, e                                          ; $5828: $5b
	inc bc                                           ; $5829: $03
	ld h, b                                          ; $582a: $60
	ld c, e                                          ; $582b: $4b
	ld h, b                                          ; $582c: $60
	sbc l                                            ; $582d: $9d
	rst $38                                          ; $582e: $ff
	cp $7b                                           ; $582f: $fe $7b
	ld h, d                                          ; $5831: $62
	ld l, e                                          ; $5832: $6b
	ld h, b                                          ; $5833: $60
	sbc [hl]                                         ; $5834: $9e
	cp a                                             ; $5835: $bf
	inc bc                                           ; $5836: $03
	ld h, b                                          ; $5837: $60
	inc bc                                           ; $5838: $03
	ld h, b                                          ; $5839: $60
	ld b, e                                          ; $583a: $43
	ld h, b                                          ; $583b: $60
	rst SubAFromDE                                          ; $583c: $df
	rrca                                             ; $583d: $0f
	rst SubAFromDE                                          ; $583e: $df
	ccf                                              ; $583f: $3f
	halt                                             ; $5840: $76
	inc h                                            ; $5841: $24
	sbc b                                            ; $5842: $98
	ld e, $e7                                        ; $5843: $1e $e7
	ld h, a                                          ; $5845: $67
	db $fd                                           ; $5846: $fd
	rst $38                                          ; $5847: $ff
	and l                                            ; $5848: $a5
	inc [hl]                                         ; $5849: $34
	inc bc                                           ; $584a: $03
	ld h, b                                          ; $584b: $60
	ld c, e                                          ; $584c: $4b
	ld h, b                                          ; $584d: $60
	sbc l                                            ; $584e: $9d
	ld l, c                                          ; $584f: $69
	cp a                                             ; $5850: $bf
	ld h, e                                          ; $5851: $63
	ld h, b                                          ; $5852: $60
	sbc [hl]                                         ; $5853: $9e
	cp a                                             ; $5854: $bf
	ld b, $c0                                        ; $5855: $06 $c0
	sub d                                            ; $5857: $92
	di                                               ; $5858: $f3
	ld [hl], b                                       ; $5859: $70
	pop af                                           ; $585a: $f1
	nop                                              ; $585b: $00
	ret nc                                           ; $585c: $d0

	add b                                            ; $585d: $80
	ret c                                            ; $585e: $d8

	add b                                            ; $585f: $80
	call c, $fcc0                                    ; $5860: $dc $c0 $fc
	jr nz, jr_066_589d                               ; $5863: $20 $38

	cp $9d                                           ; $5865: $fe $9d
	ld h, [hl]                                       ; $5867: $66
	inc l                                            ; $5868: $2c
	ld sp, hl                                        ; $5869: $f9
	sbc c                                            ; $586a: $99
	jp $ff01                                         ; $586b: $c3 $01 $ff


	adc $ff                                          ; $586e: $ce $ff
	jr nc, jr_066_58b9                               ; $5870: $30 $47

	ldh [$98], a                                     ; $5872: $e0 $98
	ld b, d                                          ; $5874: $42
	inc h                                            ; $5875: $24
	ld a, [hl]                                       ; $5876: $7e
	inc a                                            ; $5877: $3c
	inc a                                            ; $5878: $3c
	jr @+$1a                                         ; $5879: $18 $18

	inc hl                                           ; $587b: $23
	ldh [$9e], a                                     ; $587c: $e0 $9e
	nop                                              ; $587e: $00
	ld a, e                                          ; $587f: $7b
	ldh [$6f], a                                     ; $5880: $e0 $6f
	sbc $17                                          ; $5882: $de $17
	ldh [rPCM34], a                                  ; $5884: $e0 $77
	sbc $6f                                          ; $5886: $de $6f
	ldh [$36], a                                     ; $5888: $e0 $36
	ld [bc], a                                       ; $588a: $02
	rst FarCall                                          ; $588b: $f7
	rst SubAFromDE                                          ; $588c: $df
	ld bc, $0282                                     ; $588d: $01 $82 $02
	inc bc                                           ; $5890: $03
	dec b                                            ; $5891: $05
	ld b, $0b                                        ; $5892: $06 $0b
	inc c                                            ; $5894: $0c
	ld d, $19                                        ; $5895: $16 $19
	cpl                                              ; $5897: $2f
	ld sp, $233d                                     ; $5898: $31 $3d $23
	ld e, [hl]                                       ; $589b: $5e
	ld h, e                                          ; $589c: $63

jr_066_589d:
	ld a, a                                          ; $589d: $7f
	ld b, d                                          ; $589e: $42
	ld a, c                                          ; $589f: $79
	ld b, [hl]                                       ; $58a0: $46
	cp a                                             ; $58a1: $bf
	call nz, $84f6                                   ; $58a2: $c4 $f6 $84
	sub d                                            ; $58a5: $92
	and h                                            ; $58a6: $a4
	sub d                                            ; $58a7: $92
	and h                                            ; $58a8: $a4
	add d                                            ; $58a9: $82
	and h                                            ; $58aa: $a4
	add b                                            ; $58ab: $80
	ld a, e                                          ; $58ac: $7b
	cp $8b                                           ; $58ad: $fe $8b
	ldh a, [c]                                       ; $58af: $f2
	and h                                            ; $58b0: $a4
	or $a4                                           ; $58b1: $f6 $a4
	xor l                                            ; $58b3: $ad
	or $5d                                           ; $58b4: $f6 $5d
	halt                                             ; $58b6: $76
	ld e, e                                          ; $58b7: $5b
	halt                                             ; $58b8: $76

jr_066_58b9:
	scf                                              ; $58b9: $37
	ld a, [hl-]                                      ; $58ba: $3a
	ld a, [hl+]                                      ; $58bb: $2a
	ccf                                              ; $58bc: $3f
	add hl, de                                       ; $58bd: $19
	rra                                              ; $58be: $1f
	dec c                                            ; $58bf: $0d
	rrca                                             ; $58c0: $0f
	ld b, $07                                        ; $58c1: $06 $07

jr_066_58c3:
	ld [hl], a                                       ; $58c3: $77
	ret z                                            ; $58c4: $c8

	rst SubAFromDE                                          ; $58c5: $df
	rlca                                             ; $58c6: $07
	add l                                            ; $58c7: $85
	dec de                                           ; $58c8: $1b
	inc e                                            ; $58c9: $1c
	ld l, a                                          ; $58ca: $6f
	ld [hl], b                                       ; $58cb: $70
	cp [hl]                                          ; $58cc: $be
	pop bc                                           ; $58cd: $c1
	rst FarCall                                          ; $58ce: $f7
	rrca                                             ; $58cf: $0f
	db $db                                           ; $58d0: $db
	inc a                                            ; $58d1: $3c
	inc e                                            ; $58d2: $1c
	ldh [$b3], a                                     ; $58d3: $e0 $b3
	ret nz                                           ; $58d5: $c0

	ld a, l                                          ; $58d6: $7d
	add e                                            ; $58d7: $83
	push de                                          ; $58d8: $d5
	ld c, $aa                                        ; $58d9: $0e $aa
	inc e                                            ; $58db: $1c
	inc [hl]                                         ; $58dc: $34
	jr @+$6b                                         ; $58dd: $18 $69

	jr nc, jr_066_595c                               ; $58df: $30 $7b

	jr nz, jr_066_58c3                               ; $58e1: $20 $e0

	or a                                             ; $58e3: $b7
	rst SubAFromDE                                          ; $58e4: $df
	ld bc, $927f                                     ; $58e5: $01 $7f $92
	add b                                            ; $58e8: $80
	ld c, $0b                                        ; $58e9: $0e $0b
	ld e, $13                                        ; $58eb: $1e $13
	ccf                                              ; $58ed: $3f
	ld [hl+], a                                      ; $58ee: $22
	ld a, l                                          ; $58ef: $7d
	ld b, [hl]                                       ; $58f0: $46
	ld a, l                                          ; $58f1: $7d
	ld b, [hl]                                       ; $58f2: $46
	push af                                          ; $58f3: $f5
	adc [hl]                                         ; $58f4: $8e
	ld sp, hl                                        ; $58f5: $f9
	adc [hl]                                         ; $58f6: $8e
	jp hl                                            ; $58f7: $e9


	sbc [hl]                                         ; $58f8: $9e
	or b                                             ; $58f9: $b0
	rst SubAFromDE                                          ; $58fa: $df
	ld d, b                                          ; $58fb: $50
	ld a, a                                          ; $58fc: $7f
	ld l, b                                          ; $58fd: $68
	ld [hl], a                                       ; $58fe: $77
	ld a, h                                          ; $58ff: $7c
	ld h, e                                          ; $5900: $63
	ld e, h                                          ; $5901: $5c

jr_066_5902:
	ld h, e                                          ; $5902: $63
	ld a, [hl]                                       ; $5903: $7e
	ld b, c                                          ; $5904: $41
	cp a                                             ; $5905: $bf
	ret nz                                           ; $5906: $c0

	rst $38                                          ; $5907: $ff
	sbc h                                            ; $5908: $9c
	add b                                            ; $5909: $80
	ld a, a                                          ; $590a: $7f
	add b                                            ; $590b: $80
	pop af                                           ; $590c: $f1
	rst SubAFromDE                                          ; $590d: $df
	ccf                                              ; $590e: $3f
	add c                                            ; $590f: $81
	sbc $e1                                          ; $5910: $de $e1
	rst FarCall                                          ; $5912: $f7
	ld hl, sp-$33                                    ; $5913: $f8 $cd
	ld a, $f2                                        ; $5915: $3e $f2
	rrca                                             ; $5917: $0f
	dec c                                            ; $5918: $0d
	di                                               ; $5919: $f3

jr_066_591a:
	ldh a, [c]                                       ; $591a: $f2
	db $fd                                           ; $591b: $fd

jr_066_591c:
	db $ec                                           ; $591c: $ec
	rra                                              ; $591d: $1f
	ld d, $0f                                        ; $591e: $16 $0f
	ld l, e                                          ; $5920: $6b
	rst FarCall                                          ; $5921: $f7
	ld l, h                                          ; $5922: $6c
	sbc a                                            ; $5923: $9f
	adc l                                            ; $5924: $8d
	ld b, $03                                        ; $5925: $06 $03
	inc b                                            ; $5927: $04
	cp a                                             ; $5928: $bf
	rlca                                             ; $5929: $07
	ld e, e                                          ; $592a: $5b
	ld a, $26                                        ; $592b: $3e $26
	ld l, h                                          ; $592d: $6c
	ldh [$c1], a                                     ; $592e: $e0 $c1
	db $dd                                           ; $5930: $dd
	rrca                                             ; $5931: $0f
	add e                                            ; $5932: $83
	ld c, $0f                                        ; $5933: $0e $0f
	jr nc, jr_066_5976                               ; $5935: $30 $3f

	ret nz                                           ; $5937: $c0

	rst $38                                          ; $5938: $ff
	jr c, jr_066_5902                                ; $5939: $38 $c7

	ld sp, hl                                        ; $593b: $f9
	ld b, $f9                                        ; $593c: $06 $f9
	ld b, $f3                                        ; $593e: $06 $f3
	inc c                                            ; $5940: $0c
	di                                               ; $5941: $f3
	inc c                                            ; $5942: $0c
	db $e3                                           ; $5943: $e3
	inc e                                            ; $5944: $1c
	db $e3                                           ; $5945: $e3
	inc e                                            ; $5946: $1c
	ldh [$1f], a                                     ; $5947: $e0 $1f
	ldh [$1f], a                                     ; $5949: $e0 $1f
	pop af                                           ; $594b: $f1
	ld c, $ff                                        ; $594c: $0e $ff
	nop                                              ; $594e: $00
	ld l, a                                          ; $594f: $6f
	cp $95                                           ; $5950: $fe $95
	rst GetHLinHL                                          ; $5952: $cf
	jr nc, jr_066_591c                               ; $5953: $30 $c7

	jr c, jr_066_591a                                ; $5955: $38 $c3

	inc a                                            ; $5957: $3c
	pop hl                                           ; $5958: $e1
	ld e, $e0                                        ; $5959: $1e $e0
	rra                                              ; $595b: $1f

jr_066_595c:
	pop af                                           ; $595c: $f1
	rst SubAFromDE                                          ; $595d: $df
	ld hl, sp-$7f                                    ; $595e: $f8 $81
	sub $ee                                          ; $5960: $d6 $ee
	xor e                                            ; $5962: $ab
	ld [hl], a                                       ; $5963: $77
	db $dd                                           ; $5964: $dd
	inc sp                                           ; $5965: $33
	db $dd                                           ; $5966: $dd
	inc sp                                           ; $5967: $33
	ld d, l                                          ; $5968: $55
	cp e                                             ; $5969: $bb
	and b                                            ; $596a: $a0
	rst $38                                          ; $596b: $ff
	jp $bdfc                                         ; $596c: $c3 $fc $bd


	sbc $47                                          ; $596f: $de $47
	add e                                            ; $5971: $83
	ei                                               ; $5972: $fb
	jr nc, @-$05                                     ; $5973: $30 $f9

	ld c, h                                          ; $5975: $4c

jr_066_5976:
	call z, $f686                                    ; $5976: $cc $86 $f6
	jp nz, $337a                                     ; $5979: $c2 $7a $33

	dec hl                                           ; $597c: $2b
	add hl, de                                       ; $597d: $19
	ldh [$c1], a                                     ; $597e: $e0 $c1
	adc a                                            ; $5980: $8f
	add e                                            ; $5981: $83
	ld bc, $0187                                     ; $5982: $01 $87 $01
	adc [hl]                                         ; $5985: $8e
	add e                                            ; $5986: $83
	sbc [hl]                                         ; $5987: $9e
	add e                                            ; $5988: $83
	adc a                                            ; $5989: $8f
	add d                                            ; $598a: $82
	rst JumpTable                                          ; $598b: $c7
	ld [bc], a                                       ; $598c: $02
	push bc                                          ; $598d: $c5
	ld b, $65                                        ; $598e: $06 $65
	ld b, $e1                                        ; $5990: $06 $e1
	sub d                                            ; $5992: $92
	inc b                                            ; $5993: $04
	rlca                                             ; $5994: $07
	dec d                                            ; $5995: $15
	rlca                                             ; $5996: $07
	dec h                                            ; $5997: $25
	rlca                                             ; $5998: $07
	push bc                                          ; $5999: $c5
	rlca                                             ; $599a: $07
	add l                                            ; $599b: $85
	rlca                                             ; $599c: $07
	dec b                                            ; $599d: $05
	rlca                                             ; $599e: $07
	ld b, $7b                                        ; $599f: $06 $7b
	cp $98                                           ; $59a1: $fe $98
	rst $38                                          ; $59a3: $ff
	ld b, $fd                                        ; $59a4: $06 $fd
	ld b, $ff                                        ; $59a6: $06 $ff
	inc b                                            ; $59a8: $04
	ei                                               ; $59a9: $fb
	ld a, e                                          ; $59aa: $7b
	cp $6f                                           ; $59ab: $fe $6f
	ld [hl], $ef                                     ; $59ad: $36 $ef
	rst SubAFromDE                                          ; $59af: $df
	sbc h                                            ; $59b0: $9c
	add e                                            ; $59b1: $83
	ld l, b                                          ; $59b2: $68
	ld hl, sp-$11                                    ; $59b3: $f8 $ef
	rst SubAFromDE                                          ; $59b5: $df
	sub $b9                                          ; $59b6: $d6 $b9
	add c                                            ; $59b8: $81
	ld a, [hl]                                       ; $59b9: $7e
	cp $f1                                           ; $59ba: $fe $f1
	adc a                                            ; $59bc: $8f
	ld a, [hl]                                       ; $59bd: $7e
	pop af                                           ; $59be: $f1
	inc bc                                           ; $59bf: $03
	inc b                                            ; $59c0: $04
	sbc b                                            ; $59c1: $98
	and e                                            ; $59c2: $a3
	add $d1                                          ; $59c3: $c6 $d1
	ld h, e                                          ; $59c5: $63
	call z, $f271                                    ; $59c6: $cc $71 $f2
	inc l                                            ; $59c9: $2c
	ld l, a                                          ; $59ca: $6f
	inc [hl]                                         ; $59cb: $34
	ld h, a                                          ; $59cc: $67
	ld a, [hl-]                                      ; $59cd: $3a
	ldh [$c1], a                                     ; $59ce: $e0 $c1
	add b                                            ; $59d0: $80
	ld e, d                                          ; $59d1: $5a
	or a                                             ; $59d2: $b7
	db $dd                                           ; $59d3: $dd
	scf                                              ; $59d4: $37
	or a                                             ; $59d5: $b7
	ld l, [hl]                                       ; $59d6: $6e
	cp a                                             ; $59d7: $bf
	ld l, h                                          ; $59d8: $6c
	bit 7, h                                         ; $59d9: $cb $7c
	ld d, a                                          ; $59db: $57
	ld hl, sp-$61                                    ; $59dc: $f8 $9f
	ldh a, [$be]                                     ; $59de: $f0 $be
	ldh [$bd], a                                     ; $59e0: $e0 $bd
	ldh [$79], a                                     ; $59e2: $e0 $79
	ret nz                                           ; $59e4: $c0

	ld [hl], e                                       ; $59e5: $73
	ret nz                                           ; $59e6: $c0

	and $80                                          ; $59e7: $e6 $80
	ret nz                                           ; $59e9: $c0

	add b                                            ; $59ea: $80
	nop                                              ; $59eb: $00
	add b                                            ; $59ec: $80
	ld bc, $0300                                     ; $59ed: $01 $00 $03
	adc a                                            ; $59f0: $8f
	nop                                              ; $59f1: $00
	ldh a, [rIF]                                     ; $59f2: $f0 $0f
	ldh [$1f], a                                     ; $59f4: $e0 $1f
	ld a, [$fe05]                                    ; $59f6: $fa $05 $fe
	ld bc, $03fd                                     ; $59f9: $01 $fd $03
	or $0f                                           ; $59fc: $f6 $0f
	reti                                             ; $59fe: $d9


	ccf                                              ; $59ff: $3f
	ld h, b                                          ; $5a00: $60
	scf                                              ; $5a01: $37
	ld e, a                                          ; $5a02: $5f
	db $fc                                           ; $5a03: $fc
	rst SubAFromDE                                          ; $5a04: $df
	ret nz                                           ; $5a05: $c0

	adc h                                            ; $5a06: $8c
	or b                                             ; $5a07: $b0
	ld [hl], b                                       ; $5a08: $70
	ret z                                            ; $5a09: $c8

	ld hl, sp-$4c                                    ; $5a0a: $f8 $b4
	ld a, h                                          ; $5a0c: $7c
	call z, Call_066_66bc                            ; $5a0d: $cc $bc $66
	sbc $d3                                          ; $5a10: $de $d3
	ccf                                              ; $5a12: $3f
	ld l, c                                          ; $5a13: $69
	sbc a                                            ; $5a14: $9f
	and l                                            ; $5a15: $a5
	rst SubAFromDE                                          ; $5a16: $df
	ld b, h                                          ; $5a17: $44
	rst $38                                          ; $5a18: $ff
	ld [hl+], a                                      ; $5a19: $22
	ld a, e                                          ; $5a1a: $7b
	cp $e0                                           ; $5a1b: $fe $e0
	pop bc                                           ; $5a1d: $c1
	sbc e                                            ; $5a1e: $9b
	ld a, a                                          ; $5a1f: $7f
	rst SubAFromBC                                          ; $5a20: $e7
	rst $38                                          ; $5a21: $ff
	add c                                            ; $5a22: $81
	ld h, [hl]                                       ; $5a23: $66
	ld a, [de]                                       ; $5a24: $1a
	ld [hl], e                                       ; $5a25: $73
	cp $80                                           ; $5a26: $fe $80
	ld bc, $02ce                                     ; $5a28: $01 $ce $02
	sbc h                                            ; $5a2b: $9c
	inc b                                            ; $5a2c: $04
	inc a                                            ; $5a2d: $3c
	inc b                                            ; $5a2e: $04
	ld a, b                                          ; $5a2f: $78
	ld [$08f8], sp                                   ; $5a30: $08 $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5a33: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $5a35: $f0 $10
	rra                                              ; $5a37: $1f
	ldh a, [$1f]                                     ; $5a38: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $5a3a: $f0 $1d
	cp $62                                           ; $5a3c: $fe $62
	rst $38                                          ; $5a3e: $ff
	cp d                                             ; $5a3f: $ba
	rst JumpTable                                          ; $5a40: $c7
	jp hl                                            ; $5a41: $e9


jr_066_5a42:
	scf                                              ; $5a42: $37
	dec [hl]                                         ; $5a43: $35
	ei                                               ; $5a44: $fb
	add h                                            ; $5a45: $84
	ei                                               ; $5a46: $fb
	ldh [$d9], a                                     ; $5a47: $e0 $d9
	db $dd                                           ; $5a49: $dd
	add b                                            ; $5a4a: $80
	rst SubAFromDE                                          ; $5a4b: $df
	ret nz                                           ; $5a4c: $c0

	sbc [hl]                                         ; $5a4d: $9e
	ld b, b                                          ; $5a4e: $40
	ld [hl], e                                       ; $5a4f: $73
	cp $9d                                           ; $5a50: $fe $9d
	and b                                            ; $5a52: $a0
	ldh [rPCM34], a                                  ; $5a53: $e0 $77
	cp $9e                                           ; $5a55: $fe $9e
	ld h, b                                          ; $5a57: $60
	ld l, e                                          ; $5a58: $6b
	cp $9d                                           ; $5a59: $fe $9d
	and b                                            ; $5a5b: $a0
	ld h, b                                          ; $5a5c: $60
	ld l, a                                          ; $5a5d: $6f
	cp $9d                                           ; $5a5e: $fe $9d
	jr nz, jr_066_5a42                               ; $5a60: $20 $e0

	ld l, a                                          ; $5a62: $6f
	ldh [c], a                                       ; $5a63: $e2
	ld [hl], a                                       ; $5a64: $77
	cp $d9                                           ; $5a65: $fe $d9
	add b                                            ; $5a67: $80
	cpl                                              ; $5a68: $2f
	or [hl]                                          ; $5a69: $b6
	ld a, a                                          ; $5a6a: $7f
	call z, $1895                                    ; $5a6b: $cc $95 $18
	ld hl, sp+$06                                    ; $5a6e: $f8 $06
	cp $01                                           ; $5a70: $fe $01
	rst $38                                          ; $5a72: $ff
	ccf                                              ; $5a73: $3f
	rst $38                                          ; $5a74: $ff
	sbc $e1                                          ; $5a75: $de $e1
	ld d, e                                          ; $5a77: $53
	ld d, h                                          ; $5a78: $54
	ld h, e                                          ; $5a79: $63
	cp $7c                                           ; $5a7a: $fe $7c
	ret z                                            ; $5a7c: $c8

	sbc b                                            ; $5a7d: $98
	inc a                                            ; $5a7e: $3c
	jp $ff00                                         ; $5a7f: $c3 $00 $ff


	ld e, $ff                                        ; $5a82: $1e $ff
	cp a                                             ; $5a84: $bf
	ld [de], a                                       ; $5a85: $12
	ldh a, [$6f]                                     ; $5a86: $f0 $6f
	or [hl]                                          ; $5a88: $b6
	adc a                                            ; $5a89: $8f
	adc h                                            ; $5a8a: $8c
	ld a, h                                          ; $5a8b: $7c
	add $3e                                          ; $5a8c: $c6 $3e
	ldh [c], a                                       ; $5a8e: $e2
	ld e, $e1                                        ; $5a8f: $1e $e1
	rra                                              ; $5a91: $1f
	pop af                                           ; $5a92: $f1
	rrca                                             ; $5a93: $0f
	ldh a, [rIF]                                     ; $5a94: $f0 $0f
	ld hl, sp+$07                                    ; $5a96: $f8 $07
	db $fc                                           ; $5a98: $fc
	inc bc                                           ; $5a99: $03
	ld a, e                                          ; $5a9a: $7b
	and a                                            ; $5a9b: $a7

jr_066_5a9c:
	ld [hl], e                                       ; $5a9c: $73
	cp [hl]                                          ; $5a9d: $be
	ld a, h                                          ; $5a9e: $7c
	db $fd                                           ; $5a9f: $fd
	ld a, l                                          ; $5aa0: $7d
	dec c                                            ; $5aa1: $0d
	sbc l                                            ; $5aa2: $9d
	adc a                                            ; $5aa3: $8f
	ldh a, [$e0]                                     ; $5aa4: $f0 $e0

jr_066_5aa6:
	rst SubAFromHL                                          ; $5aa6: $d7
	ld [hl], a                                       ; $5aa7: $77
	jr nz, @-$6b                                     ; $5aa8: $20 $93

	jr nc, jr_066_5a9c                               ; $5aaa: $30 $f0

	jr jr_066_5aa6                                   ; $5aac: $18 $f8

	inc b                                            ; $5aae: $04
	db $fc                                           ; $5aaf: $fc
	ld [bc], a                                       ; $5ab0: $02
	cp $c1                                           ; $5ab1: $fe $c1
	ccf                                              ; $5ab3: $3f
	ldh a, [rIF]                                     ; $5ab4: $f0 $0f
	ld l, a                                          ; $5ab6: $6f
	or [hl]                                          ; $5ab7: $b6
	rla                                              ; $5ab8: $17
	jp nc, $827f                                     ; $5ab9: $d2 $7f $82

	ld a, a                                          ; $5abc: $7f
	ret nc                                           ; $5abd: $d0

	pop af                                           ; $5abe: $f1
	ld e, $00                                        ; $5abf: $1e $00
	sbc b                                            ; $5ac1: $98
	adc b                                            ; $5ac2: $88
	ld [$9980], sp                                   ; $5ac3: $08 $80 $99
	sbc c                                            ; $5ac6: $99
	call z, $67cc                                    ; $5ac7: $cc $cc $67
	ei                                               ; $5aca: $fb
	sbc [hl]                                         ; $5acb: $9e
	ld [bc], a                                       ; $5acc: $02
	ld [hl], a                                       ; $5acd: $77
	ei                                               ; $5ace: $fb
	sbc b                                            ; $5acf: $98
	nop                                              ; $5ad0: $00
	call z, $9988                                    ; $5ad1: $cc $88 $99
	sbc c                                            ; $5ad4: $99
	ld [hl+], a                                      ; $5ad5: $22
	call z, $88de                                    ; $5ad6: $cc $de $88
	sbc [hl]                                         ; $5ad9: $9e
	call z, $bbdb                                    ; $5ada: $cc $db $bb

jr_066_5add:
	and l                                            ; $5add: $a5
	ld bc, $7794                                     ; $5ade: $01 $94 $77
	jr nz, @+$19                                     ; $5ae1: $20 $17

	ld h, b                                          ; $5ae3: $60
	ld h, a                                          ; $5ae4: $67
	ld b, b                                          ; $5ae5: $40
	ld l, a                                          ; $5ae6: $6f
	ld b, b                                          ; $5ae7: $40
	ld c, a                                          ; $5ae8: $4f
	ld b, c                                          ; $5ae9: $41
	ld c, e                                          ; $5aea: $4b
	ld [hl], a                                       ; $5aeb: $77
	cp $9d                                           ; $5aec: $fe $9d
	ld c, c                                          ; $5aee: $49
	ld l, e                                          ; $5aef: $6b
	ld a, e                                          ; $5af0: $7b
	cp $80                                           ; $5af1: $fe $80
	ld l, l                                          ; $5af3: $6d
	add hl, hl                                       ; $5af4: $29
	db $fd                                           ; $5af5: $fd
	add hl, hl                                       ; $5af6: $29
	db $fd                                           ; $5af7: $fd
	inc h                                            ; $5af8: $24
	cp $14                                           ; $5af9: $fe $14
	ld a, [hl]                                       ; $5afb: $7e
	sub d                                            ; $5afc: $92
	cp a                                             ; $5afd: $bf
	jp z, $ffcd                                      ; $5afe: $ca $cd $ff

	ld h, [hl]                                       ; $5b01: $66
	ld a, a                                          ; $5b02: $7f
	scf                                              ; $5b03: $37
	dec a                                            ; $5b04: $3d
	dec sp                                           ; $5b05: $3b
	ld l, $3f                                        ; $5b06: $2e $3f
	daa                                              ; $5b08: $27
	ccf                                              ; $5b09: $3f
	jr nz, jr_066_5b2b                               ; $5b0a: $20 $1f

	db $10                                           ; $5b0c: $10
	rra                                              ; $5b0d: $1f
	db $10                                           ; $5b0e: $10
	rrca                                             ; $5b0f: $0f
	ld [$9a07], sp                                   ; $5b10: $08 $07 $9a
	inc b                                            ; $5b13: $04
	inc bc                                           ; $5b14: $03
	ld [bc], a                                       ; $5b15: $02
	ld bc, $f901                                     ; $5b16: $01 $01 $f9
	sub c                                            ; $5b19: $91
	ld c, l                                          ; $5b1a: $4d
	rst SubAFromDE                                          ; $5b1b: $df
	sbc a                                            ; $5b1c: $9f
	sub $9c                                          ; $5b1d: $d6 $9c
	or b                                             ; $5b1f: $b0
	cp b                                             ; $5b20: $b8
	and b                                            ; $5b21: $a0
	or b                                             ; $5b22: $b0
	ldh [$b0], a                                     ; $5b23: $e0 $b0
	ldh [$f0], a                                     ; $5b25: $e0 $f0
	ld h, b                                          ; $5b27: $60
	ld [hl], e                                       ; $5b28: $73
	cp $80                                           ; $5b29: $fe $80

jr_066_5b2b:
	jr nz, jr_066_5add                               ; $5b2b: $20 $b0

	nop                                              ; $5b2d: $00
	sub b                                            ; $5b2e: $90
	inc bc                                           ; $5b2f: $03
	sub e                                            ; $5b30: $93
	add a                                            ; $5b31: $87
	add a                                            ; $5b32: $87
	add h                                            ; $5b33: $84
	rst JumpTable                                          ; $5b34: $c7
	add b                                            ; $5b35: $80
	ld b, a                                          ; $5b36: $47
	ret nz                                           ; $5b37: $c0

	ret z                                            ; $5b38: $c8

	db $fd                                           ; $5b39: $fd
	db $e4                                           ; $5b3a: $e4
	ld a, l                                          ; $5b3b: $7d
	ld h, h                                          ; $5b3c: $64
	dec a                                            ; $5b3d: $3d
	inc h                                            ; $5b3e: $24
	ld a, $2e                                        ; $5b3f: $3e $2e
	ld a, [hl-]                                      ; $5b41: $3a
	ld l, $3a                                        ; $5b42: $2e $3a
	ld a, $33                                        ; $5b44: $3e $33
	ld a, $33                                        ; $5b46: $3e $33
	ccf                                              ; $5b48: $3f
	inc hl                                           ; $5b49: $23
	adc h                                            ; $5b4a: $8c
	ld [hl+], a                                      ; $5b4b: $22
	ccf                                              ; $5b4c: $3f
	rra                                              ; $5b4d: $1f
	rst $38                                          ; $5b4e: $ff
	rst $38                                          ; $5b4f: $ff
	ldh [c], a                                       ; $5b50: $e2
	rst $38                                          ; $5b51: $ff
	nop                                              ; $5b52: $00
	rst $38                                          ; $5b53: $ff
	ccf                                              ; $5b54: $3f
	di                                               ; $5b55: $f3
	ld [hl], e                                       ; $5b56: $73
	sbc l                                            ; $5b57: $9d
	rst $38                                          ; $5b58: $ff
	sub d                                            ; $5b59: $92
	ld a, [de]                                       ; $5b5a: $1a
	dec c                                            ; $5b5b: $0d
	ld a, $1f                                        ; $5b5c: $3e $1f
	cp d                                             ; $5b5e: $ba
	inc bc                                           ; $5b5f: $03
	or a                                             ; $5b60: $b7
	ld e, a                                          ; $5b61: $5f
	rrca                                             ; $5b62: $0f
	rra                                              ; $5b63: $1f
	rra                                              ; $5b64: $1f
	rra                                              ; $5b65: $1f
	add b                                            ; $5b66: $80
	ld bc, $073f                                     ; $5b67: $01 $3f $07
	ccf                                              ; $5b6a: $3f
	rrca                                             ; $5b6b: $0f
	ld a, a                                          ; $5b6c: $7f
	ld sp, $c3ff                                     ; $5b6d: $31 $ff $c3
	db $fc                                           ; $5b70: $fc
	rrca                                             ; $5b71: $0f
	pop af                                           ; $5b72: $f1
	rst $38                                          ; $5b73: $ff
	and c                                            ; $5b74: $a1
	cp a                                             ; $5b75: $bf
	sub b                                            ; $5b76: $90
	cp a                                             ; $5b77: $bf
	sbc b                                            ; $5b78: $98
	cp a                                             ; $5b79: $bf
	sub h                                            ; $5b7a: $94
	rst SubAFromHL                                          ; $5b7b: $d7
	sub e                                            ; $5b7c: $93
	db $db                                           ; $5b7d: $db
	adc b                                            ; $5b7e: $88
	db $dd                                           ; $5b7f: $dd
	adc $ef                                          ; $5b80: $ce $ef
	ret                                              ; $5b82: $c9


	rst AddAOntoHL                                          ; $5b83: $ef
	db $e4                                           ; $5b84: $e4
	ld [hl], a                                       ; $5b85: $77
	sub e                                            ; $5b86: $93

jr_066_5b87:
	db $e4                                           ; $5b87: $e4
	ccf                                              ; $5b88: $3f
	ldh a, [c]                                       ; $5b89: $f2
	ccf                                              ; $5b8a: $3f
	jp hl                                            ; $5b8b: $e9


jr_066_5b8c:
	ccf                                              ; $5b8c: $3f
	and $37                                          ; $5b8d: $e6 $37
	db $e3                                           ; $5b8f: $e3
	or a                                             ; $5b90: $b7
	ldh [c], a                                       ; $5b91: $e2
	scf                                              ; $5b92: $37
	ld d, a                                          ; $5b93: $57
	cp $9d                                           ; $5b94: $fe $9d
	call nz, Call_066_7366                           ; $5b96: $c4 $66 $73
	cp $80                                           ; $5b99: $fe $80
	db $e4                                           ; $5b9b: $e4
	call nz, $c4ec                                   ; $5b9c: $c4 $ec $c4
	call z, $cd88                                    ; $5b9f: $cc $88 $cd
	adc c                                            ; $5ba2: $89
	ret                                              ; $5ba3: $c9


	adc c                                            ; $5ba4: $89
	db $db                                           ; $5ba5: $db
	adc c                                            ; $5ba6: $89
	sbc e                                            ; $5ba7: $9b
	ld [de], a                                       ; $5ba8: $12
	cp e                                             ; $5ba9: $bb
	ld d, c                                          ; $5baa: $51
	cp a                                             ; $5bab: $bf
	or c                                             ; $5bac: $b1
	rst SubAFromDE                                          ; $5bad: $df
	xor b                                            ; $5bae: $a8
	rst SubAFromDE                                          ; $5baf: $df
	ld e, b                                          ; $5bb0: $58
	rst AddAOntoHL                                          ; $5bb1: $ef
	ld d, l                                          ; $5bb2: $55
	xor $ed                                          ; $5bb3: $ee $ed
	or $dd                                           ; $5bb5: $f6 $dd
	ld a, $ff                                        ; $5bb7: $3e $ff
	cp $92                                           ; $5bb9: $fe $92
	ld d, e                                          ; $5bbb: $53
	cp $57                                           ; $5bbc: $fe $57
	ld a, [$fa57]                                    ; $5bbe: $fa $57 $fa
	ld c, a                                          ; $5bc1: $4f
	ld a, [$eadf]                                    ; $5bc2: $fa $df $ea
	rst SubAFromDE                                          ; $5bc5: $df
	ld [$7b5f], a                                    ; $5bc6: $ea $5f $7b
	cp $94                                           ; $5bc9: $fe $94
	ld a, $eb                                        ; $5bcb: $3e $eb
	cp [hl]                                          ; $5bcd: $be
	ld l, e                                          ; $5bce: $6b
	ld a, [hl-]                                      ; $5bcf: $3a
	ld l, a                                          ; $5bd0: $6f
	ld a, [hl+]                                      ; $5bd1: $2a
	ld a, a                                          ; $5bd2: $7f
	ld a, [hl+]                                      ; $5bd3: $2a
	ld a, a                                          ; $5bd4: $7f
	ld d, h                                          ; $5bd5: $54
	ld a, e                                          ; $5bd6: $7b
	cp $97                                           ; $5bd7: $fe $97
	push de                                          ; $5bd9: $d5
	ld a, a                                          ; $5bda: $7f
	ld d, l                                          ; $5bdb: $55
	rst $38                                          ; $5bdc: $ff
	xor c                                            ; $5bdd: $a9
	rst $38                                          ; $5bde: $ff
	xor d                                            ; $5bdf: $aa
	cp $77                                           ; $5be0: $fe $77
	cp $99                                           ; $5be2: $fe $99
	ld d, h                                          ; $5be4: $54
	db $fc                                           ; $5be5: $fc
	ld [hl], h                                       ; $5be6: $74
	db $fc                                           ; $5be7: $fc
	inc a                                            ; $5be8: $3c
	db $fc                                           ; $5be9: $fc
	dec hl                                           ; $5bea: $2b
	jr nz, jr_066_5b87                               ; $5beb: $20 $9a

	ld bc, $8791                                     ; $5bed: $01 $91 $87
	add a                                            ; $5bf0: $87
	add [hl]                                         ; $5bf1: $86
	cpl                                              ; $5bf2: $2f
	jr nz, jr_066_5b8c                               ; $5bf3: $20 $97

	ld [hl-], a                                      ; $5bf5: $32
	cpl                                              ; $5bf6: $2f
	rrca                                             ; $5bf7: $0f
	ld a, a                                          ; $5bf8: $7f
	ld a, a                                          ; $5bf9: $7f
	ldh a, [c]                                       ; $5bfa: $f2
	rst $38                                          ; $5bfb: $ff
	add b                                            ; $5bfc: $80
	ld [hl], a                                       ; $5bfd: $77
	ld e, $98                                        ; $5bfe: $1e $98
	push af                                          ; $5c00: $f5
	ld [hl], a                                       ; $5c01: $77
	sub d                                            ; $5c02: $92
	jp c, $3e0d                                      ; $5c03: $da $0d $3e

	ccf                                              ; $5c06: $3f
	inc bc                                           ; $5c07: $03
	jr nz, @+$35                                     ; $5c08: $20 $33

	jr nz, jr_066_5c8b                               ; $5c0a: $20 $7f

	inc l                                            ; $5c0c: $2c
	ld a, e                                          ; $5c0d: $7b
	ld e, $03                                        ; $5c0e: $1e $03
	add b                                            ; $5c10: $80
	ld b, e                                          ; $5c11: $43
	add b                                            ; $5c12: $80
	sub a                                            ; $5c13: $97
	ccf                                              ; $5c14: $3f
	ld [hl+], a                                      ; $5c15: $22
	ld [bc], a                                       ; $5c16: $02
	ccf                                              ; $5c17: $3f
	ccf                                              ; $5c18: $3f
	rst $38                                          ; $5c19: $ff
	rst $38                                          ; $5c1a: $ff
	ret nz                                           ; $5c1b: $c0

	ld a, e                                          ; $5c1c: $7b
	add b                                            ; $5c1d: $80
	sub a                                            ; $5c1e: $97
	nop                                              ; $5c1f: $00
	pop hl                                           ; $5c20: $e1
	scf                                              ; $5c21: $37
	di                                               ; $5c22: $f3
	ld a, [hl]                                       ; $5c23: $7e
	ccf                                              ; $5c24: $3f
	inc c                                            ; $5c25: $0c
	ld a, a                                          ; $5c26: $7f
	inc bc                                           ; $5c27: $03
	add b                                            ; $5c28: $80
	dec hl                                           ; $5c29: $2b
	add b                                            ; $5c2a: $80
	ld a, e                                          ; $5c2b: $7b
	cp $03                                           ; $5c2c: $fe $03
	add b                                            ; $5c2e: $80
	dec sp                                           ; $5c2f: $3b
	add b                                            ; $5c30: $80
	sbc h                                            ; $5c31: $9c
	rra                                              ; $5c32: $1f
	ld [bc], a                                       ; $5c33: $02
	ld [bc], a                                       ; $5c34: $02
	db $dd                                           ; $5c35: $dd
	rst $38                                          ; $5c36: $ff
	cp [hl]                                          ; $5c37: $be
	rst $38                                          ; $5c38: $ff
	rst $38                                          ; $5c39: $ff
	rst $38                                          ; $5c3a: $ff
	sbc e                                            ; $5c3b: $9b
	jp $3e3f                                         ; $5c3c: $c3 $3f $3e


	rst $38                                          ; $5c3f: $ff
	inc bc                                           ; $5c40: $03
	add b                                            ; $5c41: $80
	rra                                              ; $5c42: $1f
	add b                                            ; $5c43: $80
	add b                                            ; $5c44: $80
	ld e, h                                          ; $5c45: $5c
	db $e3                                           ; $5c46: $e3
	xor a                                            ; $5c47: $af
	ldh a, [$df]                                     ; $5c48: $f0 $df
	ldh a, [rIE]                                     ; $5c4a: $f0 $ff
	ld a, b                                          ; $5c4c: $78
	add a                                            ; $5c4d: $87
	ld a, b                                          ; $5c4e: $78
	adc a                                            ; $5c4f: $8f
	ld [hl], b                                       ; $5c50: $70
	rst AddAOntoHL                                          ; $5c51: $ef
	ld [hl], b                                       ; $5c52: $70
	ldh a, [c]                                       ; $5c53: $f2
	rrca                                             ; $5c54: $0f
	db $fd                                           ; $5c55: $fd
	ld h, $fb                                        ; $5c56: $26 $fb
	inc e                                            ; $5c58: $1c
	rst $38                                          ; $5c59: $ff
	nop                                              ; $5c5a: $00
	ld a, a                                          ; $5c5b: $7f
	add b                                            ; $5c5c: $80
	cp a                                             ; $5c5d: $bf
	ret nz                                           ; $5c5e: $c0

	ld c, [hl]                                       ; $5c5f: $4e
	ld [hl], c                                       ; $5c60: $71
	inc sp                                           ; $5c61: $33
	ccf                                              ; $5c62: $3f
	rra                                              ; $5c63: $1f
	sbc [hl]                                         ; $5c64: $9e
	rra                                              ; $5c65: $1f
	ld b, a                                          ; $5c66: $47
	ldh [$99], a                                     ; $5c67: $e0 $99
	rst $38                                          ; $5c69: $ff
	ld h, $dd                                        ; $5c6a: $26 $dd
	ld a, $e3                                        ; $5c6c: $3e $e3
	inc e                                            ; $5c6e: $1c
	rra                                              ; $5c6f: $1f
	ldh [$9a], a                                     ; $5c70: $e0 $9a
	cp $27                                           ; $5c72: $fe $27
	rst SubAFromDE                                          ; $5c74: $df
	ld a, $ff                                        ; $5c75: $3e $ff
	inc de                                           ; $5c77: $13
	ldh [$99], a                                     ; $5c78: $e0 $99
	sbc $3f                                          ; $5c7a: $de $3f
	rst SubAFromDE                                          ; $5c7c: $df
	ld a, $6f                                        ; $5c7d: $3e $6f
	sbc h                                            ; $5c7f: $9c
	ld h, a                                          ; $5c80: $67
	ldh [$b9], a                                     ; $5c81: $e0 $b9
	ld bc, $7794                                     ; $5c83: $01 $94 $77
	jr nz, @+$19                                     ; $5c86: $20 $17

	ld h, b                                          ; $5c88: $60
	ld h, a                                          ; $5c89: $67
	ld b, b                                          ; $5c8a: $40

jr_066_5c8b:
	ld l, a                                          ; $5c8b: $6f
	ld b, b                                          ; $5c8c: $40
	ld c, a                                          ; $5c8d: $4f
	ld b, c                                          ; $5c8e: $41
	ld c, e                                          ; $5c8f: $4b
	ld [hl], a                                       ; $5c90: $77
	cp $9d                                           ; $5c91: $fe $9d
	ld c, c                                          ; $5c93: $49
	ld l, e                                          ; $5c94: $6b
	ld a, e                                          ; $5c95: $7b
	cp $80                                           ; $5c96: $fe $80
	ld l, l                                          ; $5c98: $6d
	add hl, hl                                       ; $5c99: $29
	db $fd                                           ; $5c9a: $fd
	add hl, hl                                       ; $5c9b: $29
	db $fd                                           ; $5c9c: $fd
	inc h                                            ; $5c9d: $24
	cp $14                                           ; $5c9e: $fe $14
	ld a, [hl]                                       ; $5ca0: $7e
	sub d                                            ; $5ca1: $92
	cp a                                             ; $5ca2: $bf
	jp z, $ffcd                                      ; $5ca3: $ca $cd $ff

	ld h, [hl]                                       ; $5ca6: $66
	ld a, a                                          ; $5ca7: $7f
	scf                                              ; $5ca8: $37
	dec a                                            ; $5ca9: $3d
	dec sp                                           ; $5caa: $3b
	ld l, $3f                                        ; $5cab: $2e $3f
	daa                                              ; $5cad: $27
	ccf                                              ; $5cae: $3f
	jr nz, jr_066_5cd0                               ; $5caf: $20 $1f

	db $10                                           ; $5cb1: $10
	rra                                              ; $5cb2: $1f
	db $10                                           ; $5cb3: $10
	rrca                                             ; $5cb4: $0f
	ld [$9a07], sp                                   ; $5cb5: $08 $07 $9a
	inc b                                            ; $5cb8: $04
	inc bc                                           ; $5cb9: $03
	ld [bc], a                                       ; $5cba: $02
	ld bc, $f901                                     ; $5cbb: $01 $01 $f9
	sub c                                            ; $5cbe: $91
	ld c, l                                          ; $5cbf: $4d
	rst SubAFromDE                                          ; $5cc0: $df
	sbc a                                            ; $5cc1: $9f
	sub $9c                                          ; $5cc2: $d6 $9c
	or b                                             ; $5cc4: $b0
	cp b                                             ; $5cc5: $b8
	and b                                            ; $5cc6: $a0
	or b                                             ; $5cc7: $b0
	ldh [$b0], a                                     ; $5cc8: $e0 $b0
	ldh [$f0], a                                     ; $5cca: $e0 $f0
	ld h, b                                          ; $5ccc: $60
	ld [hl], e                                       ; $5ccd: $73
	cp $80                                           ; $5cce: $fe $80

jr_066_5cd0:
	jr nz, @-$4e                                     ; $5cd0: $20 $b0

	inc bc                                           ; $5cd2: $03
	sub e                                            ; $5cd3: $93
	rlca                                             ; $5cd4: $07
	sub a                                            ; $5cd5: $97
	add h                                            ; $5cd6: $84
	add a                                            ; $5cd7: $87
	add b                                            ; $5cd8: $80
	rst JumpTable                                          ; $5cd9: $c7
	add b                                            ; $5cda: $80
	ld b, a                                          ; $5cdb: $47
	ret nz                                           ; $5cdc: $c0

	ret z                                            ; $5cdd: $c8

	db $fd                                           ; $5cde: $fd
	db $e4                                           ; $5cdf: $e4
	ld a, l                                          ; $5ce0: $7d
	ld h, h                                          ; $5ce1: $64
	dec a                                            ; $5ce2: $3d
	inc h                                            ; $5ce3: $24
	ld a, $2e                                        ; $5ce4: $3e $2e
	ld a, [hl-]                                      ; $5ce6: $3a
	ld l, $3a                                        ; $5ce7: $2e $3a
	ld a, $33                                        ; $5ce9: $3e $33
	ld a, $33                                        ; $5ceb: $3e $33
	inc hl                                           ; $5ced: $23
	ccf                                              ; $5cee: $3f
	adc h                                            ; $5cef: $8c
	ld a, $ff                                        ; $5cf0: $3e $ff
	rst $38                                          ; $5cf2: $ff
	jp $02ff                                         ; $5cf3: $c3 $ff $02


	rst $38                                          ; $5cf6: $ff
	ld e, $f1                                        ; $5cf7: $1e $f1
	ld a, e                                          ; $5cf9: $7b
	rst SubAFromHL                                          ; $5cfa: $d7
	rst FarCall                                          ; $5cfb: $f7
	sbc l                                            ; $5cfc: $9d
	rst SubAFromDE                                          ; $5cfd: $df
	sub d                                            ; $5cfe: $92
	ld a, [de]                                       ; $5cff: $1a
	dec c                                            ; $5d00: $0d
	ld a, $1f                                        ; $5d01: $3e $1f
	cp d                                             ; $5d03: $ba
	inc bc                                           ; $5d04: $03
	rlca                                             ; $5d05: $07
	rrca                                             ; $5d06: $0f
	rrca                                             ; $5d07: $0f
	rra                                              ; $5d08: $1f
	rra                                              ; $5d09: $1f
	rra                                              ; $5d0a: $1f
	add b                                            ; $5d0b: $80
	ld bc, $073f                                     ; $5d0c: $01 $3f $07
	ccf                                              ; $5d0f: $3f
	rrca                                             ; $5d10: $0f
	ld a, a                                          ; $5d11: $7f
	ld sp, $c3ff                                     ; $5d12: $31 $ff $c3
	db $fc                                           ; $5d15: $fc
	rrca                                             ; $5d16: $0f
	pop af                                           ; $5d17: $f1
	rst $38                                          ; $5d18: $ff
	and c                                            ; $5d19: $a1
	cp a                                             ; $5d1a: $bf
	sub b                                            ; $5d1b: $90
	cp a                                             ; $5d1c: $bf
	sbc b                                            ; $5d1d: $98
	cp a                                             ; $5d1e: $bf
	sub h                                            ; $5d1f: $94
	rst SubAFromHL                                          ; $5d20: $d7
	sub e                                            ; $5d21: $93
	db $db                                           ; $5d22: $db
	adc b                                            ; $5d23: $88
	db $dd                                           ; $5d24: $dd
	adc $ef                                          ; $5d25: $ce $ef
	ret                                              ; $5d27: $c9


	rst AddAOntoHL                                          ; $5d28: $ef
	db $e4                                           ; $5d29: $e4

jr_066_5d2a:
	ld [hl], a                                       ; $5d2a: $77
	sub e                                            ; $5d2b: $93
	db $e4                                           ; $5d2c: $e4
	ccf                                              ; $5d2d: $3f
	ldh a, [c]                                       ; $5d2e: $f2
	ccf                                              ; $5d2f: $3f
	jp hl                                            ; $5d30: $e9


	ccf                                              ; $5d31: $3f
	and $37                                          ; $5d32: $e6 $37
	db $e3                                           ; $5d34: $e3
	or a                                             ; $5d35: $b7
	ldh [c], a                                       ; $5d36: $e2
	scf                                              ; $5d37: $37
	ld d, a                                          ; $5d38: $57
	cp $9d                                           ; $5d39: $fe $9d
	call nz, Call_066_7366                           ; $5d3b: $c4 $66 $73
	cp $80                                           ; $5d3e: $fe $80
	db $e4                                           ; $5d40: $e4
	call nz, $c4ec                                   ; $5d41: $c4 $ec $c4
	call z, $cd88                                    ; $5d44: $cc $88 $cd
	adc c                                            ; $5d47: $89
	ret                                              ; $5d48: $c9


	adc c                                            ; $5d49: $89
	db $db                                           ; $5d4a: $db
	adc c                                            ; $5d4b: $89
	sbc e                                            ; $5d4c: $9b
	ld [de], a                                       ; $5d4d: $12
	cp e                                             ; $5d4e: $bb
	ld d, c                                          ; $5d4f: $51
	cp a                                             ; $5d50: $bf
	or c                                             ; $5d51: $b1
	rst SubAFromDE                                          ; $5d52: $df
	xor b                                            ; $5d53: $a8
	rst SubAFromDE                                          ; $5d54: $df
	ld e, b                                          ; $5d55: $58
	rst AddAOntoHL                                          ; $5d56: $ef
	ld d, l                                          ; $5d57: $55
	xor $ed                                          ; $5d58: $ee $ed
	or $dd                                           ; $5d5a: $f6 $dd
	ld a, $ff                                        ; $5d5c: $3e $ff
	cp $92                                           ; $5d5e: $fe $92
	ld d, e                                          ; $5d60: $53
	cp $57                                           ; $5d61: $fe $57
	ld a, [$fa57]                                    ; $5d63: $fa $57 $fa
	ld c, a                                          ; $5d66: $4f
	ld a, [$eadf]                                    ; $5d67: $fa $df $ea
	rst SubAFromDE                                          ; $5d6a: $df
	ld [$7b5f], a                                    ; $5d6b: $ea $5f $7b
	cp $94                                           ; $5d6e: $fe $94
	ld a, $eb                                        ; $5d70: $3e $eb
	cp [hl]                                          ; $5d72: $be
	ld l, e                                          ; $5d73: $6b
	ld a, [hl-]                                      ; $5d74: $3a
	ld l, a                                          ; $5d75: $6f
	ld a, [hl+]                                      ; $5d76: $2a
	ld a, a                                          ; $5d77: $7f
	ld a, [hl+]                                      ; $5d78: $2a
	ld a, a                                          ; $5d79: $7f
	ld d, h                                          ; $5d7a: $54

jr_066_5d7b:
	ld a, e                                          ; $5d7b: $7b
	cp $97                                           ; $5d7c: $fe $97
	push de                                          ; $5d7e: $d5
	ld a, a                                          ; $5d7f: $7f
	ld d, l                                          ; $5d80: $55
	rst $38                                          ; $5d81: $ff
	xor c                                            ; $5d82: $a9
	rst $38                                          ; $5d83: $ff
	xor d                                            ; $5d84: $aa
	cp $77                                           ; $5d85: $fe $77
	cp $99                                           ; $5d87: $fe $99
	ld d, h                                          ; $5d89: $54
	db $fc                                           ; $5d8a: $fc
	ld [hl], h                                       ; $5d8b: $74
	db $fc                                           ; $5d8c: $fc
	inc a                                            ; $5d8d: $3c
	db $fc                                           ; $5d8e: $fc
	inc sp                                           ; $5d8f: $33
	jr nz, jr_066_5d2a                               ; $5d90: $20 $98

	ld bc, $0391                                     ; $5d92: $01 $91 $03
	sub e                                            ; $5d95: $93
	add [hl]                                         ; $5d96: $86
	add a                                            ; $5d97: $87
	add h                                            ; $5d98: $84
	dec hl                                           ; $5d99: $2b
	jr nz, jr_066_5d7b                               ; $5d9a: $20 $df

	ld a, a                                          ; $5d9c: $7f
	adc a                                            ; $5d9d: $8f
	db $e3                                           ; $5d9e: $e3
	rst $38                                          ; $5d9f: $ff
	add d                                            ; $5da0: $82
	rst $38                                          ; $5da1: $ff
	nop                                              ; $5da2: $00
	rst $38                                          ; $5da3: $ff
	ld c, $f3                                        ; $5da4: $0e $f3
	scf                                              ; $5da6: $37
	db $fd                                           ; $5da7: $fd
	ld a, a                                          ; $5da8: $7f
	sub d                                            ; $5da9: $92
	jp c, $3e0d                                      ; $5daa: $da $0d $3e

	ccf                                              ; $5dad: $3f
	inc bc                                           ; $5dae: $03
	jr nz, jr_066_5de4                               ; $5daf: $20 $33

	jr nz, jr_066_5e32                               ; $5db1: $20 $7f

	inc l                                            ; $5db3: $2c
	ld a, e                                          ; $5db4: $7b
	ld e, $33                                        ; $5db5: $1e $33
	add b                                            ; $5db7: $80
	sbc d                                            ; $5db8: $9a
	nop                                              ; $5db9: $00
	sub b                                            ; $5dba: $90
	inc bc                                           ; $5dbb: $03
	sub e                                            ; $5dbc: $93
	add a                                            ; $5dbd: $87
	cpl                                              ; $5dbe: $2f
	add b                                            ; $5dbf: $80
	sub a                                            ; $5dc0: $97
	ccf                                              ; $5dc1: $3f
	inc hl                                           ; $5dc2: $23
	ld [hl+], a                                      ; $5dc3: $22
	ccf                                              ; $5dc4: $3f
	ccf                                              ; $5dc5: $3f
	rst $38                                          ; $5dc6: $ff
	rst $38                                          ; $5dc7: $ff
	jp nz, $807b                                     ; $5dc8: $c2 $7b $80

	cp a                                             ; $5dcb: $bf
	rst $38                                          ; $5dcc: $ff
	pop hl                                           ; $5dcd: $e1
	sbc c                                            ; $5dce: $99
	scf                                              ; $5dcf: $37
	di                                               ; $5dd0: $f3
	ld a, [hl]                                       ; $5dd1: $7e
	ccf                                              ; $5dd2: $3f
	inc c                                            ; $5dd3: $0c
	ld a, a                                          ; $5dd4: $7f
	inc bc                                           ; $5dd5: $03
	add b                                            ; $5dd6: $80
	dec hl                                           ; $5dd7: $2b
	add b                                            ; $5dd8: $80
	ld a, e                                          ; $5dd9: $7b
	cp $2b                                           ; $5dda: $fe $2b
	add b                                            ; $5ddc: $80
	ld a, [hl]                                       ; $5ddd: $7e
	cp $df                                           ; $5dde: $fe $df
	add e                                            ; $5de0: $83
	sbc h                                            ; $5de1: $9c
	add [hl]                                         ; $5de2: $86
	rst JumpTable                                          ; $5de3: $c7

jr_066_5de4:
	add h                                            ; $5de4: $84
	cpl                                              ; $5de5: $2f
	add b                                            ; $5de6: $80
	sbc c                                            ; $5de7: $99
	rra                                              ; $5de8: $1f
	ld a, a                                          ; $5de9: $7f
	ld a, a                                          ; $5dea: $7f
	ldh [c], a                                       ; $5deb: $e2
	rst $38                                          ; $5dec: $ff
	add b                                            ; $5ded: $80
	ld l, a                                          ; $5dee: $6f
	ld a, [hl]                                       ; $5def: $7e
	ld a, a                                          ; $5df0: $7f
	sbc d                                            ; $5df1: $9a
	sbc h                                            ; $5df2: $9c
	ld a, a                                          ; $5df3: $7f
	ld a, $ff                                        ; $5df4: $3e $ff
	inc bc                                           ; $5df6: $03
	add b                                            ; $5df7: $80
	rra                                              ; $5df8: $1f
	add b                                            ; $5df9: $80
	add b                                            ; $5dfa: $80
	ld e, h                                          ; $5dfb: $5c
	db $e3                                           ; $5dfc: $e3
	xor a                                            ; $5dfd: $af
	ldh a, [$df]                                     ; $5dfe: $f0 $df
	ldh a, [rIE]                                     ; $5e00: $f0 $ff
	ld a, b                                          ; $5e02: $78
	add a                                            ; $5e03: $87
	ld a, b                                          ; $5e04: $78
	adc a                                            ; $5e05: $8f
	ld [hl], b                                       ; $5e06: $70
	rst AddAOntoHL                                          ; $5e07: $ef
	ld [hl], b                                       ; $5e08: $70
	db $fd                                           ; $5e09: $fd
	inc bc                                           ; $5e0a: $03
	cp [hl]                                          ; $5e0b: $be
	ld h, a                                          ; $5e0c: $67
	db $db                                           ; $5e0d: $db
	inc a                                            ; $5e0e: $3c
	rst SubAFromBC                                          ; $5e0f: $e7
	jr jr_066_5e91                                   ; $5e10: $18 $7f

	add b                                            ; $5e12: $80
	cp a                                             ; $5e13: $bf
	ret nz                                           ; $5e14: $c0

	ld c, [hl]                                       ; $5e15: $4e
	ld [hl], c                                       ; $5e16: $71
	inc sp                                           ; $5e17: $33
	ccf                                              ; $5e18: $3f
	rra                                              ; $5e19: $1f
	sbc [hl]                                         ; $5e1a: $9e
	rra                                              ; $5e1b: $1f
	ld b, a                                          ; $5e1c: $47
	ldh [$99], a                                     ; $5e1d: $e0 $99
	cp a                                             ; $5e1f: $bf
	ld h, a                                          ; $5e20: $67
	rst SubAFromDE                                          ; $5e21: $df
	ld a, $ef                                        ; $5e22: $3e $ef
	inc e                                            ; $5e24: $1c
	rla                                              ; $5e25: $17
	ldh [$99], a                                     ; $5e26: $e0 $99
	sbc $3f                                          ; $5e28: $de $3f
	db $fd                                           ; $5e2a: $fd
	ld e, $73                                        ; $5e2b: $1e $73
	adc h                                            ; $5e2d: $8c
	rra                                              ; $5e2e: $1f
	ldh [$97], a                                     ; $5e2f: $e0 $97
	rst $38                                          ; $5e31: $ff

jr_066_5e32:
	ccf                                              ; $5e32: $3f
	cp $1f                                           ; $5e33: $fe $1f
	ld l, l                                          ; $5e35: $6d
	sbc [hl]                                         ; $5e36: $9e
	or e                                             ; $5e37: $b3
	call z, $e06f                                    ; $5e38: $cc $6f $e0

jr_066_5e3b:
	or b                                             ; $5e3b: $b0
	ld bc, $7794                                     ; $5e3c: $01 $94 $77
	jr nz, @+$19                                     ; $5e3f: $20 $17

	ld h, b                                          ; $5e41: $60
	ld h, a                                          ; $5e42: $67
	ld b, b                                          ; $5e43: $40
	ld l, a                                          ; $5e44: $6f
	ld b, b                                          ; $5e45: $40
	ld c, a                                          ; $5e46: $4f
	ld b, c                                          ; $5e47: $41
	ld c, e                                          ; $5e48: $4b
	ld [hl], a                                       ; $5e49: $77
	cp $9d                                           ; $5e4a: $fe $9d
	ld c, c                                          ; $5e4c: $49
	ld l, e                                          ; $5e4d: $6b
	ld a, e                                          ; $5e4e: $7b
	cp $80                                           ; $5e4f: $fe $80
	ld l, l                                          ; $5e51: $6d
	add hl, hl                                       ; $5e52: $29
	db $fd                                           ; $5e53: $fd
	add hl, hl                                       ; $5e54: $29
	db $fd                                           ; $5e55: $fd
	inc h                                            ; $5e56: $24
	cp $14                                           ; $5e57: $fe $14
	ld a, [hl]                                       ; $5e59: $7e
	sub d                                            ; $5e5a: $92
	cp a                                             ; $5e5b: $bf
	jp z, $ffcd                                      ; $5e5c: $ca $cd $ff

	ld h, [hl]                                       ; $5e5f: $66
	ld a, a                                          ; $5e60: $7f
	scf                                              ; $5e61: $37
	dec a                                            ; $5e62: $3d
	dec sp                                           ; $5e63: $3b
	ld l, $3f                                        ; $5e64: $2e $3f
	daa                                              ; $5e66: $27
	ccf                                              ; $5e67: $3f
	jr nz, jr_066_5e89                               ; $5e68: $20 $1f

	db $10                                           ; $5e6a: $10
	rra                                              ; $5e6b: $1f
	db $10                                           ; $5e6c: $10
	rrca                                             ; $5e6d: $0f
	ld [$9a07], sp                                   ; $5e6e: $08 $07 $9a
	inc b                                            ; $5e71: $04
	inc bc                                           ; $5e72: $03
	ld [bc], a                                       ; $5e73: $02
	ld bc, $f901                                     ; $5e74: $01 $01 $f9
	sub c                                            ; $5e77: $91
	ld c, l                                          ; $5e78: $4d
	rst SubAFromDE                                          ; $5e79: $df
	sbc a                                            ; $5e7a: $9f
	sub $9c                                          ; $5e7b: $d6 $9c
	or b                                             ; $5e7d: $b0
	cp b                                             ; $5e7e: $b8
	and b                                            ; $5e7f: $a0
	or b                                             ; $5e80: $b0
	ldh [$b0], a                                     ; $5e81: $e0 $b0
	ldh [$f0], a                                     ; $5e83: $e0 $f0
	ld h, b                                          ; $5e85: $60
	ld [hl], e                                       ; $5e86: $73
	cp $80                                           ; $5e87: $fe $80

jr_066_5e89:
	jr nz, jr_066_5e3b                               ; $5e89: $20 $b0

	nop                                              ; $5e8b: $00
	sub b                                            ; $5e8c: $90
	inc bc                                           ; $5e8d: $03
	sub e                                            ; $5e8e: $93
	add a                                            ; $5e8f: $87
	add a                                            ; $5e90: $87

jr_066_5e91:
	add h                                            ; $5e91: $84
	rst JumpTable                                          ; $5e92: $c7
	add b                                            ; $5e93: $80
	ld b, a                                          ; $5e94: $47
	ret nz                                           ; $5e95: $c0

	ret z                                            ; $5e96: $c8

	db $fd                                           ; $5e97: $fd
	db $e4                                           ; $5e98: $e4
	ld a, l                                          ; $5e99: $7d
	ld h, h                                          ; $5e9a: $64
	dec a                                            ; $5e9b: $3d
	inc h                                            ; $5e9c: $24
	ld a, $2e                                        ; $5e9d: $3e $2e
	ld a, [hl-]                                      ; $5e9f: $3a
	ld l, $3a                                        ; $5ea0: $2e $3a
	ld a, $33                                        ; $5ea2: $3e $33
	ld a, $33                                        ; $5ea4: $3e $33
	ccf                                              ; $5ea6: $3f
	inc hl                                           ; $5ea7: $23
	adc h                                            ; $5ea8: $8c
	ld [hl+], a                                      ; $5ea9: $22
	ccf                                              ; $5eaa: $3f
	rra                                              ; $5eab: $1f
	rst $38                                          ; $5eac: $ff
	rst $38                                          ; $5ead: $ff
	ldh [c], a                                       ; $5eae: $e2
	rst $38                                          ; $5eaf: $ff
	nop                                              ; $5eb0: $00
	rst $38                                          ; $5eb1: $ff
	ccf                                              ; $5eb2: $3f
	di                                               ; $5eb3: $f3
	ld [hl], e                                       ; $5eb4: $73
	sbc l                                            ; $5eb5: $9d
	rst $38                                          ; $5eb6: $ff
	sub d                                            ; $5eb7: $92
	ld a, [de]                                       ; $5eb8: $1a
	dec c                                            ; $5eb9: $0d
	ld a, $1f                                        ; $5eba: $3e $1f
	cp d                                             ; $5ebc: $ba
	inc bc                                           ; $5ebd: $03
	rlca                                             ; $5ebe: $07
	rrca                                             ; $5ebf: $0f
	rrca                                             ; $5ec0: $0f
	rra                                              ; $5ec1: $1f
	rra                                              ; $5ec2: $1f
	rra                                              ; $5ec3: $1f
	add b                                            ; $5ec4: $80
	ld bc, $073f                                     ; $5ec5: $01 $3f $07
	ccf                                              ; $5ec8: $3f
	rrca                                             ; $5ec9: $0f
	ld a, a                                          ; $5eca: $7f
	ld sp, $c3ff                                     ; $5ecb: $31 $ff $c3
	db $fc                                           ; $5ece: $fc
	rrca                                             ; $5ecf: $0f
	pop af                                           ; $5ed0: $f1
	rst $38                                          ; $5ed1: $ff
	and c                                            ; $5ed2: $a1
	cp a                                             ; $5ed3: $bf
	sub b                                            ; $5ed4: $90
	cp a                                             ; $5ed5: $bf
	sbc b                                            ; $5ed6: $98
	cp a                                             ; $5ed7: $bf
	sub h                                            ; $5ed8: $94
	rst SubAFromHL                                          ; $5ed9: $d7
	sub e                                            ; $5eda: $93
	db $db                                           ; $5edb: $db
	adc b                                            ; $5edc: $88
	db $dd                                           ; $5edd: $dd
	adc $ef                                          ; $5ede: $ce $ef
	ret                                              ; $5ee0: $c9


	rst AddAOntoHL                                          ; $5ee1: $ef
	db $e4                                           ; $5ee2: $e4
	ld [hl], a                                       ; $5ee3: $77
	sub e                                            ; $5ee4: $93

jr_066_5ee5:
	db $e4                                           ; $5ee5: $e4
	ccf                                              ; $5ee6: $3f
	ldh a, [c]                                       ; $5ee7: $f2
	ccf                                              ; $5ee8: $3f
	jp hl                                            ; $5ee9: $e9


jr_066_5eea:
	ccf                                              ; $5eea: $3f
	and $37                                          ; $5eeb: $e6 $37
	db $e3                                           ; $5eed: $e3
	or a                                             ; $5eee: $b7
	ldh [c], a                                       ; $5eef: $e2
	scf                                              ; $5ef0: $37
	ld d, a                                          ; $5ef1: $57
	cp $9d                                           ; $5ef2: $fe $9d
	call nz, Call_066_7366                           ; $5ef4: $c4 $66 $73
	cp $80                                           ; $5ef7: $fe $80
	db $e4                                           ; $5ef9: $e4
	call nz, $c4ec                                   ; $5efa: $c4 $ec $c4
	call z, $cd88                                    ; $5efd: $cc $88 $cd
	adc c                                            ; $5f00: $89
	ret                                              ; $5f01: $c9


	adc c                                            ; $5f02: $89
	db $db                                           ; $5f03: $db
	adc c                                            ; $5f04: $89
	sbc e                                            ; $5f05: $9b
	ld [de], a                                       ; $5f06: $12
	cp e                                             ; $5f07: $bb
	ld d, c                                          ; $5f08: $51
	cp a                                             ; $5f09: $bf
	or c                                             ; $5f0a: $b1
	rst SubAFromDE                                          ; $5f0b: $df
	xor b                                            ; $5f0c: $a8
	rst SubAFromDE                                          ; $5f0d: $df
	ld e, b                                          ; $5f0e: $58
	rst AddAOntoHL                                          ; $5f0f: $ef
	ld d, l                                          ; $5f10: $55
	xor $ed                                          ; $5f11: $ee $ed
	or $dd                                           ; $5f13: $f6 $dd
	ld a, $ff                                        ; $5f15: $3e $ff
	cp $92                                           ; $5f17: $fe $92
	ld d, e                                          ; $5f19: $53
	cp $57                                           ; $5f1a: $fe $57
	ld a, [$fa57]                                    ; $5f1c: $fa $57 $fa
	ld c, a                                          ; $5f1f: $4f
	ld a, [$eadf]                                    ; $5f20: $fa $df $ea
	rst SubAFromDE                                          ; $5f23: $df
	ld [$7b5f], a                                    ; $5f24: $ea $5f $7b
	cp $94                                           ; $5f27: $fe $94
	ld a, $eb                                        ; $5f29: $3e $eb
	cp [hl]                                          ; $5f2b: $be
	ld l, e                                          ; $5f2c: $6b
	ld a, [hl-]                                      ; $5f2d: $3a
	ld l, a                                          ; $5f2e: $6f
	ld a, [hl+]                                      ; $5f2f: $2a
	ld a, a                                          ; $5f30: $7f
	ld a, [hl+]                                      ; $5f31: $2a
	ld a, a                                          ; $5f32: $7f
	ld d, h                                          ; $5f33: $54
	ld a, e                                          ; $5f34: $7b
	cp $97                                           ; $5f35: $fe $97
	push de                                          ; $5f37: $d5
	ld a, a                                          ; $5f38: $7f
	ld d, l                                          ; $5f39: $55
	rst $38                                          ; $5f3a: $ff
	xor c                                            ; $5f3b: $a9
	rst $38                                          ; $5f3c: $ff
	xor d                                            ; $5f3d: $aa
	cp $77                                           ; $5f3e: $fe $77
	cp $99                                           ; $5f40: $fe $99
	ld d, h                                          ; $5f42: $54
	db $fc                                           ; $5f43: $fc
	ld [hl], h                                       ; $5f44: $74
	db $fc                                           ; $5f45: $fc
	inc a                                            ; $5f46: $3c
	db $fc                                           ; $5f47: $fc
	dec hl                                           ; $5f48: $2b
	jr nz, jr_066_5ee5                               ; $5f49: $20 $9a

	ld bc, $8791                                     ; $5f4b: $01 $91 $87
	add a                                            ; $5f4e: $87
	add [hl]                                         ; $5f4f: $86
	cpl                                              ; $5f50: $2f
	jr nz, jr_066_5eea                               ; $5f51: $20 $97

	ld [hl-], a                                      ; $5f53: $32
	cpl                                              ; $5f54: $2f
	rrca                                             ; $5f55: $0f
	ld a, a                                          ; $5f56: $7f
	ld a, a                                          ; $5f57: $7f
	ldh a, [c]                                       ; $5f58: $f2
	rst $38                                          ; $5f59: $ff
	add b                                            ; $5f5a: $80
	ld [hl], a                                       ; $5f5b: $77
	ld e, $98                                        ; $5f5c: $1e $98
	push af                                          ; $5f5e: $f5
	ld [hl], a                                       ; $5f5f: $77
	sub d                                            ; $5f60: $92
	jp c, $3e0d                                      ; $5f61: $da $0d $3e

	ccf                                              ; $5f64: $3f
	inc bc                                           ; $5f65: $03
	jr nz, jr_066_5f9b                               ; $5f66: $20 $33

	jr nz, jr_066_5fe9                               ; $5f68: $20 $7f

	inc l                                            ; $5f6a: $2c
	ld a, e                                          ; $5f6b: $7b
	ld e, $03                                        ; $5f6c: $1e $03
	add b                                            ; $5f6e: $80
	ld b, e                                          ; $5f6f: $43
	add b                                            ; $5f70: $80
	sub a                                            ; $5f71: $97
	ccf                                              ; $5f72: $3f
	ld [hl+], a                                      ; $5f73: $22
	ld [bc], a                                       ; $5f74: $02
	ccf                                              ; $5f75: $3f
	ccf                                              ; $5f76: $3f
	rst $38                                          ; $5f77: $ff
	rst $38                                          ; $5f78: $ff
	ret nz                                           ; $5f79: $c0

	ld a, e                                          ; $5f7a: $7b
	add b                                            ; $5f7b: $80
	sub a                                            ; $5f7c: $97
	nop                                              ; $5f7d: $00
	pop hl                                           ; $5f7e: $e1
	scf                                              ; $5f7f: $37
	di                                               ; $5f80: $f3
	ld a, [hl]                                       ; $5f81: $7e
	ccf                                              ; $5f82: $3f
	inc c                                            ; $5f83: $0c
	ld a, a                                          ; $5f84: $7f
	inc bc                                           ; $5f85: $03
	add b                                            ; $5f86: $80
	dec hl                                           ; $5f87: $2b
	add b                                            ; $5f88: $80
	ld a, e                                          ; $5f89: $7b
	cp $2b                                           ; $5f8a: $fe $2b
	add b                                            ; $5f8c: $80
	ld a, a                                          ; $5f8d: $7f
	cp $df                                           ; $5f8e: $fe $df
	add e                                            ; $5f90: $83
	sbc h                                            ; $5f91: $9c
	add a                                            ; $5f92: $87
	rst JumpTable                                          ; $5f93: $c7
	add h                                            ; $5f94: $84
	dec hl                                           ; $5f95: $2b
	add b                                            ; $5f96: $80
	rst SubAFromDE                                          ; $5f97: $df
	rra                                              ; $5f98: $1f
	rst SubAFromDE                                          ; $5f99: $df
	rst $38                                          ; $5f9a: $ff

jr_066_5f9b:
	sbc [hl]                                         ; $5f9b: $9e
	ldh [rPCM34], a                                  ; $5f9c: $e0 $77
	add b                                            ; $5f9e: $80
	ld a, e                                          ; $5f9f: $7b
	cp $9b                                           ; $5fa0: $fe $9b
	jp $3e7f                                         ; $5fa2: $c3 $7f $3e


	rst $38                                          ; $5fa5: $ff
	inc bc                                           ; $5fa6: $03
	add b                                            ; $5fa7: $80
	rra                                              ; $5fa8: $1f
	add b                                            ; $5fa9: $80
	add b                                            ; $5faa: $80
	ld e, h                                          ; $5fab: $5c
	db $e3                                           ; $5fac: $e3
	xor a                                            ; $5fad: $af
	ldh a, [$df]                                     ; $5fae: $f0 $df
	ldh a, [rIE]                                     ; $5fb0: $f0 $ff
	ld a, b                                          ; $5fb2: $78
	add a                                            ; $5fb3: $87
	ld a, b                                          ; $5fb4: $78
	adc a                                            ; $5fb5: $8f
	ld [hl], b                                       ; $5fb6: $70
	rst AddAOntoHL                                          ; $5fb7: $ef
	ld [hl], b                                       ; $5fb8: $70
	db $fd                                           ; $5fb9: $fd
	ld b, $ab                                        ; $5fba: $06 $ab
	ld a, h                                          ; $5fbc: $7c
	rst SubAFromBC                                          ; $5fbd: $e7
	jr @+$01                                         ; $5fbe: $18 $ff

	nop                                              ; $5fc0: $00
	ld a, a                                          ; $5fc1: $7f
	add b                                            ; $5fc2: $80
	cp a                                             ; $5fc3: $bf
	ret nz                                           ; $5fc4: $c0

	ld c, [hl]                                       ; $5fc5: $4e
	ld [hl], c                                       ; $5fc6: $71
	inc sp                                           ; $5fc7: $33
	ccf                                              ; $5fc8: $3f
	rra                                              ; $5fc9: $1f
	sbc [hl]                                         ; $5fca: $9e
	rra                                              ; $5fcb: $1f
	ld c, a                                          ; $5fcc: $4f
	ldh [$99], a                                     ; $5fcd: $e0 $99
	push af                                          ; $5fcf: $f5
	ld c, $af                                        ; $5fd0: $0e $af
	ld a, h                                          ; $5fd2: $7c
	db $db                                           ; $5fd3: $db
	inc a                                            ; $5fd4: $3c
	rra                                              ; $5fd5: $1f
	ldh [$97], a                                     ; $5fd6: $e0 $97
	di                                               ; $5fd8: $f3
	inc c                                            ; $5fd9: $0c
	cp l                                             ; $5fda: $bd
	ld h, [hl]                                       ; $5fdb: $66
	rst $38                                          ; $5fdc: $ff
	inc a                                            ; $5fdd: $3c
	rst $38                                          ; $5fde: $ff
	jr jr_066_5ff8                                   ; $5fdf: $18 $17

	ldh [$99], a                                     ; $5fe1: $e0 $99
	db $fd                                           ; $5fe3: $fd
	ld a, $db                                        ; $5fe4: $3e $db
	inc a                                            ; $5fe6: $3c
	ld h, a                                          ; $5fe7: $67
	sbc b                                            ; $5fe8: $98

jr_066_5fe9:
	ld h, a                                          ; $5fe9: $67
	ldh [$a7], a                                     ; $5fea: $e0 $a7
	ld bc, $7794                                     ; $5fec: $01 $94 $77
	jr nz, @+$19                                     ; $5fef: $20 $17

	ld h, b                                          ; $5ff1: $60
	ld h, a                                          ; $5ff2: $67
	ld b, b                                          ; $5ff3: $40
	ld l, a                                          ; $5ff4: $6f
	ld b, b                                          ; $5ff5: $40
	ld c, a                                          ; $5ff6: $4f
	ld b, c                                          ; $5ff7: $41

jr_066_5ff8:
	ld c, e                                          ; $5ff8: $4b
	ld [hl], a                                       ; $5ff9: $77
	cp $9d                                           ; $5ffa: $fe $9d
	ld c, c                                          ; $5ffc: $49
	ld l, e                                          ; $5ffd: $6b
	ld a, e                                          ; $5ffe: $7b
	cp $80                                           ; $5fff: $fe $80
	ld l, l                                          ; $6001: $6d
	add hl, hl                                       ; $6002: $29
	db $fd                                           ; $6003: $fd
	add hl, hl                                       ; $6004: $29
	db $fd                                           ; $6005: $fd
	inc h                                            ; $6006: $24
	cp $14                                           ; $6007: $fe $14
	ld a, [hl]                                       ; $6009: $7e
	sub d                                            ; $600a: $92
	cp a                                             ; $600b: $bf
	jp z, $ffcd                                      ; $600c: $ca $cd $ff

	ld h, [hl]                                       ; $600f: $66
	ld a, a                                          ; $6010: $7f
	scf                                              ; $6011: $37
	dec a                                            ; $6012: $3d
	dec sp                                           ; $6013: $3b
	ld l, $3f                                        ; $6014: $2e $3f
	daa                                              ; $6016: $27
	ccf                                              ; $6017: $3f
	jr nz, jr_066_6039                               ; $6018: $20 $1f

	db $10                                           ; $601a: $10
	rra                                              ; $601b: $1f
	db $10                                           ; $601c: $10
	rrca                                             ; $601d: $0f
	ld [$9a07], sp                                   ; $601e: $08 $07 $9a
	inc b                                            ; $6021: $04
	inc bc                                           ; $6022: $03
	ld [bc], a                                       ; $6023: $02
	ld bc, $f901                                     ; $6024: $01 $01 $f9
	sub c                                            ; $6027: $91
	ld c, l                                          ; $6028: $4d
	rst SubAFromDE                                          ; $6029: $df
	sbc a                                            ; $602a: $9f
	sub $9c                                          ; $602b: $d6 $9c
	or b                                             ; $602d: $b0
	cp b                                             ; $602e: $b8
	and b                                            ; $602f: $a0
	or b                                             ; $6030: $b0
	ldh [$b0], a                                     ; $6031: $e0 $b0
	ldh [$f0], a                                     ; $6033: $e0 $f0
	ld h, b                                          ; $6035: $60
	ld [hl], e                                       ; $6036: $73
	cp $80                                           ; $6037: $fe $80

jr_066_6039:
	jr nz, @-$4e                                     ; $6039: $20 $b0

	nop                                              ; $603b: $00
	sub b                                            ; $603c: $90
	ld bc, $8791                                     ; $603d: $01 $91 $87
	add a                                            ; $6040: $87
	add [hl]                                         ; $6041: $86
	rst JumpTable                                          ; $6042: $c7
	add b                                            ; $6043: $80
	ld b, a                                          ; $6044: $47
	ret nz                                           ; $6045: $c0

	ret z                                            ; $6046: $c8

	db $fd                                           ; $6047: $fd
	db $e4                                           ; $6048: $e4
	ld a, l                                          ; $6049: $7d
	ld h, h                                          ; $604a: $64
	dec a                                            ; $604b: $3d
	inc h                                            ; $604c: $24
	ld a, $2e                                        ; $604d: $3e $2e
	ld a, [hl-]                                      ; $604f: $3a
	ld l, $3a                                        ; $6050: $2e $3a
	ld a, $33                                        ; $6052: $3e $33
	ld a, $33                                        ; $6054: $3e $33
	ccf                                              ; $6056: $3f
	inc hl                                           ; $6057: $23
	adc h                                            ; $6058: $8c
	ld [hl-], a                                      ; $6059: $32
	cpl                                              ; $605a: $2f
	rrca                                             ; $605b: $0f
	ld a, a                                          ; $605c: $7f
	ld a, a                                          ; $605d: $7f
	ldh a, [c]                                       ; $605e: $f2
	rst $38                                          ; $605f: $ff
	add b                                            ; $6060: $80
	rst $38                                          ; $6061: $ff
	ccf                                              ; $6062: $3f
	di                                               ; $6063: $f3
	ld [hl], e                                       ; $6064: $73
	sbc l                                            ; $6065: $9d
	rst $38                                          ; $6066: $ff
	sub d                                            ; $6067: $92
	ld a, [de]                                       ; $6068: $1a
	dec c                                            ; $6069: $0d
	ld a, $1f                                        ; $606a: $3e $1f
	cp d                                             ; $606c: $ba
	inc bc                                           ; $606d: $03
	rlca                                             ; $606e: $07
	rrca                                             ; $606f: $0f
	rrca                                             ; $6070: $0f
	rra                                              ; $6071: $1f
	rra                                              ; $6072: $1f
	rra                                              ; $6073: $1f
	add b                                            ; $6074: $80
	ld bc, $073f                                     ; $6075: $01 $3f $07
	ccf                                              ; $6078: $3f
	rrca                                             ; $6079: $0f
	ld a, a                                          ; $607a: $7f
	ld sp, $c3ff                                     ; $607b: $31 $ff $c3
	db $fc                                           ; $607e: $fc
	rrca                                             ; $607f: $0f
	pop af                                           ; $6080: $f1
	rst $38                                          ; $6081: $ff
	and c                                            ; $6082: $a1
	cp a                                             ; $6083: $bf
	sub b                                            ; $6084: $90
	cp a                                             ; $6085: $bf
	sbc b                                            ; $6086: $98
	cp a                                             ; $6087: $bf
	sub h                                            ; $6088: $94
	rst SubAFromHL                                          ; $6089: $d7
	sub e                                            ; $608a: $93
	db $db                                           ; $608b: $db
	adc b                                            ; $608c: $88
	db $dd                                           ; $608d: $dd
	adc $ef                                          ; $608e: $ce $ef
	ret                                              ; $6090: $c9


	rst AddAOntoHL                                          ; $6091: $ef
	db $e4                                           ; $6092: $e4
	ld [hl], a                                       ; $6093: $77
	sub e                                            ; $6094: $93
	db $e4                                           ; $6095: $e4
	ccf                                              ; $6096: $3f
	ldh a, [c]                                       ; $6097: $f2
	ccf                                              ; $6098: $3f
	jp hl                                            ; $6099: $e9


	ccf                                              ; $609a: $3f
	and $37                                          ; $609b: $e6 $37
	db $e3                                           ; $609d: $e3
	or a                                             ; $609e: $b7
	ldh [c], a                                       ; $609f: $e2
	scf                                              ; $60a0: $37
	ld d, a                                          ; $60a1: $57
	cp $9d                                           ; $60a2: $fe $9d
	call nz, Call_066_7366                           ; $60a4: $c4 $66 $73
	cp $80                                           ; $60a7: $fe $80
	db $e4                                           ; $60a9: $e4
	call nz, $c4ec                                   ; $60aa: $c4 $ec $c4
	call z, $cd88                                    ; $60ad: $cc $88 $cd
	adc c                                            ; $60b0: $89
	ret                                              ; $60b1: $c9


	adc c                                            ; $60b2: $89
	db $db                                           ; $60b3: $db
	adc c                                            ; $60b4: $89
	sbc e                                            ; $60b5: $9b
	ld [de], a                                       ; $60b6: $12
	cp e                                             ; $60b7: $bb
	ld d, c                                          ; $60b8: $51
	cp a                                             ; $60b9: $bf
	or c                                             ; $60ba: $b1
	rst SubAFromDE                                          ; $60bb: $df
	xor b                                            ; $60bc: $a8
	rst SubAFromDE                                          ; $60bd: $df
	ld e, b                                          ; $60be: $58
	rst AddAOntoHL                                          ; $60bf: $ef
	ld d, l                                          ; $60c0: $55
	xor $ed                                          ; $60c1: $ee $ed
	or $dd                                           ; $60c3: $f6 $dd
	ld a, $ff                                        ; $60c5: $3e $ff
	cp $92                                           ; $60c7: $fe $92
	ld d, e                                          ; $60c9: $53
	cp $57                                           ; $60ca: $fe $57
	ld a, [$fa57]                                    ; $60cc: $fa $57 $fa
	ld c, a                                          ; $60cf: $4f
	ld a, [$eadf]                                    ; $60d0: $fa $df $ea
	rst SubAFromDE                                          ; $60d3: $df
	ld [$7b5f], a                                    ; $60d4: $ea $5f $7b
	cp $94                                           ; $60d7: $fe $94
	ld a, $eb                                        ; $60d9: $3e $eb
	cp [hl]                                          ; $60db: $be
	ld l, e                                          ; $60dc: $6b
	ld a, [hl-]                                      ; $60dd: $3a
	ld l, a                                          ; $60de: $6f
	ld a, [hl+]                                      ; $60df: $2a
	ld a, a                                          ; $60e0: $7f
	ld a, [hl+]                                      ; $60e1: $2a
	ld a, a                                          ; $60e2: $7f
	ld d, h                                          ; $60e3: $54

jr_066_60e4:
	ld a, e                                          ; $60e4: $7b
	cp $97                                           ; $60e5: $fe $97
	push de                                          ; $60e7: $d5
	ld a, a                                          ; $60e8: $7f
	ld d, l                                          ; $60e9: $55
	rst $38                                          ; $60ea: $ff
	xor c                                            ; $60eb: $a9
	rst $38                                          ; $60ec: $ff
	xor d                                            ; $60ed: $aa
	cp $77                                           ; $60ee: $fe $77
	cp $99                                           ; $60f0: $fe $99
	ld d, h                                          ; $60f2: $54
	db $fc                                           ; $60f3: $fc
	ld [hl], h                                       ; $60f4: $74
	db $fc                                           ; $60f5: $fc
	inc a                                            ; $60f6: $3c
	db $fc                                           ; $60f7: $fc
	dec hl                                           ; $60f8: $2b
	jr nz, jr_066_617a                               ; $60f9: $20 $7f

	cp $df                                           ; $60fb: $fe $df
	add e                                            ; $60fd: $83
	sbc h                                            ; $60fe: $9c
	add a                                            ; $60ff: $87
	rst JumpTable                                          ; $6100: $c7
	add h                                            ; $6101: $84
	dec hl                                           ; $6102: $2b
	jr nz, jr_066_60e4                               ; $6103: $20 $df

	ccf                                              ; $6105: $3f
	ld a, a                                          ; $6106: $7f
	jr nz, @-$6b                                     ; $6107: $20 $93

	ret nz                                           ; $6109: $c0

	rst $38                                          ; $610a: $ff
	nop                                              ; $610b: $00
	rst $38                                          ; $610c: $ff
	ccf                                              ; $610d: $3f
	push af                                          ; $610e: $f5
	ld [hl], a                                       ; $610f: $77
	sub d                                            ; $6110: $92
	jp c, $3e0d                                      ; $6111: $da $0d $3e

	ccf                                              ; $6114: $3f
	inc bc                                           ; $6115: $03
	jr nz, @+$35                                     ; $6116: $20 $33

	jr nz, jr_066_6199                               ; $6118: $20 $7f

	inc l                                            ; $611a: $2c
	ld a, e                                          ; $611b: $7b
	ld e, $03                                        ; $611c: $1e $03
	add b                                            ; $611e: $80
	ld b, e                                          ; $611f: $43
	add b                                            ; $6120: $80
	sub a                                            ; $6121: $97
	ccf                                              ; $6122: $3f
	ld [hl+], a                                      ; $6123: $22
	ld [bc], a                                       ; $6124: $02
	rra                                              ; $6125: $1f
	rra                                              ; $6126: $1f
	rst $38                                          ; $6127: $ff
	rst $38                                          ; $6128: $ff
	ldh [$7b], a                                     ; $6129: $e0 $7b
	add b                                            ; $612b: $80
	sub a                                            ; $612c: $97
	nop                                              ; $612d: $00
	pop hl                                           ; $612e: $e1
	scf                                              ; $612f: $37
	di                                               ; $6130: $f3
	ld a, [hl]                                       ; $6131: $7e
	ccf                                              ; $6132: $3f
	inc c                                            ; $6133: $0c
	ld a, a                                          ; $6134: $7f
	inc bc                                           ; $6135: $03
	add b                                            ; $6136: $80
	dec hl                                           ; $6137: $2b
	add b                                            ; $6138: $80
	ld a, e                                          ; $6139: $7b
	cp $23                                           ; $613a: $fe $23
	add b                                            ; $613c: $80
	rst SubAFromDE                                          ; $613d: $df
	add c                                            ; $613e: $81
	ld a, a                                          ; $613f: $7f
	add b                                            ; $6140: $80
	sbc [hl]                                         ; $6141: $9e
	add [hl]                                         ; $6142: $86
	dec hl                                           ; $6143: $2b
	add b                                            ; $6144: $80
	rst SubAFromDE                                          ; $6145: $df
	rrca                                             ; $6146: $0f
	rst SubAFromDE                                          ; $6147: $df
	ld a, a                                          ; $6148: $7f
	sbc [hl]                                         ; $6149: $9e
	ldh a, [$7a]                                     ; $614a: $f0 $7a
	ld e, $bf                                        ; $614c: $1e $bf
	rst $38                                          ; $614e: $ff
	rst $38                                          ; $614f: $ff
	sbc e                                            ; $6150: $9b
	jp $3e7f                                         ; $6151: $c3 $7f $3e


	rst $38                                          ; $6154: $ff
	inc bc                                           ; $6155: $03
	add b                                            ; $6156: $80
	rra                                              ; $6157: $1f
	add b                                            ; $6158: $80
	add b                                            ; $6159: $80
	ld e, h                                          ; $615a: $5c
	db $e3                                           ; $615b: $e3
	xor a                                            ; $615c: $af
	ldh a, [$df]                                     ; $615d: $f0 $df
	ldh a, [rIE]                                     ; $615f: $f0 $ff
	ld a, b                                          ; $6161: $78
	add a                                            ; $6162: $87
	ld a, b                                          ; $6163: $78
	adc a                                            ; $6164: $8f
	ld [hl], b                                       ; $6165: $70
	rst AddAOntoHL                                          ; $6166: $ef
	ld [hl], b                                       ; $6167: $70
	rst $38                                          ; $6168: $ff
	nop                                              ; $6169: $00
	xor l                                            ; $616a: $ad
	ld a, [hl]                                       ; $616b: $7e
	rst SubAFromBC                                          ; $616c: $e7
	jr @+$01                                         ; $616d: $18 $ff

	nop                                              ; $616f: $00
	ld a, a                                          ; $6170: $7f
	add b                                            ; $6171: $80
	cp a                                             ; $6172: $bf
	ret nz                                           ; $6173: $c0

	ld c, [hl]                                       ; $6174: $4e
	ld [hl], c                                       ; $6175: $71
	inc sp                                           ; $6176: $33
	ccf                                              ; $6177: $3f
	rra                                              ; $6178: $1f
	sbc [hl]                                         ; $6179: $9e

jr_066_617a:
	rra                                              ; $617a: $1f
	ld b, a                                          ; $617b: $47
	ldh [$9b], a                                     ; $617c: $e0 $9b
	xor a                                            ; $617e: $af
	ld a, h                                          ; $617f: $7c
	db $db                                           ; $6180: $db
	inc a                                            ; $6181: $3c
	rla                                              ; $6182: $17
	ldh [$99], a                                     ; $6183: $e0 $99
	cp a                                             ; $6185: $bf
	ld h, h                                          ; $6186: $64
	rst $38                                          ; $6187: $ff
	inc a                                            ; $6188: $3c
	db $db                                           ; $6189: $db
	inc a                                            ; $618a: $3c
	rlca                                             ; $618b: $07
	ldh [$9d], a                                     ; $618c: $e0 $9d
	ld h, a                                          ; $618e: $67
	sbc b                                            ; $618f: $98
	ld h, a                                          ; $6190: $67
	ldh [$c5], a                                     ; $6191: $e0 $c5
	ld bc, $7794                                     ; $6193: $01 $94 $77
	jr nz, @+$19                                     ; $6196: $20 $17

	ld h, b                                          ; $6198: $60

jr_066_6199:
	ld h, a                                          ; $6199: $67
	ld b, b                                          ; $619a: $40
	ld l, a                                          ; $619b: $6f
	ld b, b                                          ; $619c: $40
	ld c, a                                          ; $619d: $4f
	ld b, c                                          ; $619e: $41
	ld c, e                                          ; $619f: $4b
	ld [hl], a                                       ; $61a0: $77
	cp $9d                                           ; $61a1: $fe $9d
	ld c, c                                          ; $61a3: $49
	ld l, e                                          ; $61a4: $6b
	ld a, e                                          ; $61a5: $7b
	cp $80                                           ; $61a6: $fe $80
	ld l, l                                          ; $61a8: $6d
	add hl, hl                                       ; $61a9: $29
	db $fd                                           ; $61aa: $fd
	add hl, hl                                       ; $61ab: $29
	db $fd                                           ; $61ac: $fd
	inc h                                            ; $61ad: $24
	cp $14                                           ; $61ae: $fe $14
	ld a, [hl]                                       ; $61b0: $7e
	sub d                                            ; $61b1: $92
	cp a                                             ; $61b2: $bf
	jp z, $ffcd                                      ; $61b3: $ca $cd $ff

	ld h, [hl]                                       ; $61b6: $66
	ld a, a                                          ; $61b7: $7f
	scf                                              ; $61b8: $37
	dec a                                            ; $61b9: $3d
	dec sp                                           ; $61ba: $3b
	ld l, $3f                                        ; $61bb: $2e $3f
	daa                                              ; $61bd: $27
	ccf                                              ; $61be: $3f
	jr nz, jr_066_61e0                               ; $61bf: $20 $1f

	db $10                                           ; $61c1: $10
	rra                                              ; $61c2: $1f
	db $10                                           ; $61c3: $10
	rrca                                             ; $61c4: $0f
	ld [$9a07], sp                                   ; $61c5: $08 $07 $9a
	inc b                                            ; $61c8: $04
	inc bc                                           ; $61c9: $03
	ld [bc], a                                       ; $61ca: $02
	ld bc, $f901                                     ; $61cb: $01 $01 $f9
	sub c                                            ; $61ce: $91
	ld c, l                                          ; $61cf: $4d
	rst SubAFromDE                                          ; $61d0: $df
	sbc a                                            ; $61d1: $9f
	sub $9c                                          ; $61d2: $d6 $9c
	or b                                             ; $61d4: $b0
	cp b                                             ; $61d5: $b8
	and b                                            ; $61d6: $a0
	or b                                             ; $61d7: $b0
	ldh [$b0], a                                     ; $61d8: $e0 $b0
	ldh [$f0], a                                     ; $61da: $e0 $f0
	ld h, b                                          ; $61dc: $60
	ld [hl], e                                       ; $61dd: $73
	cp $9d                                           ; $61de: $fe $9d

jr_066_61e0:
	jr nz, @-$4e                                     ; $61e0: $20 $b0

	cp a                                             ; $61e2: $bf
	sub b                                            ; $61e3: $90
	sub b                                            ; $61e4: $90
	sbc $80                                          ; $61e5: $de $80
	add b                                            ; $61e7: $80
	ret nz                                           ; $61e8: $c0

	add e                                            ; $61e9: $83
	ld b, e                                          ; $61ea: $43
	jp $fdc8                                         ; $61eb: $c3 $c8 $fd


	db $e4                                           ; $61ee: $e4
	ld a, l                                          ; $61ef: $7d
	ld h, h                                          ; $61f0: $64
	dec a                                            ; $61f1: $3d
	inc h                                            ; $61f2: $24
	ld a, $2e                                        ; $61f3: $3e $2e
	ld a, [hl-]                                      ; $61f5: $3a
	ld l, $3a                                        ; $61f6: $2e $3a
	ld a, $33                                        ; $61f8: $3e $33
	ld a, $33                                        ; $61fa: $3e $33
	ccf                                              ; $61fc: $3f
	inc hl                                           ; $61fd: $23
	ccf                                              ; $61fe: $3f
	ld [hl+], a                                      ; $61ff: $22
	ld [bc], a                                       ; $6200: $02
	inc bc                                           ; $6201: $03
	rlca                                             ; $6202: $07
	rra                                              ; $6203: $1f
	rra                                              ; $6204: $1f
	ld a, b                                          ; $6205: $78
	ld a, a                                          ; $6206: $7f
	sub l                                            ; $6207: $95
	ldh [rIE], a                                     ; $6208: $e0 $ff
	add b                                            ; $620a: $80
	rst $38                                          ; $620b: $ff
	nop                                              ; $620c: $00
	rst $38                                          ; $620d: $ff
	jp $3e7f                                         ; $620e: $c3 $7f $3e


	rst $38                                          ; $6211: $ff
	cp d                                             ; $6212: $ba
	inc bc                                           ; $6213: $03
	rlca                                             ; $6214: $07
	rrca                                             ; $6215: $0f
	rrca                                             ; $6216: $0f
	rra                                              ; $6217: $1f
	rra                                              ; $6218: $1f
	rra                                              ; $6219: $1f
	add b                                            ; $621a: $80
	ld bc, $073f                                     ; $621b: $01 $3f $07
	ccf                                              ; $621e: $3f
	rrca                                             ; $621f: $0f
	ld a, a                                          ; $6220: $7f
	ld sp, $c3ff                                     ; $6221: $31 $ff $c3
	db $fc                                           ; $6224: $fc
	rrca                                             ; $6225: $0f
	pop af                                           ; $6226: $f1
	rst $38                                          ; $6227: $ff
	and c                                            ; $6228: $a1
	cp a                                             ; $6229: $bf
	sub b                                            ; $622a: $90
	cp a                                             ; $622b: $bf
	sbc b                                            ; $622c: $98
	cp a                                             ; $622d: $bf
	sub h                                            ; $622e: $94
	rst SubAFromHL                                          ; $622f: $d7
	sub e                                            ; $6230: $93
	db $db                                           ; $6231: $db
	adc b                                            ; $6232: $88
	db $dd                                           ; $6233: $dd

jr_066_6234:
	adc $ef                                          ; $6234: $ce $ef
	ret                                              ; $6236: $c9


	rst AddAOntoHL                                          ; $6237: $ef
	db $e4                                           ; $6238: $e4
	ld [hl], a                                       ; $6239: $77

jr_066_623a:
	sub h                                            ; $623a: $94
	db $e4                                           ; $623b: $e4
	ccf                                              ; $623c: $3f
	ld [hl], d                                       ; $623d: $72
	cp a                                             ; $623e: $bf
	jp hl                                            ; $623f: $e9


	cp a                                             ; $6240: $bf
	and $37                                          ; $6241: $e6 $37
	db $e3                                           ; $6243: $e3
	scf                                              ; $6244: $37
	ldh [c], a                                       ; $6245: $e2
	ld d, e                                          ; $6246: $53
	cp $9d                                           ; $6247: $fe $9d
	call nz, Call_066_7366                           ; $6249: $c4 $66 $73
	cp $80                                           ; $624c: $fe $80
	db $e4                                           ; $624e: $e4
	call nz, $c4ec                                   ; $624f: $c4 $ec $c4
	call z, $cd88                                    ; $6252: $cc $88 $cd
	adc c                                            ; $6255: $89
	ret                                              ; $6256: $c9


	adc c                                            ; $6257: $89
	db $db                                           ; $6258: $db

jr_066_6259:
	adc c                                            ; $6259: $89
	sbc e                                            ; $625a: $9b
	ld [de], a                                       ; $625b: $12
	cp e                                             ; $625c: $bb
	ld d, c                                          ; $625d: $51
	cp a                                             ; $625e: $bf
	or c                                             ; $625f: $b1
	rst SubAFromDE                                          ; $6260: $df
	xor b                                            ; $6261: $a8
	rst SubAFromDE                                          ; $6262: $df
	ld e, b                                          ; $6263: $58
	rst AddAOntoHL                                          ; $6264: $ef
	ld d, l                                          ; $6265: $55
	xor $ed                                          ; $6266: $ee $ed
	or $dd                                           ; $6268: $f6 $dd
	ld a, $ff                                        ; $626a: $3e $ff
	cp $92                                           ; $626c: $fe $92
	ld d, e                                          ; $626e: $53
	cp $57                                           ; $626f: $fe $57
	ld a, [$fa57]                                    ; $6271: $fa $57 $fa
	ld c, a                                          ; $6274: $4f
	ld a, [$eadf]                                    ; $6275: $fa $df $ea
	rst SubAFromDE                                          ; $6278: $df
	ld [$7b5f], a                                    ; $6279: $ea $5f $7b
	cp $94                                           ; $627c: $fe $94
	ld a, $eb                                        ; $627e: $3e $eb
	cp [hl]                                          ; $6280: $be
	ld l, e                                          ; $6281: $6b
	ld a, [hl-]                                      ; $6282: $3a
	ld l, a                                          ; $6283: $6f
	ld a, [hl+]                                      ; $6284: $2a
	ld a, a                                          ; $6285: $7f
	ld a, [hl+]                                      ; $6286: $2a
	ld a, a                                          ; $6287: $7f
	ld d, h                                          ; $6288: $54
	ld a, e                                          ; $6289: $7b
	cp $97                                           ; $628a: $fe $97
	push de                                          ; $628c: $d5
	ld a, a                                          ; $628d: $7f
	ld d, l                                          ; $628e: $55
	rst $38                                          ; $628f: $ff
	xor c                                            ; $6290: $a9
	rst $38                                          ; $6291: $ff
	xor d                                            ; $6292: $aa
	cp $77                                           ; $6293: $fe $77
	cp $99                                           ; $6295: $fe $99
	ld d, h                                          ; $6297: $54
	db $fc                                           ; $6298: $fc
	ld [hl], h                                       ; $6299: $74
	db $fc                                           ; $629a: $fc
	inc a                                            ; $629b: $3c
	db $fc                                           ; $629c: $fc
	dec de                                           ; $629d: $1b
	jr nz, jr_066_623a                               ; $629e: $20 $9a

	add e                                            ; $62a0: $83
	jp Jump_066_4383                                 ; $62a1: $c3 $83 $43


	ret nz                                           ; $62a4: $c0

	ccf                                              ; $62a5: $3f
	jr nz, jr_066_6234                               ; $62a6: $20 $8c

	ld a, $23                                        ; $62a8: $3e $23
	inc bc                                           ; $62aa: $03
	rrca                                             ; $62ab: $0f
	rrca                                             ; $62ac: $0f
	ld a, $3f                                        ; $62ad: $3e $3f
	ldh a, [rIE]                                     ; $62af: $f0 $ff
	ret nz                                           ; $62b1: $c0

	rst $38                                          ; $62b2: $ff
	nop                                              ; $62b3: $00
	pop hl                                           ; $62b4: $e1
	scf                                              ; $62b5: $37
	di                                               ; $62b6: $f3
	ld a, [hl]                                       ; $62b7: $7e
	ccf                                              ; $62b8: $3f
	inc c                                            ; $62b9: $0c
	ld a, a                                          ; $62ba: $7f
	inc bc                                           ; $62bb: $03
	jr nz, jr_066_6315                               ; $62bc: $20 $57

	jr nz, jr_066_6259                               ; $62be: $20 $99

	ld h, h                                          ; $62c0: $64
	cp a                                             ; $62c1: $bf
	ldh a, [c]                                       ; $62c2: $f2
	cp a                                             ; $62c3: $bf
	jp hl                                            ; $62c4: $e9


	ccf                                              ; $62c5: $3f
	ld h, a                                          ; $62c6: $67
	jr nz, jr_066_62ec                               ; $62c7: $20 $23

	add b                                            ; $62c9: $80
	rst SubAFromDE                                          ; $62ca: $df
	add c                                            ; $62cb: $81
	ld a, a                                          ; $62cc: $7f
	add b                                            ; $62cd: $80
	sbc [hl]                                         ; $62ce: $9e
	add d                                            ; $62cf: $82
	scf                                              ; $62d0: $37
	add b                                            ; $62d1: $80
	adc h                                            ; $62d2: $8c
	ld [hl-], a                                      ; $62d3: $32
	cpl                                              ; $62d4: $2f
	rrca                                             ; $62d5: $0f
	ccf                                              ; $62d6: $3f
	ccf                                              ; $62d7: $3f
	ld [hl], d                                       ; $62d8: $72
	ld a, a                                          ; $62d9: $7f
	ret nz                                           ; $62da: $c0

	rst $38                                          ; $62db: $ff
	adc a                                            ; $62dc: $8f
	rst $38                                          ; $62dd: $ff
	ccf                                              ; $62de: $3f
	push af                                          ; $62df: $f5
	ld [hl], a                                       ; $62e0: $77
	sub d                                            ; $62e1: $92
	jp c, $3e0d                                      ; $62e2: $da $0d $3e

	ccf                                              ; $62e5: $3f
	inc bc                                           ; $62e6: $03
	add b                                            ; $62e7: $80
	ld c, [hl]                                       ; $62e8: $4e
	and b                                            ; $62e9: $a0
	sbc l                                            ; $62ea: $9d
	ldh a, [c]                                       ; $62eb: $f2

jr_066_62ec:
	ccf                                              ; $62ec: $3f
	ld [hl], e                                       ; $62ed: $73
	add b                                            ; $62ee: $80
	sbc [hl]                                         ; $62ef: $9e
	or a                                             ; $62f0: $b7
	inc de                                           ; $62f1: $13
	add b                                            ; $62f2: $80
	sbc $83                                          ; $62f3: $de $83
	sbc l                                            ; $62f5: $9d
	jp $2380                                         ; $62f6: $c3 $80 $23


	add b                                            ; $62f9: $80
	sub c                                            ; $62fa: $91
	ldh a, [c]                                       ; $62fb: $f2
	rst $38                                          ; $62fc: $ff
	rst GetHLinHL                                          ; $62fd: $cf
	rst $38                                          ; $62fe: $ff
	ccf                                              ; $62ff: $3f
	di                                               ; $6300: $f3
	ld [hl], e                                       ; $6301: $73
	sbc l                                            ; $6302: $9d
	rst $38                                          ; $6303: $ff
	sub d                                            ; $6304: $92
	ld a, [de]                                       ; $6305: $1a
	dec c                                            ; $6306: $0d
	ld a, $1f                                        ; $6307: $3e $1f
	inc bc                                           ; $6309: $03
	add b                                            ; $630a: $80
	dec sp                                           ; $630b: $3b
	add b                                            ; $630c: $80
	sbc [hl]                                         ; $630d: $9e
	or a                                             ; $630e: $b7
	ld l, a                                          ; $630f: $6f
	nop                                              ; $6310: $00
	adc l                                            ; $6311: $8d
	ld e, h                                          ; $6312: $5c
	db $e3                                           ; $6313: $e3
	xor a                                            ; $6314: $af

jr_066_6315:
	ldh a, [$df]                                     ; $6315: $f0 $df
	ldh a, [rIE]                                     ; $6317: $f0 $ff
	ld a, b                                          ; $6319: $78
	add a                                            ; $631a: $87
	ld a, b                                          ; $631b: $78
	adc a                                            ; $631c: $8f
	ld [hl], b                                       ; $631d: $70
	rst AddAOntoHL                                          ; $631e: $ef
	ld [hl], b                                       ; $631f: $70
	rst $38                                          ; $6320: $ff
	nop                                              ; $6321: $00
	cp e                                             ; $6322: $bb
	ld a, h                                          ; $6323: $7c
	ld a, c                                          ; $6324: $79
	call z, $0094                                    ; $6325: $cc $94 $00
	ld a, a                                          ; $6328: $7f
	add b                                            ; $6329: $80
	cp a                                             ; $632a: $bf
	ret nz                                           ; $632b: $c0

	ld c, [hl]                                       ; $632c: $4e
	ld [hl], c                                       ; $632d: $71
	inc sp                                           ; $632e: $33
	ccf                                              ; $632f: $3f
	rra                                              ; $6330: $1f
	rra                                              ; $6331: $1f
	ld c, a                                          ; $6332: $4f
	ldh [$97], a                                     ; $6333: $e0 $97
	ei                                               ; $6335: $fb
	inc b                                            ; $6336: $04
	cp l                                             ; $6337: $bd
	ld h, [hl]                                       ; $6338: $66
	db $fd                                           ; $6339: $fd
	ld a, $fb                                        ; $633a: $3e $fb
	inc e                                            ; $633c: $1c
	daa                                              ; $633d: $27
	ldh [hDisp1_WY], a                                     ; $633e: $e0 $95
	di                                               ; $6340: $f3
	inc c                                            ; $6341: $0c
	cp l                                             ; $6342: $bd
	ld h, [hl]                                       ; $6343: $66
	cp a                                             ; $6344: $bf
	ld a, [hl]                                       ; $6345: $7e
	db $dd                                           ; $6346: $dd
	ld a, $63                                        ; $6347: $3e $63
	sbc h                                            ; $6349: $9c
	rla                                              ; $634a: $17
	ldh [$97], a                                     ; $634b: $e0 $97
	rst $38                                          ; $634d: $ff
	ld a, $5d                                        ; $634e: $3e $5d
	cp [hl]                                          ; $6350: $be
	and e                                            ; $6351: $a3
	call c, $615e                                    ; $6352: $dc $5e $61
	ld [hl], a                                       ; $6355: $77
	ldh [$74], a                                     ; $6356: $e0 $74
	ld [bc], a                                       ; $6358: $02
	pop af                                           ; $6359: $f1
	rst SubAFromDE                                          ; $635a: $df
	inc bc                                           ; $635b: $03
	sub h                                            ; $635c: $94
	rlca                                             ; $635d: $07
	inc b                                            ; $635e: $04
	rrca                                             ; $635f: $0f
	ld [$1c1f], sp                                   ; $6360: $08 $1f $1c
	inc de                                           ; $6363: $13
	rra                                              ; $6364: $1f
	jr nz, jr_066_63a6                               ; $6365: $20 $3f

	ld hl, $fe7b                                     ; $6367: $21 $7b $fe
	db $ed                                           ; $636a: $ed
	db $dd                                           ; $636b: $dd
	ld bc, $029a                                     ; $636c: $01 $9a $02
	inc bc                                           ; $636f: $03
	ld [bc], a                                       ; $6370: $02
	inc bc                                           ; $6371: $03
	dec b                                            ; $6372: $05
	sbc $07                                          ; $6373: $de $07
	add b                                            ; $6375: $80
	ld b, $07                                        ; $6376: $06 $07
	inc b                                            ; $6378: $04
	rlca                                             ; $6379: $07
	ld [$190f], sp                                   ; $637a: $08 $0f $19
	rra                                              ; $637d: $1f
	ccf                                              ; $637e: $3f
	ld h, $3f                                        ; $637f: $26 $3f
	dec h                                            ; $6381: $25
	ld e, a                                          ; $6382: $5f
	ld a, e                                          ; $6383: $7b
	adc a                                            ; $6384: $8f
	ld a, [$f41c]                                    ; $6385: $fa $1c $f4
	cp b                                             ; $6388: $b8
	add sp, -$10                                     ; $6389: $e8 $f0
	ld d, b                                          ; $638b: $50
	ld [hl], b                                       ; $638c: $70
	ret nc                                           ; $638d: $d0

	ldh [$a0], a                                     ; $638e: $e0 $a0
	pop hl                                           ; $6390: $e1
	and b                                            ; $6391: $a0
	pop bc                                           ; $6392: $c1
	ld b, c                                          ; $6393: $41
	pop bc                                           ; $6394: $c1
	sbc [hl]                                         ; $6395: $9e
	ld b, c                                          ; $6396: $41
	jp hl                                            ; $6397: $e9


	rst SubAFromDE                                          ; $6398: $df
	inc bc                                           ; $6399: $03
	adc c                                            ; $639a: $89
	inc c                                            ; $639b: $0c
	rrca                                             ; $639c: $0f
	ccf                                              ; $639d: $3f
	ccf                                              ; $639e: $3f
	rlca                                             ; $639f: $07
	ld b, $0b                                        ; $63a0: $06 $0b
	inc c                                            ; $63a2: $0c
	ld d, $19                                        ; $63a3: $16 $19
	dec e                                            ; $63a5: $1d

jr_066_63a6:
	inc de                                           ; $63a6: $13
	ld a, [hl+]                                      ; $63a7: $2a
	scf                                              ; $63a8: $37
	dec [hl]                                         ; $63a9: $35
	ld l, $37                                        ; $63aa: $2e $37
	inc l                                            ; $63ac: $2c
	ld e, e                                          ; $63ad: $5b
	ld l, h                                          ; $63ae: $6c
	ld l, a                                          ; $63af: $6f
	ld e, b                                          ; $63b0: $58
	ldh [$c1], a                                     ; $63b1: $e0 $c1
	rst SubAFromDE                                          ; $63b3: $df
	rst $38                                          ; $63b4: $ff
	add b                                            ; $63b5: $80
	cp c                                             ; $63b6: $b9
	add c                                            ; $63b7: $81
	rst $38                                          ; $63b8: $ff
	rst $38                                          ; $63b9: $ff
	ld [bc], a                                       ; $63ba: $02

jr_066_63bb:
	cp $03                                           ; $63bb: $fe $03
	cp $43                                           ; $63bd: $fe $43
	cp $8f                                           ; $63bf: $fe $8f
	cp $36                                           ; $63c1: $fe $36
	sub $3f                                          ; $63c3: $d6 $3f
	xor [hl]                                         ; $63c5: $ae
	ld a, e                                          ; $63c6: $7b
	ld e, a                                          ; $63c7: $5f
	rst FarCall                                          ; $63c8: $f7
	cp e                                             ; $63c9: $bb
	rst SubAFromHL                                          ; $63ca: $d7
	ld a, e                                          ; $63cb: $7b
	xor e                                            ; $63cc: $ab
	db $d3                                           ; $63cd: $d3
	ld h, c                                          ; $63ce: $61
	sub e                                            ; $63cf: $93
	add h                                            ; $63d0: $84
	ld [bc], a                                       ; $63d1: $02
	ld [bc], a                                       ; $63d2: $02
	inc b                                            ; $63d3: $04
	inc b                                            ; $63d4: $04
	rst SubAFromDE                                          ; $63d5: $df
	ld [$10df], sp                                   ; $63d6: $08 $df $10
	rst SubAFromDE                                          ; $63d9: $df
	jr nz, jr_066_63bb                               ; $63da: $20 $df

	ld h, b                                          ; $63dc: $60
	sbc c                                            ; $63dd: $99
	ret nz                                           ; $63de: $c0

	add b                                            ; $63df: $80
	ret nz                                           ; $63e0: $c0

	nop                                              ; $63e1: $00
	add b                                            ; $63e2: $80
	add b                                            ; $63e3: $80
	ldh a, [$df]                                     ; $63e4: $f0 $df

jr_066_63e6:
	rlca                                             ; $63e6: $07
	add c                                            ; $63e7: $81
	dec de                                           ; $63e8: $1b
	inc e                                            ; $63e9: $1c
	ld l, h                                          ; $63ea: $6c
	ld [hl], e                                       ; $63eb: $73
	or e                                             ; $63ec: $b3
	rst GetHLinHL                                          ; $63ed: $cf
	db $fd                                           ; $63ee: $fd
	ld a, $de                                        ; $63ef: $3e $de
	pop hl                                           ; $63f1: $e1
	ld a, e                                          ; $63f2: $7b
	add a                                            ; $63f3: $87
	rst AddAOntoHL                                          ; $63f4: $ef
	inc e                                            ; $63f5: $1c
	jr c, jr_066_6408                                ; $63f6: $38 $10

	add e                                            ; $63f8: $83
	ld bc, $068f                                     ; $63f9: $01 $8f $06
	inc e                                            ; $63fc: $1c
	ld [$1038], sp                                   ; $63fd: $08 $38 $10
	ld [hl], c                                       ; $6400: $71
	jr nz, jr_066_63e6                               ; $6401: $20 $e3

	ld b, c                                          ; $6403: $41
	ld b, a                                          ; $6404: $47
	jp nz, $c1e0                                     ; $6405: $c2 $e0 $c1

jr_066_6408:
	add e                                            ; $6408: $83
	ldh [$b3], a                                     ; $6409: $e0 $b3
	and b                                            ; $640b: $a0
	jr c, jr_066_646e                                ; $640c: $38 $60

	ld a, b                                          ; $640e: $78
	ld h, c                                          ; $640f: $61

jr_066_6410:
	ld a, c                                          ; $6410: $79
	ld l, a                                          ; $6411: $6f
	ld a, [hl]                                       ; $6412: $7e
	db $fc                                           ; $6413: $fc
	ld [hl], b                                       ; $6414: $70
	ret nz                                           ; $6415: $c0

	add b                                            ; $6416: $80
	add $86                                          ; $6417: $c6 $86
	jp c, $939a                                      ; $6419: $da $9a $93

	ld d, $9e                                        ; $641c: $16 $9e
	dec e                                            ; $641e: $1d
	adc e                                            ; $641f: $8b
	rlca                                             ; $6420: $07
	db $dd                                           ; $6421: $dd
	ld a, $ec                                        ; $6422: $3e $ec
	ldh a, [$7a]                                     ; $6424: $f0 $7a
	ld [$009b], a                                    ; $6426: $ea $9b $00
	inc c                                            ; $6429: $0c
	nop                                              ; $642a: $00
	ld [hl], b                                       ; $642b: $70
	ld a, d                                          ; $642c: $7a
	and b                                            ; $642d: $a0
	ld a, [hl]                                       ; $642e: $7e
	and e                                            ; $642f: $a3
	sub a                                            ; $6430: $97
	rlca                                             ; $6431: $07
	dec b                                            ; $6432: $05
	rrca                                             ; $6433: $0f
	dec bc                                           ; $6434: $0b
	rra                                              ; $6435: $1f
	rla                                              ; $6436: $17
	ccf                                              ; $6437: $3f
	cpl                                              ; $6438: $2f
	ld b, a                                          ; $6439: $47
	ld [hl+], a                                      ; $643a: $22

jr_066_643b:
	ld a, a                                          ; $643b: $7f
	db $fd                                           ; $643c: $fd
	ld a, e                                          ; $643d: $7b
	ld c, h                                          ; $643e: $4c
	add l                                            ; $643f: $85
	rst $38                                          ; $6440: $ff
	and c                                            ; $6441: $a1
	ret nz                                           ; $6442: $c0

	ret nz                                           ; $6443: $c0

	nop                                              ; $6444: $00
	pop hl                                           ; $6445: $e1
	rst $38                                          ; $6446: $ff
	ld hl, sp+$00                                    ; $6447: $f8 $00
	add b                                            ; $6449: $80
	nop                                              ; $644a: $00
	pop hl                                           ; $644b: $e1
	ld a, a                                          ; $644c: $7f
	jp $0880                                         ; $644d: $c3 $80 $08


	rlca                                             ; $6450: $07
	add hl, sp                                       ; $6451: $39
	jr jr_066_643b                                   ; $6452: $18 $e7

	ld h, e                                          ; $6454: $63
	call $8c86                                       ; $6455: $cd $86 $8c
	ld [$e011], sp                                   ; $6458: $08 $11 $e0
	ret nz                                           ; $645b: $c0

	add d                                            ; $645c: $82
	ld a, a                                          ; $645d: $7f
	add e                                            ; $645e: $83
	ld c, $fc                                        ; $645f: $0e $fc
	inc a                                            ; $6461: $3c
	db $f4                                           ; $6462: $f4
	db $ec                                           ; $6463: $ec
	call nz, $040c                                   ; $6464: $c4 $0c $04
	inc c                                            ; $6467: $0c
	inc b                                            ; $6468: $04
	db $ec                                           ; $6469: $ec
	db $e4                                           ; $646a: $e4
	xor l                                            ; $646b: $ad
	and l                                            ; $646c: $a5
	cp a                                             ; $646d: $bf

jr_066_646e:
	rst SubAFromBC                                          ; $646e: $e7
	rst $38                                          ; $646f: $ff
	call z, Call_066_71ff                            ; $6470: $cc $ff $71
	rst $38                                          ; $6473: $ff
	add d                                            ; $6474: $82
	ccf                                              ; $6475: $3f
	dec b                                            ; $6476: $05
	ld a, a                                          ; $6477: $7f
	dec bc                                           ; $6478: $0b
	rst SubAFromDE                                          ; $6479: $df
	ld a, e                                          ; $647a: $7b
	ld [hl], b                                       ; $647b: $70
	sub d                                            ; $647c: $92
	ld a, a                                          ; $647d: $7f
	ld e, a                                          ; $647e: $5f
	rst $38                                          ; $647f: $ff
	cp a                                             ; $6480: $bf
	di                                               ; $6481: $f3
	ld h, c                                          ; $6482: $61
	di                                               ; $6483: $f3
	pop hl                                           ; $6484: $e1
	and c                                            ; $6485: $a1
	rst $38                                          ; $6486: $ff
	cp a                                             ; $6487: $bf
	rst $38                                          ; $6488: $ff
	add c                                            ; $6489: $81
	ld a, e                                          ; $648a: $7b
	ld [hl], d                                       ; $648b: $72
	rst FarCall                                          ; $648c: $f7
	rst SubAFromDE                                          ; $648d: $df
	jr c, jr_066_6410                                ; $648e: $38 $80

	ld d, $1e                                        ; $6490: $16 $1e
	adc l                                            ; $6492: $8d
	adc e                                            ; $6493: $8b
	ei                                               ; $6494: $fb
	db $fc                                           ; $6495: $fc
	sbc h                                            ; $6496: $9c
	ld a, [hl]                                       ; $6497: $7e
	halt                                             ; $6498: $76
	adc [hl]                                         ; $6499: $8e
	ld l, e                                          ; $649a: $6b
	or $5d                                           ; $649b: $f6 $5d
	dec sp                                           ; $649d: $3b
	or a                                             ; $649e: $b7
	rst GetHLinHL                                          ; $649f: $cf
	db $e3                                           ; $64a0: $e3
	ld a, a                                          ; $64a1: $7f
	add hl, sp                                       ; $64a2: $39
	rra                                              ; $64a3: $1f
	rst $38                                          ; $64a4: $ff
	rst JumpTable                                          ; $64a5: $c7
	rst $38                                          ; $64a6: $ff
	inc sp                                           ; $64a7: $33
	rst $38                                          ; $64a8: $ff
	add hl, bc                                       ; $64a9: $09
	rst $38                                          ; $64aa: $ff
	push af                                          ; $64ab: $f5
	rst $38                                          ; $64ac: $ff
	rrca                                             ; $64ad: $0f
	ccf                                              ; $64ae: $3f
	sbc d                                            ; $64af: $9a
	rlca                                             ; $64b0: $07
	rst $38                                          ; $64b1: $ff
	inc bc                                           ; $64b2: $03
	rst $38                                          ; $64b3: $ff
	ld a, a                                          ; $64b4: $7f
	ldh [$c1], a                                     ; $64b5: $e0 $c1
	add b                                            ; $64b7: $80
	cp d                                             ; $64b8: $ba
	ld a, [bc]                                       ; $64b9: $0a
	ld a, d                                          ; $64ba: $7a
	ld [de], a                                       ; $64bb: $12
	push af                                          ; $64bc: $f5
	inc d                                            ; $64bd: $14
	push af                                          ; $64be: $f5
	dec h                                            ; $64bf: $25
	db $eb                                           ; $64c0: $eb
	add hl, hl                                       ; $64c1: $29
	ei                                               ; $64c2: $fb
	ld c, d                                          ; $64c3: $4a
	rst FarCall                                          ; $64c4: $f7
	jp nc, $e4f7                                     ; $64c5: $d2 $f7 $e4

	db $ed                                           ; $64c8: $ed
	ld h, h                                          ; $64c9: $64
	db $ed                                           ; $64ca: $ed
	ret                                              ; $64cb: $c9


	db $db                                           ; $64cc: $db

jr_066_64cd:
	ret                                              ; $64cd: $c9


	db $db                                           ; $64ce: $db
	sub e                                            ; $64cf: $93
	or a                                             ; $64d0: $b7
	sub e                                            ; $64d1: $93
	or [hl]                                          ; $64d2: $b6
	daa                                              ; $64d3: $27
	db $ec                                           ; $64d4: $ec
	daa                                              ; $64d5: $27
	add sp, -$71                                     ; $64d6: $e8 $8f
	ld c, a                                          ; $64d8: $4f
	ret c                                            ; $64d9: $d8

	ld c, a                                          ; $64da: $4f
	ret nc                                           ; $64db: $d0

	sbc a                                            ; $64dc: $9f
	or b                                             ; $64dd: $b0
	sbc [hl]                                         ; $64de: $9e
	cp b                                             ; $64df: $b8
	inc a                                            ; $64e0: $3c
	ld hl, sp+$3d                                    ; $64e1: $f8 $3d
	ld sp, hl                                        ; $64e3: $f9
	ld a, a                                          ; $64e4: $7f
	pop af                                           ; $64e5: $f1
	ld a, a                                          ; $64e6: $7f
	db $e3                                           ; $64e7: $e3
	ld e, e                                          ; $64e8: $5b
	ld h, b                                          ; $64e9: $60
	db $fd                                           ; $64ea: $fd
	rst SubAFromDE                                          ; $64eb: $df
	jr nz, jr_066_64cd                               ; $64ec: $20 $df

	and b                                            ; $64ee: $a0
	add c                                            ; $64ef: $81
	ld d, b                                          ; $64f0: $50
	ldh a, [$71]                                     ; $64f1: $f0 $71
	pop de                                           ; $64f3: $d1
	rst FarCall                                          ; $64f4: $f7
	ld d, [hl]                                       ; $64f5: $56
	cp d                                             ; $64f6: $ba
	ld e, l                                          ; $64f7: $5d
	or e                                             ; $64f8: $b3
	ld e, a                                          ; $64f9: $5f
	rlca                                             ; $64fa: $07
	ld hl, sp-$11                                    ; $64fb: $f8 $ef
	ldh a, [hDisp0_SCY]                                     ; $64fd: $f0 $83
	rst $38                                          ; $64ff: $ff
	db $10                                           ; $6500: $10
	ldh [$9e], a                                     ; $6501: $e0 $9e
	rst $38                                          ; $6503: $ff

jr_066_6504:
	ld b, e                                          ; $6504: $43
	add c                                            ; $6505: $81
	ld hl, sp-$04                                    ; $6506: $f8 $fc
	or $0e                                           ; $6508: $f6 $0e
	rst AddAOntoHL                                          ; $650a: $ef
	pop af                                           ; $650b: $f1
	sbc e                                            ; $650c: $9b
	inc c                                            ; $650d: $0c
	ldh [$c1], a                                     ; $650e: $e0 $c1
	sub b                                            ; $6510: $90
	ld [hl], h                                       ; $6511: $74
	rst SubAFromDE                                          ; $6512: $df
	or l                                             ; $6513: $b5
	rst SubAFromDE                                          ; $6514: $df
	push de                                          ; $6515: $d5
	cp a                                             ; $6516: $bf
	ld l, c                                          ; $6517: $69
	cp a                                             ; $6518: $bf
	xor d                                            ; $6519: $aa
	ld a, [hl]                                       ; $651a: $7e
	jp nc, Jump_066_547e                             ; $651b: $d2 $7e $54

	db $fc                                           ; $651e: $fc
	db $f4                                           ; $651f: $f4
	sbc $fc                                          ; $6520: $de $fc
	add c                                            ; $6522: $81
	db $ec                                           ; $6523: $ec
	ld a, h                                          ; $6524: $7c
	di                                               ; $6525: $f3
	cp a                                             ; $6526: $bf
	db $fc                                           ; $6527: $fc
	rst GetHLinHL                                          ; $6528: $cf
	ld a, $f3                                        ; $6529: $3e $f3
	rrca                                             ; $652b: $0f
	db $fd                                           ; $652c: $fd
	inc bc                                           ; $652d: $03
	cp $19                                           ; $652e: $fe $19
	rst SubAFromBC                                          ; $6530: $e7
	ld h, a                                          ; $6531: $67
	sbc a                                            ; $6532: $9f
	rst SubAFromDE                                          ; $6533: $df
	ccf                                              ; $6534: $3f
	cp a                                             ; $6535: $bf
	ld a, a                                          ; $6536: $7f
	ld a, [hl]                                       ; $6537: $7e
	rst $38                                          ; $6538: $ff
	ld sp, hl                                        ; $6539: $f9
	cp $f6                                           ; $653a: $fe $f6
	ld sp, hl                                        ; $653c: $f9
	db $ec                                           ; $653d: $ec
	di                                               ; $653e: $f3
	reti                                             ; $653f: $d9


	rst SubAFromBC                                          ; $6540: $e7
	ld sp, $80dc                                     ; $6541: $31 $dc $80
	ldh [rLCDC], a                                   ; $6544: $e0 $40
	ret nz                                           ; $6546: $c0

	add b                                            ; $6547: $80
	add b                                            ; $6548: $80
	ret nz                                           ; $6549: $c0

	ret nz                                           ; $654a: $c0

	or b                                             ; $654b: $b0
	ld [hl], b                                       ; $654c: $70
	ret z                                            ; $654d: $c8

	jr c, jr_066_6504                                ; $654e: $38 $b4

	call z, $f66a                                    ; $6550: $cc $6a $f6
	push de                                          ; $6553: $d5
	dec sp                                           ; $6554: $3b
	jp hl                                            ; $6555: $e9


	sbc a                                            ; $6556: $9f
	ld d, h                                          ; $6557: $54
	rst AddAOntoHL                                          ; $6558: $ef
	xor d                                            ; $6559: $aa
	ld [hl], a                                       ; $655a: $77
	jp nc, $f13f                                     ; $655b: $d2 $3f $f1

	sbc a                                            ; $655e: $9f
	ld c, c                                          ; $655f: $49
	rst $38                                          ; $6560: $ff
	ret z                                            ; $6561: $c8

	ld a, a                                          ; $6562: $7f
	sub [hl]                                         ; $6563: $96
	and h                                            ; $6564: $a4
	ld a, a                                          ; $6565: $7f
	ld h, h                                          ; $6566: $64
	cp a                                             ; $6567: $bf
	db $e4                                           ; $6568: $e4
	cp a                                             ; $6569: $bf
	sub d                                            ; $656a: $92
	rst $38                                          ; $656b: $ff
	jp nc, $fe7b                                     ; $656c: $d2 $7b $fe

	add h                                            ; $656f: $84
	ldh a, [c]                                       ; $6570: $f2
	cp a                                             ; $6571: $bf
	ldh a, [c]                                       ; $6572: $f2
	cp a                                             ; $6573: $bf
	or d                                             ; $6574: $b2
	rst SubAFromDE                                          ; $6575: $df
	ld a, [$aecf]                                    ; $6576: $fa $cf $ae
	rst FarCall                                          ; $6579: $f7
	sbc a                                            ; $657a: $9f
	rst $38                                          ; $657b: $ff
	sub d                                            ; $657c: $92
	rst $38                                          ; $657d: $ff
	ld d, d                                          ; $657e: $52
	rst $38                                          ; $657f: $ff
	db $f4                                           ; $6580: $f4
	rst $38                                          ; $6581: $ff
	dec d                                            ; $6582: $15
	rst $38                                          ; $6583: $ff
	dec h                                            ; $6584: $25
	rst $38                                          ; $6585: $ff
	add hl, hl                                       ; $6586: $29
	rst $38                                          ; $6587: $ff
	ld a, [hl+]                                      ; $6588: $2a
	cp $52                                           ; $6589: $fe $52
	ld a, e                                          ; $658b: $7b
	cp $7f                                           ; $658c: $fe $7f
	ld a, [hl]                                       ; $658e: $7e
	sub e                                            ; $658f: $93
	and h                                            ; $6590: $a4
	db $fc                                           ; $6591: $fc
	xor b                                            ; $6592: $a8
	ld hl, sp-$58                                    ; $6593: $f8 $a8
	ld hl, sp+$50                                    ; $6595: $f8 $50
	ldh a, [$60]                                     ; $6597: $f0 $60
	ldh [$a0], a                                     ; $6599: $e0 $a0
	ldh [$dd], a                                     ; $659b: $e0 $dd
	ret nz                                           ; $659d: $c0

	db $dd                                           ; $659e: $dd
	add b                                            ; $659f: $80
	rst AddAOntoHL                                          ; $65a0: $ef
	rst SubAFromDE                                          ; $65a1: $df
	ret nz                                           ; $65a2: $c0

	sub a                                            ; $65a3: $97
	jr nc, @-$0e                                     ; $65a4: $30 $f0

	adc b                                            ; $65a6: $88
	ld hl, sp-$1c                                    ; $65a7: $f8 $e4
	ld a, h                                          ; $65a9: $7c
	db $f4                                           ; $65aa: $f4
	cp h                                             ; $65ab: $bc
	db $dd                                           ; $65ac: $dd
	cp $93                                           ; $65ad: $fe $93
	adc [hl]                                         ; $65af: $8e
	cp $9e                                           ; $65b0: $fe $9e
	ld a, [hl]                                       ; $65b2: $7e
	dec sp                                           ; $65b3: $3b
	rst $38                                          ; $65b4: $ff
	ld a, c                                          ; $65b5: $79
	rst $38                                          ; $65b6: $ff
	push af                                          ; $65b7: $f5
	ei                                               ; $65b8: $fb
	db $ed                                           ; $65b9: $ed
	di                                               ; $65ba: $f3
	ld sp, hl                                        ; $65bb: $f9
	db $db                                           ; $65bc: $db
	add b                                            ; $65bd: $80
	ld a, a                                          ; $65be: $7f
	ld l, b                                          ; $65bf: $68
	ld a, a                                          ; $65c0: $7f
	cp $db                                           ; $65c1: $fe $db
	ret nz                                           ; $65c3: $c0

	ld [hl], a                                       ; $65c4: $77
	or $47                                           ; $65c5: $f6 $47
	cp $db                                           ; $65c7: $fe $db
	add b                                            ; $65c9: $80
	di                                               ; $65ca: $f3
	ld h, $00                                        ; $65cb: $26 $00
	rst SubAFromDE                                          ; $65cd: $df
	xor $8a                                          ; $65ce: $ee $8a
	and $aa                                          ; $65d0: $e6 $aa
	xor d                                            ; $65d2: $aa
	sbc c                                            ; $65d3: $99
	and $22                                          ; $65d4: $e6 $22
	xor d                                            ; $65d6: $aa
	ld a, [hl+]                                      ; $65d7: $2a
	sbc c                                            ; $65d8: $99
	add b                                            ; $65d9: $80
	ld [hl+], a                                      ; $65da: $22
	and d                                            ; $65db: $a2
	ld a, [hl+]                                      ; $65dc: $2a
	sbc c                                            ; $65dd: $99
	or e                                             ; $65de: $b3
	ld de, $08a2                                     ; $65df: $11 $a2 $08
	sbc c                                            ; $65e2: $99
	add b                                            ; $65e3: $80
	ld de, $f17b                                     ; $65e4: $11 $7b $f1
	sbc d                                            ; $65e7: $9a
	xor d                                            ; $65e8: $aa
	db $dd                                           ; $65e9: $dd
	xor d                                            ; $65ea: $aa
	and d                                            ; $65eb: $a2
	ld a, [hl+]                                      ; $65ec: $2a
	ld a, e                                          ; $65ed: $7b
	ei                                               ; $65ee: $fb
	sbc [hl]                                         ; $65ef: $9e
	xor d                                            ; $65f0: $aa
	and d                                            ; $65f1: $a2
	ld bc, $7695                                     ; $65f2: $01 $95 $76
	ld e, c                                          ; $65f5: $59
	ld a, [hl]                                       ; $65f6: $7e
	ld d, c                                          ; $65f7: $51
	ld a, [hl]                                       ; $65f8: $7e
	ld d, c                                          ; $65f9: $51
	ld e, l                                          ; $65fa: $5d
	ld [hl], e                                       ; $65fb: $73
	dec a                                            ; $65fc: $3d
	inc sp                                           ; $65fd: $33
	ld [hl], a                                       ; $65fe: $77
	cp $92                                           ; $65ff: $fe $92
	dec e                                            ; $6601: $1d
	inc de                                           ; $6602: $13
	dec d                                            ; $6603: $15
	dec de                                           ; $6604: $1b
	dec c                                            ; $6605: $0d
	dec bc                                           ; $6606: $0b
	add hl, bc                                       ; $6607: $09
	rrca                                             ; $6608: $0f
	inc b                                            ; $6609: $04
	rlca                                             ; $660a: $07
	inc b                                            ; $660b: $04
	rlca                                             ; $660c: $07
	ld [bc], a                                       ; $660d: $02
	sbc $03                                          ; $660e: $de $03
	ld a, a                                          ; $6610: $7f
	db $fc                                           ; $6611: $fc
	ld h, a                                          ; $6612: $67
	cp $5b                                           ; $6613: $fe $5b
	push af                                          ; $6615: $f5
	ld l, e                                          ; $6616: $6b
	rst AddAOntoHL                                          ; $6617: $ef
	rst SubAFromDE                                          ; $6618: $df
	inc bc                                           ; $6619: $03
	rst SubAFromDE                                          ; $661a: $df
	rrca                                             ; $661b: $0f
	adc [hl]                                         ; $661c: $8e
	ld sp, $ce3f                                     ; $661d: $31 $3f $ce
	add h                                            ; $6620: $84
	add h                                            ; $6621: $84
	adc h                                            ; $6622: $8c
	sbc l                                            ; $6623: $9d
	adc b                                            ; $6624: $88
	sbc b                                            ; $6625: $98
	add hl, bc                                       ; $6626: $09
	sbc d                                            ; $6627: $9a
	ld de, $12b1                                     ; $6628: $11 $b1 $12
	or l                                             ; $662b: $b5
	ld [de], a                                       ; $662c: $12
	or a                                             ; $662d: $b7
	ld a, e                                          ; $662e: $7b
	cp $99                                           ; $662f: $fe $99
	rst FarCall                                          ; $6631: $f7
	ld [de], a                                       ; $6632: $12
	rst $38                                          ; $6633: $ff
	ld [de], a                                       ; $6634: $12
	rst $38                                          ; $6635: $ff
	sub d                                            ; $6636: $92
	ld a, e                                          ; $6637: $7b
	cp $80                                           ; $6638: $fe $80
	sbc e                                            ; $663a: $9b
	rst $38                                          ; $663b: $ff
	ld e, e                                          ; $663c: $5b
	rst $38                                          ; $663d: $ff
	db $db                                           ; $663e: $db
	or [hl]                                          ; $663f: $b6
	rst $38                                          ; $6640: $ff
	sub [hl]                                         ; $6641: $96
	rst $38                                          ; $6642: $ff
	add d                                            ; $6643: $82
	sbc $82                                          ; $6644: $de $82
	add $80                                          ; $6646: $c6 $80
	jp nz, Jump_066_40c0                             ; $6648: $c2 $c0 $40

	ret nz                                           ; $664b: $c0

	ld h, b                                          ; $664c: $60
	ldh [$60], a                                     ; $664d: $e0 $60

Jump_066_664f:
	ldh [$30], a                                     ; $664f: $e0 $30
	ldh a, [$30]                                     ; $6651: $f0 $30
	ldh a, [$78]                                     ; $6653: $f0 $78
	add sp, -$44                                     ; $6655: $e8 $bc
	and h                                            ; $6657: $a4
	ld a, $84                                        ; $6658: $3e $84
	ld [hl+], a                                      ; $665a: $22
	ccf                                              ; $665b: $3f
	ld h, c                                          ; $665c: $61
	ld a, a                                          ; $665d: $7f
	ldh [$73], a                                     ; $665e: $e0 $73
	inc bc                                           ; $6660: $03
	ld bc, $4287                                     ; $6661: $01 $87 $42
	ld c, [hl]                                       ; $6664: $4e
	add h                                            ; $6665: $84
	sbc l                                            ; $6666: $9d
	ld [$192b], sp                                   ; $6667: $08 $2b $19
	dec sp                                           ; $666a: $3b
	ld [de], a                                       ; $666b: $12
	ld d, [hl]                                       ; $666c: $56
	ld [hl-], a                                      ; $666d: $32
	ld d, [hl]                                       ; $666e: $56
	inc h                                            ; $666f: $24
	ld [hl], a                                       ; $6670: $77
	inc h                                            ; $6671: $24
	ld a, a                                          ; $6672: $7f
	dec h                                            ; $6673: $25
	rst $38                                          ; $6674: $ff
	ld h, a                                          ; $6675: $67
	cp $8a                                           ; $6676: $fe $8a
	scf                                              ; $6678: $37
	rst $38                                          ; $6679: $ff
	scf                                              ; $667a: $37
	rst GetHLinHL                                          ; $667b: $cf
	add [hl]                                         ; $667c: $86
	ccf                                              ; $667d: $3f
	ld a, [de]                                       ; $667e: $1a
	rst $38                                          ; $667f: $ff
	ld h, a                                          ; $6680: $67
	rst JumpTable                                          ; $6681: $c7
	add d                                            ; $6682: $82
	cp a                                             ; $6683: $bf
	dec de                                           ; $6684: $1b
	ld h, [hl]                                       ; $6685: $66
	ccf                                              ; $6686: $3f
	ret nz                                           ; $6687: $c0

	ld a, a                                          ; $6688: $7f
	add b                                            ; $6689: $80
	rst $38                                          ; $668a: $ff
	add b                                            ; $668b: $80
	rst $38                                          ; $668c: $ff
	cp a                                             ; $668d: $bf
	rst $38                                          ; $668e: $ff
	rst $38                                          ; $668f: $ff
	sbc b                                            ; $6690: $98
	ld bc, $3fff                                     ; $6691: $01 $ff $3f
	jp $fc3f                                         ; $6694: $c3 $3f $fc


	inc bc                                           ; $6697: $03
	ld [hl], e                                       ; $6698: $73
	db $f4                                           ; $6699: $f4
	sub l                                            ; $669a: $95
	rrca                                             ; $669b: $0f
	rst $38                                          ; $669c: $ff
	inc sp                                           ; $669d: $33
	di                                               ; $669e: $f3
	ld a, a                                          ; $669f: $7f
	db $ed                                           ; $66a0: $ed
	dec bc                                           ; $66a1: $0b
	jp hl                                            ; $66a2: $e9


	ld c, $f7                                        ; $66a3: $0e $f7
	cp [hl]                                          ; $66a5: $be
	rst GetHLinHL                                          ; $66a6: $cf
	adc a                                            ; $66a7: $8f
	sbc a                                            ; $66a8: $9f
	ld a, a                                          ; $66a9: $7f
	db $e4                                           ; $66aa: $e4
	ld a, a                                          ; $66ab: $7f
	add sp, -$80                                     ; $66ac: $e8 $80
	rlca                                             ; $66ae: $07
	db $fd                                           ; $66af: $fd
	rra                                              ; $66b0: $1f
	ld a, [$eafe]                                    ; $66b1: $fa $fe $ea
	rst $38                                          ; $66b4: $ff
	call $8ddd                                       ; $66b5: $cd $dd $8d
	db $ed                                           ; $66b8: $ed
	and $3e                                          ; $66b9: $e6 $3e
	inc de                                           ; $66bb: $13

Call_066_66bc:
	db $dd                                           ; $66bc: $dd
	set 5, a                                         ; $66bd: $cb $ef
	ld l, c                                          ; $66bf: $69
	halt                                             ; $66c0: $76
	dec h                                            ; $66c1: $25
	or [hl]                                          ; $66c2: $b6
	sub l                                            ; $66c3: $95
	or [hl]                                          ; $66c4: $b6
	sub l                                            ; $66c5: $95
	cp $95                                           ; $66c6: $fe $95
	rst $38                                          ; $66c8: $ff
	sub h                                            ; $66c9: $94
	rst $38                                          ; $66ca: $ff
	or h                                             ; $66cb: $b4
	rst $38                                          ; $66cc: $ff
	sub l                                            ; $66cd: $95
	or h                                             ; $66ce: $b4
	rst SubAFromDE                                          ; $66cf: $df
	ld [hl], h                                       ; $66d0: $74
	sbc a                                            ; $66d1: $9f
	db $fc                                           ; $66d2: $fc
	rst FarCall                                          ; $66d3: $f7
	ld a, $f3                                        ; $66d4: $3e $f3
	adc $33                                          ; $66d6: $ce $33
	ld [hl], a                                       ; $66d8: $77
	call nc, $ff82                                   ; $66d9: $d4 $82 $ff
	add a                                            ; $66dc: $87
	db $fd                                           ; $66dd: $fd
	rst GetHLinHL                                          ; $66de: $cf
	db $fd                                           ; $66df: $fd
	ld c, a                                          ; $66e0: $4f
	ld a, c                                          ; $66e1: $79
	rra                                              ; $66e2: $1f
	ei                                               ; $66e3: $fb
	ccf                                              ; $66e4: $3f
	ld [$ea7f], a                                    ; $66e5: $ea $7f $ea
	rst $38                                          ; $66e8: $ff
	jp z, $d6db                                      ; $66e9: $ca $db $d6

	call nc, $5555                                   ; $66ec: $d4 $55 $55
	ld [hl], l                                       ; $66ef: $75
	and a                                            ; $66f0: $a7
	xor l                                            ; $66f1: $ad
	xor d                                            ; $66f2: $aa
	xor e                                            ; $66f3: $ab
	xor d                                            ; $66f4: $aa
	ld l, e                                          ; $66f5: $6b
	xor $5b                                          ; $66f6: $ee $5b
	daa                                              ; $66f8: $27
	add b                                            ; $66f9: $80
	ld a, a                                          ; $66fa: $7f
	ret z                                            ; $66fb: $c8

	ld a, a                                          ; $66fc: $7f
	pop af                                           ; $66fd: $f1
	sbc [hl]                                         ; $66fe: $9e
	ccf                                              ; $66ff: $3f
	ld [hl], e                                       ; $6700: $73
	db $f4                                           ; $6701: $f4
	ld [hl], a                                       ; $6702: $77
	ld a, [hl]                                       ; $6703: $7e
	sbc h                                            ; $6704: $9c
	scf                                              ; $6705: $37
	di                                               ; $6706: $f3
	ld l, e                                          ; $6707: $6b
	inc bc                                           ; $6708: $03
	add b                                            ; $6709: $80
	ld b, a                                          ; $670a: $47
	add b                                            ; $670b: $80
	sbc d                                            ; $670c: $9a
	or a                                             ; $670d: $b7
	ld a, [hl]                                       ; $670e: $7e
	di                                               ; $670f: $f3
	adc [hl]                                         ; $6710: $8e
	ld [hl], e                                       ; $6711: $73
	ld [hl], e                                       ; $6712: $73
	add b                                            ; $6713: $80
	ld a, a                                          ; $6714: $7f
	jp nc, $8f9e                                     ; $6715: $d2 $9e $8f

	inc bc                                           ; $6718: $03
	add b                                            ; $6719: $80
	ccf                                              ; $671a: $3f
	add b                                            ; $671b: $80
	sbc d                                            ; $671c: $9a
	ld a, $c1                                        ; $671d: $3e $c1
	ccf                                              ; $671f: $3f
	cp $01                                           ; $6720: $fe $01
	ld l, e                                          ; $6722: $6b
	ld a, [hl]                                       ; $6723: $7e
	ld a, a                                          ; $6724: $7f
	cp $9b                                           ; $6725: $fe $9b
	dec sp                                           ; $6727: $3b
	pop af                                           ; $6728: $f1
	ld c, $ff                                        ; $6729: $0e $ff
	inc bc                                           ; $672b: $03
	add b                                            ; $672c: $80
	ld d, e                                          ; $672d: $53
	add b                                            ; $672e: $80
	sbc d                                            ; $672f: $9a
	scf                                              ; $6730: $37
	cp $f3                                           ; $6731: $fe $f3
	ld c, $f3                                        ; $6733: $0e $f3
	ld l, e                                          ; $6735: $6b
	add b                                            ; $6736: $80
	sbc e                                            ; $6737: $9b
	rrca                                             ; $6738: $0f
	db $fd                                           ; $6739: $fd
	adc a                                            ; $673a: $8f
	ld sp, hl                                        ; $673b: $f9
	inc bc                                           ; $673c: $03
	add b                                            ; $673d: $80
	ld c, e                                          ; $673e: $4b
	add b                                            ; $673f: $80
	sbc [hl]                                         ; $6740: $9e
	inc a                                            ; $6741: $3c
	ld h, d                                          ; $6742: $62
	ld a, [hl]                                       ; $6743: $7e
	cp a                                             ; $6744: $bf
	rst $38                                          ; $6745: $ff
	rst $38                                          ; $6746: $ff
	sbc h                                            ; $6747: $9c
	ld h, c                                          ; $6748: $61
	rst $38                                          ; $6749: $ff
	rra                                              ; $674a: $1f
	inc bc                                           ; $674b: $03
	add b                                            ; $674c: $80
	ld b, a                                          ; $674d: $47
	add b                                            ; $674e: $80
	sbc d                                            ; $674f: $9a
	jp $f33e                                         ; $6750: $c3 $3e $f3


	rst GetHLinHL                                          ; $6753: $cf
	inc sp                                           ; $6754: $33
	ld l, e                                          ; $6755: $6b
	add b                                            ; $6756: $80
	sbc [hl]                                         ; $6757: $9e
	rst GetHLinHL                                          ; $6758: $cf
	dec hl                                           ; $6759: $2b
	add b                                            ; $675a: $80
	adc c                                            ; $675b: $89
	db $fd                                           ; $675c: $fd
	or a                                             ; $675d: $b7
	db $ed                                           ; $675e: $ed
	cp a                                             ; $675f: $bf
	ld l, h                                          ; $6760: $6c
	rst $38                                          ; $6761: $ff
	inc h                                            ; $6762: $24
	ld a, a                                          ; $6763: $7f
	nop                                              ; $6764: $00
	rra                                              ; $6765: $1f
	ld [$103f], sp                                   ; $6766: $08 $3f $10
	rra                                              ; $6769: $1f
	nop                                              ; $676a: $00
	ld e, a                                          ; $676b: $5f
	ld l, $65                                        ; $676c: $2e $65
	inc e                                            ; $676e: $1c
	dec sp                                           ; $676f: $3b
	jr jr_066_6779                                   ; $6770: $18 $07

	cp [hl]                                          ; $6772: $be
	rra                                              ; $6773: $1f
	rra                                              ; $6774: $1f
	ccf                                              ; $6775: $3f
	sbc e                                            ; $6776: $9b
	rlca                                             ; $6777: $07
	cp e                                             ; $6778: $bb

jr_066_6779:
	rst $38                                          ; $6779: $ff
	rst $38                                          ; $677a: $ff
	ld b, a                                          ; $677b: $47
	ldh [$9b], a                                     ; $677c: $e0 $9b
	ld l, [hl]                                       ; $677e: $6e
	daa                                              ; $677f: $27
	inc a                                            ; $6780: $3c
	rra                                              ; $6781: $1f
	rrca                                             ; $6782: $0f
	ldh [$9b], a                                     ; $6783: $e0 $9b
	ld a, $7d                                        ; $6785: $3e $7d
	inc a                                            ; $6787: $3c
	dec de                                           ; $6788: $1b
	dec de                                           ; $6789: $1b
	ldh [$9e], a                                     ; $678a: $e0 $9e
	dec h                                            ; $678c: $25
	ld [hl], a                                       ; $678d: $77
	ldh [$73], a                                     ; $678e: $e0 $73
	cp [hl]                                          ; $6790: $be
	ld [hl], e                                       ; $6791: $73
	ldh [$a6], a                                     ; $6792: $e0 $a6
	ld bc, $7695                                     ; $6794: $01 $95 $76
	ld e, c                                          ; $6797: $59
	ld a, [hl]                                       ; $6798: $7e
	ld d, c                                          ; $6799: $51
	ld a, [hl]                                       ; $679a: $7e
	ld d, c                                          ; $679b: $51
	ld e, l                                          ; $679c: $5d
	ld [hl], e                                       ; $679d: $73
	dec a                                            ; $679e: $3d
	inc sp                                           ; $679f: $33
	ld [hl], a                                       ; $67a0: $77
	cp $92                                           ; $67a1: $fe $92
	dec e                                            ; $67a3: $1d
	inc de                                           ; $67a4: $13
	dec d                                            ; $67a5: $15
	dec de                                           ; $67a6: $1b
	dec c                                            ; $67a7: $0d
	dec bc                                           ; $67a8: $0b
	add hl, bc                                       ; $67a9: $09
	rrca                                             ; $67aa: $0f
	inc b                                            ; $67ab: $04
	rlca                                             ; $67ac: $07
	inc b                                            ; $67ad: $04
	rlca                                             ; $67ae: $07
	ld [bc], a                                       ; $67af: $02
	sbc $03                                          ; $67b0: $de $03
	ld a, a                                          ; $67b2: $7f
	db $fc                                           ; $67b3: $fc
	ld h, a                                          ; $67b4: $67
	cp $5b                                           ; $67b5: $fe $5b
	push af                                          ; $67b7: $f5
	ld l, e                                          ; $67b8: $6b
	rst AddAOntoHL                                          ; $67b9: $ef
	rst SubAFromDE                                          ; $67ba: $df
	inc bc                                           ; $67bb: $03
	rst SubAFromDE                                          ; $67bc: $df
	rrca                                             ; $67bd: $0f
	adc [hl]                                         ; $67be: $8e
	ld sp, $ce3f                                     ; $67bf: $31 $3f $ce
	add h                                            ; $67c2: $84
	add h                                            ; $67c3: $84
	adc h                                            ; $67c4: $8c
	sbc l                                            ; $67c5: $9d
	adc b                                            ; $67c6: $88
	sbc b                                            ; $67c7: $98
	add hl, bc                                       ; $67c8: $09
	sbc d                                            ; $67c9: $9a
	ld de, $12b1                                     ; $67ca: $11 $b1 $12
	or l                                             ; $67cd: $b5
	ld [de], a                                       ; $67ce: $12
	or a                                             ; $67cf: $b7
	ld a, e                                          ; $67d0: $7b
	cp $99                                           ; $67d1: $fe $99
	rst FarCall                                          ; $67d3: $f7
	ld [de], a                                       ; $67d4: $12
	rst $38                                          ; $67d5: $ff
	ld [de], a                                       ; $67d6: $12
	rst $38                                          ; $67d7: $ff
	sub d                                            ; $67d8: $92
	ld a, e                                          ; $67d9: $7b
	cp $80                                           ; $67da: $fe $80
	sbc e                                            ; $67dc: $9b
	rst $38                                          ; $67dd: $ff
	ld e, e                                          ; $67de: $5b
	rst $38                                          ; $67df: $ff
	db $db                                           ; $67e0: $db
	or [hl]                                          ; $67e1: $b6
	rst $38                                          ; $67e2: $ff
	sub [hl]                                         ; $67e3: $96
	rst $38                                          ; $67e4: $ff
	add d                                            ; $67e5: $82
	sbc $82                                          ; $67e6: $de $82
	add $80                                          ; $67e8: $c6 $80
	jp nz, Jump_066_40c0                             ; $67ea: $c2 $c0 $40

	ret nz                                           ; $67ed: $c0

	ld h, b                                          ; $67ee: $60
	ldh [$60], a                                     ; $67ef: $e0 $60
	ldh [$30], a                                     ; $67f1: $e0 $30
	ldh a, [$30]                                     ; $67f3: $f0 $30
	ldh a, [$78]                                     ; $67f5: $f0 $78
	add sp, -$44                                     ; $67f7: $e8 $bc
	and h                                            ; $67f9: $a4
	ld a, $84                                        ; $67fa: $3e $84
	ld [hl+], a                                      ; $67fc: $22
	ccf                                              ; $67fd: $3f
	ld h, c                                          ; $67fe: $61

Call_066_67ff:
	ld a, a                                          ; $67ff: $7f
	ldh [$73], a                                     ; $6800: $e0 $73
	inc bc                                           ; $6802: $03
	ld bc, $4287                                     ; $6803: $01 $87 $42
	ld c, [hl]                                       ; $6806: $4e
	add h                                            ; $6807: $84
	sbc l                                            ; $6808: $9d
	ld [$192b], sp                                   ; $6809: $08 $2b $19
	dec sp                                           ; $680c: $3b
	ld [de], a                                       ; $680d: $12
	ld d, [hl]                                       ; $680e: $56
	ld [hl-], a                                      ; $680f: $32
	ld d, [hl]                                       ; $6810: $56
	inc h                                            ; $6811: $24
	ld [hl], a                                       ; $6812: $77
	inc h                                            ; $6813: $24
	ld a, a                                          ; $6814: $7f
	dec h                                            ; $6815: $25
	rst $38                                          ; $6816: $ff
	ld h, a                                          ; $6817: $67
	cp $89                                           ; $6818: $fe $89

jr_066_681a:
	scf                                              ; $681a: $37
	rst $38                                          ; $681b: $ff
	scf                                              ; $681c: $37
	rst GetHLinHL                                          ; $681d: $cf
	add [hl]                                         ; $681e: $86
	ccf                                              ; $681f: $3f
	ld a, [de]                                       ; $6820: $1a
	rst $38                                          ; $6821: $ff
	ld h, a                                          ; $6822: $67
	rst JumpTable                                          ; $6823: $c7
	add d                                            ; $6824: $82
	cp a                                             ; $6825: $bf
	dec de                                           ; $6826: $1b
	ld h, [hl]                                       ; $6827: $66
	ccf                                              ; $6828: $3f
	ret nz                                           ; $6829: $c0

	ld a, a                                          ; $682a: $7f
	add b                                            ; $682b: $80
	rst $38                                          ; $682c: $ff
	add b                                            ; $682d: $80
	rst $38                                          ; $682e: $ff
	nop                                              ; $682f: $00
	ld a, e                                          ; $6830: $7b
	cp $80                                           ; $6831: $fe $80
	ld bc, $07ff                                     ; $6833: $01 $ff $07
	ei                                               ; $6836: $fb
	rra                                              ; $6837: $1f
	rst SubAFromBC                                          ; $6838: $e7
	jr c, jr_066_681a                                ; $6839: $38 $df

	jr nz, @+$01                                     ; $683b: $20 $ff

	ld c, $ff                                        ; $683d: $0e $ff
	ccf                                              ; $683f: $3f
	rst $38                                          ; $6840: $ff
	ld a, e                                          ; $6841: $7b
	ld sp, hl                                        ; $6842: $f9
	ccf                                              ; $6843: $3f
	rst AddAOntoHL                                          ; $6844: $ef
	dec bc                                           ; $6845: $0b
	jp hl                                            ; $6846: $e9


	ld c, $f7                                        ; $6847: $0e $f7
	nop                                              ; $6849: $00
	rst GetHLinHL                                          ; $684a: $cf
	nop                                              ; $684b: $00
	adc a                                            ; $684c: $8f
	nop                                              ; $684d: $00
	sbc a                                            ; $684e: $9f
	ld bc, $03ff                                     ; $684f: $01 $ff $03
	ld a, a                                          ; $6852: $7f
	ldh [c], a                                       ; $6853: $e2
	add b                                            ; $6854: $80
	db $fd                                           ; $6855: $fd
	rra                                              ; $6856: $1f
	ld a, [$eafe]                                    ; $6857: $fa $fe $ea
	rst $38                                          ; $685a: $ff
	call $8ddd                                       ; $685b: $cd $dd $8d
	db $ed                                           ; $685e: $ed
	and $3e                                          ; $685f: $e6 $3e
	inc de                                           ; $6861: $13
	db $dd                                           ; $6862: $dd
	set 5, a                                         ; $6863: $cb $ef
	ld l, c                                          ; $6865: $69
	halt                                             ; $6866: $76
	dec h                                            ; $6867: $25
	or [hl]                                          ; $6868: $b6
	sub l                                            ; $6869: $95
	or [hl]                                          ; $686a: $b6
	sub l                                            ; $686b: $95
	cp $95                                           ; $686c: $fe $95
	rst $38                                          ; $686e: $ff
	sub h                                            ; $686f: $94
	rst $38                                          ; $6870: $ff
	or h                                             ; $6871: $b4
	rst $38                                          ; $6872: $ff
	or h                                             ; $6873: $b4
	sub [hl]                                         ; $6874: $96
	rst SubAFromDE                                          ; $6875: $df
	ld [hl], h                                       ; $6876: $74
	rst SubAFromDE                                          ; $6877: $df
	cp h                                             ; $6878: $bc
	rst FarCall                                          ; $6879: $f7
	cp $33                                           ; $687a: $fe $33
	cp $03                                           ; $687c: $fe $03
	ld a, e                                          ; $687e: $7b
	call nc, $8781                                   ; $687f: $d4 $81 $87
	rst $38                                          ; $6882: $ff
	rst SubAFromBC                                          ; $6883: $e7
	db $fd                                           ; $6884: $fd
	rst GetHLinHL                                          ; $6885: $cf
	ld a, l                                          ; $6886: $7d
	rrca                                             ; $6887: $0f
	ld a, c                                          ; $6888: $79
	rra                                              ; $6889: $1f
	ei                                               ; $688a: $fb
	ccf                                              ; $688b: $3f
	ld [$ea7f], a                                    ; $688c: $ea $7f $ea
	rst $38                                          ; $688f: $ff
	jp z, $d6db                                      ; $6890: $ca $db $d6

	call nc, $5555                                   ; $6893: $d4 $55 $55
	ld [hl], l                                       ; $6896: $75
	and a                                            ; $6897: $a7
	xor l                                            ; $6898: $ad
	xor d                                            ; $6899: $aa
	xor e                                            ; $689a: $ab
	xor d                                            ; $689b: $aa
	ld l, e                                          ; $689c: $6b
	xor $5b                                          ; $689d: $ee $5b
	daa                                              ; $689f: $27
	add b                                            ; $68a0: $80
	ld a, a                                          ; $68a1: $7f
	ret z                                            ; $68a2: $c8

	sbc d                                            ; $68a3: $9a
	rrca                                             ; $68a4: $0f
	di                                               ; $68a5: $f3
	inc a                                            ; $68a6: $3c
	rst GetHLinHL                                          ; $68a7: $cf
	jr nc, jr_066_691d                               ; $68a8: $30 $73

	ldh a, [c]                                       ; $68aa: $f2
	sbc d                                            ; $68ab: $9a
	rrca                                             ; $68ac: $0f
	rst $38                                          ; $68ad: $ff
	dec a                                            ; $68ae: $3d
	db $fd                                           ; $68af: $fd
	ld l, e                                          ; $68b0: $6b
	inc bc                                           ; $68b1: $03
	add b                                            ; $68b2: $80
	daa                                              ; $68b3: $27
	add b                                            ; $68b4: $80
	sbc b                                            ; $68b5: $98
	rlca                                             ; $68b6: $07
	rst $38                                          ; $68b7: $ff
	add a                                            ; $68b8: $87
	db $fd                                           ; $68b9: $fd
	rst AddAOntoHL                                          ; $68ba: $ef
	db $fd                                           ; $68bb: $fd
	ld c, a                                          ; $68bc: $4f
	inc bc                                           ; $68bd: $03
	add b                                            ; $68be: $80
	ld b, e                                          ; $68bf: $43
	add b                                            ; $68c0: $80
	sbc l                                            ; $68c1: $9d
	ldh a, [$3f]                                     ; $68c2: $f0 $3f
	ld l, e                                          ; $68c4: $6b
	add b                                            ; $68c5: $80
	ld [hl], a                                       ; $68c6: $77
	cp $9b                                           ; $68c7: $fe $9b
	dec sp                                           ; $68c9: $3b
	pop af                                           ; $68ca: $f1
	ld c, $ff                                        ; $68cb: $0e $ff
	inc bc                                           ; $68cd: $03
	add b                                            ; $68ce: $80
	ld e, e                                          ; $68cf: $5b
	add b                                            ; $68d0: $80
	sbc b                                            ; $68d1: $98
	sbc a                                            ; $68d2: $9f
	db $fc                                           ; $68d3: $fc
	rst FarCall                                          ; $68d4: $f7
	ld a, $f3                                        ; $68d5: $3e $f3
	adc $33                                          ; $68d7: $ce $33
	ld [hl], e                                       ; $68d9: $73
	add b                                            ; $68da: $80
	ld a, a                                          ; $68db: $7f
	jp nc, $0f9b                                     ; $68dc: $d2 $9b $0f

	db $fd                                           ; $68df: $fd
	adc a                                            ; $68e0: $8f
	ld sp, hl                                        ; $68e1: $f9
	inc bc                                           ; $68e2: $03
	add b                                            ; $68e3: $80
	ld c, e                                          ; $68e4: $4b
	add b                                            ; $68e5: $80
	sbc l                                            ; $68e6: $9d
	inc bc                                           ; $68e7: $03
	db $fc                                           ; $68e8: $fc
	ld e, [hl]                                       ; $68e9: $5e
	cp $7f                                           ; $68ea: $fe $7f
	cp $9c                                           ; $68ec: $fe $9c
	ld h, c                                          ; $68ee: $61
	rst $38                                          ; $68ef: $ff
	rra                                              ; $68f0: $1f
	inc bc                                           ; $68f1: $03
	add b                                            ; $68f2: $80
	rla                                              ; $68f3: $17
	add b                                            ; $68f4: $80
	sbc [hl]                                         ; $68f5: $9e
	rst GetHLinHL                                          ; $68f6: $cf
	dec hl                                           ; $68f7: $2b
	add b                                            ; $68f8: $80
	adc c                                            ; $68f9: $89
	db $fd                                           ; $68fa: $fd
	or a                                             ; $68fb: $b7
	db $ed                                           ; $68fc: $ed
	cp a                                             ; $68fd: $bf
	ld l, h                                          ; $68fe: $6c
	rst $38                                          ; $68ff: $ff
	inc h                                            ; $6900: $24
	ld a, a                                          ; $6901: $7f
	nop                                              ; $6902: $00
	rra                                              ; $6903: $1f
	ld [$103f], sp                                   ; $6904: $08 $3f $10
	rra                                              ; $6907: $1f
	ld b, b                                          ; $6908: $40
	ld a, a                                          ; $6909: $7f
	daa                                              ; $690a: $27
	ld h, d                                          ; $690b: $62
	inc e                                            ; $690c: $1c
	dec hl                                           ; $690d: $2b
	nop                                              ; $690e: $00
	rra                                              ; $690f: $1f
	ld [hl], e                                       ; $6910: $73
	cp $9a                                           ; $6911: $fe $9a
	ccf                                              ; $6913: $3f
	rlca                                             ; $6914: $07
	cp e                                             ; $6915: $bb
	rst $38                                          ; $6916: $ff
	rst $38                                          ; $6917: $ff
	ld b, a                                          ; $6918: $47
	ldh [$99], a                                     ; $6919: $e0 $99
	ld h, a                                          ; $691b: $67
	ld [hl+], a                                      ; $691c: $22

jr_066_691d:
	ld a, $7d                                        ; $691d: $3e $7d
	inc a                                            ; $691f: $3c
	dec de                                           ; $6920: $1b
	dec de                                           ; $6921: $1b
	ldh [hDisp1_WX], a                                     ; $6922: $e0 $96
	ld h, d                                          ; $6924: $62
	ld a, a                                          ; $6925: $7f
	ld a, $3e                                        ; $6926: $3e $3e
	ld a, l                                          ; $6928: $7d
	jr c, jr_066_6932                                ; $6929: $38 $07

	nop                                              ; $692b: $00
	ccf                                              ; $692c: $3f
	inc hl                                           ; $692d: $23
	ldh [$df], a                                     ; $692e: $e0 $df
	ld a, [hl]                                       ; $6930: $7e
	sbc h                                            ; $6931: $9c

jr_066_6932:
	dec a                                            ; $6932: $3d
	inc a                                            ; $6933: $3c
	ld a, e                                          ; $6934: $7b
	ld [hl], a                                       ; $6935: $77
	sbc $77                                          ; $6936: $de $77
	ldh [hDisp1_WX], a                                     ; $6938: $e0 $96
	ld bc, $7695                                     ; $693a: $01 $95 $76
	ld e, c                                          ; $693d: $59
	ld a, [hl]                                       ; $693e: $7e
	ld d, c                                          ; $693f: $51
	ld a, [hl]                                       ; $6940: $7e
	ld d, c                                          ; $6941: $51
	ld e, l                                          ; $6942: $5d
	ld [hl], e                                       ; $6943: $73
	dec a                                            ; $6944: $3d
	inc sp                                           ; $6945: $33
	ld [hl], a                                       ; $6946: $77
	cp $92                                           ; $6947: $fe $92
	dec e                                            ; $6949: $1d
	inc de                                           ; $694a: $13
	dec d                                            ; $694b: $15
	dec de                                           ; $694c: $1b
	dec c                                            ; $694d: $0d
	dec bc                                           ; $694e: $0b
	add hl, bc                                       ; $694f: $09
	rrca                                             ; $6950: $0f
	inc b                                            ; $6951: $04
	rlca                                             ; $6952: $07
	inc b                                            ; $6953: $04
	rlca                                             ; $6954: $07
	ld [bc], a                                       ; $6955: $02
	sbc $03                                          ; $6956: $de $03
	ld a, a                                          ; $6958: $7f
	db $fc                                           ; $6959: $fc
	ld h, a                                          ; $695a: $67
	cp $5b                                           ; $695b: $fe $5b
	push af                                          ; $695d: $f5
	ld l, e                                          ; $695e: $6b
	rst AddAOntoHL                                          ; $695f: $ef
	rst SubAFromDE                                          ; $6960: $df
	inc bc                                           ; $6961: $03
	rst SubAFromDE                                          ; $6962: $df
	rrca                                             ; $6963: $0f
	adc [hl]                                         ; $6964: $8e
	ld sp, $ce3f                                     ; $6965: $31 $3f $ce
	add h                                            ; $6968: $84
	add h                                            ; $6969: $84
	adc h                                            ; $696a: $8c
	sbc l                                            ; $696b: $9d
	adc b                                            ; $696c: $88
	sbc b                                            ; $696d: $98
	add hl, bc                                       ; $696e: $09
	sbc d                                            ; $696f: $9a
	ld de, $12b1                                     ; $6970: $11 $b1 $12
	or l                                             ; $6973: $b5
	ld [de], a                                       ; $6974: $12
	or a                                             ; $6975: $b7
	ld a, e                                          ; $6976: $7b
	cp $99                                           ; $6977: $fe $99
	rst FarCall                                          ; $6979: $f7
	ld [de], a                                       ; $697a: $12
	rst $38                                          ; $697b: $ff
	ld [de], a                                       ; $697c: $12
	rst $38                                          ; $697d: $ff
	sub d                                            ; $697e: $92
	ld a, e                                          ; $697f: $7b
	cp $80                                           ; $6980: $fe $80
	sbc e                                            ; $6982: $9b
	rst $38                                          ; $6983: $ff
	ld e, e                                          ; $6984: $5b
	rst $38                                          ; $6985: $ff
	db $db                                           ; $6986: $db
	or [hl]                                          ; $6987: $b6
	rst $38                                          ; $6988: $ff
	sub [hl]                                         ; $6989: $96
	rst $38                                          ; $698a: $ff
	add d                                            ; $698b: $82
	sbc $82                                          ; $698c: $de $82
	add $80                                          ; $698e: $c6 $80
	jp nz, Jump_066_40c0                             ; $6990: $c2 $c0 $40

	ret nz                                           ; $6993: $c0

	ld h, b                                          ; $6994: $60
	ldh [$60], a                                     ; $6995: $e0 $60
	ldh [$30], a                                     ; $6997: $e0 $30
	ldh a, [$30]                                     ; $6999: $f0 $30
	ldh a, [$78]                                     ; $699b: $f0 $78
	add sp, -$44                                     ; $699d: $e8 $bc
	and h                                            ; $699f: $a4
	ld a, $84                                        ; $69a0: $3e $84
	ld [hl+], a                                      ; $69a2: $22
	ccf                                              ; $69a3: $3f
	ld h, c                                          ; $69a4: $61
	ld a, a                                          ; $69a5: $7f
	ldh [$73], a                                     ; $69a6: $e0 $73
	inc bc                                           ; $69a8: $03
	ld bc, $4287                                     ; $69a9: $01 $87 $42
	ld c, [hl]                                       ; $69ac: $4e
	add h                                            ; $69ad: $84
	sbc l                                            ; $69ae: $9d
	ld [$192b], sp                                   ; $69af: $08 $2b $19
	dec sp                                           ; $69b2: $3b
	ld [de], a                                       ; $69b3: $12
	ld d, [hl]                                       ; $69b4: $56
	ld [hl-], a                                      ; $69b5: $32
	ld d, [hl]                                       ; $69b6: $56
	inc h                                            ; $69b7: $24
	ld [hl], a                                       ; $69b8: $77
	inc h                                            ; $69b9: $24
	ld a, a                                          ; $69ba: $7f
	dec h                                            ; $69bb: $25
	rst $38                                          ; $69bc: $ff
	ld h, a                                          ; $69bd: $67
	cp $8a                                           ; $69be: $fe $8a
	scf                                              ; $69c0: $37
	rst $38                                          ; $69c1: $ff
	scf                                              ; $69c2: $37
	rst GetHLinHL                                          ; $69c3: $cf
	add [hl]                                         ; $69c4: $86
	ccf                                              ; $69c5: $3f
	ld a, [de]                                       ; $69c6: $1a
	rst $38                                          ; $69c7: $ff
	ld h, a                                          ; $69c8: $67
	rst JumpTable                                          ; $69c9: $c7
	add d                                            ; $69ca: $82
	cp a                                             ; $69cb: $bf
	dec de                                           ; $69cc: $1b
	ld h, [hl]                                       ; $69cd: $66
	ccf                                              ; $69ce: $3f
	ret nz                                           ; $69cf: $c0

	ld a, a                                          ; $69d0: $7f
	add b                                            ; $69d1: $80
	rst $38                                          ; $69d2: $ff
	add b                                            ; $69d3: $80
	rst $38                                          ; $69d4: $ff
	cp a                                             ; $69d5: $bf
	rst $38                                          ; $69d6: $ff
	rst $38                                          ; $69d7: $ff
	sub [hl]                                         ; $69d8: $96
	ld bc, $03ff                                     ; $69d9: $01 $ff $03
	rst $38                                          ; $69dc: $ff
	rrca                                             ; $69dd: $0f
	ldh a, [$3f]                                     ; $69de: $f0 $3f
	rst GetHLinHL                                          ; $69e0: $cf
	jr nc, jr_066_6a5e                               ; $69e1: $30 $7b

	db $f4                                           ; $69e3: $f4
	sub l                                            ; $69e4: $95
	rrca                                             ; $69e5: $0f
	rst $38                                          ; $69e6: $ff
	dec sp                                           ; $69e7: $3b
	ld sp, hl                                        ; $69e8: $f9
	ld a, a                                          ; $69e9: $7f
	rst AddAOntoHL                                          ; $69ea: $ef
	dec bc                                           ; $69eb: $0b
	jp hl                                            ; $69ec: $e9


	ld c, $f7                                        ; $69ed: $0e $f7
	cp [hl]                                          ; $69ef: $be
	rst GetHLinHL                                          ; $69f0: $cf
	adc a                                            ; $69f1: $8f
	sbc a                                            ; $69f2: $9f
	ld [hl], a                                       ; $69f3: $77
	db $e4                                           ; $69f4: $e4
	add b                                            ; $69f5: $80
	rlca                                             ; $69f6: $07
	db $fd                                           ; $69f7: $fd
	rra                                              ; $69f8: $1f
	ld a, [$eafe]                                    ; $69f9: $fa $fe $ea
	rst $38                                          ; $69fc: $ff
	call $8ddd                                       ; $69fd: $cd $dd $8d
	db $ed                                           ; $6a00: $ed
	and $3e                                          ; $6a01: $e6 $3e
	inc de                                           ; $6a03: $13
	db $dd                                           ; $6a04: $dd
	set 5, a                                         ; $6a05: $cb $ef
	ld l, c                                          ; $6a07: $69
	halt                                             ; $6a08: $76
	dec h                                            ; $6a09: $25
	or [hl]                                          ; $6a0a: $b6
	sub l                                            ; $6a0b: $95
	or [hl]                                          ; $6a0c: $b6
	sub l                                            ; $6a0d: $95
	cp $95                                           ; $6a0e: $fe $95
	rst $38                                          ; $6a10: $ff
	sub h                                            ; $6a11: $94
	rst $38                                          ; $6a12: $ff
	or h                                             ; $6a13: $b4
	rst $38                                          ; $6a14: $ff
	sub l                                            ; $6a15: $95
	or h                                             ; $6a16: $b4
	rst SubAFromDE                                          ; $6a17: $df
	ld [hl], h                                       ; $6a18: $74
	sbc a                                            ; $6a19: $9f
	db $fc                                           ; $6a1a: $fc
	rst FarCall                                          ; $6a1b: $f7
	ld a, $f3                                        ; $6a1c: $3e $f3
	adc $33                                          ; $6a1e: $ce $33
	ld a, e                                          ; $6a20: $7b
	call nc, $8781                                   ; $6a21: $d4 $81 $87
	rst $38                                          ; $6a24: $ff
	rst SubAFromBC                                          ; $6a25: $e7
	db $fd                                           ; $6a26: $fd
	rst GetHLinHL                                          ; $6a27: $cf
	ld a, l                                          ; $6a28: $7d

jr_066_6a29:
	rrca                                             ; $6a29: $0f
	ld a, c                                          ; $6a2a: $79
	rra                                              ; $6a2b: $1f
	ei                                               ; $6a2c: $fb
	ccf                                              ; $6a2d: $3f
	ld [$ea7f], a                                    ; $6a2e: $ea $7f $ea
	rst $38                                          ; $6a31: $ff
	jp z, $d6db                                      ; $6a32: $ca $db $d6

	call nc, $5555                                   ; $6a35: $d4 $55 $55
	ld [hl], l                                       ; $6a38: $75
	and a                                            ; $6a39: $a7
	xor l                                            ; $6a3a: $ad
	xor d                                            ; $6a3b: $aa
	xor e                                            ; $6a3c: $ab
	xor d                                            ; $6a3d: $aa
	ld l, e                                          ; $6a3e: $6b
	xor $5b                                          ; $6a3f: $ee $5b
	rra                                              ; $6a41: $1f
	add b                                            ; $6a42: $80
	sbc b                                            ; $6a43: $98
	rlca                                             ; $6a44: $07
	ld hl, sp+$1f                                    ; $6a45: $f8 $1f
	rst SubAFromBC                                          ; $6a47: $e7
	jr c, jr_066_6a29                                ; $6a48: $38 $df

	jr nz, jr_066_6abf                               ; $6a4a: $20 $73

	ld a, [hl]                                       ; $6a4c: $7e
	sbc h                                            ; $6a4d: $9c
	dec a                                            ; $6a4e: $3d
	db $fd                                           ; $6a4f: $fd
	ld l, e                                          ; $6a50: $6b
	inc bc                                           ; $6a51: $03
	add b                                            ; $6a52: $80
	daa                                              ; $6a53: $27
	add b                                            ; $6a54: $80
	sbc b                                            ; $6a55: $98
	rlca                                             ; $6a56: $07
	rst $38                                          ; $6a57: $ff
	add a                                            ; $6a58: $87
	db $fd                                           ; $6a59: $fd
	rst AddAOntoHL                                          ; $6a5a: $ef
	db $fd                                           ; $6a5b: $fd
	ld c, a                                          ; $6a5c: $4f
	inc bc                                           ; $6a5d: $03

jr_066_6a5e:
	add b                                            ; $6a5e: $80
	rra                                              ; $6a5f: $1f
	add b                                            ; $6a60: $80
	cp a                                             ; $6a61: $bf
	rst $38                                          ; $6a62: $ff
	rst $38                                          ; $6a63: $ff
	sbc e                                            ; $6a64: $9b
	dec sp                                           ; $6a65: $3b
	pop af                                           ; $6a66: $f1
	ld c, $ff                                        ; $6a67: $0e $ff
	inc bc                                           ; $6a69: $03
	add b                                            ; $6a6a: $80
	ld d, e                                          ; $6a6b: $53
	add b                                            ; $6a6c: $80
	sbc b                                            ; $6a6d: $98
	scf                                              ; $6a6e: $37
	cp $c3                                           ; $6a6f: $fe $c3
	ld a, $f3                                        ; $6a71: $3e $f3
	rst GetHLinHL                                          ; $6a73: $cf
	inc sp                                           ; $6a74: $33
	ld a, e                                          ; $6a75: $7b
	add b                                            ; $6a76: $80
	ld a, a                                          ; $6a77: $7f
	jp nc, $0f9b                                     ; $6a78: $d2 $9b $0f

	db $fd                                           ; $6a7b: $fd
	adc a                                            ; $6a7c: $8f
	ld sp, hl                                        ; $6a7d: $f9
	inc bc                                           ; $6a7e: $03
	add b                                            ; $6a7f: $80
	ld c, e                                          ; $6a80: $4b
	add b                                            ; $6a81: $80
	ld a, e                                          ; $6a82: $7b
	ld [$7e6a], sp                                   ; $6a83: $08 $6a $7e
	cp a                                             ; $6a86: $bf
	rst $38                                          ; $6a87: $ff
	rst $38                                          ; $6a88: $ff
	sbc h                                            ; $6a89: $9c
	ld h, c                                          ; $6a8a: $61
	rst $38                                          ; $6a8b: $ff
	rra                                              ; $6a8c: $1f
	inc bc                                           ; $6a8d: $03
	add b                                            ; $6a8e: $80
	rla                                              ; $6a8f: $17
	add b                                            ; $6a90: $80
	sbc [hl]                                         ; $6a91: $9e
	rst GetHLinHL                                          ; $6a92: $cf
	dec hl                                           ; $6a93: $2b
	add b                                            ; $6a94: $80
	adc c                                            ; $6a95: $89
	db $fd                                           ; $6a96: $fd
	or a                                             ; $6a97: $b7
	db $ed                                           ; $6a98: $ed
	cp a                                             ; $6a99: $bf
	ld l, h                                          ; $6a9a: $6c
	rst $38                                          ; $6a9b: $ff
	inc h                                            ; $6a9c: $24
	ld a, a                                          ; $6a9d: $7f
	nop                                              ; $6a9e: $00
	rra                                              ; $6a9f: $1f
	ld [$103f], sp                                   ; $6aa0: $08 $3f $10
	rra                                              ; $6aa3: $1f
	nop                                              ; $6aa4: $00
	rrca                                             ; $6aa5: $0f
	ld l, $65                                        ; $6aa6: $2e $65
	nop                                              ; $6aa8: $00
	daa                                              ; $6aa9: $27
	jr jr_066_6ab3                                   ; $6aaa: $18 $07

	cp [hl]                                          ; $6aac: $be
	rra                                              ; $6aad: $1f
	rra                                              ; $6aae: $1f
	ccf                                              ; $6aaf: $3f
	sbc e                                            ; $6ab0: $9b
	rlca                                             ; $6ab1: $07
	cp e                                             ; $6ab2: $bb

jr_066_6ab3:
	rst $38                                          ; $6ab3: $ff
	rst $38                                          ; $6ab4: $ff
	ld b, a                                          ; $6ab5: $47
	ldh [$9b], a                                     ; $6ab6: $e0 $9b
	ld l, [hl]                                       ; $6ab8: $6e
	daa                                              ; $6ab9: $27
	inc a                                            ; $6aba: $3c
	rra                                              ; $6abb: $1f
	dec de                                           ; $6abc: $1b
	ldh [$98], a                                     ; $6abd: $e0 $98

jr_066_6abf:
	ld c, a                                          ; $6abf: $4f
	ld l, [hl]                                       ; $6ac0: $6e
	daa                                              ; $6ac1: $27
	ld a, $7d                                        ; $6ac2: $3e $7d
	inc a                                            ; $6ac4: $3c
	dec de                                           ; $6ac5: $1b
	inc de                                           ; $6ac6: $13
	ldh [$9b], a                                     ; $6ac7: $e0 $9b
	ld a, a                                          ; $6ac9: $7f
	inc a                                            ; $6aca: $3c
	ccf                                              ; $6acb: $3f
	jr jr_066_6b31                                   ; $6acc: $18 $63

	ldh [$a8], a                                     ; $6ace: $e0 $a8
	ld bc, $7695                                     ; $6ad0: $01 $95 $76
	ld e, c                                          ; $6ad3: $59
	ld a, [hl]                                       ; $6ad4: $7e
	ld d, c                                          ; $6ad5: $51
	ld a, [hl]                                       ; $6ad6: $7e
	ld d, c                                          ; $6ad7: $51
	ld e, l                                          ; $6ad8: $5d
	ld [hl], e                                       ; $6ad9: $73
	dec a                                            ; $6ada: $3d
	inc sp                                           ; $6adb: $33
	ld [hl], a                                       ; $6adc: $77
	cp $92                                           ; $6add: $fe $92
	dec e                                            ; $6adf: $1d
	inc de                                           ; $6ae0: $13
	dec d                                            ; $6ae1: $15
	dec de                                           ; $6ae2: $1b
	dec c                                            ; $6ae3: $0d
	dec bc                                           ; $6ae4: $0b
	add hl, bc                                       ; $6ae5: $09
	rrca                                             ; $6ae6: $0f
	inc b                                            ; $6ae7: $04
	rlca                                             ; $6ae8: $07
	inc b                                            ; $6ae9: $04
	rlca                                             ; $6aea: $07
	ld [bc], a                                       ; $6aeb: $02
	sbc $03                                          ; $6aec: $de $03
	ld a, a                                          ; $6aee: $7f
	db $fc                                           ; $6aef: $fc
	ld h, a                                          ; $6af0: $67
	cp $5b                                           ; $6af1: $fe $5b
	push af                                          ; $6af3: $f5
	ld l, e                                          ; $6af4: $6b
	rst AddAOntoHL                                          ; $6af5: $ef
	rst SubAFromDE                                          ; $6af6: $df
	inc bc                                           ; $6af7: $03
	rst SubAFromDE                                          ; $6af8: $df
	rrca                                             ; $6af9: $0f
	adc [hl]                                         ; $6afa: $8e
	ld sp, $ce3f                                     ; $6afb: $31 $3f $ce
	add h                                            ; $6afe: $84
	add h                                            ; $6aff: $84
	adc h                                            ; $6b00: $8c
	sbc l                                            ; $6b01: $9d
	adc b                                            ; $6b02: $88
	sbc b                                            ; $6b03: $98
	add hl, bc                                       ; $6b04: $09
	sbc d                                            ; $6b05: $9a
	ld de, $12b1                                     ; $6b06: $11 $b1 $12
	or l                                             ; $6b09: $b5
	ld [de], a                                       ; $6b0a: $12
	or a                                             ; $6b0b: $b7
	ld a, e                                          ; $6b0c: $7b
	cp $99                                           ; $6b0d: $fe $99
	rst FarCall                                          ; $6b0f: $f7
	ld [de], a                                       ; $6b10: $12
	rst $38                                          ; $6b11: $ff
	ld [de], a                                       ; $6b12: $12
	rst $38                                          ; $6b13: $ff
	sub d                                            ; $6b14: $92
	ld a, e                                          ; $6b15: $7b
	cp $80                                           ; $6b16: $fe $80
	sbc e                                            ; $6b18: $9b
	rst $38                                          ; $6b19: $ff
	ld e, e                                          ; $6b1a: $5b
	rst $38                                          ; $6b1b: $ff
	db $db                                           ; $6b1c: $db
	or [hl]                                          ; $6b1d: $b6
	rst $38                                          ; $6b1e: $ff
	sub [hl]                                         ; $6b1f: $96
	rst $38                                          ; $6b20: $ff
	add d                                            ; $6b21: $82
	sbc $82                                          ; $6b22: $de $82
	add $80                                          ; $6b24: $c6 $80
	jp nz, Jump_066_40c0                             ; $6b26: $c2 $c0 $40

	ret nz                                           ; $6b29: $c0

	ld h, b                                          ; $6b2a: $60
	ldh [$60], a                                     ; $6b2b: $e0 $60
	ldh [$30], a                                     ; $6b2d: $e0 $30
	ldh a, [$30]                                     ; $6b2f: $f0 $30

jr_066_6b31:
	ldh a, [$78]                                     ; $6b31: $f0 $78
	add sp, -$44                                     ; $6b33: $e8 $bc
	and h                                            ; $6b35: $a4
	ld a, $84                                        ; $6b36: $3e $84
	ld [hl+], a                                      ; $6b38: $22

Call_066_6b39:
	ccf                                              ; $6b39: $3f
	ld h, c                                          ; $6b3a: $61
	ld a, a                                          ; $6b3b: $7f
	ldh [$73], a                                     ; $6b3c: $e0 $73
	inc bc                                           ; $6b3e: $03
	ld bc, $4287                                     ; $6b3f: $01 $87 $42
	ld c, [hl]                                       ; $6b42: $4e
	add h                                            ; $6b43: $84
	sbc l                                            ; $6b44: $9d
	ld [$192b], sp                                   ; $6b45: $08 $2b $19
	dec sp                                           ; $6b48: $3b
	ld [de], a                                       ; $6b49: $12
	ld d, [hl]                                       ; $6b4a: $56
	ld [hl-], a                                      ; $6b4b: $32
	ld d, [hl]                                       ; $6b4c: $56
	inc h                                            ; $6b4d: $24
	ld [hl], a                                       ; $6b4e: $77
	inc h                                            ; $6b4f: $24
	ld a, a                                          ; $6b50: $7f
	dec h                                            ; $6b51: $25
	rst $38                                          ; $6b52: $ff
	ld h, a                                          ; $6b53: $67
	cp $8a                                           ; $6b54: $fe $8a
	scf                                              ; $6b56: $37
	rst $38                                          ; $6b57: $ff
	scf                                              ; $6b58: $37
	rst GetHLinHL                                          ; $6b59: $cf
	add [hl]                                         ; $6b5a: $86
	ccf                                              ; $6b5b: $3f
	ld a, [de]                                       ; $6b5c: $1a
	rst $38                                          ; $6b5d: $ff
	ld h, a                                          ; $6b5e: $67
	rst JumpTable                                          ; $6b5f: $c7
	add d                                            ; $6b60: $82
	cp a                                             ; $6b61: $bf
	dec de                                           ; $6b62: $1b
	ld h, [hl]                                       ; $6b63: $66
	ccf                                              ; $6b64: $3f
	ret nz                                           ; $6b65: $c0

	ld a, a                                          ; $6b66: $7f
	add b                                            ; $6b67: $80
	rst $38                                          ; $6b68: $ff
	add b                                            ; $6b69: $80
	rst $38                                          ; $6b6a: $ff
	cp a                                             ; $6b6b: $bf
	rst $38                                          ; $6b6c: $ff
	rst $38                                          ; $6b6d: $ff
	adc c                                            ; $6b6e: $89
	ld bc, $03ff                                     ; $6b6f: $01 $ff $03
	rst $38                                          ; $6b72: $ff
	inc bc                                           ; $6b73: $03
	db $fc                                           ; $6b74: $fc
	rrca                                             ; $6b75: $0f
	di                                               ; $6b76: $f3
	inc a                                            ; $6b77: $3c
	rst GetHLinHL                                          ; $6b78: $cf
	jr nc, @+$01                                     ; $6b79: $30 $ff

	rrca                                             ; $6b7b: $0f
	rst $38                                          ; $6b7c: $ff
	dec sp                                           ; $6b7d: $3b
	ld sp, hl                                        ; $6b7e: $f9
	ld a, a                                          ; $6b7f: $7f
	rst AddAOntoHL                                          ; $6b80: $ef
	dec bc                                           ; $6b81: $0b
	ret                                              ; $6b82: $c9


Call_066_6b83:
	ld c, $f7                                        ; $6b83: $0e $f7
	cp [hl]                                          ; $6b85: $be
	rst GetHLinHL                                          ; $6b86: $cf
	adc a                                            ; $6b87: $8f
	sbc a                                            ; $6b88: $9f
	ld [hl], a                                       ; $6b89: $77
	db $e4                                           ; $6b8a: $e4
	add b                                            ; $6b8b: $80
	rlca                                             ; $6b8c: $07
	db $fd                                           ; $6b8d: $fd
	rra                                              ; $6b8e: $1f
	ld a, [$eafe]                                    ; $6b8f: $fa $fe $ea
	rst $38                                          ; $6b92: $ff
	call $8ddd                                       ; $6b93: $cd $dd $8d
	db $ed                                           ; $6b96: $ed
	and $3e                                          ; $6b97: $e6 $3e
	inc de                                           ; $6b99: $13
	db $dd                                           ; $6b9a: $dd
	set 5, a                                         ; $6b9b: $cb $ef
	ld l, c                                          ; $6b9d: $69
	halt                                             ; $6b9e: $76
	dec h                                            ; $6b9f: $25
	or [hl]                                          ; $6ba0: $b6
	sub l                                            ; $6ba1: $95
	or [hl]                                          ; $6ba2: $b6
	sub l                                            ; $6ba3: $95
	cp $95                                           ; $6ba4: $fe $95
	rst $38                                          ; $6ba6: $ff
	sub h                                            ; $6ba7: $94
	rst $38                                          ; $6ba8: $ff
	or h                                             ; $6ba9: $b4
	rst $38                                          ; $6baa: $ff
	sub l                                            ; $6bab: $95
	or h                                             ; $6bac: $b4
	rst SubAFromDE                                          ; $6bad: $df
	ld [hl], h                                       ; $6bae: $74
	sbc a                                            ; $6baf: $9f
	db $fc                                           ; $6bb0: $fc
	rst FarCall                                          ; $6bb1: $f7
	ld a, $f3                                        ; $6bb2: $3e $f3
	adc $33                                          ; $6bb4: $ce $33
	ld a, e                                          ; $6bb6: $7b
	call nc, $8781                                   ; $6bb7: $d4 $81 $87
	rst $38                                          ; $6bba: $ff
	rst SubAFromBC                                          ; $6bbb: $e7
	db $fd                                           ; $6bbc: $fd
	rst GetHLinHL                                          ; $6bbd: $cf
	ld a, l                                          ; $6bbe: $7d
	rrca                                             ; $6bbf: $0f
	ld a, c                                          ; $6bc0: $79
	rra                                              ; $6bc1: $1f
	ei                                               ; $6bc2: $fb
	ccf                                              ; $6bc3: $3f
	ld [$ea7f], a                                    ; $6bc4: $ea $7f $ea
	rst $38                                          ; $6bc7: $ff
	jp z, $d6db                                      ; $6bc8: $ca $db $d6

	call nc, $5555                                   ; $6bcb: $d4 $55 $55
	ld [hl], l                                       ; $6bce: $75
	and a                                            ; $6bcf: $a7
	xor l                                            ; $6bd0: $ad
	xor d                                            ; $6bd1: $aa
	xor e                                            ; $6bd2: $ab
	xor d                                            ; $6bd3: $aa
	ld l, e                                          ; $6bd4: $6b
	xor $5b                                          ; $6bd5: $ee $5b
	rra                                              ; $6bd7: $1f
	add b                                            ; $6bd8: $80
	ld a, a                                          ; $6bd9: $7f
	ld a, [$079a]                                    ; $6bda: $fa $9a $07
	ld hl, sp+$3f                                    ; $6bdd: $f8 $3f
	rst JumpTable                                          ; $6bdf: $c7
	jr c, @+$7d                                      ; $6be0: $38 $7b

	ld hl, sp+$7f                                    ; $6be2: $f8 $7f
	ld a, [hl]                                       ; $6be4: $7e
	sbc e                                            ; $6be5: $9b
	dec a                                            ; $6be6: $3d
	db $fd                                           ; $6be7: $fd
	ld l, e                                          ; $6be8: $6b
	jp hl                                            ; $6be9: $e9


	inc bc                                           ; $6bea: $03
	add b                                            ; $6beb: $80
	ccf                                              ; $6bec: $3f
	add b                                            ; $6bed: $80
	sbc l                                            ; $6bee: $9d
	xor $13                                          ; $6bef: $ee $13
	ld [hl], a                                       ; $6bf1: $77
	call nc, Call_066_7e7f                           ; $6bf2: $d4 $7f $7e
	sbc e                                            ; $6bf5: $9b
	db $fd                                           ; $6bf6: $fd
	rst AddAOntoHL                                          ; $6bf7: $ef
	db $fd                                           ; $6bf8: $fd
	ld c, a                                          ; $6bf9: $4f
	inc bc                                           ; $6bfa: $03
	add b                                            ; $6bfb: $80
	ccf                                              ; $6bfc: $3f
	add b                                            ; $6bfd: $80
	ld a, [hl]                                       ; $6bfe: $7e
	cp $9c                                           ; $6bff: $fe $9c
	ccf                                              ; $6c01: $3f
	jp Jump_066_733c                                 ; $6c02: $c3 $3c $73


	ldh a, [$7f]                                     ; $6c05: $f0 $7f
	cp $9b                                           ; $6c07: $fe $9b
	dec sp                                           ; $6c09: $3b
	pop af                                           ; $6c0a: $f1
	ld c, $ff                                        ; $6c0b: $0e $ff
	inc bc                                           ; $6c0d: $03
	add b                                            ; $6c0e: $80
	ld d, e                                          ; $6c0f: $53
	add b                                            ; $6c10: $80
	sbc d                                            ; $6c11: $9a
	scf                                              ; $6c12: $37
	cp $f3                                           ; $6c13: $fe $f3
	ld c, $f3                                        ; $6c15: $0e $f3
	ld [hl], e                                       ; $6c17: $73
	add b                                            ; $6c18: $80
	ld a, a                                          ; $6c19: $7f
	jp nc, $0f9b                                     ; $6c1a: $d2 $9b $0f

	db $fd                                           ; $6c1d: $fd
	adc a                                            ; $6c1e: $8f
	ld sp, hl                                        ; $6c1f: $f9
	inc bc                                           ; $6c20: $03
	add b                                            ; $6c21: $80
	ld b, e                                          ; $6c22: $43
	add b                                            ; $6c23: $80
	sbc d                                            ; $6c24: $9a
	ld bc, $0ffe                                     ; $6c25: $01 $fe $0f
	pop af                                           ; $6c28: $f1
	ld a, $7a                                        ; $6c29: $3e $7a
	ld a, [hl]                                       ; $6c2b: $7e
	cp a                                             ; $6c2c: $bf
	rst $38                                          ; $6c2d: $ff
	rst $38                                          ; $6c2e: $ff
	sbc h                                            ; $6c2f: $9c
	ld h, c                                          ; $6c30: $61
	rst $38                                          ; $6c31: $ff
	rra                                              ; $6c32: $1f
	inc bc                                           ; $6c33: $03
	add b                                            ; $6c34: $80
	rla                                              ; $6c35: $17
	add b                                            ; $6c36: $80
	sbc [hl]                                         ; $6c37: $9e
	rst GetHLinHL                                          ; $6c38: $cf
	dec hl                                           ; $6c39: $2b
	add b                                            ; $6c3a: $80
	adc c                                            ; $6c3b: $89
	db $fd                                           ; $6c3c: $fd
	or a                                             ; $6c3d: $b7
	db $ed                                           ; $6c3e: $ed
	cp a                                             ; $6c3f: $bf
	ld l, h                                          ; $6c40: $6c
	rst $38                                          ; $6c41: $ff
	inc h                                            ; $6c42: $24
	ld a, a                                          ; $6c43: $7f
	nop                                              ; $6c44: $00
	rra                                              ; $6c45: $1f
	ld [$103f], sp                                   ; $6c46: $08 $3f $10
	rra                                              ; $6c49: $1f
	nop                                              ; $6c4a: $00
	rrca                                             ; $6c4b: $0f
	ld l, $65                                        ; $6c4c: $2e $65
	nop                                              ; $6c4e: $00
	daa                                              ; $6c4f: $27
	jr jr_066_6c59                                   ; $6c50: $18 $07

	cp [hl]                                          ; $6c52: $be
	rra                                              ; $6c53: $1f
	rra                                              ; $6c54: $1f
	ccf                                              ; $6c55: $3f
	sbc e                                            ; $6c56: $9b
	rlca                                             ; $6c57: $07
	cp e                                             ; $6c58: $bb

jr_066_6c59:
	rst $38                                          ; $6c59: $ff
	rst $38                                          ; $6c5a: $ff
	ld b, e                                          ; $6c5b: $43
	ldh [$9c], a                                     ; $6c5c: $e0 $9c
	daa                                              ; $6c5e: $27
	inc a                                            ; $6c5f: $3c
	rra                                              ; $6c60: $1f
	rrca                                             ; $6c61: $0f
	ldh [$9b], a                                     ; $6c62: $e0 $9b
	ld a, $3d                                        ; $6c64: $3e $3d
	inc a                                            ; $6c66: $3c
	dec de                                           ; $6c67: $1b
	rra                                              ; $6c68: $1f
	ldh [$97], a                                     ; $6c69: $e0 $97
	ld h, $25                                        ; $6c6b: $26 $25
	ld a, $3f                                        ; $6c6d: $3e $3f
	ld a, $1d                                        ; $6c6f: $3e $1d
	inc e                                            ; $6c71: $1c
	dec sp                                           ; $6c72: $3b
	ld [hl], a                                       ; $6c73: $77
	cp h                                             ; $6c74: $bc
	ld [hl], a                                       ; $6c75: $77
	ldh [$a0], a                                     ; $6c76: $e0 $a0
	ld bc, $7695                                     ; $6c78: $01 $95 $76
	ld e, c                                          ; $6c7b: $59
	ld a, [hl]                                       ; $6c7c: $7e
	ld d, c                                          ; $6c7d: $51
	ld a, [hl]                                       ; $6c7e: $7e
	ld d, c                                          ; $6c7f: $51
	ld e, l                                          ; $6c80: $5d
	ld [hl], e                                       ; $6c81: $73
	dec a                                            ; $6c82: $3d
	inc sp                                           ; $6c83: $33
	ld [hl], a                                       ; $6c84: $77
	cp $92                                           ; $6c85: $fe $92
	dec e                                            ; $6c87: $1d
	inc de                                           ; $6c88: $13
	dec d                                            ; $6c89: $15
	dec de                                           ; $6c8a: $1b
	dec c                                            ; $6c8b: $0d
	dec bc                                           ; $6c8c: $0b
	add hl, bc                                       ; $6c8d: $09
	rrca                                             ; $6c8e: $0f
	inc b                                            ; $6c8f: $04
	rlca                                             ; $6c90: $07
	inc b                                            ; $6c91: $04
	rlca                                             ; $6c92: $07
	ld [bc], a                                       ; $6c93: $02
	sbc $03                                          ; $6c94: $de $03
	ld a, a                                          ; $6c96: $7f
	db $fc                                           ; $6c97: $fc
	ld h, a                                          ; $6c98: $67
	cp $5b                                           ; $6c99: $fe $5b
	push af                                          ; $6c9b: $f5
	ld l, e                                          ; $6c9c: $6b
	rst AddAOntoHL                                          ; $6c9d: $ef
	rst SubAFromDE                                          ; $6c9e: $df
	inc bc                                           ; $6c9f: $03
	rst SubAFromDE                                          ; $6ca0: $df
	rrca                                             ; $6ca1: $0f
	adc [hl]                                         ; $6ca2: $8e
	ld sp, $ce3f                                     ; $6ca3: $31 $3f $ce
	add h                                            ; $6ca6: $84
	add h                                            ; $6ca7: $84
	adc h                                            ; $6ca8: $8c
	sbc l                                            ; $6ca9: $9d
	adc b                                            ; $6caa: $88
	sbc b                                            ; $6cab: $98
	add hl, bc                                       ; $6cac: $09
	sbc d                                            ; $6cad: $9a
	ld de, $12b1                                     ; $6cae: $11 $b1 $12
	or l                                             ; $6cb1: $b5
	ld [de], a                                       ; $6cb2: $12
	or a                                             ; $6cb3: $b7
	ld a, e                                          ; $6cb4: $7b
	cp $99                                           ; $6cb5: $fe $99
	rst FarCall                                          ; $6cb7: $f7
	ld [de], a                                       ; $6cb8: $12
	rst $38                                          ; $6cb9: $ff
	ld [de], a                                       ; $6cba: $12
	rst $38                                          ; $6cbb: $ff
	sub d                                            ; $6cbc: $92
	ld a, e                                          ; $6cbd: $7b
	cp $80                                           ; $6cbe: $fe $80
	sbc e                                            ; $6cc0: $9b
	rst $38                                          ; $6cc1: $ff
	ld e, e                                          ; $6cc2: $5b
	rst $38                                          ; $6cc3: $ff
	db $db                                           ; $6cc4: $db
	or [hl]                                          ; $6cc5: $b6
	rst $38                                          ; $6cc6: $ff
	sub [hl]                                         ; $6cc7: $96
	rst $38                                          ; $6cc8: $ff
	add d                                            ; $6cc9: $82
	sbc $82                                          ; $6cca: $de $82
	add $80                                          ; $6ccc: $c6 $80
	jp nz, Jump_066_40c0                             ; $6cce: $c2 $c0 $40

	ret nz                                           ; $6cd1: $c0

	ld h, b                                          ; $6cd2: $60
	ldh [$60], a                                     ; $6cd3: $e0 $60
	ldh [$30], a                                     ; $6cd5: $e0 $30
	ldh a, [$30]                                     ; $6cd7: $f0 $30
	ldh a, [$78]                                     ; $6cd9: $f0 $78
	add sp, -$44                                     ; $6cdb: $e8 $bc
	and h                                            ; $6cdd: $a4
	ld a, $84                                        ; $6cde: $3e $84
	ld [hl+], a                                      ; $6ce0: $22
	ccf                                              ; $6ce1: $3f
	ld h, c                                          ; $6ce2: $61
	ld a, a                                          ; $6ce3: $7f
	ldh [$73], a                                     ; $6ce4: $e0 $73
	inc bc                                           ; $6ce6: $03
	ld bc, $4287                                     ; $6ce7: $01 $87 $42
	ld c, [hl]                                       ; $6cea: $4e
	add h                                            ; $6ceb: $84
	sbc l                                            ; $6cec: $9d
	ld [$192b], sp                                   ; $6ced: $08 $2b $19
	dec sp                                           ; $6cf0: $3b
	ld [de], a                                       ; $6cf1: $12
	ld d, [hl]                                       ; $6cf2: $56
	ld [hl-], a                                      ; $6cf3: $32
	ld d, [hl]                                       ; $6cf4: $56
	inc h                                            ; $6cf5: $24
	ld [hl], a                                       ; $6cf6: $77
	inc h                                            ; $6cf7: $24
	ld a, a                                          ; $6cf8: $7f
	dec h                                            ; $6cf9: $25
	rst $38                                          ; $6cfa: $ff
	ld h, a                                          ; $6cfb: $67
	cp $8a                                           ; $6cfc: $fe $8a
	scf                                              ; $6cfe: $37
	rst $38                                          ; $6cff: $ff
	scf                                              ; $6d00: $37
	rst GetHLinHL                                          ; $6d01: $cf
	add [hl]                                         ; $6d02: $86
	ccf                                              ; $6d03: $3f
	ld a, [de]                                       ; $6d04: $1a
	rst $38                                          ; $6d05: $ff
	ld h, a                                          ; $6d06: $67
	rst JumpTable                                          ; $6d07: $c7
	add d                                            ; $6d08: $82
	cp a                                             ; $6d09: $bf
	dec de                                           ; $6d0a: $1b
	ld h, [hl]                                       ; $6d0b: $66
	ccf                                              ; $6d0c: $3f
	ret nz                                           ; $6d0d: $c0

	ld a, a                                          ; $6d0e: $7f
	add b                                            ; $6d0f: $80
	rst $38                                          ; $6d10: $ff
	add b                                            ; $6d11: $80
	rst $38                                          ; $6d12: $ff
	cp a                                             ; $6d13: $bf
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	sbc h                                            ; $6d16: $9c
	ld bc, $03ff                                     ; $6d17: $01 $ff $03
	ld [hl], e                                       ; $6d1a: $73
	ld hl, sp-$66                                    ; $6d1b: $f8 $9a
	rlca                                             ; $6d1d: $07
	ld hl, sp+$7f                                    ; $6d1e: $f8 $7f
	add a                                            ; $6d20: $87
	ld a, b                                          ; $6d21: $78
	ld [hl], e                                       ; $6d22: $73
	or $9b                                           ; $6d23: $f6 $9b
	ld [hl], c                                       ; $6d25: $71
	rst AddAOntoHL                                          ; $6d26: $ef
	rra                                              ; $6d27: $1f
	rst $38                                          ; $6d28: $ff
	cp [hl]                                          ; $6d29: $be
	rst GetHLinHL                                          ; $6d2a: $cf
	adc a                                            ; $6d2b: $8f
	sbc a                                            ; $6d2c: $9f
	ld [hl], a                                       ; $6d2d: $77
	db $e4                                           ; $6d2e: $e4
	add b                                            ; $6d2f: $80
	rlca                                             ; $6d30: $07
	db $fd                                           ; $6d31: $fd
	rra                                              ; $6d32: $1f
	ld a, [$eafe]                                    ; $6d33: $fa $fe $ea
	rst $38                                          ; $6d36: $ff
	call $8ddd                                       ; $6d37: $cd $dd $8d
	db $ed                                           ; $6d3a: $ed
	and $3e                                          ; $6d3b: $e6 $3e
	inc de                                           ; $6d3d: $13
	db $dd                                           ; $6d3e: $dd
	set 5, a                                         ; $6d3f: $cb $ef
	ld l, c                                          ; $6d41: $69
	halt                                             ; $6d42: $76
	dec h                                            ; $6d43: $25
	or [hl]                                          ; $6d44: $b6
	sub l                                            ; $6d45: $95
	or [hl]                                          ; $6d46: $b6
	sub l                                            ; $6d47: $95
	cp $95                                           ; $6d48: $fe $95
	rst $38                                          ; $6d4a: $ff
	sub h                                            ; $6d4b: $94
	rst $38                                          ; $6d4c: $ff
	or h                                             ; $6d4d: $b4
	rst $38                                          ; $6d4e: $ff
	sub l                                            ; $6d4f: $95
	or h                                             ; $6d50: $b4
	rst SubAFromDE                                          ; $6d51: $df
	ld [hl], h                                       ; $6d52: $74
	sbc a                                            ; $6d53: $9f
	db $fc                                           ; $6d54: $fc
	scf                                              ; $6d55: $37
	cp $f3                                           ; $6d56: $fe $f3
	ld a, $c3                                        ; $6d58: $3e $c3
	ld [hl], a                                       ; $6d5a: $77
	call nc, $d27b                                   ; $6d5b: $d4 $7b $d2
	add l                                            ; $6d5e: $85
	rrca                                             ; $6d5f: $0f
	db $fd                                           ; $6d60: $fd
	rst GetHLinHL                                          ; $6d61: $cf
	ld sp, hl                                        ; $6d62: $f9
	rra                                              ; $6d63: $1f
	ei                                               ; $6d64: $fb
	ccf                                              ; $6d65: $3f
	ld [$ea7f], a                                    ; $6d66: $ea $7f $ea
	rst $38                                          ; $6d69: $ff
	jp z, $d6db                                      ; $6d6a: $ca $db $d6

	call nc, $5555                                   ; $6d6d: $d4 $55 $55
	ld [hl], l                                       ; $6d70: $75
	and a                                            ; $6d71: $a7
	xor l                                            ; $6d72: $ad
	xor d                                            ; $6d73: $aa
	xor e                                            ; $6d74: $ab
	xor d                                            ; $6d75: $aa
	ld l, e                                          ; $6d76: $6b
	xor $5b                                          ; $6d77: $ee $5b
	rla                                              ; $6d79: $17
	add b                                            ; $6d7a: $80
	sbc b                                            ; $6d7b: $98
	ld bc, $1ffe                                     ; $6d7c: $01 $fe $1f
	pop hl                                           ; $6d7f: $e1
	ld a, [hl]                                       ; $6d80: $7e
	sbc a                                            ; $6d81: $9f
	ld h, b                                          ; $6d82: $60
	ld [hl], e                                       ; $6d83: $73
	xor $9c                                          ; $6d84: $ee $9c
	ld a, e                                          ; $6d86: $7b
	pop af                                           ; $6d87: $f1
	ld e, $03                                        ; $6d88: $1e $03
	add b                                            ; $6d8a: $80
	inc bc                                           ; $6d8b: $03
	add b                                            ; $6d8c: $80
	inc bc                                           ; $6d8d: $03
	add b                                            ; $6d8e: $80
	ld c, a                                          ; $6d8f: $4f
	add b                                            ; $6d90: $80
	ld a, a                                          ; $6d91: $7f
	ld [bc], a                                       ; $6d92: $02
	sbc h                                            ; $6d93: $9c
	rra                                              ; $6d94: $1f
	rst SubAFromBC                                          ; $6d95: $e7
	ld a, b                                          ; $6d96: $78
	ld a, e                                          ; $6d97: $7b
	add b                                            ; $6d98: $80
	sub a                                            ; $6d99: $97
	rrca                                             ; $6d9a: $0f
	rst $38                                          ; $6d9b: $ff
	dec a                                            ; $6d9c: $3d
	db $fd                                           ; $6d9d: $fd
	ld l, e                                          ; $6d9e: $6b
	jp hl                                            ; $6d9f: $e9


	ld c, $f7                                        ; $6da0: $0e $f7
	inc bc                                           ; $6da2: $03
	add b                                            ; $6da3: $80
	ld d, e                                          ; $6da4: $53
	add b                                            ; $6da5: $80
	sbc d                                            ; $6da6: $9a
	rst FarCall                                          ; $6da7: $f7
	ld a, $c3                                        ; $6da8: $3e $c3
	cp $03                                           ; $6daa: $fe $03
	ld [hl], e                                       ; $6dac: $73
	add b                                            ; $6dad: $80
	sbc c                                            ; $6dae: $99
	add a                                            ; $6daf: $87
	db $fd                                           ; $6db0: $fd
	rst AddAOntoHL                                          ; $6db1: $ef
	db $fd                                           ; $6db2: $fd
	ld c, a                                          ; $6db3: $4f
	ld a, c                                          ; $6db4: $79
	inc bc                                           ; $6db5: $03
	add b                                            ; $6db6: $80
	ld c, e                                          ; $6db7: $4b
	add b                                            ; $6db8: $80
	sbc d                                            ; $6db9: $9a
	inc bc                                           ; $6dba: $03
	db $fc                                           ; $6dbb: $fc
	rra                                              ; $6dbc: $1f
	db $e3                                           ; $6dbd: $e3
	ld a, h                                          ; $6dbe: $7c
	ld [hl], e                                       ; $6dbf: $73
	add d                                            ; $6dc0: $82
	sbc c                                            ; $6dc1: $99
	dec sp                                           ; $6dc2: $3b
	ld sp, hl                                        ; $6dc3: $f9
	ld a, a                                          ; $6dc4: $7f
	rst AddAOntoHL                                          ; $6dc5: $ef
	dec bc                                           ; $6dc6: $0b
	ret                                              ; $6dc7: $c9


	inc bc                                           ; $6dc8: $03
	add b                                            ; $6dc9: $80
	dec hl                                           ; $6dca: $2b
	add b                                            ; $6dcb: $80
	sbc b                                            ; $6dcc: $98
	add a                                            ; $6dcd: $87
	rst $38                                          ; $6dce: $ff
	rst SubAFromBC                                          ; $6dcf: $e7
	db $fd                                           ; $6dd0: $fd
	rst GetHLinHL                                          ; $6dd1: $cf
	ld a, l                                          ; $6dd2: $7d
	rrca                                             ; $6dd3: $0f
	dec hl                                           ; $6dd4: $2b
	add b                                            ; $6dd5: $80
	adc c                                            ; $6dd6: $89
	db $fd                                           ; $6dd7: $fd
	or a                                             ; $6dd8: $b7
	db $ed                                           ; $6dd9: $ed
	cp a                                             ; $6dda: $bf
	ld l, h                                          ; $6ddb: $6c
	rst $38                                          ; $6ddc: $ff
	inc h                                            ; $6ddd: $24
	ld a, a                                          ; $6dde: $7f
	nop                                              ; $6ddf: $00
	rra                                              ; $6de0: $1f
	ld [$103f], sp                                   ; $6de1: $08 $3f $10
	rra                                              ; $6de4: $1f
	nop                                              ; $6de5: $00
	rrca                                             ; $6de6: $0f
	ld a, h                                          ; $6de7: $7c
	dec sp                                           ; $6de8: $3b
	inc b                                            ; $6de9: $04
	ld c, a                                          ; $6dea: $4f
	jr nc, jr_066_6dfc                               ; $6deb: $30 $0f

	cp [hl]                                          ; $6ded: $be
	rrca                                             ; $6dee: $0f
	rra                                              ; $6def: $1f
	rra                                              ; $6df0: $1f
	sbc e                                            ; $6df1: $9b
	rlca                                             ; $6df2: $07
	cp e                                             ; $6df3: $bb
	rst $38                                          ; $6df4: $ff
	rst $38                                          ; $6df5: $ff
	ld c, e                                          ; $6df6: $4b
	ldh [$98], a                                     ; $6df7: $e0 $98
	rra                                              ; $6df9: $1f
	inc l                                            ; $6dfa: $2c
	ld l, e                                          ; $6dfb: $6b

jr_066_6dfc:
	ld a, h                                          ; $6dfc: $7c
	ld a, a                                          ; $6dfd: $7f
	jr c, jr_066_6e7f                                ; $6dfe: $38 $7f

	ld l, a                                          ; $6e00: $6f
	sbc $37                                          ; $6e01: $de $37
	ldh [$9b], a                                     ; $6e03: $e0 $9b
	ld b, h                                          ; $6e05: $44
	inc bc                                           ; $6e06: $03
	ld a, h                                          ; $6e07: $7c
	ld a, a                                          ; $6e08: $7f
	ld a, e                                          ; $6e09: $7b
	cp $9c                                           ; $6e0a: $fe $9c
	dec sp                                           ; $6e0c: $3b
	jr c, jr_066_6e16                                ; $6e0d: $38 $07

	inc de                                           ; $6e0f: $13
	ldh [$7b], a                                     ; $6e10: $e0 $7b
	cp h                                             ; $6e12: $bc
	ld a, a                                          ; $6e13: $7f
	cp [hl]                                          ; $6e14: $be
	ld [hl], a                                       ; $6e15: $77

jr_066_6e16:
	ldh [$72], a                                     ; $6e16: $e0 $72
	ld [bc], a                                       ; $6e18: $02
	rst SubAFromBC                                          ; $6e19: $e7
	reti                                             ; $6e1a: $d9


	ld bc, $039c                                     ; $6e1b: $01 $9c $03
	ld [bc], a                                       ; $6e1e: $02
	inc b                                            ; $6e1f: $04
	sbc $07                                          ; $6e20: $de $07
	sub b                                            ; $6e22: $90
	dec bc                                           ; $6e23: $0b
	rrca                                             ; $6e24: $0f
	ld [de], a                                       ; $6e25: $12
	rra                                              ; $6e26: $1f
	inc h                                            ; $6e27: $24
	ccf                                              ; $6e28: $3f
	inc h                                            ; $6e29: $24
	ccf                                              ; $6e2a: $3f
	ld c, c                                          ; $6e2b: $49
	ld a, [hl]                                       ; $6e2c: $7e
	ld c, c                                          ; $6e2d: $49
	ld a, [hl]                                       ; $6e2e: $7e
	adc e                                            ; $6e2f: $8b
	db $fc                                           ; $6e30: $fc
	sub e                                            ; $6e31: $93
	ld a, e                                          ; $6e32: $7b
	cp $9d                                           ; $6e33: $fe $9d
	daa                                              ; $6e35: $27
	ld hl, sp+$77                                    ; $6e36: $f8 $77
	cp $1f                                           ; $6e38: $fe $1f
	jp nz, $c87f                                     ; $6e3a: $c2 $7f $c8

	add b                                            ; $6e3d: $80
	rlca                                             ; $6e3e: $07
	dec b                                            ; $6e3f: $05
	ld a, [bc]                                       ; $6e40: $0a
	rrca                                             ; $6e41: $0f
	dec e                                            ; $6e42: $1d
	ld e, $0b                                        ; $6e43: $1e $0b
	dec c                                            ; $6e45: $0d
	ld d, $1b                                        ; $6e46: $16 $1b
	dec l                                            ; $6e48: $2d
	ld [hl], $37                                     ; $6e49: $36 $37
	inc l                                            ; $6e4b: $2c
	ld e, e                                          ; $6e4c: $5b
	ld l, h                                          ; $6e4d: $6c
	ld l, a                                          ; $6e4e: $6f
	ld e, b                                          ; $6e4f: $58
	ld [hl], a                                       ; $6e50: $77
	ld e, b                                          ; $6e51: $58
	cp [hl]                                          ; $6e52: $be
	pop de                                           ; $6e53: $d1
	jp z, $d9b1                                      ; $6e54: $ca $b1 $d9

	and d                                            ; $6e57: $a2
	ret nc                                           ; $6e58: $d0

	and b                                            ; $6e59: $a0
	jp nc, $d4a0                                     ; $6e5a: $d2 $a0 $d4

	sbc e                                            ; $6e5d: $9b
	and d                                            ; $6e5e: $a2
	call nc, $dfa2                                   ; $6e5f: $d4 $a2 $df
	ld a, e                                          ; $6e62: $7b
	cp $80                                           ; $6e63: $fe $80
	rst GetHLinHL                                          ; $6e65: $cf
	or d                                             ; $6e66: $b2
	cp a                                             ; $6e67: $bf
	jp nc, Jump_066_527f                             ; $6e68: $d2 $7f $52

	halt                                             ; $6e6b: $76
	ld e, e                                          ; $6e6c: $5b
	ld l, [hl]                                       ; $6e6d: $6e
	ld e, e                                          ; $6e6e: $5b
	ld e, l                                          ; $6e6f: $5d
	ld l, e                                          ; $6e70: $6b
	dec sp                                           ; $6e71: $3b
	dec l                                            ; $6e72: $2d
	ld [hl], $2d                                     ; $6e73: $36 $2d
	dec l                                            ; $6e75: $2d
	ld [hl], $1a                                     ; $6e76: $36 $1a
	rla                                              ; $6e78: $17
	dec d                                            ; $6e79: $15
	dec de                                           ; $6e7a: $1b
	dec c                                            ; $6e7b: $0d
	dec bc                                           ; $6e7c: $0b
	dec c                                            ; $6e7d: $0d
	dec bc                                           ; $6e7e: $0b

jr_066_6e7f:
	ld a, [bc]                                       ; $6e7f: $0a
	dec c                                            ; $6e80: $0d
	ld b, $05                                        ; $6e81: $06 $05
	ld b, $98                                        ; $6e83: $06 $98
	dec b                                            ; $6e85: $05
	rlca                                             ; $6e86: $07
	inc b                                            ; $6e87: $04
	dec b                                            ; $6e88: $05
	ld b, $03                                        ; $6e89: $06 $03
	ld [bc], a                                       ; $6e8b: $02
	ld [hl], a                                       ; $6e8c: $77
	cp $7f                                           ; $6e8d: $fe $7f
	db $fd                                           ; $6e8f: $fd
	ld l, e                                          ; $6e90: $6b
	ld l, [hl]                                       ; $6e91: $6e
	add b                                            ; $6e92: $80
	inc bc                                           ; $6e93: $03
	ld b, $07                                        ; $6e94: $06 $07
	dec bc                                           ; $6e96: $0b
	inc c                                            ; $6e97: $0c
	dec [hl]                                         ; $6e98: $35
	dec sp                                           ; $6e99: $3b
	ld e, [hl]                                       ; $6e9a: $5e
	ld h, a                                          ; $6e9b: $67
	cp e                                             ; $6e9c: $bb
	call c, $38f7                                    ; $6e9d: $dc $f7 $38
	ld e, a                                          ; $6ea0: $5f
	ldh [$bf], a                                     ; $6ea1: $e0 $bf
	ret nz                                           ; $6ea3: $c0

	ld a, a                                          ; $6ea4: $7f
	add b                                            ; $6ea5: $80
	ld a, a                                          ; $6ea6: $7f
	add b                                            ; $6ea7: $80
	cp a                                             ; $6ea8: $bf
	ret nz                                           ; $6ea9: $c0

	ld e, a                                          ; $6eaa: $5f
	ldh [$2f], a                                     ; $6eab: $e0 $2f
	ldh a, [rAUD1SWEEP]                              ; $6ead: $f0 $10
	rst $38                                          ; $6eaf: $ff
	jr @+$01                                         ; $6eb0: $18 $ff

	sub e                                            ; $6eb2: $93
	inc c                                            ; $6eb3: $0c
	rst $38                                          ; $6eb4: $ff
	ld c, $ff                                        ; $6eb5: $0e $ff
	rlca                                             ; $6eb7: $07
	rst $38                                          ; $6eb8: $ff
	or l                                             ; $6eb9: $b5
	ld c, a                                          ; $6eba: $4f
	db $f4                                           ; $6ebb: $f4
	rrca                                             ; $6ebc: $0f
	push af                                          ; $6ebd: $f5
	ld c, $4f                                        ; $6ebe: $0e $4f
	ld l, h                                          ; $6ec0: $6c
	rst SubAFromDE                                          ; $6ec1: $df
	rlca                                             ; $6ec2: $07
	rst $38                                          ; $6ec3: $ff
	rst SubAFromDE                                          ; $6ec4: $df
	rlca                                             ; $6ec5: $07
	sub e                                            ; $6ec6: $93

jr_066_6ec7:
	ccf                                              ; $6ec7: $3f
	jr c, jr_066_6ec7                                ; $6ec8: $38 $fd

	jp $1eed                                         ; $6eca: $c3 $ed $1e


	cp l                                             ; $6ecd: $bd
	ld h, e                                          ; $6ece: $63
	xor $9f                                          ; $6ecf: $ee $9f
	or a                                             ; $6ed1: $b7
	ld a, b                                          ; $6ed2: $78
	ld a, e                                          ; $6ed3: $7b
	jp z, $8092                                      ; $6ed4: $ca $92 $80

	xor e                                            ; $6ed7: $ab
	ld de, $2257                                     ; $6ed8: $11 $57 $22
	ld a, [hl+]                                      ; $6edb: $2a
	ld b, h                                          ; $6edc: $44
	add h                                            ; $6edd: $84
	ld c, b                                          ; $6ede: $48
	ld d, b                                          ; $6edf: $50
	adc b                                            ; $6ee0: $88
	ld [$e090], sp                                   ; $6ee1: $08 $90 $e0
	pop bc                                           ; $6ee4: $c1

jr_066_6ee5:
	adc a                                            ; $6ee5: $8f
	or b                                             ; $6ee6: $b0
	ld l, a                                          ; $6ee7: $6f
	ld a, b                                          ; $6ee8: $78
	rst SubAFromBC                                          ; $6ee9: $e7
	cp b                                             ; $6eea: $b8
	rst SubAFromBC                                          ; $6eeb: $e7
	jr z, jr_066_6ee5                                ; $6eec: $28 $f7

	ld a, b                                          ; $6eee: $78
	rst FarCall                                          ; $6eef: $f7
	sbc h                                            ; $6ef0: $9c
	di                                               ; $6ef1: $f3
	call c, $cc33                                    ; $6ef2: $dc $33 $cc
	dec sp                                           ; $6ef5: $3b
	ld [hl], a                                       ; $6ef6: $77
	cp $84                                           ; $6ef7: $fe $84
	xor $19                                          ; $6ef9: $ee $19
	and $1d                                          ; $6efb: $e6 $1d
	or $0d                                           ; $6efd: $f6 $0d
	rst FarCall                                          ; $6eff: $f7
	inc c                                            ; $6f00: $0c
	sbc a                                            ; $6f01: $9f
	ld h, h                                          ; $6f02: $64
	dec de                                           ; $6f03: $1b
	rst SubAFromBC                                          ; $6f04: $e7
	ld a, [bc]                                       ; $6f05: $0a
	rst FarCall                                          ; $6f06: $f7
	inc b                                            ; $6f07: $04
	rst $38                                          ; $6f08: $ff
	add hl, bc                                       ; $6f09: $09
	cp $11                                           ; $6f0a: $fe $11
	cp $23                                           ; $6f0c: $fe $23
	db $fc                                           ; $6f0e: $fc
	db $e3                                           ; $6f0f: $e3
	db $fc                                           ; $6f10: $fc
	rst JumpTable                                          ; $6f11: $c7
	ld hl, sp+$47                                    ; $6f12: $f8 $47
	ld d, d                                          ; $6f14: $52
	ret nz                                           ; $6f15: $c0

	rst SubAFromDE                                          ; $6f16: $df
	ldh [$80], a                                     ; $6f17: $e0 $80
	ld e, b                                          ; $6f19: $58
	cp b                                             ; $6f1a: $b8
	rst JumpTable                                          ; $6f1b: $c7
	rst SubAFromDE                                          ; $6f1c: $df
	ldh [c], a                                       ; $6f1d: $e2
	rst AddAOntoHL                                          ; $6f1e: $ef
	push de                                          ; $6f1f: $d5
	ld [hl], $cc                                     ; $6f20: $36 $cc
	cp $8d                                           ; $6f22: $fe $8d
	ld c, $bb                                        ; $6f24: $0e $bb
	rst JumpTable                                          ; $6f26: $c7
	push bc                                          ; $6f27: $c5
	inc bc                                           ; $6f28: $03
	scf                                              ; $6f29: $37
	rrca                                             ; $6f2a: $0f
	ret nc                                           ; $6f2b: $d0

	ccf                                              ; $6f2c: $3f
	ld [hl], d                                       ; $6f2d: $72
	pop bc                                           ; $6f2e: $c1
	call $1703                                       ; $6f2f: $cd $03 $17
	ld c, $2d                                        ; $6f32: $0e $2d
	jr jr_066_6f90                                   ; $6f34: $18 $5a

	ld sp, $9cb5                                     ; $6f36: $31 $b5 $9c
	ld h, e                                          ; $6f39: $63
	pop hl                                           ; $6f3a: $e1
	ld b, [hl]                                       ; $6f3b: $46
	ldh [$c1], a                                     ; $6f3c: $e0 $c1
	sub h                                            ; $6f3e: $94
	inc e                                            ; $6f3f: $1c
	db $fc                                           ; $6f40: $fc
	dec bc                                           ; $6f41: $0b
	rst $38                                          ; $6f42: $ff
	inc b                                            ; $6f43: $04
	rst $38                                          ; $6f44: $ff
	ld [bc], a                                       ; $6f45: $02
	rst $38                                          ; $6f46: $ff
	ld bc, $00ff                                     ; $6f47: $01 $ff $00
	ld [hl], e                                       ; $6f4a: $73
	cp $6f                                           ; $6f4b: $fe $6f
	ld sp, hl                                        ; $6f4d: $f9
	sub e                                            ; $6f4e: $93
	ldh [$1f], a                                     ; $6f4f: $e0 $1f
	rra                                              ; $6f51: $1f
	ldh [rIE], a                                     ; $6f52: $e0 $ff
	rrca                                             ; $6f54: $0f
	ldh a, [rIE]                                     ; $6f55: $f0 $ff
	rlca                                             ; $6f57: $07
	ld hl, sp+$7f                                    ; $6f58: $f8 $7f
	add b                                            ; $6f5a: $80
	ld a, e                                          ; $6f5b: $7b
	push hl                                          ; $6f5c: $e5
	ld a, a                                          ; $6f5d: $7f
	pop hl                                           ; $6f5e: $e1
	sub [hl]                                         ; $6f5f: $96
	inc b                                            ; $6f60: $04
	cp $09                                           ; $6f61: $fe $09
	db $fd                                           ; $6f63: $fd
	ld [de], a                                       ; $6f64: $12
	ei                                               ; $6f65: $fb
	inc h                                            ; $6f66: $24
	ei                                               ; $6f67: $fb
	inc h                                            ; $6f68: $24
	rst FarCall                                          ; $6f69: $f7
	rst SubAFromDE                                          ; $6f6a: $df
	jr nz, @-$1f                                     ; $6f6b: $20 $df

	ld h, e                                          ; $6f6d: $63
	add b                                            ; $6f6e: $80
	db $fc                                           ; $6f6f: $fc
	cp a                                             ; $6f70: $bf
	db $eb                                           ; $6f71: $eb
	ld b, a                                          ; $6f72: $47
	rst GetHLinHL                                          ; $6f73: $cf
	sbc a                                            ; $6f74: $9f
	inc sp                                           ; $6f75: $33
	ld [hl], b                                       ; $6f76: $70
	ld c, l                                          ; $6f77: $4d
	db $e3                                           ; $6f78: $e3

jr_066_6f79:
	sub e                                            ; $6f79: $93
	call z, $912e                                    ; $6f7a: $cc $2e $91
	ld e, c                                          ; $6f7d: $59
	and [hl]                                         ; $6f7e: $a6
	or e                                             ; $6f7f: $b3
	call z, $ffc8                                    ; $6f80: $cc $c8 $ff
	ld sp, $f2ff                                     ; $6f83: $31 $ff $f2
	rst $38                                          ; $6f86: $ff
	inc d                                            ; $6f87: $14
	rst $38                                          ; $6f88: $ff
	inc a                                            ; $6f89: $3c
	rst $38                                          ; $6f8a: $ff
	call nz, $03ff                                   ; $6f8b: $c4 $ff $03
	sbc h                                            ; $6f8e: $9c
	rst GetHLinHL                                          ; $6f8f: $cf

jr_066_6f90:
	ld bc, $e03f                                     ; $6f90: $01 $3f $e0
	pop bc                                           ; $6f93: $c1
	add b                                            ; $6f94: $80
	ld a, a                                          ; $6f95: $7f
	rrca                                             ; $6f96: $0f

jr_066_6f97:
	add e                                            ; $6f97: $83
	add c                                            ; $6f98: $81
	ld a, a                                          ; $6f99: $7f
	ldh a, [rIF]                                     ; $6f9a: $f0 $0f
	rra                                              ; $6f9c: $1f
	add b                                            ; $6f9d: $80
	nop                                              ; $6f9e: $00
	ret nz                                           ; $6f9f: $c0

	add b                                            ; $6fa0: $80
	ld h, b                                          ; $6fa1: $60
	ret nz                                           ; $6fa2: $c0

	jr nc, @-$1e                                     ; $6fa3: $30 $e0

	jr jr_066_6f97                                   ; $6fa5: $18 $f0

	call z, $f638                                    ; $6fa7: $cc $38 $f6
	inc c                                            ; $6faa: $0c
	ld a, [bc]                                       ; $6fab: $0a
	rst FarCall                                          ; $6fac: $f7
	push af                                          ; $6fad: $f5
	dec bc                                           ; $6fae: $0b
	or $e9                                           ; $6faf: $f6 $e9
	scf                                              ; $6fb1: $37
	add sp, $77                                      ; $6fb2: $e8 $77
	sub c                                            ; $6fb4: $91
	ret z                                            ; $6fb5: $c8

	rst AddAOntoHL                                          ; $6fb6: $ef
	sub b                                            ; $6fb7: $90
	rst SubAFromDE                                          ; $6fb8: $df
	jr nz, jr_066_6f79                               ; $6fb9: $20 $be

	ld b, c                                          ; $6fbb: $41
	ld a, h                                          ; $6fbc: $7c
	add e                                            ; $6fbd: $83
	db $fc                                           ; $6fbe: $fc
	inc bc                                           ; $6fbf: $03
	db $fc                                           ; $6fc0: $fc
	inc bc                                           ; $6fc1: $03
	cp $7b                                           ; $6fc2: $fe $7b
	dec sp                                           ; $6fc4: $3b
	push af                                          ; $6fc5: $f5
	rst SubAFromDE                                          ; $6fc6: $df
	ret nz                                           ; $6fc7: $c0

	rst SubAFromDE                                          ; $6fc8: $df
	add b                                            ; $6fc9: $80
	rst $38                                          ; $6fca: $ff
	rst SubAFromDE                                          ; $6fcb: $df
	ldh a, [hDisp0_SCX]                                     ; $6fcc: $f0 $84
	inc c                                            ; $6fce: $0c
	db $fc                                           ; $6fcf: $fc
	cp $fe                                           ; $6fd0: $fe $fe
	di                                               ; $6fd2: $f3
	rrca                                             ; $6fd3: $0f
	ld a, h                                          ; $6fd4: $7c
	rst $38                                          ; $6fd5: $ff
	rst $38                                          ; $6fd6: $ff
	inc bc                                           ; $6fd7: $03
	add e                                            ; $6fd8: $83
	ld a, h                                          ; $6fd9: $7c
	ld hl, sp-$01                                    ; $6fda: $f8 $ff
	ld b, $ff                                        ; $6fdc: $06 $ff
	ccf                                              ; $6fde: $3f
	rst $38                                          ; $6fdf: $ff
	ld b, c                                          ; $6fe0: $41
	rst $38                                          ; $6fe1: $ff
	sbc [hl]                                         ; $6fe2: $9e
	rst $38                                          ; $6fe3: $ff
	and c                                            ; $6fe4: $a1
	rst $38                                          ; $6fe5: $ff
	ld a, h                                          ; $6fe6: $7c
	rst $38                                          ; $6fe7: $ff
	ld b, d                                          ; $6fe8: $42
	ld c, a                                          ; $6fe9: $4f
	rst GetHLinHL                                          ; $6fea: $cf
	ldh [$ce], a                                     ; $6feb: $e0 $ce
	add b                                            ; $6fed: $80
	jp nc, $f2ff                                     ; $6fee: $d2 $ff $f2

	cp a                                             ; $6ff1: $bf
	or d                                             ; $6ff2: $b2
	sbc a                                            ; $6ff3: $9f
	sbc d                                            ; $6ff4: $9a
	adc a                                            ; $6ff5: $8f
	jp z, Jump_066_664f                              ; $6ff6: $ca $4f $66

	ld h, a                                          ; $6ff9: $67
	ld d, [hl]                                       ; $6ffa: $56
	ld d, a                                          ; $6ffb: $57
	ld l, [hl]                                       ; $6ffc: $6e
	ld c, a                                          ; $6ffd: $4f
	ld h, [hl]                                       ; $6ffe: $66
	ld b, a                                          ; $6fff: $47
	ldh a, [c]                                       ; $7000: $f2
	ld b, e                                          ; $7001: $43
	ei                                               ; $7002: $fb
	jp $aeff                                         ; $7003: $c3 $ff $ae


	ei                                               ; $7006: $fb
	sbc d                                            ; $7007: $9a
	ld sp, hl                                        ; $7008: $f9
	pop de                                           ; $7009: $d1
	ld a, c                                          ; $700a: $79
	ret                                              ; $700b: $c9


	inc a                                            ; $700c: $3c
	sub e                                            ; $700d: $93
	add sp, $3e                                      ; $700e: $e8 $3e
	add sp, $1a                                      ; $7010: $e8 $1a
	ld hl, sp+$1b                                    ; $7012: $f8 $1b
	ld hl, sp+$0d                                    ; $7014: $f8 $0d
	db $fc                                           ; $7016: $fc
	rlca                                             ; $7017: $07
	cp $02                                           ; $7018: $fe $02
	ld [hl], a                                       ; $701a: $77
	ld h, c                                          ; $701b: $61
	inc hl                                           ; $701c: $23
	sub b                                            ; $701d: $90
	rst SubAFromDE                                          ; $701e: $df
	add b                                            ; $701f: $80
	rst SubAFromDE                                          ; $7020: $df
	ret nz                                           ; $7021: $c0

	adc e                                            ; $7022: $8b
	jr nz, @-$1e                                     ; $7023: $20 $e0

	ret nc                                           ; $7025: $d0

	ldh a, [$b0]                                     ; $7026: $f0 $b0
	ld [hl], b                                       ; $7028: $70
	ld e, b                                          ; $7029: $58
	cp b                                             ; $702a: $b8
	adc b                                            ; $702b: $88
	ld hl, sp-$3c                                    ; $702c: $f8 $c4
	db $fc                                           ; $702e: $fc
	ld h, h                                          ; $702f: $64
	db $fc                                           ; $7030: $fc
	ld [hl-], a                                      ; $7031: $32
	cp $9a                                           ; $7032: $fe $9a
	cp $4a                                           ; $7034: $fe $4a
	cp $e0                                           ; $7036: $fe $e0
	pop bc                                           ; $7038: $c1
	add b                                            ; $7039: $80
	ld b, b                                          ; $703a: $40
	ret nz                                           ; $703b: $c0

	ld b, b                                          ; $703c: $40
	ret nz                                           ; $703d: $c0

	ld h, b                                          ; $703e: $60
	ldh [$50], a                                     ; $703f: $e0 $50
	ldh a, [$ac]                                     ; $7041: $f0 $ac
	db $fc                                           ; $7043: $fc
	sub e                                            ; $7044: $93
	rst $38                                          ; $7045: $ff
	adc b                                            ; $7046: $88
	rst $38                                          ; $7047: $ff
	add h                                            ; $7048: $84
	rst $38                                          ; $7049: $ff
	add [hl]                                         ; $704a: $86
	rst $38                                          ; $704b: $ff
	adc d                                            ; $704c: $8a
	rst $38                                          ; $704d: $ff
	sub l                                            ; $704e: $95
	rst $38                                          ; $704f: $ff
	xor h                                            ; $7050: $ac
	rst $38                                          ; $7051: $ff
	sub $7f                                          ; $7052: $d6 $7f
	ld sp, hl                                        ; $7054: $f9
	ld a, a                                          ; $7055: $7f
	and $3f                                          ; $7056: $e6 $3f
	pop hl                                           ; $7058: $e1
	adc [hl]                                         ; $7059: $8e
	cp a                                             ; $705a: $bf
	ldh a, [$9f]                                     ; $705b: $f0 $9f
	ld [hl], b                                       ; $705d: $70
	ld e, a                                          ; $705e: $5f
	ld a, b                                          ; $705f: $78
	ld c, a                                          ; $7060: $4f
	jr c, @+$31                                      ; $7061: $38 $2f

	jr c, jr_066_7094                                ; $7063: $38 $2f

	inc e                                            ; $7065: $1c
	rla                                              ; $7066: $17
	inc e                                            ; $7067: $1c
	rla                                              ; $7068: $17
	adc h                                            ; $7069: $8c
	adc a                                            ; $706a: $8f
	ld l, a                                          ; $706b: $6f
	call z, $f8df                                    ; $706c: $cc $df $f8
	ldh [$cd], a                                     ; $706f: $e0 $cd
	rst SubAFromDE                                          ; $7071: $df
	add b                                            ; $7072: $80
	ld [hl], a                                       ; $7073: $77
	sub d                                            ; $7074: $92
	sbc d                                            ; $7075: $9a
	and b                                            ; $7076: $a0
	ldh [rAUD4LEN], a                                ; $7077: $e0 $20
	ldh [$a0], a                                     ; $7079: $e0 $a0
	ld [hl], e                                       ; $707b: $73
	cp $96                                           ; $707c: $fe $96
	ld [hl], b                                       ; $707e: $70
	ldh a, [$8c]                                     ; $707f: $f0 $8c
	db $fc                                           ; $7081: $fc
	ld [hl], d                                       ; $7082: $72
	cp $1a                                           ; $7083: $fe $1a
	cp $0a                                           ; $7085: $fe $0a
	ld e, e                                          ; $7087: $5b
	cp $23                                           ; $7088: $fe $23
	nop                                              ; $708a: $00
	rst SubAFromDE                                          ; $708b: $df
	call z, $888a                                    ; $708c: $cc $8a $88
	add b                                            ; $708f: $80
	adc b                                            ; $7090: $88
	call z, $8844                                    ; $7091: $cc $44 $88

jr_066_7094:
	ld [$a299], sp                                   ; $7094: $08 $99 $a2
	ld b, h                                          ; $7097: $44
	add b                                            ; $7098: $80
	ld [$b399], sp                                   ; $7099: $08 $99 $b3
	ld b, h                                          ; $709c: $44
	add b                                            ; $709d: $80
	add hl, de                                       ; $709e: $19
	sbc c                                            ; $709f: $99
	sub c                                            ; $70a0: $91
	ld b, h                                          ; $70a1: $44
	adc b                                            ; $70a2: $88
	ld [hl], e                                       ; $70a3: $73
	ei                                               ; $70a4: $fb
	sbc l                                            ; $70a5: $9d
	adc b                                            ; $70a6: $88
	sbc c                                            ; $70a7: $99
	ld a, e                                          ; $70a8: $7b
	rst SubAFromBC                                          ; $70a9: $e7
	rst SubAFromDE                                          ; $70aa: $df
	call z, $019a                                    ; $70ab: $cc $9a $01
	adc h                                            ; $70ae: $8c
	and c                                            ; $70af: $a1
	db $10                                           ; $70b0: $10
	ld bc, $1030                                     ; $70b1: $01 $30 $10
	ld hl, $2102                                     ; $70b4: $21 $02 $21
	ld b, d                                          ; $70b7: $42
	ld hl, $2340                                     ; $70b8: $21 $40 $23
	ld c, b                                          ; $70bb: $48
	inc hl                                           ; $70bc: $23
	ld [$2863], sp                                   ; $70bd: $08 $63 $28
	ld h, e                                          ; $70c0: $63
	dec l                                            ; $70c1: $2d
	ld a, e                                          ; $70c2: $7b
	cp $80                                           ; $70c3: $fe $80
	xor l                                            ; $70c5: $ad
	ld [hl], e                                       ; $70c6: $73
	sub l                                            ; $70c7: $95
	ld a, e                                          ; $70c8: $7b
	sub h                                            ; $70c9: $94
	ld a, e                                          ; $70ca: $7b
	sub $39                                          ; $70cb: $d6 $39
	ld c, d                                          ; $70cd: $4a
	cp l                                             ; $70ce: $bd
	res 7, h                                         ; $70cf: $cb $bc
	and l                                            ; $70d1: $a5
	sbc $57                                          ; $70d2: $de $57
	xor $23                                          ; $70d4: $ee $23
	rst $38                                          ; $70d6: $ff
	sbc e                                            ; $70d7: $9b
	rst $38                                          ; $70d8: $ff
	ld b, [hl]                                       ; $70d9: $46
	cp $b1                                           ; $70da: $fe $b1
	rst $38                                          ; $70dc: $ff
	sbc l                                            ; $70dd: $9d
	rst $38                                          ; $70de: $ff
	sub a                                            ; $70df: $97
	rst $38                                          ; $70e0: $ff
	sub d                                            ; $70e1: $92
	rst $38                                          ; $70e2: $ff
	ld c, d                                          ; $70e3: $4a
	add b                                            ; $70e4: $80
	rst $38                                          ; $70e5: $ff
	ld c, e                                          ; $70e6: $4b
	rst $38                                          ; $70e7: $ff
	bit 7, a                                         ; $70e8: $cb $7f
	xor h                                            ; $70ea: $ac
	ld a, a                                          ; $70eb: $7f
	xor b                                            ; $70ec: $a8
	ld a, a                                          ; $70ed: $7f
	or b                                             ; $70ee: $b0
	ld a, a                                          ; $70ef: $7f
	ld a, [hl+]                                      ; $70f0: $2a
	call nz, $8844                                   ; $70f1: $c4 $44 $88
	ld e, c                                          ; $70f4: $59
	add b                                            ; $70f5: $80
	sub b                                            ; $70f6: $90
	ld bc, $0192                                     ; $70f7: $01 $92 $01
	add c                                            ; $70fa: $81
	ld [bc], a                                       ; $70fb: $02
	add b                                            ; $70fc: $80
	ld [bc], a                                       ; $70fd: $02
	sub b                                            ; $70fe: $90
	ld [bc], a                                       ; $70ff: $02
	and b                                            ; $7100: $a0
	ld [de], a                                       ; $7101: $12
	xor d                                            ; $7102: $aa
	ld [de], a                                       ; $7103: $12
	add b                                            ; $7104: $80
	xor e                                            ; $7105: $ab
	ld [de], a                                       ; $7106: $12
	ld a, d                                          ; $7107: $7a
	sub e                                            ; $7108: $93
	ld a, [hl]                                       ; $7109: $7e
	sub e                                            ; $710a: $93
	push af                                          ; $710b: $f5
	sbc e                                            ; $710c: $9b
	xor l                                            ; $710d: $ad
	db $db                                           ; $710e: $db
	ld l, d                                          ; $710f: $6a
	db $dd                                           ; $7110: $dd
	ld d, [hl]                                       ; $7111: $56
	db $ed                                           ; $7112: $ed
	dec [hl]                                         ; $7113: $35
	xor $22                                          ; $7114: $ee $22
	rst $38                                          ; $7116: $ff
	inc de                                           ; $7117: $13
	rst $38                                          ; $7118: $ff
	sbc c                                            ; $7119: $99
	rst $38                                          ; $711a: $ff
	call z, Call_066_67ff                            ; $711b: $cc $ff $67
	ld a, a                                          ; $711e: $7f
	ld a, [de]                                       ; $711f: $1a
	rra                                              ; $7120: $1f
	add a                                            ; $7121: $87
	add a                                            ; $7122: $87
	ret nz                                           ; $7123: $c0

	sub b                                            ; $7124: $90
	add b                                            ; $7125: $80
	ldh [$c0], a                                     ; $7126: $e0 $c0
	or b                                             ; $7128: $b0
	ldh [$3c], a                                     ; $7129: $e0 $3c
	ldh a, [$3f]                                     ; $712b: $f0 $3f
	db $ec                                           ; $712d: $ec
	ccf                                              ; $712e: $3f
	db $e3                                           ; $712f: $e3
	rra                                              ; $7130: $1f
	ldh a, [rSB]                                     ; $7131: $f0 $01
	ld [hl], c                                       ; $7133: $71
	cp [hl]                                          ; $7134: $be
	rst JumpTable                                          ; $7135: $c7
	adc h                                            ; $7136: $8c
	sbc e                                            ; $7137: $9b
	sub a                                            ; $7138: $97
	ld bc, $0317                                     ; $7139: $01 $17 $03
	ld [hl], $03                                     ; $713c: $36 $03
	xor [hl]                                         ; $713e: $ae
	daa                                              ; $713f: $27
	xor h                                            ; $7140: $ac
	ld [hl], e                                       ; $7141: $73
	cp $84                                           ; $7142: $fe $84
	db $fc                                           ; $7144: $fc
	scf                                              ; $7145: $37
	db $fc                                           ; $7146: $fc
	ld [hl], $fd                                     ; $7147: $36 $fd
	ccf                                              ; $7149: $3f
	db $ed                                           ; $714a: $ed
	rra                                              ; $714b: $1f
	db $fc                                           ; $714c: $fc
	sbc a                                            ; $714d: $9f
	db $f4                                           ; $714e: $f4
	ld e, c                                          ; $714f: $59
	rst $38                                          ; $7150: $ff
	and l                                            ; $7151: $a5
	rst $38                                          ; $7152: $ff
	ld d, d                                          ; $7153: $52
	rst $38                                          ; $7154: $ff
	ld a, [$faef]                                    ; $7155: $fa $ef $fa
	ld c, a                                          ; $7158: $4f
	ld a, [$fa0f]                                    ; $7159: $fa $0f $fa
	rrca                                             ; $715c: $0f
	rst $38                                          ; $715d: $ff
	dec c                                            ; $715e: $0d
	ld a, e                                          ; $715f: $7b
	cp $8b                                           ; $7160: $fe $8b
	add hl, bc                                       ; $7162: $09
	ret nz                                           ; $7163: $c0

	ccf                                              ; $7164: $3f
	ccf                                              ; $7165: $3f
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	ret nz                                           ; $7168: $c0

	rst $38                                          ; $7169: $ff
	nop                                              ; $716a: $00
	rst $38                                          ; $716b: $ff
	ld e, $ed                                        ; $716c: $1e $ed
	ld l, a                                          ; $716e: $6f
	push af                                          ; $716f: $f5
	db $fc                                           ; $7170: $fc
	and a                                            ; $7171: $a7
	db $e4                                           ; $7172: $e4
	sbc a                                            ; $7173: $9f
	ld e, b                                          ; $7174: $58
	rst $38                                          ; $7175: $ff
	cp [hl]                                          ; $7176: $be
	rst GetHLinHL                                          ; $7177: $cf
	adc a                                            ; $7178: $8f
	sbc a                                            ; $7179: $9f
	sbc d                                            ; $717a: $9a
	ld bc, $01bf                                     ; $717b: $01 $bf $01
	cp $03                                           ; $717e: $fe $03
	ld a, e                                          ; $7180: $7b
	cp $9e                                           ; $7181: $fe $9e
	rlca                                             ; $7183: $07
	ld a, e                                          ; $7184: $7b
	call nc, $1f91                                   ; $7185: $d4 $91 $1f
	ldh a, [c]                                       ; $7188: $f2
	ccf                                              ; $7189: $3f
	ldh a, [c]                                       ; $718a: $f2
	ld a, a                                          ; $718b: $7f
	jp nc, $c6ff                                     ; $718c: $d2 $ff $c6

	ld a, [hl]                                       ; $718f: $7e
	and [hl]                                         ; $7190: $a6
	ld a, [hl]                                       ; $7191: $7e
	db $e3                                           ; $7192: $e3
	cp a                                             ; $7193: $bf
	di                                               ; $7194: $f3
	ld a, e                                          ; $7195: $7b
	cp $8e                                           ; $7196: $fe $8e
	ld sp, hl                                        ; $7198: $f9
	xor a                                            ; $7199: $af
	cp c                                             ; $719a: $b9
	rst AddAOntoHL                                          ; $719b: $ef
	xor l                                            ; $719c: $ad
	rst FarCall                                          ; $719d: $f7
	and e                                            ; $719e: $a3

jr_066_719f:
	rst $38                                          ; $719f: $ff
	reti                                             ; $71a0: $d9


	ld a, a                                          ; $71a1: $7f
	sub $7f                                          ; $71a2: $d6 $7f
	db $eb                                           ; $71a4: $eb
	ld a, a                                          ; $71a5: $7f
	sbc $7e                                          ; $71a6: $de $7e
	jp nc, $fe7b                                     ; $71a8: $d2 $7b $fe

	sbc l                                            ; $71ab: $9d
	call nc, Call_066_777c                           ; $71ac: $d4 $7c $77
	cp $9c                                           ; $71af: $fe $9c
	ret c                                            ; $71b1: $d8

	ld hl, sp-$68                                    ; $71b2: $f8 $98
	ld a, e                                          ; $71b4: $7b
	cp $9c                                           ; $71b5: $fe $9c
	sub b                                            ; $71b7: $90
	ldh a, [rAUD1SWEEP]                              ; $71b8: $f0 $10
	ld a, e                                          ; $71ba: $7b
	cp $9d                                           ; $71bb: $fe $9d
	jr nz, jr_066_719f                               ; $71bd: $20 $e0

	ld h, a                                          ; $71bf: $67
	cp $9d                                           ; $71c0: $fe $9d
	ld b, b                                          ; $71c2: $40
	ret nz                                           ; $71c3: $c0

	ld [hl], a                                       ; $71c4: $77
	cp $03                                           ; $71c5: $fe $03
	ld h, b                                          ; $71c7: $60
	dec sp                                           ; $71c8: $3b
	ld h, b                                          ; $71c9: $60
	sub a                                            ; $71ca: $97
	ldh a, [rIF]                                     ; $71cb: $f0 $0f
	adc a                                            ; $71cd: $8f
	ld a, a                                          ; $71ce: $7f
	ld a, a                                          ; $71cf: $7f
	ldh a, [rIE]                                     ; $71d0: $f0 $ff
	add b                                            ; $71d2: $80
	ld a, e                                          ; $71d3: $7b
	ld e, [hl]                                       ; $71d4: $5e
	sbc d                                            ; $71d5: $9a
	ld a, $f5                                        ; $71d6: $3e $f5
	ld a, h                                          ; $71d8: $7c
	and a                                            ; $71d9: $a7
	db $f4                                           ; $71da: $f4
	rla                                              ; $71db: $17
	ld h, b                                          ; $71dc: $60
	inc bc                                           ; $71dd: $03
	and b                                            ; $71de: $a0
	dec sp                                           ; $71df: $3b
	and b                                            ; $71e0: $a0
	ld a, a                                          ; $71e1: $7f
	or d                                             ; $71e2: $b2
	ld h, d                                          ; $71e3: $62
	cp $98                                           ; $71e4: $fe $98
	nop                                              ; $71e6: $00
	di                                               ; $71e7: $f3
	ld c, $8f                                        ; $71e8: $0e $8f
	ld l, h                                          ; $71ea: $6c
	rst $38                                          ; $71eb: $ff
	ld hl, sp+$03                                    ; $71ec: $f8 $03
	and b                                            ; $71ee: $a0
	ld b, e                                          ; $71ef: $43
	and b                                            ; $71f0: $a0
	ld a, a                                          ; $71f1: $7f
	cp $9b                                           ; $71f2: $fe $9b
	ld a, $ed                                        ; $71f4: $3e $ed
	rra                                              ; $71f6: $1f
	db $fd                                           ; $71f7: $fd
	daa                                              ; $71f8: $27
	and b                                            ; $71f9: $a0
	sbc c                                            ; $71fa: $99
	ldh [$1f], a                                     ; $71fb: $e0 $1f
	sbc a                                            ; $71fd: $9f
	ld a, a                                          ; $71fe: $7f

Call_066_71ff:
	ld a, a                                          ; $71ff: $7f
	ldh [$73], a                                     ; $7200: $e0 $73
	ld a, $7f                                        ; $7202: $3e $7f
	cp $9c                                           ; $7204: $fe $9c
	ld b, $ff                                        ; $7206: $06 $ff
	db $fc                                           ; $7208: $fc
	rra                                              ; $7209: $1f
	and b                                            ; $720a: $a0
	adc b                                            ; $720b: $88
	rst GetHLinHL                                          ; $720c: $cf
	ld a, [$f86f]                                    ; $720d: $fa $6f $f8
	ld [hl], a                                       ; $7210: $77
	call c, $ee3f                                    ; $7211: $dc $3f $ee
	rst $38                                          ; $7214: $ff
	ldh a, [rIE]                                     ; $7215: $f0 $ff
	add d                                            ; $7217: $82
	ei                                               ; $7218: $fb
	pop hl                                           ; $7219: $e1
	pop bc                                           ; $721a: $c1
	ld bc, $00a3                                     ; $721b: $01 $a3 $00
	add hl, sp                                       ; $721e: $39
	dec e                                            ; $721f: $1d
	rrca                                             ; $7220: $0f
	ld b, $03                                        ; $7221: $06 $03
	cp l                                             ; $7223: $bd
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	pop bc                                           ; $7226: $c1
	rst $38                                          ; $7227: $ff
	sbc [hl]                                         ; $7228: $9e
	ldh a, [$3f]                                     ; $7229: $f0 $3f
	ldh [$9a], a                                     ; $722b: $e0 $9a
	ld sp, $1f1d                                     ; $722d: $31 $1d $1f
	ld c, $0f                                        ; $7230: $0e $0f
	inc hl                                           ; $7232: $23
	ldh [$9e], a                                     ; $7233: $e0 $9e
	add e                                            ; $7235: $83
	ld [hl], a                                       ; $7236: $77
	ldh [$9c], a                                     ; $7237: $e0 $9c
	rra                                              ; $7239: $1f
	rrca                                             ; $723a: $0f
	ld c, $17                                        ; $723b: $0e $17
	ldh [$9e], a                                     ; $723d: $e0 $9e
	ccf                                              ; $723f: $3f
	ld [hl], a                                       ; $7240: $77
	rst SubAFromDE                                          ; $7241: $df
	sbc [hl]                                         ; $7242: $9e
	ld b, $6f                                        ; $7243: $06 $6f
	ldh [$a2], a                                     ; $7245: $e0 $a2
	ld bc, $a18c                                     ; $7247: $01 $8c $a1
	db $10                                           ; $724a: $10
	ld bc, $1030                                     ; $724b: $01 $30 $10
	ld hl, $2102                                     ; $724e: $21 $02 $21
	ld b, d                                          ; $7251: $42
	ld hl, $2340                                     ; $7252: $21 $40 $23
	ld c, b                                          ; $7255: $48
	inc hl                                           ; $7256: $23
	ld [$2863], sp                                   ; $7257: $08 $63 $28
	ld h, e                                          ; $725a: $63
	dec l                                            ; $725b: $2d
	ld a, e                                          ; $725c: $7b
	cp $80                                           ; $725d: $fe $80
	xor l                                            ; $725f: $ad
	ld [hl], e                                       ; $7260: $73
	sub l                                            ; $7261: $95
	ld a, e                                          ; $7262: $7b
	sub h                                            ; $7263: $94
	ld a, e                                          ; $7264: $7b
	sub $39                                          ; $7265: $d6 $39
	ld c, d                                          ; $7267: $4a
	cp l                                             ; $7268: $bd
	res 7, h                                         ; $7269: $cb $bc
	and l                                            ; $726b: $a5
	sbc $57                                          ; $726c: $de $57
	xor $23                                          ; $726e: $ee $23
	rst $38                                          ; $7270: $ff
	sbc e                                            ; $7271: $9b
	rst $38                                          ; $7272: $ff
	ld b, [hl]                                       ; $7273: $46
	cp $b1                                           ; $7274: $fe $b1
	rst $38                                          ; $7276: $ff
	sbc l                                            ; $7277: $9d
	rst $38                                          ; $7278: $ff
	sub a                                            ; $7279: $97
	rst $38                                          ; $727a: $ff
	sub d                                            ; $727b: $92
	rst $38                                          ; $727c: $ff
	ld c, d                                          ; $727d: $4a
	add b                                            ; $727e: $80
	rst $38                                          ; $727f: $ff
	ld c, e                                          ; $7280: $4b
	rst $38                                          ; $7281: $ff
	bit 7, a                                         ; $7282: $cb $7f
	xor h                                            ; $7284: $ac
	ld a, a                                          ; $7285: $7f
	xor b                                            ; $7286: $a8
	ld a, a                                          ; $7287: $7f
	or b                                             ; $7288: $b0
	ld a, a                                          ; $7289: $7f
	ld a, [hl+]                                      ; $728a: $2a
	call nz, $8844                                   ; $728b: $c4 $44 $88
	ld e, c                                          ; $728e: $59
	add b                                            ; $728f: $80
	sub b                                            ; $7290: $90
	ld bc, $0192                                     ; $7291: $01 $92 $01
	add c                                            ; $7294: $81
	ld [bc], a                                       ; $7295: $02
	add b                                            ; $7296: $80
	ld [bc], a                                       ; $7297: $02
	sub b                                            ; $7298: $90
	ld [bc], a                                       ; $7299: $02
	and b                                            ; $729a: $a0
	ld [de], a                                       ; $729b: $12
	xor d                                            ; $729c: $aa
	ld [de], a                                       ; $729d: $12
	add b                                            ; $729e: $80
	xor e                                            ; $729f: $ab
	ld [de], a                                       ; $72a0: $12
	ld a, d                                          ; $72a1: $7a
	sub e                                            ; $72a2: $93
	ld a, [hl]                                       ; $72a3: $7e
	sub e                                            ; $72a4: $93
	push af                                          ; $72a5: $f5
	sbc e                                            ; $72a6: $9b
	xor l                                            ; $72a7: $ad
	db $db                                           ; $72a8: $db
	ld l, d                                          ; $72a9: $6a
	db $dd                                           ; $72aa: $dd
	ld d, [hl]                                       ; $72ab: $56
	db $ed                                           ; $72ac: $ed
	dec [hl]                                         ; $72ad: $35
	xor $22                                          ; $72ae: $ee $22
	rst $38                                          ; $72b0: $ff
	inc de                                           ; $72b1: $13
	rst $38                                          ; $72b2: $ff
	sbc c                                            ; $72b3: $99
	rst $38                                          ; $72b4: $ff
	call z, Call_066_67ff                            ; $72b5: $cc $ff $67
	ld a, a                                          ; $72b8: $7f
	ld a, [de]                                       ; $72b9: $1a
	rra                                              ; $72ba: $1f
	add a                                            ; $72bb: $87
	add a                                            ; $72bc: $87
	ret nz                                           ; $72bd: $c0

	sub b                                            ; $72be: $90
	add b                                            ; $72bf: $80
	ldh [$c0], a                                     ; $72c0: $e0 $c0
	or b                                             ; $72c2: $b0
	ldh [$3c], a                                     ; $72c3: $e0 $3c
	ldh a, [$3f]                                     ; $72c5: $f0 $3f
	db $ec                                           ; $72c7: $ec
	ccf                                              ; $72c8: $3f
	db $e3                                           ; $72c9: $e3
	rra                                              ; $72ca: $1f
	ldh a, [rSB]                                     ; $72cb: $f0 $01
	ld [hl], c                                       ; $72cd: $71
	cp [hl]                                          ; $72ce: $be
	rst JumpTable                                          ; $72cf: $c7
	adc h                                            ; $72d0: $8c
	sbc e                                            ; $72d1: $9b
	sub a                                            ; $72d2: $97
	ld bc, $0317                                     ; $72d3: $01 $17 $03
	ld [hl], $03                                     ; $72d6: $36 $03
	xor [hl]                                         ; $72d8: $ae
	daa                                              ; $72d9: $27
	xor h                                            ; $72da: $ac
	ld [hl], e                                       ; $72db: $73
	cp $80                                           ; $72dc: $fe $80
	db $fc                                           ; $72de: $fc
	scf                                              ; $72df: $37
	db $fc                                           ; $72e0: $fc
	ld [hl], $fd                                     ; $72e1: $36 $fd
	ccf                                              ; $72e3: $3f
	db $ed                                           ; $72e4: $ed
	rra                                              ; $72e5: $1f
	db $fc                                           ; $72e6: $fc
	sbc a                                            ; $72e7: $9f
	db $f4                                           ; $72e8: $f4
	ld e, c                                          ; $72e9: $59
	rst $38                                          ; $72ea: $ff
	and l                                            ; $72eb: $a5
	rst $38                                          ; $72ec: $ff
	ld d, d                                          ; $72ed: $52
	rst $38                                          ; $72ee: $ff
	ld a, [$faef]                                    ; $72ef: $fa $ef $fa
	ld c, a                                          ; $72f2: $4f
	ld a, [$fa0f]                                    ; $72f3: $fa $0f $fa
	rrca                                             ; $72f6: $0f
	rst $38                                          ; $72f7: $ff
	dec c                                            ; $72f8: $0d
	rst $38                                          ; $72f9: $ff
	dec c                                            ; $72fa: $0d
	jp hl                                            ; $72fb: $e9


	rra                                              ; $72fc: $1f
	adc h                                            ; $72fd: $8c
	sbc [hl]                                         ; $72fe: $9e
	ld a, a                                          ; $72ff: $7f
	ld a, a                                          ; $7300: $7f
	pop hl                                           ; $7301: $e1
	rst $38                                          ; $7302: $ff
	add b                                            ; $7303: $80
	rst $38                                          ; $7304: $ff
	ccf                                              ; $7305: $3f
	db $eb                                           ; $7306: $eb
	ld a, [hl]                                       ; $7307: $7e
	db $dd                                           ; $7308: $dd
	call c, $fef5                                    ; $7309: $dc $f5 $fe
	and a                                            ; $730c: $a7
	db $e4                                           ; $730d: $e4
	sbc a                                            ; $730e: $9f
	ld e, b                                          ; $730f: $58
	rst $38                                          ; $7310: $ff
	cp [hl]                                          ; $7311: $be
	rst GetHLinHL                                          ; $7312: $cf
	adc a                                            ; $7313: $8f
	sbc a                                            ; $7314: $9f
	sbc d                                            ; $7315: $9a
	ld bc, $01bf                                     ; $7316: $01 $bf $01
	cp $03                                           ; $7319: $fe $03
	ld a, e                                          ; $731b: $7b
	cp $9e                                           ; $731c: $fe $9e
	rlca                                             ; $731e: $07
	ld a, e                                          ; $731f: $7b
	call nc, $1f91                                   ; $7320: $d4 $91 $1f
	ldh a, [c]                                       ; $7323: $f2
	ccf                                              ; $7324: $3f
	ldh a, [c]                                       ; $7325: $f2
	ld a, a                                          ; $7326: $7f
	jp nc, $c6ff                                     ; $7327: $d2 $ff $c6

	ld a, [hl]                                       ; $732a: $7e
	and [hl]                                         ; $732b: $a6
	ld a, [hl]                                       ; $732c: $7e
	db $e3                                           ; $732d: $e3
	cp a                                             ; $732e: $bf
	di                                               ; $732f: $f3
	ld a, e                                          ; $7330: $7b
	cp $8e                                           ; $7331: $fe $8e
	ld sp, hl                                        ; $7333: $f9
	xor a                                            ; $7334: $af
	cp c                                             ; $7335: $b9
	rst AddAOntoHL                                          ; $7336: $ef
	xor l                                            ; $7337: $ad
	rst FarCall                                          ; $7338: $f7
	and e                                            ; $7339: $a3

jr_066_733a:
	rst $38                                          ; $733a: $ff
	reti                                             ; $733b: $d9


Jump_066_733c:
	ld a, a                                          ; $733c: $7f
	sub $7f                                          ; $733d: $d6 $7f
	db $eb                                           ; $733f: $eb
	ld a, a                                          ; $7340: $7f
	sbc $7e                                          ; $7341: $de $7e
	jp nc, $fe7b                                     ; $7343: $d2 $7b $fe

	sbc l                                            ; $7346: $9d
	call nc, Call_066_777c                           ; $7347: $d4 $7c $77
	cp $9c                                           ; $734a: $fe $9c
	ret c                                            ; $734c: $d8

	ld hl, sp-$68                                    ; $734d: $f8 $98
	ld a, e                                          ; $734f: $7b
	cp $9c                                           ; $7350: $fe $9c
	sub b                                            ; $7352: $90
	ldh a, [rAUD1SWEEP]                              ; $7353: $f0 $10
	ld a, e                                          ; $7355: $7b
	cp $9d                                           ; $7356: $fe $9d
	jr nz, jr_066_733a                               ; $7358: $20 $e0

	ld h, a                                          ; $735a: $67
	cp $9d                                           ; $735b: $fe $9d
	ld b, b                                          ; $735d: $40
	ret nz                                           ; $735e: $c0

	ld [hl], a                                       ; $735f: $77
	cp $27                                           ; $7360: $fe $27
	ld h, b                                          ; $7362: $60
	ld a, a                                          ; $7363: $7f
	cp $9b                                           ; $7364: $fe $9b

Call_066_7366:
	ld a, $ed                                        ; $7366: $3e $ed
	rra                                              ; $7368: $1f
	db $fd                                           ; $7369: $fd
	scf                                              ; $736a: $37
	ld h, b                                          ; $736b: $60
	adc l                                            ; $736c: $8d
	rst $38                                          ; $736d: $ff
	add hl, bc                                       ; $736e: $09
	ldh a, [rIF]                                     ; $736f: $f0 $0f
	rst GetHLinHL                                          ; $7371: $cf
	ccf                                              ; $7372: $3f
	ccf                                              ; $7373: $3f
	ldh a, [rIE]                                     ; $7374: $f0 $ff
	ret nz                                           ; $7376: $c0

	rst $38                                          ; $7377: $ff
	rrca                                             ; $7378: $0f
	rst FarCall                                          ; $7379: $f7
	ld a, $fd                                        ; $737a: $3e $fd
	ld a, h                                          ; $737c: $7c
	and l                                            ; $737d: $a5
	and $17                                          ; $737e: $e6 $17
	ld h, b                                          ; $7380: $60
	inc bc                                           ; $7381: $03
	and b                                            ; $7382: $a0
	dec sp                                           ; $7383: $3b
	and b                                            ; $7384: $a0
	ld a, a                                          ; $7385: $7f
	or d                                             ; $7386: $b2
	sbc e                                            ; $7387: $9b
	ret nz                                           ; $7388: $c0

	ccf                                              ; $7389: $3f
	ccf                                              ; $738a: $3f
	rst $38                                          ; $738b: $ff
	ld a, e                                          ; $738c: $7b
	and b                                            ; $738d: $a0
	cp a                                             ; $738e: $bf
	rst $38                                          ; $738f: $ff
	di                                               ; $7390: $f3
	sbc d                                            ; $7391: $9a
	ld c, $8f                                        ; $7392: $0e $8f
	ld l, h                                          ; $7394: $6c
	rst $38                                          ; $7395: $ff
	ld hl, sp+$03                                    ; $7396: $f8 $03
	and b                                            ; $7398: $a0
	dec sp                                           ; $7399: $3b
	and b                                            ; $739a: $a0
	ld a, [hl]                                       ; $739b: $7e
	add b                                            ; $739c: $80
	sbc e                                            ; $739d: $9b
	ld e, $fd                                        ; $739e: $1e $fd
	sbc a                                            ; $73a0: $9f
	push af                                          ; $73a1: $f5
	cpl                                              ; $73a2: $2f
	and b                                            ; $73a3: $a0
	ld h, e                                          ; $73a4: $63
	ld a, $bf                                        ; $73a5: $3e $bf
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	sbc h                                            ; $73a9: $9c
	ld b, $ff                                        ; $73aa: $06 $ff
	db $fc                                           ; $73ac: $fc
	rra                                              ; $73ad: $1f
	and b                                            ; $73ae: $a0
	adc b                                            ; $73af: $88
	rst GetHLinHL                                          ; $73b0: $cf
	ld a, [$f86f]                                    ; $73b1: $fa $6f $f8
	ld [hl], a                                       ; $73b4: $77
	call c, $ee3f                                    ; $73b5: $dc $3f $ee
	rst $38                                          ; $73b8: $ff
	ldh a, [rIE]                                     ; $73b9: $f0 $ff
	add d                                            ; $73bb: $82
	ei                                               ; $73bc: $fb
	pop hl                                           ; $73bd: $e1
	pop bc                                           ; $73be: $c1
	ld bc, $0087                                     ; $73bf: $01 $87 $00
	ld [hl], e                                       ; $73c2: $73
	dec sp                                           ; $73c3: $3b
	rra                                              ; $73c4: $1f
	inc c                                            ; $73c5: $0c
	ld bc, $00bd                                     ; $73c6: $01 $bd $00
	nop                                              ; $73c9: $00
	pop bc                                           ; $73ca: $c1
	rst $38                                          ; $73cb: $ff
	sbc [hl]                                         ; $73cc: $9e
	ldh a, [$3f]                                     ; $73cd: $f0 $3f
	ldh [$99], a                                     ; $73cf: $e0 $99
	ld [hl], c                                       ; $73d1: $71
	dec sp                                           ; $73d2: $3b
	ccf                                              ; $73d3: $3f
	ld e, $1f                                        ; $73d4: $1e $1f
	inc c                                            ; $73d6: $0c
	dec bc                                           ; $73d7: $0b
	ldh [$9e], a                                     ; $73d8: $e0 $9e
	ld c, $77                                        ; $73da: $0e $77
	rst SubAFromDE                                          ; $73dc: $df
	inc hl                                           ; $73dd: $23
	ldh [$99], a                                     ; $73de: $e0 $99
	ccf                                              ; $73e0: $3f
	rra                                              ; $73e1: $1f
	ld e, $1e                                        ; $73e2: $1e $1e
	inc c                                            ; $73e4: $0c
	inc c                                            ; $73e5: $0c
	ld [hl], e                                       ; $73e6: $73
	ldh [$a5], a                                     ; $73e7: $e0 $a5
	ld bc, $a18c                                     ; $73e9: $01 $8c $a1
	db $10                                           ; $73ec: $10
	ld bc, $1030                                     ; $73ed: $01 $30 $10
	ld hl, $2102                                     ; $73f0: $21 $02 $21
	ld b, d                                          ; $73f3: $42
	ld hl, $2340                                     ; $73f4: $21 $40 $23
	ld c, b                                          ; $73f7: $48
	inc hl                                           ; $73f8: $23
	ld [$2863], sp                                   ; $73f9: $08 $63 $28
	ld h, e                                          ; $73fc: $63
	dec l                                            ; $73fd: $2d
	ld a, e                                          ; $73fe: $7b
	cp $80                                           ; $73ff: $fe $80
	xor l                                            ; $7401: $ad
	ld [hl], e                                       ; $7402: $73
	sub l                                            ; $7403: $95
	ld a, e                                          ; $7404: $7b
	sub h                                            ; $7405: $94
	ld a, e                                          ; $7406: $7b
	sub $39                                          ; $7407: $d6 $39
	ld c, d                                          ; $7409: $4a
	cp l                                             ; $740a: $bd
	res 7, h                                         ; $740b: $cb $bc
	and l                                            ; $740d: $a5
	sbc $57                                          ; $740e: $de $57
	xor $23                                          ; $7410: $ee $23
	rst $38                                          ; $7412: $ff
	sbc e                                            ; $7413: $9b
	rst $38                                          ; $7414: $ff
	ld b, [hl]                                       ; $7415: $46
	cp $b1                                           ; $7416: $fe $b1
	rst $38                                          ; $7418: $ff
	sbc l                                            ; $7419: $9d
	rst $38                                          ; $741a: $ff
	sub a                                            ; $741b: $97
	rst $38                                          ; $741c: $ff
	sub d                                            ; $741d: $92
	rst $38                                          ; $741e: $ff
	ld c, d                                          ; $741f: $4a
	add b                                            ; $7420: $80
	rst $38                                          ; $7421: $ff
	ld c, e                                          ; $7422: $4b
	rst $38                                          ; $7423: $ff
	bit 7, a                                         ; $7424: $cb $7f
	xor h                                            ; $7426: $ac
	ld a, a                                          ; $7427: $7f
	xor b                                            ; $7428: $a8
	ld a, a                                          ; $7429: $7f
	or b                                             ; $742a: $b0
	ld a, a                                          ; $742b: $7f
	ld a, [hl+]                                      ; $742c: $2a
	call nz, $8844                                   ; $742d: $c4 $44 $88
	ld e, c                                          ; $7430: $59
	add b                                            ; $7431: $80
	sub b                                            ; $7432: $90
	ld bc, $0192                                     ; $7433: $01 $92 $01
	add c                                            ; $7436: $81
	ld [bc], a                                       ; $7437: $02
	add b                                            ; $7438: $80
	ld [bc], a                                       ; $7439: $02
	sub b                                            ; $743a: $90
	ld [bc], a                                       ; $743b: $02
	and b                                            ; $743c: $a0
	ld [de], a                                       ; $743d: $12
	xor d                                            ; $743e: $aa
	ld [de], a                                       ; $743f: $12
	add b                                            ; $7440: $80
	xor e                                            ; $7441: $ab
	ld [de], a                                       ; $7442: $12
	ld a, d                                          ; $7443: $7a
	sub e                                            ; $7444: $93
	ld a, [hl]                                       ; $7445: $7e
	sub e                                            ; $7446: $93
	push af                                          ; $7447: $f5
	sbc e                                            ; $7448: $9b
	xor l                                            ; $7449: $ad
	db $db                                           ; $744a: $db
	ld l, d                                          ; $744b: $6a
	db $dd                                           ; $744c: $dd
	ld d, [hl]                                       ; $744d: $56
	db $ed                                           ; $744e: $ed
	dec [hl]                                         ; $744f: $35
	xor $22                                          ; $7450: $ee $22
	rst $38                                          ; $7452: $ff
	inc de                                           ; $7453: $13
	rst $38                                          ; $7454: $ff
	sbc c                                            ; $7455: $99
	rst $38                                          ; $7456: $ff
	call z, Call_066_67ff                            ; $7457: $cc $ff $67
	ld a, a                                          ; $745a: $7f
	ld a, [de]                                       ; $745b: $1a
	rra                                              ; $745c: $1f
	add a                                            ; $745d: $87
	add a                                            ; $745e: $87
	ret nz                                           ; $745f: $c0

	sub b                                            ; $7460: $90
	add b                                            ; $7461: $80
	ldh [$c0], a                                     ; $7462: $e0 $c0
	or b                                             ; $7464: $b0
	ldh [$3c], a                                     ; $7465: $e0 $3c
	ldh a, [$3f]                                     ; $7467: $f0 $3f
	db $ec                                           ; $7469: $ec
	ccf                                              ; $746a: $3f
	db $e3                                           ; $746b: $e3
	rra                                              ; $746c: $1f
	ldh a, [rSB]                                     ; $746d: $f0 $01
	ld [hl], c                                       ; $746f: $71
	cp [hl]                                          ; $7470: $be
	rst JumpTable                                          ; $7471: $c7
	adc h                                            ; $7472: $8c
	sbc e                                            ; $7473: $9b
	sub a                                            ; $7474: $97
	ld bc, $0317                                     ; $7475: $01 $17 $03
	ld [hl], $03                                     ; $7478: $36 $03
	xor [hl]                                         ; $747a: $ae
	daa                                              ; $747b: $27
	xor h                                            ; $747c: $ac
	ld [hl], e                                       ; $747d: $73
	cp $9d                                           ; $747e: $fe $9d
	db $fc                                           ; $7480: $fc
	scf                                              ; $7481: $37
	ld a, e                                          ; $7482: $7b
	cp $89                                           ; $7483: $fe $89
	ld a, $ed                                        ; $7485: $3e $ed
	rra                                              ; $7487: $1f
	db $fc                                           ; $7488: $fc
	sbc a                                            ; $7489: $9f
	db $f4                                           ; $748a: $f4
	ld e, c                                          ; $748b: $59
	rst $38                                          ; $748c: $ff
	and l                                            ; $748d: $a5
	rst $38                                          ; $748e: $ff
	ld d, d                                          ; $748f: $52
	rst $38                                          ; $7490: $ff
	ld a, [$faef]                                    ; $7491: $fa $ef $fa
	ld c, a                                          ; $7494: $4f
	ld a, [$fa0f]                                    ; $7495: $fa $0f $fa
	rrca                                             ; $7498: $0f
	rst $38                                          ; $7499: $ff
	dec c                                            ; $749a: $0d
	ld a, e                                          ; $749b: $7b
	cp $8b                                           ; $749c: $fe $8b
	add hl, bc                                       ; $749e: $09
	ldh [$1f], a                                     ; $749f: $e0 $1f
	sbc a                                            ; $74a1: $9f
	ld a, a                                          ; $74a2: $7f
	ld a, a                                          ; $74a3: $7f
	ldh [rIE], a                                     ; $74a4: $e0 $ff
	adc a                                            ; $74a6: $8f
	db $fd                                           ; $74a7: $fd
	ld a, $cd                                        ; $74a8: $3e $cd
	ld l, h                                          ; $74aa: $6c
	push af                                          ; $74ab: $f5
	cp $a7                                           ; $74ac: $fe $a7
	db $e4                                           ; $74ae: $e4
	sbc a                                            ; $74af: $9f
	ld e, b                                          ; $74b0: $58
	rst $38                                          ; $74b1: $ff
	cp [hl]                                          ; $74b2: $be
	rst GetHLinHL                                          ; $74b3: $cf
	adc a                                            ; $74b4: $8f
	sbc a                                            ; $74b5: $9f
	sbc d                                            ; $74b6: $9a
	ld bc, $01bf                                     ; $74b7: $01 $bf $01
	cp $03                                           ; $74ba: $fe $03
	ld a, e                                          ; $74bc: $7b
	cp $9e                                           ; $74bd: $fe $9e
	rlca                                             ; $74bf: $07
	ld a, e                                          ; $74c0: $7b
	call nc, $1f91                                   ; $74c1: $d4 $91 $1f
	ldh a, [c]                                       ; $74c4: $f2
	ccf                                              ; $74c5: $3f
	ldh a, [c]                                       ; $74c6: $f2
	ld a, a                                          ; $74c7: $7f
	jp nc, $c6ff                                     ; $74c8: $d2 $ff $c6

	ld a, [hl]                                       ; $74cb: $7e
	and [hl]                                         ; $74cc: $a6
	ld a, [hl]                                       ; $74cd: $7e
	db $e3                                           ; $74ce: $e3
	cp a                                             ; $74cf: $bf
	di                                               ; $74d0: $f3
	ld a, e                                          ; $74d1: $7b
	cp $8e                                           ; $74d2: $fe $8e
	ld sp, hl                                        ; $74d4: $f9
	xor a                                            ; $74d5: $af
	cp c                                             ; $74d6: $b9
	rst AddAOntoHL                                          ; $74d7: $ef
	xor l                                            ; $74d8: $ad
	rst FarCall                                          ; $74d9: $f7
	and e                                            ; $74da: $a3

jr_066_74db:
	rst $38                                          ; $74db: $ff
	reti                                             ; $74dc: $d9


	ld a, a                                          ; $74dd: $7f
	sub $7f                                          ; $74de: $d6 $7f
	db $eb                                           ; $74e0: $eb
	ld a, a                                          ; $74e1: $7f
	sbc $7e                                          ; $74e2: $de $7e
	jp nc, $fe7b                                     ; $74e4: $d2 $7b $fe

	sbc l                                            ; $74e7: $9d
	call nc, Call_066_777c                           ; $74e8: $d4 $7c $77
	cp $9c                                           ; $74eb: $fe $9c
	ret c                                            ; $74ed: $d8

	ld hl, sp-$68                                    ; $74ee: $f8 $98
	ld a, e                                          ; $74f0: $7b
	cp $9c                                           ; $74f1: $fe $9c
	sub b                                            ; $74f3: $90
	ldh a, [rAUD1SWEEP]                              ; $74f4: $f0 $10
	ld a, e                                          ; $74f6: $7b
	cp $9d                                           ; $74f7: $fe $9d
	jr nz, jr_066_74db                               ; $74f9: $20 $e0

	ld h, a                                          ; $74fb: $67
	cp $9d                                           ; $74fc: $fe $9d
	ld b, b                                          ; $74fe: $40
	ret nz                                           ; $74ff: $c0

	ld [hl], a                                       ; $7500: $77
	cp $1f                                           ; $7501: $fe $1f
	ld h, b                                          ; $7503: $60
	ld a, a                                          ; $7504: $7f
	ld b, b                                          ; $7505: $40
	sbc l                                            ; $7506: $9d
	ld e, $fd                                        ; $7507: $1e $fd
	cpl                                              ; $7509: $2f
	ld h, b                                          ; $750a: $60
	adc a                                            ; $750b: $8f
	ldh a, [rIF]                                     ; $750c: $f0 $0f
	rst GetHLinHL                                          ; $750e: $cf
	ccf                                              ; $750f: $3f
	cp a                                             ; $7510: $bf
	ld [hl], b                                       ; $7511: $70
	ld a, a                                          ; $7512: $7f
	ret nz                                           ; $7513: $c0

	rst $38                                          ; $7514: $ff
	adc a                                            ; $7515: $8f
	rst FarCall                                          ; $7516: $f7
	ld a, $fd                                        ; $7517: $3e $fd
	ld a, h                                          ; $7519: $7c
	and l                                            ; $751a: $a5
	and $17                                          ; $751b: $e6 $17
	ld h, b                                          ; $751d: $60
	inc bc                                           ; $751e: $03
	and b                                            ; $751f: $a0
	dec sp                                           ; $7520: $3b
	and b                                            ; $7521: $a0
	sbc c                                            ; $7522: $99
	ld hl, sp+$07                                    ; $7523: $f8 $07
	rst SubAFromBC                                          ; $7525: $e7
	rra                                              ; $7526: $1f
	sbc a                                            ; $7527: $9f
	ld a, b                                          ; $7528: $78
	ld a, d                                          ; $7529: $7a
	cp $96                                           ; $752a: $fe $96
	add b                                            ; $752c: $80
	rst $38                                          ; $752d: $ff
	nop                                              ; $752e: $00
	di                                               ; $752f: $f3
	ld c, $8f                                        ; $7530: $0e $8f
	ld l, h                                          ; $7532: $6c
	rst $38                                          ; $7533: $ff
	ld hl, sp+$03                                    ; $7534: $f8 $03
	and b                                            ; $7536: $a0
	inc bc                                           ; $7537: $03
	and b                                            ; $7538: $a0
	ld d, a                                          ; $7539: $57
	and b                                            ; $753a: $a0
	ld a, a                                          ; $753b: $7f
	or d                                             ; $753c: $b2
	ld a, a                                          ; $753d: $7f
	sbc [hl]                                         ; $753e: $9e
	sbc b                                            ; $753f: $98
	rst JumpTable                                          ; $7540: $c7
	ccf                                              ; $7541: $3f
	ccf                                              ; $7542: $3f
	ld hl, sp-$01                                    ; $7543: $f8 $ff
	ret nz                                           ; $7545: $c0

	rst $38                                          ; $7546: $ff
	cp a                                             ; $7547: $bf
	rst $38                                          ; $7548: $ff
	rst $38                                          ; $7549: $ff
	sbc h                                            ; $754a: $9c
	ld b, $ff                                        ; $754b: $06 $ff
	db $fc                                           ; $754d: $fc
	rra                                              ; $754e: $1f
	and b                                            ; $754f: $a0
	adc b                                            ; $7550: $88
	rst GetHLinHL                                          ; $7551: $cf
	ld a, [$f86f]                                    ; $7552: $fa $6f $f8
	ld [hl], a                                       ; $7555: $77
	call c, $ee3f                                    ; $7556: $dc $3f $ee
	rst $38                                          ; $7559: $ff
	ldh a, [rIE]                                     ; $755a: $f0 $ff
	add d                                            ; $755c: $82
	ei                                               ; $755d: $fb
	pop hl                                           ; $755e: $e1
	pop bc                                           ; $755f: $c1
	ld bc, $0083                                     ; $7560: $01 $83 $00
	add hl, de                                       ; $7563: $19
	dec e                                            ; $7564: $1d
	rrca                                             ; $7565: $0f
	ld b, $01                                        ; $7566: $06 $01
	cp l                                             ; $7568: $bd
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	pop bc                                           ; $756b: $c1
	rst $38                                          ; $756c: $ff
	sbc [hl]                                         ; $756d: $9e
	ldh a, [$3f]                                     ; $756e: $f0 $3f
	ldh [$9a], a                                     ; $7570: $e0 $9a
	ld sp, $1f1d                                     ; $7572: $31 $1d $1f
	ld c, $0f                                        ; $7575: $0e $0f
	inc hl                                           ; $7577: $23
	ldh [$9e], a                                     ; $7578: $e0 $9e
	and e                                            ; $757a: $a3
	ld [hl], a                                       ; $757b: $77
	ldh [$9c], a                                     ; $757c: $e0 $9c
	rra                                              ; $757e: $1f
	rrca                                             ; $757f: $0f
	ld c, $17                                        ; $7580: $0e $17
	ldh [$98], a                                     ; $7582: $e0 $98
	ccf                                              ; $7584: $3f
	rra                                              ; $7585: $1f
	rra                                              ; $7586: $1f
	ld e, $1e                                        ; $7587: $1e $1e
	inc c                                            ; $7589: $0c
	inc c                                            ; $758a: $0c
	ld [hl], e                                       ; $758b: $73
	ldh [$97], a                                     ; $758c: $e0 $97
	ld bc, $a18c                                     ; $758e: $01 $8c $a1
	db $10                                           ; $7591: $10
	ld bc, $1030                                     ; $7592: $01 $30 $10
	ld hl, $2102                                     ; $7595: $21 $02 $21
	ld b, d                                          ; $7598: $42
	ld hl, $2340                                     ; $7599: $21 $40 $23
	ld c, b                                          ; $759c: $48
	inc hl                                           ; $759d: $23
	ld [$2863], sp                                   ; $759e: $08 $63 $28
	ld h, e                                          ; $75a1: $63
	dec l                                            ; $75a2: $2d
	ld a, e                                          ; $75a3: $7b
	cp $80                                           ; $75a4: $fe $80
	xor l                                            ; $75a6: $ad
	ld [hl], e                                       ; $75a7: $73
	sub l                                            ; $75a8: $95
	ld a, e                                          ; $75a9: $7b
	sub h                                            ; $75aa: $94
	ld a, e                                          ; $75ab: $7b
	sub $39                                          ; $75ac: $d6 $39
	ld c, d                                          ; $75ae: $4a
	cp l                                             ; $75af: $bd
	res 7, h                                         ; $75b0: $cb $bc
	and l                                            ; $75b2: $a5
	sbc $57                                          ; $75b3: $de $57
	xor $23                                          ; $75b5: $ee $23
	rst $38                                          ; $75b7: $ff
	sbc e                                            ; $75b8: $9b
	rst $38                                          ; $75b9: $ff
	ld b, [hl]                                       ; $75ba: $46
	cp $b1                                           ; $75bb: $fe $b1
	rst $38                                          ; $75bd: $ff
	sbc l                                            ; $75be: $9d
	rst $38                                          ; $75bf: $ff
	sub a                                            ; $75c0: $97
	rst $38                                          ; $75c1: $ff
	sub d                                            ; $75c2: $92
	rst $38                                          ; $75c3: $ff
	ld c, d                                          ; $75c4: $4a
	add b                                            ; $75c5: $80
	rst $38                                          ; $75c6: $ff
	ld c, e                                          ; $75c7: $4b
	rst $38                                          ; $75c8: $ff
	bit 7, a                                         ; $75c9: $cb $7f
	xor h                                            ; $75cb: $ac
	ld a, a                                          ; $75cc: $7f
	xor b                                            ; $75cd: $a8
	ld a, a                                          ; $75ce: $7f
	or b                                             ; $75cf: $b0
	ld a, a                                          ; $75d0: $7f
	ld a, [hl+]                                      ; $75d1: $2a
	call nz, $8844                                   ; $75d2: $c4 $44 $88
	ld e, c                                          ; $75d5: $59
	add b                                            ; $75d6: $80
	sub b                                            ; $75d7: $90
	ld bc, $0192                                     ; $75d8: $01 $92 $01
	add c                                            ; $75db: $81
	ld [bc], a                                       ; $75dc: $02
	add b                                            ; $75dd: $80
	ld [bc], a                                       ; $75de: $02
	sub b                                            ; $75df: $90
	ld [bc], a                                       ; $75e0: $02
	and b                                            ; $75e1: $a0
	ld [de], a                                       ; $75e2: $12
	xor d                                            ; $75e3: $aa
	ld [de], a                                       ; $75e4: $12
	add b                                            ; $75e5: $80
	xor e                                            ; $75e6: $ab
	ld [de], a                                       ; $75e7: $12
	ld a, d                                          ; $75e8: $7a
	sub e                                            ; $75e9: $93
	ld a, [hl]                                       ; $75ea: $7e
	sub e                                            ; $75eb: $93
	push af                                          ; $75ec: $f5
	sbc e                                            ; $75ed: $9b
	xor l                                            ; $75ee: $ad
	db $db                                           ; $75ef: $db
	ld l, d                                          ; $75f0: $6a
	db $dd                                           ; $75f1: $dd
	ld d, [hl]                                       ; $75f2: $56
	db $ed                                           ; $75f3: $ed
	dec [hl]                                         ; $75f4: $35
	xor $22                                          ; $75f5: $ee $22
	rst $38                                          ; $75f7: $ff
	inc de                                           ; $75f8: $13
	rst $38                                          ; $75f9: $ff
	sbc c                                            ; $75fa: $99
	rst $38                                          ; $75fb: $ff
	call z, Call_066_67ff                            ; $75fc: $cc $ff $67
	ld a, a                                          ; $75ff: $7f
	ld a, [de]                                       ; $7600: $1a
	rra                                              ; $7601: $1f
	add a                                            ; $7602: $87
	add a                                            ; $7603: $87
	ret nz                                           ; $7604: $c0

	sub b                                            ; $7605: $90
	add b                                            ; $7606: $80
	ldh [$c0], a                                     ; $7607: $e0 $c0
	or b                                             ; $7609: $b0
	ldh [$3c], a                                     ; $760a: $e0 $3c
	ldh a, [$3f]                                     ; $760c: $f0 $3f
	db $ec                                           ; $760e: $ec
	ccf                                              ; $760f: $3f
	db $e3                                           ; $7610: $e3
	rra                                              ; $7611: $1f
	ldh a, [rSB]                                     ; $7612: $f0 $01
	ld [hl], c                                       ; $7614: $71
	cp [hl]                                          ; $7615: $be
	rst JumpTable                                          ; $7616: $c7
	adc h                                            ; $7617: $8c
	sbc e                                            ; $7618: $9b
	sub a                                            ; $7619: $97
	ld bc, $0317                                     ; $761a: $01 $17 $03
	ld [hl], $03                                     ; $761d: $36 $03
	xor [hl]                                         ; $761f: $ae
	daa                                              ; $7620: $27
	xor h                                            ; $7621: $ac
	ld [hl], e                                       ; $7622: $73
	cp $9d                                           ; $7623: $fe $9d
	db $fc                                           ; $7625: $fc
	scf                                              ; $7626: $37
	ld a, e                                          ; $7627: $7b
	cp $89                                           ; $7628: $fe $89
	ld a, $ed                                        ; $762a: $3e $ed
	rra                                              ; $762c: $1f
	db $fd                                           ; $762d: $fd
	sbc a                                            ; $762e: $9f
	db $f4                                           ; $762f: $f4
	ld e, c                                          ; $7630: $59
	rst $38                                          ; $7631: $ff
	and l                                            ; $7632: $a5
	rst $38                                          ; $7633: $ff
	ld d, d                                          ; $7634: $52
	rst $38                                          ; $7635: $ff
	ld a, [$faef]                                    ; $7636: $fa $ef $fa
	ld c, a                                          ; $7639: $4f
	ld a, [$fa0f]                                    ; $763a: $fa $0f $fa
	rrca                                             ; $763d: $0f
	rst $38                                          ; $763e: $ff
	dec c                                            ; $763f: $0d
	ld a, e                                          ; $7640: $7b
	cp $8b                                           ; $7641: $fe $8b
	add hl, bc                                       ; $7643: $09
	ldh a, [rIF]                                     ; $7644: $f0 $0f
	rst GetHLinHL                                          ; $7646: $cf
	ccf                                              ; $7647: $3f
	ccf                                              ; $7648: $3f
	ldh a, [rIE]                                     ; $7649: $f0 $ff
	rst GetHLinHL                                          ; $764b: $cf
	db $fd                                           ; $764c: $fd
	ld a, $ed                                        ; $764d: $3e $ed
	ld l, h                                          ; $764f: $6c
	push af                                          ; $7650: $f5
	cp $a7                                           ; $7651: $fe $a7
	db $e4                                           ; $7653: $e4
	sbc a                                            ; $7654: $9f
	ld e, b                                          ; $7655: $58
	rst $38                                          ; $7656: $ff
	cp [hl]                                          ; $7657: $be
	rst GetHLinHL                                          ; $7658: $cf
	adc a                                            ; $7659: $8f
	sbc a                                            ; $765a: $9f
	sbc d                                            ; $765b: $9a
	ld bc, $01bf                                     ; $765c: $01 $bf $01
	cp $03                                           ; $765f: $fe $03
	ld a, e                                          ; $7661: $7b
	cp $9e                                           ; $7662: $fe $9e
	rlca                                             ; $7664: $07
	ld a, e                                          ; $7665: $7b
	call nc, $1f91                                   ; $7666: $d4 $91 $1f
	ldh a, [c]                                       ; $7669: $f2
	ccf                                              ; $766a: $3f
	ldh a, [c]                                       ; $766b: $f2
	ld a, a                                          ; $766c: $7f
	jp nc, $c6ff                                     ; $766d: $d2 $ff $c6

	ld a, [hl]                                       ; $7670: $7e
	and [hl]                                         ; $7671: $a6
	ld a, [hl]                                       ; $7672: $7e
	db $e3                                           ; $7673: $e3
	cp a                                             ; $7674: $bf
	di                                               ; $7675: $f3
	ld a, e                                          ; $7676: $7b
	cp $8e                                           ; $7677: $fe $8e
	ld sp, hl                                        ; $7679: $f9
	xor a                                            ; $767a: $af
	cp c                                             ; $767b: $b9
	rst AddAOntoHL                                          ; $767c: $ef
	xor l                                            ; $767d: $ad
	rst FarCall                                          ; $767e: $f7
	and e                                            ; $767f: $a3

jr_066_7680:
	rst $38                                          ; $7680: $ff
	reti                                             ; $7681: $d9


	ld a, a                                          ; $7682: $7f
	sub $7f                                          ; $7683: $d6 $7f
	db $eb                                           ; $7685: $eb
	ld a, a                                          ; $7686: $7f
	sbc $7e                                          ; $7687: $de $7e
	jp nc, $fe7b                                     ; $7689: $d2 $7b $fe

	sbc l                                            ; $768c: $9d
	call nc, Call_066_777c                           ; $768d: $d4 $7c $77
	cp $9c                                           ; $7690: $fe $9c
	ret c                                            ; $7692: $d8

	ld hl, sp-$68                                    ; $7693: $f8 $98
	ld a, e                                          ; $7695: $7b
	cp $9c                                           ; $7696: $fe $9c
	sub b                                            ; $7698: $90
	ldh a, [rAUD1SWEEP]                              ; $7699: $f0 $10
	ld a, e                                          ; $769b: $7b
	cp $9d                                           ; $769c: $fe $9d
	jr nz, jr_066_7680                               ; $769e: $20 $e0

	ld h, a                                          ; $76a0: $67
	cp $9d                                           ; $76a1: $fe $9d
	ld b, b                                          ; $76a3: $40
	ret nz                                           ; $76a4: $c0

	ld [hl], a                                       ; $76a5: $77
	cp $03                                           ; $76a6: $fe $03
	ld h, b                                          ; $76a8: $60
	dec hl                                           ; $76a9: $2b
	ld h, b                                          ; $76aa: $60
	sub e                                            ; $76ab: $93
	cp a                                             ; $76ac: $bf
	ld [hl], b                                       ; $76ad: $70
	ld a, a                                          ; $76ae: $7f
	ret nz                                           ; $76af: $c0

	rst $38                                          ; $76b0: $ff
	adc a                                            ; $76b1: $8f
	rst FarCall                                          ; $76b2: $f7
	ld a, $fd                                        ; $76b3: $3e $fd
	ld a, h                                          ; $76b5: $7c
	and l                                            ; $76b6: $a5
	and $17                                          ; $76b7: $e6 $17
	ld h, b                                          ; $76b9: $60
	inc bc                                           ; $76ba: $03
	and b                                            ; $76bb: $a0
	dec sp                                           ; $76bc: $3b
	and b                                            ; $76bd: $a0
	ld a, a                                          ; $76be: $7f
	or d                                             ; $76bf: $b2
	adc a                                            ; $76c0: $8f
	pop af                                           ; $76c1: $f1
	ld c, $8f                                        ; $76c2: $0e $8f
	ld a, [hl]                                       ; $76c4: $7e
	ld a, a                                          ; $76c5: $7f
	ldh a, [rIE]                                     ; $76c6: $f0 $ff
	add b                                            ; $76c8: $80
	rst $38                                          ; $76c9: $ff
	nop                                              ; $76ca: $00
	di                                               ; $76cb: $f3
	ld c, $8f                                        ; $76cc: $0e $8f
	ld l, h                                          ; $76ce: $6c
	rst $38                                          ; $76cf: $ff
	ld hl, sp+$03                                    ; $76d0: $f8 $03
	and b                                            ; $76d2: $a0
	dec sp                                           ; $76d3: $3b
	and b                                            ; $76d4: $a0
	ld a, [hl]                                       ; $76d5: $7e
	add b                                            ; $76d6: $80
	sbc e                                            ; $76d7: $9b
	ld e, $fd                                        ; $76d8: $1e $fd
	sbc a                                            ; $76da: $9f
	push af                                          ; $76db: $f5
	cpl                                              ; $76dc: $2f
	and b                                            ; $76dd: $a0
	sub a                                            ; $76de: $97
	ld sp, hl                                        ; $76df: $f9
	ld b, $e7                                        ; $76e0: $06 $e7
	ld e, $9f                                        ; $76e2: $1e $9f
	ld a, b                                          ; $76e4: $78
	ld a, a                                          ; $76e5: $7f
	ldh [rPCM34], a                                  ; $76e6: $e0 $77
	sbc [hl]                                         ; $76e8: $9e
	sbc e                                            ; $76e9: $9b
	rst $38                                          ; $76ea: $ff
	ld b, $ff                                        ; $76eb: $06 $ff
	db $fc                                           ; $76ed: $fc
	rra                                              ; $76ee: $1f
	and b                                            ; $76ef: $a0
	adc d                                            ; $76f0: $8a
	rst GetHLinHL                                          ; $76f1: $cf
	ld a, [$f86f]                                    ; $76f2: $fa $6f $f8
	ld [hl], a                                       ; $76f5: $77
	call c, $ee3f                                    ; $76f6: $dc $3f $ee
	rst $38                                          ; $76f9: $ff
	ldh a, [rIE]                                     ; $76fa: $f0 $ff
	add d                                            ; $76fc: $82
	ei                                               ; $76fd: $fb
	pop hl                                           ; $76fe: $e1
	pop bc                                           ; $76ff: $c1
	ld bc, $0083                                     ; $7700: $01 $83 $00
	dec c                                            ; $7703: $0d
	rlca                                             ; $7704: $07
	ld bc, $07bc                                     ; $7705: $01 $bc $07
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	pop bc                                           ; $770a: $c1
	rst $38                                          ; $770b: $ff
	sbc [hl]                                         ; $770c: $9e
	ldh a, [$3f]                                     ; $770d: $f0 $3f
	ldh [$9b], a                                     ; $770f: $e0 $9b
	add hl, de                                       ; $7711: $19
	dec c                                            ; $7712: $0d
	rra                                              ; $7713: $1f
	ld c, $0b                                        ; $7714: $0e $0b
	ldh [$df], a                                     ; $7716: $e0 $df
	rra                                              ; $7718: $1f
	rst SubAFromDE                                          ; $7719: $df
	ld c, $0f                                        ; $771a: $0e $0f
	ldh [$9b], a                                     ; $771c: $e0 $9b
	rra                                              ; $771e: $1f
	ld e, $0e                                        ; $771f: $1e $0e
	inc c                                            ; $7721: $0c
	ld [hl], e                                       ; $7722: $73
	ldh [$9f], a                                     ; $7723: $e0 $9f
	ld bc, $a18c                                     ; $7725: $01 $8c $a1
	db $10                                           ; $7728: $10
	ld bc, $1030                                     ; $7729: $01 $30 $10
	ld hl, $2102                                     ; $772c: $21 $02 $21
	ld b, d                                          ; $772f: $42
	ld hl, $2340                                     ; $7730: $21 $40 $23
	ld c, b                                          ; $7733: $48
	inc hl                                           ; $7734: $23
	ld [$2863], sp                                   ; $7735: $08 $63 $28
	ld h, e                                          ; $7738: $63
	dec l                                            ; $7739: $2d
	ld a, e                                          ; $773a: $7b
	cp $80                                           ; $773b: $fe $80
	xor l                                            ; $773d: $ad
	ld [hl], e                                       ; $773e: $73
	sub l                                            ; $773f: $95
	ld a, e                                          ; $7740: $7b
	sub h                                            ; $7741: $94
	ld a, e                                          ; $7742: $7b
	sub $39                                          ; $7743: $d6 $39
	ld c, d                                          ; $7745: $4a
	cp l                                             ; $7746: $bd
	res 7, h                                         ; $7747: $cb $bc
	and l                                            ; $7749: $a5
	sbc $57                                          ; $774a: $de $57
	xor $23                                          ; $774c: $ee $23
	rst $38                                          ; $774e: $ff
	sbc e                                            ; $774f: $9b
	rst $38                                          ; $7750: $ff
	ld b, [hl]                                       ; $7751: $46
	cp $b1                                           ; $7752: $fe $b1
	rst $38                                          ; $7754: $ff
	sbc l                                            ; $7755: $9d
	rst $38                                          ; $7756: $ff
	sub a                                            ; $7757: $97
	rst $38                                          ; $7758: $ff
	sub d                                            ; $7759: $92
	rst $38                                          ; $775a: $ff
	ld c, d                                          ; $775b: $4a
	add b                                            ; $775c: $80
	rst $38                                          ; $775d: $ff
	ld c, e                                          ; $775e: $4b
	rst $38                                          ; $775f: $ff
	bit 7, a                                         ; $7760: $cb $7f
	xor h                                            ; $7762: $ac
	ld a, a                                          ; $7763: $7f
	xor b                                            ; $7764: $a8
	ld a, a                                          ; $7765: $7f
	or b                                             ; $7766: $b0
	ld a, a                                          ; $7767: $7f
	ld a, [hl+]                                      ; $7768: $2a
	call nz, $8844                                   ; $7769: $c4 $44 $88
	ld e, c                                          ; $776c: $59
	add b                                            ; $776d: $80
	sub b                                            ; $776e: $90
	ld bc, $0192                                     ; $776f: $01 $92 $01
	add c                                            ; $7772: $81
	ld [bc], a                                       ; $7773: $02
	add b                                            ; $7774: $80
	ld [bc], a                                       ; $7775: $02
	sub b                                            ; $7776: $90
	ld [bc], a                                       ; $7777: $02
	and b                                            ; $7778: $a0
	ld [de], a                                       ; $7779: $12
	xor d                                            ; $777a: $aa
	ld [de], a                                       ; $777b: $12

Call_066_777c:
	add b                                            ; $777c: $80
	xor e                                            ; $777d: $ab
	ld [de], a                                       ; $777e: $12
	ld a, d                                          ; $777f: $7a
	sub e                                            ; $7780: $93
	ld a, [hl]                                       ; $7781: $7e
	sub e                                            ; $7782: $93
	push af                                          ; $7783: $f5
	sbc e                                            ; $7784: $9b
	xor l                                            ; $7785: $ad
	db $db                                           ; $7786: $db
	ld l, d                                          ; $7787: $6a
	db $dd                                           ; $7788: $dd
	ld d, [hl]                                       ; $7789: $56
	db $ed                                           ; $778a: $ed
	dec [hl]                                         ; $778b: $35
	xor $22                                          ; $778c: $ee $22
	rst $38                                          ; $778e: $ff
	inc de                                           ; $778f: $13
	rst $38                                          ; $7790: $ff
	sbc c                                            ; $7791: $99
	rst $38                                          ; $7792: $ff
	call z, Call_066_67ff                            ; $7793: $cc $ff $67
	ld a, a                                          ; $7796: $7f
	ld a, [de]                                       ; $7797: $1a
	rra                                              ; $7798: $1f
	add a                                            ; $7799: $87
	add a                                            ; $779a: $87
	ret nz                                           ; $779b: $c0

	sub b                                            ; $779c: $90
	add b                                            ; $779d: $80
	ldh [$c0], a                                     ; $779e: $e0 $c0
	or b                                             ; $77a0: $b0
	ldh [$3c], a                                     ; $77a1: $e0 $3c
	ldh a, [$3f]                                     ; $77a3: $f0 $3f
	db $ec                                           ; $77a5: $ec
	ccf                                              ; $77a6: $3f
	db $e3                                           ; $77a7: $e3
	rra                                              ; $77a8: $1f
	ldh a, [rSB]                                     ; $77a9: $f0 $01
	ld [hl], c                                       ; $77ab: $71
	cp [hl]                                          ; $77ac: $be
	rst JumpTable                                          ; $77ad: $c7
	adc h                                            ; $77ae: $8c
	sbc e                                            ; $77af: $9b
	sub a                                            ; $77b0: $97
	ld bc, $0317                                     ; $77b1: $01 $17 $03
	ld [hl], $03                                     ; $77b4: $36 $03
	xor [hl]                                         ; $77b6: $ae
	daa                                              ; $77b7: $27
	xor h                                            ; $77b8: $ac
	ld [hl], e                                       ; $77b9: $73
	cp $9d                                           ; $77ba: $fe $9d
	db $fc                                           ; $77bc: $fc
	scf                                              ; $77bd: $37
	ld a, e                                          ; $77be: $7b
	cp $7f                                           ; $77bf: $fe $7f
	ldh [$8b], a                                     ; $77c1: $e0 $8b
	rra                                              ; $77c3: $1f
	db $fc                                           ; $77c4: $fc
	sbc a                                            ; $77c5: $9f
	db $f4                                           ; $77c6: $f4
	ld e, c                                          ; $77c7: $59
	rst $38                                          ; $77c8: $ff
	and l                                            ; $77c9: $a5
	rst $38                                          ; $77ca: $ff
	ld d, d                                          ; $77cb: $52
	rst $38                                          ; $77cc: $ff
	ld a, [$faef]                                    ; $77cd: $fa $ef $fa
	ld c, a                                          ; $77d0: $4f
	ld a, [$fa0f]                                    ; $77d1: $fa $0f $fa
	rrca                                             ; $77d4: $0f
	rst $38                                          ; $77d5: $ff
	dec c                                            ; $77d6: $0d
	ld a, e                                          ; $77d7: $7b
	cp $8b                                           ; $77d8: $fe $8b
	add hl, bc                                       ; $77da: $09
	rst $38                                          ; $77db: $ff
	nop                                              ; $77dc: $00
	db $fc                                           ; $77dd: $fc
	inc bc                                           ; $77de: $03
	di                                               ; $77df: $f3
	rrca                                             ; $77e0: $0f
	rst AddAOntoHL                                          ; $77e1: $ef
	inc e                                            ; $77e2: $1c
	rst SubAFromDE                                          ; $77e3: $df
	jr nc, @+$41                                     ; $77e4: $30 $3f

	ldh [rIE], a                                     ; $77e6: $e0 $ff
	ret nz                                           ; $77e8: $c0

	rst $38                                          ; $77e9: $ff
	ld b, $ff                                        ; $77ea: $06 $ff
	db $fc                                           ; $77ec: $fc
	rst $38                                          ; $77ed: $ff
	cp [hl]                                          ; $77ee: $be
	rst GetHLinHL                                          ; $77ef: $cf
	adc a                                            ; $77f0: $8f
	sbc a                                            ; $77f1: $9f
	sbc d                                            ; $77f2: $9a
	ld bc, $01bf                                     ; $77f3: $01 $bf $01
	cp $03                                           ; $77f6: $fe $03
	ld a, e                                          ; $77f8: $7b
	cp $9e                                           ; $77f9: $fe $9e
	rlca                                             ; $77fb: $07
	ld a, e                                          ; $77fc: $7b
	call nc, $1f91                                   ; $77fd: $d4 $91 $1f
	ldh a, [c]                                       ; $7800: $f2
	ccf                                              ; $7801: $3f
	ldh a, [c]                                       ; $7802: $f2
	ld a, a                                          ; $7803: $7f
	jp nc, $c6ff                                     ; $7804: $d2 $ff $c6

	ld a, [hl]                                       ; $7807: $7e
	and [hl]                                         ; $7808: $a6
	ld a, [hl]                                       ; $7809: $7e
	db $e3                                           ; $780a: $e3
	cp a                                             ; $780b: $bf
	di                                               ; $780c: $f3
	ld a, e                                          ; $780d: $7b
	cp $8e                                           ; $780e: $fe $8e
	ld sp, hl                                        ; $7810: $f9
	xor a                                            ; $7811: $af
	cp c                                             ; $7812: $b9
	rst AddAOntoHL                                          ; $7813: $ef
	xor l                                            ; $7814: $ad
	rst FarCall                                          ; $7815: $f7
	and e                                            ; $7816: $a3

jr_066_7817:
	rst $38                                          ; $7817: $ff
	reti                                             ; $7818: $d9


	ld a, a                                          ; $7819: $7f
	sub $7f                                          ; $781a: $d6 $7f
	db $eb                                           ; $781c: $eb
	ld a, a                                          ; $781d: $7f
	sbc $7e                                          ; $781e: $de $7e
	jp nc, $fe7b                                     ; $7820: $d2 $7b $fe

	sbc l                                            ; $7823: $9d
	call nc, Call_066_777c                           ; $7824: $d4 $7c $77
	cp $9c                                           ; $7827: $fe $9c
	ret c                                            ; $7829: $d8

	ld hl, sp-$68                                    ; $782a: $f8 $98
	ld a, e                                          ; $782c: $7b
	cp $9c                                           ; $782d: $fe $9c
	sub b                                            ; $782f: $90
	ldh a, [rAUD1SWEEP]                              ; $7830: $f0 $10
	ld a, e                                          ; $7832: $7b
	cp $9d                                           ; $7833: $fe $9d
	jr nz, jr_066_7817                               ; $7835: $20 $e0

	ld h, a                                          ; $7837: $67
	cp $9d                                           ; $7838: $fe $9d
	ld b, b                                          ; $783a: $40
	ret nz                                           ; $783b: $c0

	ld [hl], a                                       ; $783c: $77
	cp $03                                           ; $783d: $fe $03
	ld h, b                                          ; $783f: $60
	inc sp                                           ; $7840: $33
	ld h, b                                          ; $7841: $60
	sbc c                                            ; $7842: $99
	ld hl, sp+$07                                    ; $7843: $f8 $07
	rst SubAFromBC                                          ; $7845: $e7
	rra                                              ; $7846: $1f
	rst SubAFromDE                                          ; $7847: $df
	jr c, jr_066_78c1                                ; $7848: $38 $77

	ld h, d                                          ; $784a: $62
	sbc c                                            ; $784b: $99
	di                                               ; $784c: $f3
	ld c, $8f                                        ; $784d: $0e $8f
	ld l, h                                          ; $784f: $6c
	rst $38                                          ; $7850: $ff
	ld hl, sp+$1f                                    ; $7851: $f8 $1f
	ld h, b                                          ; $7853: $60
	inc de                                           ; $7854: $13
	and b                                            ; $7855: $a0
	sbc [hl]                                         ; $7856: $9e
	db $fd                                           ; $7857: $fd
	cpl                                              ; $7858: $2f
	and b                                            ; $7859: $a0
	ld [hl], a                                       ; $785a: $77
	and d                                            ; $785b: $a2
	sub c                                            ; $785c: $91
	sbc a                                            ; $785d: $9f
	ld a, b                                          ; $785e: $78
	ld a, a                                          ; $785f: $7f
	ldh [rIE], a                                     ; $7860: $e0 $ff
	adc a                                            ; $7862: $8f
	rst FarCall                                          ; $7863: $f7
	ld a, $fd                                        ; $7864: $3e $fd
	ld a, h                                          ; $7866: $7c
	and l                                            ; $7867: $a5
	and $9f                                          ; $7868: $e6 $9f
	ld e, b                                          ; $786a: $58
	inc bc                                           ; $786b: $03
	and b                                            ; $786c: $a0
	dec sp                                           ; $786d: $3b
	and b                                            ; $786e: $a0
	sbc l                                            ; $786f: $9d
	ld a, $ed                                        ; $7870: $3e $ed
	daa                                              ; $7872: $27
	and b                                            ; $7873: $a0
	adc a                                            ; $7874: $8f
	ldh a, [rIF]                                     ; $7875: $f0 $0f
	rst GetHLinHL                                          ; $7877: $cf
	ccf                                              ; $7878: $3f
	cp a                                             ; $7879: $bf
	ld [hl], b                                       ; $787a: $70
	ld a, a                                          ; $787b: $7f
	rst GetHLinHL                                          ; $787c: $cf
	db $fd                                           ; $787d: $fd
	cp [hl]                                          ; $787e: $be
	db $ed                                           ; $787f: $ed
	ld l, h                                          ; $7880: $6c
	push af                                          ; $7881: $f5
	cp $a7                                           ; $7882: $fe $a7
	db $e4                                           ; $7884: $e4
	rla                                              ; $7885: $17
	and b                                            ; $7886: $a0
	adc b                                            ; $7887: $88
	rst GetHLinHL                                          ; $7888: $cf
	ld a, [$f86f]                                    ; $7889: $fa $6f $f8
	ld [hl], a                                       ; $788c: $77
	call c, $ee3f                                    ; $788d: $dc $3f $ee
	rst $38                                          ; $7890: $ff
	ldh a, [rIE]                                     ; $7891: $f0 $ff
	add d                                            ; $7893: $82
	ei                                               ; $7894: $fb
	pop hl                                           ; $7895: $e1
	pop bc                                           ; $7896: $c1
	ld bc, $0083                                     ; $7897: $01 $83 $00
	add hl, bc                                       ; $789a: $09
	dec c                                            ; $789b: $0d
	add hl, de                                       ; $789c: $19
	db $10                                           ; $789d: $10
	inc bc                                           ; $789e: $03
	cp l                                             ; $789f: $bd
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	pop bc                                           ; $78a2: $c1
	rst $38                                          ; $78a3: $ff
	sbc [hl]                                         ; $78a4: $9e
	ldh a, [$3f]                                     ; $78a5: $f0 $3f
	ldh [$99], a                                     ; $78a7: $e0 $99
	add hl, de                                       ; $78a9: $19
	dec c                                            ; $78aa: $0d
	rra                                              ; $78ab: $1f
	rra                                              ; $78ac: $1f
	rrca                                             ; $78ad: $0f
	ld c, $17                                        ; $78ae: $0e $17
	ldh [$9e], a                                     ; $78b0: $e0 $9e
	ccf                                              ; $78b2: $3f
	sbc $1f                                          ; $78b3: $de $1f
	sbc h                                            ; $78b5: $9c
	ld e, $0e                                        ; $78b6: $1e $0e
	ld c, $1b                                        ; $78b8: $0e $1b
	ldh [$7b], a                                     ; $78ba: $e0 $7b
	sbc $7f                                          ; $78bc: $de $7f
	rst SubAFromDE                                          ; $78be: $df
	sbc [hl]                                         ; $78bf: $9e
	inc c                                            ; $78c0: $0c

jr_066_78c1:
	ld [hl], a                                       ; $78c1: $77
	ldh [$bd], a                                     ; $78c2: $e0 $bd
	ld [bc], a                                       ; $78c4: $02
	db $e3                                           ; $78c5: $e3
	rst SubAFromDE                                          ; $78c6: $df
	inc bc                                           ; $78c7: $03
	add a                                            ; $78c8: $87
	inc b                                            ; $78c9: $04
	rlca                                             ; $78ca: $07
	dec b                                            ; $78cb: $05
	ld b, $0b                                        ; $78cc: $06 $0b
	inc c                                            ; $78ce: $0c
	dec bc                                           ; $78cf: $0b
	inc c                                            ; $78d0: $0c
	rrca                                             ; $78d1: $0f
	ld [$080f], sp                                   ; $78d2: $08 $0f $08
	rla                                              ; $78d5: $17
	jr jr_066_78e8                                   ; $78d6: $18 $10

	rra                                              ; $78d8: $1f
	rla                                              ; $78d9: $17
	jr @+$21                                         ; $78da: $18 $1f

	db $10                                           ; $78dc: $10
	rra                                              ; $78dd: $1f
	db $10                                           ; $78de: $10
	cpl                                              ; $78df: $2f
	jr nc, @+$69                                     ; $78e0: $30 $67

	cp $e9                                           ; $78e2: $fe $e9
	rst SubAFromDE                                          ; $78e4: $df
	ld bc, $03df                                     ; $78e5: $01 $df $03

jr_066_78e8:
	add b                                            ; $78e8: $80
	ld [bc], a                                       ; $78e9: $02
	inc bc                                           ; $78ea: $03
	dec b                                            ; $78eb: $05
	rlca                                             ; $78ec: $07
	dec bc                                           ; $78ed: $0b
	rrca                                             ; $78ee: $0f
	ld e, $1f                                        ; $78ef: $1e $1f
	dec b                                            ; $78f1: $05
	ld b, $0a                                        ; $78f2: $06 $0a
	dec c                                            ; $78f4: $0d
	ld a, [bc]                                       ; $78f5: $0a
	rrca                                             ; $78f6: $0f
	inc d                                            ; $78f7: $14
	rra                                              ; $78f8: $1f
	dec d                                            ; $78f9: $15
	ld e, $2d                                        ; $78fa: $1e $2d
	ld a, $35                                        ; $78fc: $3e $35
	ld [hl], $35                                     ; $78fe: $36 $35
	ld [hl], $25                                     ; $7900: $36 $25
	ld h, $25                                        ; $7902: $26 $25
	ld h, $05                                        ; $7904: $26 $05
	ld b, $04                                        ; $7906: $06 $04
	sbc [hl]                                         ; $7908: $9e
	rlca                                             ; $7909: $07
	ld l, a                                          ; $790a: $6f
	cp $7f                                           ; $790b: $fe $7f
	jp c, $fe7f                                      ; $790d: $da $7f $fe

	db $dd                                           ; $7910: $dd
	ld bc, $d3e0                                     ; $7911: $01 $e0 $d3
	rst SubAFromDE                                          ; $7914: $df
	inc bc                                           ; $7915: $03
	sbc c                                            ; $7916: $99
	dec e                                            ; $7917: $1d
	ld e, $ef                                        ; $7918: $1e $ef
	ldh a, [$3f]                                     ; $791a: $f0 $3f
	ret nz                                           ; $791c: $c0

	db $fc                                           ; $791d: $fc
	add l                                            ; $791e: $85
	ld c, b                                          ; $791f: $48
	inc h                                            ; $7920: $24
	ld c, b                                          ; $7921: $48
	ld b, h                                          ; $7922: $44
	jr z, jr_066_7935                                ; $7923: $28 $10

	inc h                                            ; $7925: $24
	ld [bc], a                                       ; $7926: $02
	inc d                                            ; $7927: $14
	ld a, [bc]                                       ; $7928: $0a
	sub h                                            ; $7929: $94
	sub h                                            ; $792a: $94
	ld l, d                                          ; $792b: $6a
	dec h                                            ; $792c: $25
	ld a, [de]                                       ; $792d: $1a
	inc de                                           ; $792e: $13
	ld c, $0a                                        ; $792f: $0e $0a
	rlca                                             ; $7931: $07
	dec c                                            ; $7932: $0d
	inc bc                                           ; $7933: $03
	rlca                                             ; $7934: $07

jr_066_7935:
	ld bc, $010e                                     ; $7935: $01 $0e $01
	rra                                              ; $7938: $1f
	ldh a, [$df]                                     ; $7939: $f0 $df
	rlca                                             ; $793b: $07
	add c                                            ; $793c: $81
	dec de                                           ; $793d: $1b
	inc e                                            ; $793e: $1c
	ld l, l                                          ; $793f: $6d
	ld [hl], e                                       ; $7940: $73
	or [hl]                                          ; $7941: $b6
	rst GetHLinHL                                          ; $7942: $cf
	ld e, e                                          ; $7943: $5b
	cp h                                             ; $7944: $bc
	ld l, a                                          ; $7945: $6f
	di                                               ; $7946: $f3
	call c, $a5ef                                    ; $7947: $dc $ef $a5
	db $db                                           ; $794a: $db
	sub a                                            ; $794b: $97
	ld h, $2a                                        ; $794c: $26 $2a
	ld c, h                                          ; $794e: $4c
	ld d, h                                          ; $794f: $54
	sbc c                                            ; $7950: $99
	cp e                                             ; $7951: $bb
	ld de, $3322                                     ; $7952: $11 $22 $33
	ld [hl], a                                       ; $7955: $77
	ld [hl+], a                                      ; $7956: $22
	ld h, h                                          ; $7957: $64
	ld h, $c6                                        ; $7958: $26 $c6
	ld h, h                                          ; $795a: $64
	ldh [$c1], a                                     ; $795b: $e0 $c1
	add b                                            ; $795d: $80
	dec l                                            ; $795e: $2d
	scf                                              ; $795f: $37
	ld d, $1f                                        ; $7960: $16 $1f
	dec e                                            ; $7962: $1d
	ld e, $7b                                        ; $7963: $1e $7b
	ld a, h                                          ; $7965: $7c
	adc a                                            ; $7966: $8f
	ld hl, sp-$29                                    ; $7967: $f8 $d7
	jr c, @+$01                                      ; $7969: $38 $ff

	db $10                                           ; $796b: $10
	rst $38                                          ; $796c: $ff
	inc de                                           ; $796d: $13
	ld [hl+], a                                      ; $796e: $22
	ld [hl-], a                                      ; $796f: $32
	ld l, [hl]                                       ; $7970: $6e
	ld l, $2a                                        ; $7971: $2e $2a
	ld l, d                                          ; $7973: $6a
	jp z, Jump_066_4a6a                              ; $7974: $ca $6a $4a

	jp z, $ca8e                                      ; $7977: $ca $8e $ca

	cp [hl]                                          ; $797a: $be
	jp z, $8efe                                      ; $797b: $ca $fe $8e

	ld a, [$0a7e]                                    ; $797e: $fa $7e $0a
	ld a, $0a                                        ; $7981: $3e $0a
	ld a, [hl+]                                      ; $7983: $2a
	rra                                              ; $7984: $1f
	call c, $ad3f                                    ; $7985: $dc $3f $ad
	ld l, a                                          ; $7988: $6f
	ld l, l                                          ; $7989: $6d
	rst GetHLinHL                                          ; $798a: $cf
	db $fd                                           ; $798b: $fd
	xor a                                            ; $798c: $af
	cp l                                             ; $798d: $bd
	rst SubAFromDE                                          ; $798e: $df
	rst FarCall                                          ; $798f: $f7
	rst SubAFromDE                                          ; $7990: $df
	rrca                                             ; $7991: $0f
	ld a, [hl]                                       ; $7992: $7e
	rst FarCall                                          ; $7993: $f7
	rst SubAFromDE                                          ; $7994: $df
	rst $38                                          ; $7995: $ff
	sbc d                                            ; $7996: $9a
	ld a, a                                          ; $7997: $7f
	add b                                            ; $7998: $80
	cp [hl]                                          ; $7999: $be
	ld a, a                                          ; $799a: $7f
	pop bc                                           ; $799b: $c1
	ld a, e                                          ; $799c: $7b
	ld a, [$ff87]                                    ; $799d: $fa $87 $ff
	db $fd                                           ; $79a0: $fd
	ld a, [hl]                                       ; $79a1: $7e
	add c                                            ; $79a2: $81
	rst SubAFromBC                                          ; $79a3: $e7
	nop                                              ; $79a4: $00
	adc l                                            ; $79a5: $8d
	sbc [hl]                                         ; $79a6: $9e
	ld [hl-], a                                      ; $79a7: $32
	ld [hl], c                                       ; $79a8: $71
	ld l, e                                          ; $79a9: $6b
	rst JumpTable                                          ; $79aa: $c7
	sub $8c                                          ; $79ab: $d6 $8c
	xor l                                            ; $79ad: $ad
	jr jr_066_79ca                                   ; $79ae: $18 $1a

	ld sp, $2173                                     ; $79b0: $31 $73 $21
	ld h, a                                          ; $79b3: $67
	ld [bc], a                                       ; $79b4: $02
	ld b, a                                          ; $79b5: $47
	ld [bc], a                                       ; $79b6: $02
	ldh [$c1], a                                     ; $79b7: $e0 $c1
	sub [hl]                                         ; $79b9: $96
	ld c, $98                                        ; $79ba: $0e $98
	ld a, [de]                                       ; $79bc: $1a
	db $10                                           ; $79bd: $10
	ld a, [de]                                       ; $79be: $1a
	jr nc, jr_066_79dc                               ; $79bf: $30 $1b

	jr nc, jr_066_79e0                               ; $79c1: $30 $1d

	ld a, e                                          ; $79c3: $7b
	cp $9b                                           ; $79c4: $fe $9b
	ld c, $18                                        ; $79c6: $0e $18
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff

jr_066_79ca:
	sbc $20                                          ; $79ca: $de $20
	adc a                                            ; $79cc: $8f
	ld l, a                                          ; $79cd: $6f
	ld hl, $4168                                     ; $79ce: $21 $68 $41
	ld c, b                                          ; $79d1: $48
	ld b, b                                          ; $79d2: $40
	ld e, b                                          ; $79d3: $58
	ld b, b                                          ; $79d4: $40
	ret nc                                           ; $79d5: $d0

	ld b, b                                          ; $79d6: $40
	ret nc                                           ; $79d7: $d0

	add c                                            ; $79d8: $81
	sub b                                            ; $79d9: $90
	add b                                            ; $79da: $80
	and b                                            ; $79db: $a0

jr_066_79dc:
	adc [hl]                                         ; $79dc: $8e
	ld [hl], e                                       ; $79dd: $73
	cp $9d                                           ; $79de: $fe $9d

jr_066_79e0:
	nop                                              ; $79e0: $00
	ld b, b                                          ; $79e1: $40
	ld [hl], e                                       ; $79e2: $73
	cp $9e                                           ; $79e3: $fe $9e
	ld b, c                                          ; $79e5: $41
	rst FarCall                                          ; $79e6: $f7
	rst SubAFromDE                                          ; $79e7: $df
	sbc h                                            ; $79e8: $9c
	add b                                            ; $79e9: $80
	ld a, d                                          ; $79ea: $7a
	xor $dd                                          ; $79eb: $ee $dd
	scf                                              ; $79ed: $37
	rra                                              ; $79ee: $1f
	call $2dc7                                       ; $79ef: $cd $c7 $2d
	xor $d6                                          ; $79f2: $ee $d6
	or l                                             ; $79f4: $b5
	ld a, [hl]                                       ; $79f5: $7e
	ld l, l                                          ; $79f6: $6d
	sbc [hl]                                         ; $79f7: $9e
	call nc, $b3ef                                   ; $79f8: $d4 $ef $b3
	ld a, a                                          ; $79fb: $7f
	rst AddAOntoHL                                          ; $79fc: $ef
	rra                                              ; $79fd: $1f
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	ld b, $9f                                        ; $7a00: $06 $9f
	dec sp                                           ; $7a02: $3b
	ld a, a                                          ; $7a03: $7f
	ld b, d                                          ; $7a04: $42
	rst SubAFromBC                                          ; $7a05: $e7
	adc h                                            ; $7a06: $8c
	rst SubAFromDE                                          ; $7a07: $df
	inc de                                           ; $7a08: $13
	sbc d                                            ; $7a09: $9a
	or a                                             ; $7a0a: $b7
	daa                                              ; $7a0b: $27
	ld l, l                                          ; $7a0c: $6d
	ld c, a                                          ; $7a0d: $4f
	ld l, b                                          ; $7a0e: $68
	ldh [$c1], a                                     ; $7a0f: $e0 $c1
	add b                                            ; $7a11: $80
	ccf                                              ; $7a12: $3f
	nop                                              ; $7a13: $00
	rra                                              ; $7a14: $1f
	nop                                              ; $7a15: $00
	rlca                                             ; $7a16: $07
	nop                                              ; $7a17: $00
	inc bc                                           ; $7a18: $03
	nop                                              ; $7a19: $00
	ld bc, $8100                                     ; $7a1a: $01 $00 $81

jr_066_7a1d:
	nop                                              ; $7a1d: $00
	jp nz, $fe00                                     ; $7a1e: $c2 $00 $fe

	cp $03                                           ; $7a21: $fe $03
	inc bc                                           ; $7a23: $03
	nop                                              ; $7a24: $00
	db $fc                                           ; $7a25: $fc
	ret nz                                           ; $7a26: $c0

	rlca                                             ; $7a27: $07
	ret nz                                           ; $7a28: $c0

	nop                                              ; $7a29: $00
	add b                                            ; $7a2a: $80
	inc bc                                           ; $7a2b: $03
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	add b                                            ; $7a2e: $80
	nop                                              ; $7a2f: $00
	call $018e                                       ; $7a30: $cd $8e $01
	sbc [hl]                                         ; $7a33: $9e
	inc bc                                           ; $7a34: $03
	inc e                                            ; $7a35: $1c
	ld b, $0c                                        ; $7a36: $06 $0c
	inc b                                            ; $7a38: $04
	inc d                                            ; $7a39: $14
	ld b, $22                                        ; $7a3a: $06 $22
	ld [bc], a                                       ; $7a3c: $02
	inc a                                            ; $7a3d: $3c
	ld a, $40                                        ; $7a3e: $3e $40
	ldh [$80], a                                     ; $7a40: $e0 $80
	add b                                            ; $7a42: $80
	push af                                          ; $7a43: $f5
	rst SubAFromDE                                          ; $7a44: $df
	ld e, $80                                        ; $7a45: $1e $80
	ld h, h                                          ; $7a47: $64
	ld a, h                                          ; $7a48: $7c
	cp a                                             ; $7a49: $bf
	adc a                                            ; $7a4a: $8f
	ld a, c                                          ; $7a4b: $79
	jr nc, jr_066_7a1d                               ; $7a4c: $30 $cf

	ld l, a                                          ; $7a4e: $6f
	cp b                                             ; $7a4f: $b8
	ld [hl], b                                       ; $7a50: $70
	ld h, b                                          ; $7a51: $60
	ret nz                                           ; $7a52: $c0

	rst SubAFromDE                                          ; $7a53: $df
	cp a                                             ; $7a54: $bf
	ld l, a                                          ; $7a55: $6f
	ldh a, [$b8]                                     ; $7a56: $f0 $b8
	ret nz                                           ; $7a58: $c0

	ld a, a                                          ; $7a59: $7f
	cp a                                             ; $7a5a: $bf
	sbc $e1                                          ; $7a5b: $de $e1
	ld a, a                                          ; $7a5d: $7f
	add b                                            ; $7a5e: $80
	cp $39                                           ; $7a5f: $fe $39
	ld c, l                                          ; $7a61: $4d
	add $83                                          ; $7a62: $c6 $83
	ldh a, [c]                                       ; $7a64: $f2
	ld b, d                                          ; $7a65: $42
	sbc h                                            ; $7a66: $9c
	dec hl                                           ; $7a67: $2b
	add c                                            ; $7a68: $81
	sub l                                            ; $7a69: $95
	ldh [$c1], a                                     ; $7a6a: $e0 $c1
	adc l                                            ; $7a6c: $8d
	ldh [$35], a                                     ; $7a6d: $e0 $35
	ldh [$31], a                                     ; $7a6f: $e0 $31
	and b                                            ; $7a71: $a0
	ld sp, $35a0                                     ; $7a72: $31 $a0 $35
	ld h, l                                          ; $7a75: $65
	dec a                                            ; $7a76: $3d
	ld [hl], l                                       ; $7a77: $75
	dec e                                            ; $7a78: $1d
	push af                                          ; $7a79: $f5
	rra                                              ; $7a7a: $1f
	db $fd                                           ; $7a7b: $fd
	rrca                                             ; $7a7c: $0f
	rst $38                                          ; $7a7d: $ff
	rst $38                                          ; $7a7e: $ff
	ld a, c                                          ; $7a7f: $79
	ld b, [hl]                                       ; $7a80: $46
	sbc [hl]                                         ; $7a81: $9e
	cp $7b                                           ; $7a82: $fe $7b
	ld c, a                                          ; $7a84: $4f
	adc b                                            ; $7a85: $88
	ld hl, sp+$00                                    ; $7a86: $f8 $00
	rrca                                             ; $7a88: $0f
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	ret nz                                           ; $7a8b: $c0

	ret nz                                           ; $7a8c: $c0

	jr c, jr_066_7aef                                ; $7a8d: $38 $60

	dec d                                            ; $7a8f: $15
	ld sp, $1312                                     ; $7a90: $31 $12 $13

jr_066_7a93:
	dec d                                            ; $7a93: $15
	ld [hl], $28                                     ; $7a94: $36 $28
	inc l                                            ; $7a96: $2c
	inc e                                            ; $7a97: $1c
	inc a                                            ; $7a98: $3c
	ld [hl+], a                                      ; $7a99: $22
	ld h, a                                          ; $7a9a: $67
	ld b, c                                          ; $7a9b: $41
	pop bc                                           ; $7a9c: $c1
	pop af                                           ; $7a9d: $f1
	rst SubAFromDE                                          ; $7a9e: $df
	ld hl, sp-$7f                                    ; $7a9f: $f8 $81
	jr nc, jr_066_7a93                               ; $7aa1: $30 $f0

	ret nz                                           ; $7aa3: $c0

	ret nz                                           ; $7aa4: $c0

	ld [hl], b                                       ; $7aa5: $70
	ldh a, [$cc]                                     ; $7aa6: $f0 $cc
	inc a                                            ; $7aa8: $3c
	or d                                             ; $7aa9: $b2
	adc $6d                                          ; $7aaa: $ce $6d
	di                                               ; $7aac: $f3
	sbc d                                            ; $7aad: $9a
	ld a, l                                          ; $7aae: $7d
	sbc [hl]                                         ; $7aaf: $9e
	inc b                                            ; $7ab0: $04
	rst SubAFromBC                                          ; $7ab1: $e7
	jp nz, $f12b                                     ; $7ab2: $c2 $2b $f1

	call nc, Call_066_6b39                           ; $7ab5: $d4 $39 $6b
	sbc h                                            ; $7ab8: $9c
	push af                                          ; $7ab9: $f5
	ld c, [hl]                                       ; $7aba: $4e
	cp d                                             ; $7abb: $ba
	ld h, a                                          ; $7abc: $67
	xor $33                                          ; $7abd: $ee $33
	ldh [$c1], a                                     ; $7abf: $e0 $c1
	adc [hl]                                         ; $7ac1: $8e
	ld [$bcbe], a                                    ; $7ac2: $ea $be $bc
	db $fc                                           ; $7ac5: $fc
	and $fe                                          ; $7ac6: $e6 $fe
	jp hl                                            ; $7ac8: $e9


	or a                                             ; $7ac9: $b7
	rst SubAFromDE                                          ; $7aca: $df
	or b                                             ; $7acb: $b0
	ld [hl], a                                       ; $7acc: $77
	sbc b                                            ; $7acd: $98
	ld l, e                                          ; $7ace: $6b
	sbc h                                            ; $7acf: $9c
	ld a, l                                          ; $7ad0: $7d
	adc [hl]                                         ; $7ad1: $8e
	inc b                                            ; $7ad2: $04
	sbc $ff                                          ; $7ad3: $de $ff
	halt                                             ; $7ad5: $76
	cp h                                             ; $7ad6: $bc

jr_066_7ad7:
	ld a, d                                          ; $7ad7: $7a
	xor e                                            ; $7ad8: $ab
	sub [hl]                                         ; $7ad9: $96
	ldh a, [rP1]                                     ; $7ada: $f0 $00
	nop                                              ; $7adc: $00
	inc e                                            ; $7add: $1c
	nop                                              ; $7ade: $00
	ldh a, [$f0]                                     ; $7adf: $f0 $f0
	inc c                                            ; $7ae1: $0c
	db $fc                                           ; $7ae2: $fc
	db $fd                                           ; $7ae3: $fd
	sub a                                            ; $7ae4: $97
	add b                                            ; $7ae5: $80
	ld bc, $0180                                     ; $7ae6: $01 $80 $01
	ld b, b                                          ; $7ae9: $40
	ld bc, $8141                                     ; $7aea: $01 $41 $81
	db $e3                                           ; $7aed: $e3
	rst SubAFromDE                                          ; $7aee: $df

jr_066_7aef:
	add b                                            ; $7aef: $80
	sub h                                            ; $7af0: $94
	ld b, b                                          ; $7af1: $40
	ret nz                                           ; $7af2: $c0

	ld b, b                                          ; $7af3: $40
	ret nz                                           ; $7af4: $c0

	jr nz, jr_066_7ad7                               ; $7af5: $20 $e0

	and b                                            ; $7af7: $a0
	ldh [hDisp1_SCY], a                                     ; $7af8: $e0 $90
	ldh a, [$50]                                     ; $7afa: $f0 $50
	ld a, e                                          ; $7afc: $7b
	cp $9d                                           ; $7afd: $fe $9d
	jr z, @-$06                                      ; $7aff: $28 $f8

	ld [hl], a                                       ; $7b01: $77
	cp $9e                                           ; $7b02: $fe $9e
	sbc b                                            ; $7b04: $98
	ld [hl], e                                       ; $7b05: $73
	cp $9c                                           ; $7b06: $fe $9c
	adc b                                            ; $7b08: $88
	ld hl, sp+$48                                    ; $7b09: $f8 $48
	ld [hl], e                                       ; $7b0b: $73
	cp $9e                                           ; $7b0c: $fe $9e
	ret z                                            ; $7b0e: $c8

	ld l, e                                          ; $7b0f: $6b
	ld hl, sp+$77                                    ; $7b10: $f8 $77
	cp $77                                           ; $7b12: $fe $77
	call c, $d67f                                    ; $7b14: $dc $7f $d6
	ld a, a                                          ; $7b17: $7f
	cp $7f                                           ; $7b18: $fe $7f
	ret nc                                           ; $7b1a: $d0

	ld a, e                                          ; $7b1b: $7b
	call $a09c                                       ; $7b1c: $cd $9c $a0
	ld h, b                                          ; $7b1f: $60
	and b                                            ; $7b20: $a0
	ld a, e                                          ; $7b21: $7b
	jp $fe7b                                         ; $7b22: $c3 $7b $fe


	db $dd                                           ; $7b25: $dd
	add b                                            ; $7b26: $80
	di                                               ; $7b27: $f3
	rst SubAFromDE                                          ; $7b28: $df
	ret nz                                           ; $7b29: $c0

	add b                                            ; $7b2a: $80
	ld a, $fe                                        ; $7b2b: $3e $fe
	pop af                                           ; $7b2d: $f1
	rrca                                             ; $7b2e: $0f
	rst $38                                          ; $7b2f: $ff
	nop                                              ; $7b30: $00
	rst $38                                          ; $7b31: $ff
	ld [bc], a                                       ; $7b32: $02
	db $fd                                           ; $7b33: $fd
	ld b, $77                                        ; $7b34: $06 $77
	adc h                                            ; $7b36: $8c
	ei                                               ; $7b37: $fb
	db $fc                                           ; $7b38: $fc
	rst $38                                          ; $7b39: $ff
	ld [$c93e], sp                                   ; $7b3a: $08 $3e $c9
	cp a                                             ; $7b3d: $bf
	ld c, c                                          ; $7b3e: $49
	or l                                             ; $7b3f: $b5
	ld e, e                                          ; $7b40: $5b
	or [hl]                                          ; $7b41: $b6
	ld e, e                                          ; $7b42: $5b
	inc sp                                           ; $7b43: $33
	sbc $75                                          ; $7b44: $de $75
	sbc [hl]                                         ; $7b46: $9e
	ld h, a                                          ; $7b47: $67
	cp h                                             ; $7b48: $bc
	ld l, d                                          ; $7b49: $6a
	sub [hl]                                         ; $7b4a: $96
	cp l                                             ; $7b4b: $bd
	xor a                                            ; $7b4c: $af
	ld a, c                                          ; $7b4d: $79
	db $ed                                           ; $7b4e: $ed
	ld a, e                                          ; $7b4f: $7b
	or $bb                                           ; $7b50: $f6 $bb
	rst SubAFromHL                                          ; $7b52: $d7
	ld a, $17                                        ; $7b53: $3e $17
	ld h, h                                          ; $7b55: $64
	add b                                            ; $7b56: $80
	ld h, b                                          ; $7b57: $60
	ldh [hDisp1_SCY], a                                     ; $7b58: $e0 $90
	ld [hl], b                                       ; $7b5a: $70
	add sp, $18                                      ; $7b5b: $e8 $18
	db $f4                                           ; $7b5d: $f4
	inc c                                            ; $7b5e: $0c
	cp h                                             ; $7b5f: $bc
	ld b, h                                          ; $7b60: $44
	ld a, d                                          ; $7b61: $7a
	add $b6                                          ; $7b62: $c6 $b6
	adc $69                                          ; $7b64: $ce $69
	sbc a                                            ; $7b66: $9f
	push de                                          ; $7b67: $d5
	dec sp                                           ; $7b68: $3b
	xor l                                            ; $7b69: $ad
	ld [hl], e                                       ; $7b6a: $73
	db $dd                                           ; $7b6b: $dd
	ld h, e                                          ; $7b6c: $63
	ld a, l                                          ; $7b6d: $7d
	jp $c7b9                                         ; $7b6e: $c3 $b9 $c7


	ld hl, sp-$79                                    ; $7b71: $f8 $87
	ld [hl], d                                       ; $7b73: $72
	adc l                                            ; $7b74: $8d
	xor $9a                                          ; $7b75: $ee $9a
	add hl, de                                       ; $7b77: $19
	ld a, $f1                                        ; $7b78: $3e $f1
	sbc $e1                                          ; $7b7a: $de $e1
	daa                                              ; $7b7c: $27
	call nz, $80d9                                   ; $7b7d: $c4 $d9 $80
	jr z, jr_066_7b82                                ; $7b80: $28 $00

jr_066_7b82:
	sbc l                                            ; $7b82: $9d
	rst $38                                          ; $7b83: $ff
	xor $de                                          ; $7b84: $ee $de
	rst $38                                          ; $7b86: $ff
	adc [hl]                                         ; $7b87: $8e
	xor $11                                          ; $7b88: $ee $11
	rst $38                                          ; $7b8a: $ff
	ld a, [hl+]                                      ; $7b8b: $2a
	sbc c                                            ; $7b8c: $99
	rst $38                                          ; $7b8d: $ff
	ld de, $2aa2                                     ; $7b8e: $11 $a2 $2a
	sbc c                                            ; $7b91: $99
	add b                                            ; $7b92: $80
	nop                                              ; $7b93: $00
	and d                                            ; $7b94: $a2
	ld [$b399], sp                                   ; $7b95: $08 $99 $b3
	nop                                              ; $7b98: $00
	ld [hl], e                                       ; $7b99: $73
	or $7b                                           ; $7b9a: $f6 $7b
	db $ec                                           ; $7b9c: $ec
	sub l                                            ; $7b9d: $95
	call z, $ff00                                    ; $7b9e: $cc $00 $ff
	rst $38                                          ; $7ba1: $ff
	call z, $11dd                                    ; $7ba2: $cc $dd $11
	db $dd                                           ; $7ba5: $dd
	db $dd                                           ; $7ba6: $dd
	rst $38                                          ; $7ba7: $ff
	xor l                                            ; $7ba8: $ad
	ld bc, $ee9c                                     ; $7ba9: $01 $9c $ee
	ld b, h                                          ; $7bac: $44
	call z, $fe7b                                    ; $7bad: $cc $7b $fe
	sbc [hl]                                         ; $7bb0: $9e
	call c, $fe7b                                    ; $7bb1: $dc $7b $fe
	sub h                                            ; $7bb4: $94
	sub $4c                                          ; $7bb5: $d6 $4c
	or $4c                                           ; $7bb7: $f6 $4c
	ld h, l                                          ; $7bb9: $65
	sbc $44                                          ; $7bba: $de $44
	rst $38                                          ; $7bbc: $ff
	ld b, h                                          ; $7bbd: $44
	rst $38                                          ; $7bbe: $ff
	ld [hl+], a                                      ; $7bbf: $22
	ld a, e                                          ; $7bc0: $7b
	cp $86                                           ; $7bc1: $fe $86
	ld de, $91ff                                     ; $7bc3: $11 $ff $91
	rst $38                                          ; $7bc6: $ff
	ld c, b                                          ; $7bc7: $48
	ld a, a                                          ; $7bc8: $7f
	jr z, jr_066_7c0a                                ; $7bc9: $28 $3f

	inc [hl]                                         ; $7bcb: $34
	ccf                                              ; $7bcc: $3f
	ld a, [hl+]                                      ; $7bcd: $2a
	ccf                                              ; $7bce: $3f
	ld b, a                                          ; $7bcf: $47
	ld a, a                                          ; $7bd0: $7f
	ld h, l                                          ; $7bd1: $65
	ld e, a                                          ; $7bd2: $5f
	ld l, l                                          ; $7bd3: $6d
	ld d, a                                          ; $7bd4: $57
	ld l, l                                          ; $7bd5: $6d
	ld d, a                                          ; $7bd6: $57
	ld l, a                                          ; $7bd7: $6f
	ld d, l                                          ; $7bd8: $55
	ld a, a                                          ; $7bd9: $7f
	ld b, l                                          ; $7bda: $45
	ld a, e                                          ; $7bdb: $7b
	ld a, e                                          ; $7bdc: $7b
	cp $8e                                           ; $7bdd: $fe $8e
	ld l, d                                          ; $7bdf: $6a
	ld d, l                                          ; $7be0: $55
	ld l, d                                          ; $7be1: $6a
	ld d, l                                          ; $7be2: $55
	ld l, [hl]                                       ; $7be3: $6e
	ld d, l                                          ; $7be4: $55
	ld c, a                                          ; $7be5: $4f
	ld [hl], l                                       ; $7be6: $75
	dec l                                            ; $7be7: $2d
	scf                                              ; $7be8: $37
	dec l                                            ; $7be9: $2d
	scf                                              ; $7bea: $37

Call_066_7beb:
	ld b, $04                                        ; $7beb: $06 $04
	ld c, $04                                        ; $7bed: $0e $04
	ld c, l                                          ; $7bef: $4d
	ld a, e                                          ; $7bf0: $7b
	cp $97                                           ; $7bf1: $fe $97
	db $ed                                           ; $7bf3: $ed
	inc b                                            ; $7bf4: $04
	xor l                                            ; $7bf5: $ad
	ld b, h                                          ; $7bf6: $44
	halt                                             ; $7bf7: $76
	call $ed56                                       ; $7bf8: $cd $56 $ed
	ld [hl], a                                       ; $7bfb: $77
	ret nz                                           ; $7bfc: $c0

	sbc [hl]                                         ; $7bfd: $9e
	ld b, d                                          ; $7bfe: $42
	ld a, e                                          ; $7bff: $7b
	ret nz                                           ; $7c00: $c0

	sbc [hl]                                         ; $7c01: $9e
	inc hl                                           ; $7c02: $23
	ld [hl], e                                       ; $7c03: $73
	cp [hl]                                          ; $7c04: $be
	add b                                            ; $7c05: $80
	ret z                                            ; $7c06: $c8

	rst $38                                          ; $7c07: $ff
	ld h, h                                          ; $7c08: $64
	rst $38                                          ; $7c09: $ff

jr_066_7c0a:
	ld [hl], $ff                                     ; $7c0a: $36 $ff
	dec sp                                           ; $7c0c: $3b
	rst AddAOntoHL                                          ; $7c0d: $ef
	rst SubAFromDE                                          ; $7c0e: $df
	or $ff                                           ; $7c0f: $f6 $ff
	cp c                                             ; $7c11: $b9
	ret nz                                           ; $7c12: $c0

	add b                                            ; $7c13: $80
	ld h, b                                          ; $7c14: $60
	ret nz                                           ; $7c15: $c0

	ld h, b                                          ; $7c16: $60
	ret nz                                           ; $7c17: $c0

	jr nc, jr_066_7c7a                               ; $7c18: $30 $60

	jr c, @+$72                                      ; $7c1a: $38 $70

	inc l                                            ; $7c1c: $2c
	ld a, b                                          ; $7c1d: $78
	ld h, $7c                                        ; $7c1e: $26 $7c
	cpl                                              ; $7c20: $2f
	ld a, a                                          ; $7c21: $7f
	scf                                              ; $7c22: $37
	db $fd                                           ; $7c23: $fd
	ld b, a                                          ; $7c24: $47
	sub l                                            ; $7c25: $95
	db $ec                                           ; $7c26: $ec
	adc [hl]                                         ; $7c27: $8e
	ret z                                            ; $7c28: $c8

	ld c, [hl]                                       ; $7c29: $4e
	ret c                                            ; $7c2a: $d8

	sbc h                                            ; $7c2b: $9c
	ret nc                                           ; $7c2c: $d0

	sbc h                                            ; $7c2d: $9c
	or b                                             ; $7c2e: $b0
	sbc b                                            ; $7c2f: $98
	ld l, a                                          ; $7c30: $6f
	cp $9e                                           ; $7c31: $fe $9e
	ldh a, [rPCM34]                                  ; $7c33: $f0 $77
	cp $80                                           ; $7c35: $fe $80
	ld e, b                                          ; $7c37: $58
	ldh a, [rBCPS]                                   ; $7c38: $f0 $68
	ld hl, sp+$7c                                    ; $7c3a: $f8 $7c
	db $dd                                           ; $7c3c: $dd
	ld sp, $33e3                                     ; $7c3d: $31 $e3 $33
	ldh [c], a                                       ; $7c40: $e2
	sub a                                            ; $7c41: $97
	ldh a, [$cf]                                     ; $7c42: $f0 $cf
	ld hl, sp-$7f                                    ; $7c44: $f8 $81
	push de                                          ; $7c46: $d5
	ld b, l                                          ; $7c47: $45
	ld d, l                                          ; $7c48: $55
	ld h, a                                          ; $7c49: $67
	ld d, l                                          ; $7c4a: $55
	ld l, a                                          ; $7c4b: $6f
	ld d, l                                          ; $7c4c: $55
	ld l, l                                          ; $7c4d: $6d
	ld d, a                                          ; $7c4e: $57
	ld d, l                                          ; $7c4f: $55
	ld a, a                                          ; $7c50: $7f
	ld d, l                                          ; $7c51: $55
	ld a, a                                          ; $7c52: $7f
	halt                                             ; $7c53: $76
	ld a, a                                          ; $7c54: $7f
	ld a, [hl]                                       ; $7c55: $7e
	adc e                                            ; $7c56: $8b
	ld e, e                                          ; $7c57: $5b
	or a                                             ; $7c58: $b7
	sub c                                            ; $7c59: $91
	nop                                              ; $7c5a: $00
	ld a, a                                          ; $7c5b: $7f
	ld a, a                                          ; $7c5c: $7f
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	add b                                            ; $7c5f: $80
	rst $38                                          ; $7c60: $ff
	ld e, $e7                                        ; $7c61: $1e $e7
	ld h, a                                          ; $7c63: $67
	cp l                                             ; $7c64: $bd
	rst $38                                          ; $7c65: $ff
	dec h                                            ; $7c66: $25
	inc [hl]                                         ; $7c67: $34
	ld a, a                                          ; $7c68: $7f
	jr jr_066_7c7a                                   ; $7c69: $18 $0f

	cp [hl]                                          ; $7c6b: $be
	cp a                                             ; $7c6c: $bf
	ld e, a                                          ; $7c6d: $5f
	rrca                                             ; $7c6e: $0f
	add b                                            ; $7c6f: $80
	ld bc, $010f                                     ; $7c70: $01 $0f $01
	rra                                              ; $7c73: $1f
	inc bc                                           ; $7c74: $03
	ld e, $07                                        ; $7c75: $1e $07
	ld a, [hl-]                                      ; $7c77: $3a
	rrca                                             ; $7c78: $0f
	ld a, [hl-]                                      ; $7c79: $3a

jr_066_7c7a:
	rra                                              ; $7c7a: $1f
	ld [hl], h                                       ; $7c7b: $74
	ld a, $f4                                        ; $7c7c: $3e $f4
	ld a, [hl]                                       ; $7c7e: $7e
	db $f4                                           ; $7c7f: $f4
	sbc $e4                                          ; $7c80: $de $e4
	dec a                                            ; $7c82: $3d
	db $e4                                           ; $7c83: $e4
	dec [hl]                                         ; $7c84: $35
	ld e, l                                          ; $7c85: $5d
	or e                                             ; $7c86: $b3
	ld [hl], a                                       ; $7c87: $77
	sbc c                                            ; $7c88: $99
	xor $59                                          ; $7c89: $ee $59
	ld [$685d], a                                    ; $7c8b: $ea $5d $68
	ccf                                              ; $7c8e: $3f
	adc a                                            ; $7c8f: $8f
	and h                                            ; $7c90: $a4
	ccf                                              ; $7c91: $3f
	call nc, $dc9f                                   ; $7c92: $d4 $9f $dc
	rst AddAOntoHL                                          ; $7c95: $ef
	or d                                             ; $7c96: $b2
	rst $38                                          ; $7c97: $ff
	ld c, a                                          ; $7c98: $4f
	rst $38                                          ; $7c99: $ff
	jp nz, $e2ff                                     ; $7c9a: $c2 $ff $e2

	ld a, a                                          ; $7c9d: $7f
	ldh a, [c]                                       ; $7c9e: $f2
	ccf                                              ; $7c9f: $3f
	ld a, e                                          ; $7ca0: $7b
	cp $80                                           ; $7ca1: $fe $80
	cp a                                             ; $7ca3: $bf
	ldh a, [c]                                       ; $7ca4: $f2
	ccf                                              ; $7ca5: $3f
	jp nc, $d27f                                     ; $7ca6: $d2 $7f $d2

	ld a, a                                          ; $7ca9: $7f
	call nc, $947f                                   ; $7caa: $d4 $7f $94
	rst $38                                          ; $7cad: $ff
	sub h                                            ; $7cae: $94
	rst $38                                          ; $7caf: $ff
	and h                                            ; $7cb0: $a4
	rst $38                                          ; $7cb1: $ff
	dec h                                            ; $7cb2: $25
	rst $38                                          ; $7cb3: $ff
	add hl, hl                                       ; $7cb4: $29
	rst $38                                          ; $7cb5: $ff
	db $db                                           ; $7cb6: $db
	ld l, l                                          ; $7cb7: $6d
	db $db                                           ; $7cb8: $db
	ld l, l                                          ; $7cb9: $6d
	rst SubAFromDE                                          ; $7cba: $df
	ld l, d                                          ; $7cbb: $6a
	ld [hl], a                                       ; $7cbc: $77
	jp c, $d77d                                      ; $7cbd: $da $7d $d7

	cp l                                             ; $7cc0: $bd
	rst SubAFromHL                                          ; $7cc1: $d7
	sbc e                                            ; $7cc2: $9b
	push af                                          ; $7cc3: $f5
	xor a                                            ; $7cc4: $af
	ld a, [$2bae]                                    ; $7cc5: $fa $ae $2b
	ld h, b                                          ; $7cc8: $60
	sbc d                                            ; $7cc9: $9a
	call c, $e330                                    ; $7cca: $dc $30 $e3
	inc sp                                           ; $7ccd: $33
	db $e3                                           ; $7cce: $e3
	inc hl                                           ; $7ccf: $23
	ld h, b                                          ; $7cd0: $60
	rst SubAFromDE                                          ; $7cd1: $df
	ccf                                              ; $7cd2: $3f
	rst SubAFromDE                                          ; $7cd3: $df
	rst $38                                          ; $7cd4: $ff
	sub e                                            ; $7cd5: $93
	ret nz                                           ; $7cd6: $c0

	rst $38                                          ; $7cd7: $ff
	nop                                              ; $7cd8: $00
	rst $38                                          ; $7cd9: $ff
	inc a                                            ; $7cda: $3c
	rst AddAOntoHL                                          ; $7cdb: $ef
	ld l, [hl]                                       ; $7cdc: $6e
	and l                                            ; $7cdd: $a5
	or l                                             ; $7cde: $b5
	ld e, e                                          ; $7cdf: $5b
	inc a                                            ; $7ce0: $3c
	rrca                                             ; $7ce1: $0f
	cp [hl]                                          ; $7ce2: $be
	cp e                                             ; $7ce3: $bb
	ld e, a                                          ; $7ce4: $5f
	rrca                                             ; $7ce5: $0f
	inc bc                                           ; $7ce6: $03
	ld h, b                                          ; $7ce7: $60
	ld b, e                                          ; $7ce8: $43
	ld h, b                                          ; $7ce9: $60
	ld a, e                                          ; $7cea: $7b
	cp $03                                           ; $7ceb: $fe $03
	add b                                            ; $7ced: $80
	dec sp                                           ; $7cee: $3b
	add b                                            ; $7cef: $80
	sbc l                                            ; $7cf0: $9d
	rlca                                             ; $7cf1: $07
	nop                                              ; $7cf2: $00
	ld l, d                                          ; $7cf3: $6a
	sbc $bf                                          ; $7cf4: $de $bf
	rst $38                                          ; $7cf6: $ff
	rst SubAFromBC                                          ; $7cf7: $e7
	ld a, a                                          ; $7cf8: $7f
	db $ed                                           ; $7cf9: $ed
	sbc [hl]                                         ; $7cfa: $9e
	jr c, jr_066_7d00                                ; $7cfb: $38 $03

	add b                                            ; $7cfd: $80
	inc bc                                           ; $7cfe: $03
	add b                                            ; $7cff: $80

jr_066_7d00:
	dec sp                                           ; $7d00: $3b
	add b                                            ; $7d01: $80
	sbc d                                            ; $7d02: $9a
	ldh [$30], a                                     ; $7d03: $e0 $30
	db $e3                                           ; $7d05: $e3
	sub a                                            ; $7d06: $97
	di                                               ; $7d07: $f3
	inc hl                                           ; $7d08: $23
	add b                                            ; $7d09: $80
	rst SubAFromDE                                          ; $7d0a: $df
	rra                                              ; $7d0b: $1f
	rst SubAFromDE                                          ; $7d0c: $df
	rst $38                                          ; $7d0d: $ff
	sbc [hl]                                         ; $7d0e: $9e
	ldh [rPCM34], a                                  ; $7d0f: $e0 $77
	add b                                            ; $7d11: $80
	sbc e                                            ; $7d12: $9b
	rst $38                                          ; $7d13: $ff
	rst JumpTable                                          ; $7d14: $c7
	ld a, a                                          ; $7d15: $7f
	ld a, h                                          ; $7d16: $7c
	inc bc                                           ; $7d17: $03
	add b                                            ; $7d18: $80
	dec de                                           ; $7d19: $1b
	add b                                            ; $7d1a: $80
	adc l                                            ; $7d1b: $8d
	rst $38                                          ; $7d1c: $ff
	cp h                                             ; $7d1d: $bc
	ld d, d                                          ; $7d1e: $52
	ret nz                                           ; $7d1f: $c0

	ld hl, sp-$20                                    ; $7d20: $f8 $e0
	inc e                                            ; $7d22: $1c
	nop                                              ; $7d23: $00
	ld a, $10                                        ; $7d24: $3e $10
	inc e                                            ; $7d26: $1c
	stop                                             ; $7d27: $10 $00
	nop                                              ; $7d29: $00
	ld [hl+], a                                      ; $7d2a: $22
	ld [hl], $08                                     ; $7d2b: $36 $08
	inc e                                            ; $7d2d: $1c
	ei                                               ; $7d2e: $fb
	sub a                                            ; $7d2f: $97
	add b                                            ; $7d30: $80
	nop                                              ; $7d31: $00
	and d                                            ; $7d32: $a2
	pop bc                                           ; $7d33: $c1
	db $eb                                           ; $7d34: $eb
	rst FarCall                                          ; $7d35: $f7
	ld e, l                                          ; $7d36: $5d
	ld a, $47                                        ; $7d37: $3e $47
	ldh [$9b], a                                     ; $7d39: $e0 $9b
	ld a, $1c                                        ; $7d3b: $3e $1c
	inc d                                            ; $7d3d: $14
	ld [$e01f], sp                                   ; $7d3e: $08 $1f $e0
	sbc c                                            ; $7d41: $99
	ld h, e                                          ; $7d42: $63
	ld [hl], $7e                                     ; $7d43: $36 $7e
	ld a, $3e                                        ; $7d45: $3e $3e
	inc e                                            ; $7d47: $1c
	ld [hl], a                                       ; $7d48: $77
	cp l                                             ; $7d49: $bd

jr_066_7d4a:
	daa                                              ; $7d4a: $27
	ldh [$9b], a                                     ; $7d4b: $e0 $9b
	ld a, a                                          ; $7d4d: $7f
	ld a, $1c                                        ; $7d4e: $3e $1c
	ld a, $77                                        ; $7d50: $3e $77
	sbc h                                            ; $7d52: $9c
	ld h, a                                          ; $7d53: $67
	ldh [$ad], a                                     ; $7d54: $e0 $ad
	add c                                            ; $7d56: $81
	sub a                                            ; $7d57: $97
	xor $cc                                          ; $7d58: $ee $cc
	call z, $dcdc                                    ; $7d5a: $cc $dc $dc
	sub $f6                                          ; $7d5d: $d6 $f6
	ld h, l                                          ; $7d5f: $65
	call c, $df44                                    ; $7d60: $dc $44 $df
	ld c, h                                          ; $7d63: $4c
	sub [hl]                                         ; $7d64: $96
	sbc $44                                          ; $7d65: $de $44
	ld b, h                                          ; $7d67: $44
	ld [hl+], a                                      ; $7d68: $22
	ld [hl+], a                                      ; $7d69: $22
	ld de, $4891                                     ; $7d6a: $11 $91 $48
	jr z, jr_066_7d4a                                ; $7d6d: $28 $db

	rst $38                                          ; $7d6f: $ff
	add e                                            ; $7d70: $83
	ld a, a                                          ; $7d71: $7f
	ccf                                              ; $7d72: $3f
	inc [hl]                                         ; $7d73: $34
	ld a, [hl+]                                      ; $7d74: $2a
	ld b, a                                          ; $7d75: $47
	ld h, l                                          ; $7d76: $65
	ld l, l                                          ; $7d77: $6d
	ld l, l                                          ; $7d78: $6d
	ld l, a                                          ; $7d79: $6f
	ld a, a                                          ; $7d7a: $7f
	ccf                                              ; $7d7b: $3f
	ccf                                              ; $7d7c: $3f
	ld a, a                                          ; $7d7d: $7f
	ld e, a                                          ; $7d7e: $5f
	ld d, a                                          ; $7d7f: $57
	ld d, a                                          ; $7d80: $57
	ld d, l                                          ; $7d81: $55
	ld b, l                                          ; $7d82: $45
	ld a, e                                          ; $7d83: $7b
	ld a, e                                          ; $7d84: $7b
	ld l, d                                          ; $7d85: $6a
	ld l, d                                          ; $7d86: $6a
	ld l, [hl]                                       ; $7d87: $6e
	ld c, a                                          ; $7d88: $4f
	dec l                                            ; $7d89: $2d
	dec l                                            ; $7d8a: $2d
	ld b, l                                          ; $7d8b: $45
	ld b, l                                          ; $7d8c: $45
	sbc $55                                          ; $7d8d: $de $55
	sub h                                            ; $7d8f: $94
	ld [hl], l                                       ; $7d90: $75
	scf                                              ; $7d91: $37
	scf                                              ; $7d92: $37
	ld b, $0e                                        ; $7d93: $06 $0e
	ld c, l                                          ; $7d95: $4d
	ld c, l                                          ; $7d96: $4d
	db $ed                                           ; $7d97: $ed
	xor l                                            ; $7d98: $ad
	halt                                             ; $7d99: $76
	ld d, [hl]                                       ; $7d9a: $56
	call c, $9404                                    ; $7d9b: $dc $04 $94
	ld b, h                                          ; $7d9e: $44
	call Call_066_44ed                               ; $7d9f: $cd $ed $44
	ld b, h                                          ; $7da2: $44
	ld b, d                                          ; $7da3: $42
	ld [hl+], a                                      ; $7da4: $22
	inc hl                                           ; $7da5: $23
	ld de, $c891                                     ; $7da6: $11 $91 $c8
	reti                                             ; $7da9: $d9


	rst $38                                          ; $7daa: $ff
	add b                                            ; $7dab: $80
	ld h, h                                          ; $7dac: $64
	ld [hl], $3b                                     ; $7dad: $36 $3b
	rst SubAFromDE                                          ; $7daf: $df
	rst $38                                          ; $7db0: $ff
	ret nz                                           ; $7db1: $c0

	ld h, b                                          ; $7db2: $60
	ld h, b                                          ; $7db3: $60
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst AddAOntoHL                                          ; $7db6: $ef
	or $b9                                           ; $7db7: $f6 $b9
	add b                                            ; $7db9: $80
	ret nz                                           ; $7dba: $c0

	ret nz                                           ; $7dbb: $c0

	jr nc, jr_066_7df6                               ; $7dbc: $30 $38

	inc l                                            ; $7dbe: $2c
	ld h, $2f                                        ; $7dbf: $26 $2f
	scf                                              ; $7dc1: $37
	ld b, a                                          ; $7dc2: $47
	adc [hl]                                         ; $7dc3: $8e
	ld h, b                                          ; $7dc4: $60
	ld [hl], b                                       ; $7dc5: $70
	ld a, b                                          ; $7dc6: $78
	ld a, h                                          ; $7dc7: $7c
	ld a, a                                          ; $7dc8: $7f
	db $fd                                           ; $7dc9: $fd
	db $ec                                           ; $7dca: $ec
	sbc e                                            ; $7dcb: $9b
	ret z                                            ; $7dcc: $c8

	ld c, [hl]                                       ; $7dcd: $4e
	sbc h                                            ; $7dce: $9c
	sbc h                                            ; $7dcf: $9c
	call c, $9d98                                    ; $7dd0: $dc $98 $9d
	ret c                                            ; $7dd3: $d8

	ret nc                                           ; $7dd4: $d0

	db $dd                                           ; $7dd5: $dd
	or b                                             ; $7dd6: $b0
	rst SubAFromDE                                          ; $7dd7: $df
	ldh a, [hDisp0_OBP0]                                     ; $7dd8: $f0 $86
	sbc b                                            ; $7dda: $98
	ld e, b                                          ; $7ddb: $58
	ld l, b                                          ; $7ddc: $68
	ld a, h                                          ; $7ddd: $7c
	ld sp, $9733                                     ; $7dde: $31 $33 $97
	rst GetHLinHL                                          ; $7de1: $cf
	ldh a, [$f0]                                     ; $7de2: $f0 $f0
	ld hl, sp-$24                                    ; $7de4: $f8 $dc
	pop hl                                           ; $7de6: $e1
	ldh [c], a                                       ; $7de7: $e2
	ldh a, [$f8]                                     ; $7de8: $f0 $f8
	add c                                            ; $7dea: $81
	ld b, l                                          ; $7deb: $45
	ld h, a                                          ; $7dec: $67
	ld l, a                                          ; $7ded: $6f
	ld l, l                                          ; $7dee: $6d
	ld d, l                                          ; $7def: $55
	ld d, l                                          ; $7df0: $55
	halt                                             ; $7df1: $76
	push de                                          ; $7df2: $d5
	sbc $55                                          ; $7df3: $de $55
	sbc [hl]                                         ; $7df5: $9e

jr_066_7df6:
	ld d, a                                          ; $7df6: $57
	sbc $7f                                          ; $7df7: $de $7f
	add l                                            ; $7df9: $85
	ld a, [hl]                                       ; $7dfa: $7e
	or c                                             ; $7dfb: $b1
	rra                                              ; $7dfc: $1f
	ld a, a                                          ; $7dfd: $7f

Jump_066_7dfe:
	rst $38                                          ; $7dfe: $ff
	rst SubAFromBC                                          ; $7dff: $e7
	push hl                                          ; $7e00: $e5
	cp h                                             ; $7e01: $bc
	ld e, e                                          ; $7e02: $5b
	sbc a                                            ; $7e03: $9f
	ld a, a                                          ; $7e04: $7f
	ldh [$9e], a                                     ; $7e05: $e0 $9e
	ld h, a                                          ; $7e07: $67
	rst AddAOntoHL                                          ; $7e08: $ef
	db $fc                                           ; $7e09: $fc
	dec h                                            ; $7e0a: $25
	ld a, a                                          ; $7e0b: $7f
	ld a, a                                          ; $7e0c: $7f
	inc bc                                           ; $7e0d: $03
	rlca                                             ; $7e0e: $07
	rrca                                             ; $7e0f: $0f
	rrca                                             ; $7e10: $0f
	rra                                              ; $7e11: $1f
	inc [hl]                                         ; $7e12: $34

jr_066_7e13:
	jr jr_066_7e13                                   ; $7e13: $18 $fe

	rst SubAFromDE                                          ; $7e15: $df
	ld bc, $0380                                     ; $7e16: $01 $80 $03
	ld e, $3a                                        ; $7e19: $1e $3a
	ld a, [hl-]                                      ; $7e1b: $3a
	ld [hl], h                                       ; $7e1c: $74
	db $f4                                           ; $7e1d: $f4
	db $f4                                           ; $7e1e: $f4
	db $e4                                           ; $7e1f: $e4
	db $e4                                           ; $7e20: $e4
	rlca                                             ; $7e21: $07
	rrca                                             ; $7e22: $0f
	rra                                              ; $7e23: $1f
	ld a, $7e                                        ; $7e24: $3e $7e
	sbc $3d                                          ; $7e26: $de $3d
	dec [hl]                                         ; $7e28: $35
	ld e, l                                          ; $7e29: $5d
	ld [hl], a                                       ; $7e2a: $77
	xor $ea                                          ; $7e2b: $ee $ea
	ld l, b                                          ; $7e2d: $68
	and h                                            ; $7e2e: $a4
	call nc, $b3dc                                   ; $7e2f: $d4 $dc $b3
	sbc c                                            ; $7e32: $99
	ld e, c                                          ; $7e33: $59
	ld e, l                                          ; $7e34: $5d
	ccf                                              ; $7e35: $3f
	ccf                                              ; $7e36: $3f
	sbc c                                            ; $7e37: $99
	sbc a                                            ; $7e38: $9f
	rst AddAOntoHL                                          ; $7e39: $ef
	or d                                             ; $7e3a: $b2
	ld c, a                                          ; $7e3b: $4f
	jp nz, $dde2                                     ; $7e3c: $c2 $e2 $dd

	ldh a, [c]                                       ; $7e3f: $f2
	ld [hl], e                                       ; $7e40: $73
	inc hl                                           ; $7e41: $23
	sub h                                            ; $7e42: $94
	ccf                                              ; $7e43: $3f
	cp a                                             ; $7e44: $bf
	ccf                                              ; $7e45: $3f
	jp nc, $d4d2                                     ; $7e46: $d2 $d2 $d4

	sub h                                            ; $7e49: $94
	sub h                                            ; $7e4a: $94
	and h                                            ; $7e4b: $a4
	dec h                                            ; $7e4c: $25
	add hl, hl                                       ; $7e4d: $29
	sbc $7f                                          ; $7e4e: $de $7f
	call c, $dfff                                    ; $7e50: $dc $ff $df
	db $db                                           ; $7e53: $db
	sub c                                            ; $7e54: $91
	rst SubAFromDE                                          ; $7e55: $df
	ld [hl], a                                       ; $7e56: $77
	ld a, l                                          ; $7e57: $7d
	cp l                                             ; $7e58: $bd
	push af                                          ; $7e59: $f5
	ld a, [$6d6d]                                    ; $7e5a: $fa $6d $6d
	ld l, d                                          ; $7e5d: $6a
	jp c, $d7d7                                      ; $7e5e: $da $d7 $d7

	xor a                                            ; $7e61: $af
	xor [hl]                                         ; $7e62: $ae
	scf                                              ; $7e63: $37
	ld h, b                                          ; $7e64: $60
	sbc l                                            ; $7e65: $9d
	jr nc, jr_066_7e99                               ; $7e66: $30 $31

	ld l, e                                          ; $7e68: $6b
	ld h, b                                          ; $7e69: $60
	sbc l                                            ; $7e6a: $9d
	db $e3                                           ; $7e6b: $e3
	ldh a, [c]                                       ; $7e6c: $f2
	ccf                                              ; $7e6d: $3f
	ld h, b                                          ; $7e6e: $60
	sbc h                                            ; $7e6f: $9c
	or a                                             ; $7e70: $b7
	nop                                              ; $7e71: $00
	rra                                              ; $7e72: $1f
	db $dd                                           ; $7e73: $dd
	rst $38                                          ; $7e74: $ff
	sub h                                            ; $7e75: $94
	ld e, e                                          ; $7e76: $5b
	sub c                                            ; $7e77: $91
	rra                                              ; $7e78: $1f
	rst $38                                          ; $7e79: $ff
	ldh [rP1], a                                     ; $7e7a: $e0 $00
	nop                                              ; $7e7c: $00
	ld a, a                                          ; $7e7d: $7f
	and l                                            ; $7e7e: $a5

Call_066_7e7f:
	ld e, e                                          ; $7e7f: $5b
	rrca                                             ; $7e80: $0f
	ld [hl], e                                       ; $7e81: $73
	ld h, b                                          ; $7e82: $60
	sbc l                                            ; $7e83: $9d
	or h                                             ; $7e84: $b4
	inc a                                            ; $7e85: $3c
	inc bc                                           ; $7e86: $03
	ld h, b                                          ; $7e87: $60
	dec sp                                           ; $7e88: $3b
	ld h, b                                          ; $7e89: $60
	rst SubAFromDE                                          ; $7e8a: $df
	ccf                                              ; $7e8b: $3f
	inc bc                                           ; $7e8c: $03
	add b                                            ; $7e8d: $80
	ld b, e                                          ; $7e8e: $43
	add b                                            ; $7e8f: $80
	sbc l                                            ; $7e90: $9d
	rlca                                             ; $7e91: $07
	nop                                              ; $7e92: $00
	ld [hl], a                                       ; $7e93: $77
	ld [hl], $7f                                     ; $7e94: $36 $7f
	add b                                            ; $7e96: $80
	ld a, e                                          ; $7e97: $7b
	ld sp, hl                                        ; $7e98: $f9

jr_066_7e99:
	sbc d                                            ; $7e99: $9a
	add b                                            ; $7e9a: $80
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	rst SubAFromBC                                          ; $7e9d: $e7
	ld a, a                                          ; $7e9e: $7f
	ld l, a                                          ; $7e9f: $6f
	add b                                            ; $7ea0: $80
	sbc l                                            ; $7ea1: $9d
	halt                                             ; $7ea2: $76
	jr c, jr_066_7ea8                                ; $7ea3: $38 $03

	add b                                            ; $7ea5: $80
	inc bc                                           ; $7ea6: $03
	add b                                            ; $7ea7: $80

jr_066_7ea8:
	ld h, e                                          ; $7ea8: $63
	add b                                            ; $7ea9: $80
	sbc [hl]                                         ; $7eaa: $9e
	jr nc, @+$71                                     ; $7eab: $30 $6f

	add b                                            ; $7ead: $80
	sbc h                                            ; $7eae: $9c
	ldh [$e3], a                                     ; $7eaf: $e0 $e3
	di                                               ; $7eb1: $f3
	inc sp                                           ; $7eb2: $33
	add b                                            ; $7eb3: $80
	sbc [hl]                                         ; $7eb4: $9e
	ccf                                              ; $7eb5: $3f
	ld l, a                                          ; $7eb6: $6f
	add b                                            ; $7eb7: $80
	ld a, a                                          ; $7eb8: $7f
	ld sp, hl                                        ; $7eb9: $f9
	sbc e                                            ; $7eba: $9b
	ret nz                                           ; $7ebb: $c0

	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	rst $38                                          ; $7ebe: $ff
	ld l, e                                          ; $7ebf: $6b
	add b                                            ; $7ec0: $80
	sbc l                                            ; $7ec1: $9d
	rst JumpTable                                          ; $7ec2: $c7
	ld a, h                                          ; $7ec3: $7c
	inc bc                                           ; $7ec4: $03
	add b                                            ; $7ec5: $80
	inc sp                                           ; $7ec6: $33
	add b                                            ; $7ec7: $80
	adc [hl]                                         ; $7ec8: $8e
	rst $38                                          ; $7ec9: $ff
	ld d, d                                          ; $7eca: $52
	ld hl, sp+$1c                                    ; $7ecb: $f8 $1c
	ld a, $1c                                        ; $7ecd: $3e $1c
	nop                                              ; $7ecf: $00
	ld h, e                                          ; $7ed0: $63
	cp h                                             ; $7ed1: $bc
	ret nz                                           ; $7ed2: $c0

	ldh [rP1], a                                     ; $7ed3: $e0 $00
	db $10                                           ; $7ed5: $10
	stop                                             ; $7ed6: $10 $00
	ld [hl], $2a                                     ; $7ed8: $36 $2a
	cp $9a                                           ; $7eda: $fe $9a
	add b                                            ; $7edc: $80
	and d                                            ; $7edd: $a2
	db $eb                                           ; $7ede: $eb
	ld e, l                                          ; $7edf: $5d
	inc e                                            ; $7ee0: $1c
	db $fd                                           ; $7ee1: $fd
	sbc h                                            ; $7ee2: $9c
	pop bc                                           ; $7ee3: $c1
	rst FarCall                                          ; $7ee4: $f7
	ld a, $47                                        ; $7ee5: $3e $47
	ldh [$9d], a                                     ; $7ee7: $e0 $9d
	inc e                                            ; $7ee9: $1c
	ld [$e06f], sp                                   ; $7eea: $08 $6f $e0
	ld a, e                                          ; $7eed: $7b
	db $ec                                           ; $7eee: $ec
	scf                                              ; $7eef: $37
	ldh [$9d], a                                     ; $7ef0: $e0 $9d
	ld [hl], a                                       ; $7ef2: $77
	ld a, a                                          ; $7ef3: $7f
	ld a, e                                          ; $7ef4: $7b
	di                                               ; $7ef5: $f3
	rla                                              ; $7ef6: $17
	ldh [$de], a                                     ; $7ef7: $e0 $de
	ld a, $9e                                        ; $7ef9: $3e $9e
	inc e                                            ; $7efb: $1c
	ld [hl], a                                       ; $7efc: $77
	ldh [rPCM34], a                                  ; $7efd: $e0 $77
	ret c                                            ; $7eff: $d8

	ld [hl], a                                       ; $7f00: $77
	ldh [$a8], a                                     ; $7f01: $e0 $a8
	ld bc, $ee9c                                     ; $7f03: $01 $9c $ee
	ld b, h                                          ; $7f06: $44
	call z, $fe7b                                    ; $7f07: $cc $7b $fe
	sbc [hl]                                         ; $7f0a: $9e
	call c, $fe7b                                    ; $7f0b: $dc $7b $fe
	sub h                                            ; $7f0e: $94
	sub $4c                                          ; $7f0f: $d6 $4c
	or $4c                                           ; $7f11: $f6 $4c
	ld h, l                                          ; $7f13: $65
	sbc $44                                          ; $7f14: $de $44
	rst $38                                          ; $7f16: $ff
	ld b, h                                          ; $7f17: $44
	rst $38                                          ; $7f18: $ff
	ld [hl+], a                                      ; $7f19: $22
	ld a, e                                          ; $7f1a: $7b
	cp $86                                           ; $7f1b: $fe $86
	ld de, $91ff                                     ; $7f1d: $11 $ff $91
	rst $38                                          ; $7f20: $ff
	ld c, b                                          ; $7f21: $48
	ld a, a                                          ; $7f22: $7f
	jr z, jr_066_7f64                                ; $7f23: $28 $3f

	inc [hl]                                         ; $7f25: $34
	ccf                                              ; $7f26: $3f
	ld a, [hl+]                                      ; $7f27: $2a
	ccf                                              ; $7f28: $3f
	ld b, a                                          ; $7f29: $47
	ld a, a                                          ; $7f2a: $7f
	ld h, l                                          ; $7f2b: $65
	ld e, a                                          ; $7f2c: $5f
	ld l, l                                          ; $7f2d: $6d
	ld d, a                                          ; $7f2e: $57
	ld l, l                                          ; $7f2f: $6d
	ld d, a                                          ; $7f30: $57
	ld l, a                                          ; $7f31: $6f
	ld d, l                                          ; $7f32: $55
	ld a, a                                          ; $7f33: $7f
	ld b, l                                          ; $7f34: $45
	ld a, e                                          ; $7f35: $7b
	ld a, e                                          ; $7f36: $7b
	cp $8e                                           ; $7f37: $fe $8e
	ld l, d                                          ; $7f39: $6a
	ld d, l                                          ; $7f3a: $55
	ld l, d                                          ; $7f3b: $6a
	ld d, l                                          ; $7f3c: $55
	ld l, [hl]                                       ; $7f3d: $6e
	ld d, l                                          ; $7f3e: $55
	ld c, a                                          ; $7f3f: $4f
	ld [hl], l                                       ; $7f40: $75
	dec l                                            ; $7f41: $2d
	scf                                              ; $7f42: $37
	dec l                                            ; $7f43: $2d
	scf                                              ; $7f44: $37
	ld b, $04                                        ; $7f45: $06 $04
	ld c, $04                                        ; $7f47: $0e $04
	ld c, l                                          ; $7f49: $4d
	ld a, e                                          ; $7f4a: $7b
	cp $97                                           ; $7f4b: $fe $97
	db $ed                                           ; $7f4d: $ed
	inc b                                            ; $7f4e: $04
	xor l                                            ; $7f4f: $ad
	ld b, h                                          ; $7f50: $44
	halt                                             ; $7f51: $76
	call $ed56                                       ; $7f52: $cd $56 $ed
	ld [hl], a                                       ; $7f55: $77
	ret nz                                           ; $7f56: $c0

	sbc [hl]                                         ; $7f57: $9e
	ld b, d                                          ; $7f58: $42
	ld a, e                                          ; $7f59: $7b
	ret nz                                           ; $7f5a: $c0

	sbc [hl]                                         ; $7f5b: $9e
	inc hl                                           ; $7f5c: $23
	ld [hl], e                                       ; $7f5d: $73
	cp [hl]                                          ; $7f5e: $be
	add b                                            ; $7f5f: $80
	ret z                                            ; $7f60: $c8

	rst $38                                          ; $7f61: $ff
	ld h, h                                          ; $7f62: $64
	rst $38                                          ; $7f63: $ff

jr_066_7f64:
	ld [hl], $ff                                     ; $7f64: $36 $ff
	dec sp                                           ; $7f66: $3b
	rst AddAOntoHL                                          ; $7f67: $ef
	rst SubAFromDE                                          ; $7f68: $df
	or $ff                                           ; $7f69: $f6 $ff
	cp c                                             ; $7f6b: $b9
	ret nz                                           ; $7f6c: $c0

	add b                                            ; $7f6d: $80
	ld h, b                                          ; $7f6e: $60
	ret nz                                           ; $7f6f: $c0

	ld h, b                                          ; $7f70: $60
	ret nz                                           ; $7f71: $c0

	jr nc, jr_066_7fd4                               ; $7f72: $30 $60

	jr c, @+$72                                      ; $7f74: $38 $70

	inc l                                            ; $7f76: $2c
	ld a, b                                          ; $7f77: $78
	ld h, $7c                                        ; $7f78: $26 $7c
	cpl                                              ; $7f7a: $2f
	ld a, a                                          ; $7f7b: $7f
	scf                                              ; $7f7c: $37
	db $fd                                           ; $7f7d: $fd
	ld b, a                                          ; $7f7e: $47
	sub l                                            ; $7f7f: $95
	db $ec                                           ; $7f80: $ec
	adc [hl]                                         ; $7f81: $8e
	ret z                                            ; $7f82: $c8

	ld c, [hl]                                       ; $7f83: $4e
	ret c                                            ; $7f84: $d8

	sbc h                                            ; $7f85: $9c
	ret nc                                           ; $7f86: $d0

	sbc h                                            ; $7f87: $9c
	or b                                             ; $7f88: $b0
	sbc b                                            ; $7f89: $98
	ld l, a                                          ; $7f8a: $6f
	cp $9e                                           ; $7f8b: $fe $9e
	ldh a, [rPCM34]                                  ; $7f8d: $f0 $77
	cp $80                                           ; $7f8f: $fe $80
	ld e, b                                          ; $7f91: $58
	ldh a, [rBCPS]                                   ; $7f92: $f0 $68
	ld hl, sp+$7c                                    ; $7f94: $f8 $7c
	call c, $e130                                    ; $7f96: $dc $30 $e1
	inc sp                                           ; $7f99: $33
	db $e3                                           ; $7f9a: $e3
	sub a                                            ; $7f9b: $97
	ldh a, [$cf]                                     ; $7f9c: $f0 $cf
	ld hl, sp-$7f                                    ; $7f9e: $f8 $81
	push de                                          ; $7fa0: $d5
	ld b, l                                          ; $7fa1: $45
	ld d, l                                          ; $7fa2: $55
	ld h, a                                          ; $7fa3: $67
	ld d, l                                          ; $7fa4: $55
	ld l, a                                          ; $7fa5: $6f
	ld d, l                                          ; $7fa6: $55
	ld l, l                                          ; $7fa7: $6d
	ld d, a                                          ; $7fa8: $57
	ld d, l                                          ; $7fa9: $55
	ld a, a                                          ; $7faa: $7f
	ld d, l                                          ; $7fab: $55
	ld a, a                                          ; $7fac: $7f
	halt                                             ; $7fad: $76
	ld a, a                                          ; $7fae: $7f
	ld a, [hl]                                       ; $7faf: $7e
	adc e                                            ; $7fb0: $8b
	ld e, e                                          ; $7fb1: $5b
	or a                                             ; $7fb2: $b7
	sub c                                            ; $7fb3: $91
	nop                                              ; $7fb4: $00
	rra                                              ; $7fb5: $1f
	rra                                              ; $7fb6: $1f
	ld a, a                                          ; $7fb7: $7f
	ld a, a                                          ; $7fb8: $7f
	ldh [rIE], a                                     ; $7fb9: $e0 $ff
	sbc [hl]                                         ; $7fbb: $9e
	rst SubAFromBC                                          ; $7fbc: $e7
	ld h, a                                          ; $7fbd: $67
	cp l                                             ; $7fbe: $bd
	rst $38                                          ; $7fbf: $ff

Call_066_7fc0:
	dec h                                            ; $7fc0: $25
	inc [hl]                                         ; $7fc1: $34
	ld a, a                                          ; $7fc2: $7f
	jr jr_066_7fd4                                   ; $7fc3: $18 $0f

	cp [hl]                                          ; $7fc5: $be
	inc bc                                           ; $7fc6: $03
	rlca                                             ; $7fc7: $07
	rrca                                             ; $7fc8: $0f
	add b                                            ; $7fc9: $80
	ld bc, $010f                                     ; $7fca: $01 $0f $01
	rra                                              ; $7fcd: $1f
	inc bc                                           ; $7fce: $03
	ld e, $07                                        ; $7fcf: $1e $07
	ld a, [hl-]                                      ; $7fd1: $3a
	rrca                                             ; $7fd2: $0f
	ld a, [hl-]                                      ; $7fd3: $3a

jr_066_7fd4:
	rra                                              ; $7fd4: $1f
	ld [hl], h                                       ; $7fd5: $74
	ld a, $f4                                        ; $7fd6: $3e $f4
	ld a, [hl]                                       ; $7fd8: $7e
	db $f4                                           ; $7fd9: $f4
	sbc $e4                                          ; $7fda: $de $e4
	dec a                                            ; $7fdc: $3d
	db $e4                                           ; $7fdd: $e4
	dec [hl]                                         ; $7fde: $35
	ld e, l                                          ; $7fdf: $5d
	or e                                             ; $7fe0: $b3
	ld [hl], a                                       ; $7fe1: $77
	sbc c                                            ; $7fe2: $99
	xor $59                                          ; $7fe3: $ee $59
	ld [$685d], a                                    ; $7fe5: $ea $5d $68
	ccf                                              ; $7fe8: $3f
	adc a                                            ; $7fe9: $8f
	and h                                            ; $7fea: $a4
	ccf                                              ; $7feb: $3f
	call nc, $dc9f                                   ; $7fec: $d4 $9f $dc

Jump_066_7fef:
	rst AddAOntoHL                                          ; $7fef: $ef
	or d                                             ; $7ff0: $b2
	rst $38                                          ; $7ff1: $ff
	ld c, a                                          ; $7ff2: $4f
	rst $38                                          ; $7ff3: $ff
	jp nz, $e2ff                                     ; $7ff4: $c2 $ff $e2

Jump_066_7ff7:
	ld a, a                                          ; $7ff7: $7f
	ldh a, [c]                                       ; $7ff8: $f2
	ccf                                              ; $7ff9: $3f
	ld a, e                                          ; $7ffa: $7b
	cp $80                                           ; $7ffb: $fe $80
	cp a                                             ; $7ffd: $bf
	ldh a, [c]                                       ; $7ffe: $f2
	ccf                                              ; $7fff: $3f
