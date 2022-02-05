; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

	add hl, de                                       ; $4000: $19
	ld b, $9d                                        ; $4001: $06 $9d
	rst $38                                          ; $4003: $ff
	nop                                              ; $4004: $00
	ld [hl], a                                       ; $4005: $77
	cp $90                                           ; $4006: $fe $90
	cp a                                             ; $4008: $bf
	nop                                              ; $4009: $00
	ei                                               ; $400a: $fb
	inc b                                            ; $400b: $04
	rst FarCall                                          ; $400c: $f7
	ld [$00ff], sp                                   ; $400d: $08 $ff $00
	rst AddAOntoHL                                          ; $4010: $ef
	nop                                              ; $4011: $00
	rst SubAFromDE                                          ; $4012: $df
	jr nz, @+$01                                     ; $4013: $20 $ff

	nop                                              ; $4015: $00
	rst FarCall                                          ; $4016: $f7
	ld a, e                                          ; $4017: $7b
	xor $9c                                          ; $4018: $ee $9c
	db $fd                                           ; $401a: $fd
	ld [bc], a                                       ; $401b: $02
	rst $38                                          ; $401c: $ff
	ld [hl], e                                       ; $401d: $73
	db $f4                                           ; $401e: $f4
	ld a, e                                          ; $401f: $7b
	db $e4                                           ; $4020: $e4
	sbc e                                            ; $4021: $9b
	ld b, b                                          ; $4022: $40
	rst FarCall                                          ; $4023: $f7
	nop                                              ; $4024: $00
	cp $73                                           ; $4025: $fe $73
	jp c, $e07b                                      ; $4027: $da $7b $e0

	sbc [hl]                                         ; $402a: $9e
	db $10                                           ; $402b: $10
	ld [hl], a                                       ; $402c: $77
	ldh a, [$9d]                                     ; $402d: $f0 $9d
	jp hl                                            ; $402f: $e9


	inc d                                            ; $4030: $14
	ld [hl], a                                       ; $4031: $77
	ld a, [$dc7b]                                    ; $4032: $fa $7b $dc
	ld a, a                                          ; $4035: $7f
	sbc $6b                                          ; $4036: $de $6b
	add sp, $6f                                      ; $4038: $e8 $6f
	and $77                                          ; $403a: $e6 $77
	ret nc                                           ; $403c: $d0

	ld a, a                                          ; $403d: $7f
	ld hl, sp+$77                                    ; $403e: $f8 $77
	add $7f                                          ; $4040: $c6 $7f
	or b                                             ; $4042: $b0
	ld [hl], a                                       ; $4043: $77
	db $ec                                           ; $4044: $ec
	ld [hl], a                                       ; $4045: $77
	cp b                                             ; $4046: $b8
	ld l, a                                          ; $4047: $6f
	or [hl]                                          ; $4048: $b6
	ld [hl], e                                       ; $4049: $73
	and h                                            ; $404a: $a4
	ld a, e                                          ; $404b: $7b
	sbc $6f                                          ; $404c: $de $6f
	sub $6f                                          ; $404e: $d6 $6f
	xor b                                            ; $4050: $a8
	sbc l                                            ; $4051: $9d
	or $01                                           ; $4052: $f6 $01
	ld l, a                                          ; $4054: $6f
	ld hl, sp+$67                                    ; $4055: $f8 $67
	ld [$b27f], a                                    ; $4057: $ea $7f $b2
	ld [hl], a                                       ; $405a: $77
	xor h                                            ; $405b: $ac
	ld [hl], a                                       ; $405c: $77
	xor d                                            ; $405d: $aa
	ld l, a                                          ; $405e: $6f
	xor $9d                                          ; $405f: $ee $9d
	sbc $01                                          ; $4061: $de $01
	ld [hl], a                                       ; $4063: $77
	ld [$df63], a                                    ; $4064: $ea $63 $df
	ld h, a                                          ; $4067: $67
	cp $9a                                           ; $4068: $fe $9a
	dec de                                           ; $406a: $1b
	ld a, [de]                                       ; $406b: $1a
	push hl                                          ; $406c: $e5
	ld a, a                                          ; $406d: $7f
	add b                                            ; $406e: $80
	ld e, a                                          ; $406f: $5f
	pop af                                           ; $4070: $f1
	sub a                                            ; $4071: $97
	nop                                              ; $4072: $00
	jr jr_013_4075                                   ; $4073: $18 $00

jr_013_4075:
	push af                                          ; $4075: $f5
	nop                                              ; $4076: $00
	rst $38                                          ; $4077: $ff
	db $fc                                           ; $4078: $fc
	inc bc                                           ; $4079: $03
	ld h, e                                          ; $407a: $63
	ldh a, [$7f]                                     ; $407b: $f0 $7f
	ldh [$9e], a                                     ; $407d: $e0 $9e

Call_013_407f:
	ld h, l                                          ; $407f: $65
	ld d, e                                          ; $4080: $53
	ldh [$9a], a                                     ; $4081: $e0 $9a
	inc b                                            ; $4083: $04
	nop                                              ; $4084: $00
	rst $38                                          ; $4085: $ff
	sbc a                                            ; $4086: $9f
	ld h, b                                          ; $4087: $60
	ld e, e                                          ; $4088: $5b
	ldh a, [$9a]                                     ; $4089: $f0 $9a
	rra                                              ; $408b: $1f
	nop                                              ; $408c: $00
	ld a, a                                          ; $408d: $7f
	rla                                              ; $408e: $17
	add sp, $5b                                      ; $408f: $e8 $5b
	ldh a, [rIE]                                     ; $4091: $f0 $ff
	sbc h                                            ; $4093: $9c
	dec a                                            ; $4094: $3d
	nop                                              ; $4095: $00
	rst $38                                          ; $4096: $ff
	ld l, a                                          ; $4097: $6f
	adc $7e                                          ; $4098: $ce $7e
	db $fc                                           ; $409a: $fc
	ld [hl], e                                       ; $409b: $73
	ldh a, [rOCPD]                                   ; $409c: $f0 $6b
	or b                                             ; $409e: $b0
	ld [hl], a                                       ; $409f: $77
	ld c, h                                          ; $40a0: $4c
	ld a, e                                          ; $40a1: $7b
	ldh a, [rOCPD]                                   ; $40a2: $f0 $6b
	rst SubAFromHL                                          ; $40a4: $d7
	ld l, a                                          ; $40a5: $6f
	sbc $9e                                          ; $40a6: $de $9e
	ldh [$63], a                                     ; $40a8: $e0 $63
	ldh a, [$9d]                                     ; $40aa: $f0 $9d
	inc [hl]                                         ; $40ac: $34
	bit 6, a                                         ; $40ad: $cb $77
	ld sp, hl                                        ; $40af: $f9
	sbc [hl]                                         ; $40b0: $9e
	ld bc, $f06b                                     ; $40b1: $01 $6b $f0
	sbc b                                            ; $40b4: $98
	ld b, b                                          ; $40b5: $40
	cp a                                             ; $40b6: $bf
	ldh a, [rIF]                                     ; $40b7: $f0 $0f
	rst $38                                          ; $40b9: $ff
	nop                                              ; $40ba: $00
	ld a, a                                          ; $40bb: $7f
	db $fd                                           ; $40bc: $fd
	ld a, e                                          ; $40bd: $7b
	ldh a, [c]                                       ; $40be: $f2
	sub [hl]                                         ; $40bf: $96
	ret nz                                           ; $40c0: $c0

	ccf                                              ; $40c1: $3f
	ld c, a                                          ; $40c2: $4f
	add b                                            ; $40c3: $80
	rra                                              ; $40c4: $1f
	ldh [rSB], a                                     ; $40c5: $e0 $01
	cp $78                                           ; $40c7: $fe $78
	ld [hl], e                                       ; $40c9: $73
	ldh a, [$7f]                                     ; $40ca: $f0 $7f
	ld hl, sp-$69                                    ; $40cc: $f8 $97
	ld [bc], a                                       ; $40ce: $02

jr_013_40cf:
	db $fd                                           ; $40cf: $fd
	ld bc, $a7fe                                     ; $40d0: $01 $fe $a7
	ld e, b                                          ; $40d3: $58
	ld e, a                                          ; $40d4: $5f
	and b                                            ; $40d5: $a0
	ld [hl], a                                       ; $40d6: $77
	push de                                          ; $40d7: $d5
	sub [hl]                                         ; $40d8: $96
	ld a, [hl+]                                      ; $40d9: $2a
	push de                                          ; $40da: $d5
	ld e, l                                          ; $40db: $5d
	and d                                            ; $40dc: $a2
	ld a, [$fd05]                                    ; $40dd: $fa $05 $fd
	ld [bc], a                                       ; $40e0: $02
	cp $7b                                           ; $40e1: $fe $7b
	ld [hl+], a                                      ; $40e3: $22
	ld l, a                                          ; $40e4: $6f
	and b                                            ; $40e5: $a0
	ld a, a                                          ; $40e6: $7f
	call nz, $a59b                                   ; $40e7: $c4 $9b $a5
	ld e, d                                          ; $40ea: $5a
	ld e, d                                          ; $40eb: $5a
	and l                                            ; $40ec: $a5
	halt                                             ; $40ed: $76
	jp c, $fe7f                                      ; $40ee: $da $7f $fe

	sbc [hl]                                         ; $40f1: $9e
	ld e, a                                          ; $40f2: $5f
	ld a, e                                          ; $40f3: $7b
	ldh a, [$97]                                     ; $40f4: $f0 $97
	jr z, jr_013_40cf                                ; $40f6: $28 $d7

	ld d, h                                          ; $40f8: $54
	xor e                                            ; $40f9: $ab
	xor a                                            ; $40fa: $af
	ld d, b                                          ; $40fb: $50
	rst SubAFromHL                                          ; $40fc: $d7
	jr z, jr_013_4166                                ; $40fd: $28 $67

	ldh [$6f], a                                     ; $40ff: $e0 $6f
	cp $9b                                           ; $4101: $fe $9b
	and b                                            ; $4103: $a0
	ld e, a                                          ; $4104: $5f
	call nc, Call_013_772b                           ; $4105: $d4 $2b $77
	ret z                                            ; $4108: $c8

	ld [hl], a                                       ; $4109: $77
	db $f4                                           ; $410a: $f4
	sub a                                            ; $410b: $97
	inc bc                                           ; $410c: $03
	db $fc                                           ; $410d: $fc
	nop                                              ; $410e: $00
	inc bc                                           ; $410f: $03
	jr nz, jr_013_4131                               ; $4110: $20 $1f

	ld a, $c1                                        ; $4112: $3e $c1
	db $fc                                           ; $4114: $fc
	sub a                                            ; $4115: $97
	rst $38                                          ; $4116: $ff
	add b                                            ; $4117: $80
	ld a, a                                          ; $4118: $7f
	nop                                              ; $4119: $00
	rst $38                                          ; $411a: $ff
	ld b, $f8                                        ; $411b: $06 $f8
	nop                                              ; $411d: $00
	ld [hl], a                                       ; $411e: $77
	ld [hl], h                                       ; $411f: $74
	ld a, e                                          ; $4120: $7b
	ld h, b                                          ; $4121: $60
	ld a, a                                          ; $4122: $7f
	ldh a, [c]                                       ; $4123: $f2
	sub [hl]                                         ; $4124: $96
	dec bc                                           ; $4125: $0b
	ld d, h                                          ; $4126: $54
	call c, $0223                                    ; $4127: $dc $23 $02
	db $fd                                           ; $412a: $fd
	pop bc                                           ; $412b: $c1
	jr c, jr_013_412e                                ; $412c: $38 $00

jr_013_412e:
	ld a, e                                          ; $412e: $7b
	ld [hl], b                                       ; $412f: $70
	sbc l                                            ; $4130: $9d

jr_013_4131:
	call z, Call_013_5630                            ; $4131: $cc $30 $56
	call nz, Call_013_7a7f                           ; $4134: $c4 $7f $7a
	ld a, e                                          ; $4137: $7b
	add $73                                          ; $4138: $c6 $73
	or $9b                                           ; $413a: $f6 $9b
	dec b                                            ; $413c: $05
	ld a, [$857a]                                    ; $413d: $fa $7a $85
	ld [hl], d                                       ; $4140: $72
	ld l, b                                          ; $4141: $68
	ld [hl], e                                       ; $4142: $73
	and b                                            ; $4143: $a0
	ld a, a                                          ; $4144: $7f
	call z, Call_013_5c94                            ; $4145: $cc $94 $5c
	and e                                            ; $4148: $a3
	cp $01                                           ; $4149: $fe $01
	db $f4                                           ; $414b: $f4
	inc bc                                           ; $414c: $03
	adc b                                            ; $414d: $88
	rla                                              ; $414e: $17
	ld d, b                                          ; $414f: $50
	cpl                                              ; $4150: $2f
	rrca                                             ; $4151: $0f
	ld a, e                                          ; $4152: $7b
	cp b                                             ; $4153: $b8
	sub [hl]                                         ; $4154: $96
	inc bc                                           ; $4155: $03
	nop                                              ; $4156: $00
	inc b                                            ; $4157: $04
	inc bc                                           ; $4158: $03
	ld c, a                                          ; $4159: $4f
	add b                                            ; $415a: $80
	and b                                            ; $415b: $a0
	ld e, b                                          ; $415c: $58
	pop hl                                           ; $415d: $e1
	ld [hl], e                                       ; $415e: $73
	ld sp, $dc7f                                     ; $415f: $31 $7f $dc
	sbc [hl]                                         ; $4162: $9e
	jp c, $ed7a                                      ; $4163: $da $7a $ed

jr_013_4166:
	sbc b                                            ; $4166: $98
	sub b                                            ; $4167: $90
	nop                                              ; $4168: $00
	ret nz                                           ; $4169: $c0

	nop                                              ; $416a: $00
	cp b                                             ; $416b: $b8
	ld b, b                                          ; $416c: $40
	ld a, [hl]                                       ; $416d: $7e
	ld a, d                                          ; $416e: $7a

jr_013_416f:
	ld a, [$bb9a]                                    ; $416f: $fa $9a $bb
	nop                                              ; $4172: $00
	ld d, b                                          ; $4173: $50
	nop                                              ; $4174: $00
	jr z, jr_013_416f                                ; $4175: $28 $f8

	sub h                                            ; $4177: $94
	rst GetHLinHL                                          ; $4178: $cf
	nop                                              ; $4179: $00
	and a                                            ; $417a: $a7
	nop                                              ; $417b: $00
	ld d, c                                          ; $417c: $51
	nop                                              ; $417d: $00
	scf                                              ; $417e: $37
	nop                                              ; $417f: $00
	ld a, [bc]                                       ; $4180: $0a
	nop                                              ; $4181: $00
	dec b                                            ; $4182: $05
	ld l, a                                          ; $4183: $6f
	ld [hl], c                                       ; $4184: $71
	ld a, e                                          ; $4185: $7b
	cp $9c                                           ; $4186: $fe $9c
	ld [hl], l                                       ; $4188: $75
	nop                                              ; $4189: $00
	ld l, d                                          ; $418a: $6a
	ld a, e                                          ; $418b: $7b
	ret nc                                           ; $418c: $d0

	ei                                               ; $418d: $fb
	sub h                                            ; $418e: $94
	ld hl, sp+$07                                    ; $418f: $f8 $07
	ld a, h                                          ; $4191: $7c
	inc bc                                           ; $4192: $03
	ld e, a                                          ; $4193: $5f
	nop                                              ; $4194: $00
	xor e                                            ; $4195: $ab
	nop                                              ; $4196: $00
	ld b, l                                          ; $4197: $45
	nop                                              ; $4198: $00
	ld [bc], a                                       ; $4199: $02
	ld a, e                                          ; $419a: $7b
	sbc $7f                                          ; $419b: $de $7f
	and [hl]                                         ; $419d: $a6
	sbc e                                            ; $419e: $9b
	xor b                                            ; $419f: $a8
	ld d, a                                          ; $41a0: $57
	or $09                                           ; $41a1: $f6 $09
	ld h, a                                          ; $41a3: $67
	ld l, a                                          ; $41a4: $6f
	ld a, a                                          ; $41a5: $7f
	add sp, $7d                                      ; $41a6: $e8 $7d
	sub b                                            ; $41a8: $90
	ld a, a                                          ; $41a9: $7f
	inc d                                            ; $41aa: $14
	sbc l                                            ; $41ab: $9d
	xor d                                            ; $41ac: $aa
	ld d, l                                          ; $41ad: $55
	ld l, [hl]                                       ; $41ae: $6e
	ldh a, [c]                                       ; $41af: $f2
	ld a, a                                          ; $41b0: $7f
	db $fc                                           ; $41b1: $fc
	ld a, [hl]                                       ; $41b2: $7e
	cp h                                             ; $41b3: $bc
	sbc l                                            ; $41b4: $9d
	ldh [$1f], a                                     ; $41b5: $e0 $1f
	ld l, [hl]                                       ; $41b7: $6e
	or d                                             ; $41b8: $b2
	adc c                                            ; $41b9: $89
	or h                                             ; $41ba: $b4
	ld c, e                                          ; $41bb: $4b
	ldh a, [rIF]                                     ; $41bc: $f0 $0f
	inc e                                            ; $41be: $1c
	db $e3                                           ; $41bf: $e3
	ld b, $f9                                        ; $41c0: $06 $f9
	inc bc                                           ; $41c2: $03
	db $fc                                           ; $41c3: $fc
	rrca                                             ; $41c4: $0f
	ldh a, [$1f]                                     ; $41c5: $f0 $1f
	ldh [$2f], a                                     ; $41c7: $e0 $2f
	ret nc                                           ; $41c9: $d0

	ld e, $e0                                        ; $41ca: $1e $e0
	ld e, b                                          ; $41cc: $58
	add c                                            ; $41cd: $81
	nop                                              ; $41ce: $00
	rst SubAFromBC                                          ; $41cf: $e7
	ld [hl], a                                       ; $41d0: $77
	db $e4                                           ; $41d1: $e4
	ld a, a                                          ; $41d2: $7f
	ld e, $98                                        ; $41d3: $1e $98
	ret z                                            ; $41d5: $c8

	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	add hl, de                                       ; $41d8: $19
	sub b                                            ; $41d9: $90
	ld l, a                                          ; $41da: $6f
	ld b, b                                          ; $41db: $40
	ld l, l                                          ; $41dc: $6d
	sbc l                                            ; $41dd: $9d
	sbc h                                            ; $41de: $9c
	rst $38                                          ; $41df: $ff
	jr nz, jr_013_4241                               ; $41e0: $20 $5f

	ld h, a                                          ; $41e2: $67
	or $6f                                           ; $41e3: $f6 $6f
	cp $7a                                           ; $41e5: $fe $7a
	cp $7f                                           ; $41e7: $fe $7f
	adc h                                            ; $41e9: $8c
	cp $9d                                           ; $41ea: $fe $9d
	sub e                                            ; $41ec: $93
	ld h, b                                          ; $41ed: $60
	ld a, d                                          ; $41ee: $7a
	ret c                                            ; $41ef: $d8

	cp $9a                                           ; $41f0: $fe $9a
	jp $203c                                         ; $41f2: $c3 $3c $20


	rra                                              ; $41f5: $1f
	rrca                                             ; $41f6: $0f
	ld a, e                                          ; $41f7: $7b
	add [hl]                                         ; $41f8: $86
	sbc [hl]                                         ; $41f9: $9e
	ld [$7ffa], sp                                   ; $41fa: $08 $fa $7f
	ldh [c], a                                       ; $41fd: $e2
	ld a, a                                          ; $41fe: $7f
	sbc $9a                                          ; $41ff: $de $9a
	db $10                                           ; $4201: $10
	add sp, $59                                      ; $4202: $e8 $59
	inc b                                            ; $4204: $04
	xor d                                            ; $4205: $aa
	ld l, e                                          ; $4206: $6b
	ld d, b                                          ; $4207: $50
	db $fd                                           ; $4208: $fd
	sbc d                                            ; $4209: $9a
	adc b                                            ; $420a: $88
	nop                                              ; $420b: $00
	ld d, l                                          ; $420c: $55
	nop                                              ; $420d: $00
	and b                                            ; $420e: $a0
	db $ec                                           ; $420f: $ec
	sbc [hl]                                         ; $4210: $9e
	ld a, [hl+]                                      ; $4211: $2a
	ld a, d                                          ; $4212: $7a
	or $7d                                           ; $4213: $f6 $7d
	adc $9c                                          ; $4215: $ce $9c
	ld b, [hl]                                       ; $4217: $46
	add hl, sp                                       ; $4218: $39
	call nc, Call_013_7ffa                           ; $4219: $d4 $fa $7f
	xor e                                            ; $421c: $ab
	ld a, l                                          ; $421d: $7d
	ld l, [hl]                                       ; $421e: $6e
	sub [hl]                                         ; $421f: $96
	ld e, [hl]                                       ; $4220: $5e
	and c                                            ; $4221: $a1
	ld hl, sp+$07                                    ; $4222: $f8 $07
	ld de, $3f0e                                     ; $4224: $11 $0e $3f
	nop                                              ; $4227: $00
	ld e, d                                          ; $4228: $5a
	ld l, a                                          ; $4229: $6f
	cp [hl]                                          ; $422a: $be
	ld a, a                                          ; $422b: $7f
	adc h                                            ; $422c: $8c
	sbc e                                            ; $422d: $9b
	db $fc                                           ; $422e: $fc
	ld bc, $05e0                                     ; $422f: $01 $e0 $05
	ld a, d                                          ; $4232: $7a
	or h                                             ; $4233: $b4
	ld a, a                                          ; $4234: $7f
	ld b, b                                          ; $4235: $40
	sbc [hl]                                         ; $4236: $9e
	ld sp, $207b                                     ; $4237: $31 $7b $20
	sbc [hl]                                         ; $423a: $9e
	ld b, a                                          ; $423b: $47
	halt                                             ; $423c: $76
	ld [hl], c                                       ; $423d: $71
	ld e, e                                          ; $423e: $5b
	cp $9b                                           ; $423f: $fe $9b

jr_013_4241:
	ret nc                                           ; $4241: $d0

	cpl                                              ; $4242: $2f
	and e                                            ; $4243: $a3
	ld e, h                                          ; $4244: $5c
	ld l, l                                          ; $4245: $6d
	jr jr_013_42c5                                   ; $4246: $18 $7d

	xor h                                            ; $4248: $ac
	ld a, a                                          ; $4249: $7f
	ld [hl+], a                                      ; $424a: $22
	ld a, a                                          ; $424b: $7f
	dec e                                            ; $424c: $1d
	ld a, a                                          ; $424d: $7f
	rst FarCall                                          ; $424e: $f7
	sbc e                                            ; $424f: $9b
	pop bc                                           ; $4250: $c1
	ld a, $e3                                        ; $4251: $3e $e3
	inc e                                            ; $4253: $1c
	ld [hl], a                                       ; $4254: $77
	jp nc, $267f                                     ; $4255: $d2 $7f $26

	ld [hl], a                                       ; $4258: $77
	ld [$509b], a                                    ; $4259: $ea $9b $50
	xor a                                            ; $425c: $af
	and b                                            ; $425d: $a0
	ld e, a                                          ; $425e: $5f
	ld [hl], a                                       ; $425f: $77
	rst SubAFromHL                                          ; $4260: $d7
	adc e                                            ; $4261: $8b
	inc b                                            ; $4262: $04
	ei                                               ; $4263: $fb
	nop                                              ; $4264: $00
	rst $38                                          ; $4265: $ff
	ld [bc], a                                       ; $4266: $02
	db $fd                                           ; $4267: $fd
	db $ed                                           ; $4268: $ed
	ld [de], a                                       ; $4269: $12
	nop                                              ; $426a: $00
	rst $38                                          ; $426b: $ff
	ld [$5ff2], sp                                   ; $426c: $08 $f2 $5f
	and b                                            ; $426f: $a0
	inc a                                            ; $4270: $3c
	ret nz                                           ; $4271: $c0

	rst $38                                          ; $4272: $ff
	nop                                              ; $4273: $00
	jr @+$09                                         ; $4274: $18 $07

	db $fd                                           ; $4276: $fd
	ld a, a                                          ; $4277: $7f
	ld [de], a                                       ; $4278: $12
	sbc d                                            ; $4279: $9a
	inc [hl]                                         ; $427a: $34
	ret nz                                           ; $427b: $c0

	jp c, $0020                                     ; $427c: $da $20 $00

	ld a, e                                          ; $427f: $7b
	and [hl]                                         ; $4280: $a6
	ld a, l                                          ; $4281: $7d
	ld [hl], b                                       ; $4282: $70
	ld a, a                                          ; $4283: $7f
	adc b                                            ; $4284: $88
	ld l, l                                          ; $4285: $6d
	ld c, a                                          ; $4286: $4f
	ld l, [hl]                                       ; $4287: $6e
	adc b                                            ; $4288: $88
	ld a, l                                          ; $4289: $7d
	ldh a, [c]                                       ; $428a: $f2
	ld a, [hl]                                       ; $428b: $7e
	and $6f                                          ; $428c: $e6 $6f
	pop af                                           ; $428e: $f1
	halt                                             ; $428f: $76
	ld c, [hl]                                       ; $4290: $4e
	ld a, a                                          ; $4291: $7f
	and a                                            ; $4292: $a7
	sbc h                                            ; $4293: $9c
	rlca                                             ; $4294: $07

jr_013_4295:
	ld hl, sp-$04                                    ; $4295: $f8 $fc
	ld a, e                                          ; $4297: $7b
	ld [hl+], a                                      ; $4298: $22
	ld e, [hl]                                       ; $4299: $5e
	add h                                            ; $429a: $84
	ld a, [hl]                                       ; $429b: $7e
	ld a, [$4a77]                                    ; $429c: $fa $77 $4a
	sbc h                                            ; $429f: $9c
	ld d, [hl]                                       ; $42a0: $56
	nop                                              ; $42a1: $00
	and c                                            ; $42a2: $a1
	ld l, e                                          ; $42a3: $6b
	call c, $bc77                                    ; $42a4: $dc $77 $bc
	sbc [hl]                                         ; $42a7: $9e
	ld c, e                                          ; $42a8: $4b
	ld l, d                                          ; $42a9: $6a
	db $fc                                           ; $42aa: $fc
	ld a, [hl]                                       ; $42ab: $7e
	inc [hl]                                         ; $42ac: $34
	sbc d                                            ; $42ad: $9a
	ldh [rAUD1SWEEP], a                              ; $42ae: $e0 $10
	nop                                              ; $42b0: $00
	ret nz                                           ; $42b1: $c0

	db $fc                                           ; $42b2: $fc
	ld a, d                                          ; $42b3: $7a
	adc b                                            ; $42b4: $88
	ld a, [hl]                                       ; $42b5: $7e
	db $e4                                           ; $42b6: $e4
	ld a, a                                          ; $42b7: $7f
	ld [hl], $77                                     ; $42b8: $36 $77
	push hl                                          ; $42ba: $e5
	sbc h                                            ; $42bb: $9c
	db $10                                           ; $42bc: $10
	rrca                                             ; $42bd: $0f
	nop                                              ; $42be: $00
	ld a, e                                          ; $42bf: $7b
	or $77                                           ; $42c0: $f6 $77
	inc sp                                           ; $42c2: $33
	sbc [hl]                                         ; $42c3: $9e
	add b                                            ; $42c4: $80

jr_013_42c5:
	ld a, c                                          ; $42c5: $79
	and h                                            ; $42c6: $a4
	ld a, a                                          ; $42c7: $7f
	or c                                             ; $42c8: $b1
	ld [hl], a                                       ; $42c9: $77
	sub l                                            ; $42ca: $95
	ld [hl], a                                       ; $42cb: $77
	cp $9b                                           ; $42cc: $fe $9b
	rlca                                             ; $42ce: $07
	ret nz                                           ; $42cf: $c0

	rra                                              ; $42d0: $1f
	ret nz                                           ; $42d1: $c0

	ld [hl], a                                       ; $42d2: $77
	add sp, -$65                                     ; $42d3: $e8 $9b
	push af                                          ; $42d5: $f5
	ld a, [bc]                                       ; $42d6: $0a
	xor b                                            ; $42d7: $a8
	ld d, a                                          ; $42d8: $57
	ld e, h                                          ; $42d9: $5c
	ld d, b                                          ; $42da: $50
	ld a, a                                          ; $42db: $7f
	ret z                                            ; $42dc: $c8

	sbc c                                            ; $42dd: $99
	push de                                          ; $42de: $d5
	ld a, [hl+]                                      ; $42df: $2a
	ld a, [hl+]                                      ; $42e0: $2a
	push de                                          ; $42e1: $d5
	push bc                                          ; $42e2: $c5
	ld a, [hl-]                                      ; $42e3: $3a
	ld [hl], a                                       ; $42e4: $77
	or $6c                                           ; $42e5: $f6 $6c
	add $99                                          ; $42e7: $c6 $99
	dec h                                            ; $42e9: $25
	jp c, Jump_013_7f80                              ; $42ea: $da $80 $7f

	inc a                                            ; $42ed: $3c
	jp $5075                                         ; $42ee: $c3 $75 $50


	ld a, a                                          ; $42f1: $7f
	and $9c                                          ; $42f2: $e6 $9c
	ld [$ff15], a                                    ; $42f4: $ea $15 $ff
	ld [hl], d                                       ; $42f7: $72
	jr z, jr_013_4295                                ; $42f8: $28 $9b

	ld c, b                                          ; $42fa: $48
	or a                                             ; $42fb: $b7
	sub b                                            ; $42fc: $90
	ld l, a                                          ; $42fd: $6f
	ld e, [hl]                                       ; $42fe: $5e
	push af                                          ; $42ff: $f5
	sbc e                                            ; $4300: $9b
	ld [hl], b                                       ; $4301: $70
	rrca                                             ; $4302: $0f
	sbc l                                            ; $4303: $9d
	ld [bc], a                                       ; $4304: $02
	ld l, c                                          ; $4305: $69
	rst SubAFromDE                                          ; $4306: $df
	ld a, e                                          ; $4307: $7b
	cp $9a                                           ; $4308: $fe $9a
	ld b, e                                          ; $430a: $43
	cp h                                             ; $430b: $bc
	rra                                              ; $430c: $1f
	ldh [$e8], a                                     ; $430d: $e0 $e8
	ld [hl], a                                       ; $430f: $77
	pop af                                           ; $4310: $f1
	sub a                                            ; $4311: $97
	ld hl, sp+$1d                                    ; $4312: $f8 $1d
	cp $ff                                           ; $4314: $fe $ff
	ld hl, sp-$01                                    ; $4316: $f8 $ff
	ldh a, [rIE]                                     ; $4318: $f0 $ff
	ld a, c                                          ; $431a: $79
	and [hl]                                         ; $431b: $a6
	ld a, l                                          ; $431c: $7d
	sub [hl]                                         ; $431d: $96
	ld a, a                                          ; $431e: $7f
	db $fc                                           ; $431f: $fc
	sbc h                                            ; $4320: $9c
	ccf                                              ; $4321: $3f
	rst $38                                          ; $4322: $ff
	ld [hl], b                                       ; $4323: $70
	jp c, $9dff                                      ; $4324: $da $ff $9d

	or $01                                           ; $4327: $f6 $01
	ld [hl], a                                       ; $4329: $77
	sub b                                            ; $432a: $90
	sbc h                                            ; $432b: $9c
	ld a, e                                          ; $432c: $7b
	rst $38                                          ; $432d: $ff
	call nz, $ffd9                                   ; $432e: $c4 $d9 $ff
	ld a, e                                          ; $4331: $7b
	ldh [c], a                                       ; $4332: $e2
	ld a, [hl]                                       ; $4333: $7e
	add d                                            ; $4334: $82
	sbc h                                            ; $4335: $9c
	rlca                                             ; $4336: $07
	rst $38                                          ; $4337: $ff
	inc bc                                           ; $4338: $03
	sbc $ff                                          ; $4339: $de $ff
	ld a, a                                          ; $433b: $7f
	adc e                                            ; $433c: $8b
	ld h, a                                          ; $433d: $67
	ldh a, [$9e]                                     ; $433e: $f0 $9e
	xor b                                            ; $4340: $a8
	ld a, e                                          ; $4341: $7b
	push bc                                          ; $4342: $c5
	ld a, h                                          ; $4343: $7c
	ld h, e                                          ; $4344: $63
	ld a, [hl]                                       ; $4345: $7e
	pop de                                           ; $4346: $d1
	ld [hl], a                                       ; $4347: $77
	ldh a, [rPCM34]                                  ; $4348: $f0 $77
	ret nz                                           ; $434a: $c0

	sub b                                            ; $434b: $90
	rst SubAFromDE                                          ; $434c: $df
	and b                                            ; $434d: $a0
	rst $38                                          ; $434e: $ff
	add b                                            ; $434f: $80
	rst FarCall                                          ; $4350: $f7
	add b                                            ; $4351: $80
	rst $38                                          ; $4352: $ff
	add b                                            ; $4353: $80
	db $fd                                           ; $4354: $fd
	add d                                            ; $4355: $82
	rst $38                                          ; $4356: $ff
	ret nz                                           ; $4357: $c0

	ld a, a                                          ; $4358: $7f
	ldh [$3f], a                                     ; $4359: $e0 $3f
	halt                                             ; $435b: $76
	sbc h                                            ; $435c: $9c
	add d                                            ; $435d: $82
	ld c, $ff                                        ; $435e: $0e $ff
	ld sp, $40ff                                     ; $4360: $31 $ff $40
	rst $38                                          ; $4363: $ff
	add [hl]                                         ; $4364: $86
	ld a, a                                          ; $4365: $7f
	rst $38                                          ; $4366: $ff
	ld h, b                                          ; $4367: $60
	rst $38                                          ; $4368: $ff
	jr nz, @+$01                                     ; $4369: $20 $ff

	push de                                          ; $436b: $d5
	ld l, [hl]                                       ; $436c: $6e
	db $fd                                           ; $436d: $fd
	ld l, [hl]                                       ; $436e: $6e
	db $ed                                           ; $436f: $ed
	ld a, [hl]                                       ; $4370: $7e
	db $ec                                           ; $4371: $ec
	ld a, a                                          ; $4372: $7f
	rst $38                                          ; $4373: $ff
	ccf                                              ; $4374: $3f
	db $fc                                           ; $4375: $fc

Jump_013_4376:
	rra                                              ; $4376: $1f
	ei                                               ; $4377: $fb
	ccf                                              ; $4378: $3f
	db $eb                                           ; $4379: $eb
	ld a, a                                          ; $437a: $7f
	ld a, e                                          ; $437b: $7b
	or l                                             ; $437c: $b5
	add b                                            ; $437d: $80
	pop bc                                           ; $437e: $c1
	rst $38                                          ; $437f: $ff
	ld hl, $13ff                                     ; $4380: $21 $ff $13
	rst $38                                          ; $4383: $ff
	rst SubAFromHL                                          ; $4384: $d7
	ccf                                              ; $4385: $3f
	rst FarCall                                          ; $4386: $f7
	db $fd                                           ; $4387: $fd
	rst FarCall                                          ; $4388: $f7
	dec c                                            ; $4389: $0d
	rst $38                                          ; $438a: $ff
	sbc a                                            ; $438b: $9f
	ldh a, [$bf]                                     ; $438c: $f0 $bf
	pop hl                                           ; $438e: $e1
	cp a                                             ; $438f: $bf
	ldh [c], a                                       ; $4390: $e2
	ld a, a                                          ; $4391: $7f
	db $e4                                           ; $4392: $e4
	ld e, a                                          ; $4393: $5f
	push af                                          ; $4394: $f5
	cp [hl]                                          ; $4395: $be
	rst $38                                          ; $4396: $ff
	rst AddAOntoHL                                          ; $4397: $ef
	cp a                                             ; $4398: $bf
	add sp, -$41                                     ; $4399: $e8 $bf
	rst $38                                          ; $439b: $ff
	nop                                              ; $439c: $00
	ld [hl], b                                       ; $439d: $70
	ret c                                            ; $439e: $d8

	sbc d                                            ; $439f: $9a
	adc b                                            ; $43a0: $88
	rst $38                                          ; $43a1: $ff
	add b                                            ; $43a2: $80
	rst AddAOntoHL                                          ; $43a3: $ef
	sub b                                            ; $43a4: $90
	ld a, e                                          ; $43a5: $7b
	ld e, h                                          ; $43a6: $5c
	ld a, [hl]                                       ; $43a7: $7e
	db $e3                                           ; $43a8: $e3
	ld a, a                                          ; $43a9: $7f
	inc e                                            ; $43aa: $1c
	sbc [hl]                                         ; $43ab: $9e
	db $fd                                           ; $43ac: $fd
	ld a, e                                          ; $43ad: $7b
	call z, $2963                                    ; $43ae: $cc $63 $29
	sub d                                            ; $43b1: $92
	pop af                                           ; $43b2: $f1
	rra                                              ; $43b3: $1f
	or c                                             ; $43b4: $b1
	ld e, a                                          ; $43b5: $5f
	pop hl                                           ; $43b6: $e1
	ccf                                              ; $43b7: $3f
	ldh [c], a                                       ; $43b8: $e2
	ccf                                              ; $43b9: $3f
	jp nz, $c27f                                     ; $43ba: $c2 $7f $c2

	ld a, a                                          ; $43bd: $7f
	call nz, $fe7b                                   ; $43be: $c4 $7b $fe
	sbc l                                            ; $43c1: $9d
	rst $38                                          ; $43c2: $ff
	ld a, l                                          ; $43c3: $7d
	ld a, e                                          ; $43c4: $7b
	ldh [c], a                                       ; $43c5: $e2
	ld d, a                                          ; $43c6: $57
	cp $94                                           ; $43c7: $fe $94
	halt                                             ; $43c9: $76
	rst AddAOntoHL                                          ; $43ca: $ef
	ld [hl], h                                       ; $43cb: $74
	rst SubAFromDE                                          ; $43cc: $df
	ld h, h                                          ; $43cd: $64
	rst SubAFromDE                                          ; $43ce: $df
	add sp, -$61                                     ; $43cf: $e8 $9f
	ld hl, sp-$61                                    ; $43d1: $f8 $9f
	ldh a, [rPCM34]                                  ; $43d3: $f0 $77
	cp $88                                           ; $43d5: $fe $88
	dec l                                            ; $43d7: $2d
	db $fd                                           ; $43d8: $fd
	ld h, c                                          ; $43d9: $61
	pop hl                                           ; $43da: $e1
	add a                                            ; $43db: $87
	add a                                            ; $43dc: $87
	dec de                                           ; $43dd: $1b
	ld e, $e3                                        ; $43de: $1e $e3
	rst $38                                          ; $43e0: $ff
	dec e                                            ; $43e1: $1d
	db $fd                                           ; $43e2: $fd
	ld sp, hl                                        ; $43e3: $f9
	ld sp, hl                                        ; $43e4: $f9
	ld bc, $e001                                     ; $43e5: $01 $01 $e0
	rst $38                                          ; $43e8: $ff
	ret nz                                           ; $43e9: $c0

	rst $38                                          ; $43ea: $ff
	ldh [rIE], a                                     ; $43eb: $e0 $ff
	pop hl                                           ; $43ed: $e1
	db $dd                                           ; $43ee: $dd
	rst $38                                          ; $43ef: $ff
	sub e                                            ; $43f0: $93
	rra                                              ; $43f1: $1f
	rst $38                                          ; $43f2: $ff
	rrca                                             ; $43f3: $0f
	reti                                             ; $43f4: $d9


	rrca                                             ; $43f5: $0f
	and c                                            ; $43f6: $a1
	pop hl                                           ; $43f7: $e1
	sub b                                            ; $43f8: $90
	ldh a, [$cc]                                     ; $43f9: $f0 $cc
	db $fc                                           ; $43fb: $fc
	jp $ec7b                                         ; $43fc: $c3 $7b $ec


	rst SubAFromDE                                          ; $43ff: $df
	ccf                                              ; $4400: $3f
	rst SubAFromDE                                          ; $4401: $df
	ld bc, $83df                                     ; $4402: $01 $df $83
	ld a, a                                          ; $4405: $7f
	sbc [hl]                                         ; $4406: $9e
	add [hl]                                         ; $4407: $86
	cp a                                             ; $4408: $bf
	ld b, b                                          ; $4409: $40
	db $eb                                           ; $440a: $eb
	dec d                                            ; $440b: $15
	rst $38                                          ; $440c: $ff
	inc bc                                           ; $440d: $03
	cp a                                             ; $440e: $bf
	ld b, a                                          ; $440f: $47
	db $fd                                           ; $4410: $fd
	rrca                                             ; $4411: $0f
	ld sp, hl                                        ; $4412: $f9
	rra                                              ; $4413: $1f
	ldh a, [c]                                       ; $4414: $f2
	ccf                                              ; $4415: $3f
	adc c                                            ; $4416: $89
	rst $38                                          ; $4417: $ff
	cp l                                             ; $4418: $bd
	rst $38                                          ; $4419: $ff
	di                                               ; $441a: $f3
	rst $38                                          ; $441b: $ff
	sbc e                                            ; $441c: $9b
	rst $38                                          ; $441d: $ff
	sub a                                            ; $441e: $97
	rst $38                                          ; $441f: $ff
	rst $38                                          ; $4420: $ff
	halt                                             ; $4421: $76
	ret z                                            ; $4422: $c8

	ld a, a                                          ; $4423: $7f
	ld l, [hl]                                       ; $4424: $6e
	adc l                                            ; $4425: $8d
	dec de                                           ; $4426: $1b
	rst $38                                          ; $4427: $ff
	dec bc                                           ; $4428: $0b
	rst $38                                          ; $4429: $ff
	add hl, bc                                       ; $442a: $09
	rst $38                                          ; $442b: $ff
	add hl, bc                                       ; $442c: $09
	rst AddAOntoHL                                          ; $442d: $ef
	add hl, de                                       ; $442e: $19
	rst AddAOntoHL                                          ; $442f: $ef
	add hl, de                                       ; $4430: $19
	rst SubAFromDE                                          ; $4431: $df
	ld sp, $f31f                                     ; $4432: $31 $1f $f3
	ld a, a                                          ; $4435: $7f
	db $10                                           ; $4436: $10
	ccf                                              ; $4437: $3f
	ld a, e                                          ; $4438: $7b
	cp $9b                                           ; $4439: $fe $9b
	sbc a                                            ; $443b: $9f
	db $10                                           ; $443c: $10
	cp a                                             ; $443d: $bf
	db $10                                           ; $443e: $10
	ld a, e                                          ; $443f: $7b
	inc de                                           ; $4440: $13
	add b                                            ; $4441: $80

jr_013_4442:
	jr nz, jr_013_4442                               ; $4442: $20 $fe

	ld hl, $e0fe                                     ; $4444: $21 $fe $e0
	db $fc                                           ; $4447: $fc
	ldh a, [$dc]                                     ; $4448: $f0 $dc
	ldh a, [$f2]                                     ; $444a: $f0 $f2
	ldh a, [$d2]                                     ; $444c: $f0 $d2
	ldh a, [$3f]                                     ; $444e: $f0 $3f
	ldh a, [$ef]                                     ; $4450: $f0 $ef
	add sp, -$39                                     ; $4452: $e8 $c7
	add $70                                          ; $4454: $c6 $70
	ld a, a                                          ; $4456: $7f
	ld h, e                                          ; $4457: $63
	ld a, a                                          ; $4458: $7f
	ld l, h                                          ; $4459: $6c
	rst $38                                          ; $445a: $ff
	ld [hl], b                                       ; $445b: $70
	cp a                                             ; $445c: $bf
	ld sp, hl                                        ; $445d: $f9
	ccf                                              ; $445e: $3f
	rst $38                                          ; $445f: $ff
	rrca                                             ; $4460: $0f
	sbc c                                            ; $4461: $99
	rst $38                                          ; $4462: $ff
	rlca                                             ; $4463: $07
	rst $38                                          ; $4464: $ff
	ld bc, $ff00                                     ; $4465: $01 $00 $ff
	ld [hl], l                                       ; $4468: $75
	ld c, a                                          ; $4469: $4f
	ld a, a                                          ; $446a: $7f
	db $fc                                           ; $446b: $fc
	ld a, d                                          ; $446c: $7a
	ld b, [hl]                                       ; $446d: $46
	adc d                                            ; $446e: $8a
	ld hl, sp+$41                                    ; $446f: $f8 $41
	add b                                            ; $4471: $80
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	rst SubAFromDE                                          ; $4474: $df
	ldh [$ef], a                                     ; $4475: $e0 $ef
	ld [hl], b                                       ; $4477: $70
	ei                                               ; $4478: $fb
	inc a                                            ; $4479: $3c
	db $fc                                           ; $447a: $fc
	rrca                                             ; $447b: $0f
	cp $07                                           ; $447c: $fe $07
	add e                                            ; $447e: $83
	inc bc                                           ; $447f: $03
	ccf                                              ; $4480: $3f
	dec a                                            ; $4481: $3d
	ld a, a                                          ; $4482: $7f
	ld b, e                                          ; $4483: $43
	ld e, [hl]                                       ; $4484: $5e
	ld b, b                                          ; $4485: $40
	sbc c                                            ; $4486: $99
	ld bc, $00fe                                     ; $4487: $01 $fe $00
	rst $38                                          ; $448a: $ff
	ld d, l                                          ; $448b: $55
	xor d                                            ; $448c: $aa
	ld h, a                                          ; $448d: $67
	ldh a, [c]                                       ; $448e: $f2
	sbc e                                            ; $448f: $9b
	ld a, [bc]                                       ; $4490: $0a
	push af                                          ; $4491: $f5
	ld d, a                                          ; $4492: $57
	xor b                                            ; $4493: $a8
	ld [hl], a                                       ; $4494: $77
	rst FarCall                                          ; $4495: $f7
	rst SubAFromDE                                          ; $4496: $df
	inc bc                                           ; $4497: $03
	adc [hl]                                         ; $4498: $8e
	rlca                                             ; $4499: $07

jr_013_449a:
	ld b, $ff                                        ; $449a: $06 $ff
	db $fc                                           ; $449c: $fc
	rlca                                             ; $449d: $07
	db $fc                                           ; $449e: $fc
	add hl, bc                                       ; $449f: $09
	cp $19                                           ; $44a0: $fe $19
	cp $34                                           ; $44a2: $fe $34
	rst $38                                          ; $44a4: $ff
	or $ff                                           ; $44a5: $f6 $ff
	ld a, $c6                                        ; $44a7: $3e $c6
	ld sp, hl                                        ; $44a9: $f9
	ld a, c                                          ; $44aa: $79
	ld l, c                                          ; $44ab: $69
	sub l                                            ; $44ac: $95
	jr @+$01                                         ; $44ad: $18 $ff

	cp b                                             ; $44af: $b8
	rst $38                                          ; $44b0: $ff
	cp $f7                                           ; $44b1: $fe $f7
	rst $38                                          ; $44b3: $ff
	ld sp, $303f                                     ; $44b4: $31 $3f $30
	ld a, e                                          ; $44b7: $7b
	ld e, d                                          ; $44b8: $5a
	ld a, [hl]                                       ; $44b9: $7e
	cpl                                              ; $44ba: $2f
	ld a, d                                          ; $44bb: $7a
	sub d                                            ; $44bc: $92
	add a                                            ; $44bd: $87
	ld a, a                                          ; $44be: $7f
	ccf                                              ; $44bf: $3f
	ccf                                              ; $44c0: $3f

jr_013_44c1:
	add hl, sp                                       ; $44c1: $39
	ccf                                              ; $44c2: $3f
	jr nc, jr_013_44c1                               ; $44c3: $30 $fc

	ldh [$67], a                                     ; $44c5: $e0 $67
	db $fc                                           ; $44c7: $fc
	ld b, a                                          ; $44c8: $47
	db $fc                                           ; $44c9: $fc
	rst SubAFromBC                                          ; $44ca: $e7
	db $fc                                           ; $44cb: $fc
	rst $38                                          ; $44cc: $ff
	cp b                                             ; $44cd: $b8
	ld hl, sp-$80                                    ; $44ce: $f8 $80
	ldh [$80], a                                     ; $44d0: $e0 $80
	rst JumpTable                                          ; $44d2: $c7
	rst JumpTable                                          ; $44d3: $c7
	ret z                                            ; $44d4: $c8

	rst GetHLinHL                                          ; $44d5: $cf
	ld l, a                                          ; $44d6: $6f
	or d                                             ; $44d7: $b2
	sbc l                                            ; $44d8: $9d
	jr z, @-$27                                      ; $44d9: $28 $d7

	ld l, e                                          ; $44db: $6b
	xor b                                            ; $44dc: $a8
	sbc [hl]                                         ; $44dd: $9e
	ld a, $77                                        ; $44de: $3e $77
	ld a, [$059d]                                    ; $44e0: $fa $9d $05
	ld a, [$f26b]                                    ; $44e3: $fa $6b $f2
	sub l                                            ; $44e6: $95
	db $f4                                           ; $44e7: $f4
	nop                                              ; $44e8: $00

jr_013_44e9:
	ret nz                                           ; $44e9: $c0

	sbc a                                            ; $44ea: $9f
	ld h, b                                          ; $44eb: $60
	ld [$e337], sp                                   ; $44ec: $08 $37 $e3
	nop                                              ; $44ef: $00
	ret nc                                           ; $44f0: $d0

	ld a, e                                          ; $44f1: $7b
	push af                                          ; $44f2: $f5
	sbc [hl]                                         ; $44f3: $9e
	ld [$8871], a                                    ; $44f4: $ea $71 $88
	ld d, h                                          ; $44f7: $54
	and h                                            ; $44f8: $a4
	halt                                             ; $44f9: $76
	ld [hl], b                                       ; $44fa: $70
	sbc l                                            ; $44fb: $9d
	db $fd                                           ; $44fc: $fd
	dec de                                           ; $44fd: $1b
	ld a, d                                          ; $44fe: $7a
	rst FarCall                                          ; $44ff: $f7
	ld [hl], l                                       ; $4500: $75
	db $eb                                           ; $4501: $eb
	sbc b                                            ; $4502: $98
	ld sp, hl                                        ; $4503: $f9
	rst JumpTable                                          ; $4504: $c7
	rst JumpTable                                          ; $4505: $c7
	dec de                                           ; $4506: $1b
	dec bc                                           ; $4507: $0b
	dec sp                                           ; $4508: $3b
	dec sp                                           ; $4509: $3b
	ld a, e                                          ; $450a: $7b
	add l                                            ; $450b: $85
	ld a, a                                          ; $450c: $7f
	jr z, jr_013_449a                                ; $450d: $28 $8b

	ld [$0cfb], sp                                   ; $450f: $08 $fb $0c
	cp h                                             ; $4512: $bc
	ld b, a                                          ; $4513: $47
	cp l                                             ; $4514: $bd
	ld b, a                                          ; $4515: $47
	sbc a                                            ; $4516: $9f
	ld h, e                                          ; $4517: $63
	adc [hl]                                         ; $4518: $8e
	ld [hl], d                                       ; $4519: $72
	sbc a                                            ; $451a: $9f
	pop hl                                           ; $451b: $e1
	rst GetHLinHL                                          ; $451c: $cf
	ld [hl], e                                       ; $451d: $73
	rst AddAOntoHL                                          ; $451e: $ef
	ld [hl], d                                       ; $451f: $72
	rst SubAFromBC                                          ; $4520: $e7
	ld a, a                                          ; $4521: $7f
	rst $38                                          ; $4522: $ff
	ld a, d                                          ; $4523: $7a
	ld c, c                                          ; $4524: $49
	sub a                                            ; $4525: $97
	db $fd                                           ; $4526: $fd
	ccf                                              ; $4527: $3f
	di                                               ; $4528: $f3
	ld a, a                                          ; $4529: $7f
	rst $38                                          ; $452a: $ff
	pop hl                                           ; $452b: $e1
	ld a, a                                          ; $452c: $7f
	ret nz                                           ; $452d: $c0

	ld a, c                                          ; $452e: $79
	pop de                                           ; $452f: $d1
	ld a, e                                          ; $4530: $7b
	add $8f                                          ; $4531: $c6 $8f
	rst $38                                          ; $4533: $ff
	add c                                            ; $4534: $81
	rst $38                                          ; $4535: $ff
	add e                                            ; $4536: $83
	rst $38                                          ; $4537: $ff
	cp $01                                           ; $4538: $fe $01
	cp $57                                           ; $453a: $fe $57
	xor b                                            ; $453c: $a8
	dec hl                                           ; $453d: $2b
	call nc, Call_013_6897                           ; $453e: $d4 $97 $68
	ld a, [hl+]                                      ; $4541: $2a
	push de                                          ; $4542: $d5
	halt                                             ; $4543: $76
	jr @+$77                                         ; $4544: $18 $75

	ld b, b                                          ; $4546: $40
	ld a, a                                          ; $4547: $7f
	cp $9b                                           ; $4548: $fe $9b
	add hl, bc                                       ; $454a: $09
	or $22                                           ; $454b: $f6 $22
	db $dd                                           ; $454d: $dd
	ld [hl], a                                       ; $454e: $77
	ld e, $9d                                        ; $454f: $1e $9d
	ld b, a                                          ; $4551: $47
	cp b                                             ; $4552: $b8
	ld a, e                                          ; $4553: $7b
	jr nz, jr_013_44e9                               ; $4554: $20 $93

	db $fc                                           ; $4556: $fc
	ld e, a                                          ; $4557: $5f
	and b                                            ; $4558: $a0
	ld a, a                                          ; $4559: $7f
	add b                                            ; $455a: $80
	xor [hl]                                         ; $455b: $ae
	ld d, b                                          ; $455c: $50
	ld e, l                                          ; $455d: $5d
	and b                                            ; $455e: $a0
	ld [$00f0], sp                                   ; $455f: $08 $f0 $00
	ld a, d                                          ; $4562: $7a
	cp $7c                                           ; $4563: $fe $7c
	ld d, b                                          ; $4565: $50
	sbc l                                            ; $4566: $9d
	db $e4                                           ; $4567: $e4
	dec de                                           ; $4568: $1b
	ld [hl], a                                       ; $4569: $77
	ret c                                            ; $456a: $d8

	ld a, h                                          ; $456b: $7c
	db $ec                                           ; $456c: $ec
	ld a, h                                          ; $456d: $7c
	rst GetHLinHL                                          ; $456e: $cf
	sbc e                                            ; $456f: $9b
	rla                                              ; $4570: $17
	db $10                                           ; $4571: $10
	inc e                                            ; $4572: $1c
	ld hl, sp+$6f                                    ; $4573: $f8 $6f
	ld [hl], a                                       ; $4575: $77
	sbc l                                            ; $4576: $9d
	ld e, b                                          ; $4577: $58
	and a                                            ; $4578: $a7
	ld a, e                                          ; $4579: $7b
	ld h, [hl]                                       ; $457a: $66
	sbc d                                            ; $457b: $9a
	ld [$0cff], sp                                   ; $457c: $08 $ff $0c
	ld d, a                                          ; $457f: $57
	ld b, $67                                        ; $4580: $06 $67
	ld h, l                                          ; $4582: $65
	adc h                                            ; $4583: $8c
	ld b, b                                          ; $4584: $40
	cp a                                             ; $4585: $bf
	db $f4                                           ; $4586: $f4
	dec bc                                           ; $4587: $0b
	ld hl, sp+$07                                    ; $4588: $f8 $07
	ld a, [hl]                                       ; $458a: $7e
	ld bc, $f40b                                     ; $458b: $01 $0b $f4
	ld [hl], l                                       ; $458e: $75
	adc d                                            ; $458f: $8a
	ld a, [de]                                       ; $4590: $1a
	push hl                                          ; $4591: $e5
	ld b, l                                          ; $4592: $45
	cp d                                             ; $4593: $ba
	and b                                            ; $4594: $a0
	ld e, a                                          ; $4595: $5f
	ld a, h                                          ; $4596: $7c
	ld a, d                                          ; $4597: $7a
	inc [hl]                                         ; $4598: $34
	sbc [hl]                                         ; $4599: $9e
	db $fd                                           ; $459a: $fd
	ld l, e                                          ; $459b: $6b
	pop hl                                           ; $459c: $e1
	sbc e                                            ; $459d: $9b
	cp [hl]                                          ; $459e: $be
	ld b, b                                          ; $459f: $40
	ld a, a                                          ; $45a0: $7f
	add b                                            ; $45a1: $80
	ld [hl], h                                       ; $45a2: $74
	ld b, d                                          ; $45a3: $42
	sbc l                                            ; $45a4: $9d
	push de                                          ; $45a5: $d5
	nop                                              ; $45a6: $00
	ld [hl], h                                       ; $45a7: $74
	db $ed                                           ; $45a8: $ed
	ld [hl], h                                       ; $45a9: $74
	ld l, [hl]                                       ; $45aa: $6e
	ld a, [$a098]                                    ; $45ab: $fa $98 $a0
	ld c, [hl]                                       ; $45ae: $4e
	or b                                             ; $45af: $b0
	ld h, b                                          ; $45b0: $60
	add b                                            ; $45b1: $80
	cp d                                             ; $45b2: $ba
	ld b, b                                          ; $45b3: $40
	ld [hl], h                                       ; $45b4: $74
	ld b, [hl]                                       ; $45b5: $46
	sbc c                                            ; $45b6: $99
	inc a                                            ; $45b7: $3c
	ret nz                                           ; $45b8: $c0

	ld [hl], c                                       ; $45b9: $71
	ld c, $0c                                        ; $45ba: $0e $0c
	inc bc                                           ; $45bc: $03
	ld [hl], e                                       ; $45bd: $73
	ld a, [de]                                       ; $45be: $1a
	sub l                                            ; $45bf: $95
	ld hl, sp-$39                                    ; $45c0: $f8 $c7
	db $fc                                           ; $45c2: $fc
	jp $e1f6                                         ; $45c3: $c3 $f6 $e1


	ei                                               ; $45c6: $fb
	ld hl, $f1ff                                     ; $45c7: $21 $ff $f1
	sbc $ff                                          ; $45ca: $de $ff
	add b                                            ; $45cc: $80
	sbc [hl]                                         ; $45cd: $9e
	ldh [c], a                                       ; $45ce: $e2
	sbc $fe                                          ; $45cf: $de $fe
	ld h, a                                          ; $45d1: $67
	ld h, e                                          ; $45d2: $63
	ld a, e                                          ; $45d3: $7b
	scf                                              ; $45d4: $37
	rst SubAFromDE                                          ; $45d5: $df
	db $fc                                           ; $45d6: $fc
	ret nz                                           ; $45d7: $c0

	rst $38                                          ; $45d8: $ff
	rst AddAOntoHL                                          ; $45d9: $ef
	rst $38                                          ; $45da: $ff
	rra                                              ; $45db: $1f
	cp $ed                                           ; $45dc: $fe $ed
	ld sp, hl                                        ; $45de: $f9
	call c, $f63c                                    ; $45df: $dc $3c $f6
	ld c, $ff                                        ; $45e2: $0e $ff
	inc bc                                           ; $45e4: $03
	ld a, a                                          ; $45e5: $7f
	add c                                            ; $45e6: $81
	ccf                                              ; $45e7: $3f
	ret nz                                           ; $45e8: $c0

	ccf                                              ; $45e9: $3f
	pop bc                                           ; $45ea: $c1
	nop                                              ; $45eb: $00
	ld a, d                                          ; $45ec: $7a
	push af                                          ; $45ed: $f5
	sub h                                            ; $45ee: $94
	dec c                                            ; $45ef: $0d
	cp $1f                                           ; $45f0: $fe $1f
	ldh a, [$3c]                                     ; $45f2: $f0 $3c
	rst AddAOntoHL                                          ; $45f4: $ef
	ld e, [hl]                                       ; $45f5: $5e
	ei                                               ; $45f6: $fb
	ld e, a                                          ; $45f7: $5f
	pop af                                           ; $45f8: $f1
	cp a                                             ; $45f9: $bf
	ld a, d                                          ; $45fa: $7a
	ld h, $7f                                        ; $45fb: $26 $7f
	db $eb                                           ; $45fd: $eb
	sub a                                            ; $45fe: $97
	add sp, $17                                      ; $45ff: $e8 $17
	db $fc                                           ; $4601: $fc
	inc bc                                           ; $4602: $03
	ld d, [hl]                                       ; $4603: $56
	ld bc, $ac00                                     ; $4604: $01 $00 $ac
	ld [hl], a                                       ; $4607: $77
	add l                                            ; $4608: $85
	sbc e                                            ; $4609: $9b

jr_013_460a:
	ld hl, $bbde                                     ; $460a: $21 $de $bb
	ld b, h                                          ; $460d: $44
	ld [hl], h                                       ; $460e: $74
	ret z                                            ; $460f: $c8

	sub a                                            ; $4610: $97
	ld d, l                                          ; $4611: $55
	xor b                                            ; $4612: $a8
	add hl, bc                                       ; $4613: $09
	or $04                                           ; $4614: $f6 $04
	ei                                               ; $4616: $fb
	nop                                              ; $4617: $00
	rst $38                                          ; $4618: $ff
	call nz, $c700                                   ; $4619: $c4 $00 $c7
	ld a, [bc]                                       ; $461c: $0a
	sbc b                                            ; $461d: $98
	ld h, d                                          ; $461e: $62
	ld h, e                                          ; $461f: $63
	ld d, $17                                        ; $4620: $16 $17
	jr jr_013_463d                                   ; $4622: $18 $19

	ld a, [de]                                       ; $4624: $1a
	sbc $0a                                          ; $4625: $de $0a
	sbc h                                            ; $4627: $9c
	ld e, $1f                                        ; $4628: $1e $1f
	jr nz, jr_013_460a                               ; $462a: $20 $de

	ld a, [bc]                                       ; $462c: $0a
	add b                                            ; $462d: $80
	ld [hl], d                                       ; $462e: $72
	ld [hl], e                                       ; $462f: $73
	ld [hl], h                                       ; $4630: $74
	ld [hl], l                                       ; $4631: $75
	halt                                             ; $4632: $76
	ld [hl], a                                       ; $4633: $77
	ld [hl+], a                                      ; $4634: $22
	inc hl                                           ; $4635: $23
	inc h                                            ; $4636: $24
	dec h                                            ; $4637: $25
	ld h, $27                                        ; $4638: $26 $27
	jr z, jr_013_4665                                ; $463a: $28 $29

	ld a, [hl+]                                      ; $463c: $2a

jr_013_463d:
	dec hl                                           ; $463d: $2b
	inc l                                            ; $463e: $2c
	ld a, [bc]                                       ; $463f: $0a
	ld a, a                                          ; $4640: $7f
	ld a, [hl]                                       ; $4641: $7e
	ld a, l                                          ; $4642: $7d
	ld a, h                                          ; $4643: $7c
	ld a, e                                          ; $4644: $7b
	ld a, d                                          ; $4645: $7a
	ld a, c                                          ; $4646: $79
	ld a, b                                          ; $4647: $78
	ld l, $2f                                        ; $4648: $2e $2f
	jr nc, jr_013_467d                               ; $464a: $30 $31

	ld [hl-], a                                      ; $464c: $32
	add b                                            ; $464d: $80
	inc sp                                           ; $464e: $33
	inc [hl]                                         ; $464f: $34
	dec [hl]                                         ; $4650: $35
	ld [hl], $37                                     ; $4651: $36 $37
	jr c, jr_013_465f                                ; $4653: $38 $0a

	ld [hl], c                                       ; $4655: $71
	ld [hl], b                                       ; $4656: $70
	ld l, a                                          ; $4657: $6f
	ld l, [hl]                                       ; $4658: $6e
	ld l, l                                          ; $4659: $6d
	ld l, h                                          ; $465a: $6c
	ld l, e                                          ; $465b: $6b
	ld l, d                                          ; $465c: $6a
	ld a, [hl-]                                      ; $465d: $3a
	dec sp                                           ; $465e: $3b

jr_013_465f:
	inc a                                            ; $465f: $3c
	dec a                                            ; $4660: $3d
	ld a, $3f                                        ; $4661: $3e $3f
	ld b, b                                          ; $4663: $40
	ld b, c                                          ; $4664: $41

jr_013_4665:
	ld b, d                                          ; $4665: $42
	ld b, e                                          ; $4666: $43
	ld b, h                                          ; $4667: $44
	ld b, l                                          ; $4668: $45
	ld l, c                                          ; $4669: $69
	ld l, b                                          ; $466a: $68
	ld h, a                                          ; $466b: $67
	ld h, [hl]                                       ; $466c: $66
	add b                                            ; $466d: $80
	ld h, l                                          ; $466e: $65
	ld h, h                                          ; $466f: $64
	ld h, c                                          ; $4670: $61
	ld h, b                                          ; $4671: $60
	ld b, [hl]                                       ; $4672: $46
	ld b, a                                          ; $4673: $47
	add hl, sp                                       ; $4674: $39
	dec l                                            ; $4675: $2d
	ld hl, $1c1d                                     ; $4676: $21 $1d $1c
	dec de                                           ; $4679: $1b
	dec d                                            ; $467a: $15
	inc d                                            ; $467b: $14
	inc de                                           ; $467c: $13

jr_013_467d:
	ld [de], a                                       ; $467d: $12
	dec c                                            ; $467e: $0d
	ld de, $5e5f                                     ; $467f: $11 $5f $5e
	ld e, l                                          ; $4682: $5d
	ld e, h                                          ; $4683: $5c
	ld e, e                                          ; $4684: $5b
	dec bc                                           ; $4685: $0b
	ld de, $0f10                                     ; $4686: $11 $10 $0f
	ld c, $0d                                        ; $4689: $0e $0d
	inc c                                            ; $468b: $0c
	db $10                                           ; $468c: $10
	ld [hl], e                                       ; $468d: $73
	ld hl, sp-$21                                    ; $468e: $f8 $df
	ld bc, $5a96                                     ; $4690: $01 $96 $5a
	ld e, c                                          ; $4693: $59
	ld e, b                                          ; $4694: $58
	ld d, a                                          ; $4695: $57
	inc bc                                           ; $4696: $03
	ld bc, $0102                                     ; $4697: $01 $02 $01
	inc bc                                           ; $469a: $03
	ld [hl], e                                       ; $469b: $73
	cp $77                                           ; $469c: $fe $77
	ld hl, sp-$21                                    ; $469e: $f8 $df
	dec b                                            ; $46a0: $05
	sub d                                            ; $46a1: $92
	ld d, [hl]                                       ; $46a2: $56
	ld d, l                                          ; $46a3: $55
	ld d, h                                          ; $46a4: $54
	ld d, e                                          ; $46a5: $53
	ld d, d                                          ; $46a6: $52
	dec b                                            ; $46a7: $05
	inc b                                            ; $46a8: $04
	dec b                                            ; $46a9: $05
	ld b, $05                                        ; $46aa: $06 $05
	inc bc                                           ; $46ac: $03
	ld bc, $7306                                     ; $46ad: $01 $06 $73
	ld hl, sp-$6a                                    ; $46b0: $f8 $96
	ld [bc], a                                       ; $46b2: $02
	inc bc                                           ; $46b3: $03
	ld d, c                                          ; $46b4: $51
	ld d, b                                          ; $46b5: $50
	ld c, a                                          ; $46b6: $4f
	ld c, [hl]                                       ; $46b7: $4e
	ld c, l                                          ; $46b8: $4d
	ld [bc], a                                       ; $46b9: $02
	rlca                                             ; $46ba: $07
	ld a, e                                          ; $46bb: $7b
	cp $7f                                           ; $46bc: $fe $7f
	ldh a, [c]                                       ; $46be: $f2
	ld a, a                                          ; $46bf: $7f
	reti                                             ; $46c0: $d9


	ld [hl], a                                       ; $46c1: $77
	ld hl, sp-$6a                                    ; $46c2: $f8 $96
	inc b                                            ; $46c4: $04
	ld b, $4c                                        ; $46c5: $06 $4c
	ld c, e                                          ; $46c7: $4b
	ld c, d                                          ; $46c8: $4a
	ld c, c                                          ; $46c9: $49
	ld c, b                                          ; $46ca: $48
	inc b                                            ; $46cb: $04
	ld [$fe7b], sp                                   ; $46cc: $08 $7b $fe
	ld a, a                                          ; $46cf: $7f
	pop af                                           ; $46d0: $f1
	ld a, a                                          ; $46d1: $7f
	reti                                             ; $46d2: $d9


	ld [hl], a                                       ; $46d3: $77
	ld hl, sp-$66                                    ; $46d4: $f8 $9a
	add hl, bc                                       ; $46d6: $09
	ld bc, $0902                                     ; $46d7: $01 $02 $09
	nop                                              ; $46da: $00
	ld c, e                                          ; $46db: $4b
	cp $2c                                           ; $46dc: $fe $2c
	nop                                              ; $46de: $00
	jp nz, $9d22                                     ; $46df: $c2 $22 $9d

	ld h, [hl]                                       ; $46e2: $66
	ld h, l                                          ; $46e3: $65
	ld h, e                                          ; $46e4: $63
	or $9a                                           ; $46e5: $f6 $9a
	ld h, [hl]                                       ; $46e7: $66
	ld [hl+], a                                      ; $46e8: $22
	ld [hl+], a                                      ; $46e9: $22
	daa                                              ; $46ea: $27
	ld [hl], d                                       ; $46eb: $72
	sbc $22                                          ; $46ec: $de $22
	sbc e                                            ; $46ee: $9b
	ld [hl], a                                       ; $46ef: $77
	ld h, [hl]                                       ; $46f0: $66
	ld h, [hl]                                       ; $46f1: $66
	ld h, a                                          ; $46f2: $67
	db $db                                           ; $46f3: $db
	ld [hl], a                                       ; $46f4: $77
	sbc l                                            ; $46f5: $9d
	ld [hl+], a                                      ; $46f6: $22
	ld h, $7b                                        ; $46f7: $26 $7b
	db $ec                                           ; $46f9: $ec
	db $db                                           ; $46fa: $db
	ld [hl+], a                                      ; $46fb: $22
	sbc l                                            ; $46fc: $9d
	ld d, [hl]                                       ; $46fd: $56

Call_013_46fe:
	ld [hl], $63                                     ; $46fe: $36 $63
	ret c                                            ; $4700: $d8

	sbc [hl]                                         ; $4701: $9e
	ld d, [hl]                                       ; $4702: $56
	ld h, e                                          ; $4703: $63
	or $9e                                           ; $4704: $f6 $9e
	ld b, [hl]                                       ; $4706: $46
	add $22                                          ; $4707: $c6 $22
	ld a, c                                          ; $4709: $79
	nop                                              ; $470a: $00
	add b                                            ; $470b: $80
	ld c, [hl]                                       ; $470c: $4e
	or b                                             ; $470d: $b0
	ld h, b                                          ; $470e: $60
	add b                                            ; $470f: $80
	cp d                                             ; $4710: $ba
	ld b, b                                          ; $4711: $40
	call nc, $8000                                   ; $4712: $d4 $00 $80
	add b                                            ; $4715: $80
	db $e4                                           ; $4716: $e4
	ldh [rIE], a                                     ; $4717: $e0 $ff
	ld hl, sp+$0c                                    ; $4719: $f8 $0c
	rst $38                                          ; $471b: $ff
	rst $38                                          ; $471c: $ff
	nop                                              ; $471d: $00
	rst $38                                          ; $471e: $ff
	add b                                            ; $471f: $80
	rst $38                                          ; $4720: $ff
	db $fc                                           ; $4721: $fc
	jp $c0ff                                         ; $4722: $c3 $ff $c0


	rst FarCall                                          ; $4725: $f7
	pop hl                                           ; $4726: $e1
	ei                                               ; $4727: $fb
	inc hl                                           ; $4728: $23
	rst $38                                          ; $4729: $ff
	rst FarCall                                          ; $472a: $f7
	ld a, e                                          ; $472b: $7b
	pop af                                           ; $472c: $f1
	ld l, a                                          ; $472d: $6f
	cp $9d                                           ; $472e: $fe $9d
	inc [hl]                                         ; $4730: $34
	bit 6, a                                         ; $4731: $cb $77
	ld sp, hl                                        ; $4733: $f9
	sub a                                            ; $4734: $97
	ld bc, $0000                                     ; $4735: $01 $00 $00
	inc b                                            ; $4738: $04
	nop                                              ; $4739: $00
	rst $38                                          ; $473a: $ff
	sbc a                                            ; $473b: $9f
	ld h, b                                          ; $473c: $60
	ld h, e                                          ; $473d: $63
	jp hl                                            ; $473e: $e9


	adc l                                            ; $473f: $8d
	nop                                              ; $4740: $00
	cp $1f                                           ; $4741: $fe $1f
	cp $ff                                           ; $4743: $fe $ff
	cp $07                                           ; $4745: $fe $07
	rst $38                                          ; $4747: $ff
	inc bc                                           ; $4748: $03
	rst $38                                          ; $4749: $ff
	ld sp, hl                                        ; $474a: $f9
	rst JumpTable                                          ; $474b: $c7
	rst JumpTable                                          ; $474c: $c7
	dec de                                           ; $474d: $1b
	dec bc                                           ; $474e: $0b
	dec sp                                           ; $474f: $3b
	dec sp                                           ; $4750: $3b
	rrca                                             ; $4751: $0f
	ld a, e                                          ; $4752: $7b
	rst AddAOntoHL                                          ; $4753: $ef
	ld a, a                                          ; $4754: $7f
	cp $80                                           ; $4755: $fe $80
	dec de                                           ; $4757: $1b
	cp $0f                                           ; $4758: $fe $0f
	cp $cf                                           ; $475a: $fe $cf
	db $fc                                           ; $475c: $fc
	rst $38                                          ; $475d: $ff
	ld hl, sp-$01                                    ; $475e: $f8 $ff
	nop                                              ; $4760: $00
	inc bc                                           ; $4761: $03
	inc bc                                           ; $4762: $03
	ld b, $07                                        ; $4763: $06 $07
	db $fc                                           ; $4765: $fc
	rst $38                                          ; $4766: $ff
	inc b                                            ; $4767: $04
	rst $38                                          ; $4768: $ff
	rrca                                             ; $4769: $0f
	ld hl, sp+$1f                                    ; $476a: $f8 $1f
	ld hl, sp+$35                                    ; $476c: $f8 $35
	cp $f6                                           ; $476e: $fe $f6
	rst $38                                          ; $4770: $ff
	rst $38                                          ; $4771: $ff
	dec de                                           ; $4772: $1b
	rst $38                                          ; $4773: $ff
	dec bc                                           ; $4774: $0b
	rst $38                                          ; $4775: $ff
	sub h                                            ; $4776: $94
	add hl, bc                                       ; $4777: $09
	rst $38                                          ; $4778: $ff
	add hl, bc                                       ; $4779: $09
	rst AddAOntoHL                                          ; $477a: $ef
	add hl, de                                       ; $477b: $19
	rst AddAOntoHL                                          ; $477c: $ef
	add hl, de                                       ; $477d: $19
	rst SubAFromDE                                          ; $477e: $df
	ld sp, $f31f                                     ; $477f: $31 $1f $f3
	dec bc                                           ; $4782: $0b
	nop                                              ; $4783: $00
	sub a                                            ; $4784: $97
	ld bc, $0400                                     ; $4785: $01 $00 $04
	dec b                                            ; $4788: $05
	ld b, $02                                        ; $4789: $06 $02
	rlca                                             ; $478b: $07
	inc bc                                           ; $478c: $03
	rlca                                             ; $478d: $07
	nop                                              ; $478e: $00
	sbc e                                            ; $478f: $9b
	ld d, d                                          ; $4790: $52
	ld h, d                                          ; $4791: $62
	ld h, a                                          ; $4792: $67
	ld h, d                                          ; $4793: $62
	or e                                             ; $4794: $b3
	nop                                              ; $4795: $00
	sub h                                            ; $4796: $94
	rst $38                                          ; $4797: $ff
	ld hl, sp+$1d                                    ; $4798: $f8 $1d
	cp $ff                                           ; $479a: $fe $ff
	ld hl, sp-$01                                    ; $479c: $f8 $ff
	ldh a, [rIE]                                     ; $479e: $f0 $ff
	add b                                            ; $47a0: $80
	rst $38                                          ; $47a1: $ff
	cp [hl]                                          ; $47a2: $be
	rst FarCall                                          ; $47a3: $f7
	rst $38                                          ; $47a4: $ff
	ldh [$99], a                                     ; $47a5: $e0 $99
	rst $38                                          ; $47a7: $ff
	ret nz                                           ; $47a8: $c0

	rst $38                                          ; $47a9: $ff
	ldh [rIE], a                                     ; $47aa: $e0 $ff
	pop hl                                           ; $47ac: $e1
	db $dd                                           ; $47ad: $dd
	rst $38                                          ; $47ae: $ff
	add h                                            ; $47af: $84
	rra                                              ; $47b0: $1f
	rst $38                                          ; $47b1: $ff
	rrca                                             ; $47b2: $0f
	reti                                             ; $47b3: $d9


	rrca                                             ; $47b4: $0f
	dec l                                            ; $47b5: $2d
	db $fd                                           ; $47b6: $fd
	ld h, c                                          ; $47b7: $61
	pop hl                                           ; $47b8: $e1
	add a                                            ; $47b9: $87
	add a                                            ; $47ba: $87
	dec de                                           ; $47bb: $1b
	ld e, $e3                                        ; $47bc: $1e $e3
	rst $38                                          ; $47be: $ff
	rlca                                             ; $47bf: $07
	rst $38                                          ; $47c0: $ff
	dec a                                            ; $47c1: $3d
	rst $38                                          ; $47c2: $ff
	db $fd                                           ; $47c3: $fd
	rst $38                                          ; $47c4: $ff
	rst $38                                          ; $47c5: $ff
	nop                                              ; $47c6: $00
	cp a                                             ; $47c7: $bf
	ld b, b                                          ; $47c8: $40
	jp hl                                            ; $47c9: $e9


	inc d                                            ; $47ca: $14
	ld [hl], a                                       ; $47cb: $77
	ld a, [$fc7f]                                    ; $47cc: $fa $7f $fc
	sbc [hl]                                         ; $47cf: $9e
	db $fd                                           ; $47d0: $fd
	cp a                                             ; $47d1: $bf
	rst SubAFromDE                                          ; $47d2: $df
	pop af                                           ; $47d3: $f1
	sub [hl]                                         ; $47d4: $96
	rra                                              ; $47d5: $1f
	or c                                             ; $47d6: $b1
	ld e, a                                          ; $47d7: $5f
	pop hl                                           ; $47d8: $e1
	ccf                                              ; $47d9: $3f
	pop hl                                           ; $47da: $e1
	ccf                                              ; $47db: $3f
	pop bc                                           ; $47dc: $c1
	ld a, a                                          ; $47dd: $7f
	ld [hl], a                                       ; $47de: $77
	cp $94                                           ; $47df: $fe $94
	jp Jump_013_7d7f                                 ; $47e1: $c3 $7f $7d


	rst $38                                          ; $47e4: $ff
	ld a, l                                          ; $47e5: $7d
	rst $38                                          ; $47e6: $ff
	ld a, a                                          ; $47e7: $7f
	rst $38                                          ; $47e8: $ff
	cp $ff                                           ; $47e9: $fe $ff
	ld a, [hl]                                       ; $47eb: $7e
	ld [hl], e                                       ; $47ec: $73
	ld a, [$fc7f]                                    ; $47ed: $fa $7f $fc
	ld a, e                                          ; $47f0: $7b
	jp c, $029e                                      ; $47f1: $da $9e $02

	ld a, e                                          ; $47f4: $7b
	and [hl]                                         ; $47f5: $a6
	sbc d                                            ; $47f6: $9a
	adc b                                            ; $47f7: $88
	rst $38                                          ; $47f8: $ff
	add b                                            ; $47f9: $80
	rst AddAOntoHL                                          ; $47fa: $ef
	sub b                                            ; $47fb: $90
	ld a, e                                          ; $47fc: $7b
	sbc h                                            ; $47fd: $9c
	add b                                            ; $47fe: $80
	add b                                            ; $47ff: $80
	sub $6f                                          ; $4800: $d6 $6f
	db $fd                                           ; $4802: $fd
	ld l, a                                          ; $4803: $6f
	rst AddAOntoHL                                          ; $4804: $ef
	ld a, a                                          ; $4805: $7f
	db $ec                                           ; $4806: $ec
	ld a, a                                          ; $4807: $7f
	rst $38                                          ; $4808: $ff
	ccf                                              ; $4809: $3f
	db $fc                                           ; $480a: $fc
	rra                                              ; $480b: $1f
	ei                                               ; $480c: $fb
	ccf                                              ; $480d: $3f
	db $eb                                           ; $480e: $eb
	ld a, a                                          ; $480f: $7f
	ld a, c                                          ; $4810: $79
	ld sp, hl                                        ; $4811: $f9
	ld sp, hl                                        ; $4812: $f9
	pop hl                                           ; $4813: $e1
	ld a, c                                          ; $4814: $79
	add c                                            ; $4815: $81
	db $fc                                           ; $4816: $fc
	nop                                              ; $4817: $00
	cp $80                                           ; $4818: $fe $80
	ld a, a                                          ; $481a: $7f
	rst $38                                          ; $481b: $ff
	ld h, b                                          ; $481c: $60
	rst $38                                          ; $481d: $ff
	sbc [hl]                                         ; $481e: $9e
	jr nz, jr_013_489c                               ; $481f: $20 $7b

	adc $7f                                          ; $4821: $ce $7f
	ret nz                                           ; $4823: $c0

	sub b                                            ; $4824: $90
	cp l                                             ; $4825: $bd
	rst $38                                          ; $4826: $ff
	jp $fffe                                         ; $4827: $c3 $fe $ff


	db $fc                                           ; $482a: $fc
	rst $38                                          ; $482b: $ff
	ret nz                                           ; $482c: $c0

	ld a, a                                          ; $482d: $7f
	ldh [$3f], a                                     ; $482e: $e0 $3f
	ldh a, [$7b]                                     ; $4830: $f0 $7b
	rst $38                                          ; $4832: $ff
	call nz, $ffd9                                   ; $4833: $c4 $d9 $ff
	cp a                                             ; $4836: $bf
	rst $38                                          ; $4837: $ff
	rst AddAOntoHL                                          ; $4838: $ef
	sbc e                                            ; $4839: $9b
	db $10                                           ; $483a: $10
	ccf                                              ; $483b: $3f
	rst $38                                          ; $483c: $ff
	ld [hl], b                                       ; $483d: $70
	jp c, $99ff                                      ; $483e: $da $ff $99

	or $01                                           ; $4841: $f6 $01
	rst SubAFromDE                                          ; $4843: $df
	jr nz, @+$01                                     ; $4844: $20 $ff

	nop                                              ; $4846: $00
	rrca                                             ; $4847: $0f
	nop                                              ; $4848: $00
	sub e                                            ; $4849: $93
	ld bc, $0302                                     ; $484a: $01 $02 $03
	inc b                                            ; $484d: $04
	dec b                                            ; $484e: $05
	ld b, $07                                        ; $484f: $06 $07
	ld [$0a09], sp                                   ; $4851: $08 $09 $0a
	dec bc                                           ; $4854: $0b
	nop                                              ; $4855: $00
	add hl, bc                                       ; $4856: $09
	nop                                              ; $4857: $00
	sbc c                                            ; $4858: $99
	ld [hl], $25                                     ; $4859: $36 $25
	ld h, d                                          ; $485b: $62
	ld b, [hl]                                       ; $485c: $46
	ld [hl+], a                                      ; $485d: $22
	ld [hl+], a                                      ; $485e: $22
	ld b, h                                          ; $485f: $44
	nop                                              ; $4860: $00
	rst SubAFromDE                                          ; $4861: $df
	add hl, de                                       ; $4862: $19
	rst SubAFromDE                                          ; $4863: $df
	inc bc                                           ; $4864: $03
	add b                                            ; $4865: $80
	rst JumpTable                                          ; $4866: $c7
	add $3f                                          ; $4867: $c6 $3f
	db $fc                                           ; $4869: $fc
	add hl, bc                                       ; $486a: $09
	cp $19                                           ; $486b: $fe $19
	cp $34                                           ; $486d: $fe $34
	rst $38                                          ; $486f: $ff
	or $ff                                           ; $4870: $f6 $ff
	rst $38                                          ; $4872: $ff
	jr @+$01                                         ; $4873: $18 $ff

	rrca                                             ; $4875: $0f
	rst $38                                          ; $4876: $ff
	ld [$0cfb], sp                                   ; $4877: $08 $fb $0c
	cp h                                             ; $487a: $bc
	ld b, a                                          ; $487b: $47
	cp l                                             ; $487c: $bd
	ld b, a                                          ; $487d: $47
	sbc [hl]                                         ; $487e: $9e
	ld h, d                                          ; $487f: $62
	adc [hl]                                         ; $4880: $8e
	ld [hl], d                                       ; $4881: $72
	db $fd                                           ; $4882: $fd
	dec de                                           ; $4883: $1b
	rst $38                                          ; $4884: $ff
	adc l                                            ; $4885: $8d
	rst $38                                          ; $4886: $ff
	cp $07                                           ; $4887: $fe $07
	rst $38                                          ; $4889: $ff
	ld a, a                                          ; $488a: $7f
	add a                                            ; $488b: $87
	add a                                            ; $488c: $87
	dec de                                           ; $488d: $1b
	dec sp                                           ; $488e: $3b
	dec e                                            ; $488f: $1d
	dec l                                            ; $4890: $2d
	dec a                                            ; $4891: $3d
	dec a                                            ; $4892: $3d
	ld a, $c6                                        ; $4893: $3e $c6
	ld sp, hl                                        ; $4895: $f9
	rra                                              ; $4896: $1f
	ldh [$7b], a                                     ; $4897: $e0 $7b
	db $db                                           ; $4899: $db
	sub a                                            ; $489a: $97
	cp b                                             ; $489b: $b8

jr_013_489c:
	rst $38                                          ; $489c: $ff
	cp $f7                                           ; $489d: $fe $f7
	rst $38                                          ; $489f: $ff
	ld sp, $303f                                     ; $48a0: $31 $3f $30
	rlca                                             ; $48a3: $07
	nop                                              ; $48a4: $00
	sbc e                                            ; $48a5: $9b
	ld bc, $0302                                     ; $48a6: $01 $02 $03
	nop                                              ; $48a9: $00
	inc b                                            ; $48aa: $04
	nop                                              ; $48ab: $00
	rst SubAFromDE                                          ; $48ac: $df
	ld h, [hl]                                       ; $48ad: $66
	inc c                                            ; $48ae: $0c
	nop                                              ; $48af: $00
	cp a                                             ; $48b0: $bf
	rst $38                                          ; $48b1: $ff
	rst $38                                          ; $48b2: $ff
	ld a, a                                          ; $48b3: $7f
	db $fd                                           ; $48b4: $fd
	db $ed                                           ; $48b5: $ed
	ld a, e                                          ; $48b6: $7b
	ld [$e47b], a                                    ; $48b7: $ea $7b $e4
	dec b                                            ; $48ba: $05
	nop                                              ; $48bb: $00
	db $f4                                           ; $48bc: $f4
	call nc, $0401                                   ; $48bd: $d4 $01 $04
	nop                                              ; $48c0: $00
	call nc, $b977                                   ; $48c1: $d4 $77 $b9
	nop                                              ; $48c4: $00
	adc d                                            ; $48c5: $8a
	dec l                                            ; $48c6: $2d
	jp nc, $ff00                                     ; $48c7: $d2 $00 $ff

	nop                                              ; $48ca: $00
	rst $38                                          ; $48cb: $ff
	ld [bc], a                                       ; $48cc: $02
	rst $38                                          ; $48cd: $ff
	ld b, d                                          ; $48ce: $42
	rst $38                                          ; $48cf: $ff
	add l                                            ; $48d0: $85
	rst $38                                          ; $48d1: $ff
	and l                                            ; $48d2: $a5
	rst $38                                          ; $48d3: $ff
	or a                                             ; $48d4: $b7
	rst $38                                          ; $48d5: $ff
	db $ed                                           ; $48d6: $ed
	rst $38                                          ; $48d7: $ff
	call $ebff                                       ; $48d8: $cd $ff $eb
	ld a, e                                          ; $48db: $7b
	cp $98                                           ; $48dc: $fe $98
	db $db                                           ; $48de: $db
	rst $38                                          ; $48df: $ff
	or [hl]                                          ; $48e0: $b6
	rst $38                                          ; $48e1: $ff
	cp a                                             ; $48e2: $bf
	rst $38                                          ; $48e3: $ff
	cp $6b                                           ; $48e4: $fe $6b
	ldh a, [$80]                                     ; $48e6: $f0 $80
	ld l, e                                          ; $48e8: $6b
	rst $38                                          ; $48e9: $ff
	ld a, e                                          ; $48ea: $7b
	rst $38                                          ; $48eb: $ff
	ccf                                              ; $48ec: $3f
	rst $38                                          ; $48ed: $ff
	db $fd                                           ; $48ee: $fd
	cp $f0                                           ; $48ef: $fe $f0
	rrca                                             ; $48f1: $0f
	ld b, $f9                                        ; $48f2: $06 $f9
	nop                                              ; $48f4: $00
	rst $38                                          ; $48f5: $ff
	ld hl, sp+$07                                    ; $48f6: $f8 $07
	inc b                                            ; $48f8: $04
	ei                                               ; $48f9: $fb
	nop                                              ; $48fa: $00
	rst $38                                          ; $48fb: $ff
	jr @-$17                                         ; $48fc: $18 $e7

	ld b, $f9                                        ; $48fe: $06 $f9
	ldh a, [rIF]                                     ; $4900: $f0 $0f
	ld a, h                                          ; $4902: $7c
	rst $38                                          ; $4903: $ff
	ld a, [$e0fd]                                    ; $4904: $fa $fd $e0
	sub [hl]                                         ; $4907: $96
	rst $38                                          ; $4908: $ff
	rra                                              ; $4909: $1f
	ldh [$c4], a                                     ; $490a: $e0 $c4
	dec sp                                           ; $490c: $3b
	inc bc                                           ; $490d: $03
	db $fc                                           ; $490e: $fc

jr_013_490f:
	inc a                                            ; $490f: $3c
	jp $b477                                         ; $4910: $c3 $77 $b4


	sbc e                                            ; $4913: $9b
	ld c, $f1                                        ; $4914: $0e $f1
	ldh [$1f], a                                     ; $4916: $e0 $1f
	ld e, a                                          ; $4918: $5f
	ldh a, [$99]                                     ; $4919: $f0 $99
	ld b, h                                          ; $491b: $44
	cp e                                             ; $491c: $bb
	add hl, hl                                       ; $491d: $29
	sub $40                                          ; $491e: $d6 $40
	cp a                                             ; $4920: $bf
	ld [hl], a                                       ; $4921: $77
	add sp, $77                                      ; $4922: $e8 $77
	sbc d                                            ; $4924: $9a
	ld a, a                                          ; $4925: $7f
	sbc [hl]                                         ; $4926: $9e
	sbc d                                            ; $4927: $9a
	xor d                                            ; $4928: $aa
	nop                                              ; $4929: $00
	ld d, l                                          ; $492a: $55
	nop                                              ; $492b: $00
	xor $7b                                          ; $492c: $ee $7b
	db $fc                                           ; $492e: $fc
	sbc [hl]                                         ; $492f: $9e
	cp e                                             ; $4930: $bb
	ld a, e                                          ; $4931: $7b
	rst AddAOntoHL                                          ; $4932: $ef
	sbc b                                            ; $4933: $98
	rst AddAOntoHL                                          ; $4934: $ef
	db $10                                           ; $4935: $10
	ld d, [hl]                                       ; $4936: $56
	xor c                                            ; $4937: $a9
	ld l, e                                          ; $4938: $6b
	rst $38                                          ; $4939: $ff
	ld c, e                                          ; $493a: $4b
	ld a, e                                          ; $493b: $7b
	and d                                            ; $493c: $a2
	ld a, a                                          ; $493d: $7f
	cp $df                                           ; $493e: $fe $df
	rst $38                                          ; $4940: $ff

jr_013_4941:
	sbc c                                            ; $4941: $99
	ldh a, [$cf]                                     ; $4942: $f0 $cf
	add b                                            ; $4944: $80
	ld a, a                                          ; $4945: $7f
	jr c, jr_013_490f                                ; $4946: $38 $c7

	ld h, a                                          ; $4948: $67
	ldh [$9e], a                                     ; $4949: $e0 $9e
	db $eb                                           ; $494b: $eb
	ld [hl], e                                       ; $494c: $73
	call $b79c                                       ; $494d: $cd $9c $b7
	ld c, b                                          ; $4950: $48

jr_013_4951:
	cp e                                             ; $4951: $bb
	ld a, e                                          ; $4952: $7b
	ld a, [hl]                                       ; $4953: $7e
	sbc h                                            ; $4954: $9c
	rst SubAFromDE                                          ; $4955: $df
	rst $38                                          ; $4956: $ff
	jp c, $fe73                                      ; $4957: $da $73 $fe

	ld a, a                                          ; $495a: $7f
	db $f4                                           ; $495b: $f4
	sbc e                                            ; $495c: $9b
	xor a                                            ; $495d: $af
	rst $38                                          ; $495e: $ff
	ld a, [hl+]                                      ; $495f: $2a
	push de                                          ; $4960: $d5
	ld l, a                                          ; $4961: $6f
	or h                                             ; $4962: $b4
	sbc d                                            ; $4963: $9a
	jr nz, @+$01                                     ; $4964: $20 $ff

	ld d, [hl]                                       ; $4966: $56
	rst $38                                          ; $4967: $ff
	ei                                               ; $4968: $fb
	ld a, e                                          ; $4969: $7b
	ld h, [hl]                                       ; $496a: $66
	adc a                                            ; $496b: $8f
	ld [$03f7], sp                                   ; $496c: $08 $f7 $03
	db $fc                                           ; $496f: $fc
	jr nz, jr_013_4951                               ; $4970: $20 $df

	sbc [hl]                                         ; $4972: $9e
	ld h, c                                          ; $4973: $61
	inc bc                                           ; $4974: $03
	db $fc                                           ; $4975: $fc
	db $e4                                           ; $4976: $e4
	dec de                                           ; $4977: $1b
	jr c, jr_013_4941                                ; $4978: $38 $c7

	ldh [$1f], a                                     ; $497a: $e0 $1f
	ld a, [de]                                       ; $497c: $1a
	nop                                              ; $497d: $00
	sbc [hl]                                         ; $497e: $9e
	add hl, bc                                       ; $497f: $09
	sbc $07                                          ; $4980: $de $07
	sub d                                            ; $4982: $92
	ld b, $00                                        ; $4983: $06 $00
	dec bc                                           ; $4985: $0b
	dec bc                                           ; $4986: $0b
	ld a, [bc]                                       ; $4987: $0a
	ld bc, $0802                                     ; $4988: $01 $02 $08
	inc b                                            ; $498b: $04
	inc c                                            ; $498c: $0c
	inc c                                            ; $498d: $0c
	inc bc                                           ; $498e: $03
	dec b                                            ; $498f: $05
	db $dd                                           ; $4990: $dd
	inc c                                            ; $4991: $0c
	ld [hl], a                                       ; $4992: $77
	ei                                               ; $4993: $fb
	ld l, e                                          ; $4994: $6b
	db $fc                                           ; $4995: $fc
	inc b                                            ; $4996: $04
	nop                                              ; $4997: $00
	pop de                                           ; $4998: $d1
	ld [hl], a                                       ; $4999: $77
	daa                                              ; $499a: $27
	dec b                                            ; $499b: $05
	sbc d                                            ; $499c: $9a
	db $ed                                           ; $499d: $ed
	rst $38                                          ; $499e: $ff
	call $ebff                                       ; $499f: $cd $ff $eb
	ld a, e                                          ; $49a2: $7b
	cp $9c                                           ; $49a3: $fe $9c
	ei                                               ; $49a5: $fb
	rst $38                                          ; $49a6: $ff
	or [hl]                                          ; $49a7: $b6
	ld [hl], e                                       ; $49a8: $73
	cp $7f                                           ; $49a9: $fe $7f
	or $7f                                           ; $49ab: $f6 $7f
	ldh a, [$7f]                                     ; $49ad: $f0 $7f
	db $ec                                           ; $49af: $ec
	ld a, a                                          ; $49b0: $7f
	cp $9c                                           ; $49b1: $fe $9c
	db $fd                                           ; $49b3: $fd
	rst $38                                          ; $49b4: $ff
	or l                                             ; $49b5: $b5
	ld a, e                                          ; $49b6: $7b
	cp $9c                                           ; $49b7: $fe $9c
	or a                                             ; $49b9: $b7
	rst $38                                          ; $49ba: $ff
	nop                                              ; $49bb: $00
	ld c, e                                          ; $49bc: $4b
	cp $96                                           ; $49bd: $fe $96
	ld a, [$3af8]                                    ; $49bf: $fa $f8 $3a
	ld hl, sp+$0d                                    ; $49c2: $f8 $0d
	db $fc                                           ; $49c4: $fc
	ld [bc], a                                       ; $49c5: $02
	cp $01                                           ; $49c6: $fe $01
	ld b, e                                          ; $49c8: $43
	and $ff                                          ; $49c9: $e6 $ff
	adc l                                            ; $49cb: $8d

jr_013_49cc:
	adc b                                            ; $49cc: $88
	nop                                              ; $49cd: $00
	ld d, h                                          ; $49ce: $54
	nop                                              ; $49cf: $00
	nop                                              ; $49d0: $00
	rst $38                                          ; $49d1: $ff
	ld c, $f1                                        ; $49d2: $0e $f1
	ldh [$1f], a                                     ; $49d4: $e0 $1f
	rra                                              ; $49d6: $1f
	ldh [$c4], a                                     ; $49d7: $e0 $c4
	dec sp                                           ; $49d9: $3b
	inc bc                                           ; $49da: $03
	db $fc                                           ; $49db: $fc
	inc a                                            ; $49dc: $3c
	jp $e25f                                         ; $49dd: $c3 $5f $e2


	sbc [hl]                                         ; $49e0: $9e
	ldh a, [$fe]                                     ; $49e1: $f0 $fe
	sub h                                            ; $49e3: $94
	xor e                                            ; $49e4: $ab
	nop                                              ; $49e5: $00
	ld d, a                                          ; $49e6: $57
	ld bc, $e030                                     ; $49e7: $01 $30 $e0
	jr nz, jr_013_49cc                               ; $49ea: $20 $e0

	ld h, b                                          ; $49ec: $60
	ret nz                                           ; $49ed: $c0

	ld b, b                                          ; $49ee: $40
	ld a, e                                          ; $49ef: $7b
	cp $df                                           ; $49f0: $fe $df
	add $9a                                          ; $49f2: $c6 $9a
	db $eb                                           ; $49f4: $eb
	rst GetHLinHL                                          ; $49f5: $cf
	rst AddAOntoHL                                          ; $49f6: $ef
	rst GetHLinHL                                          ; $49f7: $cf
	xor $6b                                          ; $49f8: $ee $6b
	sub b                                            ; $49fa: $90
	ld a, a                                          ; $49fb: $7f
	add b                                            ; $49fc: $80
	sbc [hl]                                         ; $49fd: $9e
	cp e                                             ; $49fe: $bb
	ld a, e                                          ; $49ff: $7b
	sub b                                            ; $4a00: $90
	sub [hl]                                         ; $4a01: $96
	or h                                             ; $4a02: $b4
	rst $38                                          ; $4a03: $ff
	ld c, $05                                        ; $4a04: $0e $05
	inc b                                            ; $4a06: $04
	rlca                                             ; $4a07: $07
	ld b, $03                                        ; $4a08: $06 $03
	ld [bc], a                                       ; $4a0a: $02
	ld [hl], e                                       ; $4a0b: $73
	cp $df                                           ; $4a0c: $fe $df
	dec de                                           ; $4a0e: $1b
	sub a                                            ; $4a0f: $97
	ccf                                              ; $4a10: $3f
	dec sp                                           ; $4a11: $3b
	ld l, [hl]                                       ; $4a12: $6e
	sub c                                            ; $4a13: $91
	ld d, l                                          ; $4a14: $55
	xor d                                            ; $4a15: $aa
	pop de                                           ; $4a16: $d1
	ld l, $6f                                        ; $4a17: $2e $6f
	cp h                                             ; $4a19: $bc
	sbc [hl]                                         ; $4a1a: $9e
	ldh [$7b], a                                     ; $4a1b: $e0 $7b
	ld l, d                                          ; $4a1d: $6a
	ld a, a                                          ; $4a1e: $7f
	ldh a, [c]                                       ; $4a1f: $f2
	sub [hl]                                         ; $4a20: $96
	ld l, l                                          ; $4a21: $6d
	sub d                                            ; $4a22: $92
	ld [hl+], a                                      ; $4a23: $22
	db $dd                                           ; $4a24: $dd
	nop                                              ; $4a25: $00
	rst $38                                          ; $4a26: $ff
	jr nz, @+$01                                     ; $4a27: $20 $ff

	and a                                            ; $4a29: $a7
	sbc $ff                                          ; $4a2a: $de $ff
	ld a, a                                          ; $4a2c: $7f
	ldh a, [$9a]                                     ; $4a2d: $f0 $9a
	xor a                                            ; $4a2f: $af
	rst $38                                          ; $4a30: $ff
	xor [hl]                                         ; $4a31: $ae
	rst $38                                          ; $4a32: $ff
	jp c, $fe7b                                      ; $4a33: $da $7b $fe

	sbc [hl]                                         ; $4a36: $9e
	ld e, d                                          ; $4a37: $5a
	ld a, e                                          ; $4a38: $7b
	cp $9c                                           ; $4a39: $fe $9c
	ld e, e                                          ; $4a3b: $5b
	rst $38                                          ; $4a3c: $ff
	ld l, e                                          ; $4a3d: $6b
	ld h, e                                          ; $4a3e: $63
	ldh [rPCM34], a                                  ; $4a3f: $e0 $77
	cp $90                                           ; $4a41: $fe $90
	ld d, d                                          ; $4a43: $52
	rst $38                                          ; $4a44: $ff
	push de                                          ; $4a45: $d5
	rst $38                                          ; $4a46: $ff
	or l                                             ; $4a47: $b5
	ld c, d                                          ; $4a48: $4a
	xor c                                            ; $4a49: $a9
	ld d, [hl]                                       ; $4a4a: $56
	ld [bc], a                                       ; $4a4b: $02
	db $fd                                           ; $4a4c: $fd
	ld [bc], a                                       ; $4a4d: $02
	rst $38                                          ; $4a4e: $ff
	ld [de], a                                       ; $4a4f: $12
	rst $38                                          ; $4a50: $ff
	sub a                                            ; $4a51: $97
	ld a, e                                          ; $4a52: $7b
	sub [hl]                                         ; $4a53: $96
	add b                                            ; $4a54: $80
	db $db                                           ; $4a55: $db
	rst $38                                          ; $4a56: $ff
	dec h                                            ; $4a57: $25
	jp c, $df20                                      ; $4a58: $da $20 $df

	ld [bc], a                                       ; $4a5b: $02
	db $fd                                           ; $4a5c: $fd
	db $10                                           ; $4a5d: $10
	rst $38                                          ; $4a5e: $ff
	ret nc                                           ; $4a5f: $d0

	rst $38                                          ; $4a60: $ff

jr_013_4a61:
	add $ff                                          ; $4a61: $c6 $ff
	call nc, $d9ff                                   ; $4a63: $d4 $ff $d9
	rst $38                                          ; $4a66: $ff
	ret nz                                           ; $4a67: $c0

	nop                                              ; $4a68: $00
	jr c, jr_013_4a6b                                ; $4a69: $38 $00

jr_013_4a6b:
	sbc a                                            ; $4a6b: $9f
	nop                                              ; $4a6c: $00
	ld h, e                                          ; $4a6d: $63
	nop                                              ; $4a6e: $00
	adc a                                            ; $4a6f: $8f
	add b                                            ; $4a70: $80

jr_013_4a71:
	ld [hl], b                                       ; $4a71: $70
	ldh a, [rIF]                                     ; $4a72: $f0 $0f
	ld e, e                                          ; $4a74: $5b
	ld [hl-], a                                      ; $4a75: $32
	sub c                                            ; $4a76: $91
	inc bc                                           ; $4a77: $03
	nop                                              ; $4a78: $00
	ret nz                                           ; $4a79: $c0

	nop                                              ; $4a7a: $00
	ld a, [$f5c0]                                    ; $4a7b: $fa $c0 $f5
	ldh [rLY], a                                     ; $4a7e: $e0 $44
	cp e                                             ; $4a80: $bb
	add hl, hl                                       ; $4a81: $29
	sub $40                                          ; $4a82: $d6 $40
	cp a                                             ; $4a84: $bf
	ld l, a                                          ; $4a85: $6f
	db $ec                                           ; $4a86: $ec
	ld a, a                                          ; $4a87: $7f
	cp d                                             ; $4a88: $ba
	add b                                            ; $4a89: $80
	and l                                            ; $4a8a: $a5
	rst $38                                          ; $4a8b: $ff
	ld [$03f7], sp                                   ; $4a8c: $08 $f7 $03
	db $fc                                           ; $4a8f: $fc
	jr nz, jr_013_4a71                               ; $4a90: $20 $df

	sbc [hl]                                         ; $4a92: $9e
	ld h, c                                          ; $4a93: $61
	inc bc                                           ; $4a94: $03
	db $fc                                           ; $4a95: $fc
	db $e4                                           ; $4a96: $e4
	dec de                                           ; $4a97: $1b
	jr c, jr_013_4a61                                ; $4a98: $38 $c7

	ldh [$1f], a                                     ; $4a9a: $e0 $1f
	rlca                                             ; $4a9c: $07
	nop                                              ; $4a9d: $00
	inc a                                            ; $4a9e: $3c
	nop                                              ; $4a9f: $00
	ld sp, hl                                        ; $4aa0: $f9
	nop                                              ; $4aa1: $00
	add $00                                          ; $4aa2: $c6 $00
	pop af                                           ; $4aa4: $f1
	ld bc, $0f0e                                     ; $4aa5: $01 $0e $0f
	ldh a, [$7b]                                     ; $4aa8: $f0 $7b
	call c, Call_013_5f96                            ; $4aaa: $dc $96 $5f
	rra                                              ; $4aad: $1f
	ld e, h                                          ; $4aae: $5c
	rra                                              ; $4aaf: $1f
	or b                                             ; $4ab0: $b0
	ccf                                              ; $4ab1: $3f
	ld b, b                                          ; $4ab2: $40
	ld a, a                                          ; $4ab3: $7f
	add b                                            ; $4ab4: $80
	ld l, e                                          ; $4ab5: $6b
	cp b                                             ; $4ab6: $b8
	sbc d                                            ; $4ab7: $9a
	xor d                                            ; $4ab8: $aa
	nop                                              ; $4ab9: $00
	ld d, l                                          ; $4aba: $55
	nop                                              ; $4abb: $00
	xor $7b                                          ; $4abc: $ee $7b
	db $fc                                           ; $4abe: $fc
	sbc [hl]                                         ; $4abf: $9e
	cp e                                             ; $4ac0: $bb
	ld a, e                                          ; $4ac1: $7b
	di                                               ; $4ac2: $f3
	add b                                            ; $4ac3: $80
	rst AddAOntoHL                                          ; $4ac4: $ef

jr_013_4ac5:
	db $10                                           ; $4ac5: $10
	ld d, [hl]                                       ; $4ac6: $56
	xor c                                            ; $4ac7: $a9
	rlca                                             ; $4ac8: $07
	inc bc                                           ; $4ac9: $03

Jump_013_4aca:
	inc c                                            ; $4aca: $0c
	rlca                                             ; $4acb: $07
	jr c, jr_013_4aed                                ; $4acc: $38 $1f

Jump_013_4ace:
	ldh [$7f], a                                     ; $4ace: $e0 $7f
	add b                                            ; $4ad0: $80
	cp a                                             ; $4ad1: $bf
	ld b, b                                          ; $4ad2: $40
	rst SubAFromDE                                          ; $4ad3: $df
	jr nz, jr_013_4ac5                               ; $4ad4: $20 $ef

	db $10                                           ; $4ad6: $10
	rst FarCall                                          ; $4ad7: $f7
	ret nz                                           ; $4ad8: $c0

	add b                                            ; $4ad9: $80
	ld h, b                                          ; $4ada: $60
	ld b, b                                          ; $4adb: $40
	jr nc, jr_013_4afe                               ; $4adc: $30 $20

	db $10                                           ; $4ade: $10
	db $10                                           ; $4adf: $10
	ccf                                              ; $4ae0: $3f
	ld de, $7f7e                                     ; $4ae1: $11 $7e $7f
	ld [$b252], a                                    ; $4ae4: $ea $52 $b2
	sub d                                            ; $4ae7: $92
	ccf                                              ; $4ae8: $3f
	nop                                              ; $4ae9: $00
	rst $38                                          ; $4aea: $ff
	ld a, a                                          ; $4aeb: $7f
	rst $38                                          ; $4aec: $ff

jr_013_4aed:
	rst $38                                          ; $4aed: $ff
	dec l                                            ; $4aee: $2d
	jp nc, $df20                                     ; $4aef: $d2 $20 $df

	ld h, $ff                                        ; $4af2: $26 $ff
	rla                                              ; $4af4: $17
	ld a, e                                          ; $4af5: $7b
	ld [hl], $7e                                     ; $4af6: $36 $7e
	sub $9e                                          ; $4af8: $d6 $9e
	db $f4                                           ; $4afa: $f4
	ld a, e                                          ; $4afb: $7b
	ld b, b                                          ; $4afc: $40
	sbc h                                            ; $4afd: $9c

jr_013_4afe:
	adc e                                            ; $4afe: $8b
	rst $38                                          ; $4aff: $ff
	sbc e                                            ; $4b00: $9b
	ld a, e                                          ; $4b01: $7b
	cp $7e                                           ; $4b02: $fe $7e
	call nc, $f67f                                   ; $4b04: $d4 $7f $f6
	sbc c                                            ; $4b07: $99
	rst SubAFromDE                                          ; $4b08: $df
	rst $38                                          ; $4b09: $ff
	cp a                                             ; $4b0a: $bf
	rst $38                                          ; $4b0b: $ff
	rst $38                                          ; $4b0c: $ff
	cp $67                                           ; $4b0d: $fe $67
	ret nc                                           ; $4b0f: $d0

	ld a, a                                          ; $4b10: $7f
	sbc [hl]                                         ; $4b11: $9e
	rst $38                                          ; $4b12: $ff
	sub b                                            ; $4b13: $90
	rrca                                             ; $4b14: $0f
	nop                                              ; $4b15: $00
	rst $38                                          ; $4b16: $ff
	add a                                            ; $4b17: $87
	ld a, [hl+]                                      ; $4b18: $2a
	push de                                          ; $4b19: $d5
	nop                                              ; $4b1a: $00
	rst $38                                          ; $4b1b: $ff
	db $10                                           ; $4b1c: $10
	rst $38                                          ; $4b1d: $ff
	cp b                                             ; $4b1e: $b8
	rst $38                                          ; $4b1f: $ff
	ld [$56ff], a                                    ; $4b20: $ea $ff $56
	ld a, d                                          ; $4b23: $7a
	xor h                                            ; $4b24: $ac
	sbc [hl]                                         ; $4b25: $9e
	jp hl                                            ; $4b26: $e9


	ld a, e                                          ; $4b27: $7b
	sub $7e                                          ; $4b28: $d6 $7e
	and h                                            ; $4b2a: $a4
	ld a, a                                          ; $4b2b: $7f
	sub $76                                          ; $4b2c: $d6 $76
	sbc $7f                                          ; $4b2e: $de $7f
	cp $7f                                           ; $4b30: $fe $7f
	db $f4                                           ; $4b32: $f4
	ld a, [hl]                                       ; $4b33: $7e
	jp nc, $e7df                                     ; $4b34: $d2 $df $e7

	ld a, [hl]                                       ; $4b37: $7e
	ld h, c                                          ; $4b38: $61
	sub l                                            ; $4b39: $95
	ld hl, sp-$10                                    ; $4b3a: $f8 $f0
	db $fc                                           ; $4b3c: $fc
	ld hl, sp-$22                                    ; $4b3d: $f8 $de
	db $f4                                           ; $4b3f: $f4
	or a                                             ; $4b40: $b7
	db $e3                                           ; $4b41: $e3
	pop hl                                           ; $4b42: $e1
	ret nz                                           ; $4b43: $c0

	sbc $80                                          ; $4b44: $de $80
	sbc [hl]                                         ; $4b46: $9e
	ld a, a                                          ; $4b47: $7f
	ld a, d                                          ; $4b48: $7a
	or h                                             ; $4b49: $b4
	sbc b                                            ; $4b4a: $98
	rst SubAFromDE                                          ; $4b4b: $df
	xor $11                                          ; $4b4c: $ee $11
	rlca                                             ; $4b4e: $07
	ld hl, sp+$00                                    ; $4b4f: $f8 $00
	rst $38                                          ; $4b51: $ff
	ld [hl], a                                       ; $4b52: $77
	jr nc, jr_013_4bbc                               ; $4b53: $30 $67

	or b                                             ; $4b55: $b0
	ld a, a                                          ; $4b56: $7f
	ld c, b                                          ; $4b57: $48
	ld a, d                                          ; $4b58: $7a
	dec [hl]                                         ; $4b59: $35
	ld a, a                                          ; $4b5a: $7f
	cp $63                                           ; $4b5b: $fe $63
	ld [hl], b                                       ; $4b5d: $70
	sbc [hl]                                         ; $4b5e: $9e

jr_013_4b5f:
	jr nz, jr_013_4b5f                               ; $4b5f: $20 $fe

	ld a, e                                          ; $4b61: $7b
	ld l, [hl]                                       ; $4b62: $6e
	ld a, e                                          ; $4b63: $7b
	db $fd                                           ; $4b64: $fd
	ld l, a                                          ; $4b65: $6f
	cp $9b                                           ; $4b66: $fe $9b
	dec b                                            ; $4b68: $05
	nop                                              ; $4b69: $00
	ldh [rP1], a                                     ; $4b6a: $e0 $00
	ld a, e                                          ; $4b6c: $7b
	add e                                            ; $4b6d: $83
	sbc [hl]                                         ; $4b6e: $9e
	db $fc                                           ; $4b6f: $fc
	ld e, a                                          ; $4b70: $5f
	ld d, b                                          ; $4b71: $50
	ld [hl], a                                       ; $4b72: $77
	jp nc, $ffdf                                     ; $4b73: $d2 $df $ff

	sub [hl]                                         ; $4b76: $96
	or e                                             ; $4b77: $b3
	ret nz                                           ; $4b78: $c0

	rst SubAFromBC                                          ; $4b79: $e7
	nop                                              ; $4b7a: $00
	adc $00                                          ; $4b7b: $ce $00
	rst SubAFromDE                                          ; $4b7d: $df
	ldh [c], a                                       ; $4b7e: $e2
	ld a, [$9c7b]                                    ; $4b7f: $fa $7b $9c
	adc h                                            ; $4b82: $8c
	ld sp, hl                                        ; $4b83: $f9
	ld hl, sp-$01                                    ; $4b84: $f8 $ff
	rst $38                                          ; $4b86: $ff
	ld a, a                                          ; $4b87: $7f
	nop                                              ; $4b88: $00
	adc a                                            ; $4b89: $8f
	ldh a, [$fc]                                     ; $4b8a: $f0 $fc
	rst $38                                          ; $4b8c: $ff
	sbc a                                            ; $4b8d: $9f
	ld a, a                                          ; $4b8e: $7f
	rla                                              ; $4b8f: $17
	rrca                                             ; $4b90: $0f
	adc e                                            ; $4b91: $8b
	rlca                                             ; $4b92: $07
	db $db                                           ; $4b93: $db
	rst SubAFromBC                                          ; $4b94: $e7
	scf                                              ; $4b95: $37
	ld [hl], a                                       ; $4b96: $77
	ret c                                            ; $4b97: $d8

	sbc $ff                                          ; $4b98: $de $ff
	db $fd                                           ; $4b9a: $fd
	ld [hl], a                                       ; $4b9b: $77
	ld sp, hl                                        ; $4b9c: $f9
	ld [hl], l                                       ; $4b9d: $75
	ld [$f057], a                                    ; $4b9e: $ea $57 $f0
	ld a, [hl]                                       ; $4ba1: $7e
	halt                                             ; $4ba2: $76
	ld a, a                                          ; $4ba3: $7f
	xor h                                            ; $4ba4: $ac
	add b                                            ; $4ba5: $80
	pop af                                           ; $4ba6: $f1
	rrca                                             ; $4ba7: $0f
	ccf                                              ; $4ba8: $3f
	rst $38                                          ; $4ba9: $ff
	ld sp, hl                                        ; $4baa: $f9
	cp $e8                                           ; $4bab: $fe $e8
	ldh a, [$d1]                                     ; $4bad: $f0 $d1
	ldh [$db], a                                     ; $4baf: $e0 $db
	rst SubAFromBC                                          ; $4bb1: $e7
	db $ec                                           ; $4bb2: $ec
	rst $38                                          ; $4bb3: $ff
	push hl                                          ; $4bb4: $e5
	inc bc                                           ; $4bb5: $03
	di                                               ; $4bb6: $f3
	nop                                              ; $4bb7: $00
	ld a, c                                          ; $4bb8: $79
	nop                                              ; $4bb9: $00
	ei                                               ; $4bba: $fb
	ld b, a                                          ; $4bbb: $47

jr_013_4bbc:
	ld e, a                                          ; $4bbc: $5f
	rrca                                             ; $4bbd: $0f
	ccf                                              ; $4bbe: $3f
	rra                                              ; $4bbf: $1f
	rst SubAFromDE                                          ; $4bc0: $df
	rra                                              ; $4bc1: $1f
	rst $38                                          ; $4bc2: $ff
	rst $38                                          ; $4bc3: $ff
	inc bc                                           ; $4bc4: $03
	sub e                                            ; $4bc5: $93
	ld bc, $0206                                     ; $4bc6: $01 $06 $02
	inc c                                            ; $4bc9: $0c
	inc b                                            ; $4bca: $04
	ld [$dc08], sp                                   ; $4bcb: $08 $08 $dc
	adc b                                            ; $4bce: $88
	ld a, [hl]                                       ; $4bcf: $7e
	ld hl, sp+$07                                    ; $4bd0: $f8 $07
	ld e, d                                          ; $4bd2: $5a
	and b                                            ; $4bd3: $a0
	sbc [hl]                                         ; $4bd4: $9e
	db $eb                                           ; $4bd5: $eb
	ld [hl], e                                       ; $4bd6: $73
	ld a, e                                          ; $4bd7: $7b
	sbc l                                            ; $4bd8: $9d
	or a                                             ; $4bd9: $b7
	ld c, b                                          ; $4bda: $48
	ld e, d                                          ; $4bdb: $5a
	sub b                                            ; $4bdc: $90
	sbc d                                            ; $4bdd: $9a
	rlca                                             ; $4bde: $07
	rst AddAOntoHL                                          ; $4bdf: $ef
	jr jr_013_4c3e                                   ; $4be0: $18 $5c

	or b                                             ; $4be2: $b0
	reti                                             ; $4be3: $d9


	rst $38                                          ; $4be4: $ff
	sbc [hl]                                         ; $4be5: $9e
	cp $7b                                           ; $4be6: $fe $7b
	xor h                                            ; $4be8: $ac
	ld a, a                                          ; $4be9: $7f
	cp $9d                                           ; $4bea: $fe $9d
	ei                                               ; $4bec: $fb
	cp $d9                                           ; $4bed: $fe $d9
	rst $38                                          ; $4bef: $ff
	sub a                                            ; $4bf0: $97
	cpl                                              ; $4bf1: $2f
	rra                                              ; $4bf2: $1f
	di                                               ; $4bf3: $f3
	rrca                                             ; $4bf4: $0f
	jp $2b3f                                         ; $4bf5: $c3 $3f $2b


	rst SubAFromDE                                          ; $4bf8: $df
	ld e, e                                          ; $4bf9: $5b
	ret nc                                           ; $4bfa: $d0

	ld a, [hl]                                       ; $4bfb: $7e
	add c                                            ; $4bfc: $81
	sbc c                                            ; $4bfd: $99
	db $10                                           ; $4bfe: $10
	ld e, $09                                        ; $4bff: $1e $09
	ei                                               ; $4c01: $fb
	rst $38                                          ; $4c02: $ff
	push af                                          ; $4c03: $f5
	ld a, c                                          ; $4c04: $79
	xor d                                            ; $4c05: $aa
	adc h                                            ; $4c06: $8c
	rst AddAOntoHL                                          ; $4c07: $ef
	rra                                              ; $4c08: $1f
	add hl, de                                       ; $4c09: $19
	rst SubAFromBC                                          ; $4c0a: $e7
	rst JumpTable                                          ; $4c0b: $c7
	jr c, jr_013_4c4a                                ; $4c0c: $38 $3c

	jp $3ec1                                         ; $4c0e: $c3 $c1 $3e


	dec [hl]                                         ; $4c11: $35
	scf                                              ; $4c12: $37
	dec c                                            ; $4c13: $0d
	rlca                                             ; $4c14: $07
	sbc e                                            ; $4c15: $9b
	rrca                                             ; $4c16: $0f
	dec sp                                           ; $4c17: $3b
	rra                                              ; $4c18: $1f
	ld a, e                                          ; $4c19: $7b
	ld a, d                                          ; $4c1a: $7a
	ld [hl], h                                       ; $4c1b: $74
	sub a                                            ; $4c1c: $97
	db $fd                                           ; $4c1d: $fd
	ld e, $18                                        ; $4c1e: $1e $18
	rrca                                             ; $4c20: $0f
	ld a, a                                          ; $4c21: $7f
	rst $38                                          ; $4c22: $ff
	ld b, b                                          ; $4c23: $40
	ccf                                              ; $4c24: $3f
	ld [hl], a                                       ; $4c25: $77
	call z, $fc7f                                    ; $4c26: $cc $7f $fc
	sbc [hl]                                         ; $4c29: $9e
	push af                                          ; $4c2a: $f5
	ld a, e                                          ; $4c2b: $7b
	sub b                                            ; $4c2c: $90
	sbc l                                            ; $4c2d: $9d
	ei                                               ; $4c2e: $fb
	inc b                                            ; $4c2f: $04
	db $dd                                           ; $4c30: $dd
	rst $38                                          ; $4c31: $ff
	sbc e                                            ; $4c32: $9b
	pop bc                                           ; $4c33: $c1
	cp $27                                           ; $4c34: $fe $27
	ret c                                            ; $4c36: $d8

	ld a, e                                          ; $4c37: $7b
	sub c                                            ; $4c38: $91
	ld a, [hl]                                       ; $4c39: $7e
	xor c                                            ; $4c3a: $a9
	sbc c                                            ; $4c3b: $99
	rrca                                             ; $4c3c: $0f
	rlca                                             ; $4c3d: $07

jr_013_4c3e:
	ld hl, sp-$11                                    ; $4c3e: $f8 $ef
	rst $38                                          ; $4c40: $ff
	rst GetHLinHL                                          ; $4c41: $cf
	sbc $ff                                          ; $4c42: $de $ff
	ld a, [hl]                                       ; $4c44: $7e
	ld d, [hl]                                       ; $4c45: $56
	ld a, a                                          ; $4c46: $7f
	or e                                             ; $4c47: $b3
	ld a, l                                          ; $4c48: $7d
	pop af                                           ; $4c49: $f1

jr_013_4c4a:
	ld [hl], h                                       ; $4c4a: $74
	ld hl, sp-$65                                    ; $4c4b: $f8 $9b
	ldh [$fe], a                                     ; $4c4d: $e0 $fe
	dec e                                            ; $4c4f: $1d
	ldh [$6f], a                                     ; $4c50: $e0 $6f
	ret nc                                           ; $4c52: $d0

	sbc [hl]                                         ; $4c53: $9e
	ld e, a                                          ; $4c54: $5f
	ld a, e                                          ; $4c55: $7b
	ret nc                                           ; $4c56: $d0

	sbc d                                            ; $4c57: $9a
	ld d, a                                          ; $4c58: $57
	xor b                                            ; $4c59: $a8
	cp a                                             ; $4c5a: $bf
	rra                                              ; $4c5b: $1f

jr_013_4c5c:
	ld a, a                                          ; $4c5c: $7f
	ld a, e                                          ; $4c5d: $7b
	or [hl]                                          ; $4c5e: $b6
	sbc d                                            ; $4c5f: $9a
	add e                                            ; $4c60: $83
	ld a, a                                          ; $4c61: $7f
	xor e                                            ; $4c62: $ab
	nop                                              ; $4c63: $00

jr_013_4c64:
	ld d, [hl]                                       ; $4c64: $56
	ld a, e                                          ; $4c65: $7b
	ldh a, [$9b]                                     ; $4c66: $f0 $9b
	ld l, e                                          ; $4c68: $6b
	sub h                                            ; $4c69: $94
	dec l                                            ; $4c6a: $2d
	jp nc, $a875                                     ; $4c6b: $d2 $75 $a8

	sbc h                                            ; $4c6e: $9c
	ld a, [bc]                                       ; $4c6f: $0a
	rst $38                                          ; $4c70: $ff
	ld a, e                                          ; $4c71: $7b
	ld l, b                                          ; $4c72: $68
	sub b                                            ; $4c73: $90
	ld a, [hl]                                       ; $4c74: $7e
	ld [hl], h                                       ; $4c75: $74
	sbc d                                            ; $4c76: $9a
	dec b                                            ; $4c77: $05
	rst $38                                          ; $4c78: $ff
	inc bc                                           ; $4c79: $03
	rst $38                                          ; $4c7a: $ff
	ld b, $7a                                        ; $4c7b: $06 $7a
	ld b, d                                          ; $4c7d: $42
	ld a, l                                          ; $4c7e: $7d

jr_013_4c7f:
	jr nc, jr_013_4cff                               ; $4c7f: $30 $7e

	inc e                                            ; $4c81: $1c
	ld a, a                                          ; $4c82: $7f
	ld [$2e7d], a                                    ; $4c83: $ea $7d $2e
	sbc [hl]                                         ; $4c86: $9e
	ld c, e                                          ; $4c87: $4b
	ld a, e                                          ; $4c88: $7b
	db $fc                                           ; $4c89: $fc
	ld a, a                                          ; $4c8a: $7f
	cp $df                                           ; $4c8b: $fe $df
	rst $38                                          ; $4c8d: $ff
	sbc c                                            ; $4c8e: $99
	ldh a, [$cf]                                     ; $4c8f: $f0 $cf
	add b                                            ; $4c91: $80
	ld a, a                                          ; $4c92: $7f
	jr c, jr_013_4c5c                                ; $4c93: $38 $c7

	ld a, d                                          ; $4c95: $7a
	cp $51                                           ; $4c96: $fe $51
	add b                                            ; $4c98: $80
	rst SubAFromDE                                          ; $4c99: $df
	rst $38                                          ; $4c9a: $ff
	ld a, l                                          ; $4c9b: $7d
	ld [hl-], a                                      ; $4c9c: $32
	ld d, a                                          ; $4c9d: $57
	ldh a, [$7f]                                     ; $4c9e: $f0 $7f
	add b                                            ; $4ca0: $80
	rst SubAFromDE                                          ; $4ca1: $df
	rst $38                                          ; $4ca2: $ff
	ld d, a                                          ; $4ca3: $57
	ldh a, [$9e]                                     ; $4ca4: $f0 $9e
	cp [hl]                                          ; $4ca6: $be
	ld a, e                                          ; $4ca7: $7b
	ld b, $7f                                        ; $4ca8: $06 $7f
	or b                                             ; $4caa: $b0
	sub d                                            ; $4cab: $92
	adc c                                            ; $4cac: $89
	halt                                             ; $4cad: $76
	jr nc, jr_013_4c7f                               ; $4cae: $30 $cf

	rst GetHLinHL                                          ; $4cb0: $cf
	jr nc, jr_013_4c64                               ; $4cb1: $30 $b1

	ld c, [hl]                                       ; $4cb3: $4e
	nop                                              ; $4cb4: $00
	rst $38                                          ; $4cb5: $ff
	or [hl]                                          ; $4cb6: $b6
	rst $38                                          ; $4cb7: $ff
	sub $7b                                          ; $4cb8: $d6 $7b
	cp $9e                                           ; $4cba: $fe $9e
	and $de                                          ; $4cbc: $e6 $de
	rst $38                                          ; $4cbe: $ff
	sbc b                                            ; $4cbf: $98
	add a                                            ; $4cc0: $87
	ld a, a                                          ; $4cc1: $7f
	ld h, b                                          ; $4cc2: $60
	sbc a                                            ; $4cc3: $9f
	rrca                                             ; $4cc4: $0f
	ldh a, [$ad]                                     ; $4cc5: $f0 $ad
	ld [hl], b                                       ; $4cc7: $70
	add b                                            ; $4cc8: $80
	ld a, a                                          ; $4cc9: $7f
	jp z, $fa9e                                      ; $4cca: $ca $9e $fa

	ld a, e                                          ; $4ccd: $7b
	and $8b                                          ; $4cce: $e6 $8b
	halt                                             ; $4cd0: $76
	rst $38                                          ; $4cd1: $ff
	rrca                                             ; $4cd2: $0f
	rst $38                                          ; $4cd3: $ff
	ld a, l                                          ; $4cd4: $7d
	rst $38                                          ; $4cd5: $ff
	ld a, [$e6fe]                                    ; $4cd6: $fa $fe $e6
	db $fc                                           ; $4cd9: $fc
	inc e                                            ; $4cda: $1c
	db $e4                                           ; $4cdb: $e4
	call z, $0c38                                    ; $4cdc: $cc $38 $0c
	ld hl, sp+$38                                    ; $4cdf: $f8 $38
	ret z                                            ; $4ce1: $c8

	add hl, bc                                       ; $4ce2: $09
	ld hl, sp-$05                                    ; $4ce3: $f8 $fb
	sbc l                                            ; $4ce5: $9d
	ld h, b                                          ; $4ce6: $60
	nop                                              ; $4ce7: $00
	ld [hl], h                                       ; $4ce8: $74
	ld c, c                                          ; $4ce9: $49
	sbc $e0                                          ; $4cea: $de $e0
	sbc d                                            ; $4cec: $9a
	and b                                            ; $4ced: $a0
	inc c                                            ; $4cee: $0c
	rlca                                             ; $4cef: $07
	rrca                                             ; $4cf0: $0f
	inc b                                            ; $4cf1: $04
	ld [hl], h                                       ; $4cf2: $74
	ld h, b                                          ; $4cf3: $60
	sub [hl]                                         ; $4cf4: $96
	inc de                                           ; $4cf5: $13
	ld [bc], a                                       ; $4cf6: $02
	ld [de], a                                       ; $4cf7: $12
	inc bc                                           ; $4cf8: $03
	inc de                                           ; $4cf9: $13
	ld de, $111b                                     ; $4cfa: $11 $1b $11
	cp $72                                           ; $4cfd: $fe $72

jr_013_4cff:
	xor [hl]                                         ; $4cff: $ae
	ld a, a                                          ; $4d00: $7f
	ld [de], a                                       ; $4d01: $12
	sub d                                            ; $4d02: $92
	ld a, [hl+]                                      ; $4d03: $2a
	nop                                              ; $4d04: $00
	push de                                          ; $4d05: $d5
	nop                                              ; $4d06: $00
	rst AddAOntoHL                                          ; $4d07: $ef
	nop                                              ; $4d08: $00
	cpl                                              ; $4d09: $2f
	ret nc                                           ; $4d0a: $d0

	ld b, a                                          ; $4d0b: $47
	ld hl, sp+$40                                    ; $4d0c: $f8 $40
	rst $38                                          ; $4d0e: $ff
	dec hl                                           ; $4d0f: $2b
	ld a, c                                          ; $4d10: $79
	ld e, d                                          ; $4d11: $5a
	sbc d                                            ; $4d12: $9a
	xor d                                            ; $4d13: $aa
	rst $38                                          ; $4d14: $ff
	cp [hl]                                          ; $4d15: $be
	rst $38                                          ; $4d16: $ff
	call c, $967b                                    ; $4d17: $dc $7b $96
	sbc l                                            ; $4d1a: $9d
	xor l                                            ; $4d1b: $ad
	ld d, d                                          ; $4d1c: $52

jr_013_4d1d:
	ld [hl], l                                       ; $4d1d: $75
	ld [hl], b                                       ; $4d1e: $70
	sbc h                                            ; $4d1f: $9c
	adc d                                            ; $4d20: $8a
	rst $38                                          ; $4d21: $ff
	xor e                                            ; $4d22: $ab
	ld a, b                                          ; $4d23: $78
	add b                                            ; $4d24: $80
	ld a, l                                          ; $4d25: $7d
	inc a                                            ; $4d26: $3c
	ld a, a                                          ; $4d27: $7f
	db $d3                                           ; $4d28: $d3
	adc b                                            ; $4d29: $88
	ld b, $f9                                        ; $4d2a: $06 $f9
	nop                                              ; $4d2c: $00
	rst $38                                          ; $4d2d: $ff
	ld hl, sp+$07                                    ; $4d2e: $f8 $07
	inc b                                            ; $4d30: $04
	ei                                               ; $4d31: $fb
	nop                                              ; $4d32: $00
	rst $38                                          ; $4d33: $ff
	jr jr_013_4d1d                                   ; $4d34: $18 $e7

	ld b, $f9                                        ; $4d36: $06 $f9
	ldh a, [rIF]                                     ; $4d38: $f0 $0f
	ld h, l                                          ; $4d3a: $65
	sbc d                                            ; $4d3b: $9a
	ld bc, $40fe                                     ; $4d3c: $01 $fe $40
	rst $38                                          ; $4d3f: $ff
	db $d3                                           ; $4d40: $d3
	ld a, e                                          ; $4d41: $7b
	ld d, $7d                                        ; $4d42: $16 $7d
	ld h, d                                          ; $4d44: $62
	sbc h                                            ; $4d45: $9c
	cp l                                             ; $4d46: $bd
	rst $38                                          ; $4d47: $ff
	db $dd                                           ; $4d48: $dd
	ld a, e                                          ; $4d49: $7b
	sbc $90                                          ; $4d4a: $de $90
	ld e, $ff                                        ; $4d4c: $1e $ff
	ld bc, $80ff                                     ; $4d4e: $01 $ff $80
	ld a, a                                          ; $4d51: $7f
	ld b, $f9                                        ; $4d52: $06 $f9
	pop af                                           ; $4d54: $f1
	ld c, $00                                        ; $4d55: $0e $00
	rst $38                                          ; $4d57: $ff
	sbc h                                            ; $4d58: $9c
	ld h, e                                          ; $4d59: $63
	ld l, d                                          ; $4d5a: $6a
	ld a, c                                          ; $4d5b: $79
	ld [hl], $7d                                     ; $4d5c: $36 $7d
	ld b, $7f                                        ; $4d5e: $06 $7f
	ld [$667f], a                                    ; $4d60: $ea $7f $66
	ld a, a                                          ; $4d63: $7f
	ld [$327f], a                                    ; $4d64: $ea $7f $32
	sbc b                                            ; $4d67: $98
	inc c                                            ; $4d68: $0c
	di                                               ; $4d69: $f3
	db $eb                                           ; $4d6a: $eb
	rst $38                                          ; $4d6b: $ff
	set 7, a                                         ; $4d6c: $cb $ff
	db $eb                                           ; $4d6e: $eb
	ld a, e                                          ; $4d6f: $7b
	xor $74                                          ; $4d70: $ee $74
	sub h                                            ; $4d72: $94
	sbc e                                            ; $4d73: $9b
	add c                                            ; $4d74: $81
	cp $07                                           ; $4d75: $fe $07
	ld hl, sp+$6f                                    ; $4d77: $f8 $6f

jr_013_4d79:
	ldh a, [$7f]                                     ; $4d79: $f0 $7f
	cp $7e                                           ; $4d7b: $fe $7e
	ld c, b                                          ; $4d7d: $48
	ld a, [hl]                                       ; $4d7e: $7e
	call nz, $f07c                                   ; $4d7f: $c4 $7c $f0
	ld a, [hl]                                       ; $4d82: $7e
	ld de, $f67f                                     ; $4d83: $11 $7f $f6
	sbc [hl]                                         ; $4d86: $9e
	rst SubAFromBC                                          ; $4d87: $e7
	ld a, c                                          ; $4d88: $79
	db $10                                           ; $4d89: $10
	ld a, a                                          ; $4d8a: $7f
	cp $9e                                           ; $4d8b: $fe $9e
	rst SubAFromHL                                          ; $4d8d: $d7
	sbc $ff                                          ; $4d8e: $de $ff
	ld a, l                                          ; $4d90: $7d
	cp b                                             ; $4d91: $b8
	ld a, a                                          ; $4d92: $7f
	ld b, $80                                        ; $4d93: $06 $80
	ldh [$c0], a                                     ; $4d95: $e0 $c0
	jr nc, jr_013_4d79                               ; $4d97: $30 $e0

	inc e                                            ; $4d99: $1c
	ld hl, sp+$07                                    ; $4d9a: $f8 $07
	cp $01                                           ; $4d9c: $fe $01
	db $fd                                           ; $4d9e: $fd
	ld [bc], a                                       ; $4d9f: $02

jr_013_4da0:
	ei                                               ; $4da0: $fb
	inc b                                            ; $4da1: $04
	rst FarCall                                          ; $4da2: $f7
	ld [$19ef], sp                                   ; $4da3: $08 $ef $19
	pop af                                           ; $4da6: $f1
	inc de                                           ; $4da7: $13
	pop af                                           ; $4da8: $f1
	di                                               ; $4da9: $f3
	inc de                                           ; $4daa: $13
	inc de                                           ; $4dab: $13
	ldh a, [c]                                       ; $4dac: $f2
	ldh a, [c]                                       ; $4dad: $f2
	inc hl                                           ; $4dae: $23
	daa                                              ; $4daf: $27
	ldh [c], a                                       ; $4db0: $e2
	ld h, $e3                                        ; $4db1: $26 $e3
	ld h, [hl]                                       ; $4db3: $66
	sbc l                                            ; $4db4: $9d
	and e                                            ; $4db5: $a3
	and b                                            ; $4db6: $a0
	ld a, e                                          ; $4db7: $7b
	daa                                              ; $4db8: $27
	ld a, a                                          ; $4db9: $7f
	cp $93                                           ; $4dba: $fe $93
	and b                                            ; $4dbc: $a0
	ld h, b                                          ; $4dbd: $60
	jr nz, jr_013_4da0                               ; $4dbe: $20 $e0

	ldh [rLCDC], a                                   ; $4dc0: $e0 $40
	ld h, b                                          ; $4dc2: $60
	ret nz                                           ; $4dc3: $c0

	ldh [rLCDC], a                                   ; $4dc4: $e0 $40
	add hl, de                                       ; $4dc6: $19
	ld de, $fe6f                                     ; $4dc7: $11 $6f $fe
	sub [hl]                                         ; $4dca: $96
	dec e                                            ; $4dcb: $1d
	add hl, de                                       ; $4dcc: $19
	dec e                                            ; $4dcd: $1d
	jr jr_013_4dec                                   ; $4dce: $18 $1c

	inc d                                            ; $4dd0: $14
	ld d, $1c                                        ; $4dd1: $16 $1c
	or [hl]                                          ; $4dd3: $b6
	ld a, e                                          ; $4dd4: $7b
	sub h                                            ; $4dd5: $94
	ld a, a                                          ; $4dd6: $7f
	ld a, [hl-]                                      ; $4dd7: $3a
	ld h, h                                          ; $4dd8: $64
	ret nz                                           ; $4dd9: $c0

	ld a, a                                          ; $4dda: $7f
	ld e, [hl]                                       ; $4ddb: $5e
	sbc l                                            ; $4ddc: $9d
	ld [$6ef7], sp                                   ; $4ddd: $08 $f7 $6e
	add b                                            ; $4de0: $80
	add b                                            ; $4de1: $80
	add e                                            ; $4de2: $83
	db $fc                                           ; $4de3: $fc
	db $e4                                           ; $4de4: $e4
	sbc e                                            ; $4de5: $9b
	cp b                                             ; $4de6: $b8
	rst JumpTable                                          ; $4de7: $c7
	ldh [$5f], a                                     ; $4de8: $e0 $5f
	ld h, h                                          ; $4dea: $64
	rst JumpTable                                          ; $4deb: $c7

jr_013_4dec:
	rst JumpTable                                          ; $4dec: $c7
	add h                                            ; $4ded: $84
	add h                                            ; $4dee: $84
	add a                                            ; $4def: $87
	sbc [hl]                                         ; $4df0: $9e
	sub l                                            ; $4df1: $95
	sbc e                                            ; $4df2: $9b
	cp h                                             ; $4df3: $bc
	and h                                            ; $4df4: $a4
	ei                                               ; $4df5: $fb
	ld e, b                                          ; $4df6: $58
	rst SubAFromBC                                          ; $4df7: $e7
	ldh [$1f], a                                     ; $4df8: $e0 $1f
	ld h, c                                          ; $4dfa: $61
	ret nz                                           ; $4dfb: $c0

	ld h, d                                          ; $4dfc: $62
	pop bc                                           ; $4dfd: $c1
	pop bc                                           ; $4dfe: $c1
	ld b, e                                          ; $4dff: $43
	ld b, e                                          ; $4e00: $43
	sub l                                            ; $4e01: $95
	rst JumpTable                                          ; $4e02: $c7
	push bc                                          ; $4e03: $c5
	ld b, a                                          ; $4e04: $47
	rst JumpTable                                          ; $4e05: $c7
	add l                                            ; $4e06: $85
	add l                                            ; $4e07: $85
	adc a                                            ; $4e08: $8f
	add l                                            ; $4e09: $85
	adc a                                            ; $4e0a: $8f
	ld e, $7b                                        ; $4e0b: $1e $7b
	cp h                                             ; $4e0d: $bc
	sub e                                            ; $4e0e: $93
	sub h                                            ; $4e0f: $94
	inc e                                            ; $4e10: $1c
	sbc [hl]                                         ; $4e11: $9e
	sub h                                            ; $4e12: $94
	inc d                                            ; $4e13: $14
	sbc h                                            ; $4e14: $9c
	ld d, $9a                                        ; $4e15: $16 $9a
	dec de                                           ; $4e17: $1b
	sub a                                            ; $4e18: $97
	db $10                                           ; $4e19: $10
	sbc a                                            ; $4e1a: $9f
	ld [hl], h                                       ; $4e1b: $74
	ld h, b                                          ; $4e1c: $60
	ld [hl], b                                       ; $4e1d: $70
	or b                                             ; $4e1e: $b0
	ld [hl], b                                       ; $4e1f: $70
	ld h, b                                          ; $4e20: $60
	ld a, a                                          ; $4e21: $7f
	ld d, d                                          ; $4e22: $52
	sub e                                            ; $4e23: $93
	ret z                                            ; $4e24: $c8

	ld [hl], a                                       ; $4e25: $77
	ld b, e                                          ; $4e26: $43
	ld a, h                                          ; $4e27: $7c
	ld h, b                                          ; $4e28: $60
	ld e, a                                          ; $4e29: $5f
	ld e, [hl]                                       ; $4e2a: $5e
	ld h, c                                          ; $4e2b: $61
	ld b, e                                          ; $4e2c: $43
	ld a, h                                          ; $4e2d: $7c
	db $e4                                           ; $4e2e: $e4
	db $db                                           ; $4e2f: $db
	ld a, e                                          ; $4e30: $7b
	or b                                             ; $4e31: $b0
	sbc c                                            ; $4e32: $99
	rra                                              ; $4e33: $1f
	cp a                                             ; $4e34: $bf
	rra                                              ; $4e35: $1f
	call nc, $aa83                                   ; $4e36: $d4 $83 $aa
	ld a, d                                          ; $4e39: $7a
	or h                                             ; $4e3a: $b4
	ld a, a                                          ; $4e3b: $7f
	db $fc                                           ; $4e3c: $fc
	sbc [hl]                                         ; $4e3d: $9e
	ld e, l                                          ; $4e3e: $5d
	ld [hl], e                                       ; $4e3f: $73
	rst SubAFromHL                                          ; $4e40: $d7
	sbc e                                            ; $4e41: $9b
	ld e, e                                          ; $4e42: $5b
	and h                                            ; $4e43: $a4
	and l                                            ; $4e44: $a5
	ld e, d                                          ; $4e45: $5a
	ld [hl], h                                       ; $4e46: $74
	ld e, h                                          ; $4e47: $5c
	ld [hl], a                                       ; $4e48: $77
	cp $97                                           ; $4e49: $fe $97
	add b                                            ; $4e4b: $80
	rst $38                                          ; $4e4c: $ff
	ret nz                                           ; $4e4d: $c0

	rst $38                                          ; $4e4e: $ff
	ldh a, [$fe]                                     ; $4e4f: $f0 $fe
	dec b                                            ; $4e51: $05
	ld hl, sp+$75                                    ; $4e52: $f8 $75
	or b                                             ; $4e54: $b0
	ld a, l                                          ; $4e55: $7d
	ret nz                                           ; $4e56: $c0

	sbc [hl]                                         ; $4e57: $9e
	rst FarCall                                          ; $4e58: $f7
	ld a, e                                          ; $4e59: $7b
	db $ed                                           ; $4e5a: $ed
	sbc d                                            ; $4e5b: $9a
	jp c, $fb25                                      ; $4e5c: $da $25 $fb

	cp $fb                                           ; $4e5f: $fe $fb
	ld a, e                                          ; $4e61: $7b
	cp b                                             ; $4e62: $b8
	sub l                                            ; $4e63: $95
	cp $df                                           ; $4e64: $fe $df
	adc $7f                                          ; $4e66: $ce $7f
	cp [hl]                                          ; $4e68: $be
	ld c, a                                          ; $4e69: $4f
	adc $37                                          ; $4e6a: $ce $37
	scf                                              ; $4e6c: $37
	rst GetHLinHL                                          ; $4e6d: $cf
	ld a, e                                          ; $4e6e: $7b
	ld h, b                                          ; $4e6f: $60
	add b                                            ; $4e70: $80
	db $fd                                           ; $4e71: $fd
	ld hl, $9fdf                                     ; $4e72: $21 $df $9f
	ld h, c                                          ; $4e75: $61
	ld [bc], a                                       ; $4e76: $02
	rst $38                                          ; $4e77: $ff
	and $1a                                          ; $4e78: $e6 $1a
	ld a, [hl-]                                      ; $4e7a: $3a
	add $e4                                          ; $4e7b: $c6 $e4
	ld e, $8d                                        ; $4e7d: $1e $8d
	adc e                                            ; $4e7f: $8b
	adc a                                            ; $4e80: $8f
	add hl, de                                       ; $4e81: $19
	ld de, $3f1f                                     ; $4e82: $11 $1f $3f
	ld de, $3927                                     ; $4e85: $11 $27 $39
	ld [hl+], a                                      ; $4e88: $22
	ccf                                              ; $4e89: $3f
	ld a, $22                                        ; $4e8a: $3e $22
	ld [hl+], a                                      ; $4e8c: $22
	ld a, $98                                        ; $4e8d: $3e $98
	rla                                              ; $4e8f: $17
	adc c                                            ; $4e90: $89
	sub e                                            ; $4e91: $93
	inc e                                            ; $4e92: $1c
	sub b                                            ; $4e93: $90
	rra                                              ; $4e94: $1f
	cp [hl]                                          ; $4e95: $be
	ld de, $1c33                                     ; $4e96: $11 $33 $1c
	inc [hl]                                         ; $4e99: $34
	dec de                                           ; $4e9a: $1b
	jr c, jr_013_4ebc                                ; $4e9b: $38 $1f

	inc d                                            ; $4e9d: $14
	rrca                                             ; $4e9e: $0f
	ld [$30fc], sp                                   ; $4e9f: $08 $fc $30
	ldh a, [rLCDC]                                   ; $4ea2: $f0 $40
	pop hl                                           ; $4ea4: $e1
	rst $38                                          ; $4ea5: $ff
	ld a, a                                          ; $4ea6: $7f
	ld h, l                                          ; $4ea7: $65
	ret nc                                           ; $4ea8: $d0

	sbc h                                            ; $4ea9: $9c
	ld [hl], $3f                                     ; $4eaa: $36 $3f
	ld a, $75                                        ; $4eac: $3e $75
	ld e, a                                          ; $4eae: $5f
	sub d                                            ; $4eaf: $92
	rst $38                                          ; $4eb0: $ff
	call nz, $033b                                   ; $4eb1: $c4 $3b $03
	db $fc                                           ; $4eb4: $fc
	inc a                                            ; $4eb5: $3c
	jp $ff00                                         ; $4eb6: $c3 $00 $ff


	ld a, [bc]                                       ; $4eb9: $0a
	rlca                                             ; $4eba: $07
	ld b, e                                          ; $4ebb: $43

jr_013_4ebc:
	add e                                            ; $4ebc: $83
	ld [hl], h                                       ; $4ebd: $74
	jp nz, $e067                                     ; $4ebe: $c2 $67 $e0

	sbc d                                            ; $4ec1: $9a
	nop                                              ; $4ec2: $00
	call c, $9502                                    ; $4ec3: $dc $02 $95
	ld c, [hl]                                       ; $4ec6: $4e
	dec hl                                           ; $4ec7: $2b
	ld a, [hl+]                                      ; $4ec8: $2a
	add hl, hl                                       ; $4ec9: $29
	jr z, jr_013_4ef3                                ; $4eca: $28 $27

	ld h, $25                                        ; $4ecc: $26 $25
	jr @+$19                                         ; $4ece: $18 $17

	call nc, $9b02                                   ; $4ed0: $d4 $02 $9b
	inc bc                                           ; $4ed3: $03
	db $10                                           ; $4ed4: $10
	inc d                                            ; $4ed5: $14
	dec d                                            ; $4ed6: $15
	reti                                             ; $4ed7: $d9


	ld [bc], a                                       ; $4ed8: $02
	call c, $9504                                    ; $4ed9: $dc $04 $95
	ld b, $24                                        ; $4edc: $06 $24
	inc h                                            ; $4ede: $24
	inc hl                                           ; $4edf: $23
	ld [hl+], a                                      ; $4ee0: $22
	ld hl, $191c                                     ; $4ee1: $21 $1c $19
	inc h                                            ; $4ee4: $24
	ld de, $04dc                                     ; $4ee5: $11 $dc $04
	rst SubAFromDE                                          ; $4ee8: $df
	ld d, $91                                        ; $4ee9: $16 $91
	inc l                                            ; $4eeb: $2c
	dec l                                            ; $4eec: $2d
	jr nc, jr_013_4f05                               ; $4eed: $30 $16

	inc sp                                           ; $4eef: $33
	ld [hl], $37                                     ; $4ef0: $36 $37
	cpl                                              ; $4ef2: $2f

jr_013_4ef3:
	ld l, $44                                        ; $4ef3: $2e $44
	ld e, c                                          ; $4ef5: $59
	ld e, e                                          ; $4ef6: $5b
	inc l                                            ; $4ef7: $2c
	inc l                                            ; $4ef8: $2c
	db $dd                                           ; $4ef9: $dd
	ld d, $80                                        ; $4efa: $16 $80
	dec c                                            ; $4efc: $0d
	ld e, d                                          ; $4efd: $5a
	ld [de], a                                       ; $4efe: $12
	rlca                                             ; $4eff: $07
	add hl, bc                                       ; $4f00: $09
	ld d, a                                          ; $4f01: $57
	jr c, jr_013_4f3d                                ; $4f02: $38 $39

	ld a, [de]                                       ; $4f04: $1a

jr_013_4f05:
	dec de                                           ; $4f05: $1b
	ld e, h                                          ; $4f06: $5c
	ld b, l                                          ; $4f07: $45
	ld b, [hl]                                       ; $4f08: $46
	dec e                                            ; $4f09: $1d
	ld c, b                                          ; $4f0a: $48
	rrca                                             ; $4f0b: $0f
	ld c, $0d                                        ; $4f0c: $0e $0d
	dec bc                                           ; $4f0e: $0b
	ld a, [bc]                                       ; $4f0f: $0a
	nop                                              ; $4f10: $00
	ld d, d                                          ; $4f11: $52
	ld e, $1f                                        ; $4f12: $1e $1f
	ld [hl-], a                                      ; $4f14: $32
	ld a, [hl-]                                      ; $4f15: $3a
	dec [hl]                                         ; $4f16: $35
	inc [hl]                                         ; $4f17: $34
	dec sp                                           ; $4f18: $3b
	inc de                                           ; $4f19: $13
	inc de                                           ; $4f1a: $13
	sub b                                            ; $4f1b: $90
	inc a                                            ; $4f1c: $3c
	dec a                                            ; $4f1d: $3d
	ld a, $31                                        ; $4f1e: $3e $31
	ccf                                              ; $4f20: $3f
	ld b, b                                          ; $4f21: $40
	ld [$0c01], sp                                   ; $4f22: $08 $01 $0c
	ld c, h                                          ; $4f25: $4c
	ld c, e                                          ; $4f26: $4b
	ld b, c                                          ; $4f27: $41
	ld b, d                                          ; $4f28: $42
	ld b, e                                          ; $4f29: $43
	ld b, a                                          ; $4f2a: $47
	reti                                             ; $4f2b: $d9


	inc de                                           ; $4f2c: $13
	sub e                                            ; $4f2d: $93
	dec b                                            ; $4f2e: $05
	inc de                                           ; $4f2f: $13
	jr nz, jr_013_4f7b                               ; $4f30: $20 $49

	ld c, d                                          ; $4f32: $4a
	ld c, l                                          ; $4f33: $4d
	dec b                                            ; $4f34: $05
	inc de                                           ; $4f35: $13
	ld c, a                                          ; $4f36: $4f
	ld d, b                                          ; $4f37: $50
	ld d, c                                          ; $4f38: $51
	ld d, e                                          ; $4f39: $53
	ld [hl], a                                       ; $4f3a: $77
	ldh a, [c]                                       ; $4f3b: $f2
	ld e, a                                          ; $4f3c: $5f

jr_013_4f3d:
	db $fd                                           ; $4f3d: $fd
	ld a, a                                          ; $4f3e: $7f
	db $fc                                           ; $4f3f: $fc
	sbc e                                            ; $4f40: $9b
	ld d, h                                          ; $4f41: $54
	ld d, l                                          ; $4f42: $55
	ld d, [hl]                                       ; $4f43: $56
	ld e, b                                          ; $4f44: $58
	ld [hl], e                                       ; $4f45: $73
	db $dd                                           ; $4f46: $dd
	ld e, e                                          ; $4f47: $5b
	db $fd                                           ; $4f48: $fd
	sbc h                                            ; $4f49: $9c
	ld e, l                                          ; $4f4a: $5d
	ld e, [hl]                                       ; $4f4b: $5e
	ld e, a                                          ; $4f4c: $5f
	ld l, a                                          ; $4f4d: $6f
	ret                                              ; $4f4e: $c9


	ld h, e                                          ; $4f4f: $63
	db $fd                                           ; $4f50: $fd
	ld a, a                                          ; $4f51: $7f
	cp $9c                                           ; $4f52: $fe $9c
	ld h, b                                          ; $4f54: $60
	ld h, c                                          ; $4f55: $61
	ld h, d                                          ; $4f56: $62
	ld c, a                                          ; $4f57: $4f
	db $db                                           ; $4f58: $db
	inc sp                                           ; $4f59: $33
	db $fd                                           ; $4f5a: $fd
	ld de, $de00                                     ; $4f5b: $11 $00 $de
	inc sp                                           ; $4f5e: $33
	sbc e                                            ; $4f5f: $9b
	scf                                              ; $4f60: $37
	ld [hl], a                                       ; $4f61: $77
	ld [hl], a                                       ; $4f62: $77
	ld [hl], e                                       ; $4f63: $73
	jp z, $c133                                      ; $4f64: $ca $33 $c1

	ld [hl], a                                       ; $4f67: $77
	inc bc                                           ; $4f68: $03
	rst $38                                          ; $4f69: $ff
	ret z                                            ; $4f6a: $c8

	ld [hl], a                                       ; $4f6b: $77
	ld [hl], c                                       ; $4f6c: $71
	nop                                              ; $4f6d: $00
	add [hl]                                         ; $4f6e: $86
	inc c                                            ; $4f6f: $0c
	rlca                                             ; $4f70: $07
	ld [bc], a                                       ; $4f71: $02

jr_013_4f72:
	inc bc                                           ; $4f72: $03
	ld bc, $0001                                     ; $4f73: $01 $01 $00
	nop                                              ; $4f76: $00
	inc e                                            ; $4f77: $1c
	db $10                                           ; $4f78: $10
	ld e, $1c                                        ; $4f79: $1e $1c

jr_013_4f7b:
	inc de                                           ; $4f7b: $13
	rra                                              ; $4f7c: $1f
	jr jr_013_4f96                                   ; $4f7d: $18 $17

	nop                                              ; $4f7f: $00
	rst $38                                          ; $4f80: $ff
	inc b                                            ; $4f81: $04
	ei                                               ; $4f82: $fb
	ld a, c                                          ; $4f83: $79
	add a                                            ; $4f84: $87
	rst $38                                          ; $4f85: $ff
	cp $30                                           ; $4f86: $fe $30
	cp $80                                           ; $4f88: $fe $80
	rst $38                                          ; $4f8a: $ff
	inc bc                                           ; $4f8b: $03
	db $fc                                           ; $4f8c: $fc
	rst $38                                          ; $4f8d: $ff
	nop                                              ; $4f8e: $00
	rst $38                                          ; $4f8f: $ff
	ld a, a                                          ; $4f90: $7f
	rst $38                                          ; $4f91: $ff
	ret nz                                           ; $4f92: $c0

	add b                                            ; $4f93: $80

jr_013_4f94:
	sbc a                                            ; $4f94: $9f
	rra                                              ; $4f95: $1f

jr_013_4f96:
	ld a, $37                                        ; $4f96: $3e $37
	ld e, $1b                                        ; $4f98: $1e $1b
	rst SubAFromDE                                          ; $4f9a: $df
	adc $38                                          ; $4f9b: $ce $38
	rst $38                                          ; $4f9d: $ff
	ld [$83f7], sp                                   ; $4f9e: $08 $f7 $83
	db $fc                                           ; $4fa1: $fc
	ld h, b                                          ; $4fa2: $60
	ld e, a                                          ; $4fa3: $5f
	sbc [hl]                                         ; $4fa4: $9e
	pop hl                                           ; $4fa5: $e1
	inc bc                                           ; $4fa6: $03
	db $fc                                           ; $4fa7: $fc
	db $e4                                           ; $4fa8: $e4
	sub d                                            ; $4fa9: $92
	dec de                                           ; $4faa: $1b
	jr c, @-$37                                      ; $4fab: $38 $c7

	ldh [$1f], a                                     ; $4fad: $e0 $1f
	ld [$03f7], sp                                   ; $4faf: $08 $f7 $03
	db $fc                                           ; $4fb2: $fc
	jr nz, jr_013_4f94                               ; $4fb3: $20 $df

	sbc [hl]                                         ; $4fb5: $9e
	ld h, c                                          ; $4fb6: $61
	ld h, a                                          ; $4fb7: $67
	ldh a, [$7f]                                     ; $4fb8: $f0 $7f
	cp [hl]                                          ; $4fba: $be
	adc l                                            ; $4fbb: $8d
	inc de                                           ; $4fbc: $13
	inc e                                            ; $4fbd: $1c
	db $10                                           ; $4fbe: $10
	rra                                              ; $4fbf: $1f
	ld e, $11                                        ; $4fc0: $1e $11
	inc de                                           ; $4fc2: $13
	inc e                                            ; $4fc3: $1c
	inc [hl]                                         ; $4fc4: $34
	dec de                                           ; $4fc5: $1b
	jr c, jr_013_4fdf                                ; $4fc6: $38 $17

	jr nc, jr_013_4fe9                               ; $4fc8: $30 $1f

	add hl, bc                                       ; $4fca: $09
	or $00                                           ; $4fcb: $f6 $00
	rst $38                                          ; $4fcd: $ff
	ld b, a                                          ; $4fce: $47
	ldh [hDisp1_OBP0], a                                     ; $4fcf: $e0 $93
	sub b                                            ; $4fd1: $90
	rra                                              ; $4fd2: $1f
	sbc [hl]                                         ; $4fd3: $9e
	sub c                                            ; $4fd4: $91
	inc de                                           ; $4fd5: $13
	sbc h                                            ; $4fd6: $9c

jr_013_4fd7:
	inc d                                            ; $4fd7: $14
	sbc e                                            ; $4fd8: $9b
	jr jr_013_4f72                                   ; $4fd9: $18 $97

	db $10                                           ; $4fdb: $10
	sbc a                                            ; $4fdc: $9f
	ld c, $00                                        ; $4fdd: $0e $00

jr_013_4fdf:
	sub [hl]                                         ; $4fdf: $96
	nop                                              ; $4fe0: $00
	ld bc, $0302                                     ; $4fe1: $01 $02 $03
	dec b                                            ; $4fe4: $05
	ld b, $04                                        ; $4fe5: $06 $04

jr_013_4fe7:
	inc b                                            ; $4fe7: $04
	rlca                                             ; $4fe8: $07

jr_013_4fe9:
	sbc $04                                          ; $4fe9: $de $04
	inc b                                            ; $4feb: $04
	nop                                              ; $4fec: $00
	db $db                                           ; $4fed: $db
	ld [hl], a                                       ; $4fee: $77
	ld a, [hl+]                                      ; $4fef: $2a
	ld bc, $fe80                                     ; $4ff0: $01 $80 $fe
	rst $38                                          ; $4ff3: $ff
	cp $f9                                           ; $4ff4: $fe $f9
	ldh [$1f], a                                     ; $4ff6: $e0 $1f
	rra                                              ; $4ff8: $1f
	ldh [$c4], a                                     ; $4ff9: $e0 $c4
	dec sp                                           ; $4ffb: $3b
	inc bc                                           ; $4ffc: $03
	db $fc                                           ; $4ffd: $fc
	inc a                                            ; $4ffe: $3c
	jp $ff00                                         ; $4fff: $c3 $00 $ff


	rlca                                             ; $5002: $07
	rlca                                             ; $5003: $07
	rst $38                                          ; $5004: $ff
	rst $38                                          ; $5005: $ff
	jr nz, jr_013_4fe7                               ; $5006: $20 $df

	sbc [hl]                                         ; $5008: $9e
	ld h, c                                          ; $5009: $61
	inc bc                                           ; $500a: $03
	db $fc                                           ; $500b: $fc
	db $e4                                           ; $500c: $e4
	dec de                                           ; $500d: $1b
	jr c, jr_013_4fd7                                ; $500e: $38 $c7

	ldh [$9a], a                                     ; $5010: $e0 $9a
	rra                                              ; $5012: $1f
	dec bc                                           ; $5013: $0b
	rst FarCall                                          ; $5014: $f7
	inc bc                                           ; $5015: $03
	db $fd                                           ; $5016: $fd
	ld d, a                                          ; $5017: $57
	ldh a, [$7f]                                     ; $5018: $f0 $7f
	sbc $9d                                          ; $501a: $de $9d
	ld c, $f1                                        ; $501c: $0e $f1
	ld d, a                                          ; $501e: $57
	ret nc                                           ; $501f: $d0

	sub d                                            ; $5020: $92
	ld e, c                                          ; $5021: $59
	ld a, a                                          ; $5022: $7f
	db $dd                                           ; $5023: $dd
	rst FarCall                                          ; $5024: $f7
	or a                                             ; $5025: $b7
	db $db                                           ; $5026: $db
	sbc e                                            ; $5027: $9b
	rst FarCall                                          ; $5028: $f7
	ei                                               ; $5029: $fb
	cp $f7                                           ; $502a: $fe $f7
	rst $38                                          ; $502c: $ff
	rst FarCall                                          ; $502d: $f7
	sbc $ff                                          ; $502e: $de $ff
	rst SubAFromDE                                          ; $5030: $df
	ld sp, hl                                        ; $5031: $f9
	sbc d                                            ; $5032: $9a
	add hl, sp                                       ; $5033: $39
	ld sp, hl                                        ; $5034: $f9
	reti                                             ; $5035: $d9


	dec sp                                           ; $5036: $3b
	inc de                                           ; $5037: $13
	sbc $f3                                          ; $5038: $de $f3
	add h                                            ; $503a: $84
	cp $ee                                           ; $503b: $fe $ee
	db $fc                                           ; $503d: $fc
	db $e4                                           ; $503e: $e4
	cp c                                             ; $503f: $b9
	cp c                                             ; $5040: $b9
	add hl, sp                                       ; $5041: $39
	ld sp, hl                                        ; $5042: $f9
	ld de, $23f1                                     ; $5043: $11 $f1 $23
	rst SubAFromBC                                          ; $5046: $e7
	cp $ff                                           ; $5047: $fe $ff
	ei                                               ; $5049: $fb
	sbc e                                            ; $504a: $9b
	di                                               ; $504b: $f3
	di                                               ; $504c: $f3
	rrca                                             ; $504d: $0f
	rrca                                             ; $504e: $0f
	rst $38                                          ; $504f: $ff
	rst $38                                          ; $5050: $ff
	ld a, a                                          ; $5051: $7f
	push af                                          ; $5052: $f5
	ld h, a                                          ; $5053: $67
	db $fd                                           ; $5054: $fd
	ld [hl+], a                                      ; $5055: $22
	ld [hl], a                                       ; $5056: $77
	or b                                             ; $5057: $b0
	add b                                            ; $5058: $80
	rst $38                                          ; $5059: $ff
	and $1e                                          ; $505a: $e6 $1e
	inc a                                            ; $505c: $3c
	call nz, $1fe7                                   ; $505d: $c4 $e7 $1f
	ld [hl], $f7                                     ; $5060: $36 $f7
	inc de                                           ; $5062: $13
	ldh a, [c]                                       ; $5063: $f2
	inc sp                                           ; $5064: $33
	db $d3                                           ; $5065: $d3
	sub c                                            ; $5066: $91
	ld [hl], c                                       ; $5067: $71
	reti                                             ; $5068: $d9


	ld sp, hl                                        ; $5069: $f9
	ld l, c                                          ; $506a: $69
	ld a, c                                          ; $506b: $79
	ccf                                              ; $506c: $3f
	cpl                                              ; $506d: $2f
	ld l, e                                          ; $506e: $6b
	ld e, a                                          ; $506f: $5f
	ld hl, sp-$01                                    ; $5070: $f8 $ff
	ld c, $0f                                        ; $5072: $0e $0f
	ld b, $07                                        ; $5074: $06 $07
	rra                                              ; $5076: $1f
	inc a                                            ; $5077: $3c
	sbc e                                            ; $5078: $9b
	rra                                              ; $5079: $1f
	ccf                                              ; $507a: $3f
	rra                                              ; $507b: $1f
	dec sp                                           ; $507c: $3b
	ld a, e                                          ; $507d: $7b
	db $fc                                           ; $507e: $fc
	sbc $ff                                          ; $507f: $de $ff
	add b                                            ; $5081: $80
	rst SubAFromBC                                          ; $5082: $e7
	rst $38                                          ; $5083: $ff
	jp z, Jump_013_4aca                              ; $5084: $ca $ca $4a

	ld c, d                                          ; $5087: $4a
	ld c, [hl]                                       ; $5088: $4e
	ld c, [hl]                                       ; $5089: $4e
	adc $ce                                          ; $508a: $ce $ce
	ld c, [hl]                                       ; $508c: $4e
	ld c, [hl]                                       ; $508d: $4e
	rst $38                                          ; $508e: $ff
	rst $38                                          ; $508f: $ff
	ld a, [bc]                                       ; $5090: $0a
	or $02                                           ; $5091: $f6 $02
	cp $24                                           ; $5093: $fe $24
	call c, Call_013_659d                            ; $5095: $dc $9d $65
	dec b                                            ; $5098: $05
	db $fd                                           ; $5099: $fd
	db $fd                                           ; $509a: $fd
	dec e                                            ; $509b: $1d
	ccf                                              ; $509c: $3f
	rst SubAFromBC                                          ; $509d: $e7
	rst $38                                          ; $509e: $ff
	dec a                                            ; $509f: $3d
	db $fc                                           ; $50a0: $fc
	add b                                            ; $50a1: $80
	xor a                                            ; $50a2: $af
	rst $38                                          ; $50a3: $ff
	cp h                                             ; $50a4: $bc
	ld e, h                                          ; $50a5: $5c
	rst SubAFromDE                                          ; $50a6: $df
	adc $c9                                          ; $50a7: $ce $c9
	set 1, h                                         ; $50a9: $cb $cc
	call nz, Call_013_66c7                           ; $50ab: $c4 $c7 $66
	rst SubAFromBC                                          ; $50ae: $e7
	ld a, [$0b3f]                                    ; $50af: $fa $3f $0b
	rrca                                             ; $50b2: $0f
	adc d                                            ; $50b3: $8a
	adc a                                            ; $50b4: $8f
	rst GetHLinHL                                          ; $50b5: $cf
	set 1, a                                         ; $50b6: $cb $cf
	rst GetHLinHL                                          ; $50b8: $cf
	pop hl                                           ; $50b9: $e1
	pop hl                                           ; $50ba: $e1
	sbc l                                            ; $50bb: $9d
	rst $38                                          ; $50bc: $ff
	rlca                                             ; $50bd: $07
	rst $38                                          ; $50be: $ff
	cp $ff                                           ; $50bf: $fe $ff
	rst SubAFromDE                                          ; $50c1: $df
	di                                               ; $50c2: $f3
	sbc e                                            ; $50c3: $9b
	ld a, [$fa9a]                                    ; $50c4: $fa $9a $fa
	ld l, d                                          ; $50c7: $6a
	ld a, e                                          ; $50c8: $7b
	cp $98                                           ; $50c9: $fe $98
	adc d                                            ; $50cb: $8a
	ld a, [$759a]                                    ; $50cc: $fa $9a $75
	ld [hl], l                                       ; $50cf: $75
	adc e                                            ; $50d0: $8b
	adc e                                            ; $50d1: $8b
	ld [hl], a                                       ; $50d2: $77
	ret nz                                           ; $50d3: $c0

	sbc l                                            ; $50d4: $9d
	dec h                                            ; $50d5: $25
	db $dd                                           ; $50d6: $dd
	ld [hl], a                                       ; $50d7: $77
	ret nz                                           ; $50d8: $c0

	adc c                                            ; $50d9: $89
	and $1a                                          ; $50da: $e6 $1a
	dec sp                                           ; $50dc: $3b
	rst JumpTable                                          ; $50dd: $c7
	db $e3                                           ; $50de: $e3
	rra                                              ; $50df: $1f
	ld [$03f7], sp                                   ; $50e0: $08 $f7 $03
	db $fc                                           ; $50e3: $fc
	jr nz, @-$1f                                     ; $50e4: $20 $df

	sbc a                                            ; $50e6: $9f
	ld h, c                                          ; $50e7: $61
	inc bc                                           ; $50e8: $03
	cp $e7                                           ; $50e9: $fe $e7
	inc e                                            ; $50eb: $1c
	ccf                                              ; $50ec: $3f
	push bc                                          ; $50ed: $c5
	rst SubAFromBC                                          ; $50ee: $e7
	dec e                                            ; $50ef: $1d
	ld [hl], a                                       ; $50f0: $77
	jr nz, jr_013_5172                               ; $50f1: $20 $7f

	ld l, d                                          ; $50f3: $6a
	sub l                                            ; $50f4: $95
	rst $38                                          ; $50f5: $ff
	jp hl                                            ; $50f6: $e9


	or $79                                           ; $50f7: $f6 $79
	reti                                             ; $50f9: $d9


	rst SubAFromDE                                          ; $50fa: $df
	rst $38                                          ; $50fb: $ff
	rst $38                                          ; $50fc: $ff
	rrca                                             ; $50fd: $0f
	rrca                                             ; $50fe: $0f
	ld l, a                                          ; $50ff: $6f
	ldh [hDisp1_WY], a                                     ; $5100: $e0 $95
	sbc [hl]                                         ; $5102: $9e
	pop hl                                           ; $5103: $e1
	ld a, e                                          ; $5104: $7b
	db $fc                                           ; $5105: $fc
	add [hl]                                         ; $5106: $86
	add a                                            ; $5107: $87
	rst $38                                          ; $5108: $ff
	rst $38                                          ; $5109: $ff
	rst GetHLinHL                                          ; $510a: $cf
	adc l                                            ; $510b: $8d
	ld l, a                                          ; $510c: $6f
	ldh a, [hDisp1_WY]                                     ; $510d: $f0 $95
	cp [hl]                                          ; $510f: $be
	ld a, c                                          ; $5110: $79
	ld a, a                                          ; $5111: $7f
	call z, $b7fc                                    ; $5112: $cc $fc $b7
	db $fc                                           ; $5115: $fc
	or a                                             ; $5116: $b7
	ld l, h                                          ; $5117: $6c
	cp a                                             ; $5118: $bf
	rla                                              ; $5119: $17
	nop                                              ; $511a: $00
	adc e                                            ; $511b: $8b
	db $10                                           ; $511c: $10
	ld de, $1312                                     ; $511d: $11 $12 $13
	rrca                                             ; $5120: $0f
	ld c, $0d                                        ; $5121: $0e $0d
	inc c                                            ; $5123: $0c
	dec bc                                           ; $5124: $0b
	ld a, [bc]                                       ; $5125: $0a
	add hl, bc                                       ; $5126: $09
	ld [$0607], sp                                   ; $5127: $08 $07 $06
	dec b                                            ; $512a: $05
	inc b                                            ; $512b: $04
	inc bc                                           ; $512c: $03
	ld [bc], a                                       ; $512d: $02
	ld bc, $0800                                     ; $512e: $01 $00 $08
	nop                                              ; $5131: $00
	rst SubAFromDE                                          ; $5132: $df
	ld [hl+], a                                      ; $5133: $22
	sbc [hl]                                         ; $5134: $9e
	dec h                                            ; $5135: $25
	jp c, Jump_013_7422                              ; $5136: $da $22 $74

	nop                                              ; $5139: $00
	add b                                            ; $513a: $80
	ld c, b                                          ; $513b: $48
	ld [hl], a                                       ; $513c: $77
	jp $a0fc                                         ; $513d: $c3 $fc $a0


	rst SubAFromDE                                          ; $5140: $df

jr_013_5141:
	sbc [hl]                                         ; $5141: $9e
	pop hl                                           ; $5142: $e1
	jp $e4fc                                         ; $5143: $c3 $fc $e4


	ei                                               ; $5146: $fb
	ld hl, sp-$09                                    ; $5147: $f8 $f7
	ldh a, [rIE]                                     ; $5149: $f0 $ff
	add hl, bc                                       ; $514b: $09
	ld sp, hl                                        ; $514c: $f9

jr_013_514d:
	add hl, de                                       ; $514d: $19
	ld sp, hl                                        ; $514e: $f9
	ld sp, hl                                        ; $514f: $f9
	dec de                                           ; $5150: $1b
	inc de                                           ; $5151: $13
	di                                               ; $5152: $f3
	di                                               ; $5153: $f3
	inc sp                                           ; $5154: $33
	cp $ee                                           ; $5155: $fe $ee
	db $fc                                           ; $5157: $fc
	db $e4                                           ; $5158: $e4
	cp c                                             ; $5159: $b9
	add b                                            ; $515a: $80
	cp c                                             ; $515b: $b9
	ld [$03f7], sp                                   ; $515c: $08 $f7 $03
	db $fc                                           ; $515f: $fc
	jr nz, jr_013_5141                               ; $5160: $20 $df

	sbc [hl]                                         ; $5162: $9e
	ld h, c                                          ; $5163: $61
	inc bc                                           ; $5164: $03
	db $fc                                           ; $5165: $fc
	db $e4                                           ; $5166: $e4
	dec de                                           ; $5167: $1b
	add hl, sp                                       ; $5168: $39
	rst JumpTable                                          ; $5169: $c7
	db $e3                                           ; $516a: $e3
	rra                                              ; $516b: $1f
	ldh a, [rIE]                                     ; $516c: $f0 $ff
	xor $f1                                          ; $516e: $ee $f1
	ldh [$1f], a                                     ; $5170: $e0 $1f

jr_013_5172:
	rra                                              ; $5172: $1f
	ldh [$c4], a                                     ; $5173: $e0 $c4
	dec sp                                           ; $5175: $3b
	inc bc                                           ; $5176: $03
	db $fc                                           ; $5177: $fc
	inc a                                            ; $5178: $3c
	jp $0099                                         ; $5179: $c3 $99 $00


	rst $38                                          ; $517c: $ff
	rlca                                             ; $517d: $07
	rlca                                             ; $517e: $07
	rst $38                                          ; $517f: $ff
	rst $38                                          ; $5180: $ff
	ld h, a                                          ; $5181: $67
	ldh [$97], a                                     ; $5182: $e0 $97
	jr c, jr_013_514d                                ; $5184: $38 $c7

	ldh [$1f], a                                     ; $5186: $e0 $1f
	dec bc                                           ; $5188: $0b
	rst FarCall                                          ; $5189: $f7
	inc bc                                           ; $518a: $03
	db $fd                                           ; $518b: $fd
	ld d, a                                          ; $518c: $57
	ldh a, [$57]                                     ; $518d: $f0 $57
	ret nz                                           ; $518f: $c0

	ld [hl], a                                       ; $5190: $77
	ldh a, [$7f]                                     ; $5191: $f0 $7f
	adc $9e                                          ; $5193: $ce $9e
	ld c, $73                                        ; $5195: $0e $73
	ret nz                                           ; $5197: $c0

	sub a                                            ; $5198: $97
	rst GetHLinHL                                          ; $5199: $cf
	ccf                                              ; $519a: $3f
	rrca                                             ; $519b: $0f
	ei                                               ; $519c: $fb
	ccf                                              ; $519d: $3f
	rst GetHLinHL                                          ; $519e: $cf
	rrca                                             ; $519f: $0f
	rst $38                                          ; $51a0: $ff
	ld h, a                                          ; $51a1: $67
	ldh [$7f], a                                     ; $51a2: $e0 $7f
	add b                                            ; $51a4: $80
	sbc c                                            ; $51a5: $99

jr_013_51a6:
	ld h, h                                          ; $51a6: $64
	ld a, e                                          ; $51a7: $7b
	jr c, jr_013_51d1                                ; $51a8: $38 $27

	ld h, b                                          ; $51aa: $60
	ld e, a                                          ; $51ab: $5f
	inc c                                            ; $51ac: $0c
	nop                                              ; $51ad: $00
	sub [hl]                                         ; $51ae: $96
	ld b, $07                                        ; $51af: $06 $07
	ld [$0102], sp                                   ; $51b1: $08 $02 $01
	nop                                              ; $51b4: $00
	dec b                                            ; $51b5: $05
	inc b                                            ; $51b6: $04
	inc bc                                           ; $51b7: $03
	ld b, $00                                        ; $51b8: $06 $00
	db $dd                                           ; $51ba: $dd
	ld [hl+], a                                      ; $51bb: $22
	sbc [hl]                                         ; $51bc: $9e
	jr nz, @-$7e                                     ; $51bd: $20 $80

	nop                                              ; $51bf: $00
	adc a                                            ; $51c0: $8f
	ld [$03f7], sp                                   ; $51c1: $08 $f7 $03
	db $fc                                           ; $51c4: $fc
	jr nz, jr_013_51a6                               ; $51c5: $20 $df

	sbc [hl]                                         ; $51c7: $9e
	ld h, c                                          ; $51c8: $61
	inc bc                                           ; $51c9: $03
	db $fc                                           ; $51ca: $fc
	db $e4                                           ; $51cb: $e4

jr_013_51cc:
	dec de                                           ; $51cc: $1b
	add hl, sp                                       ; $51cd: $39
	rst JumpTable                                          ; $51ce: $c7
	db $e3                                           ; $51cf: $e3
	rra                                              ; $51d0: $1f

jr_013_51d1:
	ld h, a                                          ; $51d1: $67
	ldh a, [$8b]                                     ; $51d2: $f0 $8b
	jp $64fc                                         ; $51d4: $c3 $fc $64


	ld a, e                                          ; $51d7: $7b
	jr c, jr_013_5201                                ; $51d8: $38 $27

	ld h, b                                          ; $51da: $60
	ld e, a                                          ; $51db: $5f
	ld hl, sp-$01                                    ; $51dc: $f8 $ff
	ld c, $0f                                        ; $51de: $0e $0f
	ld b, $07                                        ; $51e0: $06 $07
	rra                                              ; $51e2: $1f
	inc a                                            ; $51e3: $3c
	rra                                              ; $51e4: $1f
	ccf                                              ; $51e5: $3f
	rra                                              ; $51e6: $1f
	dec sp                                           ; $51e7: $3b
	ld a, e                                          ; $51e8: $7b
	db $fc                                           ; $51e9: $fc
	adc d                                            ; $51ea: $8a
	rst $38                                          ; $51eb: $ff

jr_013_51ec:
	ldh a, [rIE]                                     ; $51ec: $f0 $ff
	xor $f1                                          ; $51ee: $ee $f1
	ldh [$1f], a                                     ; $51f0: $e0 $1f
	rra                                              ; $51f2: $1f
	ldh [$c4], a                                     ; $51f3: $e0 $c4
	dec sp                                           ; $51f5: $3b
	inc bc                                           ; $51f6: $03
	db $fc                                           ; $51f7: $fc
	inc a                                            ; $51f8: $3c
	jp $ff00                                         ; $51f9: $c3 $00 $ff


	rlca                                             ; $51fc: $07
	rlca                                             ; $51fd: $07
	rst $38                                          ; $51fe: $ff
	rst $38                                          ; $51ff: $ff
	ld h, a                                          ; $5200: $67

jr_013_5201:
	ret nz                                           ; $5201: $c0

	sub a                                            ; $5202: $97
	jr c, jr_013_51cc                                ; $5203: $38 $c7

	ldh [$1f], a                                     ; $5205: $e0 $1f
	dec bc                                           ; $5207: $0b
	rst FarCall                                          ; $5208: $f7
	inc bc                                           ; $5209: $03
	db $fd                                           ; $520a: $fd
	ld d, a                                          ; $520b: $57
	ldh a, [$7b]                                     ; $520c: $f0 $7b
	or b                                             ; $520e: $b0
	add b                                            ; $520f: $80
	db $fd                                           ; $5210: $fd
	ld [hl+], a                                      ; $5211: $22
	sbc $9e                                          ; $5212: $de $9e
	ld h, d                                          ; $5214: $62
	ld [bc], a                                       ; $5215: $02
	cp $e6                                           ; $5216: $fe $e6
	ld a, [de]                                       ; $5218: $1a
	ld a, [hl-]                                      ; $5219: $3a
	add $e3                                          ; $521a: $c6 $e3
	rra                                              ; $521c: $1f
	ld sp, hl                                        ; $521d: $f9
	ld sp, hl                                        ; $521e: $f9
	add hl, sp                                       ; $521f: $39
	ld sp, hl                                        ; $5220: $f9
	ld sp, hl                                        ; $5221: $f9
	dec de                                           ; $5222: $1b
	inc de                                           ; $5223: $13
	di                                               ; $5224: $f3
	di                                               ; $5225: $f3
	ld [hl], e                                       ; $5226: $73
	cp $ee                                           ; $5227: $fe $ee
	db $fc                                           ; $5229: $fc
	db $e4                                           ; $522a: $e4
	cp c                                             ; $522b: $b9
	cp c                                             ; $522c: $b9
	ld c, b                                          ; $522d: $48
	ld [hl], a                                       ; $522e: $77
	ld a, a                                          ; $522f: $7f
	sub [hl]                                         ; $5230: $96
	sub e                                            ; $5231: $93
	and b                                            ; $5232: $a0
	rst SubAFromDE                                          ; $5233: $df
	sbc [hl]                                         ; $5234: $9e
	pop hl                                           ; $5235: $e1
	jp $e4fc                                         ; $5236: $c3 $fc $e4


	ei                                               ; $5239: $fb
	ld hl, sp-$09                                    ; $523a: $f8 $f7
	ldh a, [rIE]                                     ; $523c: $f0 $ff
	inc c                                            ; $523e: $0c
	nop                                              ; $523f: $00
	sub [hl]                                         ; $5240: $96
	ld b, $02                                        ; $5241: $06 $02
	ld bc, $0700                                     ; $5243: $01 $00 $07
	ld [$0405], sp                                   ; $5246: $08 $05 $04
	inc bc                                           ; $5249: $03
	ld b, $00                                        ; $524a: $06 $00
	db $dd                                           ; $524c: $dd
	ld [hl+], a                                      ; $524d: $22
	sbc [hl]                                         ; $524e: $9e
	jr nz, jr_013_51ec                               ; $524f: $20 $9b

	nop                                              ; $5251: $00
	add b                                            ; $5252: $80
	ldh a, [rIE]                                     ; $5253: $f0 $ff
	xor $f1                                          ; $5255: $ee $f1
	ldh [$1f], a                                     ; $5257: $e0 $1f

jr_013_5259:
	rra                                              ; $5259: $1f
	ldh [$c4], a                                     ; $525a: $e0 $c4
	dec sp                                           ; $525c: $3b
	inc bc                                           ; $525d: $03
	db $fc                                           ; $525e: $fc
	inc a                                            ; $525f: $3c
	jp $ff00                                         ; $5260: $c3 $00 $ff


	ld c, b                                          ; $5263: $48
	ld [hl], a                                       ; $5264: $77
	jp $a0fc                                         ; $5265: $c3 $fc $a0


	rst SubAFromDE                                          ; $5268: $df

jr_013_5269:
	sbc [hl]                                         ; $5269: $9e
	pop hl                                           ; $526a: $e1
	jp $e4fc                                         ; $526b: $c3 $fc $e4


	ei                                               ; $526e: $fb
	ld hl, sp-$09                                    ; $526f: $f8 $f7
	ldh a, [$97]                                     ; $5271: $f0 $97
	rst $38                                          ; $5273: $ff
	ld sp, hl                                        ; $5274: $f9
	ld sp, hl                                        ; $5275: $f9
	add hl, sp                                       ; $5276: $39
	ld sp, hl                                        ; $5277: $f9
	ld sp, hl                                        ; $5278: $f9
	dec de                                           ; $5279: $1b
	inc de                                           ; $527a: $13
	sbc $f3                                          ; $527b: $de $f3
	add l                                            ; $527d: $85
	cp $ee                                           ; $527e: $fe $ee
	db $fc                                           ; $5280: $fc
	db $e4                                           ; $5281: $e4
	cp c                                             ; $5282: $b9
	cp c                                             ; $5283: $b9
	rlca                                             ; $5284: $07
	rlca                                             ; $5285: $07
	rst $38                                          ; $5286: $ff
	rst $38                                          ; $5287: $ff
	jr nz, jr_013_5269                               ; $5288: $20 $df

	sbc [hl]                                         ; $528a: $9e
	ld h, c                                          ; $528b: $61
	inc bc                                           ; $528c: $03
	db $fc                                           ; $528d: $fc
	db $e4                                           ; $528e: $e4
	dec de                                           ; $528f: $1b
	jr c, jr_013_5259                                ; $5290: $38 $c7

	ldh [$1f], a                                     ; $5292: $e0 $1f
	dec bc                                           ; $5294: $0b
	rst FarCall                                          ; $5295: $f7
	inc bc                                           ; $5296: $03
	db $fd                                           ; $5297: $fd
	ld d, a                                          ; $5298: $57
	ldh a, [$7f]                                     ; $5299: $f0 $7f
	cp [hl]                                          ; $529b: $be
	sbc [hl]                                         ; $529c: $9e
	ld c, $53                                        ; $529d: $0e $53
	or b                                             ; $529f: $b0
	adc e                                            ; $52a0: $8b
	add hl, bc                                       ; $52a1: $09
	ld sp, hl                                        ; $52a2: $f9
	ld de, $23f1                                     ; $52a3: $11 $f1 $23
	rst SubAFromBC                                          ; $52a6: $e7
	cp $ff                                           ; $52a7: $fe $ff
	ei                                               ; $52a9: $fb
	sbc e                                            ; $52aa: $9b
	di                                               ; $52ab: $f3
	di                                               ; $52ac: $f3
	rrca                                             ; $52ad: $0f
	rrca                                             ; $52ae: $0f
	rst $38                                          ; $52af: $ff
	rst $38                                          ; $52b0: $ff
	ld [$03f7], sp                                   ; $52b1: $08 $f7 $03
	db $fc                                           ; $52b4: $fc
	ld [hl], e                                       ; $52b5: $73
	ret nc                                           ; $52b6: $d0

	sbc b                                            ; $52b7: $98
	rst $38                                          ; $52b8: $ff
	and $1e                                          ; $52b9: $e6 $1e
	inc a                                            ; $52bb: $3c
	call nz, $1fe7                                   ; $52bc: $c4 $e7 $1f
	ld h, a                                          ; $52bf: $67
	ldh a, [$7f]                                     ; $52c0: $f0 $7f
	sub b                                            ; $52c2: $90
	adc l                                            ; $52c3: $8d
	ld h, h                                          ; $52c4: $64
	ld a, e                                          ; $52c5: $7b
	jr c, jr_013_52ef                                ; $52c6: $38 $27

	ld h, b                                          ; $52c8: $60
	ld e, a                                          ; $52c9: $5f
	ld hl, sp-$01                                    ; $52ca: $f8 $ff
	ld c, $0f                                        ; $52cc: $0e $0f
	ld b, $07                                        ; $52ce: $06 $07
	rra                                              ; $52d0: $1f
	inc a                                            ; $52d1: $3c
	rra                                              ; $52d2: $1f
	ccf                                              ; $52d3: $3f
	rra                                              ; $52d4: $1f
	dec sp                                           ; $52d5: $3b
	ld a, e                                          ; $52d6: $7b
	db $fc                                           ; $52d7: $fc
	ld [hl], a                                       ; $52d8: $77
	ret nc                                           ; $52d9: $d0

	sub e                                            ; $52da: $93
	db $fd                                           ; $52db: $fd
	ld [hl+], a                                      ; $52dc: $22
	sbc $9e                                          ; $52dd: $de $9e
	ld h, d                                          ; $52df: $62
	ld [bc], a                                       ; $52e0: $02
	cp $e6                                           ; $52e1: $fe $e6
	ld e, $3e                                        ; $52e3: $1e $3e
	adc $ef                                          ; $52e5: $ce $ef
	ld h, e                                          ; $52e7: $63
	ret nc                                           ; $52e8: $d0

	ld h, a                                          ; $52e9: $67
	sub b                                            ; $52ea: $90
	rrca                                             ; $52eb: $0f
	nop                                              ; $52ec: $00
	sub e                                            ; $52ed: $93
	dec bc                                           ; $52ee: $0b

jr_013_52ef:
	ld a, [bc]                                       ; $52ef: $0a
	add hl, bc                                       ; $52f0: $09
	ld [$0607], sp                                   ; $52f1: $08 $07 $06
	ld [bc], a                                       ; $52f4: $02
	ld bc, $0405                                     ; $52f5: $01 $05 $04
	inc bc                                           ; $52f8: $03
	nop                                              ; $52f9: $00
	inc b                                            ; $52fa: $04
	nop                                              ; $52fb: $00
	db $db                                           ; $52fc: $db
	ld [hl+], a                                      ; $52fd: $22
	sbc c                                            ; $52fe: $99
	nop                                              ; $52ff: $00
	add b                                            ; $5300: $80
	ldh a, [rIE]                                     ; $5301: $f0 $ff
	xor $f1                                          ; $5303: $ee $f1
	ldh [$1f], a                                     ; $5305: $e0 $1f

jr_013_5307:
	rra                                              ; $5307: $1f
	ldh [$c4], a                                     ; $5308: $e0 $c4
	dec sp                                           ; $530a: $3b
	inc bc                                           ; $530b: $03
	db $fc                                           ; $530c: $fc
	inc a                                            ; $530d: $3c
	jp $ff00                                         ; $530e: $c3 $00 $ff


	ld c, b                                          ; $5311: $48
	ld [hl], a                                       ; $5312: $77
	jp $a0fc                                         ; $5313: $c3 $fc $a0


	rst SubAFromDE                                          ; $5316: $df

jr_013_5317:
	sbc [hl]                                         ; $5317: $9e
	pop hl                                           ; $5318: $e1
	jp $e4fc                                         ; $5319: $c3 $fc $e4


	ei                                               ; $531c: $fb
	ld hl, sp-$09                                    ; $531d: $f8 $f7
	ldh a, [$97]                                     ; $531f: $f0 $97
	rst $38                                          ; $5321: $ff
	ld sp, hl                                        ; $5322: $f9
	ld sp, hl                                        ; $5323: $f9
	add hl, sp                                       ; $5324: $39
	ld sp, hl                                        ; $5325: $f9
	ld sp, hl                                        ; $5326: $f9
	dec de                                           ; $5327: $1b
	inc de                                           ; $5328: $13
	sbc $f3                                          ; $5329: $de $f3
	add l                                            ; $532b: $85
	cp $ee                                           ; $532c: $fe $ee
	db $fc                                           ; $532e: $fc
	db $e4                                           ; $532f: $e4
	cp c                                             ; $5330: $b9
	cp c                                             ; $5331: $b9
	rlca                                             ; $5332: $07
	rlca                                             ; $5333: $07
	rst $38                                          ; $5334: $ff
	rst $38                                          ; $5335: $ff
	jr nz, jr_013_5317                               ; $5336: $20 $df

	sbc [hl]                                         ; $5338: $9e
	ld h, c                                          ; $5339: $61
	inc bc                                           ; $533a: $03
	db $fc                                           ; $533b: $fc
	db $e4                                           ; $533c: $e4
	dec de                                           ; $533d: $1b
	jr c, jr_013_5307                                ; $533e: $38 $c7

	ldh [$1f], a                                     ; $5340: $e0 $1f
	dec bc                                           ; $5342: $0b
	rst FarCall                                          ; $5343: $f7
	inc bc                                           ; $5344: $03
	db $fd                                           ; $5345: $fd
	ld d, a                                          ; $5346: $57
	ldh a, [$7f]                                     ; $5347: $f0 $7f
	cp [hl]                                          ; $5349: $be
	sbc [hl]                                         ; $534a: $9e
	ld c, $53                                        ; $534b: $0e $53
	or b                                             ; $534d: $b0
	ld a, a                                          ; $534e: $7f
	jp nz, $118d                                     ; $534f: $c2 $8d $11

	pop af                                           ; $5352: $f1
	inc hl                                           ; $5353: $23
	rst SubAFromBC                                          ; $5354: $e7
	cp $ff                                           ; $5355: $fe $ff
	ei                                               ; $5357: $fb
	sbc e                                            ; $5358: $9b
	di                                               ; $5359: $f3
	di                                               ; $535a: $f3
	rrca                                             ; $535b: $0f
	rrca                                             ; $535c: $0f
	rst $38                                          ; $535d: $ff
	rst $38                                          ; $535e: $ff
	ld [$03f7], sp                                   ; $535f: $08 $f7 $03
	db $fc                                           ; $5362: $fc
	ld [hl], e                                       ; $5363: $73
	ret nc                                           ; $5364: $d0

	sbc b                                            ; $5365: $98
	rst $38                                          ; $5366: $ff
	and $1e                                          ; $5367: $e6 $1e
	inc a                                            ; $5369: $3c
	call nz, $1fe7                                   ; $536a: $c4 $e7 $1f
	ld h, a                                          ; $536d: $67
	ldh a, [$7f]                                     ; $536e: $f0 $7f
	sub b                                            ; $5370: $90
	adc l                                            ; $5371: $8d
	ld h, h                                          ; $5372: $64
	ld a, e                                          ; $5373: $7b
	jr c, jr_013_539d                                ; $5374: $38 $27

	ld h, b                                          ; $5376: $60
	ld e, a                                          ; $5377: $5f
	ld hl, sp-$01                                    ; $5378: $f8 $ff
	ld c, $0f                                        ; $537a: $0e $0f
	ld b, $07                                        ; $537c: $06 $07
	rra                                              ; $537e: $1f
	inc a                                            ; $537f: $3c
	rra                                              ; $5380: $1f
	ccf                                              ; $5381: $3f

jr_013_5382:
	rra                                              ; $5382: $1f
	dec sp                                           ; $5383: $3b
	ld a, e                                          ; $5384: $7b
	db $fc                                           ; $5385: $fc
	sub a                                            ; $5386: $97
	rst $38                                          ; $5387: $ff
	inc e                                            ; $5388: $1c
	rst $38                                          ; $5389: $ff
	ld h, e                                          ; $538a: $63
	db $e3                                           ; $538b: $e3
	adc [hl]                                         ; $538c: $8e
	sbc [hl]                                         ; $538d: $9e
	sbc d                                            ; $538e: $9a
	ld [hl], e                                       ; $538f: $73
	cp $df                                           ; $5390: $fe $df

jr_013_5392:
	adc $5b                                          ; $5392: $ce $5b
	ret nz                                           ; $5394: $c0

	ld l, e                                          ; $5395: $6b
	sub b                                            ; $5396: $90
	rrca                                             ; $5397: $0f
	nop                                              ; $5398: $00
	sub e                                            ; $5399: $93
	dec bc                                           ; $539a: $0b
	ld a, [bc]                                       ; $539b: $0a
	add hl, bc                                       ; $539c: $09

jr_013_539d:
	ld [$0607], sp                                   ; $539d: $08 $07 $06
	ld [bc], a                                       ; $53a0: $02
	ld bc, $0405                                     ; $53a1: $01 $05 $04
	inc bc                                           ; $53a4: $03
	nop                                              ; $53a5: $00
	inc b                                            ; $53a6: $04
	nop                                              ; $53a7: $00
	db $db                                           ; $53a8: $db
	ld [hl+], a                                      ; $53a9: $22
	cp c                                             ; $53aa: $b9
	nop                                              ; $53ab: $00
	rst SubAFromDE                                          ; $53ac: $df
	rlca                                             ; $53ad: $07
	rst SubAFromDE                                          ; $53ae: $df
	rst $38                                          ; $53af: $ff
	adc a                                            ; $53b0: $8f
	jr nz, jr_013_5392                               ; $53b1: $20 $df

	sbc [hl]                                         ; $53b3: $9e
	ld h, c                                          ; $53b4: $61
	inc bc                                           ; $53b5: $03
	db $fc                                           ; $53b6: $fc
	db $e4                                           ; $53b7: $e4
	dec de                                           ; $53b8: $1b
	jr c, jr_013_5382                                ; $53b9: $38 $c7

	ldh [$1f], a                                     ; $53bb: $e0 $1f
	dec bc                                           ; $53bd: $0b
	rst FarCall                                          ; $53be: $f7
	inc bc                                           ; $53bf: $03
	db $fd                                           ; $53c0: $fd
	ld d, a                                          ; $53c1: $57
	ldh a, [$80]                                     ; $53c2: $f0 $80
	nop                                              ; $53c4: $00
	rst $38                                          ; $53c5: $ff
	ld c, $f1                                        ; $53c6: $0e $f1
	ldh [$1f], a                                     ; $53c8: $e0 $1f
	rra                                              ; $53ca: $1f
	ldh [$c4], a                                     ; $53cb: $e0 $c4
	dec sp                                           ; $53cd: $3b
	inc bc                                           ; $53ce: $03
	db $fc                                           ; $53cf: $fc
	inc a                                            ; $53d0: $3c
	jp $ff00                                         ; $53d1: $c3 $00 $ff


	ld c, b                                          ; $53d4: $48
	ld [hl], a                                       ; $53d5: $77
	jp $a0fc                                         ; $53d6: $c3 $fc $a0


	rst SubAFromDE                                          ; $53d9: $df
	sbc [hl]                                         ; $53da: $9e
	pop hl                                           ; $53db: $e1
	jp $e4fc                                         ; $53dc: $c3 $fc $e4


	ei                                               ; $53df: $fb
	ld hl, sp-$09                                    ; $53e0: $f8 $f7
	ldh a, [$97]                                     ; $53e2: $f0 $97
	rst $38                                          ; $53e4: $ff
	ld sp, hl                                        ; $53e5: $f9
	ld sp, hl                                        ; $53e6: $f9
	add hl, sp                                       ; $53e7: $39
	ld sp, hl                                        ; $53e8: $f9
	add hl, de                                       ; $53e9: $19
	ei                                               ; $53ea: $fb
	inc de                                           ; $53eb: $13
	sbc $f3                                          ; $53ec: $de $f3
	add l                                            ; $53ee: $85
	cp $ee                                           ; $53ef: $fe $ee
	db $fc                                           ; $53f1: $fc
	db $e4                                           ; $53f2: $e4
	cp c                                             ; $53f3: $b9
	cp c                                             ; $53f4: $b9
	add hl, sp                                       ; $53f5: $39
	ld sp, hl                                        ; $53f6: $f9
	ld de, $23f1                                     ; $53f7: $11 $f1 $23
	rst SubAFromBC                                          ; $53fa: $e7
	rst $38                                          ; $53fb: $ff
	cp $fb                                           ; $53fc: $fe $fb
	sbc e                                            ; $53fe: $9b
	di                                               ; $53ff: $f3
	di                                               ; $5400: $f3
	rrca                                             ; $5401: $0f
	rrca                                             ; $5402: $0f
	rst $38                                          ; $5403: $ff
	rst $38                                          ; $5404: $ff
	ld [$03f7], sp                                   ; $5405: $08 $f7 $03
	db $fc                                           ; $5408: $fc
	ld [hl], e                                       ; $5409: $73
	or b                                             ; $540a: $b0
	sbc b                                            ; $540b: $98
	rst $38                                          ; $540c: $ff
	and $1e                                          ; $540d: $e6 $1e
	inc a                                            ; $540f: $3c
	call nz, $1fe7                                   ; $5410: $c4 $e7 $1f
	ld h, a                                          ; $5413: $67
	ldh a, [$7f]                                     ; $5414: $f0 $7f
	ret nz                                           ; $5416: $c0

	adc l                                            ; $5417: $8d
	ld h, h                                          ; $5418: $64
	ld a, e                                          ; $5419: $7b
	jr c, jr_013_5443                                ; $541a: $38 $27

	ld h, b                                          ; $541c: $60
	ld e, a                                          ; $541d: $5f
	ld hl, sp-$01                                    ; $541e: $f8 $ff
	ld c, $0f                                        ; $5420: $0e $0f
	ld b, $07                                        ; $5422: $06 $07
	rra                                              ; $5424: $1f
	inc a                                            ; $5425: $3c
	rra                                              ; $5426: $1f
	ccf                                              ; $5427: $3f
	rra                                              ; $5428: $1f
	dec sp                                           ; $5429: $3b
	ld a, e                                          ; $542a: $7b
	db $fc                                           ; $542b: $fc
	sub l                                            ; $542c: $95
	rst $38                                          ; $542d: $ff
	rra                                              ; $542e: $1f
	db $fd                                           ; $542f: $fd
	ld h, a                                          ; $5430: $67
	rst $38                                          ; $5431: $ff
	jp z, Jump_013_4ace                              ; $5432: $ca $ce $4a

	ld c, [hl]                                       ; $5435: $4e
	ld c, d                                          ; $5436: $4a
	call c, Call_013_674e                            ; $5437: $dc $4e $67
	ret nz                                           ; $543a: $c0

	sbc b                                            ; $543b: $98
	sbc a                                            ; $543c: $9f
	ld h, c                                          ; $543d: $61
	inc bc                                           ; $543e: $03
	db $fd                                           ; $543f: $fd
	push hl                                          ; $5440: $e5
	dec de                                           ; $5441: $1b
	add hl, sp                                       ; $5442: $39

jr_013_5443:
	ld a, e                                          ; $5443: $7b
	ld [hl], b                                       ; $5444: $70
	ld a, a                                          ; $5445: $7f
	adc [hl]                                         ; $5446: $8e
	sbc [hl]                                         ; $5447: $9e
	xor $53                                          ; $5448: $ee $53
	ld [hl], b                                       ; $544a: $70
	ld h, e                                          ; $544b: $63
	and b                                            ; $544c: $a0
	ld l, e                                          ; $544d: $6b
	ld d, b                                          ; $544e: $50
	ld e, a                                          ; $544f: $5f
	ldh a, [$99]                                     ; $5450: $f0 $99

jr_013_5452:
	rst SubAFromBC                                          ; $5452: $e7
	dec de                                           ; $5453: $1b
	ccf                                              ; $5454: $3f
	add $ef                                          ; $5455: $c6 $ef
	dec e                                            ; $5457: $1d
	ld h, a                                          ; $5458: $67
	ld b, b                                          ; $5459: $40
	sub a                                            ; $545a: $97
	db $e4                                           ; $545b: $e4
	ld a, e                                          ; $545c: $7b
	di                                               ; $545d: $f3
	call c, $ebfc                                    ; $545e: $dc $fc $eb
	ld hl, sp-$51                                    ; $5461: $f8 $af
	inc de                                           ; $5463: $13
	nop                                              ; $5464: $00
	adc a                                            ; $5465: $8f
	inc c                                            ; $5466: $0c
	dec c                                            ; $5467: $0d
	ld c, $0c                                        ; $5468: $0e $0c
	ld a, [bc]                                       ; $546a: $0a
	add hl, bc                                       ; $546b: $09
	ld [$0607], sp                                   ; $546c: $08 $07 $06
	dec b                                            ; $546f: $05
	inc b                                            ; $5470: $04
	inc bc                                           ; $5471: $03
	ld [bc], a                                       ; $5472: $02
	ld bc, $0b00                                     ; $5473: $01 $00 $0b
	inc b                                            ; $5476: $04
	nop                                              ; $5477: $00
	reti                                             ; $5478: $d9


	ld [hl+], a                                      ; $5479: $22
	db $e4                                           ; $547a: $e4
	nop                                              ; $547b: $00
	rst SubAFromDE                                          ; $547c: $df
	rlca                                             ; $547d: $07
	rst SubAFromDE                                          ; $547e: $df
	rst $38                                          ; $547f: $ff
	adc a                                            ; $5480: $8f
	jr nz, @-$1f                                     ; $5481: $20 $df

	sbc [hl]                                         ; $5483: $9e
	ld h, c                                          ; $5484: $61
	inc bc                                           ; $5485: $03
	db $fc                                           ; $5486: $fc
	db $e4                                           ; $5487: $e4
	dec de                                           ; $5488: $1b
	jr c, jr_013_5452                                ; $5489: $38 $c7

	ldh [$1f], a                                     ; $548b: $e0 $1f
	dec bc                                           ; $548d: $0b
	rst FarCall                                          ; $548e: $f7
	inc bc                                           ; $548f: $03
	db $fd                                           ; $5490: $fd
	ld d, a                                          ; $5491: $57
	ldh a, [$80]                                     ; $5492: $f0 $80
	nop                                              ; $5494: $00
	rst $38                                          ; $5495: $ff
	ld c, $f1                                        ; $5496: $0e $f1
	ldh [$1f], a                                     ; $5498: $e0 $1f
	rra                                              ; $549a: $1f
	ldh [$c4], a                                     ; $549b: $e0 $c4
	dec sp                                           ; $549d: $3b
	inc bc                                           ; $549e: $03
	db $fc                                           ; $549f: $fc
	inc a                                            ; $54a0: $3c
	jp $ff00                                         ; $54a1: $c3 $00 $ff


	ld c, b                                          ; $54a4: $48
	ld [hl], a                                       ; $54a5: $77
	jp $a0fc                                         ; $54a6: $c3 $fc $a0


	rst SubAFromDE                                          ; $54a9: $df
	sbc [hl]                                         ; $54aa: $9e
	pop hl                                           ; $54ab: $e1
	jp $e4fc                                         ; $54ac: $c3 $fc $e4


	ei                                               ; $54af: $fb
	ld hl, sp-$09                                    ; $54b0: $f8 $f7
	ldh a, [$97]                                     ; $54b2: $f0 $97
	rst $38                                          ; $54b4: $ff
	ld sp, hl                                        ; $54b5: $f9
	ld sp, hl                                        ; $54b6: $f9
	add hl, sp                                       ; $54b7: $39
	ld sp, hl                                        ; $54b8: $f9
	add hl, de                                       ; $54b9: $19
	ei                                               ; $54ba: $fb
	inc de                                           ; $54bb: $13
	sbc $f3                                          ; $54bc: $de $f3
	add l                                            ; $54be: $85
	cp $ee                                           ; $54bf: $fe $ee
	db $fc                                           ; $54c1: $fc
	db $e4                                           ; $54c2: $e4
	cp c                                             ; $54c3: $b9
	cp c                                             ; $54c4: $b9
	add hl, sp                                       ; $54c5: $39
	ld sp, hl                                        ; $54c6: $f9
	ld de, $23f1                                     ; $54c7: $11 $f1 $23
	rst SubAFromBC                                          ; $54ca: $e7
	rst $38                                          ; $54cb: $ff
	cp $fb                                           ; $54cc: $fe $fb
	sbc e                                            ; $54ce: $9b
	di                                               ; $54cf: $f3
	di                                               ; $54d0: $f3
	rrca                                             ; $54d1: $0f
	rrca                                             ; $54d2: $0f
	rst $38                                          ; $54d3: $ff
	rst $38                                          ; $54d4: $ff
	ld [$03f7], sp                                   ; $54d5: $08 $f7 $03
	db $fc                                           ; $54d8: $fc
	ld [hl], e                                       ; $54d9: $73
	or b                                             ; $54da: $b0
	sbc b                                            ; $54db: $98
	rst $38                                          ; $54dc: $ff
	and $1e                                          ; $54dd: $e6 $1e
	inc a                                            ; $54df: $3c
	call nz, $1fe7                                   ; $54e0: $c4 $e7 $1f
	ld h, a                                          ; $54e3: $67
	ldh a, [$7f]                                     ; $54e4: $f0 $7f
	ret nz                                           ; $54e6: $c0

	adc l                                            ; $54e7: $8d
	ld h, h                                          ; $54e8: $64
	ld a, e                                          ; $54e9: $7b
	jr c, jr_013_5513                                ; $54ea: $38 $27

	ld h, b                                          ; $54ec: $60
	ld e, a                                          ; $54ed: $5f
	ld hl, sp-$01                                    ; $54ee: $f8 $ff
	ld c, $0f                                        ; $54f0: $0e $0f
	ld b, $07                                        ; $54f2: $06 $07
	rra                                              ; $54f4: $1f
	inc a                                            ; $54f5: $3c
	rra                                              ; $54f6: $1f
	ccf                                              ; $54f7: $3f
	rra                                              ; $54f8: $1f
	dec sp                                           ; $54f9: $3b
	ld a, e                                          ; $54fa: $7b
	db $fc                                           ; $54fb: $fc
	sub [hl]                                         ; $54fc: $96
	rst $38                                          ; $54fd: $ff
	ld a, a                                          ; $54fe: $7f
	rst $38                                          ; $54ff: $ff
	rst SubAFromBC                                          ; $5500: $e7
	rst $38                                          ; $5501: $ff
	jp z, Jump_013_4aca                              ; $5502: $ca $ca $4a

	ld c, d                                          ; $5505: $4a
	db $db                                           ; $5506: $db
	ld c, [hl]                                       ; $5507: $4e
	ld h, a                                          ; $5508: $67
	ret nz                                           ; $5509: $c0

	sbc b                                            ; $550a: $98
	sbc a                                            ; $550b: $9f
	ld h, c                                          ; $550c: $61
	inc bc                                           ; $550d: $03
	db $fd                                           ; $550e: $fd
	push hl                                          ; $550f: $e5
	dec de                                           ; $5510: $1b
	add hl, sp                                       ; $5511: $39
	ld a, e                                          ; $5512: $7b

jr_013_5513:
	ld [hl], b                                       ; $5513: $70
	sbc h                                            ; $5514: $9c
	adc b                                            ; $5515: $88
	rst FarCall                                          ; $5516: $f7
	add e                                            ; $5517: $83
	ld [hl], e                                       ; $5518: $73
	add b                                            ; $5519: $80
	ld h, e                                          ; $551a: $63
	ld d, b                                          ; $551b: $50
	add b                                            ; $551c: $80
	rrca                                             ; $551d: $0f
	adc d                                            ; $551e: $8a
	adc [hl]                                         ; $551f: $8e
	adc $ca                                          ; $5520: $ce $ca
	call z, $e1cc                                    ; $5522: $cc $cc $e1
	pop hl                                           ; $5525: $e1
	sbc l                                            ; $5526: $9d
	rst $38                                          ; $5527: $ff
	rlca                                             ; $5528: $07
	rst $38                                          ; $5529: $ff
	cp $ff                                           ; $552a: $fe $ff
	di                                               ; $552c: $f3
	di                                               ; $552d: $f3
	ld a, [$fe8a]                                    ; $552e: $fa $8a $fe
	ld h, [hl]                                       ; $5531: $66
	cp $62                                           ; $5532: $fe $62
	cp $02                                           ; $5534: $fe $02
	cp $82                                           ; $5536: $fe $82
	rst $38                                          ; $5538: $ff
	add a                                            ; $5539: $87
	rst $38                                          ; $553a: $ff
	rst GetHLinHL                                          ; $553b: $cf
	ld [hl], a                                       ; $553c: $77
	ret nz                                           ; $553d: $c0

	sbc [hl]                                         ; $553e: $9e
	ld hl, $c073                                     ; $553f: $21 $73 $c0
	ld l, a                                          ; $5542: $6f
	ret nc                                           ; $5543: $d0

	ld a, a                                          ; $5544: $7f
	ld c, [hl]                                       ; $5545: $4e
	sbc [hl]                                         ; $5546: $9e
	xor $53                                          ; $5547: $ee $53
	jr nc, jr_013_55ae                               ; $5549: $30 $63

	ld h, b                                          ; $554b: $60
	dec sp                                           ; $554c: $3b
	db $10                                           ; $554d: $10
	sbc e                                            ; $554e: $9b
	ld a, h                                          ; $554f: $7c
	ei                                               ; $5550: $fb
	adc a                                            ; $5551: $8f
	adc a                                            ; $5552: $8f
	ld h, a                                          ; $5553: $67
	ldh [$97], a                                     ; $5554: $e0 $97
	ld a, e                                          ; $5556: $7b
	db $fc                                           ; $5557: $fc
	add $87                                          ; $5558: $c6 $87
	rst $38                                          ; $555a: $ff
	rst $38                                          ; $555b: $ff
	rst GetHLinHL                                          ; $555c: $cf
	adc l                                            ; $555d: $8d
	rla                                              ; $555e: $17
	nop                                              ; $555f: $00
	adc e                                            ; $5560: $8b
	db $10                                           ; $5561: $10
	ld de, $1012                                     ; $5562: $11 $12 $10

jr_013_5565:
	ld c, $0d                                        ; $5565: $0e $0d
	inc c                                            ; $5567: $0c
	dec bc                                           ; $5568: $0b
	ld a, [bc]                                       ; $5569: $0a
	add hl, bc                                       ; $556a: $09
	ld [$0607], sp                                   ; $556b: $08 $07 $06
	dec b                                            ; $556e: $05
	inc b                                            ; $556f: $04
	inc bc                                           ; $5570: $03
	ld [bc], a                                       ; $5571: $02
	ld bc, $0f00                                     ; $5572: $01 $00 $0f

jr_013_5575:
	ld [$df00], sp                                   ; $5575: $08 $00 $df
	ld [hl+], a                                      ; $5578: $22
	sbc [hl]                                         ; $5579: $9e
	dec h                                            ; $557a: $25
	jp c, $f122                                      ; $557b: $da $22 $f1

	nop                                              ; $557e: $00
	add b                                            ; $557f: $80
	ldh a, [rIE]                                     ; $5580: $f0 $ff
	xor $f1                                          ; $5582: $ee $f1
	ldh [$1f], a                                     ; $5584: $e0 $1f
	rra                                              ; $5586: $1f
	ldh [$c4], a                                     ; $5587: $e0 $c4
	dec sp                                           ; $5589: $3b
	inc bc                                           ; $558a: $03
	db $fc                                           ; $558b: $fc
	inc a                                            ; $558c: $3c
	jp $ff00                                         ; $558d: $c3 $00 $ff


	rlca                                             ; $5590: $07
	rlca                                             ; $5591: $07
	rst $38                                          ; $5592: $ff
	rst $38                                          ; $5593: $ff
	jr nz, jr_013_5575                               ; $5594: $20 $df

	sbc [hl]                                         ; $5596: $9e
	ld h, c                                          ; $5597: $61
	inc bc                                           ; $5598: $03
	db $fc                                           ; $5599: $fc
	db $e4                                           ; $559a: $e4
	dec de                                           ; $559b: $1b
	jr c, jr_013_5565                                ; $559c: $38 $c7

	ldh [$9a], a                                     ; $559e: $e0 $9a
	rra                                              ; $55a0: $1f
	dec bc                                           ; $55a1: $0b
	rst FarCall                                          ; $55a2: $f7
	inc bc                                           ; $55a3: $03
	db $fd                                           ; $55a4: $fd
	ld d, a                                          ; $55a5: $57
	ldh a, [$7f]                                     ; $55a6: $f0 $7f
	sbc $9e                                          ; $55a8: $de $9e
	ld c, $53                                        ; $55aa: $0e $53
	ret nc                                           ; $55ac: $d0

	adc b                                            ; $55ad: $88

jr_013_55ae:
	ld c, b                                          ; $55ae: $48
	ld [hl], a                                       ; $55af: $77
	jp $a0fc                                         ; $55b0: $c3 $fc $a0


	rst SubAFromDE                                          ; $55b3: $df
	sbc [hl]                                         ; $55b4: $9e
	pop hl                                           ; $55b5: $e1
	jp $e4fc                                         ; $55b6: $c3 $fc $e4


	ei                                               ; $55b9: $fb
	ld hl, sp-$09                                    ; $55ba: $f8 $f7
	ldh a, [rIE]                                     ; $55bc: $f0 $ff
	ld sp, hl                                        ; $55be: $f9
	ld sp, hl                                        ; $55bf: $f9
	add hl, sp                                       ; $55c0: $39
	ld sp, hl                                        ; $55c1: $f9
	ld sp, hl                                        ; $55c2: $f9
	dec de                                           ; $55c3: $1b
	inc de                                           ; $55c4: $13
	sbc $f3                                          ; $55c5: $de $f3
	add l                                            ; $55c7: $85
	cp $ee                                           ; $55c8: $fe $ee
	db $fc                                           ; $55ca: $fc
	db $e4                                           ; $55cb: $e4
	cp c                                             ; $55cc: $b9
	cp c                                             ; $55cd: $b9
	add hl, sp                                       ; $55ce: $39
	ld sp, hl                                        ; $55cf: $f9
	ld de, $23f1                                     ; $55d0: $11 $f1 $23
	rst SubAFromBC                                          ; $55d3: $e7
	cp $ff                                           ; $55d4: $fe $ff
	ei                                               ; $55d6: $fb
	sbc e                                            ; $55d7: $9b
	di                                               ; $55d8: $f3
	di                                               ; $55d9: $f3
	rrca                                             ; $55da: $0f
	rrca                                             ; $55db: $0f
	rst $38                                          ; $55dc: $ff
	rst $38                                          ; $55dd: $ff
	ld [$03f7], sp                                   ; $55de: $08 $f7 $03
	db $fc                                           ; $55e1: $fc
	ld [hl], e                                       ; $55e2: $73
	or b                                             ; $55e3: $b0
	sbc b                                            ; $55e4: $98
	rst $38                                          ; $55e5: $ff
	and $1e                                          ; $55e6: $e6 $1e
	inc a                                            ; $55e8: $3c
	call nz, $1fe7                                   ; $55e9: $c4 $e7 $1f
	ld h, a                                          ; $55ec: $67
	ldh a, [$7f]                                     ; $55ed: $f0 $7f
	ret nz                                           ; $55ef: $c0

	adc l                                            ; $55f0: $8d
	ld h, h                                          ; $55f1: $64
	ld a, e                                          ; $55f2: $7b
	jr c, jr_013_561c                                ; $55f3: $38 $27

	ld h, b                                          ; $55f5: $60
	ld e, a                                          ; $55f6: $5f
	ld hl, sp-$01                                    ; $55f7: $f8 $ff
	ld c, $0f                                        ; $55f9: $0e $0f
	ld b, $07                                        ; $55fb: $06 $07
	rra                                              ; $55fd: $1f
	inc a                                            ; $55fe: $3c
	rra                                              ; $55ff: $1f
	ccf                                              ; $5600: $3f
	rra                                              ; $5601: $1f
	dec sp                                           ; $5602: $3b
	ld a, e                                          ; $5603: $7b
	db $fc                                           ; $5604: $fc
	sbc $ff                                          ; $5605: $de $ff
	sbc c                                            ; $5607: $99
	rst SubAFromBC                                          ; $5608: $e7
	rst $38                                          ; $5609: $ff
	jp z, Jump_013_4aca                              ; $560a: $ca $ca $4a

	ld c, d                                          ; $560d: $4a
	db $db                                           ; $560e: $db
	ld c, [hl]                                       ; $560f: $4e
	ld h, a                                          ; $5610: $67
	ret nz                                           ; $5611: $c0

	sbc b                                            ; $5612: $98
	sbc a                                            ; $5613: $9f
	ld h, c                                          ; $5614: $61
	inc bc                                           ; $5615: $03
	db $fd                                           ; $5616: $fd
	push hl                                          ; $5617: $e5
	dec de                                           ; $5618: $1b
	add hl, sp                                       ; $5619: $39
	ld a, e                                          ; $561a: $7b
	ld [hl], b                                       ; $561b: $70

jr_013_561c:
	sbc h                                            ; $561c: $9c
	adc b                                            ; $561d: $88
	rst FarCall                                          ; $561e: $f7
	add e                                            ; $561f: $83
	ld [hl], e                                       ; $5620: $73
	add b                                            ; $5621: $80
	ld h, e                                          ; $5622: $63
	ld d, b                                          ; $5623: $50
	adc d                                            ; $5624: $8a
	rrca                                             ; $5625: $0f
	adc d                                            ; $5626: $8a
	adc [hl]                                         ; $5627: $8e
	adc $ca                                          ; $5628: $ce $ca
	call z, $e1cc                                    ; $562a: $cc $cc $e1
	pop hl                                           ; $562d: $e1
	sbc l                                            ; $562e: $9d
	rst $38                                          ; $562f: $ff

Call_013_5630:
	rlca                                             ; $5630: $07
	rst $38                                          ; $5631: $ff
	cp $ff                                           ; $5632: $fe $ff
	di                                               ; $5634: $f3
	di                                               ; $5635: $f3
	ld a, [$fa9a]                                    ; $5636: $fa $9a $fa
	ld l, d                                          ; $5639: $6a
	ld a, e                                          ; $563a: $7b

jr_013_563b:
	cp $89                                           ; $563b: $fe $89
	ld a, [bc]                                       ; $563d: $0a
	ld a, [$759a]                                    ; $563e: $fa $9a $75
	ld [hl], l                                       ; $5641: $75
	adc e                                            ; $5642: $8b
	adc e                                            ; $5643: $8b
	ld a, [bc]                                       ; $5644: $0a
	or $02                                           ; $5645: $f6 $02
	cp $25                                           ; $5647: $fe $25
	db $dd                                           ; $5649: $dd
	sbc l                                            ; $564a: $9d
	ld h, l                                          ; $564b: $65
	dec b                                            ; $564c: $05
	db $fd                                           ; $564d: $fd
	and $1a                                          ; $564e: $e6 $1a
	dec sp                                           ; $5650: $3b
	rst JumpTable                                          ; $5651: $c7
	pop hl                                           ; $5652: $e1
	ld h, e                                          ; $5653: $63
	add b                                            ; $5654: $80
	ld l, a                                          ; $5655: $6f
	ret nz                                           ; $5656: $c0

	ld a, a                                          ; $5657: $7f
	ldh a, [$57]                                     ; $5658: $f0 $57
	jr nz, jr_013_563b                               ; $565a: $20 $df

	rst $38                                          ; $565c: $ff
	rst SubAFromDE                                          ; $565d: $df
	rrca                                             ; $565e: $0f
	ld h, a                                          ; $565f: $67
	ldh [$97], a                                     ; $5660: $e0 $97
	ld a, e                                          ; $5662: $7b
	db $fc                                           ; $5663: $fc
	add $87                                          ; $5664: $c6 $87
	rst $38                                          ; $5666: $ff
	rst $38                                          ; $5667: $ff
	rst GetHLinHL                                          ; $5668: $cf
	adc l                                            ; $5669: $8d
	ld c, a                                          ; $566a: $4f
	ret nc                                           ; $566b: $d0

	ld a, a                                          ; $566c: $7f
	sub $17                                          ; $566d: $d6 $17
	nop                                              ; $566f: $00
	adc e                                            ; $5670: $8b
	db $10                                           ; $5671: $10
	ld de, $1312                                     ; $5672: $11 $12 $13

jr_013_5675:
	rrca                                             ; $5675: $0f
	ld c, $0d                                        ; $5676: $0e $0d
	inc c                                            ; $5678: $0c
	dec bc                                           ; $5679: $0b
	ld a, [bc]                                       ; $567a: $0a
	add hl, bc                                       ; $567b: $09
	ld [$0607], sp                                   ; $567c: $08 $07 $06
	dec b                                            ; $567f: $05
	inc b                                            ; $5680: $04
	inc bc                                           ; $5681: $03
	ld [bc], a                                       ; $5682: $02
	ld bc, $0800                                     ; $5683: $01 $00 $08
	nop                                              ; $5686: $00
	rst SubAFromDE                                          ; $5687: $df
	ld [hl+], a                                      ; $5688: $22
	sbc [hl]                                         ; $5689: $9e
	dec h                                            ; $568a: $25
	jp c, $ff22                                      ; $568b: $da $22 $ff

	nop                                              ; $568e: $00
	add b                                            ; $568f: $80
	ldh a, [rIE]                                     ; $5690: $f0 $ff
	xor $f1                                          ; $5692: $ee $f1
	ldh [$1f], a                                     ; $5694: $e0 $1f
	rra                                              ; $5696: $1f
	ldh [$c4], a                                     ; $5697: $e0 $c4
	dec sp                                           ; $5699: $3b
	inc bc                                           ; $569a: $03
	db $fc                                           ; $569b: $fc
	inc a                                            ; $569c: $3c
	jp $ff00                                         ; $569d: $c3 $00 $ff


	rlca                                             ; $56a0: $07
	rlca                                             ; $56a1: $07
	rst $38                                          ; $56a2: $ff
	rst $38                                          ; $56a3: $ff
	jr nz, @-$1f                                     ; $56a4: $20 $df

	sbc [hl]                                         ; $56a6: $9e
	ld h, c                                          ; $56a7: $61
	inc bc                                           ; $56a8: $03
	db $fc                                           ; $56a9: $fc
	db $e4                                           ; $56aa: $e4
	dec de                                           ; $56ab: $1b
	jr c, jr_013_5675                                ; $56ac: $38 $c7

	ldh [$9a], a                                     ; $56ae: $e0 $9a
	rra                                              ; $56b0: $1f
	dec bc                                           ; $56b1: $0b
	rst FarCall                                          ; $56b2: $f7
	inc bc                                           ; $56b3: $03
	db $fd                                           ; $56b4: $fd
	ld d, a                                          ; $56b5: $57
	ldh a, [$7f]                                     ; $56b6: $f0 $7f
	sbc $9e                                          ; $56b8: $de $9e
	ld c, $53                                        ; $56ba: $0e $53
	ret nc                                           ; $56bc: $d0

	adc b                                            ; $56bd: $88
	ld c, b                                          ; $56be: $48
	ld [hl], a                                       ; $56bf: $77
	jp $a0fc                                         ; $56c0: $c3 $fc $a0


	rst SubAFromDE                                          ; $56c3: $df
	sbc [hl]                                         ; $56c4: $9e
	pop hl                                           ; $56c5: $e1
	jp $e4fc                                         ; $56c6: $c3 $fc $e4


	ei                                               ; $56c9: $fb
	ld hl, sp-$09                                    ; $56ca: $f8 $f7
	ldh a, [rIE]                                     ; $56cc: $f0 $ff
	ld sp, hl                                        ; $56ce: $f9
	ld sp, hl                                        ; $56cf: $f9
	add hl, sp                                       ; $56d0: $39
	ld sp, hl                                        ; $56d1: $f9
	ld sp, hl                                        ; $56d2: $f9
	dec de                                           ; $56d3: $1b
	inc de                                           ; $56d4: $13
	sbc $f3                                          ; $56d5: $de $f3
	add l                                            ; $56d7: $85
	cp $ee                                           ; $56d8: $fe $ee
	db $fc                                           ; $56da: $fc
	db $e4                                           ; $56db: $e4
	cp c                                             ; $56dc: $b9
	cp c                                             ; $56dd: $b9
	add hl, sp                                       ; $56de: $39
	ld sp, hl                                        ; $56df: $f9
	ld de, $23f1                                     ; $56e0: $11 $f1 $23
	rst SubAFromBC                                          ; $56e3: $e7
	cp $ff                                           ; $56e4: $fe $ff
	ei                                               ; $56e6: $fb
	sbc e                                            ; $56e7: $9b
	di                                               ; $56e8: $f3
	di                                               ; $56e9: $f3
	rrca                                             ; $56ea: $0f
	rrca                                             ; $56eb: $0f
	rst $38                                          ; $56ec: $ff
	rst $38                                          ; $56ed: $ff
	ld [$03f7], sp                                   ; $56ee: $08 $f7 $03
	db $fc                                           ; $56f1: $fc
	ld [hl], e                                       ; $56f2: $73
	or b                                             ; $56f3: $b0
	sbc b                                            ; $56f4: $98
	rst $38                                          ; $56f5: $ff
	and $1e                                          ; $56f6: $e6 $1e
	inc a                                            ; $56f8: $3c
	call nz, $1fe7                                   ; $56f9: $c4 $e7 $1f
	ld h, a                                          ; $56fc: $67
	ldh a, [$7f]                                     ; $56fd: $f0 $7f
	ret nz                                           ; $56ff: $c0

	adc l                                            ; $5700: $8d
	ld h, h                                          ; $5701: $64
	ld a, e                                          ; $5702: $7b
	jr c, jr_013_572c                                ; $5703: $38 $27

	ld h, b                                          ; $5705: $60
	ld e, a                                          ; $5706: $5f
	ld hl, sp-$01                                    ; $5707: $f8 $ff
	ld c, $0f                                        ; $5709: $0e $0f
	ld b, $07                                        ; $570b: $06 $07
	rra                                              ; $570d: $1f
	inc a                                            ; $570e: $3c
	rra                                              ; $570f: $1f
	ccf                                              ; $5710: $3f
	rra                                              ; $5711: $1f
	dec sp                                           ; $5712: $3b
	ld a, e                                          ; $5713: $7b
	db $fc                                           ; $5714: $fc
	sbc $ff                                          ; $5715: $de $ff
	sub e                                            ; $5717: $93
	rst SubAFromBC                                          ; $5718: $e7
	rst $38                                          ; $5719: $ff
	jp z, Jump_013_4aca                              ; $571a: $ca $ca $4a

	ld c, d                                          ; $571d: $4a
	ld c, [hl]                                       ; $571e: $4e
	ld c, [hl]                                       ; $571f: $4e
	adc $ce                                          ; $5720: $ce $ce
	ld c, [hl]                                       ; $5722: $4e
	ld c, [hl]                                       ; $5723: $4e
	ld h, a                                          ; $5724: $67
	ret nz                                           ; $5725: $c0

	sbc b                                            ; $5726: $98
	sbc a                                            ; $5727: $9f
	ld h, c                                          ; $5728: $61
	inc bc                                           ; $5729: $03
	db $fd                                           ; $572a: $fd
	push hl                                          ; $572b: $e5

jr_013_572c:
	dec de                                           ; $572c: $1b
	add hl, sp                                       ; $572d: $39
	ld a, e                                          ; $572e: $7b
	ld [hl], b                                       ; $572f: $70
	sbc h                                            ; $5730: $9c
	adc b                                            ; $5731: $88
	rst FarCall                                          ; $5732: $f7
	add e                                            ; $5733: $83
	ld [hl], e                                       ; $5734: $73
	add b                                            ; $5735: $80
	ld h, e                                          ; $5736: $63
	ld d, b                                          ; $5737: $50
	adc d                                            ; $5738: $8a
	rrca                                             ; $5739: $0f
	adc d                                            ; $573a: $8a
	adc a                                            ; $573b: $8f
	rst GetHLinHL                                          ; $573c: $cf
	set 1, a                                         ; $573d: $cb $cf
	rst GetHLinHL                                          ; $573f: $cf
	pop hl                                           ; $5740: $e1
	pop hl                                           ; $5741: $e1
	sbc l                                            ; $5742: $9d
	rst $38                                          ; $5743: $ff
	rlca                                             ; $5744: $07
	rst $38                                          ; $5745: $ff
	cp $ff                                           ; $5746: $fe $ff
	di                                               ; $5748: $f3
	di                                               ; $5749: $f3
	ld a, [$fa9a]                                    ; $574a: $fa $9a $fa
	ld l, d                                          ; $574d: $6a
	ld a, e                                          ; $574e: $7b
	cp $89                                           ; $574f: $fe $89
	ld a, [bc]                                       ; $5751: $0a
	ld a, [$759a]                                    ; $5752: $fa $9a $75
	ld [hl], l                                       ; $5755: $75
	adc e                                            ; $5756: $8b
	adc e                                            ; $5757: $8b
	ld a, [bc]                                       ; $5758: $0a
	or $02                                           ; $5759: $f6 $02
	cp $25                                           ; $575b: $fe $25
	db $dd                                           ; $575d: $dd
	sbc l                                            ; $575e: $9d
	ld h, l                                          ; $575f: $65
	dec b                                            ; $5760: $05
	db $fd                                           ; $5761: $fd
	and $1a                                          ; $5762: $e6 $1a
	dec sp                                           ; $5764: $3b
	rst JumpTable                                          ; $5765: $c7
	pop hl                                           ; $5766: $e1
	ld h, e                                          ; $5767: $63
	add b                                            ; $5768: $80
	ld l, a                                          ; $5769: $6f
	ret nz                                           ; $576a: $c0

	ld a, a                                          ; $576b: $7f
	ldh a, [rPCM34]                                  ; $576c: $f0 $77
	jr nz, jr_013_57ef                               ; $576e: $20 $7f

	ld l, d                                          ; $5770: $6a
	sub l                                            ; $5771: $95
	rra                                              ; $5772: $1f
	jp hl                                            ; $5773: $e9


	or $79                                           ; $5774: $f6 $79
	reti                                             ; $5776: $d9


	rst SubAFromDE                                          ; $5777: $df
	rst $38                                          ; $5778: $ff
	rst $38                                          ; $5779: $ff
	rrca                                             ; $577a: $0f
	rrca                                             ; $577b: $0f
	ld l, e                                          ; $577c: $6b
	ldh [hDisp1_WX], a                                     ; $577d: $e0 $96
	pop hl                                           ; $577f: $e1
	ld a, e                                          ; $5780: $7b
	db $fc                                           ; $5781: $fc
	add [hl]                                         ; $5782: $86
	add a                                            ; $5783: $87
	rst $38                                          ; $5784: $ff
	rst $38                                          ; $5785: $ff
	rst GetHLinHL                                          ; $5786: $cf
	adc l                                            ; $5787: $8d
	ld c, a                                          ; $5788: $4f
	ret nc                                           ; $5789: $d0

	ld a, a                                          ; $578a: $7f
	sub b                                            ; $578b: $90
	rla                                              ; $578c: $17
	nop                                              ; $578d: $00
	adc e                                            ; $578e: $8b
	db $10                                           ; $578f: $10
	ld de, $1312                                     ; $5790: $11 $12 $13
	rrca                                             ; $5793: $0f
	ld c, $0d                                        ; $5794: $0e $0d
	inc c                                            ; $5796: $0c
	dec bc                                           ; $5797: $0b
	ld a, [bc]                                       ; $5798: $0a
	add hl, bc                                       ; $5799: $09
	ld [$0607], sp                                   ; $579a: $08 $07 $06
	dec b                                            ; $579d: $05
	inc b                                            ; $579e: $04
	inc bc                                           ; $579f: $03
	ld [bc], a                                       ; $57a0: $02
	ld bc, $0a00                                     ; $57a1: $01 $00 $0a
	nop                                              ; $57a4: $00

jr_013_57a5:
	rst SubAFromDE                                          ; $57a5: $df
	ld [hl+], a                                      ; $57a6: $22
	sbc h                                            ; $57a7: $9c
	dec h                                            ; $57a8: $25
	ld [hl+], a                                      ; $57a9: $22
	ld [hl], d                                       ; $57aa: $72
	call c, $2822                                    ; $57ab: $dc $22 $28
	ld bc, $fe80                                     ; $57ae: $01 $80 $fe
	rst $38                                          ; $57b1: $ff
	cp $f9                                           ; $57b2: $fe $f9
	ldh [$1f], a                                     ; $57b4: $e0 $1f
	rra                                              ; $57b6: $1f
	ldh [$c4], a                                     ; $57b7: $e0 $c4
	dec sp                                           ; $57b9: $3b
	inc bc                                           ; $57ba: $03
	db $fc                                           ; $57bb: $fc
	inc a                                            ; $57bc: $3c
	jp $ff00                                         ; $57bd: $c3 $00 $ff


	rlca                                             ; $57c0: $07
	rlca                                             ; $57c1: $07
	rst $38                                          ; $57c2: $ff
	rst $38                                          ; $57c3: $ff
	jr nz, jr_013_57a5                               ; $57c4: $20 $df

	sbc [hl]                                         ; $57c6: $9e
	ld h, c                                          ; $57c7: $61
	inc bc                                           ; $57c8: $03
	db $fc                                           ; $57c9: $fc
	db $e4                                           ; $57ca: $e4
	dec de                                           ; $57cb: $1b
	jr c, @-$37                                      ; $57cc: $38 $c7

	ldh [$9a], a                                     ; $57ce: $e0 $9a
	rra                                              ; $57d0: $1f
	dec bc                                           ; $57d1: $0b
	rst FarCall                                          ; $57d2: $f7
	inc bc                                           ; $57d3: $03
	db $fd                                           ; $57d4: $fd
	ld d, a                                          ; $57d5: $57
	ldh a, [$7f]                                     ; $57d6: $f0 $7f
	sbc $9d                                          ; $57d8: $de $9d
	ld c, $f1                                        ; $57da: $0e $f1
	ld d, a                                          ; $57dc: $57
	ret nc                                           ; $57dd: $d0

	sub d                                            ; $57de: $92
	ld e, c                                          ; $57df: $59
	ld a, a                                          ; $57e0: $7f
	db $dd                                           ; $57e1: $dd
	rst FarCall                                          ; $57e2: $f7
	or a                                             ; $57e3: $b7
	db $db                                           ; $57e4: $db
	sbc e                                            ; $57e5: $9b
	rst FarCall                                          ; $57e6: $f7
	ei                                               ; $57e7: $fb
	cp $f7                                           ; $57e8: $fe $f7
	rst $38                                          ; $57ea: $ff
	rst FarCall                                          ; $57eb: $f7
	sbc $ff                                          ; $57ec: $de $ff
	rst SubAFromDE                                          ; $57ee: $df

jr_013_57ef:
	ld sp, hl                                        ; $57ef: $f9
	sbc d                                            ; $57f0: $9a
	add hl, sp                                       ; $57f1: $39
	ld sp, hl                                        ; $57f2: $f9
	ld sp, hl                                        ; $57f3: $f9
	dec de                                           ; $57f4: $1b
	inc de                                           ; $57f5: $13
	sbc $f3                                          ; $57f6: $de $f3
	add h                                            ; $57f8: $84
	cp $ee                                           ; $57f9: $fe $ee
	db $fc                                           ; $57fb: $fc
	db $e4                                           ; $57fc: $e4
	cp c                                             ; $57fd: $b9
	cp c                                             ; $57fe: $b9
	add hl, sp                                       ; $57ff: $39
	ld sp, hl                                        ; $5800: $f9
	ld de, $23f1                                     ; $5801: $11 $f1 $23
	rst SubAFromBC                                          ; $5804: $e7
	cp $ff                                           ; $5805: $fe $ff
	ei                                               ; $5807: $fb
	sbc e                                            ; $5808: $9b
	di                                               ; $5809: $f3
	di                                               ; $580a: $f3
	rrca                                             ; $580b: $0f
	rrca                                             ; $580c: $0f
	rst $38                                          ; $580d: $ff
	rst $38                                          ; $580e: $ff
	ld a, a                                          ; $580f: $7f
	push af                                          ; $5810: $f5
	ld h, a                                          ; $5811: $67
	db $fd                                           ; $5812: $fd
	ld [hl+], a                                      ; $5813: $22
	ld [hl], a                                       ; $5814: $77
	or b                                             ; $5815: $b0
	add b                                            ; $5816: $80
	rst $38                                          ; $5817: $ff
	and $1e                                          ; $5818: $e6 $1e
	inc a                                            ; $581a: $3c
	call nz, $1fe7                                   ; $581b: $c4 $e7 $1f
	ld [hl], $f7                                     ; $581e: $36 $f7
	inc de                                           ; $5820: $13
	ldh a, [c]                                       ; $5821: $f2
	inc sp                                           ; $5822: $33
	db $d3                                           ; $5823: $d3
	sub c                                            ; $5824: $91
	ld [hl], c                                       ; $5825: $71
	reti                                             ; $5826: $d9


	ld sp, hl                                        ; $5827: $f9
	ld l, c                                          ; $5828: $69
	ld a, c                                          ; $5829: $79
	ccf                                              ; $582a: $3f
	cpl                                              ; $582b: $2f
	ld l, e                                          ; $582c: $6b
	ld e, a                                          ; $582d: $5f
	ld hl, sp-$01                                    ; $582e: $f8 $ff
	ld c, $0f                                        ; $5830: $0e $0f
	ld b, $07                                        ; $5832: $06 $07
	rra                                              ; $5834: $1f
	inc a                                            ; $5835: $3c
	sbc e                                            ; $5836: $9b
	rra                                              ; $5837: $1f
	ccf                                              ; $5838: $3f
	rra                                              ; $5839: $1f
	dec sp                                           ; $583a: $3b
	ld a, e                                          ; $583b: $7b
	db $fc                                           ; $583c: $fc
	sbc $ff                                          ; $583d: $de $ff
	add b                                            ; $583f: $80
	rst SubAFromBC                                          ; $5840: $e7
	rst $38                                          ; $5841: $ff
	jp z, Jump_013_4aca                              ; $5842: $ca $ca $4a

	ld c, d                                          ; $5845: $4a
	ld c, [hl]                                       ; $5846: $4e
	ld c, [hl]                                       ; $5847: $4e
	adc $ce                                          ; $5848: $ce $ce
	ld c, [hl]                                       ; $584a: $4e
	ld c, [hl]                                       ; $584b: $4e
	rst $38                                          ; $584c: $ff
	rst $38                                          ; $584d: $ff
	ld a, [bc]                                       ; $584e: $0a
	or $02                                           ; $584f: $f6 $02
	cp $24                                           ; $5851: $fe $24
	call c, Call_013_659d                            ; $5853: $dc $9d $65
	dec b                                            ; $5856: $05
	db $fd                                           ; $5857: $fd
	db $fd                                           ; $5858: $fd
	dec e                                            ; $5859: $1d
	ccf                                              ; $585a: $3f
	rst SubAFromBC                                          ; $585b: $e7
	rst $38                                          ; $585c: $ff
	dec a                                            ; $585d: $3d
	db $fc                                           ; $585e: $fc
	add b                                            ; $585f: $80
	xor a                                            ; $5860: $af
	rst $38                                          ; $5861: $ff
	cp h                                             ; $5862: $bc
	ld e, h                                          ; $5863: $5c
	rst SubAFromDE                                          ; $5864: $df
	adc $c9                                          ; $5865: $ce $c9
	set 1, h                                         ; $5867: $cb $cc
	call nz, Call_013_66c7                           ; $5869: $c4 $c7 $66
	rst SubAFromBC                                          ; $586c: $e7
	ld a, [$0b3f]                                    ; $586d: $fa $3f $0b
	rrca                                             ; $5870: $0f
	adc d                                            ; $5871: $8a
	adc a                                            ; $5872: $8f
	rst GetHLinHL                                          ; $5873: $cf
	set 1, a                                         ; $5874: $cb $cf
	rst GetHLinHL                                          ; $5876: $cf
	pop hl                                           ; $5877: $e1
	pop hl                                           ; $5878: $e1
	sbc l                                            ; $5879: $9d
	rst $38                                          ; $587a: $ff
	rlca                                             ; $587b: $07
	rst $38                                          ; $587c: $ff
	cp $ff                                           ; $587d: $fe $ff
	rst SubAFromDE                                          ; $587f: $df
	di                                               ; $5880: $f3

jr_013_5881:
	sbc e                                            ; $5881: $9b
	ld a, [$fa9a]                                    ; $5882: $fa $9a $fa
	ld [$fe73], a                                    ; $5885: $ea $73 $fe
	sbc d                                            ; $5888: $9a
	sbc d                                            ; $5889: $9a
	ld [hl], l                                       ; $588a: $75
	ld [hl], l                                       ; $588b: $75
	adc e                                            ; $588c: $8b
	adc e                                            ; $588d: $8b
	ld [hl], a                                       ; $588e: $77
	ret nz                                           ; $588f: $c0

	sbc l                                            ; $5890: $9d
	dec h                                            ; $5891: $25
	db $dd                                           ; $5892: $dd
	ld [hl], a                                       ; $5893: $77
	ret nz                                           ; $5894: $c0

	adc c                                            ; $5895: $89
	and $1a                                          ; $5896: $e6 $1a
	dec sp                                           ; $5898: $3b
	rst JumpTable                                          ; $5899: $c7
	db $e3                                           ; $589a: $e3
	rra                                              ; $589b: $1f
	ld [$03f7], sp                                   ; $589c: $08 $f7 $03
	db $fc                                           ; $589f: $fc
	jr nz, jr_013_5881                               ; $58a0: $20 $df

	sbc a                                            ; $58a2: $9f
	ld h, c                                          ; $58a3: $61
	inc bc                                           ; $58a4: $03
	cp $e7                                           ; $58a5: $fe $e7
	inc e                                            ; $58a7: $1c
	ccf                                              ; $58a8: $3f
	push bc                                          ; $58a9: $c5
	rst SubAFromBC                                          ; $58aa: $e7
	dec e                                            ; $58ab: $1d
	ld [hl], a                                       ; $58ac: $77
	jr nz, jr_013_592e                               ; $58ad: $20 $7f

	ld l, d                                          ; $58af: $6a
	sub l                                            ; $58b0: $95
	rst $38                                          ; $58b1: $ff
	jp hl                                            ; $58b2: $e9


	or $79                                           ; $58b3: $f6 $79
	reti                                             ; $58b5: $d9


	rst SubAFromDE                                          ; $58b6: $df
	rst $38                                          ; $58b7: $ff
	rst $38                                          ; $58b8: $ff
	rrca                                             ; $58b9: $0f
	rrca                                             ; $58ba: $0f
	ld l, a                                          ; $58bb: $6f
	ldh [hDisp1_WY], a                                     ; $58bc: $e0 $95
	sbc [hl]                                         ; $58be: $9e
	pop hl                                           ; $58bf: $e1
	ld a, e                                          ; $58c0: $7b
	db $fc                                           ; $58c1: $fc
	add [hl]                                         ; $58c2: $86
	add a                                            ; $58c3: $87
	rst $38                                          ; $58c4: $ff
	rst $38                                          ; $58c5: $ff
	rst GetHLinHL                                          ; $58c6: $cf
	adc l                                            ; $58c7: $8d
	ld l, a                                          ; $58c8: $6f
	ldh a, [hDisp1_WY]                                     ; $58c9: $f0 $95
	cp [hl]                                          ; $58cb: $be
	ld a, c                                          ; $58cc: $79
	ld a, a                                          ; $58cd: $7f
	call z, $b7fc                                    ; $58ce: $cc $fc $b7
	db $fc                                           ; $58d1: $fc
	or a                                             ; $58d2: $b7
	ld l, h                                          ; $58d3: $6c
	cp a                                             ; $58d4: $bf
	rla                                              ; $58d5: $17
	nop                                              ; $58d6: $00
	adc e                                            ; $58d7: $8b
	db $10                                           ; $58d8: $10
	ld de, $1312                                     ; $58d9: $11 $12 $13

jr_013_58dc:
	rrca                                             ; $58dc: $0f
	ld c, $0d                                        ; $58dd: $0e $0d
	inc c                                            ; $58df: $0c
	dec bc                                           ; $58e0: $0b
	ld a, [bc]                                       ; $58e1: $0a
	add hl, bc                                       ; $58e2: $09
	ld [$0607], sp                                   ; $58e3: $08 $07 $06
	dec b                                            ; $58e6: $05
	inc b                                            ; $58e7: $04
	inc bc                                           ; $58e8: $03
	ld [bc], a                                       ; $58e9: $02
	ld bc, $0800                                     ; $58ea: $01 $00 $08
	nop                                              ; $58ed: $00
	rst SubAFromDE                                          ; $58ee: $df
	ld [hl+], a                                      ; $58ef: $22
	sbc [hl]                                         ; $58f0: $9e
	dec h                                            ; $58f1: $25
	jp c, $2c22                                      ; $58f2: $da $22 $2c

	ld bc, $fe80                                     ; $58f5: $01 $80 $fe
	rst $38                                          ; $58f8: $ff
	cp $f9                                           ; $58f9: $fe $f9
	ldh [$1f], a                                     ; $58fb: $e0 $1f
	rra                                              ; $58fd: $1f
	ldh [$c4], a                                     ; $58fe: $e0 $c4
	dec sp                                           ; $5900: $3b
	inc bc                                           ; $5901: $03
	db $fc                                           ; $5902: $fc
	inc a                                            ; $5903: $3c
	jp $ff00                                         ; $5904: $c3 $00 $ff


	rlca                                             ; $5907: $07
	rlca                                             ; $5908: $07
	rst $38                                          ; $5909: $ff
	rst $38                                          ; $590a: $ff
	jr nz, @-$1f                                     ; $590b: $20 $df

	sbc [hl]                                         ; $590d: $9e
	ld h, c                                          ; $590e: $61
	inc bc                                           ; $590f: $03
	db $fc                                           ; $5910: $fc
	db $e4                                           ; $5911: $e4
	dec de                                           ; $5912: $1b
	jr c, jr_013_58dc                                ; $5913: $38 $c7

	ldh [$9a], a                                     ; $5915: $e0 $9a
	rra                                              ; $5917: $1f
	dec bc                                           ; $5918: $0b
	rst FarCall                                          ; $5919: $f7
	inc bc                                           ; $591a: $03
	db $fd                                           ; $591b: $fd
	ld d, a                                          ; $591c: $57
	ldh a, [$7f]                                     ; $591d: $f0 $7f
	sbc $9d                                          ; $591f: $de $9d
	ld c, $f1                                        ; $5921: $0e $f1
	ld d, a                                          ; $5923: $57
	ret nc                                           ; $5924: $d0

	sub d                                            ; $5925: $92
	ld e, c                                          ; $5926: $59
	ld a, a                                          ; $5927: $7f
	db $dd                                           ; $5928: $dd
	rst FarCall                                          ; $5929: $f7
	or a                                             ; $592a: $b7
	db $db                                           ; $592b: $db
	sbc e                                            ; $592c: $9b
	rst FarCall                                          ; $592d: $f7

jr_013_592e:
	ei                                               ; $592e: $fb
	cp $f7                                           ; $592f: $fe $f7
	rst $38                                          ; $5931: $ff
	rst FarCall                                          ; $5932: $f7
	sbc $ff                                          ; $5933: $de $ff
	rst SubAFromDE                                          ; $5935: $df
	ld sp, hl                                        ; $5936: $f9
	sbc d                                            ; $5937: $9a
	add hl, sp                                       ; $5938: $39
	ld sp, hl                                        ; $5939: $f9
	ld sp, hl                                        ; $593a: $f9
	dec de                                           ; $593b: $1b
	inc de                                           ; $593c: $13
	sbc $f3                                          ; $593d: $de $f3
	add h                                            ; $593f: $84
	cp $ee                                           ; $5940: $fe $ee
	db $fc                                           ; $5942: $fc
	db $e4                                           ; $5943: $e4
	cp c                                             ; $5944: $b9
	cp c                                             ; $5945: $b9
	add hl, sp                                       ; $5946: $39
	ld sp, hl                                        ; $5947: $f9
	ld de, $23f1                                     ; $5948: $11 $f1 $23
	rst SubAFromBC                                          ; $594b: $e7
	cp $ff                                           ; $594c: $fe $ff
	ei                                               ; $594e: $fb
	sbc e                                            ; $594f: $9b
	di                                               ; $5950: $f3
	di                                               ; $5951: $f3
	rrca                                             ; $5952: $0f
	rrca                                             ; $5953: $0f
	rst $38                                          ; $5954: $ff
	rst $38                                          ; $5955: $ff
	ld a, a                                          ; $5956: $7f
	push af                                          ; $5957: $f5
	ld h, a                                          ; $5958: $67
	db $fd                                           ; $5959: $fd
	ld [hl+], a                                      ; $595a: $22
	ld [hl], a                                       ; $595b: $77
	or b                                             ; $595c: $b0
	add b                                            ; $595d: $80
	rst $38                                          ; $595e: $ff
	and $1e                                          ; $595f: $e6 $1e
	inc a                                            ; $5961: $3c
	call nz, $1fe7                                   ; $5962: $c4 $e7 $1f
	ld [hl], $f7                                     ; $5965: $36 $f7
	inc de                                           ; $5967: $13
	ldh a, [c]                                       ; $5968: $f2
	inc sp                                           ; $5969: $33
	db $d3                                           ; $596a: $d3
	sub c                                            ; $596b: $91
	ld [hl], c                                       ; $596c: $71
	reti                                             ; $596d: $d9


	ld sp, hl                                        ; $596e: $f9
	ld l, c                                          ; $596f: $69
	ld a, c                                          ; $5970: $79
	ccf                                              ; $5971: $3f
	cpl                                              ; $5972: $2f
	ld l, e                                          ; $5973: $6b
	ld e, a                                          ; $5974: $5f
	ld hl, sp-$01                                    ; $5975: $f8 $ff
	ld c, $0f                                        ; $5977: $0e $0f
	ld b, $07                                        ; $5979: $06 $07
	rra                                              ; $597b: $1f
	inc a                                            ; $597c: $3c
	sbc e                                            ; $597d: $9b
	rra                                              ; $597e: $1f
	ccf                                              ; $597f: $3f
	rra                                              ; $5980: $1f
	dec sp                                           ; $5981: $3b

jr_013_5982:
	ld a, e                                          ; $5982: $7b
	db $fc                                           ; $5983: $fc
	sbc $ff                                          ; $5984: $de $ff
	add b                                            ; $5986: $80
	rst SubAFromBC                                          ; $5987: $e7
	rst $38                                          ; $5988: $ff
	jp z, Jump_013_4aca                              ; $5989: $ca $ca $4a

	ld c, d                                          ; $598c: $4a
	ld c, [hl]                                       ; $598d: $4e
	ld c, [hl]                                       ; $598e: $4e
	adc $ce                                          ; $598f: $ce $ce
	ld c, [hl]                                       ; $5991: $4e
	ld c, [hl]                                       ; $5992: $4e
	rst $38                                          ; $5993: $ff
	rst $38                                          ; $5994: $ff
	ld a, [bc]                                       ; $5995: $0a
	or $02                                           ; $5996: $f6 $02
	cp $24                                           ; $5998: $fe $24
	call c, Call_013_659d                            ; $599a: $dc $9d $65
	dec b                                            ; $599d: $05

Jump_013_599e:
	db $fd                                           ; $599e: $fd
	db $fd                                           ; $599f: $fd
	dec e                                            ; $59a0: $1d
	ccf                                              ; $59a1: $3f
	rst SubAFromBC                                          ; $59a2: $e7
	rst $38                                          ; $59a3: $ff
	dec a                                            ; $59a4: $3d
	db $fc                                           ; $59a5: $fc
	add b                                            ; $59a6: $80
	xor a                                            ; $59a7: $af
	rst $38                                          ; $59a8: $ff
	cp h                                             ; $59a9: $bc
	ld e, h                                          ; $59aa: $5c
	rst SubAFromDE                                          ; $59ab: $df
	adc $c9                                          ; $59ac: $ce $c9
	set 1, h                                         ; $59ae: $cb $cc
	call nz, Call_013_66c7                           ; $59b0: $c4 $c7 $66
	rst SubAFromBC                                          ; $59b3: $e7
	ld a, [$0b3f]                                    ; $59b4: $fa $3f $0b
	rrca                                             ; $59b7: $0f
	adc d                                            ; $59b8: $8a
	adc a                                            ; $59b9: $8f
	rst GetHLinHL                                          ; $59ba: $cf
	set 1, a                                         ; $59bb: $cb $cf
	rst GetHLinHL                                          ; $59bd: $cf
	pop hl                                           ; $59be: $e1
	pop hl                                           ; $59bf: $e1
	sbc l                                            ; $59c0: $9d
	rst $38                                          ; $59c1: $ff
	rlca                                             ; $59c2: $07
	rst $38                                          ; $59c3: $ff
	cp $ff                                           ; $59c4: $fe $ff
	ld a, e                                          ; $59c6: $7b
	ld a, b                                          ; $59c7: $78
	add b                                            ; $59c8: $80
	sbc [hl]                                         ; $59c9: $9e
	ld a, [$fe6a]                                    ; $59ca: $fa $6a $fe
	ld l, [hl]                                       ; $59cd: $6e
	ld a, [$fe8a]                                    ; $59ce: $fa $8a $fe
	sbc [hl]                                         ; $59d1: $9e
	ld [hl], l                                       ; $59d2: $75
	ld [hl], l                                       ; $59d3: $75
	xor e                                            ; $59d4: $ab
	xor e                                            ; $59d5: $ab
	ld a, [bc]                                       ; $59d6: $0a
	or $03                                           ; $59d7: $f6 $03
	rst $38                                          ; $59d9: $ff
	dec h                                            ; $59da: $25
	db $dd                                           ; $59db: $dd
	sbc a                                            ; $59dc: $9f
	ld h, a                                          ; $59dd: $67
	dec b                                            ; $59de: $05
	db $fd                                           ; $59df: $fd
	and $1a                                          ; $59e0: $e6 $1a
	dec sp                                           ; $59e2: $3b
	rst JumpTable                                          ; $59e3: $c7
	db $e3                                           ; $59e4: $e3
	rra                                              ; $59e5: $1f
	ld [$7ff7], sp                                   ; $59e6: $08 $f7 $7f
	jr c, jr_013_5a6a                                ; $59e9: $38 $7f

	jr nz, jr_013_5982                               ; $59eb: $20 $95

	sbc a                                            ; $59ed: $9f
	ld h, c                                          ; $59ee: $61
	inc bc                                           ; $59ef: $03
	cp $e7                                           ; $59f0: $fe $e7
	inc e                                            ; $59f2: $1c
	ccf                                              ; $59f3: $3f
	push bc                                          ; $59f4: $c5
	rst SubAFromBC                                          ; $59f5: $e7
	dec e                                            ; $59f6: $1d
	ld [hl], a                                       ; $59f7: $77
	jr nz, jr_013_5a79                               ; $59f8: $20 $7f

	ld l, d                                          ; $59fa: $6a
	sub l                                            ; $59fb: $95
	rst $38                                          ; $59fc: $ff
	jp hl                                            ; $59fd: $e9


	or $79                                           ; $59fe: $f6 $79
	reti                                             ; $5a00: $d9


	rst SubAFromDE                                          ; $5a01: $df
	rst $38                                          ; $5a02: $ff
	rst $38                                          ; $5a03: $ff
	xor a                                            ; $5a04: $af
	xor a                                            ; $5a05: $af
	ld l, a                                          ; $5a06: $6f
	ldh [hDisp1_WY], a                                     ; $5a07: $e0 $95
	sbc [hl]                                         ; $5a09: $9e
	pop hl                                           ; $5a0a: $e1
	ld a, e                                          ; $5a0b: $7b
	db $fc                                           ; $5a0c: $fc
	add [hl]                                         ; $5a0d: $86
	add a                                            ; $5a0e: $87
	rst $38                                          ; $5a0f: $ff
	rst $38                                          ; $5a10: $ff
	rst GetHLinHL                                          ; $5a11: $cf
	adc l                                            ; $5a12: $8d
	ld l, a                                          ; $5a13: $6f
	ldh a, [hDisp1_WY]                                     ; $5a14: $f0 $95
	cp [hl]                                          ; $5a16: $be
	ld a, c                                          ; $5a17: $79
	ld a, a                                          ; $5a18: $7f
	call z, $b7fc                                    ; $5a19: $cc $fc $b7
	db $fc                                           ; $5a1c: $fc
	or a                                             ; $5a1d: $b7
	ld l, h                                          ; $5a1e: $6c
	cp a                                             ; $5a1f: $bf
	rla                                              ; $5a20: $17
	nop                                              ; $5a21: $00
	adc e                                            ; $5a22: $8b
	db $10                                           ; $5a23: $10
	ld de, $1312                                     ; $5a24: $11 $12 $13
	rrca                                             ; $5a27: $0f
	ld c, $0d                                        ; $5a28: $0e $0d
	inc c                                            ; $5a2a: $0c
	dec bc                                           ; $5a2b: $0b
	ld a, [bc]                                       ; $5a2c: $0a
	add hl, bc                                       ; $5a2d: $09
	ld [$0607], sp                                   ; $5a2e: $08 $07 $06
	dec b                                            ; $5a31: $05
	inc b                                            ; $5a32: $04
	inc bc                                           ; $5a33: $03
	ld [bc], a                                       ; $5a34: $02
	ld bc, $0800                                     ; $5a35: $01 $00 $08
	nop                                              ; $5a38: $00
	rst SubAFromDE                                          ; $5a39: $df
	ld [hl+], a                                      ; $5a3a: $22
	sbc [hl]                                         ; $5a3b: $9e
	dec h                                            ; $5a3c: $25
	jp c, $0922                                      ; $5a3d: $da $22 $09

	nop                                              ; $5a40: $00
	sbc h                                            ; $5a41: $9c
	rst $38                                          ; $5a42: $ff
	nop                                              ; $5a43: $00
	rst $38                                          ; $5a44: $ff
	ld hl, sp+$77                                    ; $5a45: $f8 $77
	db $f4                                           ; $5a47: $f4
	inc bc                                           ; $5a48: $03
	nop                                              ; $5a49: $00
	db $f4                                           ; $5a4a: $f4
	ld b, $00                                        ; $5a4b: $06 $00
	db $db                                           ; $5a4d: $db
	ld h, [hl]                                       ; $5a4e: $66
	sbc [hl]                                         ; $5a4f: $9e
	ld h, b                                          ; $5a50: $60
	add hl, bc                                       ; $5a51: $09
	nop                                              ; $5a52: $00
	sbc [hl]                                         ; $5a53: $9e
	rst $38                                          ; $5a54: $ff
	ld hl, sp+$77                                    ; $5a55: $f8 $77
	or $7f                                           ; $5a57: $f6 $7f
	db $fc                                           ; $5a59: $fc
	inc bc                                           ; $5a5a: $03
	nop                                              ; $5a5b: $00
	di                                               ; $5a5c: $f3
	inc b                                            ; $5a5d: $04
	nop                                              ; $5a5e: $00
	jp c, $0977                                      ; $5a5f: $da $77 $09

	nop                                              ; $5a62: $00
	sbc [hl]                                         ; $5a63: $9e
	rst $38                                          ; $5a64: $ff
	ld hl, sp+$77                                    ; $5a65: $f8 $77
	or $7f                                           ; $5a67: $f6 $7f
	db $fc                                           ; $5a69: $fc

jr_013_5a6a:
	inc bc                                           ; $5a6a: $03
	nop                                              ; $5a6b: $00
	di                                               ; $5a6c: $f3
	inc b                                            ; $5a6d: $04
	nop                                              ; $5a6e: $00
	jp c, $0977                                      ; $5a6f: $da $77 $09

	nop                                              ; $5a72: $00
	sbc [hl]                                         ; $5a73: $9e
	rst $38                                          ; $5a74: $ff
	ld hl, sp+$77                                    ; $5a75: $f8 $77
	or $7f                                           ; $5a77: $f6 $7f

jr_013_5a79:
	db $fc                                           ; $5a79: $fc
	inc bc                                           ; $5a7a: $03
	nop                                              ; $5a7b: $00
	di                                               ; $5a7c: $f3
	inc b                                            ; $5a7d: $04
	nop                                              ; $5a7e: $00
	jp c, $c222                                      ; $5a7f: $da $22 $c2

	ld bc, $dfeb                                     ; $5a82: $01 $eb $df
	rlca                                             ; $5a85: $07
	sub a                                            ; $5a86: $97
	jr jr_013_5aa8                                   ; $5a87: $18 $1f

	jr nz, jr_013_5aca                               ; $5a89: $20 $3f

	ld b, b                                          ; $5a8b: $40
	ld a, a                                          ; $5a8c: $7f
	add b                                            ; $5a8d: $80
	rst $38                                          ; $5a8e: $ff
	db $eb                                           ; $5a8f: $eb
	rst SubAFromDE                                          ; $5a90: $df
	ldh a, [$98]                                     ; $5a91: $f0 $98
	inc c                                            ; $5a93: $0c
	db $fc                                           ; $5a94: $fc
	ld b, $fe                                        ; $5a95: $06 $fe
	inc bc                                           ; $5a97: $03
	rst $38                                          ; $5a98: $ff
	add hl, bc                                       ; $5a99: $09
	ld [hl], e                                       ; $5a9a: $73
	ldh [$9e], a                                     ; $5a9b: $e0 $9e
	ld b, b                                          ; $5a9d: $40
	ld a, e                                          ; $5a9e: $7b
	cp $99                                           ; $5a9f: $fe $99
	ld h, b                                          ; $5aa1: $60
	nop                                              ; $5aa2: $00
	inc a                                            ; $5aa3: $3c
	ld [bc], a                                       ; $5aa4: $02
	nop                                              ; $5aa5: $00
	inc e                                            ; $5aa6: $1c
	db $ed                                           ; $5aa7: $ed

jr_013_5aa8:
	sbc [hl]                                         ; $5aa8: $9e
	inc b                                            ; $5aa9: $04
	cp $97                                           ; $5aaa: $fe $97
	ld b, d                                          ; $5aac: $42
	nop                                              ; $5aad: $00
	ld h, d                                          ; $5aae: $62
	ld bc, $033c                                     ; $5aaf: $01 $3c $03
	nop                                              ; $5ab2: $00
	ld e, $73                                        ; $5ab3: $1e $73
	di                                               ; $5ab5: $f3
	ldh a, [$9e]                                     ; $5ab6: $f0 $9e
	ld [$ea7b], sp                                   ; $5ab8: $08 $7b $ea
	sbc [hl]                                         ; $5abb: $9e
	ld bc, $fd7b                                     ; $5abc: $01 $7b $fd
	ld a, a                                          ; $5abf: $7f
	ld sp, hl                                        ; $5ac0: $f9
	ld [hl], a                                       ; $5ac1: $77
	or $f1                                           ; $5ac2: $f6 $f1
	rst SubAFromDE                                          ; $5ac4: $df
	ld a, h                                          ; $5ac5: $7c
	sub e                                            ; $5ac6: $93
	ld a, a                                          ; $5ac7: $7f
	inc bc                                           ; $5ac8: $03
	dec b                                            ; $5ac9: $05

jr_013_5aca:
	ld a, e                                          ; $5aca: $7b
	ld a, d                                          ; $5acb: $7a
	ld a, l                                          ; $5acc: $7d
	dec b                                            ; $5acd: $05
	ld b, $03                                        ; $5ace: $06 $03
	ld [bc], a                                       ; $5ad0: $02
	ld [bc], a                                       ; $5ad1: $02
	inc bc                                           ; $5ad2: $03
	db $dd                                           ; $5ad3: $dd
	ld bc, $dff1                                     ; $5ad4: $01 $f1 $df
	add b                                            ; $5ad7: $80
	adc d                                            ; $5ad8: $8a
	ld b, b                                          ; $5ad9: $40
	ret nz                                           ; $5ada: $c0

	and b                                            ; $5adb: $a0
	ldh [$a0], a                                     ; $5adc: $e0 $a0
	ldh [$50], a                                     ; $5ade: $e0 $50
	ldh a, [$d0]                                     ; $5ae0: $f0 $d0
	ld [hl], b                                       ; $5ae2: $70
	xor b                                            ; $5ae3: $a8
	ld a, b                                          ; $5ae4: $78
	ld h, h                                          ; $5ae5: $64
	cp h                                             ; $5ae6: $bc
	or d                                             ; $5ae7: $b2
	sbc $59                                          ; $5ae8: $de $59
	ld l, a                                          ; $5aea: $6f
	ld l, $36                                        ; $5aeb: $2e $36
	inc e                                            ; $5aed: $1c
	ld h, e                                          ; $5aee: $63
	ld [hl], d                                       ; $5aef: $72
	inc sp                                           ; $5af0: $33
	ldh [$98], a                                     ; $5af1: $e0 $98
	scf                                              ; $5af3: $37
	rla                                              ; $5af4: $17
	add hl, de                                       ; $5af5: $19
	dec c                                            ; $5af6: $0d
	ld c, $03                                        ; $5af7: $0e $03
	inc bc                                           ; $5af9: $03
	db $eb                                           ; $5afa: $eb
	rst SubAFromDE                                          ; $5afb: $df
	ld b, $97                                        ; $5afc: $06 $97
	cp $fa                                           ; $5afe: $fe $fa
	ld a, [$e4e6]                                    ; $5b00: $fa $e6 $e4
	inc e                                            ; $5b03: $1c
	ld hl, sp-$08                                    ; $5b04: $f8 $f8
	rst AddAOntoHL                                          ; $5b06: $ef
	rst SubAFromDE                                          ; $5b07: $df
	ld bc, $787f                                     ; $5b08: $01 $7f $78
	sub a                                            ; $5b0b: $97
	rrca                                             ; $5b0c: $0f
	inc c                                            ; $5b0d: $0c
	rst $38                                          ; $5b0e: $ff
	ld sp, hl                                        ; $5b0f: $f9
	ld a, [$e7e7]                                    ; $5b10: $fa $e7 $e7
	rra                                              ; $5b13: $1f
	ld [hl], a                                       ; $5b14: $77
	ldh [$df], a                                     ; $5b15: $e0 $df
	ld d, $87                                        ; $5b17: $16 $87
	dec a                                            ; $5b19: $3d
	cpl                                              ; $5b1a: $2f
	dec a                                            ; $5b1b: $3d
	cpl                                              ; $5b1c: $2f
	ld a, [hl-]                                      ; $5b1d: $3a
	ld l, $3a                                        ; $5b1e: $2e $3a
	ld l, $7a                                        ; $5b20: $2e $7a
	ld e, [hl]                                       ; $5b22: $5e
	db $f4                                           ; $5b23: $f4
	call c, $bce4                                    ; $5b24: $dc $e4 $bc
	add sp, $38                                      ; $5b27: $e8 $38
	ret nc                                           ; $5b29: $d0

	ld [hl], b                                       ; $5b2a: $70
	and b                                            ; $5b2b: $a0
	ldh [rLCDC], a                                   ; $5b2c: $e0 $40
	ret nz                                           ; $5b2e: $c0

	add b                                            ; $5b2f: $80
	add b                                            ; $5b30: $80
	scf                                              ; $5b31: $37
	call nz, $0798                                   ; $5b32: $c4 $98 $07

jr_013_5b35:
	ld b, $7f                                        ; $5b35: $06 $7f
	ld a, b                                          ; $5b37: $78
	ld a, a                                          ; $5b38: $7f
	ld bc, $6307                                     ; $5b39: $01 $07 $63
	jr nc, jr_013_5b35                               ; $5b3c: $30 $f7

	rst SubAFromDE                                          ; $5b3e: $df
	ld h, b                                          ; $5b3f: $60
	sub l                                            ; $5b40: $95
	db $ec                                           ; $5b41: $ec
	xor h                                            ; $5b42: $ac
	db $f4                                           ; $5b43: $f4
	ld a, h                                          ; $5b44: $7c
	add sp, $78                                      ; $5b45: $e8 $78
	ret nc                                           ; $5b47: $d0

	or b                                             ; $5b48: $b0
	and b                                            ; $5b49: $a0
	ld h, b                                          ; $5b4a: $60
	inc bc                                           ; $5b4b: $03
	ld d, b                                          ; $5b4c: $50
	db $ec                                           ; $5b4d: $ec
	rst SubAFromDE                                          ; $5b4e: $df
	ld bc, $0a91                                     ; $5b4f: $01 $91 $0a
	dec bc                                           ; $5b52: $0b
	ld e, $17                                        ; $5b53: $1e $17
	rra                                              ; $5b55: $1f
	rla                                              ; $5b56: $17
	rra                                              ; $5b57: $1f

jr_013_5b58:
	ld d, $37                                        ; $5b58: $16 $37
	inc l                                            ; $5b5a: $2c
	rst $38                                          ; $5b5b: $ff
	jp hl                                            ; $5b5c: $e9


	ld a, [$03c7]                                    ; $5b5d: $fa $c7 $03
	ld h, b                                          ; $5b60: $60
	inc bc                                           ; $5b61: $03
	ld h, b                                          ; $5b62: $60
	inc bc                                           ; $5b63: $03
	ld h, b                                          ; $5b64: $60
	sbc [hl]                                         ; $5b65: $9e
	ld [hl], b                                       ; $5b66: $70

jr_013_5b67:
	ld [hl], $70                                     ; $5b67: $36 $70
	push af                                          ; $5b69: $f5
	inc bc                                           ; $5b6a: $03
	ld b, b                                          ; $5b6b: $40
	dec bc                                           ; $5b6c: $0b
	ld b, b                                          ; $5b6d: $40
	rst SubAFromDE                                          ; $5b6e: $df
	ld [de], a                                       ; $5b6f: $12
	ld [hl], a                                       ; $5b70: $77
	ld b, d                                          ; $5b71: $42
	inc bc                                           ; $5b72: $03
	ld b, b                                          ; $5b73: $40
	ld h, a                                          ; $5b74: $67
	cp a                                             ; $5b75: $bf
	sub b                                            ; $5b76: $90
	ld b, $07                                        ; $5b77: $06 $07
	ld a, b                                          ; $5b79: $78
	ld a, [hl]                                       ; $5b7a: $7e
	ld bc, $7b04                                     ; $5b7b: $01 $04 $7b
	ld [bc], a                                       ; $5b7e: $02
	ld a, l                                          ; $5b7f: $7d
	ld bc, $0106                                     ; $5b80: $01 $06 $01

jr_013_5b83:
	ld [bc], a                                       ; $5b83: $02
	nop                                              ; $5b84: $00
	inc bc                                           ; $5b85: $03
	ld [hl], l                                       ; $5b86: $75

jr_013_5b87:
	xor c                                            ; $5b87: $a9
	ld h, a                                          ; $5b88: $67
	ld b, c                                          ; $5b89: $41
	sub c                                            ; $5b8a: $91
	ld b, b                                          ; $5b8b: $40
	xor h                                            ; $5b8c: $ac
	add b                                            ; $5b8d: $80
	ld a, h                                          ; $5b8e: $7c
	add b                                            ; $5b8f: $80
	ld a, b                                          ; $5b90: $78
	ld b, b                                          ; $5b91: $40
	or b                                             ; $5b92: $b0
	add b                                            ; $5b93: $80
	ld h, b                                          ; $5b94: $60
	nop                                              ; $5b95: $00
	ret nz                                           ; $5b96: $c0

	nop                                              ; $5b97: $00
	ldh [$7b], a                                     ; $5b98: $e0 $7b
	cp $9c                                           ; $5b9a: $fe $9c
	ldh a, [$80]                                     ; $5b9c: $f0 $80
	ld [hl], b                                       ; $5b9e: $70
	ld a, e                                          ; $5b9f: $7b
	ldh a, [hDisp1_OBP1]                                     ; $5ba0: $f0 $94
	cp h                                             ; $5ba2: $bc
	jr nz, jr_013_5b83                               ; $5ba3: $20 $de

	db $10                                           ; $5ba5: $10
	ld l, a                                          ; $5ba6: $6f
	ld [$0637], sp                                   ; $5ba7: $08 $37 $06
	add hl, de                                       ; $5baa: $19
	ld bc, $7b0e                                     ; $5bab: $01 $0e $7b
	ret nc                                           ; $5bae: $d0

jr_013_5baf:
	inc de                                           ; $5baf: $13
	ld h, c                                          ; $5bb0: $61
	adc [hl]                                         ; $5bb1: $8e
	nop                                              ; $5bb2: $00
	dec bc                                           ; $5bb3: $0b
	ld [$0817], sp                                   ; $5bb4: $08 $17 $08
	rla                                              ; $5bb7: $17

jr_013_5bb8:
	add hl, bc                                       ; $5bb8: $09
	ld d, $13                                        ; $5bb9: $16 $13
	inc l                                            ; $5bbb: $2c
	ld d, $e9                                        ; $5bbc: $16 $e9
	jr c, jr_013_5b87                                ; $5bbe: $38 $c7

	ldh [$1f], a                                     ; $5bc0: $e0 $1f
	nop                                              ; $5bc2: $00
	ld [hl], l                                       ; $5bc3: $75
	ldh [c], a                                       ; $5bc4: $e2
	sbc h                                            ; $5bc5: $9c
	ld d, $10                                        ; $5bc6: $16 $10
	cpl                                              ; $5bc8: $2f
	ld a, e                                          ; $5bc9: $7b
	cp $92                                           ; $5bca: $fe $92
	ld l, $10                                        ; $5bcc: $2e $10
	ld l, $20                                        ; $5bce: $2e $20
	ld e, [hl]                                       ; $5bd0: $5e
	jr nz, jr_013_5baf                               ; $5bd1: $20 $dc

	ld b, b                                          ; $5bd3: $40
	cp h                                             ; $5bd4: $bc
	ret nz                                           ; $5bd5: $c0

	jr c, jr_013_5b58                                ; $5bd6: $38 $80

	ld [hl], b                                       ; $5bd8: $70
	ld a, e                                          ; $5bd9: $7b
	and h                                            ; $5bda: $a4
	ld a, a                                          ; $5bdb: $7f
	sbc [hl]                                         ; $5bdc: $9e
	ld h, e                                          ; $5bdd: $63
	ld h, d                                          ; $5bde: $62
	rst SubAFromDE                                          ; $5bdf: $df
	jr nz, jr_013_5b67                               ; $5be0: $20 $85

	nop                                              ; $5be2: $00
	stop                                             ; $5be3: $10 $00
	add hl, bc                                       ; $5be5: $09
	ld bc, $070e                                     ; $5be6: $01 $0e $07
	ld [$100c], sp                                   ; $5be9: $08 $0c $10
	cp b                                             ; $5bec: $b8
	ret nz                                           ; $5bed: $c0

	jr c, @+$22                                      ; $5bee: $38 $20

	db $10                                           ; $5bf0: $10
	ld [$0408], sp                                   ; $5bf1: $08 $08 $04
	inc c                                            ; $5bf4: $0c
	ld b, b                                          ; $5bf5: $40
	add hl, de                                       ; $5bf6: $19
	ld b, $01                                        ; $5bf7: $06 $01
	jr jr_013_5c1b                                   ; $5bf9: $18 $20

	ld hl, $0271                                     ; $5bfb: $21 $71 $02
	sbc [hl]                                         ; $5bfe: $9e
	adc b                                            ; $5bff: $88
	ld a, c                                          ; $5c00: $79
	ld e, a                                          ; $5c01: $5f
	add [hl]                                         ; $5c02: $86
	ld d, b                                          ; $5c03: $50
	ret nz                                           ; $5c04: $c0

	ld [hl+], a                                      ; $5c05: $22
	ld [hl], b                                       ; $5c06: $70
	inc c                                            ; $5c07: $0c
	jr c, jr_013_5c0a                                ; $5c08: $38 $00

jr_013_5c0a:
	jr jr_013_5c12                                   ; $5c0a: $18 $06

	dec e                                            ; $5c0c: $1d
	inc bc                                           ; $5c0d: $03
	ld [$1804], sp                                   ; $5c0e: $08 $04 $18
	inc b                                            ; $5c11: $04

jr_013_5c12:
	jr nc, @+$0a                                     ; $5c12: $30 $08

	ldh a, [$08]                                     ; $5c14: $f0 $08
	jr jr_013_5bb8                                   ; $5c16: $18 $a0

	nop                                              ; $5c18: $00
	jr jr_013_5c23                                   ; $5c19: $18 $08

jr_013_5c1b:
	ld [$be70], sp                                   ; $5c1b: $08 $70 $be
	ld a, b                                          ; $5c1e: $78
	jp hl                                            ; $5c1f: $e9


	ld a, a                                          ; $5c20: $7f
	inc sp                                           ; $5c21: $33
	db $fd                                           ; $5c22: $fd

jr_013_5c23:
	sbc e                                            ; $5c23: $9b
	db $10                                           ; $5c24: $10
	jr nz, jr_013_5c2b                               ; $5c25: $20 $04

	jr jr_013_5c91                                   ; $5c27: $18 $68

	xor h                                            ; $5c29: $ac
	sbc h                                            ; $5c2a: $9c

jr_013_5c2b:
	ld [$1001], sp                                   ; $5c2b: $08 $01 $10
	ld [hl], h                                       ; $5c2e: $74
	call z, Call_013_7ffc                            ; $5c2f: $cc $fc $7f
	db $ec                                           ; $5c32: $ec
	sbc l                                            ; $5c33: $9d
	jr nc, jr_013_5c56                               ; $5c34: $30 $20

	ld l, h                                          ; $5c36: $6c
	sub h                                            ; $5c37: $94
	ld l, a                                          ; $5c38: $6f
	reti                                             ; $5c39: $d9


	ld a, e                                          ; $5c3a: $7b
	adc a                                            ; $5c3b: $8f
	ld a, e                                          ; $5c3c: $7b
	db $ec                                           ; $5c3d: $ec
	ld a, a                                          ; $5c3e: $7f
	xor b                                            ; $5c3f: $a8
	ld l, a                                          ; $5c40: $6f
	ld c, d                                          ; $5c41: $4a
	db $e4                                           ; $5c42: $e4
	add hl, hl                                       ; $5c43: $29
	ld [bc], a                                       ; $5c44: $02
	pop af                                           ; $5c45: $f1
	rst SubAFromDE                                          ; $5c46: $df
	ld bc, $1fdf                                     ; $5c47: $01 $df $1f
	sub e                                            ; $5c4a: $93
	ld a, a                                          ; $5c4b: $7f
	ld h, d                                          ; $5c4c: $62
	ld a, a                                          ; $5c4d: $7f
	ld b, c                                          ; $5c4e: $41
	cpl                                              ; $5c4f: $2f
	jr nc, @+$01                                     ; $5c50: $30 $ff

	db $f4                                           ; $5c52: $f4
	rst $38                                          ; $5c53: $ff
	add c                                            ; $5c54: $81
	ld a, a                                          ; $5c55: $7f

jr_013_5c56:
	ld a, a                                          ; $5c56: $7f
	ld c, a                                          ; $5c57: $4f
	db $e4                                           ; $5c58: $e4
	add b                                            ; $5c59: $80
	rst JumpTable                                          ; $5c5a: $c7
	add $fb                                          ; $5c5b: $c6 $fb
	cp h                                             ; $5c5d: $bc
	db $fd                                           ; $5c5e: $fd
	ld [hl+], a                                      ; $5c5f: $22
	db $ec                                           ; $5c60: $ec
	ld d, e                                          ; $5c61: $53
	ld h, [hl]                                       ; $5c62: $66
	sbc c                                            ; $5c63: $99
	and $99                                          ; $5c64: $e6 $99
	rst SubAFromBC                                          ; $5c66: $e7
	sbc c                                            ; $5c67: $99
	rst AddAOntoHL                                          ; $5c68: $ef
	sbc a                                            ; $5c69: $9f
	ldh a, [$f0]                                     ; $5c6a: $f0 $f0
	stop                                             ; $5c6c: $10 $00
	inc b                                            ; $5c6e: $04
	nop                                              ; $5c6f: $00
	ld bc, $0c00                                     ; $5c70: $01 $00 $0c
	inc c                                            ; $5c73: $0c
	rla                                              ; $5c74: $17
	dec de                                           ; $5c75: $1b
	rra                                              ; $5c76: $1f
	dec d                                            ; $5c77: $15
	rra                                              ; $5c78: $1f
	sbc h                                            ; $5c79: $9c
	dec d                                            ; $5c7a: $15
	rrca                                             ; $5c7b: $0f
	add hl, bc                                       ; $5c7c: $09
	sbc $0e                                          ; $5c7d: $de $0e
	sub d                                            ; $5c7f: $92
	ld a, [bc]                                       ; $5c80: $0a
	ccf                                              ; $5c81: $3f
	dec sp                                           ; $5c82: $3b
	ld a, a                                          ; $5c83: $7f
	ld d, e                                          ; $5c84: $53
	ld a, $32                                        ; $5c85: $3e $32
	ld a, [hl]                                       ; $5c87: $7e
	ld h, d                                          ; $5c88: $62
	cp $82                                           ; $5c89: $fe $82
	ldh a, [c]                                       ; $5c8b: $f2
	ld c, $f9                                        ; $5c8c: $0e $f9
	rst SubAFromDE                                          ; $5c8e: $df
	ret nz                                           ; $5c8f: $c0

	adc a                                            ; $5c90: $8f

jr_013_5c91:
	ldh [$a0], a                                     ; $5c91: $e0 $a0
	ret nz                                           ; $5c93: $c0

Call_013_5c94:
	ret nz                                           ; $5c94: $c0

jr_013_5c95:
	call z, $fccc                                    ; $5c95: $cc $cc $fc
	ld [hl], h                                       ; $5c98: $74
	db $fc                                           ; $5c99: $fc
	ld b, h                                          ; $5c9a: $44
	ld hl, sp-$38                                    ; $5c9b: $f8 $c8
	ld a, b                                          ; $5c9d: $78
	ld c, b                                          ; $5c9e: $48
	jr nc, jr_013_5cd1                               ; $5c9f: $30 $30

	ei                                               ; $5ca1: $fb
	sub c                                            ; $5ca2: $91
	jp nc, $cc2e                                     ; $5ca3: $d2 $2e $cc

	inc [hl]                                         ; $5ca6: $34
	db $ec                                           ; $5ca7: $ec
	inc e                                            ; $5ca8: $1c
	ld a, b                                          ; $5ca9: $78
	sbc b                                            ; $5caa: $98
	jr c, jr_013_5c95                                ; $5cab: $38 $e8

	ld hl, sp-$78                                    ; $5cad: $f8 $88
	ldh a, [$f0]                                     ; $5caf: $f0 $f0
	db $eb                                           ; $5cb1: $eb
	rst SubAFromDE                                          ; $5cb2: $df
	ld l, h                                          ; $5cb3: $6c
	adc e                                            ; $5cb4: $8b
	ld a, a                                          ; $5cb5: $7f
	ld e, e                                          ; $5cb6: $5b
	ld [hl], a                                       ; $5cb7: $77
	ld c, c                                          ; $5cb8: $49
	ccf                                              ; $5cb9: $3f
	ld hl, $293f                                     ; $5cba: $21 $3f $29
	rra                                              ; $5cbd: $1f
	inc de                                           ; $5cbe: $13
	rra                                              ; $5cbf: $1f
	db $10                                           ; $5cc0: $10
	rrca                                             ; $5cc1: $0f
	ld [$0607], sp                                   ; $5cc2: $08 $07 $06
	inc bc                                           ; $5cc5: $03
	inc bc                                           ; $5cc6: $03
	ld bc, $f301                                     ; $5cc7: $01 $01 $f3
	sbc $f0                                          ; $5cca: $de $f0
	adc d                                            ; $5ccc: $8a
	db $10                                           ; $5ccd: $10
	ld hl, sp+$18                                    ; $5cce: $f8 $18
	rst $38                                          ; $5cd0: $ff

jr_013_5cd1:
	ld h, a                                          ; $5cd1: $67
	and $19                                          ; $5cd2: $e6 $19
	rst GetHLinHL                                          ; $5cd4: $cf
	jr nc, @+$1f                                     ; $5cd5: $30 $1d

	ldh [c], a                                       ; $5cd7: $e2
	sbc c                                            ; $5cd8: $99
	and $f3                                          ; $5cd9: $e6 $f3
	db $ec                                           ; $5cdb: $ec
	ld a, e                                          ; $5cdc: $7b
	ld e, h                                          ; $5cdd: $5c
	ccf                                              ; $5cde: $3f
	daa                                              ; $5cdf: $27
	inc e                                            ; $5ce0: $1c
	inc e                                            ; $5ce1: $1c
	rst FarCall                                          ; $5ce2: $f7
	rst SubAFromDE                                          ; $5ce3: $df
	ld [bc], a                                       ; $5ce4: $02
	adc b                                            ; $5ce5: $88
	rlca                                             ; $5ce6: $07
	dec b                                            ; $5ce7: $05
	rlca                                             ; $5ce8: $07
	dec b                                            ; $5ce9: $05
	rst $38                                          ; $5cea: $ff
	db $fc                                           ; $5ceb: $fc
	xor a                                            ; $5cec: $af
	ld [hl], b                                       ; $5ced: $70
	ei                                               ; $5cee: $fb
	dec b                                            ; $5cef: $05
	ccf                                              ; $5cf0: $3f
	rst JumpTable                                          ; $5cf1: $c7
	inc a                                            ; $5cf2: $3c
	call c, $f878                                    ; $5cf3: $dc $78 $f8
	ret nz                                           ; $5cf6: $c0

	ret nz                                           ; $5cf7: $c0

	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	stop                                             ; $5cfa: $10 $00

Call_013_5cfc:
	ret z                                            ; $5cfc: $c8

	ld a, e                                          ; $5cfd: $7b
	ld h, [hl]                                       ; $5cfe: $66
	sub e                                            ; $5cff: $93
	ld hl, sp-$68                                    ; $5d00: $f8 $98
	ld a, b                                          ; $5d02: $78
	ld c, b                                          ; $5d03: $48
	ld [hl], b                                       ; $5d04: $70
	ld d, b                                          ; $5d05: $50
	ldh a, [$f0]                                     ; $5d06: $f0 $f0
	ld h, b                                          ; $5d08: $60
	and b                                            ; $5d09: $a0
	ldh [$60], a                                     ; $5d0a: $e0 $60
	db $dd                                           ; $5d0c: $dd
	ret nz                                           ; $5d0d: $c0

	rst AddAOntoHL                                          ; $5d0e: $ef
	rst SubAFromDE                                          ; $5d0f: $df
	rlca                                             ; $5d10: $07
	ld a, a                                          ; $5d11: $7f
	adc b                                            ; $5d12: $88
	adc e                                            ; $5d13: $8b
	ld c, $0b                                        ; $5d14: $0e $0b
	rrca                                             ; $5d16: $0f
	inc c                                            ; $5d17: $0c
	dec de                                           ; $5d18: $1b
	inc e                                            ; $5d19: $1c
	add hl, de                                       ; $5d1a: $19
	ld d, $25                                        ; $5d1b: $16 $25
	ld a, [hl-]                                      ; $5d1d: $3a
	daa                                              ; $5d1e: $27
	jr c, @+$41                                      ; $5d1f: $38 $3f

	jr nz, jr_013_5d62                               ; $5d21: $20 $3f

	inc hl                                           ; $5d23: $23
	inc a                                            ; $5d24: $3c
	inc h                                            ; $5d25: $24
	ld a, h                                          ; $5d26: $7c
	ld h, h                                          ; $5d27: $64
	ld h, a                                          ; $5d28: $67
	ldh [c], a                                       ; $5d29: $e2
	sbc d                                            ; $5d2a: $9a
	ei                                               ; $5d2b: $fb
	db $fc                                           ; $5d2c: $fc
	di                                               ; $5d2d: $f3
	call z, Call_013_7b33                            ; $5d2e: $cc $33 $7b
	cp $97                                           ; $5d31: $fe $97
	sbc e                                            ; $5d33: $9b
	ld h, l                                          ; $5d34: $65
	rst SubAFromDE                                          ; $5d35: $df
	ld [hl+], a                                      ; $5d36: $22
	rst AddAOntoHL                                          ; $5d37: $ef
	ld e, $f1                                        ; $5d38: $1e $f1
	ld sp, $bc4f                                     ; $5d3a: $31 $4f $bc
	sbc $ff                                          ; $5d3d: $de $ff
	sub b                                            ; $5d3f: $90
	ret nz                                           ; $5d40: $c0

	rst $38                                          ; $5d41: $ff
	sub a                                            ; $5d42: $97
	ld a, [$7f86]                                    ; $5d43: $fa $86 $7f
	pop bc                                           ; $5d46: $c1
	rst $38                                          ; $5d47: $ff
	inc hl                                           ; $5d48: $23
	db $fc                                           ; $5d49: $fc
	ld a, h                                          ; $5d4a: $7c
	ret nz                                           ; $5d4b: $c0

	ret nz                                           ; $5d4c: $c0

	add b                                            ; $5d4d: $80

jr_013_5d4e:
	add b                                            ; $5d4e: $80
	pop af                                           ; $5d4f: $f1
	scf                                              ; $5d50: $37
	db $ec                                           ; $5d51: $ec
	db $fd                                           ; $5d52: $fd
	sbc e                                            ; $5d53: $9b
	ld a, [hl]                                       ; $5d54: $7e
	ld l, d                                          ; $5d55: $6a
	ld a, $2e                                        ; $5d56: $3e $2e
	sbc $78                                          ; $5d58: $de $78
	sub l                                            ; $5d5a: $95
	ld c, b                                          ; $5d5b: $48
	db $fc                                           ; $5d5c: $fc
	sub h                                            ; $5d5d: $94
	db $fc                                           ; $5d5e: $fc
	call nc, $6c74                                   ; $5d5f: $d4 $74 $6c

jr_013_5d62:
	jr jr_013_5d7c                                   ; $5d62: $18 $18

	ld b, b                                          ; $5d64: $40
	cp $7f                                           ; $5d65: $fe $7f
	ld c, h                                          ; $5d67: $4c
	rst $38                                          ; $5d68: $ff
	ld [hl], a                                       ; $5d69: $77
	ld hl, sp-$03                                    ; $5d6a: $f8 $fd
	rst SubAFromDE                                          ; $5d6c: $df
	jr nz, jr_013_5d4e                               ; $5d6d: $20 $df

	jr nc, @-$7b                                     ; $5d6f: $30 $83

	ld a, b                                          ; $5d71: $78
	ld e, b                                          ; $5d72: $58
	ld a, h                                          ; $5d73: $7c
	ld e, h                                          ; $5d74: $5c
	ld a, [hl]                                       ; $5d75: $7e
	ld c, d                                          ; $5d76: $4a
	ldh a, [c]                                       ; $5d77: $f2
	adc [hl]                                         ; $5d78: $8e
	di                                               ; $5d79: $f3
	xor l                                            ; $5d7a: $ad
	rst $38                                          ; $5d7b: $ff

jr_013_5d7c:
	pop bc                                           ; $5d7c: $c1
	rst $38                                          ; $5d7d: $ff
	or d                                             ; $5d7e: $b2
	rst $38                                          ; $5d7f: $ff
	sbc h                                            ; $5d80: $9c
	rst $38                                          ; $5d81: $ff
	add e                                            ; $5d82: $83
	sbc a                                            ; $5d83: $9f
	ldh [rKEY1], a                                   ; $5d84: $e0 $4d
	ld [hl], d                                       ; $5d86: $72
	ld b, e                                          ; $5d87: $43
	ld a, h                                          ; $5d88: $7c
	ld a, a                                          ; $5d89: $7f
	ld b, b                                          ; $5d8a: $40
	ld e, [hl]                                       ; $5d8b: $5e
	ld h, c                                          ; $5d8c: $61
	di                                               ; $5d8d: $f3
	rst SubAFromDE                                          ; $5d8e: $df
	add b                                            ; $5d8f: $80
	db $dd                                           ; $5d90: $dd
	ret nz                                           ; $5d91: $c0

	reti                                             ; $5d92: $d9


	add b                                            ; $5d93: $80
	adc a                                            ; $5d94: $8f
	ret nz                                           ; $5d95: $c0

	ld b, b                                          ; $5d96: $40
	ldh [$60], a                                     ; $5d97: $e0 $60
	ld h, c                                          ; $5d99: $61
	ld a, [hl]                                       ; $5d9a: $7e
	ld [hl], c                                       ; $5d9b: $71
	ld a, [hl]                                       ; $5d9c: $7e
	ld a, a                                          ; $5d9d: $7f
	ld e, b                                          ; $5d9e: $58
	inc a                                            ; $5d9f: $3c
	daa                                              ; $5da0: $27
	ld a, $33                                        ; $5da1: $3e $33
	rra                                              ; $5da3: $1f
	rra                                              ; $5da4: $1f
	ld b, [hl]                                       ; $5da5: $46
	xor h                                            ; $5da6: $ac
	db $fd                                           ; $5da7: $fd
	adc a                                            ; $5da8: $8f
	ldh [rAUD4LEN], a                                ; $5da9: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $5dab: $f0 $10
	inc a                                            ; $5dad: $3c
	call c, $8a7e                                    ; $5dae: $dc $7e $8a
	cp $06                                           ; $5db1: $fe $06
	rst GetHLinHL                                          ; $5db3: $cf
	or c                                             ; $5db4: $b1
	rst $38                                          ; $5db5: $ff
	ldh [$1f], a                                     ; $5db6: $e0 $1f
	rra                                              ; $5db8: $1f
	rst AddAOntoHL                                          ; $5db9: $ef
	ld [hl], a                                       ; $5dba: $77
	res 2, l                                         ; $5dbb: $cb $95
	ld [de], a                                       ; $5dbd: $12
	db $10                                           ; $5dbe: $10
	ld a, b                                          ; $5dbf: $78
	ld l, b                                          ; $5dc0: $68
	ld sp, hl                                        ; $5dc1: $f9
	adc b                                            ; $5dc2: $88
	db $fc                                           ; $5dc3: $fc
	add h                                            ; $5dc4: $84
	db $fc                                           ; $5dc5: $fc
	db $fc                                           ; $5dc6: $fc
	jp hl                                            ; $5dc7: $e9


	rst SubAFromDE                                          ; $5dc8: $df
	inc bc                                           ; $5dc9: $03
	ld a, [hl]                                       ; $5dca: $7e
	ld c, d                                          ; $5dcb: $4a
	ld a, [hl]                                       ; $5dcc: $7e
	jp nz, $1980                                     ; $5dcd: $c2 $80 $19

	ld e, $38                                        ; $5dd0: $1e $38
	scf                                              ; $5dd2: $37
	ld a, h                                          ; $5dd3: $7c
	ld h, e                                          ; $5dd4: $63
	or $c9                                           ; $5dd5: $f6 $c9
	db $e3                                           ; $5dd7: $e3
	cp h                                             ; $5dd8: $bc
	pop hl                                           ; $5dd9: $e1
	sbc $eb                                          ; $5dda: $de $eb
	call nc, Call_013_407f                           ; $5ddc: $d4 $7f $40
	ld e, a                                          ; $5ddf: $5f
	ld h, b                                          ; $5de0: $60
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	ld c, $0e                                        ; $5de3: $0e $0e
	ld a, a                                          ; $5de5: $7f
	ld [hl], c                                       ; $5de6: $71
	cp e                                             ; $5de7: $bb
	rst JumpTable                                          ; $5de8: $c7
	cp $12                                           ; $5de9: $fe $12
	rst $38                                          ; $5deb: $ff
	ld b, a                                          ; $5dec: $47
	db $fc                                           ; $5ded: $fc
	sub d                                            ; $5dee: $92
	ld b, h                                          ; $5def: $44
	db $fc                                           ; $5df0: $fc
	inc l                                            ; $5df1: $2c
	ld hl, sp+$58                                    ; $5df2: $f8 $58
	ld hl, sp+$48                                    ; $5df4: $f8 $48
	ld a, b                                          ; $5df6: $78
	cp b                                             ; $5df7: $b8
	ldh [rAUD4LEN], a                                ; $5df8: $e0 $20
	ret nz                                           ; $5dfa: $c0

	ld b, b                                          ; $5dfb: $40
	db $db                                           ; $5dfc: $db
	add b                                            ; $5dfd: $80
	sub l                                            ; $5dfe: $95
	ld b, e                                          ; $5dff: $43
	ld a, l                                          ; $5e00: $7d
	scf                                              ; $5e01: $37
	add hl, hl                                       ; $5e02: $29
	ccf                                              ; $5e03: $3f
	ld hl, $312f                                     ; $5e04: $21 $2f $31
	inc de                                           ; $5e07: $13
	inc e                                            ; $5e08: $1c
	ld [hl], d                                       ; $5e09: $72
	ld b, $9a                                        ; $5e0a: $06 $9a
	inc b                                            ; $5e0c: $04
	rlca                                             ; $5e0d: $07
	ld b, $07                                        ; $5e0e: $06 $07
	rlca                                             ; $5e10: $07
	scf                                              ; $5e11: $37
	ld e, b                                          ; $5e12: $58
	ld d, a                                          ; $5e13: $57
	ld l, a                                          ; $5e14: $6f
	ld a, a                                          ; $5e15: $7f
	db $db                                           ; $5e16: $db
	rst SubAFromDE                                          ; $5e17: $df
	inc c                                            ; $5e18: $0c
	ld a, d                                          ; $5e19: $7a

jr_013_5e1a:
	db $10                                           ; $5e1a: $10
	sbc h                                            ; $5e1b: $9c
	inc bc                                           ; $5e1c: $03
	ld b, $06                                        ; $5e1d: $06 $06
	ld sp, hl                                        ; $5e1f: $f9
	sbc [hl]                                         ; $5e20: $9e
	jr jr_013_5e9e                                   ; $5e21: $18 $7b

	cp $7d                                           ; $5e23: $fe $7d
	adc a                                            ; $5e25: $8f
	adc e                                            ; $5e26: $8b
	ld [hl-], a                                      ; $5e27: $32
	nop                                              ; $5e28: $00
	ld h, [hl]                                       ; $5e29: $66
	nop                                              ; $5e2a: $00
	inc c                                            ; $5e2b: $0c
	ret nz                                           ; $5e2c: $c0

	jr @-$7e                                         ; $5e2d: $18 $80

	ld sp, $0300                                     ; $5e2f: $31 $00 $03
	ld h, b                                          ; $5e32: $60
	ld b, $c0                                        ; $5e33: $06 $c0
	inc b                                            ; $5e35: $04
	adc b                                            ; $5e36: $88
	nop                                              ; $5e37: $00
	jr c, jr_013_5e1a                                ; $5e38: $38 $e0

	ldh [$57], a                                     ; $5e3a: $e0 $57
	ldh [$8d], a                                     ; $5e3c: $e0 $8d
	ld [bc], a                                       ; $5e3e: $02
	jr nc, @+$28                                     ; $5e3f: $30 $26

	ld h, b                                          ; $5e41: $60
	ld b, h                                          ; $5e42: $44
	ld c, b                                          ; $5e43: $48
	nop                                              ; $5e44: $00
	jr jr_013_5e58                                   ; $5e45: $18 $11

	jr nc, jr_013_5e6a                               ; $5e47: $30 $21

	ld [hl+], a                                      ; $5e49: $22
	ld [bc], a                                       ; $5e4a: $02
	inc b                                            ; $5e4b: $04
	inc b                                            ; $5e4c: $04
	inc c                                            ; $5e4d: $0c
	ld [$f608], sp                                   ; $5e4e: $08 $08 $f6
	ld a, a                                          ; $5e51: $7f
	db $f4                                           ; $5e52: $f4
	ld a, e                                          ; $5e53: $7b
	pop af                                           ; $5e54: $f1
	ld a, a                                          ; $5e55: $7f
	cp $9d                                           ; $5e56: $fe $9d

jr_013_5e58:
	inc e                                            ; $5e58: $1c
	ld h, d                                          ; $5e59: $62
	ld [hl], a                                       ; $5e5a: $77
	ld a, [$f277]                                    ; $5e5b: $fa $77 $f2
	xor $96                                          ; $5e5e: $ee $96
	ld b, d                                          ; $5e60: $42
	nop                                              ; $5e61: $00
	inc h                                            ; $5e62: $24
	ld [$1010], sp                                   ; $5e63: $08 $10 $10
	ld [$2400], sp                                   ; $5e66: $08 $00 $24
	ld a, e                                          ; $5e69: $7b

jr_013_5e6a:
	or $fa                                           ; $5e6a: $f6 $fa
	rst FarCall                                          ; $5e6c: $f7
	ld bc, $dfe5                                     ; $5e6d: $01 $e5 $df
	rlca                                             ; $5e70: $07
	sbc l                                            ; $5e71: $9d
	dec b                                            ; $5e72: $05
	rlca                                             ; $5e73: $07
	db $eb                                           ; $5e74: $eb
	sub l                                            ; $5e75: $95
	jr nz, jr_013_5e58                               ; $5e76: $20 $e0

	ld [hl], b                                       ; $5e78: $70
	ld [hl], b                                       ; $5e79: $70
	ld hl, sp-$28                                    ; $5e7a: $f8 $d8
	ld hl, sp-$78                                    ; $5e7c: $f8 $88
	db $fc                                           ; $5e7e: $fc
	inc d                                            ; $5e7f: $14
	db $fd                                           ; $5e80: $fd
	rst SubAFromDE                                          ; $5e81: $df
	inc bc                                           ; $5e82: $03
	sbc b                                            ; $5e83: $98
	rlca                                             ; $5e84: $07
	rrca                                             ; $5e85: $0f
	ld bc, $0f07                                     ; $5e86: $01 $07 $0f
	rra                                              ; $5e89: $1f
	ld bc, $f77b                                     ; $5e8a: $01 $7b $f7
	sbc l                                            ; $5e8d: $9d
	nop                                              ; $5e8e: $00
	ld bc, $86f3                                     ; $5e8f: $01 $f3 $86
	rrca                                             ; $5e92: $0f
	cp $73                                           ; $5e93: $fe $73
	ld a, h                                          ; $5e95: $7c
	rst AddAOntoHL                                          ; $5e96: $ef
	ldh a, [$1f]                                     ; $5e97: $f0 $1f
	pop hl                                           ; $5e99: $e1
	rst AddAOntoHL                                          ; $5e9a: $ef
	di                                               ; $5e9b: $f3
	cp e                                             ; $5e9c: $bb
	rst JumpTable                                          ; $5e9d: $c7

jr_013_5e9e:
	cp l                                             ; $5e9e: $bd
	jp $e39f                                         ; $5e9f: $c3 $9f $e3


	rst SubAFromDE                                          ; $5ea2: $df
	pop hl                                           ; $5ea3: $e1
	rst JumpTable                                          ; $5ea4: $c7
	ld sp, hl                                        ; $5ea5: $f9
	inc sp                                           ; $5ea6: $33
	ld a, h                                          ; $5ea7: $7c
	dec c                                            ; $5ea8: $0d
	ld e, $06                                        ; $5ea9: $1e $06
	ld a, e                                          ; $5eab: $7b
	adc $fd                                          ; $5eac: $ce $fd
	sub a                                            ; $5eae: $97
	db $ec                                           ; $5eaf: $ec
	inc l                                            ; $5eb0: $2c
	db $e4                                           ; $5eb1: $e4
	ld h, h                                          ; $5eb2: $64
	call nz, $80c4                                   ; $5eb3: $c4 $c4 $80
	add b                                            ; $5eb6: $80
	ld sp, hl                                        ; $5eb7: $f9
	reti                                             ; $5eb8: $d9


	add b                                            ; $5eb9: $80
	sbc h                                            ; $5eba: $9c
	ret nz                                           ; $5ebb: $c0

	ld b, b                                          ; $5ebc: $40
	ld b, b                                          ; $5ebd: $40
	sbc $c0                                          ; $5ebe: $de $c0
	ld sp, hl                                        ; $5ec0: $f9
	ld [hl], a                                       ; $5ec1: $77
	call nc, $a07f                                   ; $5ec2: $d4 $7f $a0
	ld a, a                                          ; $5ec5: $7f
	and d                                            ; $5ec6: $a2
	ld a, a                                          ; $5ec7: $7f
	sbc [hl]                                         ; $5ec8: $9e
	sbc d                                            ; $5ec9: $9a
	rra                                              ; $5eca: $1f
	ccf                                              ; $5ecb: $3f
	inc bc                                           ; $5ecc: $03
	rrca                                             ; $5ecd: $0f
	rlca                                             ; $5ece: $07
	ld a, e                                          ; $5ecf: $7b
	ld hl, sp-$07                                    ; $5ed0: $f8 $f9
	rst SubAFromDE                                          ; $5ed2: $df
	inc bc                                           ; $5ed3: $03
	rst SubAFromDE                                          ; $5ed4: $df
	rrca                                             ; $5ed5: $0f
	add h                                            ; $5ed6: $84
	ld a, b                                          ; $5ed7: $78
	ld a, a                                          ; $5ed8: $7f
	sbc h                                            ; $5ed9: $9c
	rst $38                                          ; $5eda: $ff
	ld hl, sp-$01                                    ; $5edb: $f8 $ff
	push af                                          ; $5edd: $f5
	cp $0a                                           ; $5ede: $fe $0a
	rst $38                                          ; $5ee0: $ff
	pop af                                           ; $5ee1: $f1
	cp $e8                                           ; $5ee2: $fe $e8
	rst $38                                          ; $5ee4: $ff
	ld d, h                                          ; $5ee5: $54
	rst $38                                          ; $5ee6: $ff
	ei                                               ; $5ee7: $fb
	rst $38                                          ; $5ee8: $ff
	ldh a, [rIE]                                     ; $5ee9: $f0 $ff
	ld a, b                                          ; $5eeb: $78
	ld a, a                                          ; $5eec: $7f
	dec a                                            ; $5eed: $3d
	ccf                                              ; $5eee: $3f
	ld c, $0f                                        ; $5eef: $0e $0f
	inc bc                                           ; $5ef1: $03
	ld h, e                                          ; $5ef2: $63
	ret c                                            ; $5ef3: $d8

	di                                               ; $5ef4: $f3
	rst SubAFromDE                                          ; $5ef5: $df
	ld bc, $3fdf                                     ; $5ef6: $01 $df $3f
	add e                                            ; $5ef9: $83
	rst JumpTable                                          ; $5efa: $c7
	cp $03                                           ; $5efb: $fe $03
	cp $8f                                           ; $5efd: $fe $8f
	db $fc                                           ; $5eff: $fc
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	ldh a, [$f0]                                     ; $5f02: $f0 $f0
	jr @-$06                                         ; $5f04: $18 $f8

	db $f4                                           ; $5f06: $f4
	call z, $847c                                    ; $5f07: $cc $7c $84
	adc $36                                          ; $5f0a: $ce $36
	sbc $32                                          ; $5f0c: $de $32
	rst AddAOntoHL                                          ; $5f0e: $ef
	ld l, e                                          ; $5f0f: $6b
	rst JumpTable                                          ; $5f10: $c7
	push bc                                          ; $5f11: $c5
	add a                                            ; $5f12: $87
	add a                                            ; $5f13: $87
	add e                                            ; $5f14: $83
	add e                                            ; $5f15: $83
	db $dd                                           ; $5f16: $dd
	ld bc, $7ffb                                     ; $5f17: $01 $fb $7f
	and a                                            ; $5f1a: $a7
	sub c                                            ; $5f1b: $91
	rra                                              ; $5f1c: $1f
	ldh [$3f], a                                     ; $5f1d: $e0 $3f
	pop bc                                           ; $5f1f: $c1
	ld a, a                                          ; $5f20: $7f
	add e                                            ; $5f21: $83
	rst $38                                          ; $5f22: $ff
	rlca                                             ; $5f23: $07
	cp $0e                                           ; $5f24: $fe $0e
	cp $0e                                           ; $5f26: $fe $0e
	db $fc                                           ; $5f28: $fc
	inc e                                            ; $5f29: $1c
	ld a, e                                          ; $5f2a: $7b
	cp $9e                                           ; $5f2b: $fe $9e
	inc a                                            ; $5f2d: $3c
	ld [hl], e                                       ; $5f2e: $73
	ld a, [$0c8d]                                    ; $5f2f: $fa $8d $0c
	db $fc                                           ; $5f32: $fc
	inc c                                            ; $5f33: $0c
	ld a, [hl]                                       ; $5f34: $7e
	adc [hl]                                         ; $5f35: $8e

jr_013_5f36:
	ld a, $c6                                        ; $5f36: $3e $c6
	cp e                                             ; $5f38: $bb
	rst JumpTable                                          ; $5f39: $c7
	db $dd                                           ; $5f3a: $dd
	db $e3                                           ; $5f3b: $e3
	ld h, h                                          ; $5f3c: $64
	ei                                               ; $5f3d: $fb
	ld e, $19                                        ; $5f3e: $1e $19
	rrca                                             ; $5f40: $0f
	ld a, h                                          ; $5f41: $7c
	rra                                              ; $5f42: $1f
	ld a, e                                          ; $5f43: $7b
	nop                                              ; $5f44: $00
	ldh [$dd], a                                     ; $5f45: $e0 $dd
	ld [hl], e                                       ; $5f47: $73
	ld [hl+], a                                      ; $5f48: $22
	ld a, a                                          ; $5f49: $7f
	ld hl, $c098                                     ; $5f4a: $21 $98 $c0
	ldh [$60], a                                     ; $5f4d: $e0 $60
	ldh [$a0], a                                     ; $5f4f: $e0 $a0
	ld h, b                                          ; $5f51: $60
	ld h, b                                          ; $5f52: $60
	ld l, e                                          ; $5f53: $6b
	ld a, [hl-]                                      ; $5f54: $3a
	sub a                                            ; $5f55: $97
	ccf                                              ; $5f56: $3f
	nop                                              ; $5f57: $00
	rrca                                             ; $5f58: $0f
	ld bc, $3e01                                     ; $5f59: $01 $01 $3e
	ccf                                              ; $5f5c: $3f
	rrca                                             ; $5f5d: $0f
	sbc $7f                                          ; $5f5e: $de $7f
	ld a, a                                          ; $5f60: $7f
	ld a, [$1f88]                                    ; $5f61: $fa $88 $1f
	rst $38                                          ; $5f64: $ff
	db $fc                                           ; $5f65: $fc
	rst $38                                          ; $5f66: $ff
	dec [hl]                                         ; $5f67: $35
	ccf                                              ; $5f68: $3f
	ld [$7fff], a                                    ; $5f69: $ea $ff $7f
	ld a, a                                          ; $5f6c: $7f
	inc d                                            ; $5f6d: $14
	ccf                                              ; $5f6e: $3f
	jr nc, jr_013_5fa4                               ; $5f6f: $30 $33

	ld c, $0e                                        ; $5f71: $0e $0e
	rlca                                             ; $5f73: $07
	rlca                                             ; $5f74: $07
	cp $ff                                           ; $5f75: $fe $ff
	inc e                                            ; $5f77: $1c
	rst $38                                          ; $5f78: $ff
	ldh [$7b], a                                     ; $5f79: $e0 $7b
	ld a, [hl+]                                      ; $5f7b: $2a
	ld a, a                                          ; $5f7c: $7f
	ld [hl], h                                       ; $5f7d: $74
	add b                                            ; $5f7e: $80
	pop bc                                           ; $5f7f: $c1
	cp $0f                                           ; $5f80: $fe $0f
	ldh a, [$3f]                                     ; $5f82: $f0 $3f
	jp $f807                                         ; $5f84: $c3 $07 $f8


	ld a, a                                          ; $5f87: $7f
	add b                                            ; $5f88: $80
	ld c, e                                          ; $5f89: $4b
	db $f4                                           ; $5f8a: $f4
	rrca                                             ; $5f8b: $0f
	ldh a, [rSB]                                     ; $5f8c: $f0 $01
	cp $18                                           ; $5f8e: $fe $18
	sbc b                                            ; $5f90: $98
	inc c                                            ; $5f91: $0c
	call z, $f686                                    ; $5f92: $cc $86 $f6
	rst JumpTable                                          ; $5f95: $c7

Call_013_5f96:
	rst $38                                          ; $5f96: $ff
	inc bc                                           ; $5f97: $03
	rst $38                                          ; $5f98: $ff
	add hl, sp                                       ; $5f99: $39
	rst JumpTable                                          ; $5f9a: $c7
	db $fc                                           ; $5f9b: $fc
	inc bc                                           ; $5f9c: $03

jr_013_5f9d:
	cp $8e                                           ; $5f9d: $fe $8e
	ld bc, $00ff                                     ; $5f9f: $01 $ff $00
	rst $38                                          ; $5fa2: $ff
	nop                                              ; $5fa3: $00

jr_013_5fa4:
	rst FarCall                                          ; $5fa4: $f7
	xor b                                            ; $5fa5: $a8
	di                                               ; $5fa6: $f3
	ld a, h                                          ; $5fa7: $7c
	ld a, [$fe4f]                                    ; $5fa8: $fa $4f $fe
	add hl, bc                                       ; $5fab: $09
	rst $38                                          ; $5fac: $ff
	nop                                              ; $5fad: $00
	rst SubAFromDE                                          ; $5fae: $df
	jr nz, jr_013_5f9d                               ; $5faf: $20 $ec

	adc d                                            ; $5fb1: $8a
	ld b, b                                          ; $5fb2: $40
	nop                                              ; $5fb3: $00
	jr nz, jr_013_5f36                               ; $5fb4: $20 $80

	ldh a, [$c0]                                     ; $5fb6: $f0 $c0
	ld hl, sp-$40                                    ; $5fb8: $f8 $c0
	db $fc                                           ; $5fba: $fc
	ldh [c], a                                       ; $5fbb: $e2
	cp $3f                                           ; $5fbc: $fe $3f
	ld a, a                                          ; $5fbe: $7f
	rra                                              ; $5fbf: $1f
	rra                                              ; $5fc0: $1f
	dec sp                                           ; $5fc1: $3b
	ei                                               ; $5fc2: $fb
	rlca                                             ; $5fc3: $07
	rrca                                             ; $5fc4: $0f
	ld b, $06                                        ; $5fc5: $06 $06
	ld l, [hl]                                       ; $5fc7: $6e
	rst SubAFromBC                                          ; $5fc8: $e7
	pop af                                           ; $5fc9: $f1
	adc a                                            ; $5fca: $8f
	ld b, a                                          ; $5fcb: $47
	ld hl, sp-$4e                                    ; $5fcc: $f8 $b2
	db $fd                                           ; $5fce: $fd
	and $ff                                          ; $5fcf: $e6 $ff
	adc $ff                                          ; $5fd1: $ce $ff
	jr jr_013_6010                                   ; $5fd3: $18 $3b

	ld h, c                                          ; $5fd5: $61
	rst $38                                          ; $5fd6: $ff
	add [hl]                                         ; $5fd7: $86
	sbc $1c                                          ; $5fd8: $de $1c
	sbc h                                            ; $5fda: $9c
	pop af                                           ; $5fdb: $f1
	adc a                                            ; $5fdc: $8f
	sbc a                                            ; $5fdd: $9f
	ld h, b                                          ; $5fde: $60
	scf                                              ; $5fdf: $37
	ret z                                            ; $5fe0: $c8

	ld a, b                                          ; $5fe1: $78
	sub a                                            ; $5fe2: $97
	ldh [c], a                                       ; $5fe3: $e2
	ld a, a                                          ; $5fe4: $7f
	add [hl]                                         ; $5fe5: $86
	sbc a                                            ; $5fe6: $9f
	sbc b                                            ; $5fe7: $98
	cp e                                             ; $5fe8: $bb
	inc sp                                           ; $5fe9: $33
	inc sp                                           ; $5fea: $33
	ld b, h                                          ; $5feb: $44
	ld b, h                                          ; $5fec: $44
	pop af                                           ; $5fed: $f1
	ld a, a                                          ; $5fee: $7f
	dec sp                                           ; $5fef: $3b
	ld a, a                                          ; $5ff0: $7f
	push bc                                          ; $5ff1: $c5
	ld a, a                                          ; $5ff2: $7f
	ld d, h                                          ; $5ff3: $54
	adc e                                            ; $5ff4: $8b
	ld e, a                                          ; $5ff5: $5f
	and b                                            ; $5ff6: $a0
	nop                                              ; $5ff7: $00
	rst $38                                          ; $5ff8: $ff
	ld d, h                                          ; $5ff9: $54
	xor e                                            ; $5ffa: $ab
	db $fd                                           ; $5ffb: $fd
	inc bc                                           ; $5ffc: $03
	rst FarCall                                          ; $5ffd: $f7
	dec bc                                           ; $5ffe: $0b
	halt                                             ; $5fff: $76
	adc [hl]                                         ; $6000: $8e
	ld l, l                                          ; $6001: $6d
	sbc h                                            ; $6002: $9c
	ret                                              ; $6003: $c9


	jr c, @+$33                                      ; $6004: $38 $31

	ldh a, [$60]                                     ; $6006: $f0 $60
	ldh [$6e], a                                     ; $6008: $e0 $6e
	ld [hl+], a                                      ; $600a: $22
	ld a, [hl]                                       ; $600b: $7e
	push af                                          ; $600c: $f5
	ld a, a                                          ; $600d: $7f
	cp $7e                                           ; $600e: $fe $7e

jr_013_6010:
	ld sp, hl                                        ; $6010: $f9
	sbc c                                            ; $6011: $99
	ldh [rAUD4LEN], a                                ; $6012: $e0 $20
	ldh [rAUD4LEN], a                                ; $6014: $e0 $20
	ld h, b                                          ; $6016: $60
	and b                                            ; $6017: $a0
	ld a, e                                          ; $6018: $7b
	push af                                          ; $6019: $f5
	sbc e                                            ; $601a: $9b
	nop                                              ; $601b: $00
	ret nz                                           ; $601c: $c0

	nop                                              ; $601d: $00
	add b                                            ; $601e: $80
	ld a, e                                          ; $601f: $7b
	cp $52                                           ; $6020: $fe $52
	jp nc, $f579                                     ; $6022: $d2 $79 $f5

	add l                                            ; $6025: $85
	ld b, b                                          ; $6026: $40
	ld h, b                                          ; $6027: $60
	ld b, b                                          ; $6028: $40
	ld [hl], b                                       ; $6029: $70
	jr nz, jr_013_605c                               ; $602a: $20 $30

	jr nz, jr_013_6066                               ; $602c: $20 $38

	ld [$0c10], sp                                   ; $602e: $08 $10 $0c
	db $10                                           ; $6031: $10
	inc c                                            ; $6032: $0c
	ld [de], a                                       ; $6033: $12
	ld b, $08                                        ; $6034: $06 $08
	ld b, $08                                        ; $6036: $06 $08
	ld [bc], a                                       ; $6038: $02
	inc c                                            ; $6039: $0c
	inc bc                                           ; $603a: $03
	inc b                                            ; $603b: $04
	ld bc, $0106                                     ; $603c: $01 $06 $01
	ld [bc], a                                       ; $603f: $02
	ldh a, [c]                                       ; $6040: $f2
	sbc b                                            ; $6041: $98
	ld [$0c00], sp                                   ; $6042: $08 $00 $0c
	nop                                              ; $6045: $00
	inc c                                            ; $6046: $0c
	ld [bc], a                                       ; $6047: $02
	inc b                                            ; $6048: $04
	ld [hl], a                                       ; $6049: $77
	cp $7b                                           ; $604a: $fe $7b
	ldh [$9e], a                                     ; $604c: $e0 $9e
	ld [bc], a                                       ; $604e: $02
	ld [hl], e                                       ; $604f: $73
	ldh [$7e], a                                     ; $6050: $e0 $7e
	db $fc                                           ; $6052: $fc
	sbc e                                            ; $6053: $9b
	jr nc, jr_013_6056                               ; $6054: $30 $00

jr_013_6056:
	jr z, jr_013_6058                                ; $6056: $28 $00

jr_013_6058:
	ld b, e                                          ; $6058: $43
	ld h, [hl]                                       ; $6059: $66
	ld e, l                                          ; $605a: $5d
	inc sp                                           ; $605b: $33

jr_013_605c:
	ld l, e                                          ; $605c: $6b
	ldh [$9e], a                                     ; $605d: $e0 $9e

Call_013_605f:
	ld b, e                                          ; $605f: $43
	ld a, d                                          ; $6060: $7a
	add sp, -$10                                     ; $6061: $e8 $f0
	jp nc, $df01                                     ; $6063: $d2 $01 $df

jr_013_6066:
	ret nz                                           ; $6066: $c0

	add c                                            ; $6067: $81
	and b                                            ; $6068: $a0
	ldh [$a0], a                                     ; $6069: $e0 $a0
	ldh [$f1], a                                     ; $606b: $e0 $f1
	or c                                             ; $606d: $b1
	pop af                                           ; $606e: $f1
	or c                                             ; $606f: $b1
	pop de                                           ; $6070: $d1
	or c                                             ; $6071: $b1
	reti                                             ; $6072: $d9


	cp c                                             ; $6073: $b9
	ld sp, hl                                        ; $6074: $f9
	sbc c                                            ; $6075: $99
	sbc a                                            ; $6076: $9f
	rst SubAFromBC                                          ; $6077: $e7
	db $e3                                           ; $6078: $e3
	rst SubAFromDE                                          ; $6079: $df
	ld [hl], e                                       ; $607a: $73
	ld c, l                                          ; $607b: $4d
	ld d, d                                          ; $607c: $52
	ld l, l                                          ; $607d: $6d
	cpl                                              ; $607e: $2f
	scf                                              ; $607f: $37
	inc a                                            ; $6080: $3c
	ccf                                              ; $6081: $3f
	ld [de], a                                       ; $6082: $12
	dec e                                            ; $6083: $1d
	ld hl, $f03e                                     ; $6084: $21 $3e $f0
	add b                                            ; $6087: $80
	ld bc, $0303                                     ; $6088: $01 $03 $03
	inc b                                            ; $608b: $04
	rlca                                             ; $608c: $07
	ld [$130f], sp                                   ; $608d: $08 $0f $13
	inc e                                            ; $6090: $1c
	ld [hl+], a                                      ; $6091: $22
	dec a                                            ; $6092: $3d
	inc l                                            ; $6093: $2c
	inc sp                                           ; $6094: $33
	ld c, c                                          ; $6095: $49
	ld [hl], a                                       ; $6096: $77
	and c                                            ; $6097: $a1
	add a                                            ; $6098: $87
	add e                                            ; $6099: $83
	rst SubAFromDE                                          ; $609a: $df

jr_013_609b:
	and a                                            ; $609b: $a7
	rst JumpTable                                          ; $609c: $c7
	ld b, $df                                        ; $609d: $06 $df
	ld [hl], $8f                                     ; $609f: $36 $8f
	ld c, [hl]                                       ; $60a1: $4e
	or a                                             ; $60a2: $b7
	add a                                            ; $60a3: $87
	ld [hl], a                                       ; $60a4: $77
	inc b                                            ; $60a5: $04
	ld a, a                                          ; $60a6: $7f
	adc a                                            ; $60a7: $8f
	inc b                                            ; $60a8: $04
	cp a                                             ; $60a9: $bf
	add h                                            ; $60aa: $84
	or a                                             ; $60ab: $b7
	jp z, $93b7                                      ; $60ac: $ca $b7 $93

	rst GetHLinHL                                          ; $60af: $cf

jr_013_60b0:
	sbc d                                            ; $60b0: $9a
	rst SubAFromBC                                          ; $60b1: $e7
	ld b, c                                          ; $60b2: $41
	di                                               ; $60b3: $f3
	ld b, b                                          ; $60b4: $40
	db $fd                                           ; $60b5: $fd
	ld [hl+], a                                      ; $60b6: $22
	db $fd                                           ; $60b7: $fd
	pop af                                           ; $60b8: $f1
	rst SubAFromDE                                          ; $60b9: $df
	rst $38                                          ; $60ba: $ff
	sub c                                            ; $60bb: $91

jr_013_60bc:
	ld h, b                                          ; $60bc: $60
	rra                                              ; $60bd: $1f
	ld d, b                                          ; $60be: $50
	adc a                                            ; $60bf: $8f
	ld c, $70                                        ; $60c0: $0e $70
	inc a                                            ; $60c2: $3c
	di                                               ; $60c3: $f3
	ld hl, sp-$05                                    ; $60c4: $f8 $fb
	ld a, [$f1ff]                                    ; $60c6: $fa $ff $f1
	ei                                               ; $60c9: $fb
	rst AddAOntoHL                                          ; $60ca: $ef
	rst SubAFromDE                                          ; $60cb: $df
	ret nz                                           ; $60cc: $c0

	add b                                            ; $60cd: $80
	jr nz, jr_013_60b0                               ; $60ce: $20 $e0

	ret nc                                           ; $60d0: $d0

	jr nc, jr_013_609b                               ; $60d1: $30 $c8

	jr c, jr_013_613d                                ; $60d3: $38 $68

	sbc b                                            ; $60d5: $98
	ld d, h                                          ; $60d6: $54
	xor h                                            ; $60d7: $ac
	jp c, $f2fe                                      ; $60d8: $da $fe $f2

	rst $38                                          ; $60db: $ff
	db $e4                                           ; $60dc: $e4
	and $c7                                          ; $60dd: $e6 $c7
	call z, $cccf                                    ; $60df: $cc $cf $cc
	adc $cc                                          ; $60e2: $ce $cc
	push bc                                          ; $60e4: $c5
	xor $e6                                          ; $60e5: $ee $e6
	rst FarCall                                          ; $60e7: $f7
	ld a, a                                          ; $60e8: $7f
	rst FarCall                                          ; $60e9: $f7
	inc sp                                           ; $60ea: $33
	ld a, a                                          ; $60eb: $7f
	rst $38                                          ; $60ec: $ff
	add b                                            ; $60ed: $80
	dec sp                                           ; $60ee: $3b
	ei                                               ; $60ef: $fb
	dec de                                           ; $60f0: $1b
	adc c                                            ; $60f1: $89
	dec c                                            ; $60f2: $0d
	ld a, h                                          ; $60f3: $7c
	adc l                                            ; $60f4: $8d
	ld c, $bf                                        ; $60f5: $0e $bf
	sub [hl]                                         ; $60f7: $96
	rst JumpTable                                          ; $60f8: $c7
	sbc a                                            ; $60f9: $9f
	jp $ff25                                         ; $60fa: $c3 $25 $ff


	ld hl, $3175                                     ; $60fd: $21 $75 $31

Call_013_6100:
	inc hl                                           ; $6100: $23
	ld h, e                                          ; $6101: $63
	dec sp                                           ; $6102: $3b
	di                                               ; $6103: $f3
	ld [hl], e                                       ; $6104: $73
	sbc a                                            ; $6105: $9f
	rst GetHLinHL                                          ; $6106: $cf
	or l                                             ; $6107: $b5
	rst GetHLinHL                                          ; $6108: $cf
	ld e, a                                          ; $6109: $5f
	add a                                            ; $610a: $87
	cp $de                                           ; $610b: $fe $de
	sbc c                                            ; $610d: $99
	ld d, [hl]                                       ; $610e: $56
	halt                                             ; $610f: $76
	db $fc                                           ; $6110: $fc
	db $fc                                           ; $6111: $fc
	jr z, jr_013_60bc                                ; $6112: $28 $a8

	sbc $f8                                          ; $6114: $de $f8
	ld a, e                                          ; $6116: $7b
	db $fc                                           ; $6117: $fc
	sbc l                                            ; $6118: $9d
	cp $9e                                           ; $6119: $fe $9e
	ld [hl], e                                       ; $611b: $73
	ld c, l                                          ; $611c: $4d
	sbc l                                            ; $611d: $9d
	ld bc, $7b06                                     ; $611e: $01 $06 $7b
	ld c, [hl]                                       ; $6121: $4e
	add b                                            ; $6122: $80
	add hl, de                                       ; $6123: $19
	ld d, $2a                                        ; $6124: $16 $2a
	dec [hl]                                         ; $6126: $35
	ld b, h                                          ; $6127: $44
	ld a, e                                          ; $6128: $7b
	add h                                            ; $6129: $84
	ei                                               ; $612a: $fb
	add a                                            ; $612b: $87
	ld hl, sp-$38                                    ; $612c: $f8 $c8
	rst FarCall                                          ; $612e: $f7
	ldh a, [$ef]                                     ; $612f: $f0 $ef
	sub b                                            ; $6131: $90
	cp a                                             ; $6132: $bf
	sbc h                                            ; $6133: $9c
	cp a                                             ; $6134: $bf
	adc e                                            ; $6135: $8b
	rst SubAFromBC                                          ; $6136: $e7
	ld c, c                                          ; $6137: $49
	db $e4                                           ; $6138: $e4
	ld c, a                                          ; $6139: $4f
	ld a, a                                          ; $613a: $7f
	ld [hl], l                                       ; $613b: $75
	ld a, d                                          ; $613c: $7a

jr_013_613d:
	adc h                                            ; $613d: $8c
	di                                               ; $613e: $f3
	db $10                                           ; $613f: $10
	rst AddAOntoHL                                          ; $6140: $ef
	ld [hl], b                                       ; $6141: $70
	add b                                            ; $6142: $80
	adc a                                            ; $6143: $8f

jr_013_6144:
	adc b                                            ; $6144: $88
	ld [hl], a                                       ; $6145: $77
	daa                                              ; $6146: $27
	ei                                               ; $6147: $fb
	inc e                                            ; $6148: $1c
	rst $38                                          ; $6149: $ff
	nop                                              ; $614a: $00
	rst $38                                          ; $614b: $ff
	add e                                            ; $614c: $83
	ld a, h                                          ; $614d: $7c
	ld c, h                                          ; $614e: $4c
	or e                                             ; $614f: $b3
	ld d, b                                          ; $6150: $50
	xor a                                            ; $6151: $af
	ld hl, $2fdf                                     ; $6152: $21 $df $2f
	rst SubAFromDE                                          ; $6155: $df
	ld sp, hl                                        ; $6156: $f9
	di                                               ; $6157: $f3
	add hl, hl                                       ; $6158: $29
	sub e                                            ; $6159: $93
	ldh a, [c]                                       ; $615a: $f2
	db $fd                                           ; $615b: $fd
	ld [de], a                                       ; $615c: $12
	ld sp, hl                                        ; $615d: $f9
	add hl, bc                                       ; $615e: $09
	ld hl, sp+$0c                                    ; $615f: $f8 $0c
	rst SubAFromBC                                          ; $6161: $e7
	add b                                            ; $6162: $80
	ld a, [hl-]                                      ; $6163: $3a
	rst $38                                          ; $6164: $ff
	ld a, a                                          ; $6165: $7f
	rst $38                                          ; $6166: $ff
	jp $4ebf                                         ; $6167: $c3 $bf $4e


	cp l                                             ; $616a: $bd
	sbc c                                            ; $616b: $99
	ld a, h                                          ; $616c: $7c
	or d                                             ; $616d: $b2
	ld a, h                                          ; $616e: $7c
	ld h, h                                          ; $616f: $64
	ld sp, hl                                        ; $6170: $f9
	and $f9                                          ; $6171: $e6 $f9
	ld b, l                                          ; $6173: $45
	ld d, d                                          ; $6174: $52
	ld e, b                                          ; $6175: $58
	ld b, a                                          ; $6176: $47
	ld b, h                                          ; $6177: $44
	ld [hl], e                                       ; $6178: $73
	ld [hl+], a                                      ; $6179: $22
	add hl, sp                                       ; $617a: $39
	dec hl                                           ; $617b: $2b
	inc [hl]                                         ; $617c: $34
	dec e                                            ; $617d: $1d
	ld a, [de]                                       ; $617e: $1a
	rlca                                             ; $617f: $07
	rrca                                             ; $6180: $0f
	nop                                              ; $6181: $00
	sbc [hl]                                         ; $6182: $9e
	rlca                                             ; $6183: $07
	jp hl                                            ; $6184: $e9


	sbc d                                            ; $6185: $9a
	ld l, l                                          ; $6186: $6d
	sub e                                            ; $6187: $93
	or [hl]                                          ; $6188: $b6
	ld c, c                                          ; $6189: $49
	rst $38                                          ; $618a: $ff
	ld a, e                                          ; $618b: $7b
	xor d                                            ; $618c: $aa
	sbc l                                            ; $618d: $9d
	nop                                              ; $618e: $00
	rrca                                             ; $618f: $0f
	db $eb                                           ; $6190: $eb
	sub b                                            ; $6191: $90
	di                                               ; $6192: $f3
	inc e                                            ; $6193: $1c
	jp hl                                            ; $6194: $e9


	sbc [hl]                                         ; $6195: $9e
	rst AddAOntoHL                                          ; $6196: $ef
	sub [hl]                                         ; $6197: $96
	rst AddAOntoHL                                          ; $6198: $ef
	sub c                                            ; $6199: $91
	ld l, l                                          ; $619a: $6d
	jp nc, Jump_013_7a35                             ; $619b: $d2 $35 $7a

	ld c, $1d                                        ; $619e: $0e $1d
	inc bc                                           ; $61a0: $03
	ld b, e                                          ; $61a1: $43
	cp b                                             ; $61a2: $b8
	add b                                            ; $61a3: $80
	ld b, c                                          ; $61a4: $41
	db $fd                                           ; $61a5: $fd
	scf                                              ; $61a6: $37
	ldh [hDisp1_SCY], a                                     ; $61a7: $e0 $90
	ld a, a                                          ; $61a9: $7f
	add hl, de                                       ; $61aa: $19
	sbc b                                            ; $61ab: $98
	add hl, hl                                       ; $61ac: $29
	call c, $ee14                                    ; $61ad: $dc $14 $ee
	sub d                                            ; $61b0: $92
	xor $41                                          ; $61b1: $ee $41
	rst AddAOntoHL                                          ; $61b3: $ef
	xor l                                            ; $61b4: $ad

jr_013_61b5:
	inc hl                                           ; $61b5: $23
	jr nc, jr_013_61b5                               ; $61b6: $30 $fd

	ld [hl], c                                       ; $61b8: $71
	cp $e1                                           ; $61b9: $fe $e1
	cp $e0                                           ; $61bb: $fe $e0
	ld a, [hl]                                       ; $61bd: $7e
	ld [bc], a                                       ; $61be: $02
	db $fd                                           ; $61bf: $fd
	inc b                                            ; $61c0: $04
	ei                                               ; $61c1: $fb
	jr c, jr_013_6144                                ; $61c2: $38 $80

	add e                                            ; $61c4: $83
	push hl                                          ; $61c5: $e5
	ei                                               ; $61c6: $fb
	ld b, [hl]                                       ; $61c7: $46

jr_013_61c8:
	ld sp, hl                                        ; $61c8: $f9
	ccf                                              ; $61c9: $3f
	cp a                                             ; $61ca: $bf
	call c, $383b                                    ; $61cb: $dc $3b $38
	rst GetHLinHL                                          ; $61ce: $cf
	db $f4                                           ; $61cf: $f4
	rlca                                             ; $61d0: $07
	rlca                                             ; $61d1: $07
	ld a, a                                          ; $61d2: $7f
	ld a, [hl]                                       ; $61d3: $7e
	add e                                            ; $61d4: $83
	cp l                                             ; $61d5: $bd
	inc bc                                           ; $61d6: $03
	ccf                                              ; $61d7: $3f
	add e                                            ; $61d8: $83
	rst JumpTable                                          ; $61d9: $c7
	pop af                                           ; $61da: $f1
	db $fc                                           ; $61db: $fc
	add c                                            ; $61dc: $81
	sbc a                                            ; $61dd: $9f
	add c                                            ; $61de: $81
	rst JumpTable                                          ; $61df: $c7
	rst $38                                          ; $61e0: $ff
	add c                                            ; $61e1: $81
	pop bc                                           ; $61e2: $c1
	ld a, a                                          ; $61e3: $7f
	ld a, [$80df]                                    ; $61e4: $fa $df $80
	sbc [hl]                                         ; $61e7: $9e
	ld b, b                                          ; $61e8: $40
	ld a, d                                          ; $61e9: $7a
	or b                                             ; $61ea: $b0
	rst SubAFromDE                                          ; $61eb: $df
	ldh a, [$80]                                     ; $61ec: $f0 $80
	jr z, jr_013_61c8                                ; $61ee: $28 $d8

	inc d                                            ; $61f0: $14
	db $ec                                           ; $61f1: $ec
	sub d                                            ; $61f2: $92
	xor $49                                          ; $61f3: $ee $49
	rst FarCall                                          ; $61f5: $f7
	rrca                                             ; $61f6: $0f
	pop af                                           ; $61f7: $f1
	inc sp                                           ; $61f8: $33
	call $bf43                                       ; $61f9: $cd $43 $bf
	add l                                            ; $61fc: $85
	rst $38                                          ; $61fd: $ff
	adc l                                            ; $61fe: $8d
	ei                                               ; $61ff: $fb
	ld sp, $d2fb                                     ; $6200: $31 $fb $d2
	ld [$2c54], a                                    ; $6203: $ea $54 $2c
	add d                                            ; $6206: $82
	jr nc, jr_013_620a                               ; $6207: $30 $01

	rst $38                                          ; $6209: $ff

jr_013_620a:
	ld b, $fe                                        ; $620a: $06 $fe
	rst $38                                          ; $620c: $ff
	sbc b                                            ; $620d: $98
	rst $38                                          ; $620e: $ff
	adc $22                                          ; $620f: $ce $22
	rst GetHLinHL                                          ; $6211: $cf
	ld hl, $1000                                     ; $6212: $21 $00 $10
	ld a, e                                          ; $6215: $7b
	ld d, [hl]                                       ; $6216: $56
	ld b, [hl]                                       ; $6217: $46
	ld d, b                                          ; $6218: $50
	sub b                                            ; $6219: $90
	jp Jump_013_7f81                                 ; $621a: $c3 $81 $7f


	rst JumpTable                                          ; $621d: $c7
	ld bc, $8f73                                     ; $621e: $01 $73 $8f
	adc [hl]                                         ; $6221: $8e
	ld b, d                                          ; $6222: $42
	call nz, $383c                                   ; $6223: $c4 $3c $38
	ld hl, sp-$40                                    ; $6226: $f8 $c0
	ret nz                                           ; $6228: $c0

	pop af                                           ; $6229: $f1
	sbc b                                            ; $622a: $98
	cp b                                             ; $622b: $b8
	ld c, h                                          ; $622c: $4c
	db $10                                           ; $622d: $10
	ld hl, sp-$20                                    ; $622e: $f8 $e0
	ldh a, [$80]                                     ; $6230: $f0 $80
	ld b, e                                          ; $6232: $43
	add sp, -$07                                     ; $6233: $e8 $f9
	ld e, l                                          ; $6235: $5d
	nop                                              ; $6236: $00
	db $fd                                           ; $6237: $fd
	rst SubAFromDE                                          ; $6238: $df
	dec bc                                           ; $6239: $0b
	add b                                            ; $623a: $80
	inc d                                            ; $623b: $14
	rra                                              ; $623c: $1f
	ld de, $2c1f                                     ; $623d: $11 $1f $2c
	ccf                                              ; $6240: $3f
	ld c, b                                          ; $6241: $48
	ld a, a                                          ; $6242: $7f
	ld b, c                                          ; $6243: $41
	ld a, a                                          ; $6244: $7f
	ld h, $3f                                        ; $6245: $26 $3f
	inc e                                            ; $6247: $1c
	rra                                              ; $6248: $1f
	inc a                                            ; $6249: $3c
	ccf                                              ; $624a: $3f
	ld l, e                                          ; $624b: $6b
	ld l, a                                          ; $624c: $6f
	ld e, $1e                                        ; $624d: $1e $1e
	jr jr_013_6269                                   ; $624f: $18 $18

	ld bc, $0301                                     ; $6251: $01 $01 $03
	inc bc                                           ; $6254: $03
	rlca                                             ; $6255: $07
	rlca                                             ; $6256: $07
	jr @+$21                                         ; $6257: $18 $1f

	ld h, [hl]                                       ; $6259: $66
	adc h                                            ; $625a: $8c
	ld a, c                                          ; $625b: $79
	sbc d                                            ; $625c: $9a
	rst SubAFromBC                                          ; $625d: $e7
	xor c                                            ; $625e: $a9
	sbc $92                                          ; $625f: $de $92
	db $fd                                           ; $6261: $fd
	add l                                            ; $6262: $85
	cp $04                                           ; $6263: $fe $04
	rst $38                                          ; $6265: $ff
	ld h, $ff                                        ; $6266: $26 $ff
	ld a, a                                          ; $6268: $7f

jr_013_6269:
	rst $38                                          ; $6269: $ff
	rst JumpTable                                          ; $626a: $c7
	rst JumpTable                                          ; $626b: $c7
	ld bc, $fd01                                     ; $626c: $01 $01 $fd
	db $dd                                           ; $626f: $dd

jr_013_6270:
	rst $38                                          ; $6270: $ff
	rst SubAFromDE                                          ; $6271: $df
	inc e                                            ; $6272: $1c
	add c                                            ; $6273: $81
	ld [$50fa], a                                    ; $6274: $ea $fa $50
	ldh a, [rAUD4LEN]                                ; $6277: $f0 $20
	ldh [rAUD4LEN], a                                ; $6279: $e0 $20
	ldh [$a0], a                                     ; $627b: $e0 $a0
	ld h, b                                          ; $627d: $60
	jr nc, jr_013_6270                               ; $627e: $30 $f0

	or b                                             ; $6280: $b0
	ld [hl], b                                       ; $6281: $70
	jr @-$06                                         ; $6282: $18 $f8

	ld [$e8f8], sp                                   ; $6284: $08 $f8 $e8
	ld hl, sp-$68                                    ; $6287: $f8 $98
	sbc b                                            ; $6289: $98
	adc b                                            ; $628a: $88
	adc b                                            ; $628b: $88
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	ldh [$e0], a                                     ; $628e: $e0 $e0
	add b                                            ; $6290: $80
	add b                                            ; $6291: $80
	ld d, h                                          ; $6292: $54
	ld [bc], a                                       ; $6293: $02
	db $fd                                           ; $6294: $fd
	rst SubAFromDE                                          ; $6295: $df
	dec bc                                           ; $6296: $0b
	add b                                            ; $6297: $80
	inc d                                            ; $6298: $14
	rra                                              ; $6299: $1f
	ld de, $2c1f                                     ; $629a: $11 $1f $2c
	ccf                                              ; $629d: $3f
	ld c, b                                          ; $629e: $48
	ld a, a                                          ; $629f: $7f
	ld b, c                                          ; $62a0: $41
	ld a, a                                          ; $62a1: $7f
	ld h, $3f                                        ; $62a2: $26 $3f
	inc e                                            ; $62a4: $1c
	rra                                              ; $62a5: $1f
	inc a                                            ; $62a6: $3c
	ccf                                              ; $62a7: $3f
	ld l, e                                          ; $62a8: $6b
	ld l, a                                          ; $62a9: $6f
	ld e, $1e                                        ; $62aa: $1e $1e
	jr jr_013_62c6                                   ; $62ac: $18 $18

	ld bc, $0301                                     ; $62ae: $01 $01 $03
	inc bc                                           ; $62b1: $03
	rlca                                             ; $62b2: $07
	rlca                                             ; $62b3: $07
	jr @+$21                                         ; $62b4: $18 $1f

	ld h, [hl]                                       ; $62b6: $66
	adc h                                            ; $62b7: $8c
	ld a, c                                          ; $62b8: $79
	sbc d                                            ; $62b9: $9a
	rst SubAFromBC                                          ; $62ba: $e7
	xor c                                            ; $62bb: $a9
	sbc $92                                          ; $62bc: $de $92
	db $fd                                           ; $62be: $fd
	add l                                            ; $62bf: $85
	cp $04                                           ; $62c0: $fe $04
	rst $38                                          ; $62c2: $ff
	ld h, $ff                                        ; $62c3: $26 $ff
	ld a, a                                          ; $62c5: $7f

jr_013_62c6:
	rst $38                                          ; $62c6: $ff
	rst JumpTable                                          ; $62c7: $c7
	rst JumpTable                                          ; $62c8: $c7
	ld bc, $fd01                                     ; $62c9: $01 $01 $fd
	db $dd                                           ; $62cc: $dd

jr_013_62cd:
	rst $38                                          ; $62cd: $ff
	rst SubAFromDE                                          ; $62ce: $df
	inc e                                            ; $62cf: $1c
	add c                                            ; $62d0: $81
	ld [$50fa], a                                    ; $62d1: $ea $fa $50
	ldh a, [rAUD4LEN]                                ; $62d4: $f0 $20
	ldh [rAUD4LEN], a                                ; $62d6: $e0 $20
	ldh [$a0], a                                     ; $62d8: $e0 $a0
	ld h, b                                          ; $62da: $60
	jr nc, jr_013_62cd                               ; $62db: $30 $f0

	or b                                             ; $62dd: $b0
	ld [hl], b                                       ; $62de: $70
	jr @-$06                                         ; $62df: $18 $f8

	ld [$e8f8], sp                                   ; $62e1: $08 $f8 $e8
	ld hl, sp-$68                                    ; $62e4: $f8 $98
	sbc b                                            ; $62e6: $98
	adc b                                            ; $62e7: $88
	adc b                                            ; $62e8: $88
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	ldh [$e0], a                                     ; $62eb: $e0 $e0
	add b                                            ; $62ed: $80
	add b                                            ; $62ee: $80
	rst SubAFromBC                                          ; $62ef: $e7
	db $dd                                           ; $62f0: $dd
	inc bc                                           ; $62f1: $03
	sbc l                                            ; $62f2: $9d
	ld b, $07                                        ; $62f3: $06 $07
	db $ed                                           ; $62f5: $ed
	rst SubAFromDE                                          ; $62f6: $df
	add hl, de                                       ; $62f7: $19
	sub l                                            ; $62f8: $95
	ld l, $3f                                        ; $62f9: $2e $3f
	ld b, l                                          ; $62fb: $45
	ld a, [hl]                                       ; $62fc: $7e
	ret z                                            ; $62fd: $c8

	rst $38                                          ; $62fe: $ff
	nop                                              ; $62ff: $00
	rst $38                                          ; $6300: $ff
	ld b, b                                          ; $6301: $40
	rst $38                                          ; $6302: $ff
	pop af                                           ; $6303: $f1
	rst SubAFromDE                                          ; $6304: $df
	dec de                                           ; $6305: $1b
	sub h                                            ; $6306: $94
	db $e4                                           ; $6307: $e4
	rst $38                                          ; $6308: $ff
	ld e, e                                          ; $6309: $5b
	cp h                                             ; $630a: $bc
	xor l                                            ; $630b: $ad
	ld [hl], e                                       ; $630c: $73
	ld [hl], $cf                                     ; $630d: $36 $cf
	ld b, b                                          ; $630f: $40
	cp a                                             ; $6310: $bf
	nop                                              ; $6311: $00
	ld a, e                                          ; $6312: $7b
	sbc $f1                                          ; $6313: $de $f1
	rst SubAFromDE                                          ; $6315: $df
	db $fc                                           ; $6316: $fc
	sub a                                            ; $6317: $97
	ld a, e                                          ; $6318: $7b
	add a                                            ; $6319: $87
	cp a                                             ; $631a: $bf
	ld a, a                                          ; $631b: $7f
	ret nz                                           ; $631c: $c0

	rst $38                                          ; $631d: $ff
	dec c                                            ; $631e: $0d
	ldh a, [c]                                       ; $631f: $f2
	ld [hl], a                                       ; $6320: $77
	ldh [c], a                                       ; $6321: $e2
	ld a, a                                          ; $6322: $7f
	ld hl, sp-$13                                    ; $6323: $f8 $ed
	rst SubAFromDE                                          ; $6325: $df
	ret nz                                           ; $6326: $c0

	sub l                                            ; $6327: $95
	inc a                                            ; $6328: $3c
	db $fc                                           ; $6329: $fc
	ret c                                            ; $632a: $d8

	ld hl, sp+$3e                                    ; $632b: $f8 $3e
	cp $07                                           ; $632d: $fe $07
	rst $38                                          ; $632f: $ff
	ld e, l                                          ; $6330: $5d
	and e                                            ; $6331: $a3
	ei                                               ; $6332: $fb
	db $dd                                           ; $6333: $dd
	ld [bc], a                                       ; $6334: $02
	rst SubAFromDE                                          ; $6335: $df
	ld b, $df                                        ; $6336: $06 $df
	inc c                                            ; $6338: $0c
	sbc c                                            ; $6339: $99
	inc d                                            ; $633a: $14
	inc e                                            ; $633b: $1c
	inc d                                            ; $633c: $14
	inc e                                            ; $633d: $1c
	jr z, jr_013_6378                                ; $633e: $28 $38

	ld l, a                                          ; $6340: $6f
	cp $85                                           ; $6341: $fe $85
	inc h                                            ; $6343: $24
	inc a                                            ; $6344: $3c
	inc d                                            ; $6345: $14
	inc e                                            ; $6346: $1c
	ld a, [bc]                                       ; $6347: $0a
	ld c, $0c                                        ; $6348: $0e $0c
	rrca                                             ; $634a: $0f
	ld [$090f], sp                                   ; $634b: $08 $0f $09
	rrca                                             ; $634e: $0f
	dec b                                            ; $634f: $05
	rlca                                             ; $6350: $07
	ld [$100f], sp                                   ; $6351: $08 $0f $10
	rra                                              ; $6354: $1f
	dec e                                            ; $6355: $1d
	ld d, $1f                                        ; $6356: $16 $1f
	rra                                              ; $6358: $1f
	dec b                                            ; $6359: $05
	ld b, $03                                        ; $635a: $06 $03
	inc bc                                           ; $635c: $03
	ld d, e                                          ; $635d: $53
	or h                                             ; $635e: $b4
	ld a, e                                          ; $635f: $7b
	sbc h                                            ; $6360: $9c
	add d                                            ; $6361: $82
	ret z                                            ; $6362: $c8

	ld a, a                                          ; $6363: $7f
	sbc b                                            ; $6364: $98
	rst $38                                          ; $6365: $ff
	jr nc, @-$0f                                     ; $6366: $30 $ef

	ld h, e                                          ; $6368: $63
	cp a                                             ; $6369: $bf
	db $ec                                           ; $636a: $ec
	db $fc                                           ; $636b: $fc
	sub c                                            ; $636c: $91
	pop af                                           ; $636d: $f1
	ld h, e                                          ; $636e: $63
	db $e3                                           ; $636f: $e3
	adc $cf                                          ; $6370: $ce $cf
	rra                                              ; $6372: $1f
	inc de                                           ; $6373: $13
	ccf                                              ; $6374: $3f
	dec l                                            ; $6375: $2d
	ld a, a                                          ; $6376: $7f
	ld a, e                                          ; $6377: $7b

jr_013_6378:
	dec c                                            ; $6378: $0d
	dec c                                            ; $6379: $0d
	ld [$0008], sp                                   ; $637a: $08 $08 $00
	nop                                              ; $637d: $00
	jr jr_013_63fa                                   ; $637e: $18 $7a

	adc $9c                                          ; $6380: $ce $9c
	ld c, b                                          ; $6382: $48
	rst $38                                          ; $6383: $ff
	sub c                                            ; $6384: $91
	ld a, d                                          ; $6385: $7a
	add $8d                                          ; $6386: $c6 $8d
	add d                                            ; $6388: $82
	rst $38                                          ; $6389: $ff
	jp $b0ff                                         ; $638a: $c3 $ff $b0


	rst $38                                          ; $638d: $ff
	rrca                                             ; $638e: $0f
	rst $38                                          ; $638f: $ff
	add hl, de                                       ; $6390: $19
	ld sp, hl                                        ; $6391: $f9
	ld h, e                                          ; $6392: $63
	ldh [c], a                                       ; $6393: $e2
	rst SubAFromBC                                          ; $6394: $e7
	push hl                                          ; $6395: $e5
	add $46                                          ; $6396: $c6 $46
	call nz, Call_013_7644                           ; $6398: $c4 $44 $76
	ldh [c], a                                       ; $639b: $e2
	add h                                            ; $639c: $84
	jr c, @+$01                                      ; $639d: $38 $ff

	ld b, $ff                                        ; $639f: $06 $ff
	inc e                                            ; $63a1: $1c
	rst $38                                          ; $63a2: $ff
	ld b, d                                          ; $63a3: $42
	cp a                                             ; $63a4: $bf
	add [hl]                                         ; $63a5: $86
	ld a, a                                          ; $63a6: $7f
	ld b, h                                          ; $63a7: $44
	cp a                                             ; $63a8: $bf
	inc hl                                           ; $63a9: $23
	rst SubAFromDE                                          ; $63aa: $df
	ret nz                                           ; $63ab: $c0

	rst $38                                          ; $63ac: $ff
	adc [hl]                                         ; $63ad: $8e
	rst $38                                          ; $63ae: $ff
	inc sp                                           ; $63af: $33
	rst $38                                          ; $63b0: $ff
	rst $38                                          ; $63b1: $ff
	ei                                               ; $63b2: $fb
	ld e, $1b                                        ; $63b3: $1e $1b
	rla                                              ; $63b5: $17
	rra                                              ; $63b6: $1f
	ld [de], a                                       ; $63b7: $12
	ld a, e                                          ; $63b8: $7b
	cp $7f                                           ; $63b9: $fe $7f
	adc d                                            ; $63bb: $8a
	sbc [hl]                                         ; $63bc: $9e
	rla                                              ; $63bd: $17
	ld a, e                                          ; $63be: $7b
	ld a, [hl-]                                      ; $63bf: $3a
	sbc h                                            ; $63c0: $9c
	ld e, $e1                                        ; $63c1: $1e $e1
	inc bc                                           ; $63c3: $03
	ld [hl], a                                       ; $63c4: $77
	ld d, $8f                                        ; $63c5: $16 $8f
	rst $38                                          ; $63c7: $ff
	add b                                            ; $63c8: $80
	rst $38                                          ; $63c9: $ff
	ldh [rIE], a                                     ; $63ca: $e0 $ff
	ld hl, sp+$5f                                    ; $63cc: $f8 $5f
	ld hl, sp+$2f                                    ; $63ce: $f8 $2f
	db $fc                                           ; $63d0: $fc
	or a                                             ; $63d1: $b7
	db $ec                                           ; $63d2: $ec
	rst $38                                          ; $63d3: $ff
	ld h, h                                          ; $63d4: $64
	rst $38                                          ; $63d5: $ff
	and b                                            ; $63d6: $a0
	ld a, d                                          ; $63d7: $7a
	ldh [c], a                                       ; $63d8: $e2
	add b                                            ; $63d9: $80
	jr nz, @+$01                                     ; $63da: $20 $ff

	adc d                                            ; $63dc: $8a
	adc [hl]                                         ; $63dd: $8e
	ret                                              ; $63de: $c9


	rst GetHLinHL                                          ; $63df: $cf
	ret                                              ; $63e0: $c9


	rst GetHLinHL                                          ; $63e1: $cf
	ld [hl-], a                                      ; $63e2: $32
	cp $0a                                           ; $63e3: $fe $0a
	cp $64                                           ; $63e5: $fe $64
	db $fc                                           ; $63e7: $fc
	inc e                                            ; $63e8: $1c
	db $fc                                           ; $63e9: $fc
	db $e4                                           ; $63ea: $e4
	inc e                                            ; $63eb: $1c
	inc d                                            ; $63ec: $14
	db $ec                                           ; $63ed: $ec
	ld c, $fe                                        ; $63ee: $0e $fe
	ld bc, $43ff                                     ; $63f0: $01 $ff $43
	cp a                                             ; $63f3: $bf
	ld [hl], $ce                                     ; $63f4: $36 $ce
	dec bc                                           ; $63f6: $0b
	rst FarCall                                          ; $63f7: $f7
	ld b, c                                          ; $63f8: $41
	sbc e                                            ; $63f9: $9b

jr_013_63fa:
	cp a                                             ; $63fa: $bf
	ld [hl-], a                                      ; $63fb: $32
	adc $08                                          ; $63fc: $ce $08
	ld a, e                                          ; $63fe: $7b
	ld b, b                                          ; $63ff: $40
	sbc e                                            ; $6400: $9b
	inc b                                            ; $6401: $04
	rlca                                             ; $6402: $07
	inc bc                                           ; $6403: $03
	inc bc                                           ; $6404: $03
	ld l, [hl]                                       ; $6405: $6e
	ld c, [hl]                                       ; $6406: $4e
	rst AddAOntoHL                                          ; $6407: $ef
	ld a, a                                          ; $6408: $7f
	cp [hl]                                          ; $6409: $be
	sub e                                            ; $640a: $93
	jr nc, @+$01                                     ; $640b: $30 $ff

	db $10                                           ; $640d: $10
	rst $38                                          ; $640e: $ff
	jr @+$01                                         ; $640f: $18 $ff

	sbc [hl]                                         ; $6411: $9e
	rst $38                                          ; $6412: $ff
	ld a, a                                          ; $6413: $7f
	ld a, a                                          ; $6414: $7f
	rrca                                             ; $6415: $0f
	rrca                                             ; $6416: $0f
	db $dd                                           ; $6417: $dd
	inc bc                                           ; $6418: $03
	db $db                                           ; $6419: $db
	ld bc, $98f9                                     ; $641a: $01 $f9 $98
	ld e, $e6                                        ; $641d: $1e $e6
	dec b                                            ; $641f: $05
	ei                                               ; $6420: $fb
	ld b, $fe                                        ; $6421: $06 $fe
	ld [bc], a                                       ; $6423: $02
	ld a, e                                          ; $6424: $7b
	xor h                                            ; $6425: $ac
	ld a, a                                          ; $6426: $7f
	db $fc                                           ; $6427: $fc
	ld a, a                                          ; $6428: $7f
	ld b, b                                          ; $6429: $40
	sbc d                                            ; $642a: $9a
	add d                                            ; $642b: $82
	cp $8c                                           ; $642c: $fe $8c
	db $fc                                           ; $642e: $fc
	ld c, $7a                                        ; $642f: $0e $7a
	ret z                                            ; $6431: $c8

	sub d                                            ; $6432: $92
	sbc h                                            ; $6433: $9c
	db $fc                                           ; $6434: $fc
	cp $ba                                           ; $6435: $fe $ba
	rst $38                                          ; $6437: $ff
	db $ed                                           ; $6438: $ed
	ld a, a                                          ; $6439: $7f
	ld [hl], a                                       ; $643a: $77
	dec e                                            ; $643b: $1d
	dec e                                            ; $643c: $1d
	ld bc, $0700                                     ; $643d: $01 $00 $07
	ld [hl], e                                       ; $6440: $73
	cp $9e                                           ; $6441: $fe $9e
	rrca                                             ; $6443: $0f
	ld a, e                                          ; $6444: $7b
	cp $9e                                           ; $6445: $fe $9e
	rra                                              ; $6447: $1f
	ld a, e                                          ; $6448: $7b
	db $fc                                           ; $6449: $fc
	sbc [hl]                                         ; $644a: $9e
	ld b, $fc                                        ; $644b: $06 $fc
	dec hl                                           ; $644d: $2b
	sub e                                            ; $644e: $93
	ld a, e                                          ; $644f: $7b
	ldh [$73], a                                     ; $6450: $e0 $73
	scf                                              ; $6452: $37
	ld h, e                                          ; $6453: $63
	cp $9e                                           ; $6454: $fe $9e
	adc a                                            ; $6456: $8f
	ldh a, [c]                                       ; $6457: $f2
	sbc h                                            ; $6458: $9c
	ldh a, [rP1]                                     ; $6459: $f0 $00
	cp $4b                                           ; $645b: $fe $4b
	sbc $59                                          ; $645d: $de $59
	ret nc                                           ; $645f: $d0

	ld a, e                                          ; $6460: $7b
	and h                                            ; $6461: $a4
	sbc [hl]                                         ; $6462: $9e
	inc c                                            ; $6463: $0c
	ld l, e                                          ; $6464: $6b
	cp $98                                           ; $6465: $fe $98
	call nz, $ec00                                   ; $6467: $c4 $00 $ec
	nop                                              ; $646a: $00
	db $fc                                           ; $646b: $fc
	nop                                              ; $646c: $00
	ld hl, sp+$7b                                    ; $646d: $f8 $7b
	cp $98                                           ; $646f: $fe $98
	ccf                                              ; $6471: $3f
	nop                                              ; $6472: $00
	pop af                                           ; $6473: $f1
	nop                                              ; $6474: $00
	and e                                            ; $6475: $a3
	nop                                              ; $6476: $00
	ld h, e                                          ; $6477: $63
	add sp, $7f                                      ; $6478: $e8 $7f
	cp [hl]                                          ; $647a: $be
	ld a, l                                          ; $647b: $7d
	reti                                             ; $647c: $d9


	ld a, a                                          ; $647d: $7f
	call c, $fe7f                                    ; $647e: $dc $7f $fe
	ld a, a                                          ; $6481: $7f
	ld h, h                                          ; $6482: $64
	ld [hl], a                                       ; $6483: $77
	cp $7f                                           ; $6484: $fe $7f
	add b                                            ; $6486: $80
	ld d, d                                          ; $6487: $52
	ld b, e                                          ; $6488: $43
	cp $7f                                           ; $6489: $fe $7f
	cp [hl]                                          ; $648b: $be
	ld a, a                                          ; $648c: $7f
	cp b                                             ; $648d: $b8
	ld a, a                                          ; $648e: $7f
	adc h                                            ; $648f: $8c
	ld [hl], a                                       ; $6490: $77
	ld a, [$fa9e]                                    ; $6491: $fa $9e $fa
	ld l, e                                          ; $6494: $6b
	db $fc                                           ; $6495: $fc
	sbc d                                            ; $6496: $9a
	inc a                                            ; $6497: $3c
	nop                                              ; $6498: $00
	inc e                                            ; $6499: $1c
	nop                                              ; $649a: $00
	jr c, jr_013_6518                                ; $649b: $38 $7b

	cp $9e                                           ; $649d: $fe $9e
	ld e, $7b                                        ; $649f: $1e $7b
	sbc b                                            ; $64a1: $98
	di                                               ; $64a2: $f3
	sbc [hl]                                         ; $64a3: $9e
	dec c                                            ; $64a4: $0d
	ld [hl], e                                       ; $64a5: $73
	inc e                                            ; $64a6: $1c
	ld a, a                                          ; $64a7: $7f
	or h                                             ; $64a8: $b4
	sbc [hl]                                         ; $64a9: $9e
	ld a, a                                          ; $64aa: $7f
	ld a, e                                          ; $64ab: $7b
	cp $7f                                           ; $64ac: $fe $7f
	ld a, [$b67f]                                    ; $64ae: $fa $7f $b6
	ld [hl], a                                       ; $64b1: $77
	ld [$9ef7], sp                                   ; $64b2: $08 $f7 $9e
	ld a, [hl]                                       ; $64b5: $7e
	ld c, e                                          ; $64b6: $4b
	ld b, [hl]                                       ; $64b7: $46
	sbc h                                            ; $64b8: $9c
	rst AddAOntoHL                                          ; $64b9: $ef
	nop                                              ; $64ba: $00
	rst GetHLinHL                                          ; $64bb: $cf
	ld d, e                                          ; $64bc: $53
	ldh [$9e], a                                     ; $64bd: $e0 $9e
	inc b                                            ; $64bf: $04
	ld a, e                                          ; $64c0: $7b
	cp $9c                                           ; $64c1: $fe $9c
	add $00                                          ; $64c3: $c6 $00
	and $7b                                          ; $64c5: $e6 $7b
	cp $7f                                           ; $64c7: $fe $7f
	sbc h                                            ; $64c9: $9c
	ld [hl], a                                       ; $64ca: $77
	cp $77                                           ; $64cb: $fe $77
	adc h                                            ; $64cd: $8c
	ld a, a                                          ; $64ce: $7f
	cp $9e                                           ; $64cf: $fe $9e
	ld [bc], a                                       ; $64d1: $02
	ldh [c], a                                       ; $64d2: $e2
	ld a, a                                          ; $64d3: $7f
	cp [hl]                                          ; $64d4: $be
	ld a, [hl]                                       ; $64d5: $7e
	or h                                             ; $64d6: $b4
	ld h, $b2                                        ; $64d7: $26 $b2
	ld h, a                                          ; $64d9: $67
	ld b, b                                          ; $64da: $40
	sbc [hl]                                         ; $64db: $9e
	sbc $7b                                          ; $64dc: $de $7b
	ld a, $9a                                        ; $64de: $3e $9a
	ld l, [hl]                                       ; $64e0: $6e
	nop                                              ; $64e1: $00
	ld [hl], $00                                     ; $64e2: $36 $00
	ld d, $ee                                        ; $64e4: $16 $ee
	ld c, d                                          ; $64e6: $4a
	ld bc, $ddf7                                     ; $64e7: $01 $f7 $dd
	inc bc                                           ; $64ea: $03
	adc l                                            ; $64eb: $8d
	ld b, $07                                        ; $64ec: $06 $07
	inc c                                            ; $64ee: $0c
	rrca                                             ; $64ef: $0f
	ld [$090f], sp                                   ; $64f0: $08 $0f $09
	rrca                                             ; $64f3: $0f
	dec b                                            ; $64f4: $05
	rlca                                             ; $64f5: $07
	ld [$100f], sp                                   ; $64f6: $08 $0f $10
	rra                                              ; $64f9: $1f
	dec e                                            ; $64fa: $1d
	ld d, $1f                                        ; $64fb: $16 $1f
	rra                                              ; $64fd: $1f
	db $fd                                           ; $64fe: $fd
	rst SubAFromDE                                          ; $64ff: $df
	add hl, de                                       ; $6500: $19
	sub h                                            ; $6501: $94
	ld l, $3f                                        ; $6502: $2e $3f
	ld b, l                                          ; $6504: $45

jr_013_6505:
	ld a, [hl]                                       ; $6505: $7e
	ret z                                            ; $6506: $c8

	rst $38                                          ; $6507: $ff
	nop                                              ; $6508: $00
	rst $38                                          ; $6509: $ff
	ld b, b                                          ; $650a: $40
	rst $38                                          ; $650b: $ff
	ret nz                                           ; $650c: $c0

	ld a, e                                          ; $650d: $7b
	cp $86                                           ; $650e: $fe $86
	ret z                                            ; $6510: $c8

	ld a, a                                          ; $6511: $7f
	sbc b                                            ; $6512: $98
	rst $38                                          ; $6513: $ff
	jr nc, jr_013_6505                               ; $6514: $30 $ef

	ld h, e                                          ; $6516: $63
	cp a                                             ; $6517: $bf

jr_013_6518:
	db $ec                                           ; $6518: $ec
	db $fc                                           ; $6519: $fc
	sub c                                            ; $651a: $91
	pop af                                           ; $651b: $f1
	dec de                                           ; $651c: $1b
	dec de                                           ; $651d: $1b
	db $e4                                           ; $651e: $e4
	rst $38                                          ; $651f: $ff
	ld e, e                                          ; $6520: $5b
	cp h                                             ; $6521: $bc
	xor l                                            ; $6522: $ad
	ld [hl], e                                       ; $6523: $73
	ld [hl], $cf                                     ; $6524: $36 $cf
	ld b, b                                          ; $6526: $40
	cp a                                             ; $6527: $bf
	nop                                              ; $6528: $00
	ld a, e                                          ; $6529: $7b
	sbc $85                                          ; $652a: $de $85
	jr @+$01                                         ; $652c: $18 $ff

	ld h, $ff                                        ; $652e: $26 $ff
	ld c, b                                          ; $6530: $48
	rst $38                                          ; $6531: $ff
	sub c                                            ; $6532: $91
	cp $04                                           ; $6533: $fe $04
	rst $38                                          ; $6535: $ff
	add d                                            ; $6536: $82
	rst $38                                          ; $6537: $ff
	jp $b0ff                                         ; $6538: $c3 $ff $b0


	rst $38                                          ; $653b: $ff
	db $fc                                           ; $653c: $fc
	db $fc                                           ; $653d: $fc
	ld a, e                                          ; $653e: $7b
	add a                                            ; $653f: $87
	cp a                                             ; $6540: $bf
	ld a, a                                          ; $6541: $7f
	ret nz                                           ; $6542: $c0

	rst $38                                          ; $6543: $ff
	dec c                                            ; $6544: $0d
	ldh a, [c]                                       ; $6545: $f2
	ld [hl], a                                       ; $6546: $77
	ldh [c], a                                       ; $6547: $e2
	ld a, a                                          ; $6548: $7f
	ld hl, sp-$71                                    ; $6549: $f8 $8f
	jr c, @+$01                                      ; $654b: $38 $ff

	ld b, $ff                                        ; $654d: $06 $ff
	inc e                                            ; $654f: $1c
	rst $38                                          ; $6550: $ff
	ld b, d                                          ; $6551: $42
	cp a                                             ; $6552: $bf
	add [hl]                                         ; $6553: $86
	ld a, a                                          ; $6554: $7f
	ld b, h                                          ; $6555: $44
	cp a                                             ; $6556: $bf
	inc hl                                           ; $6557: $23
	rst SubAFromDE                                          ; $6558: $df
	ret nz                                           ; $6559: $c0

	rst $38                                          ; $655a: $ff
	db $fd                                           ; $655b: $fd
	rst SubAFromDE                                          ; $655c: $df
	ret nz                                           ; $655d: $c0

	sub h                                            ; $655e: $94
	inc a                                            ; $655f: $3c
	db $fc                                           ; $6560: $fc
	ret c                                            ; $6561: $d8

	ld hl, sp+$3e                                    ; $6562: $f8 $3e
	cp $07                                           ; $6564: $fe $07
	rst $38                                          ; $6566: $ff
	ld e, l                                          ; $6567: $5d
	and e                                            ; $6568: $a3
	rla                                              ; $6569: $17
	ld a, e                                          ; $656a: $7b
	jp c, $1e9c                                      ; $656b: $da $9c $1e

	pop hl                                           ; $656e: $e1
	inc bc                                           ; $656f: $03
	ld a, e                                          ; $6570: $7b
	ld a, [$fe7f]                                    ; $6571: $fa $7f $fe
	sub a                                            ; $6574: $97
	add b                                            ; $6575: $80
	rst $38                                          ; $6576: $ff
	ldh [rIE], a                                     ; $6577: $e0 $ff
	dec b                                            ; $6579: $05
	ld b, $03                                        ; $657a: $06 $03
	inc bc                                           ; $657c: $03
	push hl                                          ; $657d: $e5
	sub c                                            ; $657e: $91
	ld h, e                                          ; $657f: $63
	db $e3                                           ; $6580: $e3
	adc $cf                                          ; $6581: $ce $cf
	rra                                              ; $6583: $1f
	inc de                                           ; $6584: $13
	ccf                                              ; $6585: $3f
	dec l                                            ; $6586: $2d
	ld a, a                                          ; $6587: $7f
	ld a, e                                          ; $6588: $7b
	dec c                                            ; $6589: $0d
	dec c                                            ; $658a: $0d
	ld [$ef08], sp                                   ; $658b: $08 $08 $ef
	sub c                                            ; $658e: $91
	rrca                                             ; $658f: $0f
	rst $38                                          ; $6590: $ff
	add hl, de                                       ; $6591: $19
	ld sp, hl                                        ; $6592: $f9
	ld h, e                                          ; $6593: $63
	ldh [c], a                                       ; $6594: $e2
	rst SubAFromBC                                          ; $6595: $e7
	push hl                                          ; $6596: $e5
	add $46                                          ; $6597: $c6 $46
	call nz, $8044                                   ; $6599: $c4 $44 $80
	add b                                            ; $659c: $80

Call_013_659d:
	rst AddAOntoHL                                          ; $659d: $ef
	sub h                                            ; $659e: $94
	adc [hl]                                         ; $659f: $8e
	rst $38                                          ; $65a0: $ff
	inc sp                                           ; $65a1: $33
	rst $38                                          ; $65a2: $ff
	rst $38                                          ; $65a3: $ff
	ei                                               ; $65a4: $fb
	ld e, $1b                                        ; $65a5: $1e $1b
	rla                                              ; $65a7: $17
	rra                                              ; $65a8: $1f
	ld [de], a                                       ; $65a9: $12
	ld a, e                                          ; $65aa: $7b
	cp $7f                                           ; $65ab: $fe $7f
	ld a, [bc]                                       ; $65ad: $0a
	ld [hl], a                                       ; $65ae: $77
	cp $99                                           ; $65af: $fe $99
	inc b                                            ; $65b1: $04
	rlca                                             ; $65b2: $07
	inc bc                                           ; $65b3: $03
	inc bc                                           ; $65b4: $03
	ld bc, $fb01                                     ; $65b5: $01 $01 $fb
	sub h                                            ; $65b8: $94
	ld hl, sp+$5f                                    ; $65b9: $f8 $5f
	ld hl, sp+$2f                                    ; $65bb: $f8 $2f
	db $fc                                           ; $65bd: $fc
	or a                                             ; $65be: $b7
	db $ec                                           ; $65bf: $ec
	rst $38                                          ; $65c0: $ff
	ld h, h                                          ; $65c1: $64
	rst $38                                          ; $65c2: $ff
	and b                                            ; $65c3: $a0
	ld a, e                                          ; $65c4: $7b
	ld [bc], a                                       ; $65c5: $02
	sbc [hl]                                         ; $65c6: $9e
	jr nz, jr_013_6644                               ; $65c7: $20 $7b

	cp $9c                                           ; $65c9: $fe $9c
	jr nc, @+$01                                     ; $65cb: $30 $ff

	db $10                                           ; $65cd: $10
	ld a, e                                          ; $65ce: $7b
	ld a, [de]                                       ; $65cf: $1a
	sbc c                                            ; $65d0: $99
	sbc [hl]                                         ; $65d1: $9e
	rst $38                                          ; $65d2: $ff
	ld a, a                                          ; $65d3: $7f
	ld a, a                                          ; $65d4: $7f
	rrca                                             ; $65d5: $0f
	rrca                                             ; $65d6: $0f
	ld h, a                                          ; $65d7: $67
	ld h, h                                          ; $65d8: $64
	db $dd                                           ; $65d9: $dd
	ld [bc], a                                       ; $65da: $02
	rst SubAFromDE                                          ; $65db: $df
	ld b, $df                                        ; $65dc: $06 $df
	inc c                                            ; $65de: $0c
	sbc c                                            ; $65df: $99
	inc d                                            ; $65e0: $14
	inc e                                            ; $65e1: $1c
	inc d                                            ; $65e2: $14
	inc e                                            ; $65e3: $1c
	jr z, jr_013_661e                                ; $65e4: $28 $38

	ld l, a                                          ; $65e6: $6f
	cp $80                                           ; $65e7: $fe $80
	inc h                                            ; $65e9: $24
	inc a                                            ; $65ea: $3c
	inc d                                            ; $65eb: $14
	inc e                                            ; $65ec: $1c
	ld a, [bc]                                       ; $65ed: $0a
	ld c, $8a                                        ; $65ee: $0e $8a
	adc [hl]                                         ; $65f0: $8e
	ret                                              ; $65f1: $c9


	rst GetHLinHL                                          ; $65f2: $cf
	ret                                              ; $65f3: $c9


	rst GetHLinHL                                          ; $65f4: $cf
	ld [hl-], a                                      ; $65f5: $32
	cp $0a                                           ; $65f6: $fe $0a
	cp $64                                           ; $65f8: $fe $64
	db $fc                                           ; $65fa: $fc
	inc e                                            ; $65fb: $1c
	db $fc                                           ; $65fc: $fc
	db $e4                                           ; $65fd: $e4
	inc e                                            ; $65fe: $1c
	inc d                                            ; $65ff: $14
	db $ec                                           ; $6600: $ec
	ld c, $fe                                        ; $6601: $0e $fe
	ld bc, $43ff                                     ; $6603: $01 $ff $43
	cp a                                             ; $6606: $bf
	ld [hl], $91                                     ; $6607: $36 $91
	adc $0b                                          ; $6609: $ce $0b
	rst FarCall                                          ; $660b: $f7
	ld b, c                                          ; $660c: $41
	cp a                                             ; $660d: $bf
	ld [hl-], a                                      ; $660e: $32
	adc $1e                                          ; $660f: $ce $1e
	and $05                                          ; $6611: $e6 $05
	ei                                               ; $6613: $fb
	ld b, $fe                                        ; $6614: $06 $fe
	ld [bc], a                                       ; $6616: $02
	ld a, e                                          ; $6617: $7b
	db $ec                                           ; $6618: $ec
	ld a, a                                          ; $6619: $7f
	db $fc                                           ; $661a: $fc
	ld a, [hl]                                       ; $661b: $7e
	ret nc                                           ; $661c: $d0

	adc l                                            ; $661d: $8d

jr_013_661e:
	add d                                            ; $661e: $82
	cp $8c                                           ; $661f: $fe $8c
	db $fc                                           ; $6621: $fc
	adc [hl]                                         ; $6622: $8e
	cp $87                                           ; $6623: $fe $87
	rst $38                                          ; $6625: $ff
	sbc h                                            ; $6626: $9c
	db $fc                                           ; $6627: $fc
	cp $ba                                           ; $6628: $fe $ba
	ld a, a                                          ; $662a: $7f
	ld l, l                                          ; $662b: $6d
	ccf                                              ; $662c: $3f
	scf                                              ; $662d: $37
	dec c                                            ; $662e: $0d
	dec c                                            ; $662f: $0d
	ld c, e                                          ; $6630: $4b
	ld bc, $dfff                                     ; $6631: $01 $ff $df
	ld bc, $8697                                     ; $6634: $01 $97 $86
	add a                                            ; $6637: $87
	ld a, c                                          ; $6638: $79
	ld a, a                                          ; $6639: $7f
	ld h, d                                          ; $663a: $62
	ld a, [hl]                                       ; $663b: $7e
	inc a                                            ; $663c: $3c
	inc a                                            ; $663d: $3c
	db $fd                                           ; $663e: $fd
	rst SubAFromDE                                          ; $663f: $df
	inc bc                                           ; $6640: $03
	add b                                            ; $6641: $80
	ld b, $07                                        ; $6642: $06 $07

jr_013_6644:
	rla                                              ; $6644: $17
	ld d, $1d                                        ; $6645: $16 $1d
	ld e, $1d                                        ; $6647: $1e $1d
	ld e, $14                                        ; $6649: $1e $14
	rra                                              ; $664b: $1f
	add hl, hl                                       ; $664c: $29
	ld a, $28                                        ; $664d: $3e $28
	ccf                                              ; $664f: $3f
	ld h, b                                          ; $6650: $60
	ld h, b                                          ; $6651: $60
	sbc b                                            ; $6652: $98
	ld hl, sp+$07                                    ; $6653: $f8 $07
	rst $38                                          ; $6655: $ff
	ld [$12ff], a                                    ; $6656: $ea $ff $12
	rra                                              ; $6659: $1f
	dec d                                            ; $665a: $15
	ld e, $65                                        ; $665b: $1e $65
	ld a, [hl]                                       ; $665d: $7e
	pop hl                                           ; $665e: $e1
	cp $90                                           ; $665f: $fe $90
	sbc c                                            ; $6661: $99
	rst $38                                          ; $6662: $ff
	or b                                             ; $6663: $b0
	rst SubAFromDE                                          ; $6664: $df
	and b                                            ; $6665: $a0
	rst SubAFromDE                                          ; $6666: $df
	jr nz, jr_013_66e4                               ; $6667: $20 $7b

	db $fc                                           ; $6669: $fc
	adc c                                            ; $666a: $89
	ld bc, $01ff                                     ; $666b: $01 $ff $01
	rst $38                                          ; $666e: $ff
	inc bc                                           ; $666f: $03
	rst $38                                          ; $6670: $ff
	ld [hl], $36                                     ; $6671: $36 $36
	ld e, l                                          ; $6673: $5d
	ld a, a                                          ; $6674: $7f
	ret z                                            ; $6675: $c8

	rst $38                                          ; $6676: $ff
	ld b, h                                          ; $6677: $44
	ei                                               ; $6678: $fb
	adc c                                            ; $6679: $89
	halt                                             ; $667a: $76
	add hl, bc                                       ; $667b: $09
	or $12                                           ; $667c: $f6 $12
	db $ed                                           ; $667e: $ed
	nop                                              ; $667f: $00
	rst $38                                          ; $6680: $ff
	ld [hl], a                                       ; $6681: $77
	cp $86                                           ; $6682: $fe $86
	jr c, @+$01                                      ; $6684: $38 $ff

	ldh a, [$df]                                     ; $6686: $f0 $df
	ldh [$bf], a                                     ; $6688: $e0 $bf
	db $fd                                           ; $668a: $fd
	ld a, a                                          ; $668b: $7f
	ld a, [$f49f]                                    ; $668c: $fa $9f $f4
	ccf                                              ; $668f: $3f
	ld c, d                                          ; $6690: $4a
	ld c, d                                          ; $6691: $4a
	or a                                             ; $6692: $b7
	rst $38                                          ; $6693: $ff
	ldh [$bf], a                                     ; $6694: $e0 $bf
	add b                                            ; $6696: $80
	ld a, a                                          ; $6697: $7f
	add b                                            ; $6698: $80
	ld a, a                                          ; $6699: $7f
	nop                                              ; $669a: $00
	rst $38                                          ; $669b: $ff
	ld [bc], a                                       ; $669c: $02
	ld a, e                                          ; $669d: $7b
	ret nc                                           ; $669e: $d0

	ld a, a                                          ; $669f: $7f
	or h                                             ; $66a0: $b4
	add b                                            ; $66a1: $80
	rrca                                             ; $66a2: $0f
	rst $38                                          ; $66a3: $ff
	ld c, $fe                                        ; $66a4: $0e $fe
	ld e, $fe                                        ; $66a6: $1e $fe
	ld a, h                                          ; $66a8: $7c
	db $fc                                           ; $66a9: $fc
	call nz, $04fc                                   ; $66aa: $c4 $fc $04
	db $fc                                           ; $66ad: $fc
	ld [$27f8], sp                                   ; $66ae: $08 $f8 $27
	daa                                              ; $66b1: $27
	ld l, [hl]                                       ; $66b2: $6e
	ld l, d                                          ; $66b3: $6a
	rst $38                                          ; $66b4: $ff
	rst FarCall                                          ; $66b5: $f7
	rst SubAFromDE                                          ; $66b6: $df
	db $fd                                           ; $66b7: $fd
	rra                                              ; $66b8: $1f
	ei                                               ; $66b9: $fb
	ld c, $fe                                        ; $66ba: $0e $fe
	ld c, $f6                                        ; $66bc: $0e $f6
	sbc h                                            ; $66be: $9c
	db $fc                                           ; $66bf: $fc
	ldh a, [$9c]                                     ; $66c0: $f0 $9c
	ldh a, [$80]                                     ; $66c2: $f0 $80
	add b                                            ; $66c4: $80
	push af                                          ; $66c5: $f5
	add b                                            ; $66c6: $80

Call_013_66c7:
	ld l, b                                          ; $66c7: $68
	ld [hl], a                                       ; $66c8: $77
	ld h, b                                          ; $66c9: $60
	ld a, a                                          ; $66ca: $7f
	xor b                                            ; $66cb: $a8
	rst FarCall                                          ; $66cc: $f7
	add sp, -$49                                     ; $66cd: $e8 $b7
	ldh [$bf], a                                     ; $66cf: $e0 $bf
	ldh [$bf], a                                     ; $66d1: $e0 $bf
	pop de                                           ; $66d3: $d1
	cp a                                             ; $66d4: $bf
	or c                                             ; $66d5: $b1
	rst SubAFromDE                                          ; $66d6: $df
	or b                                             ; $66d7: $b0
	rst SubAFromDE                                          ; $66d8: $df
	xor b                                            ; $66d9: $a8
	rst SubAFromDE                                          ; $66da: $df
	ret c                                            ; $66db: $d8

	rst AddAOntoHL                                          ; $66dc: $ef
	or b                                             ; $66dd: $b0
	rst AddAOntoHL                                          ; $66de: $ef
	xor b                                            ; $66df: $a8
	rst FarCall                                          ; $66e0: $f7
	ld e, b                                          ; $66e1: $58
	ld [hl], a                                       ; $66e2: $77
	ld h, h                                          ; $66e3: $64

jr_013_66e4:
	ld e, e                                          ; $66e4: $5b
	ld d, b                                          ; $66e5: $50
	sub a                                            ; $66e6: $97
	ld l, a                                          ; $66e7: $6f
	ld [bc], a                                       ; $66e8: $02
	rst $38                                          ; $66e9: $ff
	ld e, d                                          ; $66ea: $5a
	rst $38                                          ; $66eb: $ff
	ld l, h                                          ; $66ec: $6c
	rst $38                                          ; $66ed: $ff
	and b                                            ; $66ee: $a0
	ld a, e                                          ; $66ef: $7b
	cp $94                                           ; $66f0: $fe $94
	add d                                            ; $66f2: $82
	db $fd                                           ; $66f3: $fd
	dec d                                            ; $66f4: $15
	db $eb                                           ; $66f5: $eb
	add hl, bc                                       ; $66f6: $09
	rst FarCall                                          ; $66f7: $f7
	ld [de], a                                       ; $66f8: $12
	rst AddAOntoHL                                          ; $66f9: $ef
	ld b, [hl]                                       ; $66fa: $46
	rst $38                                          ; $66fb: $ff
	ld c, b                                          ; $66fc: $48
	ld a, e                                          ; $66fd: $7b
	ldh a, [c]                                       ; $66fe: $f2
	add b                                            ; $66ff: $80
	sub c                                            ; $6700: $91
	rst $38                                          ; $6701: $ff
	ld b, c                                          ; $6702: $41
	rst $38                                          ; $6703: $ff
	ld [hl+], a                                      ; $6704: $22
	rst $38                                          ; $6705: $ff
	rla                                              ; $6706: $17
	rst $38                                          ; $6707: $ff
	ld l, b                                          ; $6708: $68
	rst $38                                          ; $6709: $ff
	cp $ff                                           ; $670a: $fe $ff
	cp b                                             ; $670c: $b8
	rst GetHLinHL                                          ; $670d: $cf
	or c                                             ; $670e: $b1
	rst $38                                          ; $670f: $ff
	ld a, [hl]                                       ; $6710: $7e
	cp $60                                           ; $6711: $fe $60
	ldh [rAUD4LEN], a                                ; $6713: $e0 $20

jr_013_6715:
	ldh [$a0], a                                     ; $6715: $e0 $a0
	ldh [$f0], a                                     ; $6717: $e0 $f0
	ret nc                                           ; $6719: $d0

	cp b                                             ; $671a: $b8
	xor b                                            ; $671b: $a8
	sbc h                                            ; $671c: $9c
	sbc h                                            ; $671d: $9c
	ret nz                                           ; $671e: $c0

	adc [hl]                                         ; $671f: $8e
	ret nz                                           ; $6720: $c0

	ld b, b                                          ; $6721: $40
	ret nz                                           ; $6722: $c0

jr_013_6723:
	jr nc, jr_013_6715                               ; $6723: $30 $f0

	inc a                                            ; $6725: $3c
	db $fc                                           ; $6726: $fc
	ld e, $f2                                        ; $6727: $1e $f2
	jr jr_013_6723                                   ; $6729: $18 $f8

	db $10                                           ; $672b: $10
	ldh a, [rAUD4LEN]                                ; $672c: $f0 $20
	ldh [$c0], a                                     ; $672e: $e0 $c0
	ret nz                                           ; $6730: $c0

	jp hl                                            ; $6731: $e9


	adc [hl]                                         ; $6732: $8e
	jr z, jr_013_676c                                ; $6733: $28 $37

	db $10                                           ; $6735: $10
	rra                                              ; $6736: $1f
	jr jr_013_6758                                   ; $6737: $18 $1f

	inc [hl]                                         ; $6739: $34
	ccf                                              ; $673a: $3f
	jr nz, jr_013_677c                               ; $673b: $20 $3f

	db $10                                           ; $673d: $10
	rra                                              ; $673e: $1f
	dec c                                            ; $673f: $0d
	rrca                                             ; $6740: $0f
	inc b                                            ; $6741: $04
	rlca                                             ; $6742: $07
	ld b, $de                                        ; $6743: $06 $de
	rlca                                             ; $6745: $07
	rst SubAFromDE                                          ; $6746: $df
	ld bc, $85f7                                     ; $6747: $01 $f7 $85
	dec b                                            ; $674a: $05
	db $fd                                           ; $674b: $fd
	inc b                                            ; $674c: $04
	db $fc                                           ; $674d: $fc

Call_013_674e:
	ld [bc], a                                       ; $674e: $02
	cp $32                                           ; $674f: $fe $32
	cp $19                                           ; $6751: $fe $19
	rst FarCall                                          ; $6753: $f7
	ld c, $ff                                        ; $6754: $0e $ff
	and $fb                                          ; $6756: $e6 $fb

jr_013_6758:
	di                                               ; $6758: $f3
	rst SubAFromDE                                          ; $6759: $df
	inc sp                                           ; $675a: $33
	db $fd                                           ; $675b: $fd
	ld bc, $93ff                                     ; $675c: $01 $ff $93
	rst $38                                          ; $675f: $ff
	db $eb                                           ; $6760: $eb
	db $ed                                           ; $6761: $ed
	rlca                                             ; $6762: $07
	rlca                                             ; $6763: $07
	ei                                               ; $6764: $fb
	sub b                                            ; $6765: $90
	cp h                                             ; $6766: $bc
	db $fc                                           ; $6767: $fc
	ld hl, sp-$18                                    ; $6768: $f8 $e8
	ld a, h                                          ; $676a: $7c
	ld d, h                                          ; $676b: $54

jr_013_676c:
	ld a, [hl]                                       ; $676c: $7e
	ld e, [hl]                                       ; $676d: $5e
	jr c, jr_013_6798                                ; $676e: $38 $28

	sbc b                                            ; $6770: $98
	sbc b                                            ; $6771: $98
	ret z                                            ; $6772: $c8

	ret z                                            ; $6773: $c8

	ld b, b                                          ; $6774: $40
	ld a, e                                          ; $6775: $7b
	add a                                            ; $6776: $87
	ld a, a                                          ; $6777: $7f
	db $fc                                           ; $6778: $fc
	ld d, a                                          ; $6779: $57
	ld e, $aa                                        ; $677a: $1e $aa

jr_013_677c:
	nop                                              ; $677c: $00
	rst $38                                          ; $677d: $ff
	rst SubAFromDE                                          ; $677e: $df
	ld bc, $0399                                     ; $677f: $01 $99 $03
	ld [bc], a                                       ; $6782: $02
	rlca                                             ; $6783: $07
	inc b                                            ; $6784: $04
	rlca                                             ; $6785: $07
	dec b                                            ; $6786: $05
	ld a, e                                          ; $6787: $7b
	cp $77                                           ; $6788: $fe $77
	ld a, [$fc7b]                                    ; $678a: $fa $7b $fc
	ld a, a                                          ; $678d: $7f
	ldh a, [rPCM34]                                  ; $678e: $f0 $77
	cp $de                                           ; $6790: $fe $de
	rlca                                             ; $6792: $07
	ld a, e                                          ; $6793: $7b
	or $df                                           ; $6794: $f6 $df
	ld a, a                                          ; $6796: $7f
	sub a                                            ; $6797: $97

jr_013_6798:
	rst $38                                          ; $6798: $ff
	add b                                            ; $6799: $80
	rst $38                                          ; $679a: $ff
	nop                                              ; $679b: $00
	rst $38                                          ; $679c: $ff
	xor d                                            ; $679d: $aa
	rst $38                                          ; $679e: $ff
	ld d, l                                          ; $679f: $55
	ld a, e                                          ; $67a0: $7b
	cp $9e                                           ; $67a1: $fe $9e
	ld [hl+], a                                      ; $67a3: $22
	ld a, e                                          ; $67a4: $7b
	db $fc                                           ; $67a5: $fc
	ld l, a                                          ; $67a6: $6f
	or $6f                                           ; $67a7: $f6 $6f
	ld a, [$ffdf]                                    ; $67a9: $fa $df $ff
	sub h                                            ; $67ac: $94
	ld [hl+], a                                      ; $67ad: $22
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	ret nz                                           ; $67b0: $c0

	ret nz                                           ; $67b1: $c0

	ldh [rAUD4LEN], a                                ; $67b2: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $67b4: $f0 $90
	ldh a, [$50]                                     ; $67b6: $f0 $50
	ld a, e                                          ; $67b8: $7b
	cp $9e                                           ; $67b9: $fe $9e
	db $10                                           ; $67bb: $10
	ld a, e                                          ; $67bc: $7b
	db $fc                                           ; $67bd: $fc
	ld a, e                                          ; $67be: $7b
	or $7f                                           ; $67bf: $f6 $7f
	ldh a, [$9d]                                     ; $67c1: $f0 $9d
	ldh [$a0], a                                     ; $67c3: $e0 $a0
	ld a, e                                          ; $67c5: $7b
	db $ec                                           ; $67c6: $ec
	sbc d                                            ; $67c7: $9a
	ld [hl], b                                       ; $67c8: $70
	ldh a, [$d0]                                     ; $67c9: $f0 $d0
	ldh a, [$30]                                     ; $67cb: $f0 $30
	ld a, e                                          ; $67cd: $7b
	and d                                            ; $67ce: $a2
	sbc d                                            ; $67cf: $9a
	inc bc                                           ; $67d0: $03
	inc c                                            ; $67d1: $0c
	rrca                                             ; $67d2: $0f
	db $10                                           ; $67d3: $10
	rra                                              ; $67d4: $1f
	ld [hl], a                                       ; $67d5: $77
	cp $95                                           ; $67d6: $fe $95
	ld [$080f], sp                                   ; $67d8: $08 $0f $08
	rrca                                             ; $67db: $0f
	add hl, bc                                       ; $67dc: $09
	rrca                                             ; $67dd: $0f
	dec bc                                           ; $67de: $0b
	rrca                                             ; $67df: $0f
	ld b, $06                                        ; $67e0: $06 $06
	db $fd                                           ; $67e2: $fd
	ld [hl], a                                       ; $67e3: $77
	and $df                                          ; $67e4: $e6 $df
	ld bc, $ffdf                                     ; $67e6: $01 $df $ff
	sub b                                            ; $67e9: $90
	dec [hl]                                         ; $67ea: $35
	rst AddAOntoHL                                          ; $67eb: $ef
	dec de                                           ; $67ec: $1b
	rst FarCall                                          ; $67ed: $f7
	rrca                                             ; $67ee: $0f
	ld hl, sp+$0f                                    ; $67ef: $f8 $0f
	rst $38                                          ; $67f1: $ff
	ld [$50ff], sp                                   ; $67f2: $08 $ff $50
	rst $38                                          ; $67f5: $ff
	sub b                                            ; $67f6: $90
	rst $38                                          ; $67f7: $ff
	ldh [$7b], a                                     ; $67f8: $e0 $7b
	sub c                                            ; $67fa: $91
	rst SubAFromDE                                          ; $67fb: $df
	rst $38                                          ; $67fc: $ff
	ld a, a                                          ; $67fd: $7f
	db $fc                                           ; $67fe: $fc
	rst SubAFromDE                                          ; $67ff: $df
	ld a, a                                          ; $6800: $7f
	sbc c                                            ; $6801: $99
	adc $ff                                          ; $6802: $ce $ff
	rst SubAFromDE                                          ; $6804: $df
	xor a                                            ; $6805: $af
	rst $38                                          ; $6806: $ff
	rst $38                                          ; $6807: $ff
	sbc $c0                                          ; $6808: $de $c0
	rst SubAFromDE                                          ; $680a: $df
	ld b, b                                          ; $680b: $40
	sbc d                                            ; $680c: $9a
	ret nz                                           ; $680d: $c0

	add b                                            ; $680e: $80
	add b                                            ; $680f: $80
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	db $dd                                           ; $6812: $dd
	add b                                            ; $6813: $80
	ld a, a                                          ; $6814: $7f
	or $7f                                           ; $6815: $f6 $7f
	cp $7b                                           ; $6817: $fe $7b
	rst AddAOntoHL                                          ; $6819: $ef
	sbc $c0                                          ; $681a: $de $c0
	rst SubAFromDE                                          ; $681c: $df
	add b                                            ; $681d: $80
	sbc c                                            ; $681e: $99
	ldh [$60], a                                     ; $681f: $e0 $60
	ldh a, [$f0]                                     ; $6821: $f0 $f0
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	jp nc, $ff01                                     ; $6825: $d2 $01 $ff

	rst SubAFromDE                                          ; $6828: $df
	ld bc, $0399                                     ; $6829: $01 $99 $03
	ld [bc], a                                       ; $682c: $02
	rlca                                             ; $682d: $07
	inc b                                            ; $682e: $04
	rlca                                             ; $682f: $07
	dec b                                            ; $6830: $05
	ld a, e                                          ; $6831: $7b
	cp $77                                           ; $6832: $fe $77
	ld a, [$fc7b]                                    ; $6834: $fa $7b $fc
	ld a, a                                          ; $6837: $7f
	ldh a, [$7f]                                     ; $6838: $f0 $7f
	cp $8d                                           ; $683a: $fe $8d
	dec de                                           ; $683c: $1b
	ld a, [de]                                       ; $683d: $1a
	ccf                                              ; $683e: $3f
	daa                                              ; $683f: $27
	ccf                                              ; $6840: $3f
	dec l                                            ; $6841: $2d
	rra                                              ; $6842: $1f
	ld a, [de]                                       ; $6843: $1a
	ld a, a                                          ; $6844: $7f
	ld a, a                                          ; $6845: $7f
	rst $38                                          ; $6846: $ff
	add b                                            ; $6847: $80
	rst $38                                          ; $6848: $ff
	nop                                              ; $6849: $00
	rst $38                                          ; $684a: $ff
	xor d                                            ; $684b: $aa
	rst $38                                          ; $684c: $ff
	ld d, l                                          ; $684d: $55
	ld a, e                                          ; $684e: $7b
	cp $9e                                           ; $684f: $fe $9e
	ld [hl+], a                                      ; $6851: $22
	ld a, e                                          ; $6852: $7b
	db $fc                                           ; $6853: $fc
	ld l, a                                          ; $6854: $6f
	or $6f                                           ; $6855: $f6 $6f
	ld a, [$ffdf]                                    ; $6857: $fa $df $ff
	sub h                                            ; $685a: $94
	ld [hl+], a                                      ; $685b: $22
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	ret nz                                           ; $685e: $c0

	ret nz                                           ; $685f: $c0

	ldh [rAUD4LEN], a                                ; $6860: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $6862: $f0 $90
	ldh a, [$50]                                     ; $6864: $f0 $50
	ld a, e                                          ; $6866: $7b
	cp $9e                                           ; $6867: $fe $9e
	db $10                                           ; $6869: $10
	ld a, e                                          ; $686a: $7b
	db $fc                                           ; $686b: $fc
	ld a, e                                          ; $686c: $7b
	or $7f                                           ; $686d: $f6 $7f
	ldh a, [$9d]                                     ; $686f: $f0 $9d
	ldh [$a0], a                                     ; $6871: $e0 $a0
	ld a, e                                          ; $6873: $7b
	db $ec                                           ; $6874: $ec
	sbc d                                            ; $6875: $9a
	ld [hl], b                                       ; $6876: $70
	ldh a, [$d0]                                     ; $6877: $f0 $d0
	ldh a, [$30]                                     ; $6879: $f0 $30
	cpl                                              ; $687b: $2f
	and b                                            ; $687c: $a0
	adc l                                            ; $687d: $8d
	inc sp                                           ; $687e: $33
	ld [hl-], a                                      ; $687f: $32
	ld a, e                                          ; $6880: $7b
	ld c, d                                          ; $6881: $4a
	ld a, e                                          ; $6882: $7b
	ld e, e                                          ; $6883: $5b
	ccf                                              ; $6884: $3f
	dec [hl]                                         ; $6885: $35
	ccf                                              ; $6886: $3f
	ld [hl+], a                                      ; $6887: $22
	rra                                              ; $6888: $1f
	ld de, $0b0f                                     ; $6889: $11 $0f $0b
	inc c                                            ; $688c: $0c
	rrca                                             ; $688d: $0f
	db $10                                           ; $688e: $10
	rra                                              ; $688f: $1f
	ld [hl], a                                       ; $6890: $77
	cp $95                                           ; $6891: $fe $95
	ld [$080f], sp                                   ; $6893: $08 $0f $08
	rrca                                             ; $6896: $0f

Call_013_6897:
	add hl, bc                                       ; $6897: $09
	rrca                                             ; $6898: $0f
	dec bc                                           ; $6899: $0b
	rrca                                             ; $689a: $0f
	ld b, $06                                        ; $689b: $06 $06
	db $fd                                           ; $689d: $fd
	ld a, e                                          ; $689e: $7b
	ret z                                            ; $689f: $c8

	adc e                                            ; $68a0: $8b
	inc bc                                           ; $68a1: $03
	ld bc, $ff01                                     ; $68a2: $01 $01 $ff
	rst $38                                          ; $68a5: $ff
	dec [hl]                                         ; $68a6: $35
	rst AddAOntoHL                                          ; $68a7: $ef
	dec de                                           ; $68a8: $1b
	rst FarCall                                          ; $68a9: $f7
	rrca                                             ; $68aa: $0f
	ld hl, sp+$0f                                    ; $68ab: $f8 $0f
	rst $38                                          ; $68ad: $ff
	ld [$50ff], sp                                   ; $68ae: $08 $ff $50
	rst $38                                          ; $68b1: $ff
	sub b                                            ; $68b2: $90
	rst $38                                          ; $68b3: $ff
	ldh [$7b], a                                     ; $68b4: $e0 $7b
	ld [hl], c                                       ; $68b6: $71
	rst SubAFromDE                                          ; $68b7: $df
	rst $38                                          ; $68b8: $ff
	ld a, a                                          ; $68b9: $7f
	db $fc                                           ; $68ba: $fc
	rst SubAFromDE                                          ; $68bb: $df
	ld a, a                                          ; $68bc: $7f
	sbc c                                            ; $68bd: $99
	adc $ff                                          ; $68be: $ce $ff
	rst SubAFromDE                                          ; $68c0: $df
	xor a                                            ; $68c1: $af
	rst $38                                          ; $68c2: $ff
	rst $38                                          ; $68c3: $ff
	sbc $c0                                          ; $68c4: $de $c0
	rst SubAFromDE                                          ; $68c6: $df
	ld b, b                                          ; $68c7: $40
	sbc d                                            ; $68c8: $9a
	ret nz                                           ; $68c9: $c0

	add b                                            ; $68ca: $80
	add b                                            ; $68cb: $80
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	db $dd                                           ; $68ce: $dd
	add b                                            ; $68cf: $80
	ld a, a                                          ; $68d0: $7f
	or $7f                                           ; $68d1: $f6 $7f
	cp $7b                                           ; $68d3: $fe $7b
	rst AddAOntoHL                                          ; $68d5: $ef
	sbc $c0                                          ; $68d6: $de $c0
	rst SubAFromDE                                          ; $68d8: $df
	add b                                            ; $68d9: $80
	sbc e                                            ; $68da: $9b
	ldh [$60], a                                     ; $68db: $e0 $60
	ldh a, [$f0]                                     ; $68dd: $f0 $f0
	ld l, e                                          ; $68df: $6b
	cp b                                             ; $68e0: $b8
	dec sp                                           ; $68e1: $3b
	jr nz, jr_013_695f                               ; $68e2: $20 $7b

	cp $de                                           ; $68e4: $fe $de
	inc bc                                           ; $68e6: $03
	sub c                                            ; $68e7: $91
	rrca                                             ; $68e8: $0f
	ld c, $1f                                        ; $68e9: $0e $1f
	add hl, de                                       ; $68eb: $19
	ld a, a                                          ; $68ec: $7f
	ld l, a                                          ; $68ed: $6f
	db $fc                                           ; $68ee: $fc
	cp a                                             ; $68ef: $bf
	ldh a, [$9f]                                     ; $68f0: $f0 $9f
	ld [hl], b                                       ; $68f2: $70
	ld e, a                                          ; $68f3: $5f
	jr nc, jr_013_6935                               ; $68f4: $30 $3f

	scf                                              ; $68f6: $37
	add b                                            ; $68f7: $80

jr_013_68f8:
	rrca                                             ; $68f8: $0f
	ret nz                                           ; $68f9: $c0

	sub l                                            ; $68fa: $95
	rlca                                             ; $68fb: $07
	ld b, $0f                                        ; $68fc: $06 $0f
	add hl, bc                                       ; $68fe: $09
	rra                                              ; $68ff: $1f
	rra                                              ; $6900: $1f
	inc a                                            ; $6901: $3c
	cpl                                              ; $6902: $2f
	ld [hl], b                                       ; $6903: $70
	ld a, a                                          ; $6904: $7f
	ld [hl], a                                       ; $6905: $77
	cp [hl]                                          ; $6906: $be
	sbc l                                            ; $6907: $9d
	jr z, jr_013_6939                                ; $6908: $28 $2f

	ccf                                              ; $690a: $3f
	ret nz                                           ; $690b: $c0

	ld a, a                                          ; $690c: $7f
	and b                                            ; $690d: $a0
	sbc l                                            ; $690e: $9d
	ccf                                              ; $690f: $3f
	cpl                                              ; $6910: $2f
	ld a, e                                          ; $6911: $7b
	ldh [$9e], a                                     ; $6912: $e0 $9e
	ld e, a                                          ; $6914: $5f
	daa                                              ; $6915: $27
	ldh [rOCPD], a                                   ; $6916: $e0 $6b
	ret nz                                           ; $6918: $c0

	inc hl                                           ; $6919: $23
	ldh [$e7], a                                     ; $691a: $e0 $e7
	sbc [hl]                                         ; $691c: $9e
	ret c                                            ; $691d: $d8

	or e                                             ; $691e: $b3
	db $f4                                           ; $691f: $f4
	ld b, h                                          ; $6920: $44
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	ld bc, $01de                                     ; $692c: $01 $de $01
	ld [hl], a                                       ; $692f: $77
	ld a, [$02df]                                    ; $6930: $fa $df $02
	db $ed                                           ; $6933: $ed
	rst SubAFromDE                                          ; $6934: $df

jr_013_6935:
	adc b                                            ; $6935: $88
	rst SubAFromDE                                          ; $6936: $df
	ld d, h                                          ; $6937: $54
	rst SubAFromDE                                          ; $6938: $df

jr_013_6939:
	ld a, [$cadf]                                    ; $6939: $fa $df $ca
	ld l, a                                          ; $693c: $6f
	jp c, $039e                                      ; $693d: $da $9e $03

	or c                                             ; $6940: $b1
	inc bc                                           ; $6941: $03
	ld de, $3908                                     ; $6942: $11 $08 $39
	ld d, $00                                        ; $6945: $16 $00
	ld bc, $0201                                     ; $6947: $01 $01 $02
	inc bc                                           ; $694a: $03
	ld b, $0a                                        ; $694b: $06 $0a
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	add d                                            ; $694f: $82
	ld bc, $e1b1                                     ; $6950: $01 $b1 $e1
	ld de, $8183                                     ; $6953: $11 $83 $81
	add b                                            ; $6956: $80
	and b                                            ; $6957: $a0

jr_013_6958:
	add b                                            ; $6958: $80
	jr nz, jr_013_6958                               ; $6959: $20 $fd

	inc bc                                           ; $695b: $03
	nop                                              ; $695c: $00
	inc bc                                           ; $695d: $03
	nop                                              ; $695e: $00

jr_013_695f:
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	or c                                             ; $6962: $b1
	nop                                              ; $6963: $00
	ret nz                                           ; $6964: $c0

	ld b, b                                          ; $6965: $40
	jr nz, jr_013_68f8                               ; $6966: $20 $90

	sub b                                            ; $6968: $90
	add b                                            ; $6969: $80
	add b                                            ; $696a: $80
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	ret nz                                           ; $696d: $c0

	add b                                            ; $696e: $80
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	db $eb                                           ; $6973: $eb
	sbc [hl]                                         ; $6974: $9e
	ld l, h                                          ; $6975: $6c
	or c                                             ; $6976: $b1
	ld a, d                                          ; $6977: $7a
	ld l, d                                          ; $6978: $6a
	add c                                            ; $6979: $81
	ld bc, $1101                                     ; $697a: $01 $01 $11
	ld [$0c38], sp                                   ; $697d: $08 $38 $0c
	rla                                              ; $6980: $17
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	ld bc, $0101                                     ; $6983: $01 $01 $01
	rlca                                             ; $6986: $07
	or c                                             ; $6987: $b1
	dec bc                                           ; $6988: $0b
	ld [bc], a                                       ; $6989: $02
	nop                                              ; $698a: $00
	ld bc, $08f0                                     ; $698b: $01 $f0 $08
	pop bc                                           ; $698e: $c1
	add b                                            ; $698f: $80
	add b                                            ; $6990: $80
	and b                                            ; $6991: $a0
	add b                                            ; $6992: $80
	ret nz                                           ; $6993: $c0

	cp h                                             ; $6994: $bc
	ld b, e                                          ; $6995: $43
	add c                                            ; $6996: $81
	nop                                              ; $6997: $00
	or c                                             ; $6998: $b1
	ld bc, $0000                                     ; $6999: $01 $00 $00
	nop                                              ; $699c: $00
	add b                                            ; $699d: $80
	ld h, b                                          ; $699e: $60
	ldh a, [$58]                                     ; $699f: $f0 $58
	ld c, h                                          ; $69a1: $4c
	ld d, h                                          ; $69a2: $54
	ld d, b                                          ; $69a3: $50
	ld b, b                                          ; $69a4: $40
	ret nz                                           ; $69a5: $c0

	ld b, b                                          ; $69a6: $40
	ld b, b                                          ; $69a7: $40
	or b                                             ; $69a8: $b0
	cp [hl]                                          ; $69a9: $be
	ret nz                                           ; $69aa: $c0

	jr nc, jr_013_69ad                               ; $69ab: $30 $00

jr_013_69ad:
	rst SubAFromDE                                          ; $69ad: $df
	inc b                                            ; $69ae: $04
	rst SubAFromDE                                          ; $69af: $df
	rlca                                             ; $69b0: $07
	rst SubAFromDE                                          ; $69b1: $df
	ld b, d                                          ; $69b2: $42
	rst SubAFromDE                                          ; $69b3: $df
	ld hl, $e1df                                     ; $69b4: $21 $df $e1
	rst SubAFromDE                                          ; $69b7: $df
	inc sp                                           ; $69b8: $33
	rst SubAFromDE                                          ; $69b9: $df
	ld e, l                                          ; $69ba: $5d
	halt                                             ; $69bb: $76
	xor h                                            ; $69bc: $ac
	rst SubAFromDE                                          ; $69bd: $df
	ld [bc], a                                       ; $69be: $02
	rst SubAFromDE                                          ; $69bf: $df
	inc b                                            ; $69c0: $04
	rst SubAFromDE                                          ; $69c1: $df
	dec b                                            ; $69c2: $05
	rst SubAFromDE                                          ; $69c3: $df
	ld b, $df                                        ; $69c4: $06 $df
	inc e                                            ; $69c6: $1c
	rst SubAFromDE                                          ; $69c7: $df
	inc l                                            ; $69c8: $2c
	rst SubAFromDE                                          ; $69c9: $df
	db $10                                           ; $69ca: $10

jr_013_69cb:
	rst $38                                          ; $69cb: $ff
	rst SubAFromDE                                          ; $69cc: $df
	ldh [$df], a                                     ; $69cd: $e0 $df
	db $10                                           ; $69cf: $10
	rst SubAFromDE                                          ; $69d0: $df
	add c                                            ; $69d1: $81
	ei                                               ; $69d2: $fb
	rst SubAFromDE                                          ; $69d3: $df
	ld b, b                                          ; $69d4: $40
	ld [hl], l                                       ; $69d5: $75
	cp b                                             ; $69d6: $b8
	rst SubAFromDE                                          ; $69d7: $df
	db $fc                                           ; $69d8: $fc
	rst SubAFromDE                                          ; $69d9: $df
	add e                                            ; $69da: $83
	ld l, [hl]                                       ; $69db: $6e
	ret nz                                           ; $69dc: $c0

	ld l, l                                          ; $69dd: $6d
	xor d                                            ; $69de: $aa
	rst SubAFromDE                                          ; $69df: $df
	ld [hl], b                                       ; $69e0: $70
	rst SubAFromDE                                          ; $69e1: $df
	ret c                                            ; $69e2: $d8

	rst SubAFromDE                                          ; $69e3: $df
	ld c, h                                          ; $69e4: $4c
	rst SubAFromDE                                          ; $69e5: $df
	daa                                              ; $69e6: $27
	db $dd                                           ; $69e7: $dd
	ld a, [hl+]                                      ; $69e8: $2a
	rst SubAFromDE                                          ; $69e9: $df
	jr nz, jr_013_69cb                               ; $69ea: $20 $df

	ld h, b                                          ; $69ec: $60
	rst SubAFromDE                                          ; $69ed: $df
	ldh [$dd], a                                     ; $69ee: $e0 $dd
	ld b, b                                          ; $69f0: $40
	rst SubAFromDE                                          ; $69f1: $df
	cp b                                             ; $69f2: $b8
	rst SubAFromDE                                          ; $69f3: $df
	ldh [$df], a                                     ; $69f4: $e0 $df
	ld a, b                                          ; $69f6: $78
	sub [hl]                                         ; $69f7: $96
	nop                                              ; $69f8: $00
	rst SubAFromBC                                          ; $69f9: $e7
	rst SubAFromDE                                          ; $69fa: $df
	ld h, b                                          ; $69fb: $60
	rst SubAFromDE                                          ; $69fc: $df
	rst $38                                          ; $69fd: $ff
	add b                                            ; $69fe: $80
	add c                                            ; $69ff: $81
	ld a, a                                          ; $6a00: $7f
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	inc bc                                           ; $6a03: $03
	inc bc                                           ; $6a04: $03
	dec h                                            ; $6a05: $25
	daa                                              ; $6a06: $27
	add hl, sp                                       ; $6a07: $39
	ccf                                              ; $6a08: $3f
	ld d, d                                          ; $6a09: $52
	ld a, a                                          ; $6a0a: $7f
	ld l, b                                          ; $6a0b: $68
	ld [hl], a                                       ; $6a0c: $77
	or d                                             ; $6a0d: $b2
	db $ed                                           ; $6a0e: $ed
	call nc, $6cab                                   ; $6a0f: $d4 $ab $6c
	ld e, a                                          ; $6a12: $5f
	ld e, a                                          ; $6a13: $5f
	ld [hl], d                                       ; $6a14: $72
	ld a, [hl]                                       ; $6a15: $7e
	ld h, e                                          ; $6a16: $63
	ccf                                              ; $6a17: $3f
	dec l                                            ; $6a18: $2d
	scf                                              ; $6a19: $37
	add hl, sp                                       ; $6a1a: $39
	ld a, l                                          ; $6a1b: $7d
	ld c, e                                          ; $6a1c: $4b
	ret                                              ; $6a1d: $c9


	sbc h                                            ; $6a1e: $9c
	or $e3                                           ; $6a1f: $f6 $e3
	rst $38                                          ; $6a21: $ff
	db $fd                                           ; $6a22: $fd
	rst SubAFromDE                                          ; $6a23: $df
	ldh [hDisp0_WY], a                                     ; $6a24: $e0 $88
	ld d, b                                          ; $6a26: $50
	ldh a, [rAUD2LOW]                                ; $6a27: $f0 $18
	ld hl, sp+$04                                    ; $6a29: $f8 $04
	db $fc                                           ; $6a2b: $fc
	ld b, $fe                                        ; $6a2c: $06 $fe
	ld [bc], a                                       ; $6a2e: $02
	cp $82                                           ; $6a2f: $fe $82
	ld a, [hl]                                       ; $6a31: $7e
	adc d                                            ; $6a32: $8a
	cp $26                                           ; $6a33: $fe $26
	cp $8c                                           ; $6a35: $fe $8c
	db $fc                                           ; $6a37: $fc
	ld d, h                                          ; $6a38: $54
	db $fc                                           ; $6a39: $fc
	xor h                                            ; $6a3a: $ac
	db $fc                                           ; $6a3b: $fc
	ret c                                            ; $6a3c: $d8

	sbc $f8                                          ; $6a3d: $de $f8
	rst SubAFromDE                                          ; $6a3f: $df
	rst $38                                          ; $6a40: $ff
	sbc c                                            ; $6a41: $99
	rlca                                             ; $6a42: $07
	ld b, $03                                        ; $6a43: $06 $03
	inc bc                                           ; $6a45: $03
	ld bc, $ef01                                     ; $6a46: $01 $01 $ef
	rst SubAFromDE                                          ; $6a49: $df
	rrca                                             ; $6a4a: $0f
	rst SubAFromDE                                          ; $6a4b: $df
	ld a, a                                          ; $6a4c: $7f
	rst $38                                          ; $6a4d: $ff
	add d                                            ; $6a4e: $82
	di                                               ; $6a4f: $f3
	cp a                                             ; $6a50: $bf
	db $fd                                           ; $6a51: $fd
	ld a, $fe                                        ; $6a52: $3e $fe
	ld l, a                                          ; $6a54: $6f
	rst FarCall                                          ; $6a55: $f7
	set 7, a                                         ; $6a56: $cb $ff
	pop bc                                           ; $6a58: $c1
	ccf                                              ; $6a59: $3f
	inc sp                                           ; $6a5a: $33
	ld c, $0f                                        ; $6a5b: $0e $0f
	inc c                                            ; $6a5d: $0c
	rrca                                             ; $6a5e: $0f
	db $10                                           ; $6a5f: $10
	rra                                              ; $6a60: $1f
	jr nz, jr_013_6aa2                               ; $6a61: $20 $3f

	inc hl                                           ; $6a63: $23
	ccf                                              ; $6a64: $3f
	ld a, $3e                                        ; $6a65: $3e $3e
	inc h                                            ; $6a67: $24
	inc a                                            ; $6a68: $3c
	di                                               ; $6a69: $f3
	rst AddAOntoHL                                          ; $6a6a: $ef
	add e                                            ; $6a6b: $83
	sbc $ff                                          ; $6a6c: $de $ff
	add l                                            ; $6a6e: $85
	xor b                                            ; $6a6f: $a8
	ld e, b                                          ; $6a70: $58
	ld d, h                                          ; $6a71: $54
	xor h                                            ; $6a72: $ac
	xor d                                            ; $6a73: $aa
	ld d, [hl]                                       ; $6a74: $56
	ld d, e                                          ; $6a75: $53
	xor a                                            ; $6a76: $af
	xor e                                            ; $6a77: $ab
	ld d, a                                          ; $6a78: $57
	rst SubAFromHL                                          ; $6a79: $d7
	rst AddAOntoHL                                          ; $6a7a: $ef
	and $fe                                          ; $6a7b: $e6 $fe
	inc e                                            ; $6a7d: $1c
	db $fc                                           ; $6a7e: $fc
	inc c                                            ; $6a7f: $0c
	db $fc                                           ; $6a80: $fc
	ld hl, sp-$08                                    ; $6a81: $f8 $f8
	call z, Call_013_76fc                            ; $6a83: $cc $fc $76
	ld a, [hl]                                       ; $6a86: $7e
	ld l, [hl]                                       ; $6a87: $6e
	halt                                             ; $6a88: $76
	ld [hl], a                                       ; $6a89: $77
	ldh [c], a                                       ; $6a8a: $e2
	rst SubAFromDE                                          ; $6a8b: $df
	ldh a, [$fa]                                     ; $6a8c: $f0 $fa
	ld bc, $dfe7                                     ; $6a8e: $01 $e7 $df
	ld h, b                                          ; $6a91: $60
	rst SubAFromDE                                          ; $6a92: $df
	rst $38                                          ; $6a93: $ff
	add b                                            ; $6a94: $80
	add c                                            ; $6a95: $81
	ld a, a                                          ; $6a96: $7f
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	inc bc                                           ; $6a99: $03
	inc bc                                           ; $6a9a: $03
	dec h                                            ; $6a9b: $25
	daa                                              ; $6a9c: $27
	add hl, sp                                       ; $6a9d: $39
	ccf                                              ; $6a9e: $3f
	ld d, d                                          ; $6a9f: $52
	ld a, a                                          ; $6aa0: $7f
	ld l, b                                          ; $6aa1: $68

jr_013_6aa2:
	ld [hl], a                                       ; $6aa2: $77
	or d                                             ; $6aa3: $b2
	db $ed                                           ; $6aa4: $ed
	call nc, $6cab                                   ; $6aa5: $d4 $ab $6c
	ld e, a                                          ; $6aa8: $5f
	ld e, a                                          ; $6aa9: $5f
	ld [hl], d                                       ; $6aaa: $72
	ld a, [hl]                                       ; $6aab: $7e
	ld h, e                                          ; $6aac: $63
	ccf                                              ; $6aad: $3f
	dec l                                            ; $6aae: $2d
	scf                                              ; $6aaf: $37
	add hl, sp                                       ; $6ab0: $39
	ld a, l                                          ; $6ab1: $7d
	ld c, e                                          ; $6ab2: $4b
	ret                                              ; $6ab3: $c9


	sbc h                                            ; $6ab4: $9c
	or $e3                                           ; $6ab5: $f6 $e3
	rst $38                                          ; $6ab7: $ff
	db $fd                                           ; $6ab8: $fd
	rst SubAFromDE                                          ; $6ab9: $df
	ldh [hDisp0_WY], a                                     ; $6aba: $e0 $88
	ld d, b                                          ; $6abc: $50
	ldh a, [rAUD2LOW]                                ; $6abd: $f0 $18
	ld hl, sp+$04                                    ; $6abf: $f8 $04
	db $fc                                           ; $6ac1: $fc
	ld b, $fe                                        ; $6ac2: $06 $fe
	ld [bc], a                                       ; $6ac4: $02
	cp $82                                           ; $6ac5: $fe $82
	ld a, [hl]                                       ; $6ac7: $7e
	adc d                                            ; $6ac8: $8a
	cp $26                                           ; $6ac9: $fe $26
	cp $8c                                           ; $6acb: $fe $8c
	db $fc                                           ; $6acd: $fc
	ld d, h                                          ; $6ace: $54
	db $fc                                           ; $6acf: $fc
	xor h                                            ; $6ad0: $ac
	db $fc                                           ; $6ad1: $fc
	ret c                                            ; $6ad2: $d8

	sbc $f8                                          ; $6ad3: $de $f8
	rst SubAFromDE                                          ; $6ad5: $df
	rst $38                                          ; $6ad6: $ff
	sbc c                                            ; $6ad7: $99
	rlca                                             ; $6ad8: $07
	ld b, $03                                        ; $6ad9: $06 $03
	inc bc                                           ; $6adb: $03
	ld bc, $ef01                                     ; $6adc: $01 $01 $ef
	rst SubAFromDE                                          ; $6adf: $df
	rrca                                             ; $6ae0: $0f
	rst SubAFromDE                                          ; $6ae1: $df
	ld a, a                                          ; $6ae2: $7f
	rst $38                                          ; $6ae3: $ff
	add d                                            ; $6ae4: $82
	di                                               ; $6ae5: $f3
	cp a                                             ; $6ae6: $bf
	db $fd                                           ; $6ae7: $fd
	ld a, $fe                                        ; $6ae8: $3e $fe
	ld l, a                                          ; $6aea: $6f
	rst FarCall                                          ; $6aeb: $f7
	set 7, a                                         ; $6aec: $cb $ff
	pop bc                                           ; $6aee: $c1
	ccf                                              ; $6aef: $3f
	inc sp                                           ; $6af0: $33
	ld c, $0f                                        ; $6af1: $0e $0f
	inc c                                            ; $6af3: $0c
	rrca                                             ; $6af4: $0f
	db $10                                           ; $6af5: $10
	rra                                              ; $6af6: $1f
	jr nz, jr_013_6b38                               ; $6af7: $20 $3f

	inc hl                                           ; $6af9: $23
	ccf                                              ; $6afa: $3f
	ld a, $3e                                        ; $6afb: $3e $3e
	inc h                                            ; $6afd: $24
	inc a                                            ; $6afe: $3c
	di                                               ; $6aff: $f3
	rst AddAOntoHL                                          ; $6b00: $ef
	add e                                            ; $6b01: $83
	sbc $ff                                          ; $6b02: $de $ff
	add l                                            ; $6b04: $85
	xor b                                            ; $6b05: $a8
	ld e, b                                          ; $6b06: $58
	ld d, h                                          ; $6b07: $54
	xor h                                            ; $6b08: $ac
	xor d                                            ; $6b09: $aa
	ld d, [hl]                                       ; $6b0a: $56
	ld d, e                                          ; $6b0b: $53
	xor a                                            ; $6b0c: $af
	xor e                                            ; $6b0d: $ab
	ld d, a                                          ; $6b0e: $57
	rst SubAFromHL                                          ; $6b0f: $d7
	rst AddAOntoHL                                          ; $6b10: $ef
	and $fe                                          ; $6b11: $e6 $fe
	inc e                                            ; $6b13: $1c
	db $fc                                           ; $6b14: $fc
	inc c                                            ; $6b15: $0c
	db $fc                                           ; $6b16: $fc
	ld hl, sp-$08                                    ; $6b17: $f8 $f8
	call z, Call_013_76fc                            ; $6b19: $cc $fc $76
	ld a, [hl]                                       ; $6b1c: $7e
	ld l, [hl]                                       ; $6b1d: $6e
	halt                                             ; $6b1e: $76
	ld [hl], a                                       ; $6b1f: $77
	ldh [c], a                                       ; $6b20: $e2
	rst SubAFromDE                                          ; $6b21: $df
	ldh a, [$ef]                                     ; $6b22: $f0 $ef
	rst SubAFromDE                                          ; $6b24: $df
	ld a, b                                          ; $6b25: $78
	sub e                                            ; $6b26: $93
	ret c                                            ; $6b27: $d8

	cp b                                             ; $6b28: $b8
	ld c, h                                          ; $6b29: $4c
	ld a, h                                          ; $6b2a: $7c
	ld h, $3e                                        ; $6b2b: $26 $3e
	inc de                                           ; $6b2d: $13
	rra                                              ; $6b2e: $1f
	add hl, bc                                       ; $6b2f: $09
	rrca                                             ; $6b30: $0f
	rlca                                             ; $6b31: $07
	rlca                                             ; $6b32: $07
	dec bc                                           ; $6b33: $0b
	ld b, b                                          ; $6b34: $40
	sbc h                                            ; $6b35: $9c
	cp a                                             ; $6b36: $bf
	inc bc                                           ; $6b37: $03

jr_013_6b38:
	ld [bc], a                                       ; $6b38: $02
	cpl                                              ; $6b39: $2f
	ld h, d                                          ; $6b3a: $62
	ld h, e                                          ; $6b3b: $63
	ld h, b                                          ; $6b3c: $60
	sub [hl]                                         ; $6b3d: $96
	ccf                                              ; $6b3e: $3f
	db $fd                                           ; $6b3f: $fd
	ld l, $f6                                        ; $6b40: $2e $f6
	rst GetHLinHL                                          ; $6b42: $cf
	rst FarCall                                          ; $6b43: $f7
	bit 7, a                                         ; $6b44: $cb $7f
	ld h, c                                          ; $6b46: $61
	cpl                                              ; $6b47: $2f
	ld h, b                                          ; $6b48: $60
	ei                                               ; $6b49: $fb
	rst SubAFromDE                                          ; $6b4a: $df
	ld bc, $07df                                     ; $6b4b: $01 $df $07
	sub a                                            ; $6b4e: $97
	rrca                                             ; $6b4f: $0f
	ld c, $0f                                        ; $6b50: $0e $0f
	dec c                                            ; $6b52: $0d
	rra                                              ; $6b53: $1f
	ld a, [de]                                       ; $6b54: $1a
	rra                                              ; $6b55: $1f
	inc e                                            ; $6b56: $1c
	ld l, a                                          ; $6b57: $6f
	db $fc                                           ; $6b58: $fc
	ld a, a                                          ; $6b59: $7f
	db $f4                                           ; $6b5a: $f4
	ld a, a                                          ; $6b5b: $7f
	ldh a, [$df]                                     ; $6b5c: $f0 $df
	rlca                                             ; $6b5e: $07
	ld h, a                                          ; $6b5f: $67
	and [hl]                                         ; $6b60: $a6
	rst SubAFromDE                                          ; $6b61: $df
	ldh a, [$df]                                     ; $6b62: $f0 $df
	db $fc                                           ; $6b64: $fc
	sub a                                            ; $6b65: $97
	cp $ae                                           ; $6b66: $fe $ae
	cp $56                                           ; $6b68: $fe $56
	rst $38                                          ; $6b6a: $ff
	dec bc                                           ; $6b6b: $0b
	rst $38                                          ; $6b6c: $ff
	rlca                                             ; $6b6d: $07
	ld l, a                                          ; $6b6e: $6f
	db $fc                                           ; $6b6f: $fc
	ld a, a                                          ; $6b70: $7f

jr_013_6b71:
	db $f4                                           ; $6b71: $f4
	ld a, a                                          ; $6b72: $7f
	ldh a, [$df]                                     ; $6b73: $f0 $df
	db $fc                                           ; $6b75: $fc
	ld d, a                                          ; $6b76: $57
	ld b, b                                          ; $6b77: $40
	rst SubAFromDE                                          ; $6b78: $df
	inc bc                                           ; $6b79: $03
	ld a, e                                          ; $6b7a: $7b
	cp h                                             ; $6b7b: $bc
	ld d, e                                          ; $6b7c: $53
	cp [hl]                                          ; $6b7d: $be
	rst SubAFromDE                                          ; $6b7e: $df
	rlca                                             ; $6b7f: $07
	rst SubAFromDE                                          ; $6b80: $df
	inc bc                                           ; $6b81: $03
	rst FarCall                                          ; $6b82: $f7
	rst SubAFromDE                                          ; $6b83: $df
	ldh [$df], a                                     ; $6b84: $e0 $df
	ldh a, [$9d]                                     ; $6b86: $f0 $9d
	ld hl, sp+$58                                    ; $6b88: $f8 $58
	ld a, d                                          ; $6b8a: $7a
	xor c                                            ; $6b8b: $a9
	ld a, [hl]                                       ; $6b8c: $7e
	ei                                               ; $6b8d: $fb
	sbc [hl]                                         ; $6b8e: $9e
	inc l                                            ; $6b8f: $2c
	ld a, e                                          ; $6b90: $7b
	db $fc                                           ; $6b91: $fc
	sbc b                                            ; $6b92: $98
	xor h                                            ; $6b93: $ac
	ld hl, sp+$58                                    ; $6b94: $f8 $58
	ldh a, [$f0]                                     ; $6b96: $f0 $f0
	ldh [$e0], a                                     ; $6b98: $e0 $e0
	di                                               ; $6b9a: $f3
	ld [hl], e                                       ; $6b9b: $73
	cp h                                             ; $6b9c: $bc
	ld a, e                                          ; $6b9d: $7b
	ld a, b                                          ; $6b9e: $78
	sbc l                                            ; $6b9f: $9d
	rrca                                             ; $6ba0: $0f
	ld a, [bc]                                       ; $6ba1: $0a
	ld l, a                                          ; $6ba2: $6f
	add b                                            ; $6ba3: $80
	ld d, a                                          ; $6ba4: $57
	ret nz                                           ; $6ba5: $c0

	ld l, e                                          ; $6ba6: $6b
	cp h                                             ; $6ba7: $bc
	sbc b                                            ; $6ba8: $98
	ld [hl], b                                       ; $6ba9: $70
	ld hl, sp-$48                                    ; $6baa: $f8 $b8
	ld hl, sp+$58                                    ; $6bac: $f8 $58
	ld hl, sp+$28                                    ; $6bae: $f8 $28
	ld a, e                                          ; $6bb0: $7b
	db $fc                                           ; $6bb1: $fc
	sbc h                                            ; $6bb2: $9c
	cp b                                             ; $6bb3: $b8
	ldh a, [rSVBK]                                   ; $6bb4: $f0 $70
	ld b, a                                          ; $6bb6: $47
	ret nz                                           ; $6bb7: $c0

	db $fd                                           ; $6bb8: $fd
	rst SubAFromDE                                          ; $6bb9: $df
	inc a                                            ; $6bba: $3c
	sub e                                            ; $6bbb: $93
	ld a, [hl]                                       ; $6bbc: $7e
	ld h, [hl]                                       ; $6bbd: $66
	rst $38                                          ; $6bbe: $ff
	db $db                                           ; $6bbf: $db
	rst $38                                          ; $6bc0: $ff
	and l                                            ; $6bc1: $a5
	rst $38                                          ; $6bc2: $ff
	db $db                                           ; $6bc3: $db
	ld a, [hl]                                       ; $6bc4: $7e
	ld h, [hl]                                       ; $6bc5: $66
	inc a                                            ; $6bc6: $3c
	inc a                                            ; $6bc7: $3c
	db $eb                                           ; $6bc8: $eb
	rst SubAFromDE                                          ; $6bc9: $df
	jr c, @-$67                                      ; $6bca: $38 $97

	ld a, h                                          ; $6bcc: $7c
	ld l, h                                          ; $6bcd: $6c
	ld a, h                                          ; $6bce: $7c
	ld b, h                                          ; $6bcf: $44
	ld a, h                                          ; $6bd0: $7c
	ld l, h                                          ; $6bd1: $6c
	jr c, @+$3a                                      ; $6bd2: $38 $38

	jp hl                                            ; $6bd4: $e9


	rst SubAFromDE                                          ; $6bd5: $df
	jr jr_013_6b71                                   ; $6bd6: $18 $99

	inc a                                            ; $6bd8: $3c
	inc h                                            ; $6bd9: $24
	inc a                                            ; $6bda: $3c
	inc h                                            ; $6bdb: $24
	jr jr_013_6bf6                                   ; $6bdc: $18 $18

	ld l, [hl]                                       ; $6bde: $6e
	pop hl                                           ; $6bdf: $e1
	ld a, a                                          ; $6be0: $7f
	ld h, a                                          ; $6be1: $67
	sub c                                            ; $6be2: $91
	nop                                              ; $6be3: $00
	rlca                                             ; $6be4: $07
	nop                                              ; $6be5: $00
	rrca                                             ; $6be6: $0f
	ld bc, $021e                                     ; $6be7: $01 $1e $02
	dec a                                            ; $6bea: $3d
	inc bc                                           ; $6beb: $03
	inc a                                            ; $6bec: $3c
	dec b                                            ; $6bed: $05
	ld a, d                                          ; $6bee: $7a
	dec bc                                           ; $6bef: $0b
	ld [hl], h                                       ; $6bf0: $74
	ld a, e                                          ; $6bf1: $7b
	db $fc                                           ; $6bf2: $fc
	sbc h                                            ; $6bf3: $9c
	db $f4                                           ; $6bf4: $f4
	rla                                              ; $6bf5: $17

jr_013_6bf6:
	add sp, $77                                      ; $6bf6: $e8 $77
	db $fc                                           ; $6bf8: $fc
	ld a, a                                          ; $6bf9: $7f
	ld [$0391], a                                    ; $6bfa: $ea $91 $03
	ld a, h                                          ; $6bfd: $7c

jr_013_6bfe:
	rrca                                             ; $6bfe: $0f
	ldh a, [$3f]                                     ; $6bff: $f0 $3f
	ret nz                                           ; $6c01: $c0

	ld e, a                                          ; $6c02: $5f
	and b                                            ; $6c03: $a0
	rst $38                                          ; $6c04: $ff
	nop                                              ; $6c05: $00
	cp a                                             ; $6c06: $bf
	ld b, b                                          ; $6c07: $40
	rst $38                                          ; $6c08: $ff
	nop                                              ; $6c09: $00
	ld b, a                                          ; $6c0a: $47
	cp $7a                                           ; $6c0b: $fe $7a
	push bc                                          ; $6c0d: $c5
	sbc h                                            ; $6c0e: $9c
	ld c, $fe                                        ; $6c0f: $0e $fe
	ld bc, $e83f                                     ; $6c11: $01 $3f $e8
	ld h, e                                          ; $6c14: $63
	ldh [$fd], a                                     ; $6c15: $e0 $fd
	rst SubAFromDE                                          ; $6c17: $df
	add b                                            ; $6c18: $80
	sub [hl]                                         ; $6c19: $96
	ld b, b                                          ; $6c1a: $40
	ret nz                                           ; $6c1b: $c0

	jr nz, jr_013_6bfe                               ; $6c1c: $20 $e0

	db $10                                           ; $6c1e: $10
	ldh a, [$08]                                     ; $6c1f: $f0 $08
	ld hl, sp+$04                                    ; $6c21: $f8 $04
	ld a, c                                          ; $6c23: $79
	ld a, c                                          ; $6c24: $79
	sbc [hl]                                         ; $6c25: $9e
	ld [bc], a                                       ; $6c26: $02
	ld [hl], a                                       ; $6c27: $77
	cp $7f                                           ; $6c28: $fe $7f
	call z, $fe6f                                    ; $6c2a: $cc $6f $fe
	sbc e                                            ; $6c2d: $9b
	jr nc, jr_013_6c40                               ; $6c2e: $30 $10

	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	ld [hl], a                                       ; $6c32: $77

jr_013_6c33:
	db $fc                                           ; $6c33: $fc
	sbc e                                            ; $6c34: $9b
	ld h, b                                          ; $6c35: $60
	jr nz, jr_013_6c38                               ; $6c36: $20 $00

jr_013_6c38:
	nop                                              ; $6c38: $00
	sbc $40                                          ; $6c39: $de $40
	ld b, c                                          ; $6c3b: $41

jr_013_6c3c:
	ldh [$7f], a                                     ; $6c3c: $e0 $7f
	jp hl                                            ; $6c3e: $e9


	ld [hl], a                                       ; $6c3f: $77

jr_013_6c40:
	db $eb                                           ; $6c40: $eb
	rst SubAFromDE                                          ; $6c41: $df
	jr nz, jr_013_6cbb                               ; $6c42: $20 $77

	and $de                                          ; $6c44: $e6 $de
	jr nz, jr_013_6c81                               ; $6c46: $20 $39

	ret nz                                           ; $6c48: $c0

	ld a, a                                          ; $6c49: $7f
	and $73                                          ; $6c4a: $e6 $73
	sbc $73                                          ; $6c4c: $de $73
	ld a, [$a03d]                                    ; $6c4e: $fa $3d $a0
	ld a, a                                          ; $6c51: $7f
	db $eb                                           ; $6c52: $eb
	ld [hl], a                                       ; $6c53: $77
	bit 4, a                                         ; $6c54: $cb $67
	db $e4                                           ; $6c56: $e4
	dec [hl]                                         ; $6c57: $35
	add b                                            ; $6c58: $80
	db $fd                                           ; $6c59: $fd
	rst SubAFromDE                                          ; $6c5a: $df
	jr nz, jr_013_6c3c                               ; $6c5b: $20 $df

	sub h                                            ; $6c5d: $94
	rst SubAFromDE                                          ; $6c5e: $df
	ld a, b                                          ; $6c5f: $78
	ld a, d                                          ; $6c60: $7a
	and [hl]                                         ; $6c61: $a6
	sub h                                            ; $6c62: $94
	ld a, [hl]                                       ; $6c63: $7e
	cp $fe                                           ; $6c64: $fe $fe
	inc a                                            ; $6c66: $3c
	inc a                                            ; $6c67: $3c
	jr c, jr_013_6ca2                                ; $6c68: $38 $38

	ld d, b                                          ; $6c6a: $50
	ld d, b                                          ; $6c6b: $50
	add b                                            ; $6c6c: $80
	add b                                            ; $6c6d: $80
	ld h, l                                          ; $6c6e: $65
	add $df                                          ; $6c6f: $c6 $df
	dec bc                                           ; $6c71: $0b
	rst SubAFromDE                                          ; $6c72: $df
	ld bc, $23df                                     ; $6c73: $01 $df $23
	daa                                              ; $6c76: $27
	ldh [$df], a                                     ; $6c77: $e0 $df
	adc b                                            ; $6c79: $88
	halt                                             ; $6c7a: $76
	ld [$f0df], sp                                   ; $6c7b: $08 $df $f0
	rst SubAFromDE                                          ; $6c7e: $df
	add sp, -$21                                     ; $6c7f: $e8 $df

jr_013_6c81:
	ret nz                                           ; $6c81: $c0

	rst SubAFromDE                                          ; $6c82: $df
	and b                                            ; $6c83: $a0
	ld l, a                                          ; $6c84: $6f
	inc de                                           ; $6c85: $13
	push af                                          ; $6c86: $f5
	adc b                                            ; $6c87: $88
	nop                                              ; $6c88: $00
	or $df                                           ; $6c89: $f6 $df
	db $10                                           ; $6c8b: $10
	sbc e                                            ; $6c8c: $9b
	nop                                              ; $6c8d: $00
	jr c, @+$46                                      ; $6c8e: $38 $44

	db $10                                           ; $6c90: $10
	ld a, e                                          ; $6c91: $7b
	ld hl, sp-$12                                    ; $6c92: $f8 $ee
	ld a, e                                          ; $6c94: $7b
	db $e4                                           ; $6c95: $e4
	ld [hl], a                                       ; $6c96: $77
	cp $9d                                           ; $6c97: $fe $9d
	ld a, [hl]                                       ; $6c99: $7e
	add c                                            ; $6c9a: $81
	ld l, a                                          ; $6c9b: $6f
	ld hl, sp+$3b                                    ; $6c9c: $f8 $3b
	call c, $01df                                    ; $6c9e: $dc $df $01
	sub a                                            ; $6ca1: $97

jr_013_6ca2:
	nop                                              ; $6ca2: $00
	inc bc                                           ; $6ca3: $03
	nop                                              ; $6ca4: $00
	rlca                                             ; $6ca5: $07
	ld [$0003], sp                                   ; $6ca6: $08 $03 $00
	ld bc, $f47b                                     ; $6ca9: $01 $7b $f4
	db $eb                                           ; $6cac: $eb
	sbc d                                            ; $6cad: $9a
	add b                                            ; $6cae: $80
	nop                                              ; $6caf: $00
	ret nz                                           ; $6cb0: $c0

	jr nz, jr_013_6c33                               ; $6cb1: $20 $80

	ld [$219a], a                                    ; $6cb3: $ea $9a $21
	ld [hl+], a                                      ; $6cb6: $22
	ld c, $10                                        ; $6cb7: $0e $10
	jr @+$75                                         ; $6cb9: $18 $73

jr_013_6cbb:
	and h                                            ; $6cbb: $a4
	sub l                                            ; $6cbc: $95
	jr jr_013_6cdf                                   ; $6cbd: $18 $20

	ld c, h                                          ; $6cbf: $4c
	ld [hl], b                                       ; $6cc0: $70
	rlca                                             ; $6cc1: $07
	ld [$0002], sp                                   ; $6cc2: $08 $02 $00
	ld [bc], a                                       ; $6cc5: $02
	ld [bc], a                                       ; $6cc6: $02
	ld e, e                                          ; $6cc7: $5b
	add $7f                                          ; $6cc8: $c6 $7f
	ret                                              ; $6cca: $c9


	rst SubAFromDE                                          ; $6ccb: $df
	add b                                            ; $6ccc: $80
	sub a                                            ; $6ccd: $97
	ld b, b                                          ; $6cce: $40
	ld l, b                                          ; $6ccf: $68
	jr jr_013_6cf2                                   ; $6cd0: $18 $20

	db $10                                           ; $6cd2: $10
	jr nz, jr_013_6cd5                               ; $6cd3: $20 $00

jr_013_6cd5:
	ld h, b                                          ; $6cd5: $60
	ld a, e                                          ; $6cd6: $7b
	cp d                                             ; $6cd7: $ba
	sbc l                                            ; $6cd8: $9d
	nop                                              ; $6cd9: $00
	and b                                            ; $6cda: $a0
	ld a, e                                          ; $6cdb: $7b
	ld l, a                                          ; $6cdc: $6f
	ld hl, sp-$21                                    ; $6cdd: $f8 $df

jr_013_6cdf:
	ld b, b                                          ; $6cdf: $40
	sbc e                                            ; $6ce0: $9b
	inc bc                                           ; $6ce1: $03
	jr nz, jr_013_6cf0                               ; $6ce2: $20 $0c

	jr nc, jr_013_6d5d                               ; $6ce4: $30 $77

	jp nz, Jump_013_7fff                             ; $6ce6: $c2 $ff $7f

	push hl                                          ; $6ce9: $e5
	sub a                                            ; $6cea: $97
	or b                                             ; $6ceb: $b0
	ret nz                                           ; $6cec: $c0

	stop                                             ; $6ced: $10 $00
	inc b                                            ; $6cef: $04

jr_013_6cf0:
	nop                                              ; $6cf0: $00
	inc bc                                           ; $6cf1: $03

jr_013_6cf2:
	inc b                                            ; $6cf2: $04
	ld a, e                                          ; $6cf3: $7b
	cp a                                             ; $6cf4: $bf
	ld [hl], e                                       ; $6cf5: $73
	cp [hl]                                          ; $6cf6: $be
	rst SubAFromDE                                          ; $6cf7: $df
	ld b, b                                          ; $6cf8: $40
	ld a, a                                          ; $6cf9: $7f
	rst GetHLinHL                                          ; $6cfa: $cf
	ld a, e                                          ; $6cfb: $7b
	pop bc                                           ; $6cfc: $c1
	sbc d                                            ; $6cfd: $9a

Jump_013_6cfe:
	nop                                              ; $6cfe: $00
	inc h                                            ; $6cff: $24
	inc e                                            ; $6d00: $1c
	db $10                                           ; $6d01: $10
	ld [$de6f], sp                                   ; $6d02: $08 $6f $de
	ld a, a                                          ; $6d05: $7f
	cp $99                                           ; $6d06: $fe $99
	ret nc                                           ; $6d08: $d0

	jr nz, jr_013_6d0b                               ; $6d09: $20 $00

jr_013_6d0b:
	db $10                                           ; $6d0b: $10
	ld [$fd08], sp                                   ; $6d0c: $08 $08 $fd
	and [hl]                                         ; $6d0f: $a6
	nop                                              ; $6d10: $00
	db $fd                                           ; $6d11: $fd
	rst SubAFromDE                                          ; $6d12: $df
	rlca                                             ; $6d13: $07
	add b                                            ; $6d14: $80
	rrca                                             ; $6d15: $0f
	ld [$080f], sp                                   ; $6d16: $08 $0f $08
	rlca                                             ; $6d19: $07
	rlca                                             ; $6d1a: $07
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	ld bc, $0301                                     ; $6d1d: $01 $01 $03
	ld [bc], a                                       ; $6d20: $02
	rlca                                             ; $6d21: $07
	inc b                                            ; $6d22: $04
	rrca                                             ; $6d23: $0f
	ld [$101f], sp                                   ; $6d24: $08 $1f $10
	ccf                                              ; $6d27: $3f
	ld hl, $213f                                     ; $6d28: $21 $3f $21
	ld a, $33                                        ; $6d2b: $3e $33
	ld e, $13                                        ; $6d2d: $1e $13
	inc a                                            ; $6d2f: $3c
	inc a                                            ; $6d30: $3c
	ld a, a                                          ; $6d31: $7f
	ld b, e                                          ; $6d32: $43
	rst $38                                          ; $6d33: $ff
	add b                                            ; $6d34: $80
	add b                                            ; $6d35: $80
	rst $38                                          ; $6d36: $ff
	jr nc, @+$01                                     ; $6d37: $30 $ff

	db $e3                                           ; $6d39: $e3
	ld a, h                                          ; $6d3a: $7c
	ld b, a                                          ; $6d3b: $47
	ld a, [$f38d]                                    ; $6d3c: $fa $8d $f3
	inc e                                            ; $6d3f: $1c
	push hl                                          ; $6d40: $e5
	ld a, [hl-]                                      ; $6d41: $3a
	xor $31                                          ; $6d42: $ee $31
	ret z                                            ; $6d44: $c8

jr_013_6d45:
	ld [hl], a                                       ; $6d45: $77
	cp h                                             ; $6d46: $bc
	jp $de21                                         ; $6d47: $c3 $21 $de


	inc sp                                           ; $6d4a: $33
	call z, $e51b                                    ; $6d4b: $cc $1b $e5
	dec de                                           ; $6d4e: $1b
	push hl                                          ; $6d4f: $e5
	ldh [$e0], a                                     ; $6d50: $e0 $e0
	ldh a, [$50]                                     ; $6d52: $f0 $50
	add b                                            ; $6d54: $80
	ld hl, sp+$28                                    ; $6d55: $f8 $28
	db $fc                                           ; $6d57: $fc
	call nz, $c4bc                                   ; $6d58: $c4 $bc $c4
	jr jr_013_6d45                                   ; $6d5b: $18 $e8

jr_013_6d5d:
	inc e                                            ; $6d5d: $1c
	db $e4                                           ; $6d5e: $e4
	inc a                                            ; $6d5f: $3c
	call nz, $ca3e                                   ; $6d60: $c4 $3e $ca
	ld a, $c2                                        ; $6d63: $3e $c2
	cp $12                                           ; $6d65: $fe $12
	cp $32                                           ; $6d67: $fe $32
	sbc $52                                          ; $6d69: $de $52
	sbc [hl]                                         ; $6d6b: $9e
	sub d                                            ; $6d6c: $92
	ld e, $12                                        ; $6d6d: $1e $12
	ld c, $0e                                        ; $6d6f: $0e $0e
	rra                                              ; $6d71: $1f
	ld [de], a                                       ; $6d72: $12
	rra                                              ; $6d73: $1f
	sbc b                                            ; $6d74: $98
	inc de                                           ; $6d75: $13
	ld e, $16                                        ; $6d76: $1e $16
	inc e                                            ; $6d78: $1c
	inc d                                            ; $6d79: $14
	inc c                                            ; $6d7a: $0c
	inc c                                            ; $6d7b: $0c
	db $eb                                           ; $6d7c: $eb
	sub l                                            ; $6d7d: $95
	jp $e33d                                         ; $6d7e: $c3 $3d $e3


	sbc l                                            ; $6d81: $9d
	ld [hl], e                                       ; $6d82: $73
	ld c, h                                          ; $6d83: $4c
	add hl, sp                                       ; $6d84: $39
	ld h, $1d                                        ; $6d85: $26 $1d
	ld [de], a                                       ; $6d87: $12
	ld a, e                                          ; $6d88: $7b
	ld a, [hl]                                       ; $6d89: $7e
	sbc h                                            ; $6d8a: $9c
	ld b, $01                                        ; $6d8b: $06 $01
	ld bc, $d9ed                                     ; $6d8d: $01 $ed $d9
	add b                                            ; $6d90: $80
	sbc e                                            ; $6d91: $9b
	ret nz                                           ; $6d92: $c0

	ld b, b                                          ; $6d93: $40
	ret nz                                           ; $6d94: $c0

	ret nz                                           ; $6d95: $c0

	xor $df                                          ; $6d96: $ee $df
	jr nz, @+$81                                     ; $6d98: $20 $7f

	db $fd                                           ; $6d9a: $fd
	sbc h                                            ; $6d9b: $9c
	nop                                              ; $6d9c: $00
	ld a, b                                          ; $6d9d: $78
	add h                                            ; $6d9e: $84
	ld [hl], a                                       ; $6d9f: $77
	ld a, [$fd77]                                    ; $6da0: $fa $77 $fd
	ldh a, [c]                                       ; $6da3: $f2
	sbc c                                            ; $6da4: $99
	ld [bc], a                                       ; $6da5: $02
	inc b                                            ; $6da6: $04
	nop                                              ; $6da7: $00
	ld [$5080], sp                                   ; $6da8: $08 $80 $50
	ld a, e                                          ; $6dab: $7b
	rst SubAFromBC                                          ; $6dac: $e7
	ld a, a                                          ; $6dad: $7f
	db $fc                                           ; $6dae: $fc
	ld a, a                                          ; $6daf: $7f
	ld hl, sp-$63                                    ; $6db0: $f8 $9d
	nop                                              ; $6db2: $00
	inc b                                            ; $6db3: $04
	pop af                                           ; $6db4: $f1
	ldh [rSC], a                                     ; $6db5: $e0 $02
	push af                                          ; $6db7: $f5
	rst SubAFromDE                                          ; $6db8: $df
	ld bc, $dfff                                     ; $6db9: $01 $ff $df
	db $10                                           ; $6dbc: $10
	rst SubAFromDE                                          ; $6dbd: $df
	rlca                                             ; $6dbe: $07
	ld [hl], a                                       ; $6dbf: $77
	ld hl, sp-$21                                    ; $6dc0: $f8 $df
	rla                                              ; $6dc2: $17
	rst $38                                          ; $6dc3: $ff
	rst SubAFromDE                                          ; $6dc4: $df
	inc bc                                           ; $6dc5: $03
	sbc l                                            ; $6dc6: $9d
	rst SubAFromDE                                          ; $6dc7: $df
	call c, $dffb                                    ; $6dc8: $dc $fb $df
	inc bc                                           ; $6dcb: $03
	rst SubAFromDE                                          ; $6dcc: $df
	ld e, a                                          ; $6dcd: $5f
	add b                                            ; $6dce: $80
	rrca                                             ; $6dcf: $0f
	inc c                                            ; $6dd0: $0c
	ld a, a                                          ; $6dd1: $7f
	ld a, b                                          ; $6dd2: $78
	ccf                                              ; $6dd3: $3f
	ld sp, $427f                                     ; $6dd4: $31 $7f $42
	rst $38                                          ; $6dd7: $ff
	add d                                            ; $6dd8: $82
	rst $38                                          ; $6dd9: $ff
	ldh a, [c]                                       ; $6dda: $f2
	ccf                                              ; $6ddb: $3f
	inc h                                            ; $6ddc: $24
	rst $38                                          ; $6ddd: $ff
	ret                                              ; $6dde: $c9


	ld a, a                                          ; $6ddf: $7f
	ld [hl], d                                       ; $6de0: $72
	rst $38                                          ; $6de1: $ff
	call z, $31ff                                    ; $6de2: $cc $ff $31
	ld a, h                                          ; $6de5: $7c
	ld a, h                                          ; $6de6: $7c
	rra                                              ; $6de7: $1f
	inc de                                           ; $6de8: $13
	ld a, a                                          ; $6de9: $7f
	ld a, h                                          ; $6dea: $7c
	rst $38                                          ; $6deb: $ff
	and h                                            ; $6dec: $a4
	rst $38                                          ; $6ded: $ff
	add h                                            ; $6dee: $84
	nop                                              ; $6def: $00
	rst $38                                          ; $6df0: $ff
	ld [hl], b                                       ; $6df1: $70
	rst $38                                          ; $6df2: $ff
	add b                                            ; $6df3: $80
	rst $38                                          ; $6df4: $ff
	ld [$30ff], sp                                   ; $6df5: $08 $ff $30
	rst $38                                          ; $6df8: $ff
	ld b, c                                          ; $6df9: $41
	rst $38                                          ; $6dfa: $ff
	ld b, e                                          ; $6dfb: $43
	rst $38                                          ; $6dfc: $ff
	ld b, a                                          ; $6dfd: $47
	rst $38                                          ; $6dfe: $ff
	ld h, $ff                                        ; $6dff: $26 $ff
	inc sp                                           ; $6e01: $33
	rst $38                                          ; $6e02: $ff
	ld h, e                                          ; $6e03: $63
	rst $38                                          ; $6e04: $ff
	add $c0                                          ; $6e05: $c6 $c0
	ret nz                                           ; $6e07: $c0

	rst FarCall                                          ; $6e08: $f7
	or l                                             ; $6e09: $b5
	ld a, e                                          ; $6e0a: $7b
	ret c                                            ; $6e0b: $d8

	ld a, a                                          ; $6e0c: $7f
	ldh a, [c]                                       ; $6e0d: $f2
	sbc h                                            ; $6e0e: $9c
	inc de                                           ; $6e0f: $13
	rst $38                                          ; $6e10: $ff
	ld bc, $dc7b                                     ; $6e11: $01 $7b $dc
	ld a, a                                          ; $6e14: $7f
	cp $7f                                           ; $6e15: $fe $7f
	call c, $c18a                                    ; $6e17: $dc $8a $c1
	rst $38                                          ; $6e1a: $ff
	and c                                            ; $6e1b: $a1
	rst $38                                          ; $6e1c: $ff
	ld c, b                                          ; $6e1d: $48
	rst $38                                          ; $6e1e: $ff
	or b                                             ; $6e1f: $b0
	rst $38                                          ; $6e20: $ff
	ldh [rIE], a                                     ; $6e21: $e0 $ff
	add c                                            ; $6e23: $81
	rst $38                                          ; $6e24: $ff
	ld [bc], a                                       ; $6e25: $02
	ret nz                                           ; $6e26: $c0

	ret nz                                           ; $6e27: $c0

	ldh a, [$b0]                                     ; $6e28: $f0 $b0
	ld hl, sp-$38                                    ; $6e2a: $f8 $c8
	db $fc                                           ; $6e2c: $fc
	ld h, h                                          ; $6e2d: $64
	ld a, e                                          ; $6e2e: $7b
	jp nc, $999e                                     ; $6e2f: $d2 $9e $99

	ld a, e                                          ; $6e32: $7b
	jp nz, $049c                                     ; $6e33: $c2 $9c $04

	rst $38                                          ; $6e36: $ff
	add h                                            ; $6e37: $84
	ld [hl], e                                       ; $6e38: $73
	cp h                                             ; $6e39: $bc
	ld a, a                                          ; $6e3a: $7f
	jp c, Jump_013_599e                              ; $6e3b: $da $9e $59

	ld a, e                                          ; $6e3e: $7b
	cp h                                             ; $6e3f: $bc
	sbc h                                            ; $6e40: $9c
	ld b, b                                          ; $6e41: $40
	rst $38                                          ; $6e42: $ff
	add b                                            ; $6e43: $80
	rst FarCall                                          ; $6e44: $f7
	rst SubAFromDE                                          ; $6e45: $df
	and b                                            ; $6e46: $a0
	rst SubAFromDE                                          ; $6e47: $df
	ret nz                                           ; $6e48: $c0

	sbc l                                            ; $6e49: $9d
	ret nc                                           ; $6e4a: $d0

	ld d, b                                          ; $6e4b: $50
	ld [hl], a                                       ; $6e4c: $77
	db $fc                                           ; $6e4d: $fc
	adc a                                            ; $6e4e: $8f
	ldh a, [rSVBK]                                   ; $6e4f: $f0 $70
	ldh a, [$50]                                     ; $6e51: $f0 $50
	ldh [$a0], a                                     ; $6e53: $e0 $a0
	ldh [rAUD4LEN], a                                ; $6e55: $e0 $20
	ret nz                                           ; $6e57: $c0

	ld b, b                                          ; $6e58: $40
	add b                                            ; $6e59: $80
	add b                                            ; $6e5a: $80
	rlca                                             ; $6e5b: $07
	ld b, $03                                        ; $6e5c: $06 $03
	inc bc                                           ; $6e5e: $03
	push hl                                          ; $6e5f: $e5
	sbc e                                            ; $6e60: $9b
	rst $38                                          ; $6e61: $ff
	rst GetHLinHL                                          ; $6e62: $cf
	rst $38                                          ; $6e63: $ff
	cp $77                                           ; $6e64: $fe $77
	jr nc, jr_013_6e8b                               ; $6e66: $30 $23

	ldh [$9a], a                                     ; $6e68: $e0 $9a
	rlca                                             ; $6e6a: $07
	ei                                               ; $6e6b: $fb
	dec de                                           ; $6e6c: $1b
	ldh a, [$f0]                                     ; $6e6d: $f0 $f0
	dec de                                           ; $6e6f: $1b
	ldh [hDisp1_SCY], a                                     ; $6e70: $e0 $90
	sbc h                                            ; $6e72: $9c
	rst $38                                          ; $6e73: $ff
	di                                               ; $6e74: $f3
	rrca                                             ; $6e75: $0f
	dec c                                            ; $6e76: $0d
	rrca                                             ; $6e77: $0f
	ld a, [bc]                                       ; $6e78: $0a
	cp a                                             ; $6e79: $bf
	or l                                             ; $6e7a: $b5
	rrca                                             ; $6e7b: $0f
	rrca                                             ; $6e7c: $0f
	nop                                              ; $6e7d: $00

jr_013_6e7e:
	nop                                              ; $6e7e: $00
	dec bc                                           ; $6e7f: $0b
	dec bc                                           ; $6e80: $0b
	ccf                                              ; $6e81: $3f
	ret nz                                           ; $6e82: $c0

	sbc e                                            ; $6e83: $9b
	db $fd                                           ; $6e84: $fd
	ld h, a                                          ; $6e85: $67
	db $fd                                           ; $6e86: $fd
	daa                                              ; $6e87: $27
	ld a, e                                          ; $6e88: $7b
	ld b, d                                          ; $6e89: $42
	sbc [hl]                                         ; $6e8a: $9e

jr_013_6e8b:
	sbc b                                            ; $6e8b: $98
	ld a, e                                          ; $6e8c: $7b
	ld a, [de]                                       ; $6e8d: $1a
	sbc d                                            ; $6e8e: $9a
	add a                                            ; $6e8f: $87
	rst $38                                          ; $6e90: $ff
	di                                               ; $6e91: $f3
	inc a                                            ; $6e92: $3c
	inc a                                            ; $6e93: $3c
	db $eb                                           ; $6e94: $eb
	rst SubAFromDE                                          ; $6e95: $df
	add b                                            ; $6e96: $80
	ld a, a                                          ; $6e97: $7f
	ld d, d                                          ; $6e98: $52
	ld [hl], a                                       ; $6e99: $77
	ld d, b                                          ; $6e9a: $50
	db $eb                                           ; $6e9b: $eb
	rst SubAFromDE                                          ; $6e9c: $df
	jr jr_013_6e7e                                   ; $6e9d: $18 $df

	rlca                                             ; $6e9f: $07
	rst SubAFromDE                                          ; $6ea0: $df
	inc bc                                           ; $6ea1: $03
	ld [hl], a                                       ; $6ea2: $77
	ld e, b                                          ; $6ea3: $58
	rst SubAFromDE                                          ; $6ea4: $df
	ld b, $6f                                        ; $6ea5: $06 $6f
	ld hl, sp-$11                                    ; $6ea7: $f8 $ef
	rst SubAFromDE                                          ; $6ea9: $df
	ret nz                                           ; $6eaa: $c0

	rst SubAFromDE                                          ; $6eab: $df
	ldh [$80], a                                     ; $6eac: $e0 $80
	ld hl, sp-$28                                    ; $6eae: $f8 $d8
	ld a, h                                          ; $6eb0: $7c
	ld h, h                                          ; $6eb1: $64
	rst $38                                          ; $6eb2: $ff
	dec de                                           ; $6eb3: $1b
	rst $38                                          ; $6eb4: $ff
	db $fd                                           ; $6eb5: $fd
	rlca                                             ; $6eb6: $07
	ld b, $63                                        ; $6eb7: $06 $63
	ld h, e                                          ; $6eb9: $63
	ccf                                              ; $6eba: $3f
	ccf                                              ; $6ebb: $3f
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	dec e                                            ; $6ebe: $1d
	dec e                                            ; $6ebf: $1d
	add b                                            ; $6ec0: $80
	add b                                            ; $6ec1: $80
	jp nz, $63c2                                     ; $6ec2: $c2 $c2 $63

	ld h, e                                          ; $6ec5: $63
	inc sp                                           ; $6ec6: $33
	ld sp, $3839                                     ; $6ec7: $31 $39 $38
	inc e                                            ; $6eca: $1c
	inc d                                            ; $6ecb: $14
	ld c, $8c                                        ; $6ecc: $0e $8c
	ld c, $07                                        ; $6ece: $0e $07
	inc bc                                           ; $6ed0: $03
	rlca                                             ; $6ed1: $07
	dec b                                            ; $6ed2: $05
	add a                                            ; $6ed3: $87
	add [hl]                                         ; $6ed4: $86
	jp $f1c3                                         ; $6ed5: $c3 $c3 $f1


	ld [hl], c                                       ; $6ed8: $71
	db $fd                                           ; $6ed9: $fd
	dec e                                            ; $6eda: $1d
	rst $38                                          ; $6edb: $ff
	sub a                                            ; $6edc: $97
	rst $38                                          ; $6edd: $ff
	add sp, -$01                                     ; $6ede: $e8 $ff
	db $fd                                           ; $6ee0: $fd
	ld e, a                                          ; $6ee1: $5f
	add b                                            ; $6ee2: $80
	adc c                                            ; $6ee3: $89
	jp nz, $e742                                     ; $6ee4: $c2 $42 $e7

	ld h, a                                          ; $6ee7: $67
	ld h, a                                          ; $6ee8: $67
	dec h                                            ; $6ee9: $25
	rst SubAFromBC                                          ; $6eea: $e7
	and [hl]                                         ; $6eeb: $a6
	rst FarCall                                          ; $6eec: $f7
	or $f7                                           ; $6eed: $f6 $f7
	ld d, [hl]                                       ; $6eef: $56
	rst $38                                          ; $6ef0: $ff
	ld a, b                                          ; $6ef1: $78
	rst $38                                          ; $6ef2: $ff
	cp b                                             ; $6ef3: $b8
	cp $83                                           ; $6ef4: $fe $83
	db $fc                                           ; $6ef6: $fc
	rst SubAFromBC                                          ; $6ef7: $e7
	inc a                                            ; $6ef8: $3c
	rst SubAFromBC                                          ; $6ef9: $e7
	ld c, a                                          ; $6efa: $4f
	ld e, h                                          ; $6efb: $5c
	ld a, a                                          ; $6efc: $7f
	ld h, c                                          ; $6efd: $61
	adc a                                            ; $6efe: $8f
	db $fc                                           ; $6eff: $fc
	ld a, h                                          ; $6f00: $7c
	ld hl, sp+$78                                    ; $6f01: $f8 $78
	sbc b                                            ; $6f03: $98
	add sp, -$44                                     ; $6f04: $e8 $bc
	db $f4                                           ; $6f06: $f4
	cp [hl]                                          ; $6f07: $be
	ld a, d                                          ; $6f08: $7a
	db $fc                                           ; $6f09: $fc
	ld e, h                                          ; $6f0a: $5c
	db $e4                                           ; $6f0b: $e4
	and h                                            ; $6f0c: $a4
	ldh a, [$30]                                     ; $6f0d: $f0 $30
	ei                                               ; $6f0f: $fb
	rst SubAFromDE                                          ; $6f10: $df
	rrca                                             ; $6f11: $0f
	rst SubAFromDE                                          ; $6f12: $df
	ld bc, $20df                                     ; $6f13: $01 $df $20
	rst SubAFromDE                                          ; $6f16: $df
	rrca                                             ; $6f17: $0f
	sbc $03                                          ; $6f18: $de $03
	adc [hl]                                         ; $6f1a: $8e
	ld [bc], a                                       ; $6f1b: $02
	rlca                                             ; $6f1c: $07
	rlca                                             ; $6f1d: $07
	rra                                              ; $6f1e: $1f
	add hl, de                                       ; $6f1f: $19
	ccf                                              ; $6f20: $3f
	ld a, $07                                        ; $6f21: $3e $07
	dec b                                            ; $6f23: $05
	rrca                                             ; $6f24: $0f
	inc c                                            ; $6f25: $0c
	rrca                                             ; $6f26: $0f
	rrca                                             ; $6f27: $0f
	rra                                              ; $6f28: $1f
	dec de                                           ; $6f29: $1b
	ld a, a                                          ; $6f2a: $7f
	ld a, a                                          ; $6f2b: $7f
	ld [hl], a                                       ; $6f2c: $77
	ld d, b                                          ; $6f2d: $50
	rst SubAFromDE                                          ; $6f2e: $df
	ld e, a                                          ; $6f2f: $5f
	sub e                                            ; $6f30: $93
	cp a                                             ; $6f31: $bf
	cp h                                             ; $6f32: $bc
	ccf                                              ; $6f33: $3f
	add hl, sp                                       ; $6f34: $39
	rst $38                                          ; $6f35: $ff
	xor $ff                                          ; $6f36: $ee $ff
	db $fd                                           ; $6f38: $fd
	rst $38                                          ; $6f39: $ff
	ld a, a                                          ; $6f3a: $7f
	rst $38                                          ; $6f3b: $ff
	inc bc                                           ; $6f3c: $03
	ld a, d                                          ; $6f3d: $7a
	ld b, d                                          ; $6f3e: $42
	ld a, a                                          ; $6f3f: $7f
	and b                                            ; $6f40: $a0
	sbc h                                            ; $6f41: $9c
	ldh a, [rIE]                                     ; $6f42: $f0 $ff
	jp $d679                                         ; $6f44: $c3 $79 $d6


	ld a, a                                          ; $6f47: $7f
	db $f4                                           ; $6f48: $f4
	sbc h                                            ; $6f49: $9c
	ld de, $c0ff                                     ; $6f4a: $11 $ff $c0
	ld a, d                                          ; $6f4d: $7a
	ld d, $9c                                        ; $6f4e: $16 $9c
	adc b                                            ; $6f50: $88
	rst $38                                          ; $6f51: $ff
	inc a                                            ; $6f52: $3c
	ld a, e                                          ; $6f53: $7b
	xor $7e                                          ; $6f54: $ee $7e
	jp nc, $f89e                                     ; $6f56: $d2 $9e $f8

	ld a, e                                          ; $6f59: $7b
	db $fc                                           ; $6f5a: $fc
	sub a                                            ; $6f5b: $97
	rst SubAFromBC                                          ; $6f5c: $e7
	rst $38                                          ; $6f5d: $ff
	ld a, [hl]                                       ; $6f5e: $7e
	di                                               ; $6f5f: $f3
	rra                                              ; $6f60: $1f
	ld sp, hl                                        ; $6f61: $f9
	xor $b9                                          ; $6f62: $ee $b9
	ld a, d                                          ; $6f64: $7a
	ld bc, $dd7f                                     ; $6f65: $01 $7f $dd
	add e                                            ; $6f68: $83
	ld sp, hl                                        ; $6f69: $f9
	rst AddAOntoHL                                          ; $6f6a: $ef
	di                                               ; $6f6b: $f3
	ld e, $f3                                        ; $6f6c: $1e $f3
	ld e, $fb                                        ; $6f6e: $1e $fb
	ld l, a                                          ; $6f70: $6f
	ei                                               ; $6f71: $fb
	ld [hl], a                                       ; $6f72: $77
	ei                                               ; $6f73: $fb
	ld [hl], $f9                                     ; $6f74: $36 $f9
	ld [hl], $e9                                     ; $6f76: $36 $e9
	ccf                                              ; $6f78: $3f
	ldh [$1f], a                                     ; $6f79: $e0 $1f
	ld hl, sp-$71                                    ; $6f7b: $f8 $8f
	db $fc                                           ; $6f7d: $fc
	rlca                                             ; $6f7e: $07
	cp $c3                                           ; $6f7f: $fe $c3
	cp $3b                                           ; $6f81: $fe $3b
	rst $38                                          ; $6f83: $ff
	ld l, h                                          ; $6f84: $6c
	ld a, d                                          ; $6f85: $7a
	add h                                            ; $6f86: $84
	add b                                            ; $6f87: $80
	rlca                                             ; $6f88: $07
	ldh a, [$50]                                     ; $6f89: $f0 $50
	ld hl, sp-$18                                    ; $6f8b: $f8 $e8
	cp b                                             ; $6f8d: $b8
	cp b                                             ; $6f8e: $b8
	sbc h                                            ; $6f8f: $9c
	sub h                                            ; $6f90: $94
	call c, $f8dc                                    ; $6f91: $dc $dc $f8
	ld hl, sp-$04                                    ; $6f94: $f8 $fc
	db $e4                                           ; $6f96: $e4
	rst $38                                          ; $6f97: $ff
	ld a, a                                          ; $6f98: $7f
	rst FarCall                                          ; $6f99: $f7
	ld [hl], a                                       ; $6f9a: $77
	push hl                                          ; $6f9b: $e5
	and l                                            ; $6f9c: $a5
	ld [hl], l                                       ; $6f9d: $75
	or l                                             ; $6f9e: $b5
	ld [hl], c                                       ; $6f9f: $71
	pop de                                           ; $6fa0: $d1
	ld a, [hl-]                                      ; $6fa1: $3a
	jp c, $fe9e                                      ; $6fa2: $da $9e $fe

	ld hl, sp-$18                                    ; $6fa5: $f8 $e8
	sbc c                                            ; $6fa7: $99
	db $fc                                           ; $6fa8: $fc
	ld c, h                                          ; $6fa9: $4c
	ld a, a                                          ; $6faa: $7f
	ld a, c                                          ; $6fab: $79
	ld c, a                                          ; $6fac: $4f
	ld c, h                                          ; $6fad: $4c
	ld a, e                                          ; $6fae: $7b
	halt                                             ; $6faf: $76
	sbc d                                            ; $6fb0: $9a
	inc c                                            ; $6fb1: $0c
	scf                                              ; $6fb2: $37
	ld [hl], $43                                     ; $6fb3: $36 $43
	ld b, d                                          ; $6fb5: $42
	db $dd                                           ; $6fb6: $dd
	ld bc, $6042                                     ; $6fb7: $01 $42 $60
	sbc h                                            ; $6fba: $9c
	jp c, $f2ff                                      ; $6fbb: $da $ff $f2

	ld a, c                                          ; $6fbe: $79
	ld a, b                                          ; $6fbf: $78
	sbc [hl]                                         ; $6fc0: $9e
	ld [hl], c                                       ; $6fc1: $71
	ld a, c                                          ; $6fc2: $79
	ld h, d                                          ; $6fc3: $62
	adc a                                            ; $6fc4: $8f
	ld a, h                                          ; $6fc5: $7c
	rst AddAOntoHL                                          ; $6fc6: $ef
	ld l, $f7                                        ; $6fc7: $2e $f7
	or l                                             ; $6fc9: $b5
	rst FarCall                                          ; $6fca: $f7
	sub a                                            ; $6fcb: $97
	ei                                               ; $6fcc: $fb
	jp c, $2c7c                                      ; $6fcd: $da $7c $2c

	inc a                                            ; $6fd0: $3c
	inc h                                            ; $6fd1: $24
	dec a                                            ; $6fd2: $3d
	dec d                                            ; $6fd3: $15
	dec e                                            ; $6fd4: $1d
	ld [hl], e                                       ; $6fd5: $73
	cp $97                                           ; $6fd6: $fe $97
	rst $38                                          ; $6fd8: $ff
	ccf                                              ; $6fd9: $3f
	rst $38                                          ; $6fda: $ff
	ld a, [de]                                       ; $6fdb: $1a
	rst $38                                          ; $6fdc: $ff
	ld a, [hl]                                       ; $6fdd: $7e
	rst $38                                          ; $6fde: $ff
	rst AddAOntoHL                                          ; $6fdf: $ef
	ld a, c                                          ; $6fe0: $79
	ld h, d                                          ; $6fe1: $62
	ld a, a                                          ; $6fe2: $7f
	ld d, h                                          ; $6fe3: $54
	ld a, a                                          ; $6fe4: $7f
	db $fc                                           ; $6fe5: $fc
	ld a, a                                          ; $6fe6: $7f
	cp $9e                                           ; $6fe7: $fe $9e
	or $7b                                           ; $6fe9: $f6 $7b
	ld e, [hl]                                       ; $6feb: $5e
	ld a, a                                          ; $6fec: $7f
	ld h, a                                          ; $6fed: $67
	sbc [hl]                                         ; $6fee: $9e
	cp $79                                           ; $6fef: $fe $79
	add h                                            ; $6ff1: $84
	sbc d                                            ; $6ff2: $9a
	cp b                                             ; $6ff3: $b8
	rst $38                                          ; $6ff4: $ff
	ld e, a                                          ; $6ff5: $5f
	rst $38                                          ; $6ff6: $ff
	jr z, jr_013_7073                                ; $6ff7: $28 $7a

	inc l                                            ; $6ff9: $2c
	ld a, a                                          ; $6ffa: $7f
	add sp, $7f                                      ; $6ffb: $e8 $7f
	xor $7f                                          ; $6ffd: $ee $7f
	ld a, $9c                                        ; $6fff: $3e $9c
	pop hl                                           ; $7001: $e1
	rst $38                                          ; $7002: $ff
	ld b, $7b                                        ; $7003: $06 $7b
	ld b, d                                          ; $7005: $42
	ld a, l                                          ; $7006: $7d
	ld h, [hl]                                       ; $7007: $66
	sbc h                                            ; $7008: $9c
	rrca                                             ; $7009: $0f
	rst $38                                          ; $700a: $ff
	inc e                                            ; $700b: $1c
	ld a, e                                          ; $700c: $7b
	ld c, c                                          ; $700d: $49
	ld [hl], a                                       ; $700e: $77
	sub $9e                                          ; $700f: $d6 $9e
	jr jr_013_708e                                   ; $7011: $18 $7b

	ld h, $98                                        ; $7013: $26 $98
	nop                                              ; $7015: $00
	cp $1e                                           ; $7016: $fe $1e
	cp $fa                                           ; $7018: $fe $fa
	rst $38                                          ; $701a: $ff
	pop af                                           ; $701b: $f1
	ld a, e                                          ; $701c: $7b
	ld a, [de]                                       ; $701d: $1a
	ld a, a                                          ; $701e: $7f
	ld sp, $fc7f                                     ; $701f: $31 $7f $fc
	sbc [hl]                                         ; $7022: $9e
	ld h, c                                          ; $7023: $61
	ld a, e                                          ; $7024: $7b
	add $98                                          ; $7025: $c6 $98
	inc de                                           ; $7027: $13
	cp $36                                           ; $7028: $fe $36
	cp $c6                                           ; $702a: $fe $c6
	db $fc                                           ; $702c: $fc
	adc h                                            ; $702d: $8c
	halt                                             ; $702e: $76
	cp b                                             ; $702f: $b8
	adc a                                            ; $7030: $8f
	ld hl, sp+$38                                    ; $7031: $f8 $38
	db $fc                                           ; $7033: $fc
	inc c                                            ; $7034: $0c
	rra                                              ; $7035: $1f
	rla                                              ; $7036: $17
	rra                                              ; $7037: $1f
	ld e, $3f                                        ; $7038: $1e $3f
	ld l, $3f                                        ; $703a: $2e $3f
	ccf                                              ; $703c: $3f
	ld sp, $4131                                     ; $703d: $31 $31 $41
	ld b, c                                          ; $7040: $41
	ld l, a                                          ; $7041: $6f
	ld h, d                                          ; $7042: $62
	ld c, a                                          ; $7043: $4f
	ld e, h                                          ; $7044: $5c
	ld a, l                                          ; $7045: $7d
	add d                                            ; $7046: $82
	sbc e                                            ; $7047: $9b
	db $fd                                           ; $7048: $fd
	call Call_013_46fe                               ; $7049: $cd $fe $46
	ld a, c                                          ; $704c: $79
	ret nz                                           ; $704d: $c0

	sbc [hl]                                         ; $704e: $9e
	inc c                                            ; $704f: $0c
	ld a, e                                          ; $7050: $7b
	cp d                                             ; $7051: $ba
	sbc [hl]                                         ; $7052: $9e
	rra                                              ; $7053: $1f
	ld a, e                                          ; $7054: $7b
	xor [hl]                                         ; $7055: $ae
	rst SubAFromDE                                          ; $7056: $df
	rst $38                                          ; $7057: $ff
	sbc d                                            ; $7058: $9a
	ldh a, [$1f]                                     ; $7059: $f0 $1f
	rra                                              ; $705b: $1f
	inc bc                                           ; $705c: $03
	inc bc                                           ; $705d: $03
	ld [hl], l                                       ; $705e: $75
	sub d                                            ; $705f: $92
	ld [hl], e                                       ; $7060: $73
	ld b, b                                          ; $7061: $40
	sbc [hl]                                         ; $7062: $9e
	adc a                                            ; $7063: $8f
	ld a, e                                          ; $7064: $7b
	adc d                                            ; $7065: $8a
	sbc d                                            ; $7066: $9a
	ret nz                                           ; $7067: $c0

	ccf                                              ; $7068: $3f
	jr nz, @+$01                                     ; $7069: $20 $ff

	db $fc                                           ; $706b: $fc
	ld a, e                                          ; $706c: $7b
	or $77                                           ; $706d: $f6 $77
	ld a, b                                          ; $706f: $78
	sub [hl]                                         ; $7070: $96
	adc h                                            ; $7071: $8c
	rst $38                                          ; $7072: $ff

jr_013_7073:
	ld sp, $e6ff                                     ; $7073: $31 $ff $e6
	rst $38                                          ; $7076: $ff
	ei                                               ; $7077: $fb
	cp $fe                                           ; $7078: $fe $fe
	halt                                             ; $707a: $76
	nop                                              ; $707b: $00
	rst $38                                          ; $707c: $ff
	sbc l                                            ; $707d: $9d
	db $fc                                           ; $707e: $fc
	inc b                                            ; $707f: $04
	ld [hl], e                                       ; $7080: $73
	cp $9c                                           ; $7081: $fe $9c
	inc c                                            ; $7083: $0c
	db $fc                                           ; $7084: $fc
	inc l                                            ; $7085: $2c
	sbc $f0                                          ; $7086: $de $f0
	sub [hl]                                         ; $7088: $96
	db $10                                           ; $7089: $10
	ld hl, sp+$48                                    ; $708a: $f8 $48
	ld hl, sp-$68                                    ; $708c: $f8 $98

jr_013_708e:
	ldh a, [$30]                                     ; $708e: $f0 $30
	ldh [$60], a                                     ; $7090: $e0 $60
	db $dd                                           ; $7092: $dd
	ret nz                                           ; $7093: $c0

	ei                                               ; $7094: $fb
	ld h, $02                                        ; $7095: $26 $02
	xor $9e                                          ; $7097: $ee $9e
	ld bc, $fe7b                                     ; $7099: $01 $7b $fe
	sub [hl]                                         ; $709c: $96
	ld de, $1a01                                     ; $709d: $11 $01 $1a

jr_013_70a0:
	rrca                                             ; $70a0: $0f
	ld d, b                                          ; $70a1: $50
	inc a                                            ; $70a2: $3c
	ld b, b                                          ; $70a3: $40
	ld d, b                                          ; $70a4: $50
	add b                                            ; $70a5: $80
	ldh a, [c]                                       ; $70a6: $f2
	sub l                                            ; $70a7: $95

jr_013_70a8:
	ld [hl+], a                                      ; $70a8: $22
	nop                                              ; $70a9: $00
	ld h, $00                                        ; $70aa: $26 $00
	halt                                             ; $70ac: $76
	jr nz, jr_013_708e                               ; $70ad: $20 $df

	or [hl]                                          ; $70af: $b6
	ld c, c                                          ; $70b0: $49
	rst $38                                          ; $70b1: $ff
	rst SubAFromBC                                          ; $70b2: $e7
	sbc [hl]                                         ; $70b3: $9e
	ld b, b                                          ; $70b4: $40
	ld a, e                                          ; $70b5: $7b
	cp $96                                           ; $70b6: $fe $96
	ret nz                                           ; $70b8: $c0

	add b                                            ; $70b9: $80
	ld b, b                                          ; $70ba: $40
	ret nz                                           ; $70bb: $c0

	jr nz, jr_013_70fe                               ; $70bc: $20 $40

	jr nz, jr_013_7100                               ; $70be: $20 $40

	jr nc, jr_013_70a8                               ; $70c0: $30 $e6

	sbc [hl]                                         ; $70c2: $9e
	ld [bc], a                                       ; $70c3: $02
	ld a, e                                          ; $70c4: $7b
	cp $9e                                           ; $70c5: $fe $9e
	inc bc                                           ; $70c7: $03
	ld h, e                                          ; $70c8: $63
	db $f4                                           ; $70c9: $f4
	add a                                            ; $70ca: $87
	dec bc                                           ; $70cb: $0b
	nop                                              ; $70cc: $00
	dec bc                                           ; $70cd: $0b

jr_013_70ce:
	ld bc, $050a                                     ; $70ce: $01 $0a $05
	ld a, [bc]                                       ; $70d1: $0a
	rlca                                             ; $70d2: $07
	ld [$5807], sp                                   ; $70d3: $08 $07 $58
	inc b                                            ; $70d6: $04
	ld a, b                                          ; $70d7: $78
	inc l                                            ; $70d8: $2c
	ld d, b                                          ; $70d9: $50
	jr z, jr_013_712c                                ; $70da: $28 $50

	jr c, @-$3e                                      ; $70dc: $38 $c0

	jr nc, jr_013_70a0                               ; $70de: $30 $c0

	ld [hl], b                                       ; $70e0: $70
	add b                                            ; $70e1: $80
	ld b, b                                          ; $70e2: $40
	ld a, e                                          ; $70e3: $7b
	cp $9d                                           ; $70e4: $fe $9d
	ld a, b                                          ; $70e6: $78
	add b                                            ; $70e7: $80
	ld [hl], a                                       ; $70e8: $77
	db $f4                                           ; $70e9: $f4
	ld a, a                                          ; $70ea: $7f
	db $fc                                           ; $70eb: $fc
	ld a, a                                          ; $70ec: $7f
	cp $7f                                           ; $70ed: $fe $7f
	or $9e                                           ; $70ef: $f6 $9e
	ld hl, sp-$1c                                    ; $70f1: $f8 $e4
	ld [hl], a                                       ; $70f3: $77
	ld b, l                                          ; $70f4: $45
	ld a, a                                          ; $70f5: $7f
	cp $53                                           ; $70f6: $fe $53
	ld [hl], e                                       ; $70f8: $73
	ld a, a                                          ; $70f9: $7f
	rst JumpTable                                          ; $70fa: $c7
	sub a                                            ; $70fb: $97
	jr nc, jr_013_70ce                               ; $70fc: $30 $d0

jr_013_70fe:
	jr z, @-$2e                                      ; $70fe: $28 $d0

jr_013_7100:
	jr z, jr_013_7172                                ; $7100: $28 $70

	ld [$7b30], sp                                   ; $7102: $08 $30 $7b
	cp $90                                           ; $7105: $fe $90
	ldh a, [$0c]                                     ; $7107: $f0 $0c
	ldh a, [$0c]                                     ; $7109: $f0 $0c
	ld hl, sp+$06                                    ; $710b: $f8 $06
	inc a                                            ; $710d: $3c
	ld [bc], a                                       ; $710e: $02
	inc c                                            ; $710f: $0c
	ld [bc], a                                       ; $7110: $02
	inc b                                            ; $7111: $04
	inc bc                                           ; $7112: $03
	ld b, $01                                        ; $7113: $06 $01
	ld [bc], a                                       ; $7115: $02
	ld a, e                                          ; $7116: $7b
	cp $73                                           ; $7117: $fe $73
	ei                                               ; $7119: $fb
	ld a, a                                          ; $711a: $7f
	cp $9c                                           ; $711b: $fe $9c
	ld b, $03                                        ; $711d: $06 $03
	inc b                                            ; $711f: $04
	ld [hl], a                                       ; $7120: $77
	cp $77                                           ; $7121: $fe $77
	db $f4                                           ; $7123: $f4
	ld c, a                                          ; $7124: $4f
	cp l                                             ; $7125: $bd
	ld a, a                                          ; $7126: $7f
	add d                                            ; $7127: $82
	sbc h                                            ; $7128: $9c
	ret nz                                           ; $7129: $c0

	nop                                              ; $712a: $00
	add b                                            ; $712b: $80

jr_013_712c:
	ld a, e                                          ; $712c: $7b
	cp $f9                                           ; $712d: $fe $f9
	ld a, a                                          ; $712f: $7f
	or $95                                           ; $7130: $f6 $95
	ldh [rP1], a                                     ; $7132: $e0 $00
	ld a, b                                          ; $7134: $78
	add b                                            ; $7135: $80
	ld c, $70                                        ; $7136: $0e $70
	rlca                                             ; $7138: $07
	jr c, @+$03                                      ; $7139: $38 $01

	ld e, $63                                        ; $713b: $1e $63
	ld b, d                                          ; $713d: $42
	sbc c                                            ; $713e: $99
	nop                                              ; $713f: $00
	jr nz, jr_013_7142                               ; $7140: $20 $00

jr_013_7142:
	ld [hl], b                                       ; $7142: $70
	nop                                              ; $7143: $00
	ld h, b                                          ; $7144: $60
	db $f4                                           ; $7145: $f4
	ld a, a                                          ; $7146: $7f
	jp z, $d87f                                      ; $7147: $ca $7f $d8

	ld a, a                                          ; $714a: $7f
	add l                                            ; $714b: $85
	sbc l                                            ; $714c: $9d
	db $10                                           ; $714d: $10
	ld h, b                                          ; $714e: $60
	ld [hl], a                                       ; $714f: $77
	and e                                            ; $7150: $a3
	ld [hl], a                                       ; $7151: $77
	and l                                            ; $7152: $a5
	ld a, a                                          ; $7153: $7f
	sub d                                            ; $7154: $92
	ld a, a                                          ; $7155: $7f
	db $d3                                           ; $7156: $d3
	ld h, a                                          ; $7157: $67
	xor c                                            ; $7158: $a9
	ld a, a                                          ; $7159: $7f
	or $98                                           ; $715a: $f6 $98
	ld c, $01                                        ; $715c: $0e $01
	inc c                                            ; $715e: $0c
	inc bc                                           ; $715f: $03
	inc c                                            ; $7160: $0c
	inc bc                                           ; $7161: $03
	inc b                                            ; $7162: $04
	ld a, e                                          ; $7163: $7b
	ld a, d                                          ; $7164: $7a
	ld e, a                                          ; $7165: $5f
	ld b, a                                          ; $7166: $47
	ld l, a                                          ; $7167: $6f
	halt                                             ; $7168: $76
	ld a, a                                          ; $7169: $7f
	jp hl                                            ; $716a: $e9


	ld a, [hl]                                       ; $716b: $7e
	cp $9e                                           ; $716c: $fe $9e
	ld b, $77                                        ; $716e: $06 $77
	cp $96                                           ; $7170: $fe $96

jr_013_7172:
	jr jr_013_7180                                   ; $7172: $18 $0c

	db $10                                           ; $7174: $10

jr_013_7175:
	jr jr_013_7197                                   ; $7175: $18 $20

	jr jr_013_7199                                   ; $7177: $18 $20

	db $10                                           ; $7179: $10
	jr nz, jr_013_71f2                               ; $717a: $20 $76

	cp c                                             ; $717c: $b9
	ld a, a                                          ; $717d: $7f
	cp $9e                                           ; $717e: $fe $9e

jr_013_7180:
	ld h, b                                          ; $7180: $60
	ld [hl], d                                       ; $7181: $72
	or $77                                           ; $7182: $f6 $77
	ld [hl], h                                       ; $7184: $74
	db $eb                                           ; $7185: $eb
	sub l                                            ; $7186: $95
	inc b                                            ; $7187: $04
	nop                                              ; $7188: $00
	inc c                                            ; $7189: $0c
	nop                                              ; $718a: $00
	inc e                                            ; $718b: $1c
	nop                                              ; $718c: $00
	inc [hl]                                         ; $718d: $34
	ld [$1824], sp                                   ; $718e: $08 $24 $18
	ld l, a                                          ; $7191: $6f
	cp $9b                                           ; $7192: $fe $9b
	ld b, h                                          ; $7194: $44
	jr c, jr_013_71db                                ; $7195: $38 $44

jr_013_7197:
	jr z, jr_013_7210                                ; $7197: $28 $77

jr_013_7199:
	cp $7f                                           ; $7199: $fe $7f
	adc b                                            ; $719b: $88
	ld l, a                                          ; $719c: $6f
	cp $7f                                           ; $719d: $fe $7f
	sub a                                            ; $719f: $97
	ld [hl], a                                       ; $71a0: $77
	cp $6e                                           ; $71a1: $fe $6e
	ldh [rHDMA2], a                                  ; $71a3: $e0 $52
	jp c, $237b                                      ; $71a5: $da $7b $23

	ld a, e                                          ; $71a8: $7b
	db $fd                                           ; $71a9: $fd
	ld [hl], a                                       ; $71aa: $77
	and e                                            ; $71ab: $a3
	ld d, a                                          ; $71ac: $57
	cp $7f                                           ; $71ad: $fe $7f
	sub c                                            ; $71af: $91
	sub a                                            ; $71b0: $97
	ld h, b                                          ; $71b1: $60
	ret nz                                           ; $71b2: $c0

	jr nz, jr_013_7175                               ; $71b3: $20 $c0

	jr nz, jr_013_7197                               ; $71b5: $20 $e0

	db $10                                           ; $71b7: $10
	db $10                                           ; $71b8: $10
	ld a, e                                          ; $71b9: $7b
	ld a, [hl]                                       ; $71ba: $7e
	sub l                                            ; $71bb: $95
	ld d, $20                                        ; $71bc: $16 $20
	ld c, $10                                        ; $71be: $0e $10
	ld b, $18                                        ; $71c0: $06 $18
	inc b                                            ; $71c2: $04
	jr jr_013_71cd                                   ; $71c3: $18 $08

	db $10                                           ; $71c5: $10
	ld h, $8c                                        ; $71c6: $26 $8c
	ld a, a                                          ; $71c8: $7f
	and [hl]                                         ; $71c9: $a6
	ld a, a                                          ; $71ca: $7f
	ld b, l                                          ; $71cb: $45
	ld e, a                                          ; $71cc: $5f

jr_013_71cd:
	and b                                            ; $71cd: $a0
	ld a, a                                          ; $71ce: $7f
	db $f4                                           ; $71cf: $f4
	rst FarCall                                          ; $71d0: $f7
	ld a, a                                          ; $71d1: $7f
	ld a, [hl]                                       ; $71d2: $7e
	adc a                                            ; $71d3: $8f
	ld b, e                                          ; $71d4: $43
	inc l                                            ; $71d5: $2c
	jp $012c                                         ; $71d6: $c3 $2c $01


	xor $05                                          ; $71d9: $ee $05

jr_013_71db:
	jp z, $8807                                      ; $71db: $ca $07 $88

	inc bc                                           ; $71de: $03
	adc h                                            ; $71df: $8c
	ld [bc], a                                       ; $71e0: $02
	add h                                            ; $71e1: $84
	nop                                              ; $71e2: $00
	add d                                            ; $71e3: $82
	ccf                                              ; $71e4: $3f
	dec a                                            ; $71e5: $3d
	sbc [hl]                                         ; $71e6: $9e
	add c                                            ; $71e7: $81
	ld a, e                                          ; $71e8: $7b
	cp $4e                                           ; $71e9: $fe $4e
	ld c, d                                          ; $71eb: $4a
	rst FarCall                                          ; $71ec: $f7
	ld a, a                                          ; $71ed: $7f
	ld a, [hl]                                       ; $71ee: $7e
	sub [hl]                                         ; $71ef: $96
	ldh [rAUD2LOW], a                                ; $71f0: $e0 $18

jr_013_71f2:
	ldh [rAUD3ENA], a                                ; $71f2: $e0 $1a
	ldh [rAUD3HIGH], a                               ; $71f4: $e0 $1e
	add sp, $16                                      ; $71f6: $e8 $16
	ld a, b                                          ; $71f8: $78
	ld a, d                                          ; $71f9: $7a
	ld c, b                                          ; $71fa: $48
	ld a, [hl]                                       ; $71fb: $7e
	ret z                                            ; $71fc: $c8

	ld [hl], d                                       ; $71fd: $72
	or b                                             ; $71fe: $b0
	ld a, [hl]                                       ; $71ff: $7e
	ret z                                            ; $7200: $c8

	ld a, [hl]                                       ; $7201: $7e
	ld e, d                                          ; $7202: $5a
	ld b, l                                          ; $7203: $45
	or h                                             ; $7204: $b4
	ld h, l                                          ; $7205: $65
	or b                                             ; $7206: $b0
	sub c                                            ; $7207: $91
	inc bc                                           ; $7208: $03
	ld bc, $0346                                     ; $7209: $01 $46 $03
	ld l, h                                          ; $720c: $6c
	rlca                                             ; $720d: $07
	add sp, $47                                      ; $720e: $e8 $47

jr_013_7210:
	cp b                                             ; $7210: $b8
	ld a, a                                          ; $7211: $7f
	add b                                            ; $7212: $80
	ld a, h                                          ; $7213: $7c
	add b                                            ; $7214: $80
	ret nc                                           ; $7215: $d0

	ld c, l                                          ; $7216: $4d
	ld l, d                                          ; $7217: $6a
	ld a, a                                          ; $7218: $7f
	add d                                            ; $7219: $82
	sub [hl]                                         ; $721a: $96
	db $e4                                           ; $721b: $e4
	add b                                            ; $721c: $80
	ld h, h                                          ; $721d: $64
	ret nz                                           ; $721e: $c0

	cpl                                              ; $721f: $2f
	and $19                                          ; $7220: $e6 $19
	rst $38                                          ; $7222: $ff
	nop                                              ; $7223: $00
	add hl, hl                                       ; $7224: $29
	ld b, b                                          ; $7225: $40
	ld a, a                                          ; $7226: $7f
	ld h, h                                          ; $7227: $64
	ld a, [hl]                                       ; $7228: $7e
	sbc l                                            ; $7229: $9d
	ld a, c                                          ; $722a: $79
	ld b, h                                          ; $722b: $44
	ld [hl], l                                       ; $722c: $75
	ld b, d                                          ; $722d: $42
	ld a, a                                          ; $722e: $7f
	cp $9c                                           ; $722f: $fe $9c
	ld h, b                                          ; $7231: $60
	db $10                                           ; $7232: $10
	ld h, b                                          ; $7233: $60
	ld h, a                                          ; $7234: $67
	ld c, $79                                        ; $7235: $0e $79
	ld l, $76                                        ; $7237: $2e $76
	dec l                                            ; $7239: $2d
	halt                                             ; $723a: $76
	add sp, $77                                      ; $723b: $e8 $77
	ldh [c], a                                       ; $723d: $e2
	ld a, e                                          ; $723e: $7b
	db $f4                                           ; $723f: $f4
	ld h, a                                          ; $7240: $67
	ld a, [hl-]                                      ; $7241: $3a
	sbc [hl]                                         ; $7242: $9e
	add hl, bc                                       ; $7243: $09
	ld a, e                                          ; $7244: $7b
	ld b, l                                          ; $7245: $45
	ld a, a                                          ; $7246: $7f
	db $fc                                           ; $7247: $fc
	add h                                            ; $7248: $84
	rrca                                             ; $7249: $0f
	nop                                              ; $724a: $00
	rrca                                             ; $724b: $0f
	inc b                                            ; $724c: $04

Jump_013_724d:
	dec bc                                           ; $724d: $0b
	ld b, $09                                        ; $724e: $06 $09
	rlca                                             ; $7250: $07
	jr z, jr_013_725a                                ; $7251: $28 $07

	jr c, jr_013_7274                                ; $7253: $38 $1f

	jr nz, jr_013_7273                               ; $7255: $20 $1c

	ld h, b                                          ; $7257: $60
	inc a                                            ; $7258: $3c
	ret nz                                           ; $7259: $c0

jr_013_725a:
	cp b                                             ; $725a: $b8
	ld b, b                                          ; $725b: $40
	cp b                                             ; $725c: $b8
	ld b, b                                          ; $725d: $40
	ldh a, [rP1]                                     ; $725e: $f0 $00
	ldh a, [rP1]                                     ; $7260: $f0 $00
	ld h, b                                          ; $7262: $60
	ld de, $407b                                     ; $7263: $11 $7b $40
	adc l                                            ; $7266: $8d
	add hl, de                                       ; $7267: $19
	ldh a, [$09]                                     ; $7268: $f0 $09
	ld [hl], b                                       ; $726a: $70
	rrca                                             ; $726b: $0f
	ld [hl-], a                                      ; $726c: $32
	dec c                                            ; $726d: $0d
	ld a, $01                                        ; $726e: $3e $01
	db $fc                                           ; $7270: $fc
	inc bc                                           ; $7271: $03
	db $fc                                           ; $7272: $fc

jr_013_7273:
	ld [bc], a                                       ; $7273: $02

jr_013_7274:
	db $fc                                           ; $7274: $fc
	ld [bc], a                                       ; $7275: $02
	inc a                                            ; $7276: $3c
	inc bc                                           ; $7277: $03
	ld c, $62                                        ; $7278: $0e $62
	ld l, h                                          ; $727a: $6c
	ld a, e                                          ; $727b: $7b
	xor h                                            ; $727c: $ac
	ld a, l                                          ; $727d: $7d
	dec de                                           ; $727e: $1b
	ld a, e                                          ; $727f: $7b
	cp $79                                           ; $7280: $fe $79
	rra                                              ; $7282: $1f
	ld a, e                                          ; $7283: $7b
	adc [hl]                                         ; $7284: $8e
	ld a, a                                          ; $7285: $7f
	cp $6f                                           ; $7286: $fe $6f
	sbc [hl]                                         ; $7288: $9e
	ld l, e                                          ; $7289: $6b
	and b                                            ; $728a: $a0
	ld a, e                                          ; $728b: $7b
	halt                                             ; $728c: $76
	ld a, h                                          ; $728d: $7c
	halt                                             ; $728e: $76
	ld a, e                                          ; $728f: $7b
	cp $7f                                           ; $7290: $fe $7f
	and b                                            ; $7292: $a0
	sub [hl]                                         ; $7293: $96
	ld e, $08                                        ; $7294: $1e $08
	rla                                              ; $7296: $17
	dec bc                                           ; $7297: $0b
	inc d                                            ; $7298: $14
	dec bc                                           ; $7299: $0b
	inc d                                            ; $729a: $14
	rrca                                             ; $729b: $0f
	db $10                                           ; $729c: $10
	ld [hl], a                                       ; $729d: $77
	cp $7e                                           ; $729e: $fe $7e
	ld [hl], d                                       ; $72a0: $72
	sbc d                                            ; $72a1: $9a
	ld c, $30                                        ; $72a2: $0e $30
	ld e, $20                                        ; $72a4: $1e $20
	inc e                                            ; $72a6: $1c
	ld a, c                                          ; $72a7: $79
	ldh [c], a                                       ; $72a8: $e2
	ld a, a                                          ; $72a9: $7f
	cp $6a                                           ; $72aa: $fe $6a
	ld d, d                                          ; $72ac: $52
	ld [hl], e                                       ; $72ad: $73
	cp h                                             ; $72ae: $bc
	ld a, e                                          ; $72af: $7b
	cp $7e                                           ; $72b0: $fe $7e
	ld c, d                                          ; $72b2: $4a
	ld a, c                                          ; $72b3: $79
	db $10                                           ; $72b4: $10
	ld [hl], h                                       ; $72b5: $74
	push de                                          ; $72b6: $d5
	ld a, e                                          ; $72b7: $7b
	adc d                                            ; $72b8: $8a
	ld [hl], e                                       ; $72b9: $73
	cp $11                                           ; $72ba: $fe $11
	nop                                              ; $72bc: $00
	sbc l                                            ; $72bd: $9d
	dec c                                            ; $72be: $0d
	ldh a, [c]                                       ; $72bf: $f2
	rrca                                             ; $72c0: $0f
	cp $9d                                           ; $72c1: $fe $9d
	rst $38                                          ; $72c3: $ff
	nop                                              ; $72c4: $00
	rrca                                             ; $72c5: $0f
	cp $9d                                           ; $72c6: $fe $9d
	ld d, b                                          ; $72c8: $50
	xor a                                            ; $72c9: $af
	rrca                                             ; $72ca: $0f
	cp $e5                                           ; $72cb: $fe $e5
	nop                                              ; $72cd: $00
	push af                                          ; $72ce: $f5
	rst SubAFromDE                                          ; $72cf: $df
	ccf                                              ; $72d0: $3f
	sbc e                                            ; $72d1: $9b

jr_013_72d2:
	ld b, b                                          ; $72d2: $40

jr_013_72d3:
	ld a, a                                          ; $72d3: $7f
	add b                                            ; $72d4: $80
	rst $38                                          ; $72d5: $ff
	ld e, a                                          ; $72d6: $5f
	cp $7f                                           ; $72d7: $fe $7f
	ldh a, [c]                                       ; $72d9: $f2
	rst SubAFromDE                                          ; $72da: $df
	ccf                                              ; $72db: $3f
	push af                                          ; $72dc: $f5
	rst SubAFromDE                                          ; $72dd: $df
	ret nz                                           ; $72de: $c0

	adc l                                            ; $72df: $8d

jr_013_72e0:
	jr nc, jr_013_72d2                               ; $72e0: $30 $f0

	ccf                                              ; $72e2: $3f
	rst SubAFromDE                                          ; $72e3: $df
	ld a, b                                          ; $72e4: $78
	sbc a                                            ; $72e5: $9f
	ld [hl], h                                       ; $72e6: $74
	cp a                                             ; $72e7: $bf
	ld a, d                                          ; $72e8: $7a
	cp a                                             ; $72e9: $bf
	ld [hl], h                                       ; $72ea: $74
	cp a                                             ; $72eb: $bf
	ld [hl], l                                       ; $72ec: $75
	sbc a                                            ; $72ed: $9f

jr_013_72ee:
	ccf                                              ; $72ee: $3f
	rst $38                                          ; $72ef: $ff
	ldh [$e0], a                                     ; $72f0: $e0 $e0
	rst AddAOntoHL                                          ; $72f2: $ef
	rst SubAFromHL                                          ; $72f3: $d7
	add b                                            ; $72f4: $80
	pop af                                           ; $72f5: $f1
	ld [hl], a                                       ; $72f6: $77
	ret nz                                           ; $72f7: $c0

	sub c                                            ; $72f8: $91
	jr c, jr_013_72d3                                ; $72f9: $38 $d8

	ld a, h                                          ; $72fb: $7c
	sbc h                                            ; $72fc: $9c
	halt                                             ; $72fd: $76
	cp [hl]                                          ; $72fe: $be

jr_013_72ff:
	ld a, d                                          ; $72ff: $7a
	cp [hl]                                          ; $7300: $be
	halt                                             ; $7301: $76
	cp [hl]                                          ; $7302: $be
	ld a, h                                          ; $7303: $7c
	sbc h                                            ; $7304: $9c
	jr c, jr_013_72ff                                ; $7305: $38 $f8

	ld c, a                                          ; $7307: $4f
	ret nz                                           ; $7308: $c0

	rst SubAFromDE                                          ; $7309: $df

jr_013_730a:
	ret nz                                           ; $730a: $c0

	sub a                                            ; $730b: $97
	jr nz, jr_013_72ee                               ; $730c: $20 $e0

	jr nc, jr_013_72e0                               ; $730e: $30 $d0

	ld [hl], b                                       ; $7310: $70
	sub b                                            ; $7311: $90
	ld [hl], b                                       ; $7312: $70
	or b                                             ; $7313: $b0
	ld [hl], e                                       ; $7314: $73
	cp $9c                                           ; $7315: $fe $9c
	sub b                                            ; $7317: $90
	jr nc, jr_013_730a                               ; $7318: $30 $f0

	inc sp                                           ; $731a: $33
	ldh [$98], a                                     ; $731b: $e0 $98
	or b                                             ; $731d: $b0
	ld a, b                                          ; $731e: $78
	cp b                                             ; $731f: $b8
	ld l, b                                          ; $7320: $68
	cp b                                             ; $7321: $b8
	ld a, b                                          ; $7322: $78
	cp b                                             ; $7323: $b8
	scf                                              ; $7324: $37
	ldh [$7b], a                                     ; $7325: $e0 $7b
	and b                                            ; $7327: $a0
	sbc h                                            ; $7328: $9c
	ld hl, sp+$6c                                    ; $7329: $f8 $6c
	cp h                                             ; $732b: $bc
	ld l, a                                          ; $732c: $6f
	cp $7f                                           ; $732d: $fe $7f
	sbc $37                                          ; $732f: $de $37
	ldh [$98], a                                     ; $7331: $e0 $98
	inc a                                            ; $7333: $3c
	db $fc                                           ; $7334: $fc
	ld l, e                                          ; $7335: $6b
	cp a                                             ; $7336: $bf
	ld l, d                                          ; $7337: $6a
	cp a                                             ; $7338: $bf
	ld l, e                                          ; $7339: $6b
	ld a, e                                          ; $733a: $7b
	cp $9d                                           ; $733b: $fe $9d
	ld a, h                                          ; $733d: $7c
	cp h                                             ; $733e: $bc
	ld b, a                                          ; $733f: $47
	add b                                            ; $7340: $80
	ld d, a                                          ; $7341: $57
	ld a, $ea                                        ; $7342: $3e $ea
	sub d                                            ; $7344: $92
	ld bc, $0700                                     ; $7345: $01 $00 $07
	inc bc                                           ; $7348: $03
	inc c                                            ; $7349: $0c
	rrca                                             ; $734a: $0f
	db $10                                           ; $734b: $10
	rlca                                             ; $734c: $07
	jr @+$03                                         ; $734d: $18 $01

	ld c, $00                                        ; $734f: $0e $00
	inc bc                                           ; $7351: $03
	db $fc                                           ; $7352: $fc
	sbc b                                            ; $7353: $98
	ld b, $00                                        ; $7354: $06 $00
	ld bc, $1502                                     ; $7356: $01 $02 $15
	ld bc, $7702                                     ; $7359: $01 $02 $77
	and $7f                                          ; $735c: $e6 $7f
	db $ec                                           ; $735e: $ec
	sbc c                                            ; $735f: $99
	ld [bc], a                                       ; $7360: $02
	dec a                                            ; $7361: $3d
	dec b                                            ; $7362: $05
	ld a, d                                          ; $7363: $7a
	ld [bc], a                                       ; $7364: $02
	dec e                                            ; $7365: $1d
	ld a, e                                          ; $7366: $7b
	db $e4                                           ; $7367: $e4
	sbc d                                            ; $7368: $9a
	rlca                                             ; $7369: $07
	nop                                              ; $736a: $00
	inc bc                                           ; $736b: $03
	inc bc                                           ; $736c: $03
	inc l                                            ; $736d: $2c
	ld a, e                                          ; $736e: $7b
	db $ec                                           ; $736f: $ec
	ld [hl], a                                       ; $7370: $77
	call c, $80df                                    ; $7371: $dc $df $80
	rst SubAFromDE                                          ; $7374: $df
	ld h, b                                          ; $7375: $60
	adc b                                            ; $7376: $88
	sbc b                                            ; $7377: $98
	cp b                                             ; $7378: $b8
	ld b, h                                          ; $7379: $44
	inc a                                            ; $737a: $3c
	jp nz, $a05f                                     ; $737b: $c2 $5f $a0

	rst $38                                          ; $737e: $ff
	nop                                              ; $737f: $00
	rst $38                                          ; $7380: $ff
	nop                                              ; $7381: $00
	rst FarCall                                          ; $7382: $f7
	ld [$b04f], sp                                   ; $7383: $08 $4f $b0
	inc e                                            ; $7386: $1c
	ldh [c], a                                       ; $7387: $e2
	ldh a, [$0c]                                     ; $7388: $f0 $0c
	ret nz                                           ; $738a: $c0

	jr c, jr_013_738d                                ; $738b: $38 $00

jr_013_738d:
	ret nz                                           ; $738d: $c0

	jp hl                                            ; $738e: $e9


	sub a                                            ; $738f: $97

jr_013_7390:
	inc c                                            ; $7390: $0c
	nop                                              ; $7391: $00
	ld [$1014], sp                                   ; $7392: $08 $14 $10
	jr z, jr_013_7397                                ; $7395: $28 $00

jr_013_7397:
	jr nc, @-$12                                     ; $7397: $30 $ec

	rst SubAFromDE                                          ; $7399: $df
	jr @-$68                                         ; $739a: $18 $96

	inc h                                            ; $739c: $24
	ld [$0034], sp                                   ; $739d: $08 $34 $00
	jr jr_013_73a2                                   ; $73a0: $18 $00

jr_013_73a2:
	stop                                             ; $73a2: $10 $00
	jr nz, jr_013_7390                               ; $73a4: $20 $ea

	sbc [hl]                                         ; $73a6: $9e
	ld h, b                                          ; $73a7: $60
	ld a, e                                          ; $73a8: $7b
	add $27                                          ; $73a9: $c6 $27
	db $e4                                           ; $73ab: $e4
	db $fd                                           ; $73ac: $fd
	sbc [hl]                                         ; $73ad: $9e
	ld b, b                                          ; $73ae: $40
	ld e, a                                          ; $73af: $5f
	ldh [c], a                                       ; $73b0: $e2
	ldh a, [rSB]                                     ; $73b1: $f0 $01
	di                                               ; $73b3: $f3
	rst SubAFromDE                                          ; $73b4: $df
	inc bc                                           ; $73b5: $03
	adc a                                            ; $73b6: $8f
	ld b, $07                                        ; $73b7: $06 $07
	ld a, [bc]                                       ; $73b9: $0a
	rrca                                             ; $73ba: $0f
	dec d                                            ; $73bb: $15
	dec de                                           ; $73bc: $1b
	cpl                                              ; $73bd: $2f
	jr c, @+$61                                      ; $73be: $38 $5f

	ld l, b                                          ; $73c0: $68
	ld e, h                                          ; $73c1: $5c
	ld h, a                                          ; $73c2: $67
	ld e, a                                          ; $73c3: $5f
	ld h, e                                          ; $73c4: $63
	ld a, a                                          ; $73c5: $7f
	ld b, a                                          ; $73c6: $47
	di                                               ; $73c7: $f3
	rst SubAFromDE                                          ; $73c8: $df
	add b                                            ; $73c9: $80
	adc l                                            ; $73ca: $8d
	ld b, b                                          ; $73cb: $40
	ret nz                                           ; $73cc: $c0

	ldh [rAUD4LEN], a                                ; $73cd: $e0 $20
	ret nc                                           ; $73cf: $d0

	jr nc, jr_013_73a2                               ; $73d0: $30 $d0

	ldh a, [$30]                                     ; $73d2: $f0 $30
	ldh a, [$60]                                     ; $73d4: $f0 $60
	ldh [$c0], a                                     ; $73d6: $e0 $c0
	ret nz                                           ; $73d8: $c0

	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	ld a, b                                          ; $73db: $78
	ld a, b                                          ; $73dc: $78
	ldh [$db], a                                     ; $73dd: $e0 $db
	rst SubAFromDE                                          ; $73df: $df
	ld bc, $0289                                     ; $73e0: $01 $89 $02
	inc bc                                           ; $73e3: $03
	dec b                                            ; $73e4: $05
	rlca                                             ; $73e5: $07
	dec bc                                           ; $73e6: $0b
	dec c                                            ; $73e7: $0d
	ld d, $19                                        ; $73e8: $16 $19
	cpl                                              ; $73ea: $2f
	jr nc, jr_013_7446                               ; $73eb: $30 $59

	ld h, [hl]                                       ; $73ed: $66

jr_013_73ee:
	ld e, c                                          ; $73ee: $59
	ld h, [hl]                                       ; $73ef: $66
	ld e, [hl]                                       ; $73f0: $5e
	ld h, c                                          ; $73f1: $61
	inc l                                            ; $73f2: $2c
	inc sp                                           ; $73f3: $33
	ld de, $0e1f                                     ; $73f4: $11 $1f $0e
	ld c, $fd                                        ; $73f7: $0e $fd
	rst SubAFromDE                                          ; $73f9: $df
	ld [hl], b                                       ; $73fa: $70
	adc c                                            ; $73fb: $89
	ret z                                            ; $73fc: $c8

	ld hl, sp+$5c                                    ; $73fd: $f8 $5c
	db $e4                                           ; $73ff: $e4
	cp d                                             ; $7400: $ba
	ld h, [hl]                                       ; $7401: $66
	ld a, [$661e]                                    ; $7402: $fa $1e $66
	sbc [hl]                                         ; $7405: $9e
	db $f4                                           ; $7406: $f4
	adc h                                            ; $7407: $8c
	add sp, $78                                      ; $7408: $e8 $78
	sub b                                            ; $740a: $90
	ld [hl], b                                       ; $740b: $70
	jr nz, jr_013_73ee                               ; $740c: $20 $e0

	ld b, b                                          ; $740e: $40
	ret nz                                           ; $740f: $c0

	add b                                            ; $7410: $80
	add b                                            ; $7411: $80
	dec hl                                           ; $7412: $2b
	ret nz                                           ; $7413: $c0

	sub h                                            ; $7414: $94
	ld sp, $675b                                     ; $7415: $31 $5b $67
	ld e, [hl]                                       ; $7418: $5e
	ld h, [hl]                                       ; $7419: $66
	ld e, h                                          ; $741a: $5c
	ld l, h                                          ; $741b: $6c
	ld a, b                                          ; $741c: $78
	ld a, b                                          ; $741d: $78
	jr nc, jr_013_7450                               ; $741e: $30 $30

	ei                                               ; $7420: $fb
	rst SubAFromDE                                          ; $7421: $df

Jump_013_7422:
	ld [hl], b                                       ; $7422: $70
	sub a                                            ; $7423: $97
	call z, Call_013_5cfc                            ; $7424: $cc $fc $5c
	db $ec                                           ; $7427: $ec
	cp b                                             ; $7428: $b8
	ld a, b                                          ; $7429: $78
	ldh a, [$30]                                     ; $742a: $f0 $30
	ld [hl], a                                       ; $742c: $77
	ld l, h                                          ; $742d: $6c
	ld c, a                                          ; $742e: $4f
	ret z                                            ; $742f: $c8

	ld c, a                                          ; $7430: $4f
	cp h                                             ; $7431: $bc
	adc l                                            ; $7432: $8d
	inc bc                                           ; $7433: $03
	ld [bc], a                                       ; $7434: $02
	rlca                                             ; $7435: $07
	inc b                                            ; $7436: $04
	rrca                                             ; $7437: $0f
	dec bc                                           ; $7438: $0b
	inc e                                            ; $7439: $1c
	inc de                                           ; $743a: $13
	add hl, hl                                       ; $743b: $29
	scf                                              ; $743c: $37
	ld [hl], d                                       ; $743d: $72
	ld c, [hl]                                       ; $743e: $4e
	db $e4                                           ; $743f: $e4
	sbc h                                            ; $7440: $9c
	adc b                                            ; $7441: $88
	ld hl, sp+$70                                    ; $7442: $f8 $70
	ld [hl], b                                       ; $7444: $70
	ld sp, hl                                        ; $7445: $f9

jr_013_7446:
	rst SubAFromDE                                          ; $7446: $df
	ld h, b                                          ; $7447: $60
	sbc l                                            ; $7448: $9d
	ret nc                                           ; $7449: $d0

	or b                                             ; $744a: $b0
	ld [hl], a                                       ; $744b: $77
	ld a, [hl+]                                      ; $744c: $2a
	sbc l                                            ; $744d: $9d
	and b                                            ; $744e: $a0
	ld h, b                                          ; $744f: $60

jr_013_7450:
	ld c, a                                          ; $7450: $4f
	add [hl]                                         ; $7451: $86
	rst SubAFromDE                                          ; $7452: $df
	inc e                                            ; $7453: $1c
	sub e                                            ; $7454: $93
	ld [hl+], a                                      ; $7455: $22
	ld a, $14                                        ; $7456: $3e $14
	inc e                                            ; $7458: $1c
	inc e                                            ; $7459: $1c
	inc d                                            ; $745a: $14
	ld a, $36                                        ; $745b: $3e $36
	ld a, $36                                        ; $745d: $3e $36
	inc e                                            ; $745f: $1c
	inc d                                            ; $7460: $14
	ld l, a                                          ; $7461: $6f
	cp $77                                           ; $7462: $fe $77
	ei                                               ; $7464: $fb
	rst SubAFromDE                                          ; $7465: $df
	ld [$9e27], sp                                   ; $7466: $08 $27 $9e
	sub c                                            ; $7469: $91
	rrca                                             ; $746a: $0f
	dec c                                            ; $746b: $0d
	ld a, $3a                                        ; $746c: $3e $3a
	inc a                                            ; $746e: $3c
	inc [hl]                                         ; $746f: $34
	ld a, h                                          ; $7470: $7c
	ld l, h                                          ; $7471: $6c
	sbc h                                            ; $7472: $9c
	db $fc                                           ; $7473: $fc
	ret nc                                           ; $7474: $d0

	ldh a, [$60]                                     ; $7475: $f0 $60
	ld h, b                                          ; $7477: $60
	push af                                          ; $7478: $f5
	rst SubAFromDE                                          ; $7479: $df
	ret nz                                           ; $747a: $c0

	ld b, a                                          ; $747b: $47
	ld a, [hl+]                                      ; $747c: $2a
	ldh a, [$9e]                                     ; $747d: $f0 $9e
	db $10                                           ; $747f: $10
	ld a, e                                          ; $7480: $7b
	cp $95                                           ; $7481: $fe $95
	sbc d                                            ; $7483: $9a
	nop                                              ; $7484: $00
	jr jr_013_7487                                   ; $7485: $18 $00

jr_013_7487:
	ld e, h                                          ; $7487: $5c
	ld [$1874], sp                                   ; $7488: $08 $74 $18
	inc h                                            ; $748b: $24
	jr jr_013_7509                                   ; $748c: $18 $7b

	rst FarCall                                          ; $748e: $f7
	xor $7f                                          ; $748f: $ee $7f
	add [hl]                                         ; $7491: $86
	ld a, a                                          ; $7492: $7f
	cp $9c                                           ; $7493: $fe $9c
	inc c                                            ; $7495: $0c
	ld [$6f14], sp                                   ; $7496: $08 $14 $6f

jr_013_7499:
	cp $93                                           ; $7499: $fe $93
	inc bc                                           ; $749b: $03
	inc e                                            ; $749c: $1c
	rlca                                             ; $749d: $07
	jr c, jr_013_74a6                                ; $749e: $38 $06

	add hl, bc                                       ; $74a0: $09
	ld [bc], a                                       ; $74a1: $02
	dec e                                            ; $74a2: $1d
	nop                                              ; $74a3: $00
	dec de                                           ; $74a4: $1b
	nop                                              ; $74a5: $00

jr_013_74a6:
	ld [hl+], a                                      ; $74a6: $22
	inc sp                                           ; $74a7: $33
	ld l, [hl]                                       ; $74a8: $6e
	rst SubAFromDE                                          ; $74a9: $df
	ld [bc], a                                       ; $74aa: $02
	sbc d                                            ; $74ab: $9a
	dec b                                            ; $74ac: $05
	inc b                                            ; $74ad: $04
	ld [bc], a                                       ; $74ae: $02
	ld [$7b04], sp                                   ; $74af: $08 $04 $7b
	or l                                             ; $74b2: $b5
	ld a, a                                          ; $74b3: $7f
	and [hl]                                         ; $74b4: $a6
	ldh [$df], a                                     ; $74b5: $e0 $df
	sub b                                            ; $74b7: $90
	ld bc, $0300                                     ; $74b8: $01 $00 $03
	dec b                                            ; $74bb: $05
	ld b, $0f                                        ; $74bc: $06 $0f
	nop                                              ; $74be: $00
	rlca                                             ; $74bf: $07
	nop                                              ; $74c0: $00
	dec b                                            ; $74c1: $05
	ld b, $02                                        ; $74c2: $06 $02
	inc bc                                           ; $74c4: $03
	ld bc, $f201                                     ; $74c5: $01 $01 $f2
	ld a, a                                          ; $74c8: $7f
	ld b, h                                          ; $74c9: $44
	sub b                                            ; $74ca: $90
	ret nc                                           ; $74cb: $d0

	add b                                            ; $74cc: $80
	ld [hl], b                                       ; $74cd: $70
	ldh [rAUD2LOW], a                                ; $74ce: $e0 $18
	ldh [rAUD3HIGH], a                               ; $74d0: $e0 $1e
	add sp, $14                                      ; $74d2: $e8 $14
	ret z                                            ; $74d4: $c8

	inc [hl]                                         ; $74d5: $34
	db $10                                           ; $74d6: $10
	add sp, $20                                      ; $74d7: $e8 $20
	ret nc                                           ; $74d9: $d0

	ei                                               ; $74da: $fb
	rst SubAFromDE                                          ; $74db: $df
	inc d                                            ; $74dc: $14
	adc b                                            ; $74dd: $88
	db $10                                           ; $74de: $10
	inc d                                            ; $74df: $14
	nop                                              ; $74e0: $00
	ld [$4d40], sp                                   ; $74e1: $08 $40 $4d
	ld d, b                                          ; $74e4: $50
	ld d, l                                          ; $74e5: $55
	add hl, de                                       ; $74e6: $19
	ld e, $07                                        ; $74e7: $1e $07
	jr @+$05                                         ; $74e9: $18 $03

	ld c, h                                          ; $74eb: $4c
	add hl, hl                                       ; $74ec: $29
	ld l, $05                                        ; $74ed: $2e $05
	ld d, $02                                        ; $74ef: $16 $02
	rrca                                             ; $74f1: $0f
	inc b                                            ; $74f2: $04
	rlca                                             ; $74f3: $07
	rrca                                             ; $74f4: $0f
	ld a, e                                          ; $74f5: $7b
	adc [hl]                                         ; $74f6: $8e
	rst SubAFromDE                                          ; $74f7: $df
	add b                                            ; $74f8: $80
	rst SubAFromDE                                          ; $74f9: $df
	jr nz, jr_013_7499                               ; $74fa: $20 $9d

	jr z, jr_013_74a6                                ; $74fc: $28 $a8

	ld a, e                                          ; $74fe: $7b
	ld c, [hl]                                       ; $74ff: $4e
	adc c                                            ; $7500: $89
	sbc c                                            ; $7501: $99
	nop                                              ; $7502: $00
	sbc e                                            ; $7503: $9b
	dec a                                            ; $7504: $3d
	db $e3                                           ; $7505: $e3
	sbc [hl]                                         ; $7506: $9e
	ld h, c                                          ; $7507: $61
	cp [hl]                                          ; $7508: $be

jr_013_7509:
	ld b, c                                          ; $7509: $41
	db $fc                                           ; $750a: $fc
	ld [bc], a                                       ; $750b: $02
	ld hl, sp+$05                                    ; $750c: $f8 $05
	db $fc                                           ; $750e: $fc
	inc bc                                           ; $750f: $03
	ld sp, hl                                        ; $7510: $f9
	rlca                                             ; $7511: $07
	halt                                             ; $7512: $76
	adc [hl]                                         ; $7513: $8e
	xor h                                            ; $7514: $ac
	ld e, h                                          ; $7515: $5c
	jp $dffc                                         ; $7516: $c3 $fc $df


	ld b, b                                          ; $7519: $40
	ld a, e                                          ; $751a: $7b
	and [hl]                                         ; $751b: $a6
	ld [hl], e                                       ; $751c: $73
	rst FarCall                                          ; $751d: $f7
	ld [hl], a                                       ; $751e: $77
	ld hl, sp-$21                                    ; $751f: $f8 $df
	ld b, b                                          ; $7521: $40
	ld a, [bc]                                       ; $7522: $0a
	call c, $ddfc                                    ; $7523: $dc $fc $dd
	inc b                                            ; $7526: $04
	ld [hl], a                                       ; $7527: $77
	ld l, $80                                        ; $7528: $2e $80
	inc b                                            ; $752a: $04
	ld b, [hl]                                       ; $752b: $46
	inc b                                            ; $752c: $04
	ld h, h                                          ; $752d: $64
	nop                                              ; $752e: $00
	ld [hl+], a                                      ; $752f: $22
	jr nz, jr_013_7563                               ; $7530: $20 $31

	db $10                                           ; $7532: $10
	add hl, bc                                       ; $7533: $09
	ld b, c                                          ; $7534: $41
	ld [$0420], sp                                   ; $7535: $08 $20 $04
	ld [hl], b                                       ; $7538: $70
	ld h, h                                          ; $7539: $64
	add hl, hl                                       ; $753a: $29
	ld [hl+], a                                      ; $753b: $22
	jr jr_013_7551                                   ; $753c: $18 $13

	inc b                                            ; $753e: $04
	ld bc, $c2c2                                     ; $753f: $01 $c2 $c2
	ld h, c                                          ; $7542: $61
	ld d, c                                          ; $7543: $51
	ld sp, $082d                                     ; $7544: $31 $2d $08
	ld b, $02                                        ; $7547: $06 $02
	ld a, a                                          ; $7549: $7f
	or d                                             ; $754a: $b2
	add d                                            ; $754b: $82
	ret nz                                           ; $754c: $c0

	ld b, h                                          ; $754d: $44
	call nz, $44c4                                   ; $754e: $c4 $c4 $44

jr_013_7551:
	ld [$1048], sp                                   ; $7551: $08 $48 $10
	ld d, b                                          ; $7554: $50
	ld de, $0090                                     ; $7555: $11 $90 $00
	add d                                            ; $7558: $82
	ld [bc], a                                       ; $7559: $02
	ld b, $48                                        ; $755a: $06 $48
	inc b                                            ; $755c: $04
	ld [$9204], sp                                   ; $755d: $08 $04 $92
	ld a, [bc]                                       ; $7560: $0a
	dec b                                            ; $7561: $05
	sub h                                            ; $7562: $94

jr_013_7563:
	inc bc                                           ; $7563: $03
	ld hl, $8282                                     ; $7564: $21 $82 $82

jr_013_7567:
	add h                                            ; $7567: $84
	add h                                            ; $7568: $84
	ld e, d                                          ; $7569: $5a
	ld h, h                                          ; $756a: $64
	ld h, e                                          ; $756b: $63
	adc d                                            ; $756c: $8a
	inc hl                                           ; $756d: $23
	add b                                            ; $756e: $80
	ld a, a                                          ; $756f: $7f
	or e                                             ; $7570: $b3
	ld [hl], d                                       ; $7571: $72
	ldh a, [$9d]                                     ; $7572: $f0 $9d
	add b                                            ; $7574: $80
	adc b                                            ; $7575: $88
	ld a, e                                          ; $7576: $7b
	add [hl]                                         ; $7577: $86
	db $fd                                           ; $7578: $fd
	sbc [hl]                                         ; $7579: $9e
	jr nz, jr_013_75f6                               ; $757a: $20 $7a

	ld d, c                                          ; $757c: $51
	ld [hl], d                                       ; $757d: $72
	xor h                                            ; $757e: $ac
	rst SubAFromDE                                          ; $757f: $df
	jr nz, jr_013_7601                               ; $7580: $20 $7f

	db $fd                                           ; $7582: $fd
	rst SubAFromDE                                          ; $7583: $df
	ld [bc], a                                       ; $7584: $02
	ld l, e                                          ; $7585: $6b
	call c, $e47f                                    ; $7586: $dc $7f $e4
	ld l, a                                          ; $7589: $6f
	ldh [c], a                                       ; $758a: $e2
	ld l, e                                          ; $758b: $6b
	ld e, d                                          ; $758c: $5a
	rst FarCall                                          ; $758d: $f7
	ld a, e                                          ; $758e: $7b
	jp c, Jump_013_4376                              ; $758f: $da $76 $43

	ld [hl], c                                       ; $7592: $71
	ret z                                            ; $7593: $c8

	ld d, a                                          ; $7594: $57
	sbc [hl]                                         ; $7595: $9e
	db $dd                                           ; $7596: $dd
	ld bc, $5976                                     ; $7597: $01 $76 $59
	jp hl                                            ; $759a: $e9


	ld l, c                                          ; $759b: $69
	sub [hl]                                         ; $759c: $96
	ld a, [hl]                                       ; $759d: $7e
	db $e4                                           ; $759e: $e4
	ldh [$cc], a                                     ; $759f: $e0 $cc
	rst JumpTable                                          ; $75a1: $c7
	ld bc, $8df9                                     ; $75a2: $01 $f9 $8d
	ld h, b                                          ; $75a5: $60
	nop                                              ; $75a6: $00
	add b                                            ; $75a7: $80
	nop                                              ; $75a8: $00
	ld [bc], a                                       ; $75a9: $02
	adc h                                            ; $75aa: $8c
	ld bc, $0008                                     ; $75ab: $01 $08 $00
	jr nc, jr_013_75b0                               ; $75ae: $30 $00

jr_013_75b0:
	nop                                              ; $75b0: $00
	ld bc, $0600                                     ; $75b1: $01 $00 $06
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	ld [$9ef4], sp                                   ; $75b6: $08 $f4 $9e
	db $10                                           ; $75b9: $10
	ld a, e                                          ; $75ba: $7b
	ldh a, [$9b]                                     ; $75bb: $f0 $9b
	ld [$0010], sp                                   ; $75bd: $08 $10 $00
	and b                                            ; $75c0: $a0
	ld a, e                                          ; $75c1: $7b
	cp $9e                                           ; $75c2: $fe $9e
	ret nz                                           ; $75c4: $c0

	ld a, e                                          ; $75c5: $7b
	db $fc                                           ; $75c6: $fc
	sbc l                                            ; $75c7: $9d
	nop                                              ; $75c8: $00
	jr @-$06                                         ; $75c9: $18 $f8

	ld a, a                                          ; $75cb: $7f
	pop af                                           ; $75cc: $f1
	rst SubAFromDE                                          ; $75cd: $df
	jr nz, jr_013_7567                               ; $75ce: $20 $97

	nop                                              ; $75d0: $00
	inc de                                           ; $75d1: $13
	nop                                              ; $75d2: $00
	ld d, $00                                        ; $75d3: $16 $00
	inc c                                            ; $75d5: $0c
	nop                                              ; $75d6: $00
	inc bc                                           ; $75d7: $03
	ld a, e                                          ; $75d8: $7b
	add $7b                                          ; $75d9: $c6 $7b
	cp $96                                           ; $75db: $fe $96
	jr nz, jr_013_75e1                               ; $75dd: $20 $02

	db $10                                           ; $75df: $10
	inc b                                            ; $75e0: $04

jr_013_75e1:
	ld [$0020], sp                                   ; $75e1: $08 $20 $00
	ld de, $7700                                     ; $75e4: $11 $00 $77
	cp c                                             ; $75e7: $b9
	db $fc                                           ; $75e8: $fc
	sbc h                                            ; $75e9: $9c
	adc b                                            ; $75ea: $88
	nop                                              ; $75eb: $00
	ld h, b                                          ; $75ec: $60
	ld [hl], a                                       ; $75ed: $77
	and a                                            ; $75ee: $a7
	sbc h                                            ; $75ef: $9c
	ld b, b                                          ; $75f0: $40
	nop                                              ; $75f1: $00
	jr nz, jr_013_766f                               ; $75f2: $20 $7b

	cp $96                                           ; $75f4: $fe $96

jr_013_75f6:
	xor b                                            ; $75f6: $a8
	nop                                              ; $75f7: $00
	ld [hl], h                                       ; $75f8: $74
	nop                                              ; $75f9: $00
	ld b, d                                          ; $75fa: $42
	nop                                              ; $75fb: $00
	add b                                            ; $75fc: $80
	ld [bc], a                                       ; $75fd: $02
	add b                                            ; $75fe: $80
	ld h, a                                          ; $75ff: $67
	and [hl]                                         ; $7600: $a6

jr_013_7601:
	ld a, a                                          ; $7601: $7f
	ret nc                                           ; $7602: $d0

	add [hl]                                         ; $7603: $86
	ld b, c                                          ; $7604: $41
	ld b, $40                                        ; $7605: $06 $40
	dec h                                            ; $7607: $25
	nop                                              ; $7608: $00
	dec d                                            ; $7609: $15
	nop                                              ; $760a: $00
	inc c                                            ; $760b: $0c
	ld b, b                                          ; $760c: $40
	dec de                                           ; $760d: $1b
	jr nz, @-$76                                     ; $760e: $20 $88

	add b                                            ; $7610: $80
	ld sp, $6700                                     ; $7611: $31 $00 $67
	nop                                              ; $7614: $00
	ld b, c                                          ; $7615: $41
	nop                                              ; $7616: $00
	ld hl, $1e42                                     ; $7617: $21 $42 $1e
	jr nz, jr_013_761c                               ; $761a: $20 $00

jr_013_761c:
	ld [bc], a                                       ; $761c: $02
	cp $7f                                           ; $761d: $fe $7f
	rst JumpTable                                          ; $761f: $c7
	sbc [hl]                                         ; $7620: $9e
	add h                                            ; $7621: $84
	ld a, e                                          ; $7622: $7b
	cp $97                                           ; $7623: $fe $97
	ld [$10e0], sp                                   ; $7625: $08 $e0 $10
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	ld e, $00                                        ; $762a: $1e $00
	inc hl                                           ; $762c: $23
	ld a, e                                          ; $762d: $7b
	and $9b                                          ; $762e: $e6 $9b
	ldh [rSB], a                                     ; $7630: $e0 $01
	or b                                             ; $7632: $b0
	ld bc, $817b                                     ; $7633: $01 $7b $81
	ld [hl], a                                       ; $7636: $77
	add sp, -$80                                     ; $7637: $e8 $80
	ldh [c], a                                       ; $7639: $e2
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	inc bc                                           ; $763c: $03
	inc bc                                           ; $763d: $03
	ld h, h                                          ; $763e: $64
	rlca                                             ; $763f: $07
	dec de                                           ; $7640: $1b
	adc h                                            ; $7641: $8c
	dec e                                            ; $7642: $1d
	ld b, d                                          ; $7643: $42

Call_013_7644:
	cpl                                              ; $7644: $2f
	jr nc, jr_013_76a6                               ; $7645: $30 $5f

	ld h, b                                          ; $7647: $60
	cp a                                             ; $7648: $bf
	ret nz                                           ; $7649: $c0

	ld a, e                                          ; $764a: $7b
	add h                                            ; $764b: $84
	ld a, e                                          ; $764c: $7b
	add h                                            ; $764d: $84
	or a                                             ; $764e: $b7
	ret z                                            ; $764f: $c8

	ld d, a                                          ; $7650: $57
	ld l, b                                          ; $7651: $68
	daa                                              ; $7652: $27
	jr c, jr_013_768c                                ; $7653: $38 $37

	jr jr_013_7662                                   ; $7655: $18 $0b

	inc b                                            ; $7657: $04
	add b                                            ; $7658: $80
	ld d, h                                          ; $7659: $54
	rlca                                             ; $765a: $07
	inc bc                                           ; $765b: $03
	inc bc                                           ; $765c: $03
	dec bc                                           ; $765d: $0b
	inc bc                                           ; $765e: $03
	inc b                                            ; $765f: $04
	daa                                              ; $7660: $27
	dec de                                           ; $7661: $1b

jr_013_7662:
	inc c                                            ; $7662: $0c
	rla                                              ; $7663: $17
	ld [$243b], sp                                   ; $7664: $08 $3b $24
	ld e, c                                          ; $7667: $59
	ld h, [hl]                                       ; $7668: $66
	cp l                                             ; $7669: $bd
	jp nz, $827d                                     ; $766a: $c2 $7d $82

	ld a, l                                          ; $766d: $7d
	add d                                            ; $766e: $82

jr_013_766f:
	xor e                                            ; $766f: $ab
	call nc, Call_013_605f                           ; $7670: $d4 $5f $60
	cpl                                              ; $7673: $2f
	jr nc, @+$37                                     ; $7674: $30 $35

	ld a, [bc]                                       ; $7676: $0a
	dec c                                            ; $7677: $0d
	sbc l                                            ; $7678: $9d
	ld l, d                                          ; $7679: $6a
	inc c                                            ; $767a: $0c
	ld a, e                                          ; $767b: $7b
	ldh [rIE], a                                     ; $767c: $e0 $ff
	rst SubAFromDE                                          ; $767e: $df
	rlca                                             ; $767f: $07
	sbc c                                            ; $7680: $99
	inc c                                            ; $7681: $0c
	rrca                                             ; $7682: $0f
	inc de                                           ; $7683: $13
	inc e                                            ; $7684: $1c
	cpl                                              ; $7685: $2f
	jr nc, @+$79                                     ; $7686: $30 $77

	cp [hl]                                          ; $7688: $be

jr_013_7689:
	ld h, a                                          ; $7689: $67
	cp $77                                           ; $768a: $fe $77

jr_013_768c:
	ldh a, [c]                                       ; $768c: $f2
	ld a, a                                          ; $768d: $7f
	db $ec                                           ; $768e: $ec
	ld a, a                                          ; $768f: $7f

jr_013_7690:
	add sp, -$21                                     ; $7690: $e8 $df
	rlca                                             ; $7692: $07
	rst $38                                          ; $7693: $ff
	rst SubAFromDE                                          ; $7694: $df
	ldh [hDisp1_WY], a                                     ; $7695: $e0 $95
	jr nc, jr_013_7689                               ; $7697: $30 $f0

	ret z                                            ; $7699: $c8

	jr c, jr_013_7690                                ; $769a: $38 $f4

	inc c                                            ; $769c: $0c
	db $f4                                           ; $769d: $f4
	inc c                                            ; $769e: $0c
	ld a, [$6706]                                    ; $769f: $fa $06 $67
	cp $77                                           ; $76a2: $fe $77
	ldh a, [c]                                       ; $76a4: $f2
	ld a, a                                          ; $76a5: $7f

jr_013_76a6:
	db $ec                                           ; $76a6: $ec
	ld a, a                                          ; $76a7: $7f
	add sp, -$21                                     ; $76a8: $e8 $df
	ldh [$f7], a                                     ; $76aa: $e0 $f7
	db $dd                                           ; $76ac: $dd
	ld bc, $0299                                     ; $76ad: $01 $99 $02
	inc bc                                           ; $76b0: $03
	ld [bc], a                                       ; $76b1: $02
	inc bc                                           ; $76b2: $03
	dec b                                            ; $76b3: $05
	ld b, $5f                                        ; $76b4: $06 $5f
	cp $7f                                           ; $76b6: $fe $7f
	ldh a, [c]                                       ; $76b8: $f2
	ld [hl], a                                       ; $76b9: $77
	and b                                            ; $76ba: $a0
	sub e                                            ; $76bb: $93
	jr jr_013_76dd                                   ; $76bc: $18 $1f

	ld h, a                                          ; $76be: $67
	ld a, b                                          ; $76bf: $78
	rst SubAFromDE                                          ; $76c0: $df
	ldh [$bf], a                                     ; $76c1: $e0 $bf
	ret nz                                           ; $76c3: $c0

	ld a, a                                          ; $76c4: $7f
	add b                                            ; $76c5: $80
	rst $38                                          ; $76c6: $ff
	nop                                              ; $76c7: $00
	ld b, a                                          ; $76c8: $47
	cp $7f                                           ; $76c9: $fe $7f
	sbc $dd                                          ; $76cb: $de $dd
	ld bc, $7fe7                                     ; $76cd: $01 $e7 $7f
	sbc $7f                                          ; $76d0: $de $7f
	jp z, $c67f                                      ; $76d2: $ca $7f $c6

	ld a, a                                          ; $76d5: $7f
	jp nz, $be7f                                     ; $76d6: $c2 $7f $be

	ld a, a                                          ; $76d9: $7f
	cp d                                             ; $76da: $ba
	ld [hl], a                                       ; $76db: $77
	ld [hl], d                                       ; $76dc: $72

jr_013_76dd:
	ldh [$df], a                                     ; $76dd: $e0 $df
	rst SubAFromDE                                          ; $76df: $df
	ld bc, $03df                                     ; $76e0: $01 $df $03
	sub l                                            ; $76e3: $95
	inc b                                            ; $76e4: $04
	rlca                                             ; $76e5: $07
	dec bc                                           ; $76e6: $0b
	inc c                                            ; $76e7: $0c
	rla                                              ; $76e8: $17
	jr jr_013_771a                                   ; $76e9: $18 $2f

	jr nc, @+$71                                     ; $76eb: $30 $6f

	ld [hl], b                                       ; $76ed: $70
	di                                               ; $76ee: $f3
	rst SubAFromDE                                          ; $76ef: $df
	rrca                                             ; $76f0: $0f
	sbc c                                            ; $76f1: $99
	ld [hl], b                                       ; $76f2: $70
	ld a, a                                          ; $76f3: $7f
	rst GetHLinHL                                          ; $76f4: $cf
	ldh a, [$3f]                                     ; $76f5: $f0 $3f
	ret nz                                           ; $76f7: $c0

	ld e, a                                          ; $76f8: $5f
	add b                                            ; $76f9: $80
	ld d, a                                          ; $76fa: $57
	ld b, d                                          ; $76fb: $42

Call_013_76fc:
	db $d3                                           ; $76fc: $d3
	ld bc, $7efb                                     ; $76fd: $01 $fb $7e
	db $f4                                           ; $7700: $f4
	ld [hl], a                                       ; $7701: $77
	ld b, [hl]                                       ; $7702: $46
	ld [hl], a                                       ; $7703: $77
	ld b, h                                          ; $7704: $44
	ld b, a                                          ; $7705: $47
	cp $77                                           ; $7706: $fe $77
	ld [$e47f], a                                    ; $7708: $ea $7f $e4
	ld a, a                                          ; $770b: $7f
	ldh [$7f], a                                     ; $770c: $e0 $7f
	sbc h                                            ; $770e: $9c
	ld a, a                                          ; $770f: $7f
	sbc b                                            ; $7710: $98
	ld a, a                                          ; $7711: $7f
	sub h                                            ; $7712: $94
	ld a, a                                          ; $7713: $7f
	sub b                                            ; $7714: $90
	ld a, a                                          ; $7715: $7f
	adc h                                            ; $7716: $8c
	rst SubAFromDE                                          ; $7717: $df
	inc bc                                           ; $7718: $03
	ccf                                              ; $7719: $3f

jr_013_771a:
	ld [hl], $57                                     ; $771a: $36 $57
	inc d                                            ; $771c: $14
	ld a, a                                          ; $771d: $7f
	adc b                                            ; $771e: $88
	ld a, a                                          ; $771f: $7f
	add h                                            ; $7720: $84
	ld a, a                                          ; $7721: $7f
	add b                                            ; $7722: $80
	rst SubAFromDE                                          ; $7723: $df
	rrca                                             ; $7724: $0f
	rlca                                             ; $7725: $07
	ld b, b                                          ; $7726: $40
	halt                                             ; $7727: $76
	cp h                                             ; $7728: $bc
	ld [hl], a                                       ; $7729: $77
	ld b, b                                          ; $772a: $40

Call_013_772b:
	ld [hl], a                                       ; $772b: $77
	ld a, $57                                        ; $772c: $3e $57
	add sp, -$65                                     ; $772e: $e8 $9b
	ld c, $0f                                        ; $7730: $0e $0f
	ld sp, $4f3e                                     ; $7732: $31 $3e $4f
	ld b, d                                          ; $7735: $42
	ld e, a                                          ; $7736: $5f
	ld b, b                                          ; $7737: $40
	rst $38                                          ; $7738: $ff
	rst SubAFromDE                                          ; $7739: $df
	cp $9d                                           ; $773a: $fe $9d
	ld bc, $7bff                                     ; $773c: $01 $ff $7b
	db $fd                                           ; $773f: $fd
	ld c, d                                          ; $7740: $4a
	and b                                            ; $7741: $a0
	push af                                          ; $7742: $f5
	rst SubAFromDE                                          ; $7743: $df
	ret nz                                           ; $7744: $c0

	ld a, [hl]                                       ; $7745: $7e
	ld c, [hl]                                       ; $7746: $4e
	sbc c                                            ; $7747: $99
	call z, $f23c                                    ; $7748: $cc $3c $f2
	ld c, $fd                                        ; $774b: $0e $fd
	inc bc                                           ; $774d: $03
	ld e, a                                          ; $774e: $5f
	ret c                                            ; $774f: $d8

	db $eb                                           ; $7750: $eb
	rst SubAFromDE                                          ; $7751: $df
	add b                                            ; $7752: $80
	sub a                                            ; $7753: $97
	ld b, b                                          ; $7754: $40
	ret nz                                           ; $7755: $c0

	and b                                            ; $7756: $a0
	ld h, b                                          ; $7757: $60
	and b                                            ; $7758: $a0
	ld h, b                                          ; $7759: $60
	ret nc                                           ; $775a: $d0

	jr nc, jr_013_779b                               ; $775b: $30 $3e

	ld c, [hl]                                       ; $775d: $4e
	ld c, a                                          ; $775e: $4f
	cp $65                                           ; $775f: $fe $65
	jp z, $f276                                      ; $7761: $ca $76 $f2

	ld d, a                                          ; $7764: $57
	cp $65                                           ; $7765: $fe $65
	cp b                                             ; $7767: $b8
	ld a, [hl+]                                      ; $7768: $2a
	ld [bc], a                                       ; $7769: $02
	ld sp, hl                                        ; $776a: $f9
	rst SubAFromDE                                          ; $776b: $df
	dec c                                            ; $776c: $0d
	adc e                                            ; $776d: $8b
	ld [de], a                                       ; $776e: $12
	rra                                              ; $776f: $1f
	daa                                              ; $7770: $27
	jr c, jr_013_77ca                                ; $7771: $38 $57

	ld l, b                                          ; $7773: $68
	cp a                                             ; $7774: $bf
	ret nz                                           ; $7775: $c0

	cp l                                             ; $7776: $bd
	jp nz, Jump_013_724d                             ; $7777: $c2 $4d $72

	ld d, c                                          ; $777a: $51
	ld l, [hl]                                       ; $777b: $6e
	ld h, a                                          ; $777c: $67
	ld a, b                                          ; $777d: $78
	add hl, de                                       ; $777e: $19
	rra                                              ; $777f: $1f
	ld c, $0e                                        ; $7780: $0e $0e
	rst FarCall                                          ; $7782: $f7
	rst SubAFromDE                                          ; $7783: $df
	add b                                            ; $7784: $80
	adc l                                            ; $7785: $8d
	ld b, b                                          ; $7786: $40
	ret nz                                           ; $7787: $c0

	ld b, b                                          ; $7788: $40
	ret nz                                           ; $7789: $c0

	and b                                            ; $778a: $a0
	ld h, b                                          ; $778b: $60
	ldh [rAUD4LEN], a                                ; $778c: $e0 $20
	sub b                                            ; $778e: $90
	ld [hl], b                                       ; $778f: $70
	jr nz, @-$1e                                     ; $7790: $20 $e0

	ld h, b                                          ; $7792: $60
	ldh [rLCDC], a                                   ; $7793: $e0 $40
	ret nz                                           ; $7795: $c0

	add b                                            ; $7796: $80
	add b                                            ; $7797: $80
	ld sp, hl                                        ; $7798: $f9
	rst SubAFromDE                                          ; $7799: $df
	inc bc                                           ; $779a: $03

jr_013_779b:
	add l                                            ; $779b: $85
	inc b                                            ; $779c: $04
	rlca                                             ; $779d: $07
	add hl, de                                       ; $779e: $19
	ld e, $23                                        ; $779f: $1e $23
	inc a                                            ; $77a1: $3c
	dec hl                                           ; $77a2: $2b
	inc [hl]                                         ; $77a3: $34
	inc l                                            ; $77a4: $2c
	inc sp                                           ; $77a5: $33
	ld e, [hl]                                       ; $77a6: $5e
	ld h, c                                          ; $77a7: $61
	ld e, a                                          ; $77a8: $5f
	ld h, b                                          ; $77a9: $60
	dec hl                                           ; $77aa: $2b
	inc [hl]                                         ; $77ab: $34
	daa                                              ; $77ac: $27
	jr c, @+$19                                      ; $77ad: $38 $17

	jr jr_013_77bc                                   ; $77af: $18 $0b

	inc c                                            ; $77b1: $0c
	inc c                                            ; $77b2: $0c
	rrca                                             ; $77b3: $0f

jr_013_77b4:
	rlca                                             ; $77b4: $07
	rlca                                             ; $77b5: $07
	db $fd                                           ; $77b6: $fd
	rst SubAFromDE                                          ; $77b7: $df
	ldh [hDisp0_BGP], a                                     ; $77b8: $e0 $85
	jr jr_013_77b4                                   ; $77ba: $18 $f8

jr_013_77bc:
	call nz, $fa3c                                   ; $77bc: $c4 $3c $fa
	ld b, $fd                                        ; $77bf: $06 $fd
	inc bc                                           ; $77c1: $03
	call $3f33                                       ; $77c2: $cd $33 $3f
	jp $03fd                                         ; $77c5: $c3 $fd $03


	sbc l                                            ; $77c8: $9d
	ld h, e                                          ; $77c9: $63

jr_013_77ca:
	jp z, $c236                                      ; $77ca: $ca $36 $c2

	ld a, $04                                        ; $77cd: $3e $04
	db $fc                                           ; $77cf: $fc
	ld a, b                                          ; $77d0: $78
	ld hl, sp-$40                                    ; $77d1: $f8 $c0
	ret nz                                           ; $77d3: $c0

	db $ed                                           ; $77d4: $ed
	db $db                                           ; $77d5: $db
	ld bc, $029e                                     ; $77d6: $01 $9e $02
	ld a, e                                          ; $77d9: $7b
	xor d                                            ; $77da: $aa
	sbc l                                            ; $77db: $9d
	dec b                                            ; $77dc: $05
	ld b, $f3                                        ; $77dd: $06 $f3
	rst SubAFromDE                                          ; $77df: $df
	inc bc                                           ; $77e0: $03
	sub b                                            ; $77e1: $90
	ld [hl], h                                       ; $77e2: $74
	ld [hl], a                                       ; $77e3: $77
	adc b                                            ; $77e4: $88
	rst $38                                          ; $77e5: $ff
	ld sp, $3bce                                     ; $77e6: $31 $ce $3b
	call nz, $807f                                   ; $77e9: $c4 $7f $80
	ld a, [hl]                                       ; $77ec: $7e
	add c                                            ; $77ed: $81
	xor $11                                          ; $77ee: $ee $11
	pop af                                           ; $77f0: $f1
	ld e, e                                          ; $77f1: $5b
	ld e, [hl]                                       ; $77f2: $5e
	ld l, a                                          ; $77f3: $6f
	ld e, d                                          ; $77f4: $5a
	rst SubAFromDE                                          ; $77f5: $df
	ret nz                                           ; $77f6: $c0

	ld a, a                                          ; $77f7: $7f
	xor d                                            ; $77f8: $aa
	adc l                                            ; $77f9: $8d
	and h                                            ; $77fa: $a4
	ld a, h                                          ; $77fb: $7c
	jp nz, $d93e                                     ; $77fc: $c2 $3e $d9

	daa                                              ; $77ff: $27
	db $fd                                           ; $7800: $fd
	inc bc                                           ; $7801: $03
	ld a, [$f206]                                    ; $7802: $fa $06 $f2
	ld c, $05                                        ; $7805: $0e $05
	ld b, $04                                        ; $7807: $06 $04
	rlca                                             ; $7809: $07
	ld [bc], a                                       ; $780a: $02
	inc bc                                           ; $780b: $03
	reti                                             ; $780c: $d9


	ld bc, $8def                                     ; $780d: $01 $ef $8d
	rst $38                                          ; $7810: $ff
	nop                                              ; $7811: $00
	ld a, a                                          ; $7812: $7f
	add b                                            ; $7813: $80
	scf                                              ; $7814: $37
	ret z                                            ; $7815: $c8

	ld a, e                                          ; $7816: $7b
	add h                                            ; $7817: $84
	ld a, e                                          ; $7818: $7b
	add h                                            ; $7819: $84
	dec sp                                           ; $781a: $3b
	call nz, $d827                                   ; $781b: $c4 $27 $d8
	adc c                                            ; $781e: $89
	cp $76                                           ; $781f: $fe $76
	ld [hl], a                                       ; $7821: $77
	ld c, a                                          ; $7822: $4f
	jp c, $b98d                                      ; $7823: $da $8d $b9

	ld b, a                                          ; $7826: $47
	reti                                             ; $7827: $d9


	daa                                              ; $7828: $27
	jp c, $9a26                                      ; $7829: $da $26 $9a

	ld h, [hl]                                       ; $782c: $66
	ld [hl-], a                                      ; $782d: $32
	adc $c4                                          ; $782e: $ce $c4
	inc a                                            ; $7830: $3c
	ret c                                            ; $7831: $d8

	jr c, @-$6e                                      ; $7832: $38 $90

	ld [hl], b                                       ; $7834: $70
	ld h, b                                          ; $7835: $60
	ldh [$5f], a                                     ; $7836: $e0 $5f
	ld [$4637], sp                                   ; $7838: $08 $37 $46
	ld a, a                                          ; $783b: $7f
	sub h                                            ; $783c: $94
	sub c                                            ; $783d: $91
	ld [bc], a                                       ; $783e: $02
	dec bc                                           ; $783f: $0b
	inc bc                                           ; $7840: $03
	ld [bc], a                                       ; $7841: $02
	dec b                                            ; $7842: $05
	stop                                             ; $7843: $10 $00
	nop                                              ; $7845: $00
	ld a, [bc]                                       ; $7846: $0a
	nop                                              ; $7847: $00
	ld b, $04                                        ; $7848: $06 $04
	ld c, $08                                        ; $784a: $0e $08
	push af                                          ; $784c: $f5
	rst SubAFromDE                                          ; $784d: $df
	ld a, b                                          ; $784e: $78
	sub b                                            ; $784f: $90
	add h                                            ; $7850: $84
	db $fc                                           ; $7851: $fc
	cp $02                                           ; $7852: $fe $02
	db $ed                                           ; $7854: $ed
	inc bc                                           ; $7855: $03
	add d                                            ; $7856: $82
	nop                                              ; $7857: $00
	add b                                            ; $7858: $80
	nop                                              ; $7859: $00
	inc l                                            ; $785a: $2c
	nop                                              ; $785b: $00
	ld a, [hl]                                       ; $785c: $7e
	nop                                              ; $785d: $00
	ld a, [hl-]                                      ; $785e: $3a
	ldh a, [$df]                                     ; $785f: $f0 $df
	inc a                                            ; $7861: $3c
	sub c                                            ; $7862: $91
	ld b, d                                          ; $7863: $42
	ld a, [hl]                                       ; $7864: $7e
	ld [hl], d                                       ; $7865: $72
	ld c, $00                                        ; $7866: $0e $00
	inc c                                            ; $7868: $0c
	ld b, e                                          ; $7869: $43
	ld bc, $01e2                                     ; $786a: $01 $e2 $01
	add hl, sp                                       ; $786d: $39
	nop                                              ; $786e: $00
	add hl, sp                                       ; $786f: $39
	nop                                              ; $7870: $00
	ld a, e                                          ; $7871: $7b
	cp c                                             ; $7872: $b9
	db $ec                                           ; $7873: $ec
	ld l, [hl]                                       ; $7874: $6e
	ld [hl], d                                       ; $7875: $72
	halt                                             ; $7876: $76
	ld a, h                                          ; $7877: $7c
	sub c                                            ; $7878: $91
	ld d, $18                                        ; $7879: $16 $18
	inc l                                            ; $787b: $2c
	jr nc, jr_013_78aa                               ; $787c: $30 $2c

	jr nc, jr_013_7894                               ; $787e: $30 $14

	jr @+$18                                         ; $7880: $18 $16

	jr jr_013_788d                                   ; $7882: $18 $09

	ld c, $14                                        ; $7884: $0e $14
	inc b                                            ; $7886: $04
	ld a, e                                          ; $7887: $7b
	add b                                            ; $7888: $80
	sbc [hl]                                         ; $7889: $9e
	dec bc                                           ; $788a: $0b
	ld a, e                                          ; $788b: $7b
	ld a, [hl]                                       ; $788c: $7e

jr_013_788d:
	ld a, e                                          ; $788d: $7b

jr_013_788e:
	db $10                                           ; $788e: $10
	ld sp, hl                                        ; $788f: $f9
	add e                                            ; $7890: $83
	ld [hl], c                                       ; $7891: $71
	nop                                              ; $7892: $00
	ld [hl], b                                       ; $7893: $70

jr_013_7894:
	nop                                              ; $7894: $00
	pop bc                                           ; $7895: $c1
	nop                                              ; $7896: $00
	jp $0f00                                         ; $7897: $c3 $00 $0f


	nop                                              ; $789a: $00
	ld d, $00                                        ; $789b: $16 $00
	inc c                                            ; $789d: $0c
	ld bc, $0080                                     ; $789e: $01 $80 $00
	sub d                                            ; $78a1: $92
	nop                                              ; $78a2: $00
	call nz, Call_013_6100                           ; $78a3: $c4 $00 $61
	add b                                            ; $78a6: $80
	ld c, $d1                                        ; $78a7: $0e $d1
	ld b, c                                          ; $78a9: $41

jr_013_78aa:
	ld e, a                                          ; $78aa: $5f
	ld e, $1e                                        ; $78ab: $1e $1e
	db $fd                                           ; $78ad: $fd
	sbc [hl]                                         ; $78ae: $9e
	sub e                                            ; $78af: $93
	ld a, e                                          ; $78b0: $7b
	db $e4                                           ; $78b1: $e4
	adc e                                            ; $78b2: $8b
	call $ee00                                       ; $78b3: $cd $00 $ee
	ld bc, $21c6                                     ; $78b6: $01 $c6 $21
	add h                                            ; $78b9: $84
	ld b, e                                          ; $78ba: $43
	ld c, $80                                        ; $78bb: $0e $80
	inc a                                            ; $78bd: $3c
	inc bc                                           ; $78be: $03
	db $10                                           ; $78bf: $10
	inc bc                                           ; $78c0: $03
	ld sp, $040d                                     ; $78c1: $31 $0d $04
	ld a, h                                          ; $78c4: $7c
	ld a, b                                          ; $78c5: $78
	ld a, b                                          ; $78c6: $78
	ld e, a                                          ; $78c7: $5f
	ld a, [de]                                       ; $78c8: $1a
	ld a, e                                          ; $78c9: $7b
	sbc b                                            ; $78ca: $98
	sbc [hl]                                         ; $78cb: $9e
	ret nc                                           ; $78cc: $d0

	ld a, d                                          ; $78cd: $7a
	ld b, $7b                                        ; $78ce: $06 $7b
	ldh a, [rPCM34]                                  ; $78d0: $f0 $77
	adc [hl]                                         ; $78d2: $8e
	ld l, $4e                                        ; $78d3: $2e $4e
	cp $df                                           ; $78d5: $fe $df
	ld [$fd7f], sp                                   ; $78d7: $08 $7f $fd
	sbc h                                            ; $78da: $9c
	nop                                              ; $78db: $00
	ld a, $41                                        ; $78dc: $3e $41
	ld [hl], a                                       ; $78de: $77
	ld a, [$fd77]                                    ; $78df: $fa $77 $fd
	xor $9b                                          ; $78e2: $ee $9b
	ld b, d                                          ; $78e4: $42
	inc h                                            ; $78e5: $24
	nop                                              ; $78e6: $00
	jr jr_013_7964                                   ; $78e7: $18 $7b

	cp $7f                                           ; $78e9: $fe $7f
	ld a, [$f67f]                                    ; $78eb: $fa $7f $f6
	ld b, [hl]                                       ; $78ee: $46
	jp z, $fd7f                                      ; $78ef: $ca $7f $fd

	sub c                                            ; $78f2: $91
	nop                                              ; $78f3: $00
	add hl, bc                                       ; $78f4: $09
	dec b                                            ; $78f5: $05
	nop                                              ; $78f6: $00
	inc bc                                           ; $78f7: $03
	nop                                              ; $78f8: $00
	cpl                                              ; $78f9: $2f
	jr nc, jr_013_78ff                               ; $78fa: $30 $03

	nop                                              ; $78fc: $00
	dec b                                            ; $78fd: $05
	nop                                              ; $78fe: $00

jr_013_78ff:
	ld bc, $7b08                                     ; $78ff: $01 $08 $7b
	ldh a, [rDMA]                                    ; $7902: $f0 $46
	ld d, d                                          ; $7904: $52
	sbc l                                            ; $7905: $9d
	jr nz, jr_013_7948                               ; $7906: $20 $40

	ld a, d                                          ; $7908: $7a
	jp z, $e89a                                      ; $7909: $ca $9a $e8

	jr jr_013_788e                                   ; $790c: $18 $80

	nop                                              ; $790e: $00
	ld b, b                                          ; $790f: $40
	ld a, e                                          ; $7910: $7b
	db $f4                                           ; $7911: $f4
	ld c, l                                          ; $7912: $4d
	call nc, $fb7f                                   ; $7913: $d4 $7f $fb
	sbc e                                            ; $7916: $9b
	db $10                                           ; $7917: $10
	ld de, $0801                                     ; $7918: $11 $01 $08
	ld [hl], a                                       ; $791b: $77
	ret nz                                           ; $791c: $c0

	sbc l                                            ; $791d: $9d
	sbc a                                            ; $791e: $9f
	ldh [$6f], a                                     ; $791f: $e0 $6f
	ret nz                                           ; $7921: $c0

	sbc l                                            ; $7922: $9d
	ld de, $6f10                                     ; $7923: $11 $10 $6f
	cp [hl]                                          ; $7926: $be
	ld h, a                                          ; $7927: $67
	cp h                                             ; $7928: $bc
	rst SubAFromDE                                          ; $7929: $df
	db $10                                           ; $792a: $10
	ld l, a                                          ; $792b: $6f
	ret nz                                           ; $792c: $c0

	ld a, l                                          ; $792d: $7d
	ldh a, [$6f]                                     ; $792e: $f0 $6f
	ret nz                                           ; $7930: $c0

	ld a, e                                          ; $7931: $7b
	ldh a, [$ee]                                     ; $7932: $f0 $ee
	sub e                                            ; $7934: $93
	ld b, $07                                        ; $7935: $06 $07
	ld c, $0f                                        ; $7937: $0e $0f
	ld e, $1f                                        ; $7939: $1e $1f
	ld e, $1f                                        ; $793b: $1e $1f
	ld c, $0f                                        ; $793d: $0e $0f
	ld [bc], a                                       ; $793f: $02
	inc bc                                           ; $7940: $03
	ld a, e                                          ; $7941: $7b
	ret nz                                           ; $7942: $c0

	ldh a, [c]                                       ; $7943: $f2
	sbc l                                            ; $7944: $9d
	ld e, a                                          ; $7945: $5f
	and b                                            ; $7946: $a0
	ld c, e                                          ; $7947: $4b

jr_013_7948:
	cp $9d                                           ; $7948: $fe $9d
	jr nz, jr_013_795b                               ; $794a: $20 $0f

	cp $77                                           ; $794c: $fe $77
	ret nc                                           ; $794e: $d0

	rla                                              ; $794f: $17
	cp $43                                           ; $7950: $fe $43
	jp z, $fe4b                                      ; $7952: $ca $4b $fe

	ld e, h                                          ; $7955: $5c
	cp [hl]                                          ; $7956: $be
	sbc c                                            ; $7957: $99
	dec bc                                           ; $7958: $0b
	rrca                                             ; $7959: $0f
	inc d                                            ; $795a: $14

jr_013_795b:
	inc e                                            ; $795b: $1c
	jr z, jr_013_7996                                ; $795c: $28 $38

	ld [hl], a                                       ; $795e: $77
	cp $7f                                           ; $795f: $fe $7f
	ld hl, sp+$7f                                    ; $7961: $f8 $7f
	db $f4                                           ; $7963: $f4

jr_013_7964:
	ld a, a                                          ; $7964: $7f
	ldh a, [$df]                                     ; $7965: $f0 $df
	inc bc                                           ; $7967: $03
	ld e, l                                          ; $7968: $5d
	ld a, [bc]                                       ; $7969: $0a
	ld a, h                                          ; $796a: $7c
	or [hl]                                          ; $796b: $b6
	sbc l                                            ; $796c: $9d
	inc de                                           ; $796d: $13
	rra                                              ; $796e: $1f
	ld h, a                                          ; $796f: $67
	ldh [c], a                                       ; $7970: $e2
	ld [hl], a                                       ; $7971: $77
	ldh [$7f], a                                     ; $7972: $e0 $7f
	ldh a, [c]                                       ; $7974: $f2
	ld a, a                                          ; $7975: $7f

jr_013_7976:
	xor $67                                          ; $7976: $ee $67
	ldh [$df], a                                     ; $7978: $e0 $df
	rlca                                             ; $797a: $07
	sub l                                            ; $797b: $95
	jr jr_013_799d                                   ; $797c: $18 $1f

	daa                                              ; $797e: $27
	ccf                                              ; $797f: $3f
	ld e, b                                          ; $7980: $58
	ld a, b                                          ; $7981: $78
	ld d, b                                          ; $7982: $50
	ld [hl], b                                       ; $7983: $70
	and b                                            ; $7984: $a0
	ldh [$67], a                                     ; $7985: $e0 $67
	cp $7f                                           ; $7987: $fe $7f
	db $f4                                           ; $7989: $f4
	ld a, a                                          ; $798a: $7f
	ldh a, [$7f]                                     ; $798b: $f0 $7f
	db $ec                                           ; $798d: $ec
	ld a, a                                          ; $798e: $7f
	add sp, -$21                                     ; $798f: $e8 $df
	rlca                                             ; $7991: $07
	ld l, d                                          ; $7992: $6a
	nop                                              ; $7993: $00
	db $f4                                           ; $7994: $f4
	adc b                                            ; $7995: $88

jr_013_7996:
	inc b                                            ; $7996: $04
	ld [bc], a                                       ; $7997: $02
	jr nz, jr_013_7976                               ; $7998: $20 $dc

	ld hl, sp+$0c                                    ; $799a: $f8 $0c
	db $f4                                           ; $799c: $f4

jr_013_799d:
	ldh a, [c]                                       ; $799d: $f2
	ld c, $fd                                        ; $799e: $0e $fd
	inc bc                                           ; $79a0: $03
	db $fd                                           ; $79a1: $fd
	inc bc                                           ; $79a2: $03
	ldh a, [c]                                       ; $79a3: $f2
	ld c, $16                                        ; $79a4: $0e $16
	db $ec                                           ; $79a6: $ec
	ld hl, sp-$0e                                    ; $79a7: $f8 $f2
	ld [rRAMG], sp                                   ; $79a9: $08 $00 $00
	db $10                                           ; $79ac: $10
	ldh [$da], a                                     ; $79ad: $e0 $da
	sub [hl]                                         ; $79af: $96
	inc h                                            ; $79b0: $24
	ld [bc], a                                       ; $79b1: $02
	jr nz, @+$14                                     ; $79b2: $20 $12

	nop                                              ; $79b4: $00
	db $fc                                           ; $79b5: $fc
	ret c                                            ; $79b6: $d8

	inc b                                            ; $79b7: $04
	db $fc                                           ; $79b8: $fc
	ld h, a                                          ; $79b9: $67
	ret nz                                           ; $79ba: $c0

	sbc b                                            ; $79bb: $98
	inc d                                            ; $79bc: $14
	db $ec                                           ; $79bd: $ec
	ld hl, sp-$30                                    ; $79be: $f8 $d0
	inc b                                            ; $79c0: $04
	jr nz, jr_013_79c7                               ; $79c1: $20 $04

	ld a, e                                          ; $79c3: $7b
	xor b                                            ; $79c4: $a8
	ldh [$dc], a                                     ; $79c5: $e0 $dc

jr_013_79c7:
	ld a, a                                          ; $79c7: $7f
	jp c, $0298                                      ; $79c8: $da $98 $02

	inc [hl]                                         ; $79cb: $34
	nop                                              ; $79cc: $00
	ld c, b                                          ; $79cd: $48
	nop                                              ; $79ce: $00
	inc d                                            ; $79cf: $14
	add e                                            ; $79d0: $83
	ld a, e                                          ; $79d1: $7b
	adc a                                            ; $79d2: $8f
	sbc [hl]                                         ; $79d3: $9e
	jr nz, jr_013_7a51                               ; $79d4: $20 $7b

	cp $f3                                           ; $79d6: $fe $f3
	sub l                                            ; $79d8: $95
	db $10                                           ; $79d9: $10
	inc b                                            ; $79da: $04
	ld [$0002], sp                                   ; $79db: $08 $02 $00
	inc bc                                           ; $79de: $03
	nop                                              ; $79df: $00
	dec b                                            ; $79e0: $05
	nop                                              ; $79e1: $00
	add hl, bc                                       ; $79e2: $09
	ld a, e                                          ; $79e3: $7b
	cp $9d                                           ; $79e4: $fe $9d
	ld [$4b10], sp                                   ; $79e6: $08 $10 $4b
	ldh [$7b], a                                     ; $79e9: $e0 $7b
	ldh a, [$98]                                     ; $79eb: $f0 $98
	ld b, b                                          ; $79ed: $40
	nop                                              ; $79ee: $00
	ld b, b                                          ; $79ef: $40
	ld [$0088], sp                                   ; $79f0: $08 $88 $00
	ld [hl], b                                       ; $79f3: $70
	ld [hl], a                                       ; $79f4: $77
	ld d, c                                          ; $79f5: $51
	sbc h                                            ; $79f6: $9c
	ld [$4080], sp                                   ; $79f7: $08 $80 $40
	ld h, a                                          ; $79fa: $67
	cp [hl]                                          ; $79fb: $be
	and [hl]                                         ; $79fc: $a6
	nop                                              ; $79fd: $00
	ei                                               ; $79fe: $fb
	rst SubAFromDE                                          ; $79ff: $df
	rlca                                             ; $7a00: $07
	sub h                                            ; $7a01: $94
	ld [$060f], sp                                   ; $7a02: $08 $0f $06
	rlca                                             ; $7a05: $07
	dec b                                            ; $7a06: $05
	rlca                                             ; $7a07: $07
	ld a, [bc]                                       ; $7a08: $0a
	rrca                                             ; $7a09: $0f
	inc c                                            ; $7a0a: $0c
	rrca                                             ; $7a0b: $0f
	dec c                                            ; $7a0c: $0d
	ld a, e                                          ; $7a0d: $7b
	cp $7f                                           ; $7a0e: $fe $7f
	or $9d                                           ; $7a10: $f6 $9d
	ld [bc], a                                       ; $7a12: $02
	inc bc                                           ; $7a13: $03
	db $db                                           ; $7a14: $db
	ld bc, $dffd                                     ; $7a15: $01 $fd $df
	db $fc                                           ; $7a18: $fc
	add l                                            ; $7a19: $85
	dec bc                                           ; $7a1a: $0b
	rst $38                                          ; $7a1b: $ff

jr_013_7a1c:
	inc b                                            ; $7a1c: $04
	rst $38                                          ; $7a1d: $ff

jr_013_7a1e:
	ld [hl], $ff                                     ; $7a1e: $36 $ff
	ld c, l                                          ; $7a20: $4d
	rst $38                                          ; $7a21: $ff
	adc b                                            ; $7a22: $88
	rst $38                                          ; $7a23: $ff
	sbc l                                            ; $7a24: $9d
	rst FarCall                                          ; $7a25: $f7
	ld a, $e3                                        ; $7a26: $3e $e3
	ccf                                              ; $7a28: $3f
	rst AddAOntoHL                                          ; $7a29: $ef
	ld [hl], a                                       ; $7a2a: $77
	call z, $cc7f                                    ; $7a2b: $cc $7f $cc
	rst $38                                          ; $7a2e: $ff
	call z, $31ff                                    ; $7a2f: $cc $ff $31
	rst $38                                          ; $7a32: $ff
	add e                                            ; $7a33: $83
	ei                                               ; $7a34: $fb

Jump_013_7a35:
	rst SubAFromDE                                          ; $7a35: $df
	add b                                            ; $7a36: $80
	sub h                                            ; $7a37: $94
	ld b, b                                          ; $7a38: $40
	ret nz                                           ; $7a39: $c0

	jr nz, jr_013_7a1c                               ; $7a3a: $20 $e0

	jr nz, jr_013_7a1e                               ; $7a3c: $20 $e0

	sub b                                            ; $7a3e: $90
	ldh a, [$50]                                     ; $7a3f: $f0 $50
	ldh a, [$b0]                                     ; $7a41: $f0 $b0
	ld a, e                                          ; $7a43: $7b
	db $fc                                           ; $7a44: $fc
	rst SubAFromDE                                          ; $7a45: $df
	ldh [$9e], a                                     ; $7a46: $e0 $9e
	and b                                            ; $7a48: $a0
	ld a, e                                          ; $7a49: $7b
	cp $7f                                           ; $7a4a: $fe $7f
	db $ec                                           ; $7a4c: $ec
	ld a, a                                          ; $7a4d: $7f
	cp $9a                                           ; $7a4e: $fe $9a
	inc bc                                           ; $7a50: $03

jr_013_7a51:
	ld [bc], a                                       ; $7a51: $02
	rlca                                             ; $7a52: $07
	inc b                                            ; $7a53: $04
	rlca                                             ; $7a54: $07
	ld a, e                                          ; $7a55: $7b
	and [hl]                                         ; $7a56: $a6
	ld [hl], a                                       ; $7a57: $77
	and h                                            ; $7a58: $a4
	ld a, a                                          ; $7a59: $7f
	xor b                                            ; $7a5a: $a8
	sbc h                                            ; $7a5b: $9c
	dec bc                                           ; $7a5c: $0b
	rrca                                             ; $7a5d: $0f
	add hl, bc                                       ; $7a5e: $09
	ld a, e                                          ; $7a5f: $7b
	cp $84                                           ; $7a60: $fe $84
	dec c                                            ; $7a62: $0d
	dec bc                                           ; $7a63: $0b
	rlca                                             ; $7a64: $07
	dec b                                            ; $7a65: $05
	ld [bc], a                                       ; $7a66: $02
	ld [bc], a                                       ; $7a67: $02
	ld bc, $0301                                     ; $7a68: $01 $01 $03

jr_013_7a6b:
	inc bc                                           ; $7a6b: $03
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	rst $38                                          ; $7a6e: $ff
	db $fc                                           ; $7a6f: $fc
	sub e                                            ; $7a70: $93
	xor $01                                          ; $7a71: $ee $01
	rst $38                                          ; $7a73: $ff
	rst AddAOntoHL                                          ; $7a74: $ef
	add hl, sp                                       ; $7a75: $39
	rst SubAFromHL                                          ; $7a76: $d7
	add hl, sp                                       ; $7a77: $39
	cp $ff                                           ; $7a78: $fe $ff
	add d                                            ; $7a7a: $82
	rst $38                                          ; $7a7b: $ff
	ld bc, $fe7b                                     ; $7a7c: $01 $7b $fe

Call_013_7a7f:
	adc a                                            ; $7a7f: $8f
	add e                                            ; $7a80: $83
	ld a, l                                          ; $7a81: $7d
	rst $38                                          ; $7a82: $ff
	add e                                            ; $7a83: $83
	rst $38                                          ; $7a84: $ff
	rst $38                                          ; $7a85: $ff
	cp $92                                           ; $7a86: $fe $92
	ccf                                              ; $7a88: $3f
	rst $38                                          ; $7a89: $ff
	pop af                                           ; $7a8a: $f1
	rst $38                                          ; $7a8b: $ff
	ccf                                              ; $7a8c: $3f
	ccf                                              ; $7a8d: $3f
	ret nz                                           ; $7a8e: $c0

	ld b, b                                          ; $7a8f: $40
	ld a, e                                          ; $7a90: $7b
	xor c                                            ; $7a91: $a9
	ld a, e                                          ; $7a92: $7b
	db $fd                                           ; $7a93: $fd
	ld l, a                                          ; $7a94: $6f
	and h                                            ; $7a95: $a4
	ld l, a                                          ; $7a96: $6f
	db $fc                                           ; $7a97: $fc
	sbc c                                            ; $7a98: $99
	jr nc, jr_013_7a6b                               ; $7a99: $30 $d0

	ldh [rAUD4LEN], a                                ; $7a9b: $e0 $20
	ret nz                                           ; $7a9d: $c0

	ret nz                                           ; $7a9e: $c0

	ld [hl], a                                       ; $7a9f: $77
	adc d                                            ; $7aa0: $8a
	rst $38                                          ; $7aa1: $ff
	cp a                                             ; $7aa2: $bf
	nop                                              ; $7aa3: $00
	ei                                               ; $7aa4: $fb
	rst SubAFromDE                                          ; $7aa5: $df
	ld bc, $029d                                     ; $7aa6: $01 $9d $02
	inc bc                                           ; $7aa9: $03
	db $dd                                           ; $7aaa: $dd
	ld bc, $fa7f                                     ; $7aab: $01 $7f $fa
	db $dd                                           ; $7aae: $dd
	inc bc                                           ; $7aaf: $03
	rst SubAFromDE                                          ; $7ab0: $df
	rrca                                             ; $7ab1: $0f
	sub l                                            ; $7ab2: $95
	dec de                                           ; $7ab3: $1b
	rra                                              ; $7ab4: $1f
	ld h, c                                          ; $7ab5: $61
	ld a, a                                          ; $7ab6: $7f
	add e                                            ; $7ab7: $83
	rst $38                                          ; $7ab8: $ff
	adc $fe                                          ; $7ab9: $ce $fe
	ld a, a                                          ; $7abb: $7f
	ld a, a                                          ; $7abc: $7f
	db $fd                                           ; $7abd: $fd
	rst SubAFromDE                                          ; $7abe: $df
	ccf                                              ; $7abf: $3f
	add l                                            ; $7ac0: $85
	jp nz, $01ff                                     ; $7ac1: $c2 $ff $01

	rst $38                                          ; $7ac4: $ff
	adc l                                            ; $7ac5: $8d
	rst $38                                          ; $7ac6: $ff
	ld d, e                                          ; $7ac7: $53
	rst $38                                          ; $7ac8: $ff
	and d                                            ; $7ac9: $a2
	rst $38                                          ; $7aca: $ff
	daa                                              ; $7acb: $27
	db $fd                                           ; $7acc: $fd
	ld c, a                                          ; $7acd: $4f
	ld hl, sp+$4f                                    ; $7ace: $f8 $4f
	ld sp, hl                                        ; $7ad0: $f9
	ld e, a                                          ; $7ad1: $5f
	di                                               ; $7ad2: $f3
	sbc l                                            ; $7ad3: $9d
	di                                               ; $7ad4: $f3
	ld a, a                                          ; $7ad5: $7f
	ld [hl], e                                       ; $7ad6: $73
	ld a, a                                          ; $7ad7: $7f

jr_013_7ad8:
	ld c, h                                          ; $7ad8: $4c
	ld a, a                                          ; $7ad9: $7f
	ld h, b                                          ; $7ada: $60
	ei                                               ; $7adb: $fb
	rst SubAFromDE                                          ; $7adc: $df
	ldh [$8e], a                                     ; $7add: $e0 $8e
	db $10                                           ; $7adf: $10
	ldh a, [hDisp0_WY]                                     ; $7ae0: $f0 $88
	ld hl, sp+$48                                    ; $7ae2: $f8 $48
	ld hl, sp+$24                                    ; $7ae4: $f8 $24
	db $fc                                           ; $7ae6: $fc
	ld d, h                                          ; $7ae7: $54
	db $fc                                           ; $7ae8: $fc
	xor h                                            ; $7ae9: $ac
	db $fc                                           ; $7aea: $fc
	call nc, $f8fc                                   ; $7aeb: $d4 $fc $f8
	jr c, jr_013_7ad8                                ; $7aee: $38 $e8

	ld a, e                                          ; $7af0: $7b
	cp $99                                           ; $7af1: $fe $99
	ret nc                                           ; $7af3: $d0

	ld [hl], b                                       ; $7af4: $70
	ret nc                                           ; $7af5: $d0

	ldh a, [$67]                                     ; $7af6: $f0 $67
	ld h, a                                          ; $7af8: $67
	sbc $03                                          ; $7af9: $de $03
	sbc d                                            ; $7afb: $9a
	ld [bc], a                                       ; $7afc: $02
	rlca                                             ; $7afd: $07
	inc b                                            ; $7afe: $04
	inc bc                                           ; $7aff: $03
	ld [bc], a                                       ; $7b00: $02
	ld l, a                                          ; $7b01: $6f
	and b                                            ; $7b02: $a0
	ld l, a                                          ; $7b03: $6f
	cp $6f                                           ; $7b04: $fe $6f
	ldh a, [c]                                       ; $7b06: $f2
	rst SubAFromDE                                          ; $7b07: $df
	inc bc                                           ; $7b08: $03
	rst $38                                          ; $7b09: $ff
	add b                                            ; $7b0a: $80
	ld a, a                                          ; $7b0b: $7f
	ld a, [hl]                                       ; $7b0c: $7e
	call $dfbe                                       ; $7b0d: $cd $be $df
	ld [hl], e                                       ; $7b10: $73
	rst SubAFromDE                                          ; $7b11: $df
	ld [hl], c                                       ; $7b12: $71
	adc a                                            ; $7b13: $8f
	db $fc                                           ; $7b14: $fc
	ld a, a                                          ; $7b15: $7f
	rst $38                                          ; $7b16: $ff
	ld b, c                                          ; $7b17: $41
	rst $38                                          ; $7b18: $ff
	ld b, b                                          ; $7b19: $40
	rst $38                                          ; $7b1a: $ff
	add b                                            ; $7b1b: $80
	rst $38                                          ; $7b1c: $ff
	pop bc                                           ; $7b1d: $c1
	cp [hl]                                          ; $7b1e: $be
	rst $38                                          ; $7b1f: $ff
	pop bc                                           ; $7b20: $c1
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst FarCall                                          ; $7b23: $f7
	sub h                                            ; $7b24: $94
	rra                                              ; $7b25: $1f
	rst $38                                          ; $7b26: $ff
	db $fc                                           ; $7b27: $fc
	rst $38                                          ; $7b28: $ff
	rra                                              ; $7b29: $1f
	add b                                            ; $7b2a: $80
	rra                                              ; $7b2b: $1f
	ldh [$60], a                                     ; $7b2c: $e0 $60
	ldh [rAUD4LEN], a                                ; $7b2e: $e0 $20
	ret nc                                           ; $7b30: $d0

	ldh a, [$c8]                                     ; $7b31: $f0 $c8

Call_013_7b33:
	ld a, b                                          ; $7b33: $78
	db $e4                                           ; $7b34: $e4
	db $fc                                           ; $7b35: $fc
	ld d, d                                          ; $7b36: $52
	cp $a1                                           ; $7b37: $fe $a1
	rst $38                                          ; $7b39: $ff
	pop de                                           ; $7b3a: $d1
	rst $38                                          ; $7b3b: $ff
	and e                                            ; $7b3c: $a3
	db $fd                                           ; $7b3d: $fd
	adc $fa                                          ; $7b3e: $ce $fa
	sbc h                                            ; $7b40: $9c
	db $ec                                           ; $7b41: $ec
	ldh a, [hDisp1_SCY]                                     ; $7b42: $f0 $90
	and b                                            ; $7b44: $a0
	and b                                            ; $7b45: $a0
	ret nz                                           ; $7b46: $c0

	ret nz                                           ; $7b47: $c0

	ld h, b                                          ; $7b48: $60
	ldh [$df], a                                     ; $7b49: $e0 $df
	ret nz                                           ; $7b4b: $c0

	cpl                                              ; $7b4c: $2f
	ld b, b                                          ; $7b4d: $40
	sub l                                            ; $7b4e: $95
	inc sp                                           ; $7b4f: $33
	ccf                                              ; $7b50: $3f
	ld b, c                                          ; $7b51: $41
	ld a, a                                          ; $7b52: $7f
	ld h, e                                          ; $7b53: $63
	ld a, a                                          ; $7b54: $7f
	cpl                                              ; $7b55: $2f
	ccf                                              ; $7b56: $3f
	dec de                                           ; $7b57: $1b
	dec de                                           ; $7b58: $1b
	ld [hl], a                                       ; $7b59: $77
	add d                                            ; $7b5a: $82
	ld [hl], a                                       ; $7b5b: $77
	cp $db                                           ; $7b5c: $fe $db
	ld bc, $803f                                     ; $7b5e: $01 $3f $80
	ret c                                            ; $7b61: $d8

	nop                                              ; $7b62: $00
	db $fd                                           ; $7b63: $fd
	rst SubAFromDE                                          ; $7b64: $df
	ld bc, $0e8c                                     ; $7b65: $01 $8c $0e
	rrca                                             ; $7b68: $0f
	ld de, $231f                                     ; $7b69: $11 $1f $23
	ccf                                              ; $7b6c: $3f
	dec h                                            ; $7b6d: $25
	ccf                                              ; $7b6e: $3f
	ld c, b                                          ; $7b6f: $48
	ld a, a                                          ; $7b70: $7f
	ld d, l                                          ; $7b71: $55
	ld a, a                                          ; $7b72: $7f
	ld l, e                                          ; $7b73: $6b
	ld a, [hl]                                       ; $7b74: $7e
	ld d, a                                          ; $7b75: $57
	ld a, a                                          ; $7b76: $7f
	ccf                                              ; $7b77: $3f
	add hl, sp                                       ; $7b78: $39
	cpl                                              ; $7b79: $2f
	ld a, e                                          ; $7b7a: $7b
	cp $9b                                           ; $7b7b: $fe $9b
	rla                                              ; $7b7d: $17
	inc e                                            ; $7b7e: $1c
	rla                                              ; $7b7f: $17
	ld e, $fd                                        ; $7b80: $1e $fd
	rst SubAFromDE                                          ; $7b82: $df
	ld hl, sp-$7b                                    ; $7b83: $f8 $85
	add a                                            ; $7b85: $87
	rst $38                                          ; $7b86: $ff
	nop                                              ; $7b87: $00
	rst $38                                          ; $7b88: $ff
	ld h, e                                          ; $7b89: $63
	rst $38                                          ; $7b8a: $ff
	sub l                                            ; $7b8b: $95
	rst $38                                          ; $7b8c: $ff
	adc d                                            ; $7b8d: $8a
	rst $38                                          ; $7b8e: $ff
	ret                                              ; $7b8f: $c9


	ld a, a                                          ; $7b90: $7f
	push hl                                          ; $7b91: $e5
	ccf                                              ; $7b92: $3f
	push hl                                          ; $7b93: $e5
	ccf                                              ; $7b94: $3f
	push af                                          ; $7b95: $f5
	sbc a                                            ; $7b96: $9f
	ld [hl], d                                       ; $7b97: $72
	sbc [hl]                                         ; $7b98: $9e
	db $fc                                           ; $7b99: $fc
	sbc h                                            ; $7b9a: $9c
	db $fc                                           ; $7b9b: $fc
	ld h, h                                          ; $7b9c: $64
	cp $0e                                           ; $7b9d: $fe $0e
	ld sp, hl                                        ; $7b9f: $f9
	rst SubAFromDE                                          ; $7ba0: $df
	and b                                            ; $7ba1: $a0
	adc c                                            ; $7ba2: $89
	jp nc, $b5f2                                     ; $7ba3: $d2 $f2 $b5

	rst FarCall                                          ; $7ba6: $f7
	and l                                            ; $7ba7: $a5
	rst SubAFromBC                                          ; $7ba8: $e7
	sbc c                                            ; $7ba9: $99
	rst $38                                          ; $7baa: $ff
	add c                                            ; $7bab: $81
	rst $38                                          ; $7bac: $ff
	jp nz, Jump_013_6cfe                             ; $7bad: $c2 $fe $6c

	ld a, h                                          ; $7bb0: $7c
	ld c, b                                          ; $7bb1: $48
	ld a, b                                          ; $7bb2: $78
	ld c, b                                          ; $7bb3: $48
	ld a, b                                          ; $7bb4: $78
	ld d, b                                          ; $7bb5: $50
	ld [hl], b                                       ; $7bb6: $70
	ret nc                                           ; $7bb7: $d0

	ldh a, [$f9]                                     ; $7bb8: $f0 $f9
	rst SubAFromDE                                          ; $7bba: $df
	call nz, $aa9b                                   ; $7bbb: $c4 $9b $aa
	xor $29                                          ; $7bbe: $ee $29
	rst AddAOntoHL                                          ; $7bc0: $ef
	ld [hl], a                                       ; $7bc1: $77
	ldh [$99], a                                     ; $7bc2: $e0 $99
	add d                                            ; $7bc4: $82
	cp $c4                                           ; $7bc5: $fe $c4
	db $fc                                           ; $7bc7: $fc
	jr z, jr_013_7c02                                ; $7bc8: $28 $38

	ld h, a                                          ; $7bca: $67
	cp $de                                           ; $7bcb: $fe $de
	inc bc                                           ; $7bcd: $03
	add b                                            ; $7bce: $80
	ld [bc], a                                       ; $7bcf: $02
	dec b                                            ; $7bd0: $05
	rlca                                             ; $7bd1: $07
	add hl, bc                                       ; $7bd2: $09
	rrca                                             ; $7bd3: $0f
	inc de                                           ; $7bd4: $13
	rra                                              ; $7bd5: $1f
	dec h                                            ; $7bd6: $25
	ccf                                              ; $7bd7: $3f
	ld b, d                                          ; $7bd8: $42
	ld a, a                                          ; $7bd9: $7f
	ld b, l                                          ; $7bda: $45
	ld a, a                                          ; $7bdb: $7f
	ld h, d                                          ; $7bdc: $62
	ld e, a                                          ; $7bdd: $5f
	add hl, sp                                       ; $7bde: $39
	cpl                                              ; $7bdf: $2f
	inc e                                            ; $7be0: $1c
	dec de                                           ; $7be1: $1b
	rlca                                             ; $7be2: $07
	inc b                                            ; $7be3: $04
	ld [bc], a                                       ; $7be4: $02
	ld [bc], a                                       ; $7be5: $02
	ld bc, $0301                                     ; $7be6: $01 $01 $03
	inc bc                                           ; $7be9: $03
	ld bc, $ff01                                     ; $7bea: $01 $01 $ff
	ccf                                              ; $7bed: $3f
	sub h                                            ; $7bee: $94
	reti                                             ; $7bef: $d9


	ld a, $fd                                        ; $7bf0: $3e $fd
	rst SubAFromBC                                          ; $7bf2: $e7
	db $fd                                           ; $7bf3: $fd
	ld b, a                                          ; $7bf4: $47
	ld sp, hl                                        ; $7bf5: $f9
	sbc a                                            ; $7bf6: $9f
	ld a, a                                          ; $7bf7: $7f
	rst $38                                          ; $7bf8: $ff
	pop bc                                           ; $7bf9: $c1
	ld a, e                                          ; $7bfa: $7b
	and h                                            ; $7bfb: $a4
	sbc e                                            ; $7bfc: $9b

jr_013_7bfd:
	add b                                            ; $7bfd: $80
	rst $38                                          ; $7bfe: $ff
	pop bc                                           ; $7bff: $c1
	cp [hl]                                          ; $7c00: $be
	ld a, e                                          ; $7c01: $7b

jr_013_7c02:
	rst FarCall                                          ; $7c02: $f7
	add l                                            ; $7c03: $85
	rst $38                                          ; $7c04: $ff
	rst FarCall                                          ; $7c05: $f7
	sub h                                            ; $7c06: $94
	db $fc                                           ; $7c07: $fc
	rst $38                                          ; $7c08: $ff
	rra                                              ; $7c09: $1f
	rst $38                                          ; $7c0a: $ff
	db $fc                                           ; $7c0b: $fc
	db $fc                                           ; $7c0c: $fc
	cp $7e                                           ; $7c0d: $fe $7e
	cp $b6                                           ; $7c0f: $fe $b6
	cp $86                                           ; $7c11: $fe $86
	cp $de                                           ; $7c13: $fe $de
	ld [hl], h                                       ; $7c15: $74
	db $fc                                           ; $7c16: $fc
	ld e, h                                          ; $7c17: $5c
	call c, $c040                                    ; $7c18: $dc $40 $c0
	jr nz, jr_013_7bfd                               ; $7c1b: $20 $e0

	and b                                            ; $7c1d: $a0
	ld [hl], e                                       ; $7c1e: $73
	cp $7f                                           ; $7c1f: $fe $7f
	db $fd                                           ; $7c21: $fd
	rst SubAFromDE                                          ; $7c22: $df
	ret nz                                           ; $7c23: $c0

	ld a, a                                          ; $7c24: $7f
	ldh a, [c]                                       ; $7c25: $f2
	rst SubAFromDE                                          ; $7c26: $df
	ldh [rIE], a                                     ; $7c27: $e0 $ff
	ld a, a                                          ; $7c29: $7f
	ret nz                                           ; $7c2a: $c0

	sub [hl]                                         ; $7c2b: $96
	rst $38                                          ; $7c2c: $ff
	jp $87ff                                         ; $7c2d: $c3 $ff $87


	db $fd                                           ; $7c30: $fd
	rst $38                                          ; $7c31: $ff
	ld h, [hl]                                       ; $7c32: $66
	and $40                                          ; $7c33: $e6 $40
	ld a, e                                          ; $7c35: $7b
	xor $3f                                          ; $7c36: $ee $3f
	ldh [$aa], a                                     ; $7c38: $e0 $aa
	nop                                              ; $7c3a: $00
	ei                                               ; $7c3b: $fb
	rst SubAFromDE                                          ; $7c3c: $df
	rlca                                             ; $7c3d: $07
	sub h                                            ; $7c3e: $94
	ld [$060f], sp                                   ; $7c3f: $08 $0f $06
	rlca                                             ; $7c42: $07
	dec b                                            ; $7c43: $05
	rlca                                             ; $7c44: $07
	ld a, [bc]                                       ; $7c45: $0a
	rrca                                             ; $7c46: $0f
	inc c                                            ; $7c47: $0c
	rrca                                             ; $7c48: $0f
	dec c                                            ; $7c49: $0d
	ld a, e                                          ; $7c4a: $7b
	cp $7f                                           ; $7c4b: $fe $7f
	or $9d                                           ; $7c4d: $f6 $9d
	ld [bc], a                                       ; $7c4f: $02
	inc bc                                           ; $7c50: $03
	db $db                                           ; $7c51: $db
	ld bc, $dffd                                     ; $7c52: $01 $fd $df
	db $fc                                           ; $7c55: $fc
	add l                                            ; $7c56: $85
	dec bc                                           ; $7c57: $0b
	rst $38                                          ; $7c58: $ff

jr_013_7c59:
	inc b                                            ; $7c59: $04
	rst $38                                          ; $7c5a: $ff

jr_013_7c5b:
	ld [hl], $ff                                     ; $7c5b: $36 $ff
	ld c, l                                          ; $7c5d: $4d
	rst $38                                          ; $7c5e: $ff
	adc b                                            ; $7c5f: $88
	rst $38                                          ; $7c60: $ff
	sbc l                                            ; $7c61: $9d
	rst FarCall                                          ; $7c62: $f7
	ld a, $e3                                        ; $7c63: $3e $e3
	ccf                                              ; $7c65: $3f
	rst SubAFromBC                                          ; $7c66: $e7
	ld a, a                                          ; $7c67: $7f
	call z, $cc77                                    ; $7c68: $cc $77 $cc
	rst $38                                          ; $7c6b: $ff
	call z, $31ff                                    ; $7c6c: $cc $ff $31
	rst $38                                          ; $7c6f: $ff
	add e                                            ; $7c70: $83
	ei                                               ; $7c71: $fb
	rst SubAFromDE                                          ; $7c72: $df
	add b                                            ; $7c73: $80
	sub h                                            ; $7c74: $94
	ld b, b                                          ; $7c75: $40
	ret nz                                           ; $7c76: $c0

	jr nz, jr_013_7c59                               ; $7c77: $20 $e0

	jr nz, jr_013_7c5b                               ; $7c79: $20 $e0

	sub b                                            ; $7c7b: $90
	ldh a, [$50]                                     ; $7c7c: $f0 $50
	ldh a, [$b0]                                     ; $7c7e: $f0 $b0
	ld a, e                                          ; $7c80: $7b
	db $fc                                           ; $7c81: $fc
	rst SubAFromDE                                          ; $7c82: $df
	ldh [$9e], a                                     ; $7c83: $e0 $9e
	and b                                            ; $7c85: $a0
	ld a, e                                          ; $7c86: $7b
	cp $7f                                           ; $7c87: $fe $7f
	db $ec                                           ; $7c89: $ec
	ld a, a                                          ; $7c8a: $7f
	cp $0b                                           ; $7c8b: $fe $0b
	ret nz                                           ; $7c8d: $c0

	sbc c                                            ; $7c8e: $99
	sub e                                            ; $7c8f: $93
	inc bc                                           ; $7c90: $03
	ld [bc], a                                       ; $7c91: $02
	rlca                                             ; $7c92: $07
	inc b                                            ; $7c93: $04
	rlca                                             ; $7c94: $07
	ld a, e                                          ; $7c95: $7b
	add [hl]                                         ; $7c96: $86
	ld [hl], a                                       ; $7c97: $77
	add h                                            ; $7c98: $84
	ld a, a                                          ; $7c99: $7f
	adc b                                            ; $7c9a: $88
	sbc h                                            ; $7c9b: $9c
	dec bc                                           ; $7c9c: $0b
	rrca                                             ; $7c9d: $0f
	add hl, bc                                       ; $7c9e: $09
	ld a, e                                          ; $7c9f: $7b
	cp $84                                           ; $7ca0: $fe $84
	dec c                                            ; $7ca2: $0d
	dec bc                                           ; $7ca3: $0b
	rlca                                             ; $7ca4: $07
	dec b                                            ; $7ca5: $05
	ld [bc], a                                       ; $7ca6: $02
	ld [bc], a                                       ; $7ca7: $02
	ld bc, $0301                                     ; $7ca8: $01 $01 $03

jr_013_7cab:
	inc bc                                           ; $7cab: $03
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	rst $38                                          ; $7cae: $ff
	db $fc                                           ; $7caf: $fc
	sub e                                            ; $7cb0: $93
	xor $01                                          ; $7cb1: $ee $01
	rst $38                                          ; $7cb3: $ff
	rst AddAOntoHL                                          ; $7cb4: $ef
	add hl, sp                                       ; $7cb5: $39
	rst SubAFromHL                                          ; $7cb6: $d7
	add hl, sp                                       ; $7cb7: $39
	cp $ff                                           ; $7cb8: $fe $ff
	add d                                            ; $7cba: $82
	rst $38                                          ; $7cbb: $ff
	ld bc, $fe7b                                     ; $7cbc: $01 $7b $fe
	adc a                                            ; $7cbf: $8f
	add e                                            ; $7cc0: $83
	ld a, l                                          ; $7cc1: $7d
	rst $38                                          ; $7cc2: $ff
	add e                                            ; $7cc3: $83
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	cp $92                                           ; $7cc6: $fe $92
	ccf                                              ; $7cc8: $3f
	rst $38                                          ; $7cc9: $ff
	pop af                                           ; $7cca: $f1
	rst $38                                          ; $7ccb: $ff
	ccf                                              ; $7ccc: $3f
	ccf                                              ; $7ccd: $3f
	ret nz                                           ; $7cce: $c0

	ld b, b                                          ; $7ccf: $40
	ld a, e                                          ; $7cd0: $7b
	adc c                                            ; $7cd1: $89
	ld a, e                                          ; $7cd2: $7b
	db $fd                                           ; $7cd3: $fd
	ld l, a                                          ; $7cd4: $6f
	add h                                            ; $7cd5: $84
	ld l, a                                          ; $7cd6: $6f
	db $fc                                           ; $7cd7: $fc
	sbc d                                            ; $7cd8: $9a
	jr nc, jr_013_7cab                               ; $7cd9: $30 $d0

	ldh [rAUD4LEN], a                                ; $7cdb: $e0 $20
	ret nz                                           ; $7cdd: $c0

	ld a, e                                          ; $7cde: $7b
	add [hl]                                         ; $7cdf: $86
	rst SubAFromDE                                          ; $7ce0: $df
	add b                                            ; $7ce1: $80
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

Jump_013_7d7f:
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
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
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

Jump_013_7f80:
	rst $38                                          ; $7f80: $ff

Jump_013_7f81:
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

Call_013_7ffa:
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff

Call_013_7ffc:
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Jump_013_7fff:
	rst $38                                          ; $7fff: $ff
