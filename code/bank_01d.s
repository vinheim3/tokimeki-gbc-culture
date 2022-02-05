; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

	jp c, $ed02                                      ; $4000: $da $02 $ed

	rst SubAFromDE                                          ; $4003: $df
	rlca                                             ; $4004: $07
	sub l                                            ; $4005: $95
	dec de                                           ; $4006: $1b
	rra                                              ; $4007: $1f
	scf                                              ; $4008: $37
	inc a                                            ; $4009: $3c
	scf                                              ; $400a: $37
	inc a                                            ; $400b: $3c
	ld d, a                                          ; $400c: $57
	ld a, a                                          ; $400d: $7f
	ld e, c                                          ; $400e: $59
	ld a, c                                          ; $400f: $79
	rst AddAOntoHL                                          ; $4010: $ef
	rst SubAFromDE                                          ; $4011: $df
	ret nz                                           ; $4012: $c0

	sub e                                            ; $4013: $93
	xor $2e                                          ; $4014: $ee $2e
	pop af                                           ; $4016: $f1
	ccf                                              ; $4017: $3f
	ret nz                                           ; $4018: $c0

	rst $38                                          ; $4019: $ff
	ld sp, hl                                        ; $401a: $f9
	rst $38                                          ; $401b: $ff
	add [hl]                                         ; $401c: $86
	rst $38                                          ; $401d: $ff
	nop                                              ; $401e: $00
	rst $38                                          ; $401f: $ff
	db $ed                                           ; $4020: $ed
	rst SubAFromDE                                          ; $4021: $df
	ld a, e                                          ; $4022: $7b
	sub [hl]                                         ; $4023: $96
	rrca                                             ; $4024: $0f
	cp $07                                           ; $4025: $fe $07
	cp $c1                                           ; $4027: $fe $c1
	rst $38                                          ; $4029: $ff
	ld sp, $08ff                                     ; $402a: $31 $ff $08
	inc sp                                           ; $402d: $33
	ldh [$df], a                                     ; $402e: $e0 $df
	cp b                                             ; $4030: $b8
	add b                                            ; $4031: $80
	call nz, $fa7c                                   ; $4032: $c4 $7c $fa
	cp $e5                                           ; $4035: $fe $e5
	ccf                                              ; $4037: $3f
	ei                                               ; $4038: $fb
	ccf                                              ; $4039: $3f
	call Call_01d_4acf                               ; $403a: $cd $cf $4a
	ld a, e                                          ; $403d: $7b
	ld l, [hl]                                       ; $403e: $6e
	ld a, a                                          ; $403f: $7f
	ld e, h                                          ; $4040: $5c
	ld a, a                                          ; $4041: $7f
	dec h                                            ; $4042: $25
	ccf                                              ; $4043: $3f
	dec d                                            ; $4044: $15
	rra                                              ; $4045: $1f
	ld a, [bc]                                       ; $4046: $0a
	rrca                                             ; $4047: $0f
	ld d, $1f                                        ; $4048: $16 $1f
	ld [hl+], a                                      ; $404a: $22
	ccf                                              ; $404b: $3f
	ld c, l                                          ; $404c: $4d
	ld a, a                                          ; $404d: $7f
	ld d, e                                          ; $404e: $53
	ld a, a                                          ; $404f: $7f
	dec l                                            ; $4050: $2d
	sbc b                                            ; $4051: $98
	ccf                                              ; $4052: $3f
	add hl, hl                                       ; $4053: $29
	ccf                                              ; $4054: $3f
	inc de                                           ; $4055: $13
	rla                                              ; $4056: $17
	inc b                                            ; $4057: $04
	inc b                                            ; $4058: $04
	db $fd                                           ; $4059: $fd
	sub c                                            ; $405a: $91
	ld [de], a                                       ; $405b: $12
	rst $38                                          ; $405c: $ff
	sub d                                            ; $405d: $92
	rst $38                                          ; $405e: $ff
	and d                                            ; $405f: $a2
	rst $38                                          ; $4060: $ff
	ld [hl+], a                                      ; $4061: $22
	rst $38                                          ; $4062: $ff
	ld c, c                                          ; $4063: $49
	rst $38                                          ; $4064: $ff
	ld e, c                                          ; $4065: $59
	or $dd                                           ; $4066: $f6 $dd
	or [hl]                                          ; $4068: $b6
	ld a, e                                          ; $4069: $7b
	push af                                          ; $406a: $f5
	ld a, a                                          ; $406b: $7f
	adc l                                            ; $406c: $8d
	add b                                            ; $406d: $80
	sub b                                            ; $406e: $90
	ld l, a                                          ; $406f: $6f
	ldh a, [$7f]                                     ; $4070: $f0 $7f
	add b                                            ; $4072: $80
	sbc a                                            ; $4073: $9f
	xor $73                                          ; $4074: $ee $73
	ld c, [hl]                                       ; $4076: $4e
	cpl                                              ; $4077: $2f
	jr nc, jr_01d_4093                               ; $4078: $30 $19

	rra                                              ; $407a: $1f
	inc b                                            ; $407b: $04
	rst $38                                          ; $407c: $ff
	ld b, h                                          ; $407d: $44

jr_01d_407e:
	rst $38                                          ; $407e: $ff
	ld d, d                                          ; $407f: $52
	rst $38                                          ; $4080: $ff
	ld c, d                                          ; $4081: $4a
	rst $38                                          ; $4082: $ff
	add hl, hl                                       ; $4083: $29
	rst $38                                          ; $4084: $ff
	and l                                            ; $4085: $a5
	rst $38                                          ; $4086: $ff
	or d                                             ; $4087: $b2
	rst SubAFromDE                                          ; $4088: $df
	ei                                               ; $4089: $fb
	ld c, l                                          ; $408a: $4d
	ld a, [$8005]                                    ; $408b: $fa $05 $80
	cp $91                                           ; $408e: $fe $91
	ld l, a                                          ; $4090: $6f
	di                                               ; $4091: $f3
	rst $38                                          ; $4092: $ff

jr_01d_4093:
	rlca                                             ; $4093: $07
	jr jr_01d_407e                                   ; $4094: $18 $e8

	add sp, $18                                      ; $4096: $e8 $18
	or b                                             ; $4098: $b0
	ld [hl], b                                       ; $4099: $70
	ldh [$e0], a                                     ; $409a: $e0 $e0
	adc a                                            ; $409c: $8f
	adc a                                            ; $409d: $8f
	ld c, e                                          ; $409e: $4b
	rst GetHLinHL                                          ; $409f: $cf
	ld e, c                                          ; $40a0: $59
	rst SubAFromDE                                          ; $40a1: $df
	ld l, d                                          ; $40a2: $6a
	cp $4a                                           ; $40a3: $fe $4a
	cp $4c                                           ; $40a5: $fe $4c
	db $fc                                           ; $40a7: $fc
	ldh a, [$f0]                                     ; $40a8: $f0 $f0
	ret c                                            ; $40aa: $d8

	ld hl, sp-$58                                    ; $40ab: $f8 $a8

jr_01d_40ad:
	sub h                                            ; $40ad: $94
	ld hl, sp-$2c                                    ; $40ae: $f8 $d4
	db $fc                                           ; $40b0: $fc
	ld l, h                                          ; $40b1: $6c
	db $fc                                           ; $40b2: $fc
	jr c, jr_01d_40ad                                ; $40b3: $38 $f8

	xor b                                            ; $40b5: $a8
	add sp, $60                                      ; $40b6: $e8 $60
	ld h, b                                          ; $40b8: $60
	dec sp                                           ; $40b9: $3b
	and b                                            ; $40ba: $a0
	ld a, a                                          ; $40bb: $7f
	add $98                                          ; $40bc: $c6 $98
	pop de                                           ; $40be: $d1
	rst $38                                          ; $40bf: $ff
	ld [hl], b                                       ; $40c0: $70
	rst SubAFromDE                                          ; $40c1: $df
	ld [hl], b                                       ; $40c2: $70
	ld a, a                                          ; $40c3: $7f
	and b                                            ; $40c4: $a0
	ld l, a                                          ; $40c5: $6f
	and b                                            ; $40c6: $a0
	sbc l                                            ; $40c7: $9d
	add hl, sp                                       ; $40c8: $39
	ccf                                              ; $40c9: $3f
	ld c, e                                          ; $40ca: $4b
	and b                                            ; $40cb: $a0
	sub [hl]                                         ; $40cc: $96
	db $ed                                           ; $40cd: $ed
	ld a, [$feb5]                                    ; $40ce: $fa $b5 $fe
	pop hl                                           ; $40d1: $e1
	cp a                                             ; $40d2: $bf
	db $e3                                           ; $40d3: $e3
	rst $38                                          ; $40d4: $ff
	ld b, a                                          ; $40d5: $47
	ld l, a                                          ; $40d6: $6f
	and b                                            ; $40d7: $a0
	rst SubAFromDE                                          ; $40d8: $df
	ldh a, [$9c]                                     ; $40d9: $f0 $9c
	inc h                                            ; $40db: $24
	rst $38                                          ; $40dc: $ff
	inc h                                            ; $40dd: $24
	ld a, e                                          ; $40de: $7b
	sbc $7f                                          ; $40df: $de $7f
	cp $7f                                           ; $40e1: $fe $7f
	cp d                                             ; $40e3: $ba
	add d                                            ; $40e4: $82
	or e                                             ; $40e5: $b3
	db $ed                                           ; $40e6: $ed
	cp e                                             ; $40e7: $bb
	ld l, l                                          ; $40e8: $6d
	rst $38                                          ; $40e9: $ff
	rst SubAFromBC                                          ; $40ea: $e7
	rst $38                                          ; $40eb: $ff
	and e                                            ; $40ec: $a3
	rst $38                                          ; $40ed: $ff
	pop hl                                           ; $40ee: $e1
	cp a                                             ; $40ef: $bf
	pop hl                                           ; $40f0: $e1
	rst $38                                          ; $40f1: $ff
	ld b, b                                          ; $40f2: $40
	rst $38                                          ; $40f3: $ff
	inc d                                            ; $40f4: $14
	db $eb                                           ; $40f5: $eb
	sbc h                                            ; $40f6: $9c
	ld e, a                                          ; $40f7: $5f
	ld h, b                                          ; $40f8: $60
	inc sp                                           ; $40f9: $33
	ccf                                              ; $40fa: $3f
	add hl, bc                                       ; $40fb: $09
	rst $38                                          ; $40fc: $ff
	adc b                                            ; $40fd: $88
	rst $38                                          ; $40fe: $ff
	and h                                            ; $40ff: $a4
	rst $38                                          ; $4100: $ff
	sub h                                            ; $4101: $94
	ld [hl], e                                       ; $4102: $73
	cp h                                             ; $4103: $bc
	add a                                            ; $4104: $87
	ld h, l                                          ; $4105: $65
	cp a                                             ; $4106: $bf
	rst FarCall                                          ; $4107: $f7
	db $db                                           ; $4108: $db
	push af                                          ; $4109: $f5
	ld l, e                                          ; $410a: $6b
	db $fd                                           ; $410b: $fd
	jp $c77e                                         ; $410c: $c3 $7e $c7


	cp $8f                                           ; $410f: $fe $8f
	pop af                                           ; $4111: $f1
	ld de, $30d0                                     ; $4112: $11 $d0 $30
	ld h, b                                          ; $4115: $60
	ldh [$c0], a                                     ; $4116: $e0 $c0
	ret nz                                           ; $4118: $c0

	ld bc, $0001                                     ; $4119: $01 $01 $00
	ld bc, $03de                                     ; $411c: $01 $de $03
	sbc h                                            ; $411f: $9c
	ld [bc], a                                       ; $4120: $02
	inc bc                                           ; $4121: $03
	ld [bc], a                                       ; $4122: $02
	ld a, e                                          ; $4123: $7b
	db $fd                                           ; $4124: $fd
	sbc h                                            ; $4125: $9c
	inc bc                                           ; $4126: $03
	ld bc, $7301                                     ; $4127: $01 $01 $73
	ld a, [$039c]                                    ; $412a: $fa $9c $03
	dec b                                            ; $412d: $05
	rlca                                             ; $412e: $07
	ld h, a                                          ; $412f: $67
	cp $84                                           ; $4130: $fe $84
	ld h, d                                          ; $4132: $62
	sbc [hl]                                         ; $4133: $9e
	dec b                                            ; $4134: $05
	rst $38                                          ; $4135: $ff
	inc a                                            ; $4136: $3c
	rst $38                                          ; $4137: $ff
	db $f4                                           ; $4138: $f4
	rst GetHLinHL                                          ; $4139: $cf
	db $f4                                           ; $413a: $f4
	rrca                                             ; $413b: $0f
	xor b                                            ; $413c: $a8
	ld e, a                                          ; $413d: $5f
	ld [$f8ff], sp                                   ; $413e: $08 $ff $f8
	rst $38                                          ; $4141: $ff
	ld e, b                                          ; $4142: $58
	rst $38                                          ; $4143: $ff
	ld d, a                                          ; $4144: $57
	rst $38                                          ; $4145: $ff
	ld e, a                                          ; $4146: $5f
	ld hl, sp+$5f                                    ; $4147: $f8 $5f
	ld hl, sp+$2f                                    ; $4149: $f8 $2f
	ld sp, hl                                        ; $414b: $f9
	ld l, $7b                                        ; $414c: $2e $7b
	add [hl]                                         ; $414e: $86
	sbc [hl]                                         ; $414f: $9e
	daa                                              ; $4150: $27
	ld [hl], d                                       ; $4151: $72
	and b                                            ; $4152: $a0
	db $dd                                           ; $4153: $dd
	add b                                            ; $4154: $80
	sbc l                                            ; $4155: $9d
	ld b, b                                          ; $4156: $40
	ret nz                                           ; $4157: $c0

	ld l, a                                          ; $4158: $6f
	cp $d3                                           ; $4159: $fe $d3
	add b                                            ; $415b: $80
	ei                                               ; $415c: $fb
	db $db                                           ; $415d: $db
	ld bc, $a677                                     ; $415e: $01 $77 $a6
	ld a, a                                          ; $4161: $7f
	cp $9d                                           ; $4162: $fe $9d
	ld b, $07                                        ; $4164: $06 $07
	ld a, e                                          ; $4166: $7b
	xor e                                            ; $4167: $ab
	sbc h                                            ; $4168: $9c
	inc b                                            ; $4169: $04
	inc bc                                           ; $416a: $03
	inc bc                                           ; $416b: $03
	ld sp, hl                                        ; $416c: $f9
	adc h                                            ; $416d: $8c

jr_01d_416e:
	ld c, h                                          ; $416e: $4c
	ld [hl], e                                       ; $416f: $73
	ret nz                                           ; $4170: $c0

	rst $38                                          ; $4171: $ff
	ld [hl], e                                       ; $4172: $73
	rst $38                                          ; $4173: $ff
	ld e, a                                          ; $4174: $5f
	db $ec                                           ; $4175: $ec
	ld e, a                                          ; $4176: $5f
	ldh [rWY], a                                     ; $4177: $e0 $4a
	push af                                          ; $4179: $f5
	ld b, b                                          ; $417a: $40
	rst $38                                          ; $417b: $ff
	ld a, a                                          ; $417c: $7f
	rst $38                                          ; $417d: $ff
	ld d, l                                          ; $417e: $55
	rst $38                                          ; $417f: $ff
	push de                                          ; $4180: $d5
	ld a, e                                          ; $4181: $7b
	cp $7f                                           ; $4182: $fe $7f
	ld c, [hl]                                       ; $4184: $4e
	ld a, a                                          ; $4185: $7f
	cp $9e                                           ; $4186: $fe $9e
	db $e4                                           ; $4188: $e4
	ld [hl], e                                       ; $4189: $73
	cp $80                                           ; $418a: $fe $80
	jr nz, jr_01d_416e                               ; $418c: $20 $e0

	ret nc                                           ; $418e: $d0

	ldh a, [hDisp0_WY]                                     ; $418f: $f0 $88
	ld hl, sp+$04                                    ; $4191: $f8 $04
	db $fc                                           ; $4193: $fc
	ld [bc], a                                       ; $4194: $02
	cp $43                                           ; $4195: $fe $43
	rst $38                                          ; $4197: $ff
	pop bc                                           ; $4198: $c1
	rst $38                                          ; $4199: $ff
	pop hl                                           ; $419a: $e1
	rst $38                                          ; $419b: $ff
	ld h, [hl]                                       ; $419c: $66
	cp $7f                                           ; $419d: $fe $7f
	ld sp, hl                                        ; $419f: $f9
	ccf                                              ; $41a0: $3f
	pop af                                           ; $41a1: $f1
	xor a                                            ; $41a2: $af
	jp hl                                            ; $41a3: $e9


	and [hl]                                         ; $41a4: $a6
	and $90                                          ; $41a5: $e6 $90
	ldh a, [hDisp1_SCY]                                     ; $41a7: $f0 $90
	ldh a, [$e0]                                     ; $41a9: $f0 $e0
	sbc [hl]                                         ; $41ab: $9e
	ldh [$57], a                                     ; $41ac: $e0 $57
	sbc [hl]                                         ; $41ae: $9e
	db $db                                           ; $41af: $db
	ld bc, $86f3                                     ; $41b0: $01 $f3 $86
	ld h, $39                                        ; $41b3: $26 $39
	ld d, b                                          ; $41b5: $50
	ld a, a                                          ; $41b6: $7f
	sbc c                                            ; $41b7: $99
	rst AddAOntoHL                                          ; $41b8: $ef
	adc a                                            ; $41b9: $8f
	or $2f                                           ; $41ba: $f6 $2f
	ldh a, [rAUDTERM]                                ; $41bc: $f0 $25
	ld a, [$ff20]                                    ; $41be: $fa $20 $ff
	ccf                                              ; $41c1: $3f
	rst $38                                          ; $41c2: $ff
	xor d                                            ; $41c3: $aa
	rst $38                                          ; $41c4: $ff
	ld [$2aff], a                                    ; $41c5: $ea $ff $2a
	ccf                                              ; $41c8: $3f
	ld c, d                                          ; $41c9: $4a
	ld a, a                                          ; $41ca: $7f
	ld d, d                                          ; $41cb: $52
	ld l, e                                          ; $41cc: $6b
	cp $7f                                           ; $41cd: $fe $7f

jr_01d_41cf:
	and b                                            ; $41cf: $a0
	adc l                                            ; $41d0: $8d
	ld d, b                                          ; $41d1: $50
	ldh a, [$c8]                                     ; $41d2: $f0 $c8
	cp b                                             ; $41d4: $b8
	adc h                                            ; $41d5: $8c
	ld a, h                                          ; $41d6: $7c
	and h                                            ; $41d7: $a4
	ld a, h                                          ; $41d8: $7c
	inc h                                            ; $41d9: $24
	db $fc                                           ; $41da: $fc
	inc h                                            ; $41db: $24
	db $fc                                           ; $41dc: $fc
	db $e4                                           ; $41dd: $e4
	db $fc                                           ; $41de: $fc
	xor h                                            ; $41df: $ac
	db $fc                                           ; $41e0: $fc
	cp b                                             ; $41e1: $b8
	ld hl, sp+$77                                    ; $41e2: $f8 $77
	and [hl]                                         ; $41e4: $a6
	ld a, a                                          ; $41e5: $7f
	ld [$fe6f], a                                    ; $41e6: $ea $6f $fe
	ld b, a                                          ; $41e9: $47
	and b                                            ; $41ea: $a0
	pop af                                           ; $41eb: $f1
	sbc b                                            ; $41ec: $98
	ld h, [hl]                                       ; $41ed: $66
	ld a, c                                          ; $41ee: $79
	sub b                                            ; $41ef: $90
	rst $38                                          ; $41f0: $ff
	adc c                                            ; $41f1: $89
	rst $38                                          ; $41f2: $ff
	rrca                                             ; $41f3: $0f
	ld l, e                                          ; $41f4: $6b
	and b                                            ; $41f5: $a0
	sbc [hl]                                         ; $41f6: $9e
	cp a                                             ; $41f7: $bf
	ld a, e                                          ; $41f8: $7b
	and d                                            ; $41f9: $a2

jr_01d_41fa:
	sbc c                                            ; $41fa: $99
	ld l, d                                          ; $41fb: $6a
	ld a, a                                          ; $41fc: $7f
	ld a, [hl+]                                      ; $41fd: $2a
	ccf                                              ; $41fe: $3f
	ld a, [hl+]                                      ; $41ff: $2a
	ccf                                              ; $4200: $3f
	ld [hl], a                                       ; $4201: $77
	and h                                            ; $4202: $a4
	sbc [hl]                                         ; $4203: $9e
	ld d, h                                          ; $4204: $54
	ld a, e                                          ; $4205: $7b
	cp $9b                                           ; $4206: $fe $9b
	jr nz, jr_01d_41fa                               ; $4208: $20 $f0

	ld c, b                                          ; $420a: $48
	ld hl, sp+$77                                    ; $420b: $f8 $77
	ld b, b                                          ; $420d: $40
	ld [hl], a                                       ; $420e: $77
	and d                                            ; $420f: $a2
	ld a, a                                          ; $4210: $7f
	cp $9e                                           ; $4211: $fe $9e
	db $ec                                           ; $4213: $ec
	ld a, e                                          ; $4214: $7b
	and d                                            ; $4215: $a2
	sbc [hl]                                         ; $4216: $9e
	or b                                             ; $4217: $b0
	ld a, e                                          ; $4218: $7b
	and d                                            ; $4219: $a2
	ld e, a                                          ; $421a: $5f
	sbc [hl]                                         ; $421b: $9e
	rst AddAOntoHL                                          ; $421c: $ef
	ld c, a                                          ; $421d: $4f
	sbc h                                            ; $421e: $9c
	rst SubAFromDE                                          ; $421f: $df
	rlca                                             ; $4220: $07
	sbc [hl]                                         ; $4221: $9e
	inc b                                            ; $4222: $04
	ld a, e                                          ; $4223: $7b
	db $fd                                           ; $4224: $fd
	sub d                                            ; $4225: $92
	rrca                                             ; $4226: $0f
	add hl, bc                                       ; $4227: $09
	rst AddAOntoHL                                          ; $4228: $ef
	db $ed                                           ; $4229: $ed
	rst SubAFromDE                                          ; $422a: $df
	or e                                             ; $422b: $b3
	rst $38                                          ; $422c: $ff
	db $fd                                           ; $422d: $fd
	ld a, [hl]                                       ; $422e: $7e
	ld a, [hl]                                       ; $422f: $7e
	ld a, $3e                                        ; $4230: $3e $3e
	rst $38                                          ; $4232: $ff
	ld d, c                                          ; $4233: $51
	inc l                                            ; $4234: $2c
	ld a, l                                          ; $4235: $7d
	jr c, jr_01d_41cf                                ; $4236: $38 $97

	cp a                                             ; $4238: $bf
	or c                                             ; $4239: $b1
	sbc a                                            ; $423a: $9f
	sbc b                                            ; $423b: $98
	rrca                                             ; $423c: $0f
	inc c                                            ; $423d: $0c
	rlca                                             ; $423e: $07
	ld b, $72                                        ; $423f: $06 $72
	ld a, [hl-]                                      ; $4241: $3a
	ld a, [hl]                                       ; $4242: $7e
	and b                                            ; $4243: $a0
	ld a, [hl]                                       ; $4244: $7e
	ld d, c                                          ; $4245: $51
	ld a, a                                          ; $4246: $7f
	ld [hl], d                                       ; $4247: $72
	sbc [hl]                                         ; $4248: $9e
	rrca                                             ; $4249: $0f
	di                                               ; $424a: $f3
	rst SubAFromDE                                          ; $424b: $df
	add b                                            ; $424c: $80
	ld a, [hl]                                       ; $424d: $7e
	ld h, a                                          ; $424e: $67
	sbc d                                            ; $424f: $9a
	ldh [$60], a                                     ; $4250: $e0 $60
	ldh [$a0], a                                     ; $4252: $e0 $a0
	ldh a, [$79]                                     ; $4254: $f0 $79
	ret nc                                           ; $4256: $d0

	rst SubAFromDE                                          ; $4257: $df
	ldh a, [$df]                                     ; $4258: $f0 $df
	ldh [$df], a                                     ; $425a: $e0 $df
	ld hl, sp-$09                                    ; $425c: $f8 $f7
	rst SubAFromDE                                          ; $425e: $df
	ld a, a                                          ; $425f: $7f
	adc e                                            ; $4260: $8b
	ld a, $26                                        ; $4261: $3e $26
	ccf                                              ; $4263: $3f
	inc hl                                           ; $4264: $23
	rla                                              ; $4265: $17
	dec de                                           ; $4266: $1b
	rra                                              ; $4267: $1f
	rla                                              ; $4268: $17
	rra                                              ; $4269: $1f
	add hl, de                                       ; $426a: $19
	rra                                              ; $426b: $1f
	inc de                                           ; $426c: $13
	ccf                                              ; $426d: $3f
	ccf                                              ; $426e: $3f
	ld l, a                                          ; $426f: $6f
	ld e, a                                          ; $4270: $5f
	rst $38                                          ; $4271: $ff
	rst $38                                          ; $4272: $ff
	ld a, a                                          ; $4273: $7f
	ld a, a                                          ; $4274: $7f
	ld d, a                                          ; $4275: $57
	call nz, $f867                                   ; $4276: $c4 $67 $f8
	ld a, e                                          ; $4279: $7b
	cp d                                             ; $427a: $ba
	sbc [hl]                                         ; $427b: $9e
	ret nz                                           ; $427c: $c0

	db $dd                                           ; $427d: $dd
	ldh [$df], a                                     ; $427e: $e0 $df
	ret nz                                           ; $4280: $c0

	ld d, a                                          ; $4281: $57
	ret nz                                           ; $4282: $c0

	db $ed                                           ; $4283: $ed
	ld e, [hl]                                       ; $4284: $5e
	ld [hl+], a                                      ; $4285: $22
	rst $38                                          ; $4286: $ff
	rst SubAFromDE                                          ; $4287: $df
	ccf                                              ; $4288: $3f
	sbc c                                            ; $4289: $99
	rrca                                             ; $428a: $0f
	ld a, [bc]                                       ; $428b: $0a
	rrca                                             ; $428c: $0f
	ld a, [bc]                                       ; $428d: $0a
	dec de                                           ; $428e: $1b
	rla                                              ; $428f: $17
	ld a, e                                          ; $4290: $7b
	and h                                            ; $4291: $a4
	sub [hl]                                         ; $4292: $96
	cpl                                              ; $4293: $2f
	ccf                                              ; $4294: $3f
	inc sp                                           ; $4295: $33
	ld a, a                                          ; $4296: $7f
	ld a, a                                          ; $4297: $7f
	ld a, d                                          ; $4298: $7a
	halt                                             ; $4299: $76
	ld a, [hl]                                       ; $429a: $7e
	ld a, [hl]                                       ; $429b: $7e
	ld d, a                                          ; $429c: $57
	ld a, $7b                                        ; $429d: $3e $7b
	or b                                             ; $429f: $b0
	ld a, c                                          ; $42a0: $79
	ret                                              ; $42a1: $c9


	adc l                                            ; $42a2: $8d
	ld h, b                                          ; $42a3: $60
	and b                                            ; $42a4: $a0
	ldh [rAUD4LEN], a                                ; $42a5: $e0 $20
	ldh [$e0], a                                     ; $42a7: $e0 $e0
	ldh a, [rAUD1SWEEP]                              ; $42a9: $f0 $10
	ldh a, [$f0]                                     ; $42ab: $f0 $f0
	ld hl, sp-$08                                    ; $42ad: $f8 $f8
	add sp, -$28                                     ; $42af: $e8 $d8
	ld hl, sp-$08                                    ; $42b1: $f8 $f8
	ld a, [hl]                                       ; $42b3: $7e
	ld a, [hl]                                       ; $42b4: $7e
	inc bc                                           ; $42b5: $03
	and b                                            ; $42b6: $a0
	ld d, e                                          ; $42b7: $53
	and b                                            ; $42b8: $a0
	sbc e                                            ; $42b9: $9b
	ld a, [de]                                       ; $42ba: $1a
	rla                                              ; $42bb: $17
	rra                                              ; $42bc: $1f
	ld [de], a                                       ; $42bd: $12
	ld a, e                                          ; $42be: $7b
	and b                                            ; $42bf: $a0
	sbc c                                            ; $42c0: $99
	ld [hl-], a                                      ; $42c1: $32
	ld a, a                                          ; $42c2: $7f
	ld a, a                                          ; $42c3: $7f
	ld a, e                                          ; $42c4: $7b
	ld [hl], a                                       ; $42c5: $77
	ld a, a                                          ; $42c6: $7f
	ld a, e                                          ; $42c7: $7b
	and b                                            ; $42c8: $a0
	ld e, a                                          ; $42c9: $5f
	sbc $6f                                          ; $42ca: $de $6f
	and b                                            ; $42cc: $a0
	ld a, e                                          ; $42cd: $7b
	and d                                            ; $42ce: $a2
	ld a, e                                          ; $42cf: $7b
	and b                                            ; $42d0: $a0
	ld [hl], e                                       ; $42d1: $73
	db $fc                                           ; $42d2: $fc
	ld a, d                                          ; $42d3: $7a
	rst FarCall                                          ; $42d4: $f7
	rst SubAFromDE                                          ; $42d5: $df
	ret nz                                           ; $42d6: $c0

	rst SubAFromDE                                          ; $42d7: $df
	db $fc                                           ; $42d8: $fc
	ld sp, hl                                        ; $42d9: $f9
	cp b                                             ; $42da: $b8
	inc bc                                           ; $42db: $03
	rst AddAOntoHL                                          ; $42dc: $ef
	rst SubAFromDE                                          ; $42dd: $df
	ld bc, $03df                                     ; $42de: $01 $df $03
	sub l                                            ; $42e1: $95
	ld b, $07                                        ; $42e2: $06 $07
	add hl, bc                                       ; $42e4: $09
	rrca                                             ; $42e5: $0f
	ld [de], a                                       ; $42e6: $12
	rra                                              ; $42e7: $1f
	inc sp                                           ; $42e8: $33
	ccf                                              ; $42e9: $3f
	inc h                                            ; $42ea: $24
	ccf                                              ; $42eb: $3f
	push af                                          ; $42ec: $f5
	rst SubAFromDE                                          ; $42ed: $df
	ld e, $8d                                        ; $42ee: $1e $8d
	ld h, h                                          ; $42f0: $64
	ld a, a                                          ; $42f1: $7f
	db $eb                                           ; $42f2: $eb
	cp a                                             ; $42f3: $bf
	rst $38                                          ; $42f4: $ff
	inc d                                            ; $42f5: $14
	rst $38                                          ; $42f6: $ff
	ld a, h                                          ; $42f7: $7c
	db $d3                                           ; $42f8: $d3
	rst $38                                          ; $42f9: $ff
	ld [de], a                                       ; $42fa: $12
	rst $38                                          ; $42fb: $ff
	ld de, $21ff                                     ; $42fc: $11 $ff $21
	rst $38                                          ; $42ff: $ff
	or c                                             ; $4300: $b1
	rst $38                                          ; $4301: $ff
	di                                               ; $4302: $f3
	rst SubAFromDE                                          ; $4303: $df
	add b                                            ; $4304: $80
	adc a                                            ; $4305: $8f
	ldh [$60], a                                     ; $4306: $e0 $60
	ldh a, [$30]                                     ; $4308: $f0 $30
	ret c                                            ; $430a: $d8

	ld a, b                                          ; $430b: $78
	ret z                                            ; $430c: $c8

	ld hl, sp+$4c                                    ; $430d: $f8 $4c
	db $fc                                           ; $430f: $fc
	inc h                                            ; $4310: $24
	db $fc                                           ; $4311: $fc
	ld [hl], h                                       ; $4312: $74
	db $fc                                           ; $4313: $fc
	ld d, h                                          ; $4314: $54
	db $fc                                           ; $4315: $fc
	ldh a, [c]                                       ; $4316: $f2
	sbc d                                            ; $4317: $9a
	inc b                                            ; $4318: $04
	nop                                              ; $4319: $00
	ld c, $00                                        ; $431a: $0e $00
	ld e, $7b                                        ; $431c: $1e $7b
	cp $7f                                           ; $431e: $fe $7f
	ld a, [$fe7f]                                    ; $4320: $fa $7f $fe
	sbc [hl]                                         ; $4323: $9e
	rlca                                             ; $4324: $07
	ld a, e                                          ; $4325: $7b
	cp $9e                                           ; $4326: $fe $9e
	rrca                                             ; $4328: $0f
	jp hl                                            ; $4329: $e9


	rst SubAFromDE                                          ; $432a: $df
	ld bc, $029e                                     ; $432b: $01 $9e $02
	ld a, e                                          ; $432e: $7b
	ld a, d                                          ; $432f: $7a
	sbc l                                            ; $4330: $9d
	inc b                                            ; $4331: $04
	rlca                                             ; $4332: $07
	push af                                          ; $4333: $f5
	rst SubAFromDE                                          ; $4334: $df
	inc bc                                           ; $4335: $03
	adc [hl]                                         ; $4336: $8e
	inc e                                            ; $4337: $1c
	rra                                              ; $4338: $1f
	dec a                                            ; $4339: $3d
	daa                                              ; $433a: $27
	ccf                                              ; $433b: $3f
	ld [hl+], a                                      ; $433c: $22
	ld a, a                                          ; $433d: $7f
	ld l, a                                          ; $433e: $6f
	jp c, $22ff                                      ; $433f: $da $ff $22

	rst $38                                          ; $4342: $ff
	ld b, d                                          ; $4343: $42
	rst $38                                          ; $4344: $ff
	ld h, h                                          ; $4345: $64
	rst $38                                          ; $4346: $ff
	sub [hl]                                         ; $4347: $96
	ld d, e                                          ; $4348: $53
	add b                                            ; $4349: $80
	rst SubAFromDE                                          ; $434a: $df
	ret nz                                           ; $434b: $c0

	adc [hl]                                         ; $434c: $8e
	or b                                             ; $434d: $b0
	ldh a, [$78]                                     ; $434e: $f0 $78
	ret z                                            ; $4350: $c8

	db $fc                                           ; $4351: $fc
	adc h                                            ; $4352: $8c
	cp $8e                                           ; $4353: $fe $8e
	ld a, e                                          ; $4355: $7b
	rst $38                                          ; $4356: $ff
	ld c, c                                          ; $4357: $49
	rst $38                                          ; $4358: $ff
	dec h                                            ; $4359: $25
	rst $38                                          ; $435a: $ff
	ld l, $ff                                        ; $435b: $2e $ff
	ld a, [hl+]                                      ; $435d: $2a
	ld c, e                                          ; $435e: $4b
	ld h, b                                          ; $435f: $60
	ld b, a                                          ; $4360: $47
	ld d, d                                          ; $4361: $52
	rst SubAFromDE                                          ; $4362: $df
	add b                                            ; $4363: $80
	ccf                                              ; $4364: $3f
	adc b                                            ; $4365: $88
	rla                                              ; $4366: $17
	nop                                              ; $4367: $00
	sbc e                                            ; $4368: $9b
	push hl                                          ; $4369: $e5
	rst $38                                          ; $436a: $ff
	db $eb                                           ; $436b: $eb
	ld a, $77                                        ; $436c: $3e $77
	nop                                              ; $436e: $00
	sbc [hl]                                         ; $436f: $9e
	bit 7, e                                         ; $4370: $cb $7b
	ld [bc], a                                       ; $4372: $02
	ld [hl], a                                       ; $4373: $77
	nop                                              ; $4374: $00
	sbc [hl]                                         ; $4375: $9e
	or d                                             ; $4376: $b2
	ld b, e                                          ; $4377: $43
	nop                                              ; $4378: $00
	sub d                                            ; $4379: $92
	ldh a, [rSVBK]                                   ; $437a: $f0 $70
	ret z                                            ; $437c: $c8

	ld a, b                                          ; $437d: $78
	call nz, $f27c                                   ; $437e: $c4 $7c $f2
	cp $6a                                           ; $4381: $fe $6a
	cp $35                                           ; $4383: $fe $35
	rst $38                                          ; $4385: $ff
	dec hl                                           ; $4386: $2b
	ld a, e                                          ; $4387: $7b
	cp $90                                           ; $4388: $fe $90
	inc c                                            ; $438a: $0c
	rrca                                             ; $438b: $0f
	ld b, $07                                        ; $438c: $06 $07
	dec c                                            ; $438e: $0d
	rrca                                             ; $438f: $0f
	rrca                                             ; $4390: $0f
	inc c                                            ; $4391: $0c
	rrca                                             ; $4392: $0f
	inc c                                            ; $4393: $0c
	dec c                                            ; $4394: $0d
	ld c, $0c                                        ; $4395: $0e $0c
	rrca                                             ; $4397: $0f
	rlca                                             ; $4398: $07
	ld a, e                                          ; $4399: $7b
	ld l, $7f                                        ; $439a: $2e $7f
	cp $9b                                           ; $439c: $fe $9b
	ld [bc], a                                       ; $439e: $02
	rlca                                             ; $439f: $07
	ld a, [bc]                                       ; $43a0: $0a
	rrca                                             ; $43a1: $0f
	ld l, a                                          ; $43a2: $6f
	cp $df                                           ; $43a3: $fe $df
	rrca                                             ; $43a5: $0f
	add b                                            ; $43a6: $80
	add $3e                                          ; $43a7: $c6 $3e
	dec c                                            ; $43a9: $0d
	rst $38                                          ; $43aa: $ff
	ld [hl], c                                       ; $43ab: $71
	rst $38                                          ; $43ac: $ff
	ldh [$9f], a                                     ; $43ad: $e0 $9f
	add sp, $1f                                      ; $43af: $e8 $1f
	ld c, b                                          ; $43b1: $48
	cp a                                             ; $43b2: $bf
	ld [$f8ff], sp                                   ; $43b3: $08 $ff $f8
	rst $38                                          ; $43b6: $ff
	xor h                                            ; $43b7: $ac
	rst $38                                          ; $43b8: $ff
	xor a                                            ; $43b9: $af
	rst $38                                          ; $43ba: $ff
	xor a                                            ; $43bb: $af
	ld hl, sp-$61                                    ; $43bc: $f8 $9f
	ld hl, sp+$57                                    ; $43be: $f8 $57
	db $fd                                           ; $43c0: $fd
	ld d, e                                          ; $43c1: $53
	rst $38                                          ; $43c2: $ff
	ld c, [hl]                                       ; $43c3: $4e
	cp $fc                                           ; $43c4: $fe $fc
	ld [hl], d                                       ; $43c6: $72
	ret nz                                           ; $43c7: $c0

	db $dd                                           ; $43c8: $dd
	add b                                            ; $43c9: $80
	rst SubAFromDE                                          ; $43ca: $df
	ret nz                                           ; $43cb: $c0

	sbc [hl]                                         ; $43cc: $9e
	ld b, b                                          ; $43cd: $40
	ld [hl], e                                       ; $43ce: $73
	cp $d5                                           ; $43cf: $fe $d5
	add b                                            ; $43d1: $80
	db $ed                                           ; $43d2: $ed
	rst SubAFromDE                                          ; $43d3: $df
	inc bc                                           ; $43d4: $03
	di                                               ; $43d5: $f3
	adc a                                            ; $43d6: $8f
	ld a, h                                          ; $43d7: $7c
	ld c, h                                          ; $43d8: $4c
	ld a, [hl]                                       ; $43d9: $7e
	ld b, [hl]                                       ; $43da: $46
	cpl                                              ; $43db: $2f
	scf                                              ; $43dc: $37
	ccf                                              ; $43dd: $3f
	cpl                                              ; $43de: $2f
	ccf                                              ; $43df: $3f
	inc sp                                           ; $43e0: $33
	ccf                                              ; $43e1: $3f
	daa                                              ; $43e2: $27
	ld a, a                                          ; $43e3: $7f
	ld a, a                                          ; $43e4: $7f
	rst AddAOntoHL                                          ; $43e5: $ef
	rst SubAFromDE                                          ; $43e6: $df
	db $dd                                           ; $43e7: $dd
	rst $38                                          ; $43e8: $ff
	push af                                          ; $43e9: $f5
	add d                                            ; $43ea: $82
	ld h, $3f                                        ; $43eb: $26 $3f
	ld c, c                                          ; $43ed: $49
	ld a, a                                          ; $43ee: $7f
	ld d, h                                          ; $43ef: $54
	ld a, a                                          ; $43f0: $7f
	ld e, c                                          ; $43f1: $59
	ld a, a                                          ; $43f2: $7f
	ld l, c                                          ; $43f3: $69
	ld a, a                                          ; $43f4: $7f
	ld c, a                                          ; $43f5: $4f
	ld [hl], l                                       ; $43f6: $75
	ld e, a                                          ; $43f7: $5f
	ld [hl], b                                       ; $43f8: $70
	ld e, [hl]                                       ; $43f9: $5e
	inc hl                                           ; $43fa: $23
	ld e, a                                          ; $43fb: $5f
	daa                                              ; $43fc: $27
	ld e, a                                          ; $43fd: $5f
	cpl                                              ; $43fe: $2f
	cpl                                              ; $43ff: $2f
	ld [hl], l                                       ; $4400: $75
	rla                                              ; $4401: $17
	ld e, b                                          ; $4402: $58
	ld c, a                                          ; $4403: $4f
	ret z                                            ; $4404: $c8

	ld c, a                                          ; $4405: $4f
	call z, Call_01d_7a06                            ; $4406: $cc $06 $7a
	add d                                            ; $4409: $82
	add b                                            ; $440a: $80
	ld l, d                                          ; $440b: $6a
	rst $38                                          ; $440c: $ff
	ld d, h                                          ; $440d: $54
	rst $38                                          ; $440e: $ff
	jp z, $e5ff                                      ; $440f: $ca $ff $e5

	ld a, a                                          ; $4412: $7f
	db $fd                                           ; $4413: $fd
	sbc [hl]                                         ; $4414: $9e
	rst $38                                          ; $4415: $ff
	ld c, $ff                                        ; $4416: $0e $ff
	adc [hl]                                         ; $4418: $8e
	ei                                               ; $4419: $fb

jr_01d_441a:
	ld e, d                                          ; $441a: $5a
	pop af                                           ; $441b: $f1
	ld [hl], c                                       ; $441c: $71
	pop hl                                           ; $441d: $e1
	ld hl, $21e1                                     ; $441e: $21 $e1 $21
	pop af                                           ; $4421: $f1
	pop af                                           ; $4422: $f1
	pop de                                           ; $4423: $d1
	pop af                                           ; $4424: $f1
	sbc b                                            ; $4425: $98
	ld a, b                                          ; $4426: $78
	ret c                                            ; $4427: $d8

	jr z, jr_01d_441a                                ; $4428: $28 $f0

	add d                                            ; $442a: $82
	ldh a, [rWY]                                     ; $442b: $f0 $4a
	cp $4a                                           ; $442d: $fe $4a
	cp $8a                                           ; $442f: $fe $8a
	cp $8d                                           ; $4431: $fe $8d
	rst $38                                          ; $4433: $ff
	call Call_01d_5bff                               ; $4434: $cd $ff $5b
	rst $38                                          ; $4437: $ff
	ld sp, hl                                        ; $4438: $f9
	ld a, a                                          ; $4439: $7f
	or h                                             ; $443a: $b4
	ld e, a                                          ; $443b: $5f
	ldh a, [c]                                       ; $443c: $f2
	ld e, a                                          ; $443d: $5f
	reti                                             ; $443e: $d9


	ld a, a                                          ; $443f: $7f
	call z, $e36f                                    ; $4440: $cc $6f $e3
	ld [hl], e                                       ; $4443: $73
	ldh [$f0], a                                     ; $4444: $e0 $f0
	sub b                                            ; $4446: $90
	sbc b                                            ; $4447: $98
	ccf                                              ; $4448: $3f
	ld e, h                                          ; $4449: $5c
	db $dd                                           ; $444a: $dd
	add b                                            ; $444b: $80
	sbc c                                            ; $444c: $99
	ld b, b                                          ; $444d: $40
	ldh a, [hDisp1_SCY]                                     ; $444e: $f0 $90
	ldh a, [$e0]                                     ; $4450: $f0 $e0
	ldh [$61], a                                     ; $4452: $e0 $61
	rst AddAOntoHL                                          ; $4454: $ef
	ld a, d                                          ; $4455: $7a
	sub [hl]                                         ; $4456: $96
	ld a, [hl]                                       ; $4457: $7e
	ld hl, sp-$6b                                    ; $4458: $f8 $95
	dec bc                                           ; $445a: $0b
	rrca                                             ; $445b: $0f
	dec c                                            ; $445c: $0d
	rrca                                             ; $445d: $0f
	add hl, bc                                       ; $445e: $09
	ld c, $0b                                        ; $445f: $0e $0b
	ld c, $0b                                        ; $4461: $0e $0b
	inc b                                            ; $4463: $04
	ld a, e                                          ; $4464: $7b
	cp $df                                           ; $4465: $fe $df
	dec b                                            ; $4467: $05
	sbc b                                            ; $4468: $98
	ld c, $02                                        ; $4469: $0e $02
	dec bc                                           ; $446b: $0b
	add hl, bc                                       ; $446c: $09
	add hl, de                                       ; $446d: $19
	ld de, $fd11                                     ; $446e: $11 $11 $fd
	ld a, a                                          ; $4471: $7f
	xor b                                            ; $4472: $a8
	ld a, [hl]                                       ; $4473: $7e
	inc a                                            ; $4474: $3c
	sub c                                            ; $4475: $91
	sbc c                                            ; $4476: $99
	rst $38                                          ; $4477: $ff
	inc a                                            ; $4478: $3c
	rst SubAFromBC                                          ; $4479: $e7
	ld a, $e3                                        ; $447a: $3e $e3
	jp c, $ffb7                                      ; $447c: $da $b7 $ff

	inc b                                            ; $447f: $04
	sbc $61                                          ; $4480: $de $61
	rst $38                                          ; $4482: $ff
	pop hl                                           ; $4483: $e1
	ld a, e                                          ; $4484: $7b
	cp $8f                                           ; $4485: $fe $8f
	and c                                            ; $4487: $a1
	rst $38                                          ; $4488: $ff
	ld e, $fb                                        ; $4489: $1e $fb
	ld e, $f3                                        ; $448b: $1e $f3
	adc [hl]                                         ; $448d: $8e
	db $db                                           ; $448e: $db
	push hl                                          ; $448f: $e5
	ccf                                              ; $4490: $3f
	ccf                                              ; $4491: $3f
	ld c, c                                          ; $4492: $49
	rst $38                                          ; $4493: $ff
	adc c                                            ; $4494: $89
	rst $38                                          ; $4495: $ff
	ld d, c                                          ; $4496: $51
	ld a, c                                          ; $4497: $79
	ld a, b                                          ; $4498: $78
	add a                                            ; $4499: $87
	cp c                                             ; $449a: $b9
	rst SubAFromDE                                          ; $449b: $df
	db $eb                                           ; $449c: $eb
	rst SubAFromDE                                          ; $449d: $df
	rst $38                                          ; $449e: $ff
	rrca                                             ; $449f: $0f
	rst FarCall                                          ; $44a0: $f7
	adc e                                            ; $44a1: $8b
	rst $38                                          ; $44a2: $ff
	jp z, $eefb                                      ; $44a3: $ca $fb $ee

	rst $38                                          ; $44a6: $ff
	ld c, [hl]                                       ; $44a7: $4e
	jp hl                                            ; $44a8: $e9


	add hl, de                                       ; $44a9: $19
	ldh a, [rAUD1SWEEP]                              ; $44aa: $f0 $10
	ldh [$60], a                                     ; $44ac: $e0 $60
	add c                                            ; $44ae: $81
	add c                                            ; $44af: $81
	ld [bc], a                                       ; $44b0: $02
	ld [bc], a                                       ; $44b1: $02
	ld a, e                                          ; $44b2: $7b
	sub b                                            ; $44b3: $90
	ld a, d                                          ; $44b4: $7a
	jp z, $c0df                                      ; $44b5: $ca $df $c0

	sbc h                                            ; $44b8: $9c
	and b                                            ; $44b9: $a0
	ldh [$60], a                                     ; $44ba: $e0 $60
	ld a, e                                          ; $44bc: $7b
	cp $7b                                           ; $44bd: $fe $7b
	add l                                            ; $44bf: $85
	ld a, a                                          ; $44c0: $7f
	cp $90                                           ; $44c1: $fe $90
	db $10                                           ; $44c3: $10
	ldh a, [$30]                                     ; $44c4: $f0 $30
	ret nc                                           ; $44c6: $d0

	ld [hl], b                                       ; $44c7: $70
	xor b                                            ; $44c8: $a8
	ld a, [$fef4]                                    ; $44c9: $fa $f4 $fe
	jr c, jr_01d_450a                                ; $44cc: $38 $3c

	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	ld h, [hl]                                       ; $44d0: $66
	ld a, a                                          ; $44d1: $7f
	ld l, a                                          ; $44d2: $6f
	nop                                              ; $44d3: $00
	add a                                            ; $44d4: $87
	add hl, hl                                       ; $44d5: $29
	ld a, a                                          ; $44d6: $7f
	ld l, $35                                        ; $44d7: $2e $35
	rra                                              ; $44d9: $1f
	jr nc, jr_01d_44fb                               ; $44da: $30 $1f

	ld d, $1f                                        ; $44dc: $16 $1f
	dec a                                            ; $44de: $3d
	ccf                                              ; $44df: $3f
	ld a, a                                          ; $44e0: $7f
	ld e, l                                          ; $44e1: $5d
	ld d, a                                          ; $44e2: $57
	rla                                              ; $44e3: $17
	ld a, [de]                                       ; $44e4: $1a
	rrca                                             ; $44e5: $0f
	ld [$0407], sp                                   ; $44e6: $08 $07 $04
	ld [bc], a                                       ; $44e9: $02
	inc bc                                           ; $44ea: $03
	ld bc, $6b01                                     ; $44eb: $01 $01 $6b
	nop                                              ; $44ee: $00
	sbc b                                            ; $44ef: $98
	ccf                                              ; $44f0: $3f
	push af                                          ; $44f1: $f5
	ld e, $d7                                        ; $44f2: $1e $d7
	cp [hl]                                          ; $44f4: $be
	rst $38                                          ; $44f5: $ff
	jr nz, @+$7c                                     ; $44f6: $20 $7a

	db $fc                                           ; $44f8: $fc
	adc d                                            ; $44f9: $8a
	dec de                                           ; $44fa: $1b

jr_01d_44fb:
	rst $38                                          ; $44fb: $ff
	rrca                                             ; $44fc: $0f
	ei                                               ; $44fd: $fb
	ld c, $ff                                        ; $44fe: $0e $ff
	inc b                                            ; $4500: $04
	rst $38                                          ; $4501: $ff
	sub b                                            ; $4502: $90
	ld l, [hl]                                       ; $4503: $6e
	pop af                                           ; $4504: $f1

jr_01d_4505:
	ei                                               ; $4505: $fb
	rlca                                             ; $4506: $07
	sbc [hl]                                         ; $4507: $9e
	cp $49                                           ; $4508: $fe $49

jr_01d_450a:
	rst $38                                          ; $450a: $ff
	ld b, l                                          ; $450b: $45
	rst $38                                          ; $450c: $ff
	add l                                            ; $450d: $85
	rst $38                                          ; $450e: $ff
	ld [hl], a                                       ; $450f: $77
	nop                                              ; $4510: $00
	sbc [hl]                                         ; $4511: $9e
	ld d, l                                          ; $4512: $55
	ld a, d                                          ; $4513: $7a
	jp c, $b58e                                      ; $4514: $da $8e $b5

	ld c, a                                          ; $4517: $4f
	reti                                             ; $4518: $d9


	ld l, a                                          ; $4519: $6f
	reti                                             ; $451a: $d9


	ld l, a                                          ; $451b: $6f
	jp nc, $f23e                                     ; $451c: $d2 $3e $f2

	ld a, $ea                                        ; $451f: $3e $ea
	cp $a6                                           ; $4521: $fe $a6
	cp [hl]                                          ; $4523: $be
	rla                                              ; $4524: $17
	rra                                              ; $4525: $1f
	dec bc                                           ; $4526: $0b
	ld l, c                                          ; $4527: $69
	jr nz, jr_01d_4505                               ; $4528: $20 $db

	ld bc, $6036                                     ; $452a: $01 $36 $60
	ld a, a                                          ; $452d: $7f
	add hl, bc                                       ; $452e: $09
	sub c                                            ; $452f: $91
	dec bc                                           ; $4530: $0b
	dec c                                            ; $4531: $0d
	ld e, $12                                        ; $4532: $1e $12
	sbc $da                                          ; $4534: $de $da
	cp [hl]                                          ; $4536: $be

jr_01d_4537:
	ld h, [hl]                                       ; $4537: $66
	cp $fa                                           ; $4538: $fe $fa
	db $fc                                           ; $453a: $fc
	db $fc                                           ; $453b: $fc
	ld a, h                                          ; $453c: $7c
	ld a, h                                          ; $453d: $7c
	ld c, [hl]                                       ; $453e: $4e
	ld h, d                                          ; $453f: $62
	rst $38                                          ; $4540: $ff
	sub a                                            ; $4541: $97
	ld a, [hl]                                       ; $4542: $7e
	ld h, d                                          ; $4543: $62
	scf                                              ; $4544: $37
	add hl, sp                                       ; $4545: $39
	rra                                              ; $4546: $1f
	jr @+$11                                         ; $4547: $18 $0f

	inc c                                            ; $4549: $0c
	sbc $07                                          ; $454a: $de $07
	ld a, [hl]                                       ; $454c: $7e
	push de                                          ; $454d: $d5
	sbc b                                            ; $454e: $98
	rlca                                             ; $454f: $07
	ld c, $0d                                        ; $4550: $0e $0d
	rst $38                                          ; $4552: $ff
	rst $38                                          ; $4553: $ff
	rra                                              ; $4554: $1f
	rra                                              ; $4555: $1f
	dec a                                            ; $4556: $3d
	jr c, jr_01d_4537                                ; $4557: $38 $de

	ret nz                                           ; $4559: $c0

	sbc [hl]                                         ; $455a: $9e
	ld b, b                                          ; $455b: $40
	db $db                                           ; $455c: $db
	ldh [$df], a                                     ; $455d: $e0 $df
	ret nz                                           ; $455f: $c0

	rst SubAFromDE                                          ; $4560: $df
	ldh a, [rAUDTERM]                                ; $4561: $f0 $25
	inc d                                            ; $4563: $14
	db $dd                                           ; $4564: $dd
	ret nz                                           ; $4565: $c0

	ld a, c                                          ; $4566: $79
	ld e, [hl]                                       ; $4567: $5e
	ld d, e                                          ; $4568: $53
	ldh [$74], a                                     ; $4569: $e0 $74
	sbc d                                            ; $456b: $9a
	ld a, [hl]                                       ; $456c: $7e
	add h                                            ; $456d: $84
	adc a                                            ; $456e: $8f
	add hl, de                                       ; $456f: $19
	rra                                              ; $4570: $1f
	ld sp, $213f                                     ; $4571: $31 $3f $21
	ccf                                              ; $4574: $3f
	ld [hl], e                                       ; $4575: $73
	ld a, a                                          ; $4576: $7f
	cp $9e                                           ; $4577: $fe $9e
	ld hl, sp-$78                                    ; $4579: $f8 $88
	ld a, c                                          ; $457b: $79
	ld e, c                                          ; $457c: $59
	ld sp, $6731                                     ; $457d: $31 $31 $67
	ld d, d                                          ; $4580: $52
	rst $38                                          ; $4581: $ff
	sub b                                            ; $4582: $90
	or c                                             ; $4583: $b1
	rst GetHLinHL                                          ; $4584: $cf
	pop af                                           ; $4585: $f1
	adc a                                            ; $4586: $8f
	ret nc                                           ; $4587: $d0

	xor a                                            ; $4588: $af
	ld b, c                                          ; $4589: $41
	cp a                                             ; $458a: $bf
	ld a, $e2                                        ; $458b: $3e $e2
	pop bc                                           ; $458d: $c1
	rst $38                                          ; $458e: $ff
	xor b                                            ; $458f: $a8
	rst $38                                          ; $4590: $ff
	xor d                                            ; $4591: $aa
	ld a, e                                          ; $4592: $7b
	cp $9e                                           ; $4593: $fe $9e
	add hl, hl                                       ; $4595: $29
	ld a, b                                          ; $4596: $78
	and [hl]                                         ; $4597: $a6
	ld a, a                                          ; $4598: $7f
	cp $9e                                           ; $4599: $fe $9e
	inc h                                            ; $459b: $24
	sbc $ff                                          ; $459c: $de $ff
	sbc e                                            ; $459e: $9b
	rst FarCall                                          ; $459f: $f7
	sub h                                            ; $45a0: $94
	push de                                          ; $45a1: $d5
	or [hl]                                          ; $45a2: $b6
	ld d, h                                          ; $45a3: $54
	cp b                                             ; $45a4: $b8
	ld [hl], d                                       ; $45a5: $72
	ld [hl+], a                                      ; $45a6: $22
	ld l, c                                          ; $45a7: $69
	ld e, b                                          ; $45a8: $58
	ld [hl], a                                       ; $45a9: $77
	sub [hl]                                         ; $45aa: $96
	ld e, [hl]                                       ; $45ab: $5e
	nop                                              ; $45ac: $00
	ld [hl], h                                       ; $45ad: $74
	ld [hl-], a                                      ; $45ae: $32
	ld a, l                                          ; $45af: $7d
	ld [bc], a                                       ; $45b0: $02
	sub a                                            ; $45b1: $97
	ld e, $13                                        ; $45b2: $1e $13
	rra                                              ; $45b4: $1f
	ld de, $090f                                     ; $45b5: $11 $0f $09
	ld b, $06                                        ; $45b8: $06 $06
	push af                                          ; $45ba: $f5
	adc h                                            ; $45bb: $8c
	dec hl                                           ; $45bc: $2b
	inc a                                            ; $45bd: $3c
	ld d, a                                          ; $45be: $57
	ld a, b                                          ; $45bf: $78
	xor d                                            ; $45c0: $aa
	push af                                          ; $45c1: $f5
	jr nz, @+$01                                     ; $45c2: $20 $ff

	rla                                              ; $45c4: $17
	ld hl, sp+$38                                    ; $45c5: $f8 $38
	rst $38                                          ; $45c7: $ff
	ld d, l                                          ; $45c8: $55
	rst SubAFromDE                                          ; $45c9: $df
	sub l                                            ; $45ca: $95
	sbc a                                            ; $45cb: $9f
	dec h                                            ; $45cc: $25
	ccf                                              ; $45cd: $3f
	add hl, hl                                       ; $45ce: $29
	ld a, e                                          ; $45cf: $7b
	cp $7e                                           ; $45d0: $fe $7e
	ld l, h                                          ; $45d2: $6c
	sub h                                            ; $45d3: $94
	ld c, a                                          ; $45d4: $4f
	ld a, a                                          ; $45d5: $7f
	dec sp                                           ; $45d6: $3b
	ccf                                              ; $45d7: $3f
	ld e, $12                                        ; $45d8: $1e $12
	ld a, [de]                                       ; $45da: $1a
	ld d, $0c                                        ; $45db: $16 $0c
	db $fc                                           ; $45dd: $fc
	jr nc, jr_01d_465a                               ; $45de: $30 $7a

	ld c, a                                          ; $45e0: $4f
	ld a, d                                          ; $45e1: $7a
	ld c, l                                          ; $45e2: $4d
	sub h                                            ; $45e3: $94
	ldh a, [rAUD4LEN]                                ; $45e4: $f0 $20
	ldh [rAUD4LEN], a                                ; $45e6: $e0 $20
	ldh [$50], a                                     ; $45e8: $e0 $50
	ldh a, [$50]                                     ; $45ea: $f0 $50
	ldh a, [$28]                                     ; $45ec: $f0 $28
	ld hl, sp+$6f                                    ; $45ee: $f8 $6f
	cp $df                                           ; $45f0: $fe $df
	ld hl, sp+$7e                                    ; $45f2: $f8 $7e
	inc [hl]                                         ; $45f4: $34
	sbc l                                            ; $45f5: $9d
	or b                                             ; $45f6: $b0
	ret nc                                           ; $45f7: $d0

	ld [$9c7f], a                                    ; $45f8: $ea $7f $9c
	ld a, [hl]                                       ; $45fb: $7e
	add [hl]                                         ; $45fc: $86
	ld a, [hl]                                       ; $45fd: $7e
	ret c                                            ; $45fe: $d8

	sbc l                                            ; $45ff: $9d
	ld a, [hl]                                       ; $4600: $7e
	nop                                              ; $4601: $00
	ld [hl], b                                       ; $4602: $70
	ret nz                                           ; $4603: $c0

	db $db                                           ; $4604: $db
	ld bc, $7e7f                                     ; $4605: $01 $7f $7e
	ld [hl], a                                       ; $4608: $77
	cp $7f                                           ; $4609: $fe $7f
	ld [de], a                                       ; $460b: $12
	sbc e                                            ; $460c: $9b
	rlca                                             ; $460d: $07
	dec b                                            ; $460e: $05
	rlca                                             ; $460f: $07
	inc b                                            ; $4610: $04
	ld e, [hl]                                       ; $4611: $5e
	ld a, d                                          ; $4612: $7a
	sub b                                            ; $4613: $90
	adc [hl]                                         ; $4614: $8e
	pop af                                           ; $4615: $f1
	ret nz                                           ; $4616: $c0

	rst $38                                          ; $4617: $ff
	inc sp                                           ; $4618: $33
	rst $38                                          ; $4619: $ff
	ld e, a                                          ; $461a: $5f
	db $ec                                           ; $461b: $ec
	ld e, a                                          ; $461c: $5f
	ldh [rWY], a                                     ; $461d: $e0 $4a
	push af                                          ; $461f: $f5
	ld b, b                                          ; $4620: $40
	rst $38                                          ; $4621: $ff
	ld a, a                                          ; $4622: $7f
	ld a, d                                          ; $4623: $7a
	ld a, [hl-]                                      ; $4624: $3a
	sbc [hl]                                         ; $4625: $9e
	push de                                          ; $4626: $d5
	ld a, e                                          ; $4627: $7b
	cp $9c                                           ; $4628: $fe $9c
	and l                                            ; $462a: $a5
	rst $38                                          ; $462b: $ff
	and h                                            ; $462c: $a4
	ld [hl], e                                       ; $462d: $73
	cp $df                                           ; $462e: $fe $df
	ccf                                              ; $4630: $3f
	ld [hl], a                                       ; $4631: $77
	adc h                                            ; $4632: $8c
	sub [hl]                                         ; $4633: $96
	adc b                                            ; $4634: $88
	ld hl, sp+$04                                    ; $4635: $f8 $04
	db $fc                                           ; $4637: $fc
	ld [bc], a                                       ; $4638: $02
	cp $42                                           ; $4639: $fe $42
	cp $c1                                           ; $463b: $fe $c1
	ld a, c                                          ; $463d: $79
	add l                                            ; $463e: $85
	ld a, [hl]                                       ; $463f: $7e
	ld e, c                                          ; $4640: $59
	sub a                                            ; $4641: $97
	ld a, a                                          ; $4642: $7f
	ld sp, hl                                        ; $4643: $f9
	ccf                                              ; $4644: $3f
	pop af                                           ; $4645: $f1
	cpl                                              ; $4646: $2f
	jp hl                                            ; $4647: $e9


	sub [hl]                                         ; $4648: $96
	or $75                                           ; $4649: $f6 $75
	ld a, [hl-]                                      ; $464b: $3a
	rst SubAFromDE                                          ; $464c: $df
	ret nz                                           ; $464d: $c0

	ld c, d                                          ; $464e: $4a
	ld [hl-], a                                      ; $464f: $32
	ld l, d                                          ; $4650: $6a
	db $10                                           ; $4651: $10
	rst FarCall                                          ; $4652: $f7
	sub c                                            ; $4653: $91
	ld e, $1a                                        ; $4654: $1e $1a
	ld a, $2e                                        ; $4656: $3e $2e
	ld a, $22                                        ; $4658: $3e $22

jr_01d_465a:
	ld a, [hl]                                       ; $465a: $7e
	ld a, d                                          ; $465b: $7a
	ld a, [hl]                                       ; $465c: $7e
	ld a, [hl]                                       ; $465d: $7e
	call c, $f8bc                                    ; $465e: $dc $bc $f8
	ld hl, sp+$46                                    ; $4661: $f8 $46
	ld [hl+], a                                      ; $4663: $22
	rst $38                                          ; $4664: $ff
	ld a, a                                          ; $4665: $7f
	inc a                                            ; $4666: $3c
	sub e                                            ; $4667: $93
	ld hl, sp-$18                                    ; $4668: $f8 $e8
	ld hl, sp-$78                                    ; $466a: $f8 $88
	ld hl, sp-$08                                    ; $466c: $f8 $f8
	ld a, h                                          ; $466e: $7c
	ld a, h                                          ; $466f: $7c
	ld a, [hl-]                                      ; $4670: $3a
	ld [hl], $3e                                     ; $4671: $36 $3e
	ld a, $3f                                        ; $4673: $3e $3f
	ldh [$f3], a                                     ; $4675: $e0 $f3
	ld b, a                                          ; $4677: $47
	sub b                                            ; $4678: $90
	pop af                                           ; $4679: $f1
	ld b, l                                          ; $467a: $45
	and d                                            ; $467b: $a2
	ld [hl], a                                       ; $467c: $77
	add b                                            ; $467d: $80
	sub e                                            ; $467e: $93
	ld e, $16                                        ; $467f: $1e $16
	ld a, $22                                        ; $4681: $3e $22
	ld a, $3a                                        ; $4683: $3e $3a
	ld a, [hl]                                       ; $4685: $7e
	ld a, [hl]                                       ; $4686: $7e
	sbc $be                                          ; $4687: $de $be
	db $fc                                           ; $4689: $fc
	db $fc                                           ; $468a: $fc
	rlca                                             ; $468b: $07
	add b                                            ; $468c: $80
	rst SubAFromDE                                          ; $468d: $df
	ld a, a                                          ; $468e: $7f
	db $e3                                           ; $468f: $e3
	dec a                                            ; $4690: $3d
	and h                                            ; $4691: $a4
	and h                                            ; $4692: $a4
	inc b                                            ; $4693: $04
	db $eb                                           ; $4694: $eb
	sub l                                            ; $4695: $95
	inc c                                            ; $4696: $0c
	rrca                                             ; $4697: $0f
	inc bc                                           ; $4698: $03
	inc bc                                           ; $4699: $03
	ld [$100f], sp                                   ; $469a: $08 $0f $10
	rra                                              ; $469d: $1f
	daa                                              ; $469e: $27
	ccf                                              ; $469f: $3f
	rst AddAOntoHL                                          ; $46a0: $ef
	sub c                                            ; $46a1: $91
	db $fc                                           ; $46a2: $fc
	db $fd                                           ; $46a3: $fd
	ld h, d                                          ; $46a4: $62
	ld a, a                                          ; $46a5: $7f
	ld de, $89ff                                     ; $46a6: $11 $ff $89
	rst $38                                          ; $46a9: $ff
	jr z, @+$01                                      ; $46aa: $28 $ff

	db $f4                                           ; $46ac: $f4
	rst $38                                          ; $46ad: $ff
	ld de, $edff                                     ; $46ae: $11 $ff $ed
	adc b                                            ; $46b1: $88
	ld b, b                                          ; $46b2: $40
	ret nz                                           ; $46b3: $c0

	ld h, b                                          ; $46b4: $60
	ldh [$50], a                                     ; $46b5: $e0 $50
	ldh a, [hDisp1_SCY]                                     ; $46b7: $f0 $90
	ldh a, [$b0]                                     ; $46b9: $f0 $b0
	ldh a, [rOBP0]                                   ; $46bb: $f0 $48
	ld hl, sp+$40                                    ; $46bd: $f8 $40
	ld a, a                                          ; $46bf: $7f
	db $10                                           ; $46c0: $10
	ld l, a                                          ; $46c1: $6f
	db $10                                           ; $46c2: $10
	ld a, a                                          ; $46c3: $7f

jr_01d_46c4:
	ld b, b                                          ; $46c4: $40
	ld a, a                                          ; $46c5: $7f
	ld d, c                                          ; $46c6: $51
	ld l, a                                          ; $46c7: $6f
	ld d, c                                          ; $46c8: $51
	ld a, e                                          ; $46c9: $7b
	ld a, [$5096]                                    ; $46ca: $fa $96 $50
	ld l, a                                          ; $46cd: $6f
	ret nc                                           ; $46ce: $d0

	rst $38                                          ; $46cf: $ff
	add b                                            ; $46d0: $80
	rst $38                                          ; $46d1: $ff
	sub b                                            ; $46d2: $90
	rst AddAOntoHL                                          ; $46d3: $ef
	sub b                                            ; $46d4: $90
	ld a, e                                          ; $46d5: $7b

jr_01d_46d6:
	ld a, [$9880]                                    ; $46d6: $fa $80 $98
	rst $38                                          ; $46d9: $ff
	and [hl]                                         ; $46da: $a6
	rst $38                                          ; $46db: $ff
	ld h, e                                          ; $46dc: $63
	ld a, a                                          ; $46dd: $7f
	add b                                            ; $46de: $80
	add b                                            ; $46df: $80

jr_01d_46e0:
	ld b, b                                          ; $46e0: $40
	ret nz                                           ; $46e1: $c0

	jr nz, jr_01d_46c4                               ; $46e2: $20 $e0

	jr nc, jr_01d_46d6                               ; $46e4: $30 $f0

	jr jr_01d_46e0                                   ; $46e6: $18 $f8

	adc b                                            ; $46e8: $88
	ld hl, sp-$7c                                    ; $46e9: $f8 $84
	db $fc                                           ; $46eb: $fc
	add h                                            ; $46ec: $84
	db $fc                                           ; $46ed: $fc
	call z, $defc                                    ; $46ee: $cc $fc $de
	ldh a, [c]                                       ; $46f1: $f2
	ld a, [hl]                                       ; $46f2: $7e
	ldh [c], a                                       ; $46f3: $e2
	ld a, [hl]                                       ; $46f4: $7e
	ldh [c], a                                       ; $46f5: $e2
	ld a, h                                          ; $46f6: $7c
	sbc b                                            ; $46f7: $98
	db $f4                                           ; $46f8: $f4
	ld e, b                                          ; $46f9: $58
	ret c                                            ; $46fa: $d8

	ld b, b                                          ; $46fb: $40
	ret nz                                           ; $46fc: $c0

	add b                                            ; $46fd: $80
	add b                                            ; $46fe: $80
	db $fd                                           ; $46ff: $fd
	rst SubAFromDE                                          ; $4700: $df
	ld bc, $7bdf                                     ; $4701: $01 $df $7b
	adc [hl]                                         ; $4704: $8e
	or $af                                           ; $4705: $f6 $af
	ld a, [$fd97]                                    ; $4707: $fa $97 $fd
	adc e                                            ; $470a: $8b
	cp $85                                           ; $470b: $fe $85
	ld a, a                                          ; $470d: $7f
	ld b, d                                          ; $470e: $42
	ld sp, $1f3f                                     ; $470f: $31 $3f $1f
	jr jr_01d_4723                                   ; $4712: $18 $0f

	rrca                                             ; $4714: $0f
	rst $38                                          ; $4715: $ff
	ld l, e                                          ; $4716: $6b
	add [hl]                                         ; $4717: $86
	add l                                            ; $4718: $85
	ld b, e                                          ; $4719: $43
	ld a, a                                          ; $471a: $7f
	add a                                            ; $471b: $87
	rst $38                                          ; $471c: $ff
	ld c, $ff                                        ; $471d: $0e $ff
	inc c                                            ; $471f: $0c
	rst $38                                          ; $4720: $ff
	ld e, $ff                                        ; $4721: $1e $ff

jr_01d_4723:
	inc de                                           ; $4723: $13
	di                                               ; $4724: $f3
	ld de, $a1f1                                     ; $4725: $11 $f1 $a1
	pop hl                                           ; $4728: $e1
	ld h, d                                          ; $4729: $62
	db $e3                                           ; $472a: $e3
	jp $c343                                         ; $472b: $c3 $43 $c3


	jp nz, $8787                                     ; $472e: $c2 $87 $87

	ld hl, sp-$08                                    ; $4731: $f8 $f8
	ei                                               ; $4733: $fb
	db $dd                                           ; $4734: $dd
	add b                                            ; $4735: $80
	ld a, a                                          ; $4736: $7f
	ld [hl], d                                       ; $4737: $72
	ld a, a                                          ; $4738: $7f
	and d                                            ; $4739: $a2
	sub c                                            ; $473a: $91
	inc d                                            ; $473b: $14
	db $fc                                           ; $473c: $fc
	ld [hl+], a                                      ; $473d: $22
	cp $e7                                           ; $473e: $fe $e7
	db $dd                                           ; $4740: $dd
	rst FarCall                                          ; $4741: $f7
	dec e                                            ; $4742: $1d
	ld c, $fa                                        ; $4743: $0e $fa
	db $fc                                           ; $4745: $fc
	db $f4                                           ; $4746: $f4
	ld hl, sp+$08                                    ; $4747: $f8 $08
	ld h, a                                          ; $4749: $67
	jp nz, $99ff                                     ; $474a: $c2 $ff $99

	ld [de], a                                       ; $474d: $12
	rra                                              ; $474e: $1f
	ld [de], a                                       ; $474f: $12
	rra                                              ; $4750: $1f
	inc h                                            ; $4751: $24
	ccf                                              ; $4752: $3f
	ld l, a                                          ; $4753: $6f
	cp $9c                                           ; $4754: $fe $9c
	ld h, $3f                                        ; $4756: $26 $3f
	ld [hl+], a                                      ; $4758: $22
	ld a, e                                          ; $4759: $7b
	cp $94                                           ; $475a: $fe $94
	inc hl                                           ; $475c: $23
	ccf                                              ; $475d: $3f
	daa                                              ; $475e: $27
	inc a                                            ; $475f: $3c
	daa                                              ; $4760: $27
	inc a                                            ; $4761: $3c
	inc hl                                           ; $4762: $23
	ld a, $4b                                        ; $4763: $3e $4b
	ld a, a                                          ; $4765: $7f
	ld e, b                                          ; $4766: $58
	sbc $7f                                          ; $4767: $de $7f
	ld [hl], a                                       ; $4769: $77
	ld h, b                                          ; $476a: $60
	ld [hl], a                                       ; $476b: $77
	cp $7f                                           ; $476c: $fe $7f
	ld e, h                                          ; $476e: $5c
	ld h, a                                          ; $476f: $67
	cp $de                                           ; $4770: $fe $de
	ldh [$73], a                                     ; $4772: $e0 $73
	rst FarCall                                          ; $4774: $f7
	rst SubAFromDE                                          ; $4775: $df
	ret nz                                           ; $4776: $c0

	ld a, a                                          ; $4777: $7f
	ld [$c0df], a                                    ; $4778: $ea $df $c0
	sbc l                                            ; $477b: $9d
	jr c, jr_01d_47bd                                ; $477c: $38 $3f

	ld l, a                                          ; $477e: $6f
	cp $9c                                           ; $477f: $fe $9c
	inc e                                            ; $4781: $1c
	rra                                              ; $4782: $1f
	inc d                                            ; $4783: $14
	ld [hl], e                                       ; $4784: $73
	cp $de                                           ; $4785: $fe $de
	rra                                              ; $4787: $1f
	sbc h                                            ; $4788: $9c
	jr jr_01d_47ab                                   ; $4789: $18 $20

	ccf                                              ; $478b: $3f
	sbc $7f                                          ; $478c: $de $7f
	sbc [hl]                                         ; $478e: $9e
	ld b, b                                          ; $478f: $40
	ld l, a                                          ; $4790: $6f
	sbc h                                            ; $4791: $9c
	ld l, a                                          ; $4792: $6f
	jp nz, $c05f                                     ; $4793: $c2 $5f $c0

	ld a, [hl]                                       ; $4796: $7e
	ld [$709d], a                                    ; $4797: $ea $9d $70
	ldh a, [rPCM34]                                  ; $479a: $f0 $77
	cp h                                             ; $479c: $bc
	sbc e                                            ; $479d: $9b
	rst $38                                          ; $479e: $ff
	ccf                                              ; $479f: $3f
	ldh [$e0], a                                     ; $47a0: $e0 $e0
	db $fd                                           ; $47a2: $fd
	sub [hl]                                         ; $47a3: $96
	ld [hl], b                                       ; $47a4: $70
	ld a, a                                          ; $47a5: $7f
	jr nz, @+$41                                     ; $47a6: $20 $3f

	ld b, c                                          ; $47a8: $41
	ld a, a                                          ; $47a9: $7f
	sub d                                            ; $47aa: $92

jr_01d_47ab:
	rst $38                                          ; $47ab: $ff
	and h                                            ; $47ac: $a4
	ld a, e                                          ; $47ad: $7b
	cp $80                                           ; $47ae: $fe $80
	ld e, [hl]                                       ; $47b0: $5e
	ld a, e                                          ; $47b1: $7b
	ld c, a                                          ; $47b2: $4f
	ld a, c                                          ; $47b3: $79
	ld d, a                                          ; $47b4: $57
	ld a, e                                          ; $47b5: $7b
	ccf                                              ; $47b6: $3f
	ld hl, $2b36                                     ; $47b7: $21 $36 $2b
	rra                                              ; $47ba: $1f
	jr @+$05                                         ; $47bb: $18 $03

jr_01d_47bd:
	inc b                                            ; $47bd: $04
	dec b                                            ; $47be: $05
	ld b, $02                                        ; $47bf: $06 $02
	inc bc                                           ; $47c1: $03
	ld bc, $1401                                     ; $47c2: $01 $01 $14
	rst $38                                          ; $47c5: $ff
	ld [bc], a                                       ; $47c6: $02
	rst $38                                          ; $47c7: $ff
	ld bc, $08ff                                     ; $47c8: $01 $ff $08
	rst $38                                          ; $47cb: $ff
	sbc h                                            ; $47cc: $9c
	rst FarCall                                          ; $47cd: $f7
	add [hl]                                         ; $47ce: $86
	sbc d                                            ; $47cf: $9a
	rst $38                                          ; $47d0: $ff
	rst GetHLinHL                                          ; $47d1: $cf
	db $fd                                           ; $47d2: $fd
	rst AddAOntoHL                                          ; $47d3: $ef
	inc a                                            ; $47d4: $3c
	ld a, e                                          ; $47d5: $7b
	rla                                              ; $47d6: $17
	add b                                            ; $47d7: $80
	add [hl]                                         ; $47d8: $86
	ei                                               ; $47d9: $fb
	adc h                                            ; $47da: $8c
	rst $38                                          ; $47db: $ff
	nop                                              ; $47dc: $00
	rst $38                                          ; $47dd: $ff
	nop                                              ; $47de: $00
	cp $61                                           ; $47df: $fe $61
	rst $38                                          ; $47e1: $ff
	inc bc                                           ; $47e2: $03
	cp $fe                                           ; $47e3: $fe $fe
	ld c, b                                          ; $47e5: $48
	ld hl, sp+$6c                                    ; $47e6: $f8 $6c
	db $fc                                           ; $47e8: $fc
	inc a                                            ; $47e9: $3c
	db $fc                                           ; $47ea: $fc
	xor b                                            ; $47eb: $a8
	ld hl, sp-$5c                                    ; $47ec: $f8 $a4
	db $fc                                           ; $47ee: $fc
	ld h, h                                          ; $47ef: $64
	db $fc                                           ; $47f0: $fc
	ld l, b                                          ; $47f1: $68
	ld hl, sp+$28                                    ; $47f2: $f8 $28
	ld hl, sp+$60                                    ; $47f4: $f8 $60
	ret nc                                           ; $47f6: $d0

	sbc c                                            ; $47f7: $99
	ld [hl], b                                       ; $47f8: $70
	sub b                                            ; $47f9: $90
	ret nz                                           ; $47fa: $c0

	jr nz, @-$7e                                     ; $47fb: $20 $80

	ld b, b                                          ; $47fd: $40
	ld h, [hl]                                       ; $47fe: $66
	call nz, $03df                                   ; $47ff: $c4 $df $03
	ld a, a                                          ; $4802: $7f
	cp d                                             ; $4803: $ba
	sbc c                                            ; $4804: $99
	inc b                                            ; $4805: $04
	rlca                                             ; $4806: $07
	inc b                                            ; $4807: $04
	rlca                                             ; $4808: $07
	ld [$760f], sp                                   ; $4809: $08 $0f $76
	jr nc, jr_01d_488d                               ; $480c: $30 $7f

	cp $96                                           ; $480e: $fe $96
	ld de, $0b1f                                     ; $4810: $11 $1f $0b
	rrca                                             ; $4813: $0f
	ld b, $e7                                        ; $4814: $06 $e7
	ld [bc], a                                       ; $4816: $02
	dec sp                                           ; $4817: $3b
	inc bc                                           ; $4818: $03
	ld a, e                                          ; $4819: $7b
	and h                                            ; $481a: $a4
	db $dd                                           ; $481b: $dd
	ld bc, $467f                                     ; $481c: $01 $7f $46
	ld a, a                                          ; $481f: $7f
	db $ec                                           ; $4820: $ec
	ld a, a                                          ; $4821: $7f
	ld a, [hl]                                       ; $4822: $7e
	adc e                                            ; $4823: $8b
	ld c, c                                          ; $4824: $49
	ld a, a                                          ; $4825: $7f
	ld d, c                                          ; $4826: $51
	ld a, a                                          ; $4827: $7f
	ld d, d                                          ; $4828: $52
	ld a, a                                          ; $4829: $7f
	cpl                                              ; $482a: $2f
	dec a                                            ; $482b: $3d
	daa                                              ; $482c: $27
	ccf                                              ; $482d: $3f
	dec hl                                           ; $482e: $2b
	ld a, $17                                        ; $482f: $3e $17
	inc de                                           ; $4831: $13
	ld [bc], a                                       ; $4832: $02
	dec b                                            ; $4833: $05
	rlca                                             ; $4834: $07
	inc b                                            ; $4835: $04
	ld bc, $7702                                     ; $4836: $01 $02 $77
	add d                                            ; $4839: $82
	rst $38                                          ; $483a: $ff
	sbc [hl]                                         ; $483b: $9e
	ld a, [bc]                                       ; $483c: $0a
	ld a, e                                          ; $483d: $7b
	add d                                            ; $483e: $82
	ld a, [hl]                                       ; $483f: $7e
	ld d, h                                          ; $4840: $54
	adc a                                            ; $4841: $8f
	inc b                                            ; $4842: $04
	rst $38                                          ; $4843: $ff
	ld c, [hl]                                       ; $4844: $4e
	ei                                               ; $4845: $fb
	ld c, e                                          ; $4846: $4b
	rst $38                                          ; $4847: $ff
	ld c, a                                          ; $4848: $4f
	cp $ef                                           ; $4849: $fe $ef
	cp a                                             ; $484b: $bf
	rst $38                                          ; $484c: $ff
	adc l                                            ; $484d: $8d
	rst $38                                          ; $484e: $ff
	add a                                            ; $484f: $87
	db $fd                                           ; $4850: $fd
	add [hl]                                         ; $4851: $86
	ld a, e                                          ; $4852: $7b
	add b                                            ; $4853: $80
	add b                                            ; $4854: $80
	ld b, h                                          ; $4855: $44
	rst $38                                          ; $4856: $ff
	jr c, jr_01d_48d8                                ; $4857: $38 $7f

	add c                                            ; $4859: $81
	ld a, a                                          ; $485a: $7f
	rst $38                                          ; $485b: $ff
	inc h                                            ; $485c: $24
	db $fc                                           ; $485d: $fc
	ld [hl], $fe                                     ; $485e: $36 $fe
	sbc [hl]                                         ; $4860: $9e
	cp $54                                           ; $4861: $fe $54
	db $fc                                           ; $4863: $fc
	ld d, d                                          ; $4864: $52
	cp $32                                           ; $4865: $fe $32
	cp $b2                                           ; $4867: $fe $b2
	cp $94                                           ; $4869: $fe $94
	ld a, h                                          ; $486b: $7c
	or h                                             ; $486c: $b4
	ld l, h                                          ; $486d: $6c
	cp b                                             ; $486e: $b8
	ld c, b                                          ; $486f: $48
	ldh [rAUD1SWEEP], a                              ; $4870: $e0 $10
	ret nz                                           ; $4872: $c0

	jr nz, @-$61                                     ; $4873: $20 $9d

	and b                                            ; $4875: $a0
	ld h, b                                          ; $4876: $60
	ld h, a                                          ; $4877: $67
	ld a, [hl]                                       ; $4878: $7e
	pop af                                           ; $4879: $f1
	rst SubAFromDE                                          ; $487a: $df
	ld bc, $03de                                     ; $487b: $01 $de $03
	ld a, a                                          ; $487e: $7f
	and e                                            ; $487f: $a3
	ld [hl], e                                       ; $4880: $73
	and d                                            ; $4881: $a2
	rst $38                                          ; $4882: $ff
	ld a, a                                          ; $4883: $7f
	add d                                            ; $4884: $82
	sbc d                                            ; $4885: $9a
	dec d                                            ; $4886: $15
	dec de                                           ; $4887: $1b
	inc d                                            ; $4888: $14
	rra                                              ; $4889: $1f
	ld [hl-], a                                      ; $488a: $32
	ld a, d                                          ; $488b: $7a
	add d                                            ; $488c: $82

jr_01d_488d:
	adc c                                            ; $488d: $89
	jr z, jr_01d_48cf                                ; $488e: $28 $3f

	jr nc, jr_01d_48d1                               ; $4890: $30 $3f

	jr nz, jr_01d_48d3                               ; $4892: $20 $3f

	ldh [rIE], a                                     ; $4894: $e0 $ff
	ld sp, hl                                        ; $4896: $f9
	cp a                                             ; $4897: $bf
	rst $38                                          ; $4898: $ff
	rrca                                             ; $4899: $0f
	cp $07                                           ; $489a: $fe $07
	db $fc                                           ; $489c: $fc
	rlca                                             ; $489d: $07
	ld hl, sp-$31                                    ; $489e: $f8 $cf
	ld a, h                                          ; $48a0: $7c
	ld a, a                                          ; $48a1: $7f
	scf                                              ; $48a2: $37
	ccf                                              ; $48a3: $3f
	ld e, [hl]                                       ; $48a4: $5e
	add $7e                                          ; $48a5: $c6 $7e
	ld a, [hl-]                                      ; $48a7: $3a
	ld a, a                                          ; $48a8: $7f
	cp $9e                                           ; $48a9: $fe $9e
	and b                                            ; $48ab: $a0
	ld a, e                                          ; $48ac: $7b
	cp $99                                           ; $48ad: $fe $99
	db $10                                           ; $48af: $10
	ldh a, [rAUD1SWEEP]                              ; $48b0: $f0 $10
	ldh a, [$08]                                     ; $48b2: $f0 $08
	ld hl, sp+$6f                                    ; $48b4: $f8 $6f
	cp $7e                                           ; $48b6: $fe $7e
	jr z, jr_01d_4921                                ; $48b8: $28 $67

	xor [hl]                                         ; $48ba: $ae
	adc l                                            ; $48bb: $8d
	halt                                             ; $48bc: $76
	ld [hl], a                                       ; $48bd: $77
	db $fc                                           ; $48be: $fc
	cp a                                             ; $48bf: $bf
	cp $97                                           ; $48c0: $fe $97
	rst $38                                          ; $48c2: $ff
	bit 7, a                                         ; $48c3: $cb $7f
	ld h, l                                          ; $48c5: $65
	inc sp                                           ; $48c6: $33
	ld a, $1f                                        ; $48c7: $3e $1f
	add hl, de                                       ; $48c9: $19
	rrca                                             ; $48ca: $0f
	rrca                                             ; $48cb: $0f
	ld a, a                                          ; $48cc: $7f
	ld a, a                                          ; $48cd: $7f
	ei                                               ; $48ce: $fb

jr_01d_48cf:
	halt                                             ; $48cf: $76
	and d                                            ; $48d0: $a2

jr_01d_48d1:
	sub [hl]                                         ; $48d1: $96
	add e                                            ; $48d2: $83

jr_01d_48d3:
	rst $38                                          ; $48d3: $ff
	dec b                                            ; $48d4: $05
	db $fd                                           ; $48d5: $fd
	inc b                                            ; $48d6: $04
	db $fc                                           ; $48d7: $fc

jr_01d_48d8:
	ld [$10f8], sp                                   ; $48d8: $08 $f8 $10
	ld a, d                                          ; $48db: $7a
	add [hl]                                         ; $48dc: $86
	ld a, a                                          ; $48dd: $7f
	cp h                                             ; $48de: $bc
	rst SubAFromDE                                          ; $48df: $df
	ret nz                                           ; $48e0: $c0

	ld [hl], a                                       ; $48e1: $77
	ld l, b                                          ; $48e2: $68
	rst SubAFromDE                                          ; $48e3: $df
	pop hl                                           ; $48e4: $e1
	ei                                               ; $48e5: $fb
	rst SubAFromDE                                          ; $48e6: $df
	ld hl, sp+$7f                                    ; $48e7: $f8 $7f
	add sp, -$75                                     ; $48e9: $e8 $8b
	ld b, $fe                                        ; $48eb: $06 $fe
	add c                                            ; $48ed: $81
	rst $38                                          ; $48ee: $ff
	ret nz                                           ; $48ef: $c0

	rst $38                                          ; $48f0: $ff
	ld h, b                                          ; $48f1: $60
	ld a, a                                          ; $48f2: $7f
	jr nc, jr_01d_4934                               ; $48f3: $30 $3f

	rra                                              ; $48f5: $1f
	rra                                              ; $48f6: $1f
	ld e, $19                                        ; $48f7: $1e $19
	ld hl, $3f3f                                     ; $48f9: $21 $3f $3f
	ld a, $3f                                        ; $48fc: $3e $3f
	jr nz, jr_01d_495d                               ; $48fe: $20 $5d

	sbc $6d                                          ; $4900: $de $6d
	cp d                                             ; $4902: $ba
	rst SubAFromDE                                          ; $4903: $df
	ret nz                                           ; $4904: $c0

	call c, Call_01d_77e0                            ; $4905: $dc $e0 $77
	ld a, a                                          ; $4908: $7f
	ld a, [hl]                                       ; $4909: $7e
	ld b, $9c                                        ; $490a: $06 $9c

jr_01d_490c:
	ld b, b                                          ; $490c: $40
	add b                                            ; $490d: $80
	add b                                            ; $490e: $80
	ld l, [hl]                                       ; $490f: $6e
	ld b, d                                          ; $4910: $42
	ld l, [hl]                                       ; $4911: $6e
	and b                                            ; $4912: $a0
	ld l, [hl]                                       ; $4913: $6e
	sbc [hl]                                         ; $4914: $9e
	ld a, h                                          ; $4915: $7c
	call z, $9c76                                    ; $4916: $cc $76 $9c
	ld a, e                                          ; $4919: $7b
	cp $9c                                           ; $491a: $fe $9c
	rst GetHLinHL                                          ; $491c: $cf
	add hl, bc                                       ; $491d: $09
	ld l, a                                          ; $491e: $6f
	ld a, d                                          ; $491f: $7a
	sbc h                                            ; $4920: $9c

jr_01d_4921:
	sub e                                            ; $4921: $93
	rlca                                             ; $4922: $07
	inc bc                                           ; $4923: $03
	inc sp                                           ; $4924: $33
	ld bc, $0161                                     ; $4925: $01 $61 $01
	ld bc, $ff81                                     ; $4928: $01 $81 $ff
	jr nz, jr_01d_490c                               ; $492b: $20 $df

	jr nz, jr_01d_49a9                               ; $492d: $20 $7a

	ret nz                                           ; $492f: $c0

	sbc h                                            ; $4930: $9c
	inc h                                            ; $4931: $24
	rst SubAFromDE                                          ; $4932: $df
	ld [hl+], a                                      ; $4933: $22

jr_01d_4934:
	ld a, d                                          ; $4934: $7a
	ld [hl], $9c                                     ; $4935: $36 $9c
	ld [hl+], a                                      ; $4937: $22
	rst SubAFromDE                                          ; $4938: $df
	ld hl, $b07a                                     ; $4939: $21 $7a $b0
	sbc h                                            ; $493c: $9c
	and c                                            ; $493d: $a1
	rst SubAFromDE                                          ; $493e: $df
	ld h, c                                          ; $493f: $61
	ld a, e                                          ; $4940: $7b
	ld a, [$309a]                                    ; $4941: $fa $9a $30
	rst $38                                          ; $4944: $ff
	db $ec                                           ; $4945: $ec
	rst $38                                          ; $4946: $ff
	ld [hl], a                                       ; $4947: $77
	ld a, e                                          ; $4948: $7b
	sbc d                                            ; $4949: $9a
	db $dd                                           ; $494a: $dd
	add b                                            ; $494b: $80
	ld e, l                                          ; $494c: $5d
	sbc $77                                          ; $494d: $de $77
	ld [hl+], a                                      ; $494f: $22
	ld a, h                                          ; $4950: $7c
	ldh a, [c]                                       ; $4951: $f2
	sbc l                                            ; $4952: $9d
	ldh a, [$d0]                                     ; $4953: $f0 $d0
	ld a, b                                          ; $4955: $78
	pop af                                           ; $4956: $f1
	sbc d                                            ; $4957: $9a
	adc b                                            ; $4958: $88
	ldh a, [hDisp1_SCY]                                     ; $4959: $f0 $90
	ldh [$e0], a                                     ; $495b: $e0 $e0

jr_01d_495d:
	rst SubAFromHL                                          ; $495d: $d7
	ld bc, $dff9                                     ; $495e: $01 $f9 $df
	rlca                                             ; $4961: $07
	sbc l                                            ; $4962: $9d
	add hl, bc                                       ; $4963: $09
	ld c, $de                                        ; $4964: $0e $de
	rra                                              ; $4966: $1f
	sbc [hl]                                         ; $4967: $9e
	db $10                                           ; $4968: $10
	ld l, a                                          ; $4969: $6f
	ld e, [hl]                                       ; $496a: $5e
	sbc h                                            ; $496b: $9c
	ld sp, $31ff                                     ; $496c: $31 $ff $31
	ld a, b                                          ; $496f: $78
	ld a, d                                          ; $4970: $7a
	ld a, a                                          ; $4971: $7f
	cp $9e                                           ; $4972: $fe $9e
	adc b                                            ; $4974: $88
	ld l, e                                          ; $4975: $6b
	cp $df                                           ; $4976: $fe $df
	rst $38                                          ; $4978: $ff
	sbc e                                            ; $4979: $9b
	sub a                                            ; $497a: $97
	ld a, b                                          ; $497b: $78
	ld [hl+], a                                      ; $497c: $22
	db $fd                                           ; $497d: $fd
	sbc $ff                                          ; $497e: $de $ff
	ld b, e                                          ; $4980: $43
	ld a, $6f                                        ; $4981: $3e $6f
	sbc d                                            ; $4983: $9a
	ld [hl], l                                       ; $4984: $75
	ld c, d                                          ; $4985: $4a
	ld l, l                                          ; $4986: $6d
	inc a                                            ; $4987: $3c
	rst SubAFromDE                                          ; $4988: $df
	ldh a, [$fd]                                     ; $4989: $f0 $fd
	ld a, [hl]                                       ; $498b: $7e
	add h                                            ; $498c: $84
	ld a, a                                          ; $498d: $7f
	ld c, [hl]                                       ; $498e: $4e
	ld a, a                                          ; $498f: $7f
	db $fc                                           ; $4990: $fc
	add h                                            ; $4991: $84
	add hl, de                                       ; $4992: $19
	rra                                              ; $4993: $1f
	add hl, hl                                       ; $4994: $29
	ccf                                              ; $4995: $3f
	ld sp, $373f                                     ; $4996: $31 $3f $37
	ld a, $1f                                        ; $4999: $3e $1f
	ccf                                              ; $499b: $3f
	dec c                                            ; $499c: $0d
	ld l, $3f                                        ; $499d: $2e $3f
	dec a                                            ; $499f: $3d
	ld h, h                                          ; $49a0: $64
	ld a, a                                          ; $49a1: $7f
	rst FarCall                                          ; $49a2: $f7
	sbc [hl]                                         ; $49a3: $9e
	db $f4                                           ; $49a4: $f4
	sbc l                                            ; $49a5: $9d
	push af                                          ; $49a6: $f5
	sbc l                                            ; $49a7: $9d
	db $e4                                           ; $49a8: $e4

jr_01d_49a9:
	cp h                                             ; $49a9: $bc
	db $fc                                           ; $49aa: $fc
	cp h                                             ; $49ab: $bc
	ld b, $6a                                        ; $49ac: $06 $6a
	nop                                              ; $49ae: $00
	sub h                                            ; $49af: $94

jr_01d_49b0:
	ld b, [hl]                                       ; $49b0: $46
	rst $38                                          ; $49b1: $ff
	ld c, a                                          ; $49b2: $4f
	ld sp, hl                                        ; $49b3: $f9
	rst GetHLinHL                                          ; $49b4: $cf
	rst $38                                          ; $49b5: $ff
	rst AddAOntoHL                                          ; $49b6: $ef
	rst FarCall                                          ; $49b7: $f7
	cp $b3                                           ; $49b8: $fe $b3
	cp $76                                           ; $49ba: $fe $76
	nop                                              ; $49bc: $00
	ld a, a                                          ; $49bd: $7f
	ld b, e                                          ; $49be: $43
	ld a, [hl]                                       ; $49bf: $7e
	ld [bc], a                                       ; $49c0: $02
	add b                                            ; $49c1: $80
	sbc b                                            ; $49c2: $98
	cp a                                             ; $49c3: $bf
	ret nz                                           ; $49c4: $c0

	ccf                                              ; $49c5: $3f
	ccf                                              ; $49c6: $3f
	ld h, c                                          ; $49c7: $61
	rst $38                                          ; $49c8: $ff
	inc e                                            ; $49c9: $1c
	rst $38                                          ; $49ca: $ff
	sub e                                            ; $49cb: $93
	rst $38                                          ; $49cc: $ff
	ld c, a                                          ; $49cd: $4f
	rst $38                                          ; $49ce: $ff
	ld l, c                                          ; $49cf: $69
	rst $38                                          ; $49d0: $ff
	add hl, sp                                       ; $49d1: $39
	rst $38                                          ; $49d2: $ff
	ld sp, hl                                        ; $49d3: $f9
	rst $38                                          ; $49d4: $ff
	xor d                                            ; $49d5: $aa
	ld e, [hl]                                       ; $49d6: $5e
	or d                                             ; $49d7: $b2
	ld c, [hl]                                       ; $49d8: $4e
	or h                                             ; $49d9: $b4
	ld c, h                                          ; $49da: $4c
	add sp, $18                                      ; $49db: $e8 $18
	ret nz                                           ; $49dd: $c0

	jr nc, jr_01d_49b0                               ; $49de: $30 $d0

	jr nc, @+$7f                                     ; $49e0: $30 $7d

	cp $df                                           ; $49e2: $fe $df
	ret nz                                           ; $49e4: $c0

	rst $38                                          ; $49e5: $ff
	dec hl                                           ; $49e6: $2b
	ret nz                                           ; $49e7: $c0

	ld a, l                                          ; $49e8: $7d
	ret nz                                           ; $49e9: $c0

	ld a, a                                          ; $49ea: $7f
	ret nz                                           ; $49eb: $c0

	sbc [hl]                                         ; $49ec: $9e
	add b                                            ; $49ed: $80
	ld [hl], a                                       ; $49ee: $77
	ret nz                                           ; $49ef: $c0

	ld b, e                                          ; $49f0: $43
	add b                                            ; $49f1: $80
	sbc d                                            ; $49f2: $9a
	cpl                                              ; $49f3: $2f
	ccf                                              ; $49f4: $3f
	inc a                                            ; $49f5: $3c
	ld h, l                                          ; $49f6: $65
	ld a, [hl]                                       ; $49f7: $7e
	inc sp                                           ; $49f8: $33
	add b                                            ; $49f9: $80
	ld a, l                                          ; $49fa: $7d
	nop                                              ; $49fb: $00
	ld a, a                                          ; $49fc: $7f
	ret nz                                           ; $49fd: $c0

	sub d                                            ; $49fe: $92
	ld [hl], l                                       ; $49ff: $75
	rst $38                                          ; $4a00: $ff
	rst FarCall                                          ; $4a01: $f7
	ld a, l                                          ; $4a02: $7d
	add $ff                                          ; $4a03: $c6 $ff
	nop                                              ; $4a05: $00
	add e                                            ; $4a06: $83
	ld a, [hl]                                       ; $4a07: $7e
	rst SubAFromDE                                          ; $4a08: $df
	ld a, $7f                                        ; $4a09: $3e $7f
	sbc h                                            ; $4a0b: $9c
	ld [hl], a                                       ; $4a0c: $77
	ret nz                                           ; $4a0d: $c0

	db $eb                                           ; $4a0e: $eb
	ld a, [hl]                                       ; $4a0f: $7e
	ld l, [hl]                                       ; $4a10: $6e
	rst SubAFromDE                                          ; $4a11: $df
	rlca                                             ; $4a12: $07
	halt                                             ; $4a13: $76
	ld l, d                                          ; $4a14: $6a
	ld a, [hl]                                       ; $4a15: $7e
	ld a, b                                          ; $4a16: $78
	rst AddAOntoHL                                          ; $4a17: $ef
	sub d                                            ; $4a18: $92
	db $fc                                           ; $4a19: $fc
	db $fd                                           ; $4a1a: $fd
	ld h, d                                          ; $4a1b: $62
	ld a, a                                          ; $4a1c: $7f
	ld de, $c8ff                                     ; $4a1d: $11 $ff $c8
	rst $38                                          ; $4a20: $ff
	inc d                                            ; $4a21: $14
	rst $38                                          ; $4a22: $ff
	ld a, d                                          ; $4a23: $7a
	rst $38                                          ; $4a24: $ff
	adc c                                            ; $4a25: $89
	ld d, d                                          ; $4a26: $52
	call c, $d666                                    ; $4a27: $dc $66 $d6
	ld a, [hl]                                       ; $4a2a: $7e
	sbc $7e                                          ; $4a2b: $de $7e
	dec de                                           ; $4a2d: $1b
	adc [hl]                                         ; $4a2e: $8e
	or b                                             ; $4a2f: $b0
	ldh a, [rOBP0]                                   ; $4a30: $f0 $48
	ld hl, sp-$24                                    ; $4a32: $f8 $dc
	db $fc                                           ; $4a34: $fc
	add [hl]                                         ; $4a35: $86
	cp $fc                                           ; $4a36: $fe $fc
	call c, $fda5                                    ; $4a38: $dc $a5 $fd
	add a                                            ; $4a3b: $87
	rst $38                                          ; $4a3c: $ff
	ld b, d                                          ; $4a3d: $42
	ld a, a                                          ; $4a3e: $7f
	ld b, b                                          ; $4a3f: $40
	ld a, e                                          ; $4a40: $7b
	cp $7f                                           ; $4a41: $fe $7f
	ld e, [hl]                                       ; $4a43: $5e
	rst SubAFromDE                                          ; $4a44: $df
	ld e, $5d                                        ; $4a45: $1e $5d
	ld a, [hl-]                                      ; $4a47: $3a
	ld l, [hl]                                       ; $4a48: $6e
	ld l, h                                          ; $4a49: $6c
	ld a, l                                          ; $4a4a: $7d
	ret z                                            ; $4a4b: $c8

	sbc h                                            ; $4a4c: $9c
	db $10                                           ; $4a4d: $10
	rst AddAOntoHL                                          ; $4a4e: $ef
	db $10                                           ; $4a4f: $10
	ld a, e                                          ; $4a50: $7b
	ld sp, $fa77                                     ; $4a51: $31 $77 $fa
	ld a, a                                          ; $4a54: $7f
	ld e, b                                          ; $4a55: $58
	sub [hl]                                         ; $4a56: $96
	sub b                                            ; $4a57: $90
	rst AddAOntoHL                                          ; $4a58: $ef
	sub c                                            ; $4a59: $91
	rst $38                                          ; $4a5a: $ff
	add e                                            ; $4a5b: $83
	rst $38                                          ; $4a5c: $ff
	sub e                                            ; $4a5d: $93
	xor $b3                                          ; $4a5e: $ee $b3
	ld a, e                                          ; $4a60: $7b
	ld c, d                                          ; $4a61: $4a
	sbc h                                            ; $4a62: $9c
	jr @+$01                                         ; $4a63: $18 $ff

	or $7a                                           ; $4a65: $f6 $7a
	and $df                                          ; $4a67: $e6 $df
	add b                                            ; $4a69: $80
	ld a, l                                          ; $4a6a: $7d
	adc [hl]                                         ; $4a6b: $8e
	ld a, [hl]                                       ; $4a6c: $7e
	jr nc, jr_01d_4aec                               ; $4a6d: $30 $7d

	sbc h                                            ; $4a6f: $9c
	ld a, l                                          ; $4a70: $7d
	add b                                            ; $4a71: $80
	adc a                                            ; $4a72: $8f
	add d                                            ; $4a73: $82
	cp $42                                           ; $4a74: $fe $42
	cp $62                                           ; $4a76: $fe $62
	cp $e2                                           ; $4a78: $fe $e2
	cp $e2                                           ; $4a7a: $fe $e2
	ld a, $f4                                        ; $4a7c: $3e $f4
	inc e                                            ; $4a7e: $1c
	ld hl, sp+$08                                    ; $4a7f: $f8 $08
	ldh a, [$b0]                                     ; $4a81: $f0 $b0
	ld l, [hl]                                       ; $4a83: $6e
	ld [hl], d                                       ; $4a84: $72
	sbc [hl]                                         ; $4a85: $9e
	inc e                                            ; $4a86: $1c
	ld a, e                                          ; $4a87: $7b
	nop                                              ; $4a88: $00
	ld a, h                                          ; $4a89: $7c
	db $fc                                           ; $4a8a: $fc
	ld [hl], l                                       ; $4a8b: $75
	ld [bc], a                                       ; $4a8c: $02
	ld a, [hl]                                       ; $4a8d: $7e
	cp $8a                                           ; $4a8e: $fe $8a
	rla                                              ; $4a90: $17
	ld e, $13                                        ; $4a91: $1e $13
	ld a, $15                                        ; $4a93: $3e $15
	ld a, $0b                                        ; $4a95: $3e $0b
	add hl, hl                                       ; $4a97: $29
	dec a                                            ; $4a98: $3d
	ld a, $27                                        ; $4a99: $3e $27
	ld a, $64                                        ; $4a9b: $3e $64
	ld a, l                                          ; $4a9d: $7d
	rst FarCall                                          ; $4a9e: $f7
	sbc a                                            ; $4a9f: $9f
	rst FarCall                                          ; $4aa0: $f7
	sbc l                                            ; $4aa1: $9d
	and $be                                          ; $4aa2: $e6 $be
	dec b                                            ; $4aa4: $05
	ld a, e                                          ; $4aa5: $7b
	and h                                            ; $4aa6: $a4
	adc b                                            ; $4aa7: $88
	ld b, b                                          ; $4aa8: $40
	rst $38                                          ; $4aa9: $ff
	add d                                            ; $4aaa: $82
	rst $38                                          ; $4aab: $ff
	and a                                            ; $4aac: $a7
	db $fd                                           ; $4aad: $fd
	dec h                                            ; $4aae: $25
	rst $38                                          ; $4aaf: $ff
	and a                                            ; $4ab0: $a7
	db $fc                                           ; $4ab1: $fc
	rst FarCall                                          ; $4ab2: $f7
	sbc h                                            ; $4ab3: $9c
	rst $38                                          ; $4ab4: $ff
	nop                                              ; $4ab5: $00
	cp e                                             ; $4ab6: $bb
	rst JumpTable                                          ; $4ab7: $c7
	ld a, [hl]                                       ; $4ab8: $7e
	push bc                                          ; $4ab9: $c5
	rst $38                                          ; $4aba: $ff
	nop                                              ; $4abb: $00
	db $db                                           ; $4abc: $db
	inc a                                            ; $4abd: $3c
	ld l, e                                          ; $4abe: $6b
	ld a, e                                          ; $4abf: $7b
	nop                                              ; $4ac0: $00
	rst SubAFromDE                                          ; $4ac1: $df
	ld a, a                                          ; $4ac2: $7f
	sbc h                                            ; $4ac3: $9c
	ld [de], a                                       ; $4ac4: $12
	cp $9b                                           ; $4ac5: $fe $9b
	ld a, d                                          ; $4ac7: $7a
	and $8d                                          ; $4ac8: $e6 $8d
	ld a, [hl+]                                      ; $4aca: $2a
	cp $29                                           ; $4acb: $fe $29
	rst $38                                          ; $4acd: $ff
	sbc c                                            ; $4ace: $99

Call_01d_4acf:
	rst $38                                          ; $4acf: $ff
	reti                                             ; $4ad0: $d9


	ld a, a                                          ; $4ad1: $7f
	jp z, $da3e                                      ; $4ad2: $ca $3e $da

	ld [hl], $5c                                     ; $4ad5: $36 $5c
	and h                                            ; $4ad7: $a4
	ldh a, [hDisp0_WY]                                     ; $4ad8: $f0 $88
	ldh [rAUD1SWEEP], a                              ; $4ada: $e0 $10
	halt                                             ; $4adc: $76
	add b                                            ; $4add: $80
	db $dd                                           ; $4ade: $dd
	add b                                            ; $4adf: $80
	ld c, d                                          ; $4ae0: $4a
	and b                                            ; $4ae1: $a0
	sub [hl]                                         ; $4ae2: $96
	rra                                              ; $4ae3: $1f
	dec c                                            ; $4ae4: $0d
	ld c, $0f                                        ; $4ae5: $0e $0f
	dec c                                            ; $4ae7: $0d
	inc b                                            ; $4ae8: $04
	rlca                                             ; $4ae9: $07
	inc bc                                           ; $4aea: $03
	ld [bc], a                                       ; $4aeb: $02

jr_01d_4aec:
	ld [hl], a                                       ; $4aec: $77
	ccf                                              ; $4aed: $3f
	ld c, h                                          ; $4aee: $4c
	ld l, d                                          ; $4aef: $6a
	db $dd                                           ; $4af0: $dd
	ld bc, $3475                                     ; $4af1: $01 $75 $34
	sbc l                                            ; $4af4: $9d
	rlca                                             ; $4af5: $07
	dec b                                            ; $4af6: $05
	ld [hl], l                                       ; $4af7: $75
	dec sp                                           ; $4af8: $3b
	ld a, l                                          ; $4af9: $7d
	cpl                                              ; $4afa: $2f
	rst SubAFromDE                                          ; $4afb: $df
	inc bc                                           ; $4afc: $03
	rst FarCall                                          ; $4afd: $f7
	db $dd                                           ; $4afe: $dd
	db $10                                           ; $4aff: $10
	sub c                                            ; $4b00: $91
	ld [$0418], sp                                   ; $4b01: $08 $18 $04
	inc e                                            ; $4b04: $1c
	inc b                                            ; $4b05: $04
	inc e                                            ; $4b06: $1c
	ld c, $1a                                        ; $4b07: $0e $1a
	ld c, $02                                        ; $4b09: $0e $02
	ld c, $02                                        ; $4b0b: $0e $02
	ld b, $06                                        ; $4b0d: $06 $06
	ld sp, hl                                        ; $4b0f: $f9
	sub [hl]                                         ; $4b10: $96
	rst $38                                          ; $4b11: $ff
	sbc a                                            ; $4b12: $9f
	rst $38                                          ; $4b13: $ff
	jp $7f7d                                         ; $4b14: $c3 $7d $7f


	ld b, c                                          ; $4b17: $41
	ld a, a                                          ; $4b18: $7f
	ld h, c                                          ; $4b19: $61
	ld a, b                                          ; $4b1a: $78
	jp nz, $189b                                     ; $4b1b: $c2 $9b $18

	rra                                              ; $4b1e: $1f
	rlca                                             ; $4b1f: $07
	rlca                                             ; $4b20: $07
	ld a, $b2                                        ; $4b21: $3e $b2
	ld a, a                                          ; $4b23: $7f
	db $fd                                           ; $4b24: $fd
	ld h, a                                          ; $4b25: $67
	cp $dd                                           ; $4b26: $fe $dd
	add b                                            ; $4b28: $80
	pop af                                           ; $4b29: $f1
	ld l, a                                          ; $4b2a: $6f
	ret nz                                           ; $4b2b: $c0

	ld a, [hl]                                       ; $4b2c: $7e
	and h                                            ; $4b2d: $a4
	ld a, h                                          ; $4b2e: $7c
	ld e, b                                          ; $4b2f: $58
	scf                                              ; $4b30: $37
	jp nz, $bc4f                                     ; $4b31: $c2 $4f $bc

	ld [hl], a                                       ; $4b34: $77
	jp nz, $00cf                                     ; $4b35: $c2 $cf $00

	ei                                               ; $4b38: $fb
	rst SubAFromDE                                          ; $4b39: $df
	ld bc, $0280                                     ; $4b3a: $01 $80 $02
	inc bc                                           ; $4b3d: $03
	dec b                                            ; $4b3e: $05
	rlca                                             ; $4b3f: $07
	ld a, [bc]                                       ; $4b40: $0a
	rrca                                             ; $4b41: $0f
	ld a, [bc]                                       ; $4b42: $0a
	rrca                                             ; $4b43: $0f
	inc b                                            ; $4b44: $04
	rlca                                             ; $4b45: $07
	add hl, bc                                       ; $4b46: $09
	rrca                                             ; $4b47: $0f
	rla                                              ; $4b48: $17
	ld e, $0d                                        ; $4b49: $1e $0d
	rrca                                             ; $4b4b: $0f
	dec b                                            ; $4b4c: $05
	ld b, $05                                        ; $4b4d: $06 $05
	rlca                                             ; $4b4f: $07
	dec b                                            ; $4b50: $05
	rlca                                             ; $4b51: $07
	ld [bc], a                                       ; $4b52: $02
	inc bc                                           ; $4b53: $03
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	jr nz, jr_01d_4b78                               ; $4b56: $20 $20

	rst SubAFromDE                                          ; $4b58: $df
	rst $38                                          ; $4b59: $ff
	jr nc, @-$67                                     ; $4b5a: $30 $97

	rst $38                                          ; $4b5c: $ff

jr_01d_4b5d:
	and $ff                                          ; $4b5d: $e6 $ff

jr_01d_4b5f:
	ld de, $49ff                                     ; $4b5f: $11 $ff $49
	rst $38                                          ; $4b62: $ff
	and h                                            ; $4b63: $a4
	ld a, e                                          ; $4b64: $7b
	cp $97                                           ; $4b65: $fe $97
	or [hl]                                          ; $4b67: $b6
	ld e, e                                          ; $4b68: $5b
	rst $38                                          ; $4b69: $ff
	call $ce77                                       ; $4b6a: $cd $77 $ce
	rst $38                                          ; $4b6d: $ff
	call z, $fe7b                                    ; $4b6e: $cc $7b $fe
	sbc h                                            ; $4b71: $9c
	ld sp, $83fe                                     ; $4b72: $31 $fe $83
	ei                                               ; $4b75: $fb
	rst SubAFromDE                                          ; $4b76: $df
	add b                                            ; $4b77: $80

jr_01d_4b78:
	adc [hl]                                         ; $4b78: $8e
	ld b, b                                          ; $4b79: $40
	ret nz                                           ; $4b7a: $c0

	jr nz, jr_01d_4b5d                               ; $4b7b: $20 $e0

	jr nz, jr_01d_4b5f                               ; $4b7d: $20 $e0

	sub b                                            ; $4b7f: $90
	ldh a, [hDisp1_SCY]                                     ; $4b80: $f0 $90
	ldh a, [$50]                                     ; $4b82: $f0 $50
	ldh a, [$30]                                     ; $4b84: $f0 $30
	ldh a, [$d8]                                     ; $4b86: $f0 $d8
	ld hl, sp-$58                                    ; $4b88: $f8 $a8
	ld a, e                                          ; $4b8a: $7b
	cp $7f                                           ; $4b8b: $fe $7f
	ld hl, sp-$21                                    ; $4b8d: $f8 $df
	ret nc                                           ; $4b8f: $d0

	db $dd                                           ; $4b90: $dd
	ld bc, $ba7f                                     ; $4b91: $01 $7f $ba
	ld a, a                                          ; $4b94: $7f
	cp $7f                                           ; $4b95: $fe $7f
	xor b                                            ; $4b97: $a8
	sbc $07                                          ; $4b98: $de $07
	sbc h                                            ; $4b9a: $9c
	dec b                                            ; $4b9b: $05
	inc bc                                           ; $4b9c: $03
	inc bc                                           ; $4b9d: $03
	db $dd                                           ; $4b9e: $dd
	ld bc, $8c67                                     ; $4b9f: $01 $67 $8c
	rst SubAFromDE                                          ; $4ba2: $df
	inc bc                                           ; $4ba3: $03
	rst $38                                          ; $4ba4: $ff
	sbc b                                            ; $4ba5: $98
	db $fd                                           ; $4ba6: $fd
	rst $38                                          ; $4ba7: $ff
	cp e                                             ; $4ba8: $bb
	rst JumpTable                                          ; $4ba9: $c7
	db $fc                                           ; $4baa: $fc
	rst SubAFromHL                                          ; $4bab: $d7
	add c                                            ; $4bac: $81
	sbc $ff                                          ; $4bad: $de $ff
	sbc h                                            ; $4baf: $9c
	ld d, l                                          ; $4bb0: $55
	rst $38                                          ; $4bb1: $ff
	ld d, d                                          ; $4bb2: $52
	ld [hl], e                                       ; $4bb3: $73
	cp $df                                           ; $4bb4: $fe $df
	rst $38                                          ; $4bb6: $ff
	adc a                                            ; $4bb7: $8f
	cp $92                                           ; $4bb8: $fe $92
	rst $38                                          ; $4bba: $ff
	ld sp, hl                                        ; $4bbb: $f9
	rst $38                                          ; $4bbc: $ff
	sbc a                                            ; $4bbd: $9f
	rra                                              ; $4bbe: $1f
	ld sp, hl                                        ; $4bbf: $f9
	pop af                                           ; $4bc0: $f1
	rst $38                                          ; $4bc1: $ff
	ccf                                              ; $4bc2: $3f
	ccf                                              ; $4bc3: $3f
	add b                                            ; $4bc4: $80
	add b                                            ; $4bc5: $80

Jump_01d_4bc6:
	ret nz                                           ; $4bc6: $c0

	ret nz                                           ; $4bc7: $c0

	ld l, a                                          ; $4bc8: $6f
	and h                                            ; $4bc9: $a4
	sbc c                                            ; $4bca: $99
	ld h, b                                          ; $4bcb: $60
	ldh [$e0], a                                     ; $4bcc: $e0 $e0
	and b                                            ; $4bce: $a0
	ret nz                                           ; $4bcf: $c0

	ret nz                                           ; $4bd0: $c0

	db $dd                                           ; $4bd1: $dd
	add b                                            ; $4bd2: $80
	ld h, a                                          ; $4bd3: $67
	adc h                                            ; $4bd4: $8c
	rst SubAFromDE                                          ; $4bd5: $df
	ret nz                                           ; $4bd6: $c0

	ld [hl], a                                       ; $4bd7: $77
	cp d                                             ; $4bd8: $ba
	ld [hl], a                                       ; $4bd9: $77
	and b                                            ; $4bda: $a0
	ld a, a                                          ; $4bdb: $7f
	and d                                            ; $4bdc: $a2
	sbc c                                            ; $4bdd: $99
	inc c                                            ; $4bde: $0c
	rrca                                             ; $4bdf: $0f
	rrca                                             ; $4be0: $0f
	dec bc                                           ; $4be1: $0b
	dec c                                            ; $4be2: $0d
	dec c                                            ; $4be3: $0d
	db $db                                           ; $4be4: $db
	ld bc, $a007                                     ; $4be5: $01 $07 $a0
	sub e                                            ; $4be8: $93
	ld a, h                                          ; $4be9: $7c
	ld h, h                                          ; $4bea: $64
	ld a, $26                                        ; $4beb: $3e $26
	dec a                                            ; $4bed: $3d
	ccf                                              ; $4bee: $3f
	rst $38                                          ; $4bef: $ff
	rst SubAFromBC                                          ; $4bf0: $e7
	rst JumpTable                                          ; $4bf1: $c7
	rst $38                                          ; $4bf2: $ff
	ld a, h                                          ; $4bf3: $7c
	ld a, h                                          ; $4bf4: $7c
	ld h, a                                          ; $4bf5: $67
	and b                                            ; $4bf6: $a0
	sub a                                            ; $4bf7: $97
	db $10                                           ; $4bf8: $10
	ldh a, [$b0]                                     ; $4bf9: $f0 $b0
	ldh a, [$f0]                                     ; $4bfb: $f0 $f0
	ret nc                                           ; $4bfd: $d0

	or b                                             ; $4bfe: $b0
	or b                                             ; $4bff: $b0
	ld d, a                                          ; $4c00: $57
	and b                                            ; $4c01: $a0
	rst SubAFromDE                                          ; $4c02: $df
	ldh [rIE], a                                     ; $4c03: $e0 $ff
	ldh [c], a                                       ; $4c05: $e2
	nop                                              ; $4c06: $00
	ei                                               ; $4c07: $fb
	rst SubAFromDE                                          ; $4c08: $df
	ld bc, $0287                                     ; $4c09: $01 $87 $02
	inc bc                                           ; $4c0c: $03
	inc b                                            ; $4c0d: $04
	rlca                                             ; $4c0e: $07
	dec b                                            ; $4c0f: $05
	rlca                                             ; $4c10: $07
	ld b, $07                                        ; $4c11: $06 $07
	dec c                                            ; $4c13: $0d
	rrca                                             ; $4c14: $0f
	ld a, [bc]                                       ; $4c15: $0a
	rrca                                             ; $4c16: $0f
	inc de                                           ; $4c17: $13
	rra                                              ; $4c18: $1f
	rrca                                             ; $4c19: $0f
	ld c, $07                                        ; $4c1a: $0e $07
	rlca                                             ; $4c1c: $07
	inc bc                                           ; $4c1d: $03
	ld [bc], a                                       ; $4c1e: $02
	dec b                                            ; $4c1f: $05
	rlca                                             ; $4c20: $07
	ld [bc], a                                       ; $4c21: $02
	inc bc                                           ; $4c22: $03
	db $fd                                           ; $4c23: $fd
	rst SubAFromDE                                          ; $4c24: $df
	rst AddAOntoHL                                          ; $4c25: $ef
	add l                                            ; $4c26: $85
	db $10                                           ; $4c27: $10
	rst $38                                          ; $4c28: $ff
	db $10                                           ; $4c29: $10
	rst $38                                          ; $4c2a: $ff

jr_01d_4c2b:
	xor $ff                                          ; $4c2b: $ee $ff
	ld sp, $a4ff                                     ; $4c2d: $31 $ff $a4
	rst $38                                          ; $4c30: $ff
	ld [hl], d                                       ; $4c31: $72
	rst SubAFromDE                                          ; $4c32: $df
	push af                                          ; $4c33: $f5
	sbc a                                            ; $4c34: $9f
	rst $38                                          ; $4c35: $ff
	rst GetHLinHL                                          ; $4c36: $cf
	ld [hl], a                                       ; $4c37: $77
	call z, $ceff                                    ; $4c38: $cc $ff $ce
	rst $38                                          ; $4c3b: $ff
	call z, $31ff                                    ; $4c3c: $cc $ff $31
	cp $83                                           ; $4c3f: $fe $83
	ei                                               ; $4c41: $fb
	rst SubAFromDE                                          ; $4c42: $df
	add b                                            ; $4c43: $80
	adc a                                            ; $4c44: $8f
	ld b, b                                          ; $4c45: $40
	ret nz                                           ; $4c46: $c0

	ld b, b                                          ; $4c47: $40
	ret nz                                           ; $4c48: $c0

	jr nz, jr_01d_4c2b                               ; $4c49: $20 $e0

	and b                                            ; $4c4b: $a0
	ldh [$60], a                                     ; $4c4c: $e0 $60
	ldh [$30], a                                     ; $4c4e: $e0 $30
	ldh a, [hDisp0_WY]                                     ; $4c50: $f0 $88
	ld hl, sp-$10                                    ; $4c52: $f8 $f0
	ldh a, [$7b]                                     ; $4c54: $f0 $7b
	push af                                          ; $4c56: $f5
	sbc c                                            ; $4c57: $99
	and b                                            ; $4c58: $a0
	ld b, b                                          ; $4c59: $40
	ret nz                                           ; $4c5a: $c0

	and b                                            ; $4c5b: $a0
	ldh [rTAC], a                                    ; $4c5c: $e0 $07
	ld a, e                                          ; $4c5e: $7b
	xor h                                            ; $4c5f: $ac
	sbc [hl]                                         ; $4c60: $9e
	dec bc                                           ; $4c61: $0b
	ld [hl], e                                       ; $4c62: $73
	xor h                                            ; $4c63: $ac
	sbc b                                            ; $4c64: $98
	dec e                                            ; $4c65: $1d
	rra                                              ; $4c66: $1f
	dec e                                            ; $4c67: $1d
	rla                                              ; $4c68: $17
	dec c                                            ; $4c69: $0d
	rrca                                             ; $4c6a: $0f
	dec b                                            ; $4c6b: $05
	sbc $07                                          ; $4c6c: $de $07
	ld a, a                                          ; $4c6e: $7f
	and [hl]                                         ; $4c6f: $a6
	sbc $03                                          ; $4c70: $de $03
	add a                                            ; $4c72: $87
	ld [bc], a                                       ; $4c73: $02
	inc b                                            ; $4c74: $04
	rlca                                             ; $4c75: $07
	rrca                                             ; $4c76: $0f
	rrca                                             ; $4c77: $0f
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	di                                               ; $4c7a: $f3
	rst $38                                          ; $4c7b: $ff
	rst AddAOntoHL                                          ; $4c7c: $ef
	rra                                              ; $4c7d: $1f
	pop af                                           ; $4c7e: $f1
	ld e, a                                          ; $4c7f: $5f
	inc b                                            ; $4c80: $04
	rst $38                                          ; $4c81: $ff
	db $fc                                           ; $4c82: $fc
	rst $38                                          ; $4c83: $ff
	ld d, l                                          ; $4c84: $55
	rst $38                                          ; $4c85: $ff
	ld c, e                                          ; $4c86: $4b
	cp $4b                                           ; $4c87: $fe $4b
	rst $38                                          ; $4c89: $ff
	ld c, d                                          ; $4c8a: $4a
	sbc $fe                                          ; $4c8b: $de $fe
	sub d                                            ; $4c8d: $92
	ld hl, sp+$48                                    ; $4c8e: $f8 $48
	db $fc                                           ; $4c90: $fc
	db $e4                                           ; $4c91: $e4
	db $fc                                           ; $4c92: $fc
	ld a, h                                          ; $4c93: $7c
	ld a, [hl]                                       ; $4c94: $7e
	and $c7                                          ; $4c95: $e6 $c7
	rst $38                                          ; $4c97: $ff
	db $fc                                           ; $4c98: $fc
	db $fc                                           ; $4c99: $fc
	ret nz                                           ; $4c9a: $c0

	ld a, e                                          ; $4c9b: $7b
	cp h                                             ; $4c9c: $bc
	rst SubAFromDE                                          ; $4c9d: $df
	ld b, b                                          ; $4c9e: $40
	reti                                             ; $4c9f: $d9


	add b                                            ; $4ca0: $80
	rst AddAOntoHL                                          ; $4ca1: $ef
	rst SubAFromDE                                          ; $4ca2: $df
	rrca                                             ; $4ca3: $0f
	sub d                                            ; $4ca4: $92
	dec c                                            ; $4ca5: $0d
	ld c, $17                                        ; $4ca6: $0e $17
	ld e, $24                                        ; $4ca8: $1e $24
	ccf                                              ; $4caa: $3f
	ld h, a                                          ; $4cab: $67
	ld a, a                                          ; $4cac: $7f
	ld a, d                                          ; $4cad: $7a
	ld e, a                                          ; $4cae: $5f
	ld l, d                                          ; $4caf: $6a
	ld l, a                                          ; $4cb0: $6f
	ld a, [bc]                                       ; $4cb1: $0a
	ld a, e                                          ; $4cb2: $7b
	sub [hl]                                         ; $4cb3: $96
	rst SubAFromDE                                          ; $4cb4: $df
	rrca                                             ; $4cb5: $0f
	rst SubAFromDE                                          ; $4cb6: $df
	inc bc                                           ; $4cb7: $03
	db $dd                                           ; $4cb8: $dd
	ld bc, $0fdf                                     ; $4cb9: $01 $df $0f
	adc d                                            ; $4cbc: $8a
	ld e, $1f                                        ; $4cbd: $1e $1f
	inc bc                                           ; $4cbf: $03
	inc bc                                           ; $4cc0: $03
	rst SubAFromBC                                          ; $4cc1: $e7
	rst $38                                          ; $4cc2: $ff
	rst SubAFromDE                                          ; $4cc3: $df
	ccf                                              ; $4cc4: $3f
	ldh [c], a                                       ; $4cc5: $e2
	cp [hl]                                          ; $4cc6: $be
	add hl, bc                                       ; $4cc7: $09
	rst $38                                          ; $4cc8: $ff
	ld hl, sp-$01                                    ; $4cc9: $f8 $ff
	xor l                                            ; $4ccb: $ad
	rst $38                                          ; $4ccc: $ff
	sub a                                            ; $4ccd: $97
	cp $95                                           ; $4cce: $fe $95
	db $fd                                           ; $4cd0: $fd
	sub h                                            ; $4cd1: $94
	sbc $fc                                          ; $4cd2: $de $fc
	sub e                                            ; $4cd4: $93
	ldh [rAUD4LEN], a                                ; $4cd5: $e0 $20
	ldh a, [$30]                                     ; $4cd7: $f0 $30
	add sp, -$08                                     ; $4cd9: $e8 $f8
	db $fc                                           ; $4cdb: $fc
	inc a                                            ; $4cdc: $3c
	ccf                                              ; $4cdd: $3f
	rst $38                                          ; $4cde: $ff
	ldh [$e0], a                                     ; $4cdf: $e0 $e0
	ld [hl], a                                       ; $4ce1: $77
	ld b, [hl]                                       ; $4ce2: $46
	ld [hl], a                                       ; $4ce3: $77
	xor b                                            ; $4ce4: $a8
	daa                                              ; $4ce5: $27
	sbc [hl]                                         ; $4ce6: $9e
	sub $00                                          ; $4ce7: $d6 $00
	ei                                               ; $4ce9: $fb
	rst SubAFromDE                                          ; $4cea: $df
	inc bc                                           ; $4ceb: $03
	add b                                            ; $4cec: $80
	inc b                                            ; $4ced: $04
	rlca                                             ; $4cee: $07
	add hl, bc                                       ; $4cef: $09
	ld c, $09                                        ; $4cf0: $0e $09
	rrca                                             ; $4cf2: $0f
	ld [de], a                                       ; $4cf3: $12
	rra                                              ; $4cf4: $1f
	inc e                                            ; $4cf5: $1c
	rra                                              ; $4cf6: $1f
	dec d                                            ; $4cf7: $15
	rla                                              ; $4cf8: $17
	inc bc                                           ; $4cf9: $03
	ld [bc], a                                       ; $4cfa: $02
	ld bc, $0503                                     ; $4cfb: $01 $03 $05
	ld b, $05                                        ; $4cfe: $06 $05
	rlca                                             ; $4d00: $07
	dec b                                            ; $4d01: $05
	rlca                                             ; $4d02: $07
	inc bc                                           ; $4d03: $03
	inc bc                                           ; $4d04: $03
	db $10                                           ; $4d05: $10
	db $10                                           ; $4d06: $10
	ld [$f71c], sp                                   ; $4d07: $08 $1c $f7
	rst $38                                          ; $4d0a: $ff
	ld [$ff8c], sp                                   ; $4d0b: $08 $8c $ff
	db $fc                                           ; $4d0e: $fc
	inc bc                                           ; $4d0f: $03

jr_01d_4d10:
	cp $fd                                           ; $4d10: $fe $fd

jr_01d_4d12:
	ld c, e                                          ; $4d12: $4b
	cp $a5                                           ; $4d13: $fe $a5
	rst $38                                          ; $4d15: $ff
	and h                                            ; $4d16: $a4
	rst $38                                          ; $4d17: $ff
	or [hl]                                          ; $4d18: $b6
	ld e, e                                          ; $4d19: $5b
	rst $38                                          ; $4d1a: $ff
	call $ce77                                       ; $4d1b: $cd $77 $ce
	rst $38                                          ; $4d1e: $ff
	call z, $fe7b                                    ; $4d1f: $cc $7b $fe
	sbc h                                            ; $4d22: $9c
	ld sp, $83ff                                     ; $4d23: $31 $ff $83
	ei                                               ; $4d26: $fb
	rst SubAFromDE                                          ; $4d27: $df
	add b                                            ; $4d28: $80
	sub [hl]                                         ; $4d29: $96
	ld b, b                                          ; $4d2a: $40
	ret nz                                           ; $4d2b: $c0

	ld b, b                                          ; $4d2c: $40
	ret nz                                           ; $4d2d: $c0

	jr nz, jr_01d_4d10                               ; $4d2e: $20 $e0

	jr nz, jr_01d_4d12                               ; $4d30: $20 $e0

	and b                                            ; $4d32: $a0
	ld a, e                                          ; $4d33: $7b
	cp $99                                           ; $4d34: $fe $99
	ld h, b                                          ; $4d36: $60
	ldh [$60], a                                     ; $4d37: $e0 $60
	and b                                            ; $4d39: $a0
	ldh [rAUD4LEN], a                                ; $4d3a: $e0 $20
	ld a, e                                          ; $4d3c: $7b
	db $fd                                           ; $4d3d: $fd
	ld a, e                                          ; $4d3e: $7b
	cp $df                                           ; $4d3f: $fe $df
	inc bc                                           ; $4d41: $03
	sbc [hl]                                         ; $4d42: $9e
	ld [bc], a                                       ; $4d43: $02
	ld a, e                                          ; $4d44: $7b
	cp $7f                                           ; $4d45: $fe $7f
	and d                                            ; $4d47: $a2
	ld a, a                                          ; $4d48: $7f
	cp $de                                           ; $4d49: $fe $de
	rlca                                             ; $4d4b: $07
	sbc h                                            ; $4d4c: $9c
	dec b                                            ; $4d4d: $05
	inc bc                                           ; $4d4e: $03
	inc bc                                           ; $4d4f: $03
	db $dd                                           ; $4d50: $dd
	ld bc, $dffb                                     ; $4d51: $01 $fb $df
	ld bc, $03df                                     ; $4d54: $01 $df $03
	rst $38                                          ; $4d57: $ff
	sbc b                                            ; $4d58: $98
	db $fc                                           ; $4d59: $fc
	rst $38                                          ; $4d5a: $ff
	cp e                                             ; $4d5b: $bb
	rst JumpTable                                          ; $4d5c: $c7
	db $fc                                           ; $4d5d: $fc
	rst SubAFromHL                                          ; $4d5e: $d7
	add c                                            ; $4d5f: $81
	sbc $ff                                          ; $4d60: $de $ff
	sbc h                                            ; $4d62: $9c
	ld d, l                                          ; $4d63: $55
	rst $38                                          ; $4d64: $ff
	ld d, d                                          ; $4d65: $52
	ld [hl], e                                       ; $4d66: $73
	cp $df                                           ; $4d67: $fe $df
	rst $38                                          ; $4d69: $ff
	sub d                                            ; $4d6a: $92
	cp $92                                           ; $4d6b: $fe $92
	rst $38                                          ; $4d6d: $ff
	ld sp, hl                                        ; $4d6e: $f9
	rst $38                                          ; $4d6f: $ff
	sbc a                                            ; $4d70: $9f
	rra                                              ; $4d71: $1f
	ld sp, hl                                        ; $4d72: $f9
	pop af                                           ; $4d73: $f1
	rst $38                                          ; $4d74: $ff
	ccf                                              ; $4d75: $3f
	ccf                                              ; $4d76: $3f
	ldh [$7b], a                                     ; $4d77: $e0 $7b
	or d                                             ; $4d79: $b2
	ld [hl], a                                       ; $4d7a: $77
	cp b                                             ; $4d7b: $b8
	ld a, a                                          ; $4d7c: $7f
	cp $7f                                           ; $4d7d: $fe $7f
	ld hl, sp+$7f                                    ; $4d7f: $f8 $7f
	and l                                            ; $4d81: $a5
	rst SubAFromDE                                          ; $4d82: $df
	ret nz                                           ; $4d83: $c0

	db $dd                                           ; $4d84: $dd
	add b                                            ; $4d85: $80
	ld h, a                                          ; $4d86: $67
	adc h                                            ; $4d87: $8c
	rst SubAFromDE                                          ; $4d88: $df
	ret nz                                           ; $4d89: $c0

	ld [hl], a                                       ; $4d8a: $77
	ld b, [hl]                                       ; $4d8b: $46
	ld l, a                                          ; $4d8c: $6f
	and b                                            ; $4d8d: $a0
	sbc c                                            ; $4d8e: $99
	inc c                                            ; $4d8f: $0c
	rrca                                             ; $4d90: $0f
	rrca                                             ; $4d91: $0f
	dec bc                                           ; $4d92: $0b
	dec c                                            ; $4d93: $0d
	dec c                                            ; $4d94: $0d
	db $db                                           ; $4d95: $db
	ld bc, $77f9                                     ; $4d96: $01 $f9 $77
	or $47                                           ; $4d99: $f6 $47
	and b                                            ; $4d9b: $a0
	sbc [hl]                                         ; $4d9c: $9e
	ld c, d                                          ; $4d9d: $4a
	sbc $ff                                          ; $4d9e: $de $ff
	sub e                                            ; $4da0: $93
	ld a, h                                          ; $4da1: $7c
	ld h, h                                          ; $4da2: $64
	ld a, $26                                        ; $4da3: $3e $26
	dec a                                            ; $4da5: $3d
	ccf                                              ; $4da6: $3f
	rst $38                                          ; $4da7: $ff
	rst SubAFromBC                                          ; $4da8: $e7
	rst JumpTable                                          ; $4da9: $c7
	rst $38                                          ; $4daa: $ff
	ld a, h                                          ; $4dab: $7c
	ld a, h                                          ; $4dac: $7c
	ld h, a                                          ; $4dad: $67
	and b                                            ; $4dae: $a0
	sub a                                            ; $4daf: $97
	db $10                                           ; $4db0: $10
	ldh a, [$b0]                                     ; $4db1: $f0 $b0
	ldh a, [$f0]                                     ; $4db3: $f0 $f0
	ret nc                                           ; $4db5: $d0

	or b                                             ; $4db6: $b0
	or b                                             ; $4db7: $b0
	ld e, a                                          ; $4db8: $5f
	and b                                            ; $4db9: $a0
	ld [hl], a                                       ; $4dba: $77
	sbc [hl]                                         ; $4dbb: $9e
	rst $38                                          ; $4dbc: $ff
	call $fb00                                       ; $4dbd: $cd $00 $fb
	rst SubAFromDE                                          ; $4dc0: $df
	rlca                                             ; $4dc1: $07
	sub h                                            ; $4dc2: $94
	ld [$060f], sp                                   ; $4dc3: $08 $0f $06
	rlca                                             ; $4dc6: $07
	dec b                                            ; $4dc7: $05
	rlca                                             ; $4dc8: $07
	ld a, [bc]                                       ; $4dc9: $0a
	rrca                                             ; $4dca: $0f
	inc c                                            ; $4dcb: $0c
	rrca                                             ; $4dcc: $0f
	dec c                                            ; $4dcd: $0d
	ld a, e                                          ; $4dce: $7b
	cp $7f                                           ; $4dcf: $fe $7f
	or $9d                                           ; $4dd1: $f6 $9d
	ld [bc], a                                       ; $4dd3: $02
	inc bc                                           ; $4dd4: $03
	db $db                                           ; $4dd5: $db
	ld bc, $dffd                                     ; $4dd6: $01 $fd $df
	db $fc                                           ; $4dd9: $fc
	add l                                            ; $4dda: $85
	dec bc                                           ; $4ddb: $0b
	rst $38                                          ; $4ddc: $ff

jr_01d_4ddd:
	inc b                                            ; $4ddd: $04
	rst $38                                          ; $4dde: $ff

jr_01d_4ddf:
	ld [hl], $ff                                     ; $4ddf: $36 $ff
	ld c, l                                          ; $4de1: $4d
	rst $38                                          ; $4de2: $ff
	adc b                                            ; $4de3: $88
	rst $38                                          ; $4de4: $ff
	sbc l                                            ; $4de5: $9d
	rst FarCall                                          ; $4de6: $f7
	ld a, $e3                                        ; $4de7: $3e $e3
	ccf                                              ; $4de9: $3f
	rst AddAOntoHL                                          ; $4dea: $ef
	ld [hl], a                                       ; $4deb: $77
	call z, $cc7f                                    ; $4dec: $cc $7f $cc
	rst $38                                          ; $4def: $ff
	call z, $31ff                                    ; $4df0: $cc $ff $31
	rst $38                                          ; $4df3: $ff
	add e                                            ; $4df4: $83
	ei                                               ; $4df5: $fb
	rst SubAFromDE                                          ; $4df6: $df
	add b                                            ; $4df7: $80
	sub h                                            ; $4df8: $94
	ld b, b                                          ; $4df9: $40
	ret nz                                           ; $4dfa: $c0

	jr nz, jr_01d_4ddd                               ; $4dfb: $20 $e0

	jr nz, jr_01d_4ddf                               ; $4dfd: $20 $e0

	sub b                                            ; $4dff: $90
	ldh a, [$50]                                     ; $4e00: $f0 $50
	ldh a, [$b0]                                     ; $4e02: $f0 $b0
	ld a, e                                          ; $4e04: $7b
	db $fc                                           ; $4e05: $fc
	rst SubAFromDE                                          ; $4e06: $df
	ldh [$9e], a                                     ; $4e07: $e0 $9e
	and b                                            ; $4e09: $a0
	ld a, e                                          ; $4e0a: $7b
	cp $7f                                           ; $4e0b: $fe $7f
	db $ec                                           ; $4e0d: $ec
	ld a, a                                          ; $4e0e: $7f
	cp $df                                           ; $4e0f: $fe $df
	inc bc                                           ; $4e11: $03
	ld a, a                                          ; $4e12: $7f
	or [hl]                                          ; $4e13: $b6
	ld a, a                                          ; $4e14: $7f
	cp $9c                                           ; $4e15: $fe $9c
	inc b                                            ; $4e17: $04
	rlca                                             ; $4e18: $07
	inc b                                            ; $4e19: $04
	db $dd                                           ; $4e1a: $dd
	rlca                                             ; $4e1b: $07
	sbc l                                            ; $4e1c: $9d
	dec b                                            ; $4e1d: $05
	inc bc                                           ; $4e1e: $03
	ld [hl], e                                       ; $4e1f: $73
	xor d                                            ; $4e20: $aa
	ei                                               ; $4e21: $fb
	rst SubAFromDE                                          ; $4e22: $df
	ld bc, $03df                                     ; $4e23: $01 $df $03
	ld a, e                                          ; $4e26: $7b
	and h                                            ; $4e27: $a4
	sbc c                                            ; $4e28: $99
	rst $38                                          ; $4e29: $ff
	cp e                                             ; $4e2a: $bb
	rst JumpTable                                          ; $4e2b: $c7
	db $fc                                           ; $4e2c: $fc
	rst SubAFromHL                                          ; $4e2d: $d7
	add c                                            ; $4e2e: $81
	sbc $ff                                          ; $4e2f: $de $ff
	sbc h                                            ; $4e31: $9c
	ld d, l                                          ; $4e32: $55
	rst $38                                          ; $4e33: $ff
	ld d, d                                          ; $4e34: $52
	ld [hl], e                                       ; $4e35: $73
	cp $df                                           ; $4e36: $fe $df
	rst $38                                          ; $4e38: $ff
	sub b                                            ; $4e39: $90
	cp $92                                           ; $4e3a: $fe $92
	rst $38                                          ; $4e3c: $ff
	ld sp, hl                                        ; $4e3d: $f9
	rst $38                                          ; $4e3e: $ff
	sbc a                                            ; $4e3f: $9f
	rra                                              ; $4e40: $1f
	ld sp, hl                                        ; $4e41: $f9
	pop af                                           ; $4e42: $f1
	rst $38                                          ; $4e43: $ff
	ccf                                              ; $4e44: $3f
	ccf                                              ; $4e45: $3f
	ldh [$e0], a                                     ; $4e46: $e0 $e0
	ld h, b                                          ; $4e48: $60
	ld a, e                                          ; $4e49: $7b
	xor b                                            ; $4e4a: $a8
	ld [hl], a                                       ; $4e4b: $77
	cp $7f                                           ; $4e4c: $fe $7f
	ld hl, sp+$7f                                    ; $4e4e: $f8 $7f
	xor l                                            ; $4e50: $ad
	rst SubAFromDE                                          ; $4e51: $df
	ret nz                                           ; $4e52: $c0

	db $dd                                           ; $4e53: $dd
	add b                                            ; $4e54: $80
	ld h, a                                          ; $4e55: $67
	adc h                                            ; $4e56: $8c
	rst SubAFromDE                                          ; $4e57: $df
	ret nz                                           ; $4e58: $c0

	rst $38                                          ; $4e59: $ff
	ld h, a                                          ; $4e5a: $67
	and b                                            ; $4e5b: $a0
	ld a, a                                          ; $4e5c: $7f
	ld c, b                                          ; $4e5d: $48
	sbc e                                            ; $4e5e: $9b
	rrca                                             ; $4e5f: $0f
	dec bc                                           ; $4e60: $0b
	dec c                                            ; $4e61: $0d
	dec c                                            ; $4e62: $0d
	ld e, a                                          ; $4e63: $5f
	ld c, h                                          ; $4e64: $4c
	ld l, a                                          ; $4e65: $6f
	sbc [hl]                                         ; $4e66: $9e
	ccf                                              ; $4e67: $3f
	and b                                            ; $4e68: $a0
	sbc [hl]                                         ; $4e69: $9e
	ld c, d                                          ; $4e6a: $4a
	sbc $ff                                          ; $4e6b: $de $ff
	sub e                                            ; $4e6d: $93
	ld a, h                                          ; $4e6e: $7c
	ld h, h                                          ; $4e6f: $64
	ld a, $26                                        ; $4e70: $3e $26
	dec a                                            ; $4e72: $3d
	ccf                                              ; $4e73: $3f
	rst $38                                          ; $4e74: $ff
	rst SubAFromBC                                          ; $4e75: $e7
	rst JumpTable                                          ; $4e76: $c7
	rst $38                                          ; $4e77: $ff
	ld a, h                                          ; $4e78: $7c
	ld a, h                                          ; $4e79: $7c
	ld h, a                                          ; $4e7a: $67
	and b                                            ; $4e7b: $a0
	sbc [hl]                                         ; $4e7c: $9e
	db $10                                           ; $4e7d: $10
	ld a, e                                          ; $4e7e: $7b
	ld c, b                                          ; $4e7f: $48
	sbc e                                            ; $4e80: $9b
	ldh a, [$d0]                                     ; $4e81: $f0 $d0
	or b                                             ; $4e83: $b0
	or b                                             ; $4e84: $b0
	ld e, a                                          ; $4e85: $5f
	and b                                            ; $4e86: $a0
	ld [hl], a                                       ; $4e87: $77
	sbc [hl]                                         ; $4e88: $9e
	rst $38                                          ; $4e89: $ff
	db $ed                                           ; $4e8a: $ed
	nop                                              ; $4e8b: $00
	rst $38                                          ; $4e8c: $ff
	rst SubAFromDE                                          ; $4e8d: $df
	inc bc                                           ; $4e8e: $03
	sbc l                                            ; $4e8f: $9d
	inc c                                            ; $4e90: $0c
	rrca                                             ; $4e91: $0f
	ld [hl], a                                       ; $4e92: $77
	db $fc                                           ; $4e93: $fc
	adc l                                            ; $4e94: $8d
	db $10                                           ; $4e95: $10
	rra                                              ; $4e96: $1f
	ld a, $3f                                        ; $4e97: $3e $3f
	inc b                                            ; $4e99: $04
	rlca                                             ; $4e9a: $07
	ld [$0b0f], sp                                   ; $4e9b: $08 $0f $0b
	rrca                                             ; $4e9e: $0f
	rrca                                             ; $4e9f: $0f
	ld c, $0b                                        ; $4ea0: $0e $0b
	dec bc                                           ; $4ea2: $0b
	inc bc                                           ; $4ea3: $03
	ld [bc], a                                       ; $4ea4: $02
	ld bc, $7703                                     ; $4ea5: $01 $03 $77
	cp $ff                                           ; $4ea8: $fe $ff
	rst SubAFromDE                                          ; $4eaa: $df
	rst AddAOntoHL                                          ; $4eab: $ef
	adc c                                            ; $4eac: $89
	db $10                                           ; $4ead: $10
	rst $38                                          ; $4eae: $ff

jr_01d_4eaf:
	adc [hl]                                         ; $4eaf: $8e
	rst $38                                          ; $4eb0: $ff
	ld hl, $4aff                                     ; $4eb1: $21 $ff $4a
	rst $38                                          ; $4eb4: $ff
	sub l                                            ; $4eb5: $95
	rst $38                                          ; $4eb6: $ff
	sub h                                            ; $4eb7: $94
	rst $38                                          ; $4eb8: $ff
	call nc, $faff                                   ; $4eb9: $d4 $ff $fa
	ld l, a                                          ; $4ebc: $6f
	rst $38                                          ; $4ebd: $ff
	xor l                                            ; $4ebe: $ad
	ld [hl], a                                       ; $4ebf: $77
	adc $ff                                          ; $4ec0: $ce $ff
	call z, $fe7b                                    ; $4ec2: $cc $7b $fe
	sbc h                                            ; $4ec5: $9c
	ld sp, $83ff                                     ; $4ec6: $31 $ff $83
	db $fd                                           ; $4ec9: $fd
	rst SubAFromDE                                          ; $4eca: $df
	ret nz                                           ; $4ecb: $c0

	adc b                                            ; $4ecc: $88
	jr nz, jr_01d_4eaf                               ; $4ecd: $20 $e0

	sub b                                            ; $4ecf: $90
	ldh a, [$50]                                     ; $4ed0: $f0 $50
	ldh a, [$28]                                     ; $4ed2: $f0 $28
	ld hl, sp-$58                                    ; $4ed4: $f8 $a8
	ld hl, sp-$68                                    ; $4ed6: $f8 $98
	ld hl, sp+$44                                    ; $4ed8: $f8 $44
	db $fc                                           ; $4eda: $fc
	cp b                                             ; $4edb: $b8
	ld hl, sp-$30                                    ; $4edc: $f8 $d0
	ldh a, [$f0]                                     ; $4ede: $f0 $f0
	or b                                             ; $4ee0: $b0
	ldh a, [$b0]                                     ; $4ee1: $f0 $b0
	ld d, b                                          ; $4ee3: $50
	ld a, e                                          ; $4ee4: $7b
	db $ec                                           ; $4ee5: $ec
	ld a, e                                          ; $4ee6: $7b
	or e                                             ; $4ee7: $b3
	ld a, e                                          ; $4ee8: $7b
	xor [hl]                                         ; $4ee9: $ae
	sub h                                            ; $4eea: $94
	ld a, [bc]                                       ; $4eeb: $0a
	rrca                                             ; $4eec: $0f
	inc de                                           ; $4eed: $13
	rra                                              ; $4eee: $1f
	dec e                                            ; $4eef: $1d
	rra                                              ; $4ef0: $1f
	dec e                                            ; $4ef1: $1d
	rla                                              ; $4ef2: $17
	dec c                                            ; $4ef3: $0d
	rrca                                             ; $4ef4: $0f
	dec b                                            ; $4ef5: $05
	sbc $07                                          ; $4ef6: $de $07
	ld a, a                                          ; $4ef8: $7f
	and h                                            ; $4ef9: $a4
	sbc $03                                          ; $4efa: $de $03
	add a                                            ; $4efc: $87
	ld [bc], a                                       ; $4efd: $02
	inc b                                            ; $4efe: $04
	rlca                                             ; $4eff: $07
	rrca                                             ; $4f00: $0f
	rrca                                             ; $4f01: $0f
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	di                                               ; $4f04: $f3
	rst $38                                          ; $4f05: $ff
	rst AddAOntoHL                                          ; $4f06: $ef
	rra                                              ; $4f07: $1f
	pop af                                           ; $4f08: $f1
	ld e, a                                          ; $4f09: $5f
	inc b                                            ; $4f0a: $04
	rst $38                                          ; $4f0b: $ff
	db $fc                                           ; $4f0c: $fc
	rst $38                                          ; $4f0d: $ff
	ld d, l                                          ; $4f0e: $55
	rst $38                                          ; $4f0f: $ff
	ld c, e                                          ; $4f10: $4b
	cp $4b                                           ; $4f11: $fe $4b
	rst $38                                          ; $4f13: $ff
	ld c, d                                          ; $4f14: $4a
	sbc $fe                                          ; $4f15: $de $fe
	sub c                                            ; $4f17: $91
	ld hl, sp+$48                                    ; $4f18: $f8 $48
	db $fc                                           ; $4f1a: $fc
	db $e4                                           ; $4f1b: $e4
	db $fc                                           ; $4f1c: $fc
	ld a, h                                          ; $4f1d: $7c
	ld a, [hl]                                       ; $4f1e: $7e
	and $c7                                          ; $4f1f: $e6 $c7
	rst $38                                          ; $4f21: $ff
	db $fc                                           ; $4f22: $fc
	db $fc                                           ; $4f23: $fc
	ld b, b                                          ; $4f24: $40
	ret nz                                           ; $4f25: $c0

	ld [hl], a                                       ; $4f26: $77
	cp $df                                           ; $4f27: $fe $df
	ret nz                                           ; $4f29: $c0

	db $db                                           ; $4f2a: $db
	add b                                            ; $4f2b: $80
	rst AddAOntoHL                                          ; $4f2c: $ef
	db $dd                                           ; $4f2d: $dd
	inc bc                                           ; $4f2e: $03
	ld a, a                                          ; $4f2f: $7f
	or c                                             ; $4f30: $b1
	ld a, a                                          ; $4f31: $7f
	or h                                             ; $4f32: $b4
	ld a, a                                          ; $4f33: $7f
	ld b, b                                          ; $4f34: $40
	ld a, a                                          ; $4f35: $7f
	sbc c                                            ; $4f36: $99
	rst SubAFromDE                                          ; $4f37: $df
	dec c                                            ; $4f38: $0d
	db $db                                           ; $4f39: $db
	ld bc, $dffb                                     ; $4f3a: $01 $fb $df
	ld bc, $03df                                     ; $4f3d: $01 $df $03
	rst $38                                          ; $4f40: $ff
	ld a, a                                          ; $4f41: $7f
	xor b                                            ; $4f42: $a8
	sbc d                                            ; $4f43: $9a
	cp e                                             ; $4f44: $bb
	rst JumpTable                                          ; $4f45: $c7
	db $fc                                           ; $4f46: $fc
	rst SubAFromHL                                          ; $4f47: $d7
	add c                                            ; $4f48: $81
	sbc $ff                                          ; $4f49: $de $ff
	ld a, a                                          ; $4f4b: $7f
	and b                                            ; $4f4c: $a0
	sbc [hl]                                         ; $4f4d: $9e
	ld d, d                                          ; $4f4e: $52
	ld [hl], e                                       ; $4f4f: $73
	cp $df                                           ; $4f50: $fe $df
	rst $38                                          ; $4f52: $ff
	sub e                                            ; $4f53: $93
	ld a, h                                          ; $4f54: $7c
	ld h, h                                          ; $4f55: $64
	inc a                                            ; $4f56: $3c
	inc h                                            ; $4f57: $24
	inc a                                            ; $4f58: $3c
	inc a                                            ; $4f59: $3c
	rst $38                                          ; $4f5a: $ff
	rst SubAFromBC                                          ; $4f5b: $e7
	rst JumpTable                                          ; $4f5c: $c7
	rst $38                                          ; $4f5d: $ff
	ld a, h                                          ; $4f5e: $7c
	ld a, h                                          ; $4f5f: $7c
	rla                                              ; $4f60: $17
	ld b, h                                          ; $4f61: $44
	ld a, a                                          ; $4f62: $7f
	cp $7f                                           ; $4f63: $fe $7f
	db $f4                                           ; $4f65: $f4
	sbc d                                            ; $4f66: $9a
	ld [hl], b                                       ; $4f67: $70
	ldh a, [$30]                                     ; $4f68: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $4f6a: $f0 $10
	ld a, e                                          ; $4f6c: $7b
	rst AddAOntoHL                                          ; $4f6d: $ef
	ld a, a                                          ; $4f6e: $7f
	push af                                          ; $4f6f: $f5
	rst SubAFromDE                                          ; $4f70: $df
	or b                                             ; $4f71: $b0
	ld d, a                                          ; $4f72: $57
	ld a, [hl]                                       ; $4f73: $7e
	rst SubAFromDE                                          ; $4f74: $df
	ret nz                                           ; $4f75: $c0

	ei                                               ; $4f76: $fb
	push bc                                          ; $4f77: $c5
	nop                                              ; $4f78: $00
	ei                                               ; $4f79: $fb
	rst SubAFromDE                                          ; $4f7a: $df
	ld bc, $0289                                     ; $4f7b: $01 $89 $02
	inc bc                                           ; $4f7e: $03
	ld [bc], a                                       ; $4f7f: $02
	inc bc                                           ; $4f80: $03
	dec a                                            ; $4f81: $3d
	ccf                                              ; $4f82: $3f
	ld b, [hl]                                       ; $4f83: $46
	ld a, a                                          ; $4f84: $7f
	sbc d                                            ; $4f85: $9a
	rst $38                                          ; $4f86: $ff
	ld h, l                                          ; $4f87: $65
	ld a, a                                          ; $4f88: $7f
	cpl                                              ; $4f89: $2f
	ld a, $5b                                        ; $4f8a: $3e $5b
	ld a, a                                          ; $4f8c: $7f
	ld [hl], a                                       ; $4f8d: $77
	ld a, [hl]                                       ; $4f8e: $7e
	ld e, c                                          ; $4f8f: $59
	ld e, c                                          ; $4f90: $59
	add hl, bc                                       ; $4f91: $09
	add hl, bc                                       ; $4f92: $09
	ei                                               ; $4f93: $fb
	rst SubAFromDE                                          ; $4f94: $df
	ld l, a                                          ; $4f95: $6f
	adc e                                            ; $4f96: $8b

jr_01d_4f97:
	sub b                                            ; $4f97: $90
	rst $38                                          ; $4f98: $ff

jr_01d_4f99:
	jr nc, @+$01                                     ; $4f99: $30 $ff

	jp z, Jump_01d_55ff                              ; $4f9b: $ca $ff $55

	rst $38                                          ; $4f9e: $ff
	call nc, $d4bf                                   ; $4f9f: $d4 $bf $d4
	cp a                                             ; $4fa2: $bf
	ldh a, [c]                                       ; $4fa3: $f2
	cpl                                              ; $4fa4: $2f
	rst $38                                          ; $4fa5: $ff
	call $ce77                                       ; $4fa6: $cd $77 $ce
	rst $38                                          ; $4fa9: $ff
	call z, $fe7b                                    ; $4faa: $cc $7b $fe
	sbc h                                            ; $4fad: $9c
	ld sp, $83ff                                     ; $4fae: $31 $ff $83
	ei                                               ; $4fb1: $fb
	rst SubAFromDE                                          ; $4fb2: $df
	ret nz                                           ; $4fb3: $c0

	add a                                            ; $4fb4: $87
	jr nz, jr_01d_4f97                               ; $4fb5: $20 $e0

Call_01d_4fb7:
	jr nz, jr_01d_4f99                               ; $4fb7: $20 $e0

	inc e                                            ; $4fb9: $1c
	db $fc                                           ; $4fba: $fc
	sub d                                            ; $4fbb: $92
	cp $91                                           ; $4fbc: $fe $91
	rst $38                                          ; $4fbe: $ff
	ld d, a                                          ; $4fbf: $57
	rst $38                                          ; $4fc0: $ff
	ld [hl+], a                                      ; $4fc1: $22
	cp $d9                                           ; $4fc2: $fe $d9
	rst $38                                          ; $4fc4: $ff
	push hl                                          ; $4fc5: $e5
	cp a                                             ; $4fc6: $bf
	di                                               ; $4fc7: $f3
	cp a                                             ; $4fc8: $bf
	jp z, $04ce                                      ; $4fc9: $ca $ce $04

	inc b                                            ; $4fcc: $04
	ld h, a                                          ; $4fcd: $67
	and h                                            ; $4fce: $a4
	sbc [hl]                                         ; $4fcf: $9e
	inc b                                            ; $4fd0: $04
	db $dd                                           ; $4fd1: $dd
	rlca                                             ; $4fd2: $07
	sbc h                                            ; $4fd3: $9c
	dec b                                            ; $4fd4: $05
	inc bc                                           ; $4fd5: $03
	inc bc                                           ; $4fd6: $03
	db $dd                                           ; $4fd7: $dd
	ld bc, $8c67                                     ; $4fd8: $01 $67 $8c
	rst SubAFromDE                                          ; $4fdb: $df
	inc bc                                           ; $4fdc: $03
	rst $38                                          ; $4fdd: $ff
	sbc b                                            ; $4fde: $98
	db $fc                                           ; $4fdf: $fc
	rst $38                                          ; $4fe0: $ff
	cp e                                             ; $4fe1: $bb
	rst JumpTable                                          ; $4fe2: $c7
	db $fc                                           ; $4fe3: $fc
	rst SubAFromHL                                          ; $4fe4: $d7
	add c                                            ; $4fe5: $81
	sbc $ff                                          ; $4fe6: $de $ff
	ld a, a                                          ; $4fe8: $7f
	and d                                            ; $4fe9: $a2
	sbc [hl]                                         ; $4fea: $9e
	ld d, d                                          ; $4feb: $52
	ld [hl], e                                       ; $4fec: $73
	cp $df                                           ; $4fed: $fe $df
	rst $38                                          ; $4fef: $ff
	adc [hl]                                         ; $4ff0: $8e
	cp $92                                           ; $4ff1: $fe $92
	rst $38                                          ; $4ff3: $ff
	ld sp, hl                                        ; $4ff4: $f9
	rst $38                                          ; $4ff5: $ff
	sbc a                                            ; $4ff6: $9f
	rra                                              ; $4ff7: $1f
	ld sp, hl                                        ; $4ff8: $f9
	pop af                                           ; $4ff9: $f1
	rst $38                                          ; $4ffa: $ff
	ccf                                              ; $4ffb: $3f
	ccf                                              ; $4ffc: $3f
	add b                                            ; $4ffd: $80
	add b                                            ; $4ffe: $80
	ret nz                                           ; $4fff: $c0

	ret nz                                           ; $5000: $c0

	ld b, b                                          ; $5001: $40
	ld [hl], e                                       ; $5002: $73
	and d                                            ; $5003: $a2
	sbc c                                            ; $5004: $99
	ld h, b                                          ; $5005: $60
	ldh [$e0], a                                     ; $5006: $e0 $e0
	and b                                            ; $5008: $a0
	ret nz                                           ; $5009: $c0

	ret nz                                           ; $500a: $c0

	db $dd                                           ; $500b: $dd
	add b                                            ; $500c: $80
	ei                                               ; $500d: $fb
	ld [hl], a                                       ; $500e: $77
	and $67                                          ; $500f: $e6 $67
	ld b, h                                          ; $5011: $44
	ld a, a                                          ; $5012: $7f
	and d                                            ; $5013: $a2
	sbc c                                            ; $5014: $99
	inc c                                            ; $5015: $0c
	rrca                                             ; $5016: $0f
	rrca                                             ; $5017: $0f
	dec bc                                           ; $5018: $0b
	dec c                                            ; $5019: $0d
	dec c                                            ; $501a: $0d
	db $db                                           ; $501b: $db
	ld bc, $a007                                     ; $501c: $01 $07 $a0
	sub e                                            ; $501f: $93
	ld a, h                                          ; $5020: $7c
	ld h, h                                          ; $5021: $64
	ld a, $26                                        ; $5022: $3e $26
	dec a                                            ; $5024: $3d
	ccf                                              ; $5025: $3f
	rst $38                                          ; $5026: $ff
	rst SubAFromBC                                          ; $5027: $e7
	rst JumpTable                                          ; $5028: $c7
	rst $38                                          ; $5029: $ff
	ld a, h                                          ; $502a: $7c
	ld a, h                                          ; $502b: $7c
	ld h, a                                          ; $502c: $67
	and b                                            ; $502d: $a0
	sub a                                            ; $502e: $97
	db $10                                           ; $502f: $10
	ldh a, [$b0]                                     ; $5030: $f0 $b0
	ldh a, [$f0]                                     ; $5032: $f0 $f0
	ret nc                                           ; $5034: $d0

	or b                                             ; $5035: $b0
	or b                                             ; $5036: $b0
	ld d, a                                          ; $5037: $57
	and b                                            ; $5038: $a0
	rst SubAFromDE                                          ; $5039: $df
	ldh [rIE], a                                     ; $503a: $e0 $ff
	db $e3                                           ; $503c: $e3
	nop                                              ; $503d: $00
	ei                                               ; $503e: $fb
	rst SubAFromDE                                          ; $503f: $df
	inc bc                                           ; $5040: $03
	sub c                                            ; $5041: $91
	inc b                                            ; $5042: $04
	rlca                                             ; $5043: $07
	inc b                                            ; $5044: $04
	rlca                                             ; $5045: $07
	add hl, bc                                       ; $5046: $09
	rrca                                             ; $5047: $0f
	ld [de], a                                       ; $5048: $12
	rra                                              ; $5049: $1f
	inc c                                            ; $504a: $0c
	rrca                                             ; $504b: $0f
	dec b                                            ; $504c: $05
	rlca                                             ; $504d: $07
	inc bc                                           ; $504e: $03
	ld [bc], a                                       ; $504f: $02
	sbc $03                                          ; $5050: $de $03
	sbc e                                            ; $5052: $9b
	ld [bc], a                                       ; $5053: $02
	dec b                                            ; $5054: $05
	rlca                                             ; $5055: $07
	dec b                                            ; $5056: $05
	ld a, e                                          ; $5057: $7b
	db $ec                                           ; $5058: $ec
	db $fd                                           ; $5059: $fd
	rst SubAFromDE                                          ; $505a: $df
	rst AddAOntoHL                                          ; $505b: $ef
	add l                                            ; $505c: $85
	db $10                                           ; $505d: $10
	rst $38                                          ; $505e: $ff
	ld a, b                                          ; $505f: $78
	rst $38                                          ; $5060: $ff

jr_01d_5061:
	sub [hl]                                         ; $5061: $96
	rst $38                                          ; $5062: $ff
	ld hl, $b4ff                                     ; $5063: $21 $ff $b4
	rst SubAFromDE                                          ; $5066: $df
	or h                                             ; $5067: $b4
	rst SubAFromDE                                          ; $5068: $df
	cp $4b                                           ; $5069: $fe $4b
	rst $38                                          ; $506b: $ff
	ld bc, $ceff                                     ; $506c: $01 $ff $ce
	ld [hl], a                                       ; $506f: $77
	call z, $ccff                                    ; $5070: $cc $ff $cc
	rst $38                                          ; $5073: $ff
	ld sp, $83ff                                     ; $5074: $31 $ff $83
	ei                                               ; $5077: $fb
	rst SubAFromDE                                          ; $5078: $df
	add b                                            ; $5079: $80
	sbc b                                            ; $507a: $98
	ld b, b                                          ; $507b: $40
	ret nz                                           ; $507c: $c0

	ld b, b                                          ; $507d: $40
	ret nz                                           ; $507e: $c0

	jr nz, jr_01d_5061                               ; $507f: $20 $e0

	and b                                            ; $5081: $a0
	ld a, e                                          ; $5082: $7b
	cp $8c                                           ; $5083: $fe $8c
	sub b                                            ; $5085: $90
	ldh a, [$50]                                     ; $5086: $f0 $50
	ldh a, [$c8]                                     ; $5088: $f0 $c8
	ld hl, sp+$64                                    ; $508a: $f8 $64
	cp h                                             ; $508c: $bc
	ld l, b                                          ; $508d: $68
	cp b                                             ; $508e: $b8
	call nz, $24fc                                   ; $508f: $c4 $fc $24
	db $fc                                           ; $5092: $fc
	rrca                                             ; $5093: $0f
	rrca                                             ; $5094: $0f
	ld a, [bc]                                       ; $5095: $0a
	rrca                                             ; $5096: $0f
	dec bc                                           ; $5097: $0b
	ld a, e                                          ; $5098: $7b
	xor b                                            ; $5099: $a8
	sbc b                                            ; $509a: $98
	inc de                                           ; $509b: $13
	rra                                              ; $509c: $1f
	dec e                                            ; $509d: $1d
	rra                                              ; $509e: $1f
	dec e                                            ; $509f: $1d
	rla                                              ; $50a0: $17
	dec c                                            ; $50a1: $0d
	ld a, e                                          ; $50a2: $7b
	and d                                            ; $50a3: $a2
	rst SubAFromDE                                          ; $50a4: $df
	rlca                                             ; $50a5: $07
	ld l, a                                          ; $50a6: $6f
	and b                                            ; $50a7: $a0
	ld a, a                                          ; $50a8: $7f
	and h                                            ; $50a9: $a4
	rst SubAFromDE                                          ; $50aa: $df
	rrca                                             ; $50ab: $0f
	rst $38                                          ; $50ac: $ff
	sub d                                            ; $50ad: $92
	di                                               ; $50ae: $f3
	rst $38                                          ; $50af: $ff
	db $ed                                           ; $50b0: $ed
	rra                                              ; $50b1: $1f
	ldh a, [$5f]                                     ; $50b2: $f0 $5f
	inc b                                            ; $50b4: $04
	rst $38                                          ; $50b5: $ff
	db $fc                                           ; $50b6: $fc
	rst $38                                          ; $50b7: $ff
	ld d, l                                          ; $50b8: $55
	rst $38                                          ; $50b9: $ff
	ld c, e                                          ; $50ba: $4b
	ld a, e                                          ; $50bb: $7b
	and l                                            ; $50bc: $a5
	sbc [hl]                                         ; $50bd: $9e
	ld c, d                                          ; $50be: $4a
	sbc $fe                                          ; $50bf: $de $fe
	adc l                                            ; $50c1: $8d
	ld hl, sp+$48                                    ; $50c2: $f8 $48
	db $fc                                           ; $50c4: $fc
	db $e4                                           ; $50c5: $e4
	db $fc                                           ; $50c6: $fc
	ld a, h                                          ; $50c7: $7c
	ld a, [hl]                                       ; $50c8: $7e
	and $c7                                          ; $50c9: $e6 $c7
	rst $38                                          ; $50cb: $ff
	db $fc                                           ; $50cc: $fc
	db $fc                                           ; $50cd: $fc
	sub b                                            ; $50ce: $90
	ldh a, [$a0]                                     ; $50cf: $f0 $a0
	ldh [$c0], a                                     ; $50d1: $e0 $c0
	ret nz                                           ; $50d3: $c0

	reti                                             ; $50d4: $d9


	add b                                            ; $50d5: $80
	rst AddAOntoHL                                          ; $50d6: $ef
	rst SubAFromDE                                          ; $50d7: $df
	rra                                              ; $50d8: $1f
	sub d                                            ; $50d9: $92
	dec d                                            ; $50da: $15
	ld e, $17                                        ; $50db: $1e $17
	ld e, $24                                        ; $50dd: $1e $24
	ccf                                              ; $50df: $3f
	ld h, a                                          ; $50e0: $67
	ld a, a                                          ; $50e1: $7f
	ld a, d                                          ; $50e2: $7a
	ld e, a                                          ; $50e3: $5f
	ld l, d                                          ; $50e4: $6a
	ld l, a                                          ; $50e5: $6f
	ld a, [bc]                                       ; $50e6: $0a
	ld a, e                                          ; $50e7: $7b
	sub d                                            ; $50e8: $92
	rst SubAFromDE                                          ; $50e9: $df
	rrca                                             ; $50ea: $0f
	rst SubAFromDE                                          ; $50eb: $df
	inc bc                                           ; $50ec: $03
	db $dd                                           ; $50ed: $dd
	ld bc, $07df                                     ; $50ee: $01 $df $07
	sbc [hl]                                         ; $50f1: $9e
	ld c, $7b                                        ; $50f2: $0e $7b
	or $8e                                           ; $50f4: $f6 $8e
	rst SubAFromBC                                          ; $50f6: $e7
	rst $38                                          ; $50f7: $ff

jr_01d_50f8:
	db $db                                           ; $50f8: $db
	ccf                                              ; $50f9: $3f
	pop hl                                           ; $50fa: $e1
	cp a                                             ; $50fb: $bf
	add hl, bc                                       ; $50fc: $09
	rst $38                                          ; $50fd: $ff
	ld hl, sp-$01                                    ; $50fe: $f8 $ff
	xor l                                            ; $5100: $ad
	rst $38                                          ; $5101: $ff
	sub a                                            ; $5102: $97
	cp $95                                           ; $5103: $fe $95
	db $fd                                           ; $5105: $fd
	ld d, h                                          ; $5106: $54
	sbc $fc                                          ; $5107: $de $fc
	sub b                                            ; $5109: $90
	ldh [rAUD4LEN], a                                ; $510a: $e0 $20
	ldh a, [$30]                                     ; $510c: $f0 $30
	add sp, -$08                                     ; $510e: $e8 $f8
	ld hl, sp+$38                                    ; $5110: $f8 $38
	inc a                                            ; $5112: $3c
	db $fc                                           ; $5113: $fc
	ldh [$e0], a                                     ; $5114: $e0 $e0
	jr nz, jr_01d_50f8                               ; $5116: $20 $e0

	ld b, b                                          ; $5118: $40
	ld a, e                                          ; $5119: $7b
	and d                                            ; $511a: $a2
	ld [hl], a                                       ; $511b: $77
	ld a, $2f                                        ; $511c: $3e $2f
	sbc [hl]                                         ; $511e: $9e
	ret                                              ; $511f: $c9


	nop                                              ; $5120: $00
	db $fd                                           ; $5121: $fd
	rst SubAFromDE                                          ; $5122: $df
	ld b, $8a                                        ; $5123: $06 $8a
	add hl, bc                                       ; $5125: $09
	rrca                                             ; $5126: $0f
	ld b, $07                                        ; $5127: $06 $07
	inc bc                                           ; $5129: $03
	inc bc                                           ; $512a: $03
	inc b                                            ; $512b: $04
	rlca                                             ; $512c: $07
	dec b                                            ; $512d: $05
	rlca                                             ; $512e: $07
	add hl, bc                                       ; $512f: $09
	rrca                                             ; $5130: $0f
	add hl, bc                                       ; $5131: $09
	rrca                                             ; $5132: $0f
	dec bc                                           ; $5133: $0b
	ld c, $0b                                        ; $5134: $0e $0b
	rrca                                             ; $5136: $0f
	rlca                                             ; $5137: $07
	ld b, $05                                        ; $5138: $06 $05
	ld a, e                                          ; $513a: $7b
	ldh a, [c]                                       ; $513b: $f2
	add e                                            ; $513c: $83
	ld [bc], a                                       ; $513d: $02
	inc bc                                           ; $513e: $03
	ld h, b                                          ; $513f: $60
	ld h, b                                          ; $5140: $60
	inc a                                            ; $5141: $3c
	inc a                                            ; $5142: $3c
	ld h, e                                          ; $5143: $63
	ld a, a                                          ; $5144: $7f
	sub d                                            ; $5145: $92
	rst $38                                          ; $5146: $ff
	ld c, l                                          ; $5147: $4d
	rst $38                                          ; $5148: $ff
	ld [hl], e                                       ; $5149: $73
	rst $38                                          ; $514a: $ff
	xor c                                            ; $514b: $a9
	rst $38                                          ; $514c: $ff
	inc [hl]                                         ; $514d: $34
	rst SubAFromDE                                          ; $514e: $df

jr_01d_514f:
	or h                                             ; $514f: $b4
	rst SubAFromDE                                          ; $5150: $df
	or [hl]                                          ; $5151: $b6
	ld c, e                                          ; $5152: $4b
	rst $38                                          ; $5153: $ff
	call $cf77                                       ; $5154: $cd $77 $cf
	rst $38                                          ; $5157: $ff
	call $fe7b                                       ; $5158: $cd $7b $fe
	sbc h                                            ; $515b: $9c
	ld sp, $83ff                                     ; $515c: $31 $ff $83
	ei                                               ; $515f: $fb
	rst SubAFromDE                                          ; $5160: $df
	add b                                            ; $5161: $80
	sbc d                                            ; $5162: $9a
	ld b, b                                          ; $5163: $40
	ret nz                                           ; $5164: $c0

	ld b, b                                          ; $5165: $40
	ret nz                                           ; $5166: $c0

	and b                                            ; $5167: $a0
	sbc $e0                                          ; $5168: $de $e0
	ld [hl], a                                       ; $516a: $77
	ld hl, sp-$63                                    ; $516b: $f8 $9d
	jr nz, jr_01d_514f                               ; $516d: $20 $e0

	ld l, a                                          ; $516f: $6f
	cp $77                                           ; $5170: $fe $77
	db $f4                                           ; $5172: $f4
	db $dd                                           ; $5173: $dd
	ld bc, $ba7f                                     ; $5174: $01 $7f $ba
	ld a, a                                          ; $5177: $7f
	cp $7f                                           ; $5178: $fe $7f
	and h                                            ; $517a: $a4
	sbc $07                                          ; $517b: $de $07
	sbc h                                            ; $517d: $9c
	dec b                                            ; $517e: $05
	inc bc                                           ; $517f: $03
	inc bc                                           ; $5180: $03
	db $dd                                           ; $5181: $dd
	ld bc, $dffb                                     ; $5182: $01 $fb $df
	ld bc, $03df                                     ; $5185: $01 $df $03
	rst $38                                          ; $5188: $ff
	sbc b                                            ; $5189: $98
	db $fc                                           ; $518a: $fc
	rst $38                                          ; $518b: $ff
	cp e                                             ; $518c: $bb
	rst JumpTable                                          ; $518d: $c7
	db $fc                                           ; $518e: $fc
	rst SubAFromHL                                          ; $518f: $d7
	add c                                            ; $5190: $81
	sbc $ff                                          ; $5191: $de $ff
	sbc h                                            ; $5193: $9c
	ld d, l                                          ; $5194: $55
	rst $38                                          ; $5195: $ff
	ld d, d                                          ; $5196: $52
	ld [hl], e                                       ; $5197: $73
	cp $df                                           ; $5198: $fe $df
	rst $38                                          ; $519a: $ff
	sub b                                            ; $519b: $90
	cp $92                                           ; $519c: $fe $92
	rst $38                                          ; $519e: $ff
	ld sp, hl                                        ; $519f: $f9
	rst $38                                          ; $51a0: $ff
	sbc a                                            ; $51a1: $9f
	rra                                              ; $51a2: $1f
	ld sp, hl                                        ; $51a3: $f9
	pop af                                           ; $51a4: $f1
	rst $38                                          ; $51a5: $ff
	ccf                                              ; $51a6: $3f
	ccf                                              ; $51a7: $3f
	add b                                            ; $51a8: $80
	add b                                            ; $51a9: $80
	ret nz                                           ; $51aa: $c0

	ld l, e                                          ; $51ab: $6b
	xor [hl]                                         ; $51ac: $ae
	sbc c                                            ; $51ad: $99
	ld h, b                                          ; $51ae: $60
	ldh [$e0], a                                     ; $51af: $e0 $e0
	and b                                            ; $51b1: $a0
	ret nz                                           ; $51b2: $c0

	ret nz                                           ; $51b3: $c0

	db $dd                                           ; $51b4: $dd
	add b                                            ; $51b5: $80
	ld h, a                                          ; $51b6: $67
	adc h                                            ; $51b7: $8c
	rst SubAFromDE                                          ; $51b8: $df
	ret nz                                           ; $51b9: $c0

	ld [hl], a                                       ; $51ba: $77
	cp d                                             ; $51bb: $ba
	ld [hl], a                                       ; $51bc: $77
	and b                                            ; $51bd: $a0
	ld a, a                                          ; $51be: $7f
	and d                                            ; $51bf: $a2
	sbc c                                            ; $51c0: $99
	inc c                                            ; $51c1: $0c
	rrca                                             ; $51c2: $0f
	rrca                                             ; $51c3: $0f
	dec bc                                           ; $51c4: $0b
	dec c                                            ; $51c5: $0d
	dec c                                            ; $51c6: $0d
	db $db                                           ; $51c7: $db
	ld bc, $a007                                     ; $51c8: $01 $07 $a0
	sub e                                            ; $51cb: $93
	ld a, h                                          ; $51cc: $7c
	ld h, h                                          ; $51cd: $64
	ld a, $26                                        ; $51ce: $3e $26
	dec a                                            ; $51d0: $3d
	ccf                                              ; $51d1: $3f
	rst $38                                          ; $51d2: $ff
	rst SubAFromBC                                          ; $51d3: $e7
	rst JumpTable                                          ; $51d4: $c7
	rst $38                                          ; $51d5: $ff
	ld a, h                                          ; $51d6: $7c
	ld a, h                                          ; $51d7: $7c
	ld h, a                                          ; $51d8: $67
	and b                                            ; $51d9: $a0
	sub a                                            ; $51da: $97
	db $10                                           ; $51db: $10
	ldh a, [$b0]                                     ; $51dc: $f0 $b0
	ldh a, [$f0]                                     ; $51de: $f0 $f0
	ret nc                                           ; $51e0: $d0

	or b                                             ; $51e1: $b0
	or b                                             ; $51e2: $b0
	ld d, a                                          ; $51e3: $57
	and b                                            ; $51e4: $a0
	rst SubAFromDE                                          ; $51e5: $df
	ldh [rIE], a                                     ; $51e6: $e0 $ff
	jp nc, $fb00                                     ; $51e8: $d2 $00 $fb

	rst SubAFromDE                                          ; $51eb: $df
	inc bc                                           ; $51ec: $03
	add a                                            ; $51ed: $87
	inc b                                            ; $51ee: $04
	rlca                                             ; $51ef: $07
	ld a, [bc]                                       ; $51f0: $0a
	rrca                                             ; $51f1: $0f
	inc d                                            ; $51f2: $14
	rra                                              ; $51f3: $1f
	ld [$040f], sp                                   ; $51f4: $08 $0f $04
	rlca                                             ; $51f7: $07
	dec b                                            ; $51f8: $05
	rlca                                             ; $51f9: $07
	inc bc                                           ; $51fa: $03
	ld [bc], a                                       ; $51fb: $02
	inc bc                                           ; $51fc: $03
	inc bc                                           ; $51fd: $03
	ld b, $07                                        ; $51fe: $06 $07
	rlca                                             ; $5200: $07
	ld b, $05                                        ; $5201: $06 $05
	rlca                                             ; $5203: $07
	ld [bc], a                                       ; $5204: $02
	inc bc                                           ; $5205: $03
	db $fd                                           ; $5206: $fd
	rst SubAFromDE                                          ; $5207: $df
	rst AddAOntoHL                                          ; $5208: $ef
	sub [hl]                                         ; $5209: $96
	db $10                                           ; $520a: $10
	rst $38                                          ; $520b: $ff
	inc c                                            ; $520c: $0c
	rst $38                                          ; $520d: $ff

jr_01d_520e:
	ld [hl+], a                                      ; $520e: $22
	rst $38                                          ; $520f: $ff
	ld c, c                                          ; $5210: $49
	rst $38                                          ; $5211: $ff
	and h                                            ; $5212: $a4
	ld a, e                                          ; $5213: $7b
	cp $91                                           ; $5214: $fe $91
	or [hl]                                          ; $5216: $b6
	rst SubAFromDE                                          ; $5217: $df
	rst $38                                          ; $5218: $ff
	rst GetHLinHL                                          ; $5219: $cf
	ld b, l                                          ; $521a: $45
	cp $fd                                           ; $521b: $fe $fd
	rst GetHLinHL                                          ; $521d: $cf
	db $fd                                           ; $521e: $fd
	adc $ff                                          ; $521f: $ce $ff
	ld sp, $83fe                                     ; $5221: $31 $fe $83
	ei                                               ; $5224: $fb
	rst SubAFromDE                                          ; $5225: $df
	add b                                            ; $5226: $80
	sbc b                                            ; $5227: $98
	ld b, b                                          ; $5228: $40
	ret nz                                           ; $5229: $c0

	ld b, b                                          ; $522a: $40
	ret nz                                           ; $522b: $c0

	jr nz, jr_01d_520e                               ; $522c: $20 $e0

	and b                                            ; $522e: $a0
	ld a, e                                          ; $522f: $7b
	cp $9c                                           ; $5230: $fe $9c
	ld h, b                                          ; $5232: $60
	ldh [rAUD4LEN], a                                ; $5233: $e0 $20
	db $dd                                           ; $5235: $dd
	ldh [$7b], a                                     ; $5236: $e0 $7b
	push af                                          ; $5238: $f5
	ld a, a                                          ; $5239: $7f
	db $fd                                           ; $523a: $fd
	ld a, a                                          ; $523b: $7f
	db $ec                                           ; $523c: $ec
	ld a, a                                          ; $523d: $7f
	cp [hl]                                          ; $523e: $be
	rst SubAFromDE                                          ; $523f: $df
	ld bc, $fc7f                                     ; $5240: $01 $7f $fc
	ld a, a                                          ; $5243: $7f
	cp $7f                                           ; $5244: $fe $7f
	xor b                                            ; $5246: $a8
	sbc $07                                          ; $5247: $de $07
	sbc l                                            ; $5249: $9d
	dec b                                            ; $524a: $05
	inc bc                                           ; $524b: $03
	ld a, e                                          ; $524c: $7b
	ldh a, [c]                                       ; $524d: $f2
	rst SubAFromDE                                          ; $524e: $df
	ld bc, $dffb                                     ; $524f: $01 $fb $df
	ld bc, $03df                                     ; $5252: $01 $df $03
	rst $38                                          ; $5255: $ff
	sbc b                                            ; $5256: $98
	cp $ff                                           ; $5257: $fe $ff
	cp e                                             ; $5259: $bb
	rst GetHLinHL                                          ; $525a: $cf
	cp $d7                                           ; $525b: $fe $d7
	add c                                            ; $525d: $81
	sbc $ff                                          ; $525e: $de $ff
	sbc h                                            ; $5260: $9c
	ld d, l                                          ; $5261: $55
	rst $38                                          ; $5262: $ff
	ld d, d                                          ; $5263: $52
	ld [hl], e                                       ; $5264: $73
	cp $df                                           ; $5265: $fe $df
	rst $38                                          ; $5267: $ff
	sub b                                            ; $5268: $90
	cp $92                                           ; $5269: $fe $92
	rst $38                                          ; $526b: $ff
	ld sp, hl                                        ; $526c: $f9
	rst $38                                          ; $526d: $ff
	sbc a                                            ; $526e: $9f
	rra                                              ; $526f: $1f
	ld sp, hl                                        ; $5270: $f9
	pop af                                           ; $5271: $f1
	rst $38                                          ; $5272: $ff
	ccf                                              ; $5273: $3f
	ccf                                              ; $5274: $3f
	add b                                            ; $5275: $80
	add b                                            ; $5276: $80
	ret nz                                           ; $5277: $c0

	ld [hl], e                                       ; $5278: $73
	and [hl]                                         ; $5279: $a6
	ld a, a                                          ; $527a: $7f
	cp $7f                                           ; $527b: $fe $7f
	xor b                                            ; $527d: $a8
	ld a, a                                          ; $527e: $7f

Jump_01d_527f:
	xor [hl]                                         ; $527f: $ae
	rst SubAFromDE                                          ; $5280: $df
	ret nz                                           ; $5281: $c0

	db $dd                                           ; $5282: $dd
	add b                                            ; $5283: $80
	ld h, a                                          ; $5284: $67
	adc h                                            ; $5285: $8c
	rst SubAFromDE                                          ; $5286: $df
	ret nz                                           ; $5287: $c0

	rst $38                                          ; $5288: $ff
	ld l, a                                          ; $5289: $6f
	and b                                            ; $528a: $a0
	ld a, a                                          ; $528b: $7f
	and d                                            ; $528c: $a2
	sbc c                                            ; $528d: $99
	inc c                                            ; $528e: $0c
	rrca                                             ; $528f: $0f
	rrca                                             ; $5290: $0f
	dec bc                                           ; $5291: $0b
	dec c                                            ; $5292: $0d
	dec c                                            ; $5293: $0d
	db $db                                           ; $5294: $db
	ld bc, $a04b                                     ; $5295: $01 $4b $a0
	sbc l                                            ; $5298: $9d
	rst JumpTable                                          ; $5299: $c7
	db $fc                                           ; $529a: $fc
	ld c, e                                          ; $529b: $4b
	and b                                            ; $529c: $a0
	sub e                                            ; $529d: $93
	ld a, h                                          ; $529e: $7c
	ld h, h                                          ; $529f: $64
	ld a, $26                                        ; $52a0: $3e $26
	dec a                                            ; $52a2: $3d
	ccf                                              ; $52a3: $3f
	rst $38                                          ; $52a4: $ff
	rst SubAFromBC                                          ; $52a5: $e7
	rst JumpTable                                          ; $52a6: $c7
	rst $38                                          ; $52a7: $ff
	ld a, h                                          ; $52a8: $7c
	ld a, h                                          ; $52a9: $7c
	ld h, a                                          ; $52aa: $67
	and b                                            ; $52ab: $a0
	sub a                                            ; $52ac: $97
	db $10                                           ; $52ad: $10
	ldh a, [$b0]                                     ; $52ae: $f0 $b0
	ldh a, [$f0]                                     ; $52b0: $f0 $f0
	ret nc                                           ; $52b2: $d0

	or b                                             ; $52b3: $b0
	or b                                             ; $52b4: $b0
	ld d, a                                          ; $52b5: $57
	and b                                            ; $52b6: $a0
	rst SubAFromDE                                          ; $52b7: $df
	ldh [rIE], a                                     ; $52b8: $e0 $ff
	call nz, $fb00                                   ; $52ba: $c4 $00 $fb
	sub a                                            ; $52bd: $97
	rla                                              ; $52be: $17
	rra                                              ; $52bf: $1f
	ld [$050f], sp                                   ; $52c0: $08 $0f $05
	rlca                                             ; $52c3: $07
	ld a, [bc]                                       ; $52c4: $0a
	rrca                                             ; $52c5: $0f
	ld [hl], a                                       ; $52c6: $77
	cp $7f                                           ; $52c7: $fe $7f
	ld hl, sp-$22                                    ; $52c9: $f8 $de
	inc bc                                           ; $52cb: $03
	sbc h                                            ; $52cc: $9c
	ld [bc], a                                       ; $52cd: $02
	inc bc                                           ; $52ce: $03
	ld [bc], a                                       ; $52cf: $02
	db $db                                           ; $52d0: $db
	ld bc, $08df                                     ; $52d1: $01 $df $08
	adc b                                            ; $52d4: $88
	inc b                                            ; $52d5: $04
	inc c                                            ; $52d6: $0c
	ei                                               ; $52d7: $fb

jr_01d_52d8:
	rst $38                                          ; $52d8: $ff
	inc b                                            ; $52d9: $04

jr_01d_52da:
	rst $38                                          ; $52da: $ff
	call c, $22ff                                    ; $52db: $dc $ff $22
	rst $38                                          ; $52de: $ff
	ld c, c                                          ; $52df: $49
	rst $38                                          ; $52e0: $ff
	and h                                            ; $52e1: $a4
	rst $38                                          ; $52e2: $ff
	or h                                             ; $52e3: $b4
	rst SubAFromDE                                          ; $52e4: $df
	or [hl]                                          ; $52e5: $b6
	ld e, e                                          ; $52e6: $5b
	rst $38                                          ; $52e7: $ff
	rst GetHLinHL                                          ; $52e8: $cf
	ld [hl], a                                       ; $52e9: $77
	call z, Call_01d_77ff                            ; $52ea: $cc $ff $77
	cp $9c                                           ; $52ed: $fe $9c
	ld sp, $83ff                                     ; $52ef: $31 $ff $83
	ei                                               ; $52f2: $fb
	rst SubAFromDE                                          ; $52f3: $df
	ret nz                                           ; $52f4: $c0

	sbc b                                            ; $52f5: $98
	jr nz, jr_01d_52d8                               ; $52f6: $20 $e0

	jr nz, jr_01d_52da                               ; $52f8: $20 $e0

	db $10                                           ; $52fa: $10
	ldh a, [hDisp1_SCY]                                     ; $52fb: $f0 $90
	ld [hl], e                                       ; $52fd: $73
	cp $9b                                           ; $52fe: $fe $9b
	ld d, b                                          ; $5300: $50
	ldh a, [$e0]                                     ; $5301: $f0 $e0
	and b                                            ; $5303: $a0
	ld [hl], a                                       ; $5304: $77
	cp $9e                                           ; $5305: $fe $9e
	ld b, b                                          ; $5307: $40
	sbc $c0                                          ; $5308: $de $c0
	rst $38                                          ; $530a: $ff
	rst SubAFromDE                                          ; $530b: $df
	ld bc, $b37b                                     ; $530c: $01 $7b $b3
	sbc l                                            ; $530f: $9d
	inc bc                                           ; $5310: $03
	inc b                                            ; $5311: $04
	db $dd                                           ; $5312: $dd
	rlca                                             ; $5313: $07
	sbc h                                            ; $5314: $9c
	dec b                                            ; $5315: $05
	inc bc                                           ; $5316: $03
	inc bc                                           ; $5317: $03
	db $dd                                           ; $5318: $dd
	ld bc, $dffb                                     ; $5319: $01 $fb $df
	ld bc, $03df                                     ; $531c: $01 $df $03
	rst $38                                          ; $531f: $ff
	sbc b                                            ; $5320: $98
	db $fc                                           ; $5321: $fc
	rst $38                                          ; $5322: $ff
	cp e                                             ; $5323: $bb
	rst JumpTable                                          ; $5324: $c7
	db $fc                                           ; $5325: $fc
	rst SubAFromHL                                          ; $5326: $d7
	add c                                            ; $5327: $81
	sbc $ff                                          ; $5328: $de $ff
	sbc h                                            ; $532a: $9c
	ld d, l                                          ; $532b: $55
	rst $38                                          ; $532c: $ff
	ld d, d                                          ; $532d: $52
	ld [hl], e                                       ; $532e: $73
	cp $df                                           ; $532f: $fe $df
	rst $38                                          ; $5331: $ff
	adc [hl]                                         ; $5332: $8e
	cp $92                                           ; $5333: $fe $92
	rst $38                                          ; $5335: $ff
	ld sp, hl                                        ; $5336: $f9
	rst $38                                          ; $5337: $ff
	sbc a                                            ; $5338: $9f
	rra                                              ; $5339: $1f
	ld sp, hl                                        ; $533a: $f9
	pop af                                           ; $533b: $f1
	rst $38                                          ; $533c: $ff
	ccf                                              ; $533d: $3f
	ccf                                              ; $533e: $3f
	add b                                            ; $533f: $80
	add b                                            ; $5340: $80
	ret nz                                           ; $5341: $c0

	ret nz                                           ; $5342: $c0

	ld b, b                                          ; $5343: $40
	ld [hl], e                                       ; $5344: $73
	and d                                            ; $5345: $a2
	sbc c                                            ; $5346: $99
	ld h, b                                          ; $5347: $60
	ldh [$e0], a                                     ; $5348: $e0 $e0
	and b                                            ; $534a: $a0
	ret nz                                           ; $534b: $c0

	ret nz                                           ; $534c: $c0

	db $dd                                           ; $534d: $dd
	add b                                            ; $534e: $80
	ei                                               ; $534f: $fb
	ld [hl], a                                       ; $5350: $77
	and $6f                                          ; $5351: $e6 $6f
	cp b                                             ; $5353: $b8
	ld [hl], a                                       ; $5354: $77
	and d                                            ; $5355: $a2
	sbc c                                            ; $5356: $99
	inc c                                            ; $5357: $0c
	rrca                                             ; $5358: $0f
	rrca                                             ; $5359: $0f
	dec bc                                           ; $535a: $0b
	dec c                                            ; $535b: $0d
	dec c                                            ; $535c: $0d
	db $db                                           ; $535d: $db
	ld bc, $a007                                     ; $535e: $01 $07 $a0
	sub e                                            ; $5361: $93
	ld a, h                                          ; $5362: $7c
	ld h, h                                          ; $5363: $64
	ld a, $26                                        ; $5364: $3e $26
	dec a                                            ; $5366: $3d
	ccf                                              ; $5367: $3f
	rst $38                                          ; $5368: $ff
	rst SubAFromBC                                          ; $5369: $e7
	rst JumpTable                                          ; $536a: $c7
	rst $38                                          ; $536b: $ff
	ld a, h                                          ; $536c: $7c
	ld a, h                                          ; $536d: $7c
	ld h, a                                          ; $536e: $67
	and b                                            ; $536f: $a0
	ld a, a                                          ; $5370: $7f
	ld b, h                                          ; $5371: $44
	sbc c                                            ; $5372: $99
	or b                                             ; $5373: $b0
	ldh a, [$f0]                                     ; $5374: $f0 $f0
	ret nc                                           ; $5376: $d0

	or b                                             ; $5377: $b0
	or b                                             ; $5378: $b0
	ld d, a                                          ; $5379: $57
	and b                                            ; $537a: $a0
	rst SubAFromDE                                          ; $537b: $df
	ldh [rIE], a                                     ; $537c: $e0 $ff
	call z, $fd00                                    ; $537e: $cc $00 $fd
	rst SubAFromDE                                          ; $5381: $df
	ld bc, $0296                                     ; $5382: $01 $96 $02
	inc bc                                           ; $5385: $03
	inc b                                            ; $5386: $04
	rlca                                             ; $5387: $07
	add hl, bc                                       ; $5388: $09
	rrca                                             ; $5389: $0f
	ld [de], a                                       ; $538a: $12
	rra                                              ; $538b: $1f
	inc d                                            ; $538c: $14
	ld [hl], e                                       ; $538d: $73
	cp $df                                           ; $538e: $fe $df
	rrca                                             ; $5390: $0f
	sbc d                                            ; $5391: $9a
	rlca                                             ; $5392: $07
	ld b, $05                                        ; $5393: $06 $05
	rlca                                             ; $5395: $07
	dec b                                            ; $5396: $05
	ld a, e                                          ; $5397: $7b
	db $fc                                           ; $5398: $fc
	ld a, a                                          ; $5399: $7f
	add sp, -$03                                     ; $539a: $e8 $fd
	rst SubAFromDE                                          ; $539c: $df
	rst AddAOntoHL                                          ; $539d: $ef

jr_01d_539e:
	sub [hl]                                         ; $539e: $96
	ld de, $04ff                                     ; $539f: $11 $ff $04
	rst $38                                          ; $53a2: $ff
	ld [hl+], a                                      ; $53a3: $22
	rst $38                                          ; $53a4: $ff
	ld b, l                                          ; $53a5: $45
	rst $38                                          ; $53a6: $ff
	sub d                                            ; $53a7: $92
	ld [hl], e                                       ; $53a8: $73
	cp $de                                           ; $53a9: $fe $de
	rst $38                                          ; $53ab: $ff
	sub [hl]                                         ; $53ac: $96
	call z, $ce77                                    ; $53ad: $cc $77 $ce
	rst $38                                          ; $53b0: $ff
	call z, $31ff                                    ; $53b1: $cc $ff $31
	rst $38                                          ; $53b4: $ff
	add e                                            ; $53b5: $83
	ei                                               ; $53b6: $fb
	rst SubAFromDE                                          ; $53b7: $df
	add b                                            ; $53b8: $80
	sbc d                                            ; $53b9: $9a
	ld b, b                                          ; $53ba: $40
	ret nz                                           ; $53bb: $c0

	ld b, b                                          ; $53bc: $40
	ret nz                                           ; $53bd: $c0

	jr nz, jr_01d_539e                               ; $53be: $20 $de

	ldh [$97], a                                     ; $53c0: $e0 $97
	or b                                             ; $53c2: $b0
	ldh a, [$d0]                                     ; $53c3: $f0 $d0
	ldh a, [$30]                                     ; $53c5: $f0 $30
	ldh a, [$a0]                                     ; $53c7: $f0 $a0
	ldh [rPCM34], a                                  ; $53c9: $e0 $77
	cp $7f                                           ; $53cb: $fe $7f
	ldh a, [$7f]                                     ; $53cd: $f0 $7f
	cp $df                                           ; $53cf: $fe $df
	inc bc                                           ; $53d1: $03
	ld a, a                                          ; $53d2: $7f
	cp h                                             ; $53d3: $bc
	ld [hl], a                                       ; $53d4: $77
	and d                                            ; $53d5: $a2
	ld a, a                                          ; $53d6: $7f
	cp $de                                           ; $53d7: $fe $de
	rlca                                             ; $53d9: $07
	sbc h                                            ; $53da: $9c
	dec b                                            ; $53db: $05
	inc bc                                           ; $53dc: $03
	inc bc                                           ; $53dd: $03
	db $dd                                           ; $53de: $dd
	ld bc, $dffb                                     ; $53df: $01 $fb $df
	ld bc, $03df                                     ; $53e2: $01 $df $03
	rst $38                                          ; $53e5: $ff
	sbc b                                            ; $53e6: $98
	db $fc                                           ; $53e7: $fc
	rst $38                                          ; $53e8: $ff
	cp e                                             ; $53e9: $bb
	rst JumpTable                                          ; $53ea: $c7
	db $fc                                           ; $53eb: $fc
	rst SubAFromHL                                          ; $53ec: $d7
	add c                                            ; $53ed: $81
	sbc $ff                                          ; $53ee: $de $ff
	sbc h                                            ; $53f0: $9c
	ld d, l                                          ; $53f1: $55
	rst $38                                          ; $53f2: $ff
	ld d, d                                          ; $53f3: $52
	ld [hl], e                                       ; $53f4: $73
	cp $df                                           ; $53f5: $fe $df
	rst $38                                          ; $53f7: $ff
	sub b                                            ; $53f8: $90
	cp $92                                           ; $53f9: $fe $92
	rst $38                                          ; $53fb: $ff
	ld sp, hl                                        ; $53fc: $f9
	rst $38                                          ; $53fd: $ff
	sbc a                                            ; $53fe: $9f
	rra                                              ; $53ff: $1f
	ld sp, hl                                        ; $5400: $f9
	pop af                                           ; $5401: $f1
	rst $38                                          ; $5402: $ff
	ccf                                              ; $5403: $3f
	ccf                                              ; $5404: $3f
	ldh [$e0], a                                     ; $5405: $e0 $e0
	ld h, b                                          ; $5407: $60
	ld [hl], e                                       ; $5408: $73
	cp b                                             ; $5409: $b8
	ld a, a                                          ; $540a: $7f
	cp $7f                                           ; $540b: $fe $7f
	ld hl, sp+$7f                                    ; $540d: $f8 $7f
	xor l                                            ; $540f: $ad
	rst SubAFromDE                                          ; $5410: $df
	ret nz                                           ; $5411: $c0

	db $dd                                           ; $5412: $dd
	add b                                            ; $5413: $80
	ld h, a                                          ; $5414: $67
	adc h                                            ; $5415: $8c
	rst SubAFromDE                                          ; $5416: $df
	ret nz                                           ; $5417: $c0

	rst $38                                          ; $5418: $ff
	ld h, a                                          ; $5419: $67
	and b                                            ; $541a: $a0
	sbc c                                            ; $541b: $99
	inc c                                            ; $541c: $0c
	rrca                                             ; $541d: $0f
	rrca                                             ; $541e: $0f
	dec bc                                           ; $541f: $0b
	dec c                                            ; $5420: $0d
	dec c                                            ; $5421: $0d
	db $db                                           ; $5422: $db
	ld bc, $77f9                                     ; $5423: $01 $f9 $77
	or $47                                           ; $5426: $f6 $47
	and b                                            ; $5428: $a0
	sbc [hl]                                         ; $5429: $9e
	ld c, d                                          ; $542a: $4a
	sbc $ff                                          ; $542b: $de $ff
	sub e                                            ; $542d: $93
	ld a, h                                          ; $542e: $7c
	ld h, h                                          ; $542f: $64
	ld a, $26                                        ; $5430: $3e $26
	dec a                                            ; $5432: $3d
	ccf                                              ; $5433: $3f
	rst $38                                          ; $5434: $ff
	rst SubAFromBC                                          ; $5435: $e7
	rst JumpTable                                          ; $5436: $c7
	rst $38                                          ; $5437: $ff
	ld a, h                                          ; $5438: $7c
	ld a, h                                          ; $5439: $7c
	ld h, a                                          ; $543a: $67
	and b                                            ; $543b: $a0
	sub a                                            ; $543c: $97
	db $10                                           ; $543d: $10
	ldh a, [$b0]                                     ; $543e: $f0 $b0
	ldh a, [$f0]                                     ; $5440: $f0 $f0
	ret nc                                           ; $5442: $d0

	or b                                             ; $5443: $b0
	or b                                             ; $5444: $b0
	ld e, a                                          ; $5445: $5f
	and b                                            ; $5446: $a0
	ld [hl], a                                       ; $5447: $77
	sbc [hl]                                         ; $5448: $9e
	rst $38                                          ; $5449: $ff
	rst SubAFromHL                                          ; $544a: $d7
	nop                                              ; $544b: $00
	ei                                               ; $544c: $fb
	rst SubAFromDE                                          ; $544d: $df
	ld bc, $0298                                     ; $544e: $01 $98 $02
	inc bc                                           ; $5451: $03
	ld [bc], a                                       ; $5452: $02
	inc bc                                           ; $5453: $03
	dec b                                            ; $5454: $05
	rlca                                             ; $5455: $07
	ld b, $7b                                        ; $5456: $06 $7b
	cp $7f                                           ; $5458: $fe $7f
	ld a, [$0f9b]                                    ; $545a: $fa $9b $0f
	ld c, $07                                        ; $545d: $0e $07
	rlca                                             ; $545f: $07
	ld a, e                                          ; $5460: $7b
	pop af                                           ; $5461: $f1
	ld a, e                                          ; $5462: $7b
	ldh a, [$7f]                                     ; $5463: $f0 $7f
	cp $80                                           ; $5465: $fe $80
	ld a, [bc]                                       ; $5467: $0a
	dec de                                           ; $5468: $1b
	inc b                                            ; $5469: $04
	ld c, $7b                                        ; $546a: $0e $7b
	ld a, a                                          ; $546c: $7f
	add h                                            ; $546d: $84

jr_01d_546e:
	rst $38                                          ; $546e: $ff
	ld l, h                                          ; $546f: $6c

jr_01d_5470:
	rst $38                                          ; $5470: $ff
	jp nc, $15ff                                     ; $5471: $d2 $ff $15

	rst $38                                          ; $5474: $ff
	or h                                             ; $5475: $b4
	rst AddAOntoHL                                          ; $5476: $ef
	or l                                             ; $5477: $b5

jr_01d_5478:
	rst AddAOntoHL                                          ; $5478: $ef
	or a                                             ; $5479: $b7
	ld c, e                                          ; $547a: $4b
	rst $38                                          ; $547b: $ff
	call $ce77                                       ; $547c: $cd $77 $ce
	rst $38                                          ; $547f: $ff
	call z, $cdff                                    ; $5480: $cc $ff $cd
	rst $38                                          ; $5483: $ff
	ld sp, $9efe                                     ; $5484: $31 $fe $9e
	add e                                            ; $5487: $83
	ei                                               ; $5488: $fb
	rst SubAFromDE                                          ; $5489: $df
	ret nz                                           ; $548a: $c0

	sub [hl]                                         ; $548b: $96
	jr nz, jr_01d_546e                               ; $548c: $20 $e0

	jr nz, jr_01d_5470                               ; $548e: $20 $e0

	db $10                                           ; $5490: $10
	ldh a, [hDisp1_SCY]                                     ; $5491: $f0 $90
	ldh a, [$50]                                     ; $5493: $f0 $50
	ld a, e                                          ; $5495: $7b
	cp $9e                                           ; $5496: $fe $9e
	jr nc, jr_01d_5478                               ; $5498: $30 $de

	ldh a, [$7f]                                     ; $549a: $f0 $7f
	or $88                                           ; $549c: $f6 $88
	ld c, b                                          ; $549e: $48
	ld hl, sp+$48                                    ; $549f: $f8 $48
	ld hl, sp-$70                                    ; $54a1: $f8 $90
	ldh a, [$1f]                                     ; $54a3: $f0 $1f
	rra                                              ; $54a5: $1f
	dec d                                            ; $54a6: $15
	rra                                              ; $54a7: $1f
	rla                                              ; $54a8: $17
	ld e, $24                                        ; $54a9: $1e $24
	ccf                                              ; $54ab: $3f
	daa                                              ; $54ac: $27
	ccf                                              ; $54ad: $3f
	ld a, [hl-]                                      ; $54ae: $3a
	ccf                                              ; $54af: $3f
	dec l                                            ; $54b0: $2d
	ccf                                              ; $54b1: $3f
	ld a, [de]                                       ; $54b2: $1a
	rra                                              ; $54b3: $1f
	dec c                                            ; $54b4: $0d
	sbc $0f                                          ; $54b5: $de $0f
	sbc [hl]                                         ; $54b7: $9e
	inc b                                            ; $54b8: $04
	sbc $07                                          ; $54b9: $de $07
	ld a, a                                          ; $54bb: $7f
	db $fc                                           ; $54bc: $fc
	rst SubAFromDE                                          ; $54bd: $df
	rrca                                             ; $54be: $0f
	rst SubAFromDE                                          ; $54bf: $df
	rra                                              ; $54c0: $1f
	rst SubAFromDE                                          ; $54c1: $df
	ld bc, $ffdf                                     ; $54c2: $01 $df $ff
	sub b                                            ; $54c5: $90
	di                                               ; $54c6: $f3
	ccf                                              ; $54c7: $3f
	pop hl                                           ; $54c8: $e1
	cp a                                             ; $54c9: $bf
	add hl, bc                                       ; $54ca: $09
	rst $38                                          ; $54cb: $ff
	ld sp, hl                                        ; $54cc: $f9
	rst $38                                          ; $54cd: $ff
	xor e                                            ; $54ce: $ab
	rst $38                                          ; $54cf: $ff
	ld d, l                                          ; $54d0: $55
	rst $38                                          ; $54d1: $ff
	xor [hl]                                         ; $54d2: $ae
	cp $54                                           ; $54d3: $fe $54
	sbc $fc                                          ; $54d5: $de $fc
	ld a, a                                          ; $54d7: $7f
	jp z, $c89e                                      ; $54d8: $ca $9e $c8

	sbc $f8                                          ; $54db: $de $f8
	sub c                                            ; $54dd: $91
	call z, $fefc                                    ; $54de: $cc $fc $fe
	cp $f8                                           ; $54e1: $fe $f8
	ld hl, sp-$80                                    ; $54e3: $f8 $80
	add b                                            ; $54e5: $80
	ld b, b                                          ; $54e6: $40
	ret nz                                           ; $54e7: $c0

	ld b, b                                          ; $54e8: $40
	ret nz                                           ; $54e9: $c0

	add b                                            ; $54ea: $80
	add b                                            ; $54eb: $80
	jp hl                                            ; $54ec: $e9


	ld h, a                                          ; $54ed: $67
	and b                                            ; $54ee: $a0
	sub a                                            ; $54ef: $97
	ld h, a                                          ; $54f0: $67
	ld a, a                                          ; $54f1: $7f
	ld e, d                                          ; $54f2: $5a
	ld a, a                                          ; $54f3: $7f
	ld l, l                                          ; $54f4: $6d
	ld l, a                                          ; $54f5: $6f
	ld a, [bc]                                       ; $54f6: $0a
	rrca                                             ; $54f7: $0f
	ld [hl], a                                       ; $54f8: $77
	and b                                            ; $54f9: $a0
	rst SubAFromDE                                          ; $54fa: $df
	inc bc                                           ; $54fb: $03
	db $dd                                           ; $54fc: $dd
	ld bc, $07df                                     ; $54fd: $01 $df $07
	ld [hl], a                                       ; $5500: $77
	or $67                                           ; $5501: $f6 $67
	and b                                            ; $5503: $a0
	sub a                                            ; $5504: $97
	ld hl, sp-$01                                    ; $5505: $f8 $ff
	xor l                                            ; $5507: $ad
	rst $38                                          ; $5508: $ff
	ld d, [hl]                                       ; $5509: $56
	rst $38                                          ; $550a: $ff
	xor l                                            ; $550b: $ad
	db $fd                                           ; $550c: $fd
	ld [hl], a                                       ; $550d: $77
	and b                                            ; $550e: $a0
	ld a, a                                          ; $550f: $7f

jr_01d_5510:
	ld d, [hl]                                       ; $5510: $56
	ld a, a                                          ; $5511: $7f
	ld e, [hl]                                       ; $5512: $5e
	sub a                                            ; $5513: $97
	add sp, -$08                                     ; $5514: $e8 $f8
	jr c, jr_01d_5510                                ; $5516: $38 $f8

	db $fc                                           ; $5518: $fc
	db $fc                                           ; $5519: $fc
	ldh [$e0], a                                     ; $551a: $e0 $e0
	ld h, a                                          ; $551c: $67
	and b                                            ; $551d: $a0
	reti                                             ; $551e: $d9


	add b                                            ; $551f: $80
	pop af                                           ; $5520: $f1
	db $d3                                           ; $5521: $d3
	nop                                              ; $5522: $00
	db $fd                                           ; $5523: $fd
	rst SubAFromDE                                          ; $5524: $df
	inc bc                                           ; $5525: $03
	add b                                            ; $5526: $80
	inc c                                            ; $5527: $0c
	rrca                                             ; $5528: $0f
	inc de                                           ; $5529: $13
	rra                                              ; $552a: $1f
	inc a                                            ; $552b: $3c
	ccf                                              ; $552c: $3f
	add hl, bc                                       ; $552d: $09
	rrca                                             ; $552e: $0f
	ld [de], a                                       ; $552f: $12
	rra                                              ; $5530: $1f
	inc d                                            ; $5531: $14
	rra                                              ; $5532: $1f
	add hl, de                                       ; $5533: $19
	rra                                              ; $5534: $1f
	dec de                                           ; $5535: $1b
	ld e, $0f                                        ; $5536: $1e $0f
	rrca                                             ; $5538: $0f
	dec bc                                           ; $5539: $0b
	ld a, [bc]                                       ; $553a: $0a
	ld bc, $0103                                     ; $553b: $01 $03 $01
	inc bc                                           ; $553e: $03
	ld [bc], a                                       ; $553f: $02
	ld [bc], a                                       ; $5540: $02
	ld [$e408], sp                                   ; $5541: $08 $08 $e4
	db $ec                                           ; $5544: $ec
	rra                                              ; $5545: $1f
	adc d                                            ; $5546: $8a
	rst $38                                          ; $5547: $ff
	ld [$10ff], sp                                   ; $5548: $08 $ff $10
	rst $38                                          ; $554b: $ff

jr_01d_554c:
	and $ff                                          ; $554c: $e6 $ff
	add hl, de                                       ; $554e: $19
	rst $38                                          ; $554f: $ff
	ld d, h                                          ; $5550: $54
	rst $38                                          ; $5551: $ff
	call nc, $d6ff                                   ; $5552: $d4 $ff $d6
	dec hl                                           ; $5555: $2b
	rst SubAFromDE                                          ; $5556: $df
	db $ed                                           ; $5557: $ed
	ld [hl], a                                       ; $5558: $77
	adc $ff                                          ; $5559: $ce $ff
	call z, $fe7b                                    ; $555b: $cc $7b $fe
	sbc h                                            ; $555e: $9c
	ld sp, $83fe                                     ; $555f: $31 $fe $83
	ei                                               ; $5562: $fb
	rst SubAFromDE                                          ; $5563: $df
	add b                                            ; $5564: $80
	sub h                                            ; $5565: $94
	ld b, b                                          ; $5566: $40
	ret nz                                           ; $5567: $c0

	jr nz, @-$1e                                     ; $5568: $20 $e0

	jr nz, jr_01d_554c                               ; $556a: $20 $e0

	sub b                                            ; $556c: $90
	ldh a, [$50]                                     ; $556d: $f0 $50
	ldh a, [$30]                                     ; $556f: $f0 $30
	sbc $f0                                          ; $5571: $de $f0
	adc h                                            ; $5573: $8c
	ld [hl], b                                       ; $5574: $70
	or b                                             ; $5575: $b0
	ld h, b                                          ; $5576: $60
	and b                                            ; $5577: $a0
	ld b, b                                          ; $5578: $40
	ret nz                                           ; $5579: $c0

	ld b, b                                          ; $557a: $40
	ret nz                                           ; $557b: $c0

	add b                                            ; $557c: $80
	add b                                            ; $557d: $80
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	ld bc, $0201                                     ; $5580: $01 $01 $02
	inc bc                                           ; $5583: $03
	ld [bc], a                                       ; $5584: $02
	inc bc                                           ; $5585: $03
	inc b                                            ; $5586: $04
	db $dd                                           ; $5587: $dd
	rlca                                             ; $5588: $07
	sbc h                                            ; $5589: $9c
	dec b                                            ; $558a: $05
	inc bc                                           ; $558b: $03
	inc bc                                           ; $558c: $03
	db $dd                                           ; $558d: $dd
	ld bc, $dffb                                     ; $558e: $01 $fb $df
	ld bc, $03df                                     ; $5591: $01 $df $03
	rst $38                                          ; $5594: $ff
	sbc b                                            ; $5595: $98
	db $fc                                           ; $5596: $fc
	rst $38                                          ; $5597: $ff
	cp e                                             ; $5598: $bb
	rst JumpTable                                          ; $5599: $c7
	db $fc                                           ; $559a: $fc
	rst SubAFromHL                                          ; $559b: $d7
	add c                                            ; $559c: $81
	sbc $ff                                          ; $559d: $de $ff
	sbc h                                            ; $559f: $9c
	ld d, l                                          ; $55a0: $55
	rst $38                                          ; $55a1: $ff
	ld d, d                                          ; $55a2: $52
	ld [hl], e                                       ; $55a3: $73
	cp $df                                           ; $55a4: $fe $df
	rst $38                                          ; $55a6: $ff
	sub b                                            ; $55a7: $90
	cp $92                                           ; $55a8: $fe $92
	rst $38                                          ; $55aa: $ff
	ld sp, hl                                        ; $55ab: $f9
	rst $38                                          ; $55ac: $ff
	sbc a                                            ; $55ad: $9f
	rra                                              ; $55ae: $1f
	ld sp, hl                                        ; $55af: $f9
	pop af                                           ; $55b0: $f1
	rst $38                                          ; $55b1: $ff
	ccf                                              ; $55b2: $3f
	ccf                                              ; $55b3: $3f
	add b                                            ; $55b4: $80
	add b                                            ; $55b5: $80
	ret nz                                           ; $55b6: $c0

	ld a, e                                          ; $55b7: $7b
	cp b                                             ; $55b8: $b8
	ld [hl], a                                       ; $55b9: $77
	and h                                            ; $55ba: $a4
	sbc d                                            ; $55bb: $9a
	ld h, b                                          ; $55bc: $60
	ldh [$e0], a                                     ; $55bd: $e0 $e0
	and b                                            ; $55bf: $a0
	ret nz                                           ; $55c0: $c0

	ld a, e                                          ; $55c1: $7b
	xor [hl]                                         ; $55c2: $ae
	ld [hl], a                                       ; $55c3: $77
	xor h                                            ; $55c4: $ac
	ld l, a                                          ; $55c5: $6f
	adc h                                            ; $55c6: $8c
	rst SubAFromDE                                          ; $55c7: $df
	ret nz                                           ; $55c8: $c0

	ld l, a                                          ; $55c9: $6f
	cp b                                             ; $55ca: $b8
	ld [hl], a                                       ; $55cb: $77
	and d                                            ; $55cc: $a2
	ld a, a                                          ; $55cd: $7f
	ld a, $7f                                        ; $55ce: $3e $7f
	ld c, l                                          ; $55d0: $4d
	rst SubAFromDE                                          ; $55d1: $df
	dec c                                            ; $55d2: $0d
	db $db                                           ; $55d3: $db
	ld bc, $a007                                     ; $55d4: $01 $07 $a0
	sub e                                            ; $55d7: $93
	ld a, h                                          ; $55d8: $7c
	ld h, h                                          ; $55d9: $64
	ld a, $26                                        ; $55da: $3e $26
	dec a                                            ; $55dc: $3d
	ccf                                              ; $55dd: $3f
	rst $38                                          ; $55de: $ff
	rst SubAFromBC                                          ; $55df: $e7
	rst JumpTable                                          ; $55e0: $c7
	rst $38                                          ; $55e1: $ff
	ld a, h                                          ; $55e2: $7c
	ld a, h                                          ; $55e3: $7c
	ld h, a                                          ; $55e4: $67
	and b                                            ; $55e5: $a0
	sub a                                            ; $55e6: $97
	db $10                                           ; $55e7: $10
	ldh a, [$b0]                                     ; $55e8: $f0 $b0
	ldh a, [$f0]                                     ; $55ea: $f0 $f0
	ret nc                                           ; $55ec: $d0

	or b                                             ; $55ed: $b0
	or b                                             ; $55ee: $b0
	ld d, a                                          ; $55ef: $57
	and b                                            ; $55f0: $a0
	rst SubAFromDE                                          ; $55f1: $df
	ldh [rIE], a                                     ; $55f2: $e0 $ff
	and $00                                          ; $55f4: $e6 $00
	ei                                               ; $55f6: $fb
	rst SubAFromDE                                          ; $55f7: $df
	ld bc, $0298                                     ; $55f8: $01 $98 $02
	inc bc                                           ; $55fb: $03
	ld [bc], a                                       ; $55fc: $02
	inc bc                                           ; $55fd: $03
	dec b                                            ; $55fe: $05

Jump_01d_55ff:
	rlca                                             ; $55ff: $07
	ld b, $7b                                        ; $5600: $06 $7b
	cp $9d                                           ; $5602: $fe $9d
	dec c                                            ; $5604: $0d
	rrca                                             ; $5605: $0f
	ld a, e                                          ; $5606: $7b
	push af                                          ; $5607: $f5
	rst SubAFromDE                                          ; $5608: $df
	inc bc                                           ; $5609: $03
	add b                                            ; $560a: $80
	ld [bc], a                                       ; $560b: $02
	dec b                                            ; $560c: $05
	rlca                                             ; $560d: $07
	rrca                                             ; $560e: $0f
	rrca                                             ; $560f: $0f
	ld [bc], a                                       ; $5610: $02
	inc bc                                           ; $5611: $03
	ld a, [bc]                                       ; $5612: $0a
	dec de                                           ; $5613: $1b
	inc b                                            ; $5614: $04
	ld c, $7b                                        ; $5615: $0e $7b
	ld a, a                                          ; $5617: $7f
	add h                                            ; $5618: $84
	rst $38                                          ; $5619: $ff
	ld l, l                                          ; $561a: $6d
	rst $38                                          ; $561b: $ff
	sub d                                            ; $561c: $92
	rst $38                                          ; $561d: $ff
	ld e, c                                          ; $561e: $59
	rst $38                                          ; $561f: $ff
	cp d                                             ; $5620: $ba
	rst AddAOntoHL                                          ; $5621: $ef
	cp d                                             ; $5622: $ba
	rst AddAOntoHL                                          ; $5623: $ef
	or [hl]                                          ; $5624: $b6
	ld c, a                                          ; $5625: $4f
	rst $38                                          ; $5626: $ff
	call $ce77                                       ; $5627: $cd $77 $ce
	sub a                                            ; $562a: $97
	rst $38                                          ; $562b: $ff
	call z, $cdff                                    ; $562c: $cc $ff $cd
	rst $38                                          ; $562f: $ff
	ld sp, $83fe                                     ; $5630: $31 $fe $83
	db $fd                                           ; $5633: $fd
	rst SubAFromDE                                          ; $5634: $df
	add b                                            ; $5635: $80
	add l                                            ; $5636: $85
	ld b, b                                          ; $5637: $40
	ret nz                                           ; $5638: $c0

	and b                                            ; $5639: $a0
	ldh [$60], a                                     ; $563a: $e0 $60
	ldh [$50], a                                     ; $563c: $e0 $50
	ldh a, [$b0]                                     ; $563e: $f0 $b0
	ldh a, [hDisp1_SCY]                                     ; $5640: $f0 $90
	ldh a, [$50]                                     ; $5642: $f0 $50
	ldh a, [$30]                                     ; $5644: $f0 $30
	ldh a, [$d8]                                     ; $5646: $f0 $d8
	ld hl, sp-$50                                    ; $5648: $f8 $b0
	ldh a, [$28]                                     ; $564a: $f0 $28
	ld hl, sp+$54                                    ; $564c: $f8 $54
	db $fc                                           ; $564e: $fc
	sbc $fe                                          ; $564f: $de $fe
	ld [hl], a                                       ; $5651: $77
	xor h                                            ; $5652: $ac
	sub d                                            ; $5653: $92
	dec bc                                           ; $5654: $0b
	rrca                                             ; $5655: $0f
	ld a, [bc]                                       ; $5656: $0a
	rrca                                             ; $5657: $0f
	inc de                                           ; $5658: $13
	rra                                              ; $5659: $1f
	dec de                                           ; $565a: $1b
	rra                                              ; $565b: $1f
	dec e                                            ; $565c: $1d
	rla                                              ; $565d: $17
	dec c                                            ; $565e: $0d
	rrca                                             ; $565f: $0f
	dec b                                            ; $5660: $05
	sbc $07                                          ; $5661: $de $07
	ld l, a                                          ; $5663: $6f
	and b                                            ; $5664: $a0
	sbc [hl]                                         ; $5665: $9e
	inc b                                            ; $5666: $04
	ld a, e                                          ; $5667: $7b
	and b                                            ; $5668: $a0
	rst $38                                          ; $5669: $ff
	adc [hl]                                         ; $566a: $8e
	di                                               ; $566b: $f3
	rst $38                                          ; $566c: $ff
	rst AddAOntoHL                                          ; $566d: $ef
	rra                                              ; $566e: $1f
	ld sp, hl                                        ; $566f: $f9
	ld e, a                                          ; $5670: $5f
	inc b                                            ; $5671: $04
	rst $38                                          ; $5672: $ff
	db $fc                                           ; $5673: $fc
	rst $38                                          ; $5674: $ff
	ld d, l                                          ; $5675: $55
	rst $38                                          ; $5676: $ff
	ld d, e                                          ; $5677: $53
	cp $4b                                           ; $5678: $fe $4b
	rst $38                                          ; $567a: $ff
	ld c, d                                          ; $567b: $4a
	sbc $fe                                          ; $567c: $de $fe
	sub c                                            ; $567e: $91
	ld hl, sp+$48                                    ; $567f: $f8 $48
	db $fc                                           ; $5681: $fc
	db $e4                                           ; $5682: $e4
	db $fc                                           ; $5683: $fc
	ld a, h                                          ; $5684: $7c
	ld a, [hl]                                       ; $5685: $7e
	and $c7                                          ; $5686: $e6 $c7
	rst $38                                          ; $5688: $ff
	db $fc                                           ; $5689: $fc
	db $fc                                           ; $568a: $fc
	and b                                            ; $568b: $a0
	ldh [rPCM34], a                                  ; $568c: $e0 $77
	cp $df                                           ; $568e: $fe $df
	ret nz                                           ; $5690: $c0

	db $db                                           ; $5691: $db
	add b                                            ; $5692: $80
	rst AddAOntoHL                                          ; $5693: $ef
	ld a, a                                          ; $5694: $7f
	and h                                            ; $5695: $a4
	sub d                                            ; $5696: $92
	dec c                                            ; $5697: $0d
	ld c, $17                                        ; $5698: $0e $17
	ld e, $24                                        ; $569a: $1e $24
	ccf                                              ; $569c: $3f
	ld h, a                                          ; $569d: $67
	ld a, a                                          ; $569e: $7f
	ld a, [hl]                                       ; $569f: $7e
	ld e, a                                          ; $56a0: $5f
	ld l, d                                          ; $56a1: $6a
	ld l, a                                          ; $56a2: $6f
	ld a, [bc]                                       ; $56a3: $0a
	ld a, e                                          ; $56a4: $7b
	sub [hl]                                         ; $56a5: $96
	rst SubAFromDE                                          ; $56a6: $df
	rrca                                             ; $56a7: $0f
	rst SubAFromDE                                          ; $56a8: $df
	inc bc                                           ; $56a9: $03
	db $dd                                           ; $56aa: $dd
	ld bc, $0fdf                                     ; $56ab: $01 $df $0f
	adc d                                            ; $56ae: $8a
	ld e, $1f                                        ; $56af: $1e $1f
	inc bc                                           ; $56b1: $03
	inc bc                                           ; $56b2: $03
	rst SubAFromBC                                          ; $56b3: $e7
	rst $38                                          ; $56b4: $ff
	rst SubAFromDE                                          ; $56b5: $df
	ccf                                              ; $56b6: $3f
	di                                               ; $56b7: $f3
	cp a                                             ; $56b8: $bf
	add hl, bc                                       ; $56b9: $09
	rst $38                                          ; $56ba: $ff
	ld hl, sp-$01                                    ; $56bb: $f8 $ff
	xor l                                            ; $56bd: $ad
	rst $38                                          ; $56be: $ff
	and a                                            ; $56bf: $a7
	cp $95                                           ; $56c0: $fe $95
	db $fd                                           ; $56c2: $fd
	sub h                                            ; $56c3: $94
	sbc $fc                                          ; $56c4: $de $fc
	sub c                                            ; $56c6: $91
	ldh [rAUD4LEN], a                                ; $56c7: $e0 $20
	ldh a, [$30]                                     ; $56c9: $f0 $30
	add sp, -$08                                     ; $56cb: $e8 $f8
	db $fc                                           ; $56cd: $fc
	inc a                                            ; $56ce: $3c
	ccf                                              ; $56cf: $3f
	rst $38                                          ; $56d0: $ff
	ldh [$e0], a                                     ; $56d1: $e0 $e0
	ld b, b                                          ; $56d3: $40
	ret nz                                           ; $56d4: $c0

	ld [hl], a                                       ; $56d5: $77
	cp $d7                                           ; $56d6: $fe $d7
	add b                                            ; $56d8: $80
	pop af                                           ; $56d9: $f1
	jp nc, $df00                                     ; $56da: $d2 $00 $df

	ld c, $83                                        ; $56dd: $0e $83
	ld de, $261f                                     ; $56df: $11 $1f $26
	ccf                                              ; $56e2: $3f
	cpl                                              ; $56e3: $2f
	dec a                                            ; $56e4: $3d
	ld l, $3b                                        ; $56e5: $2e $3b
	ld d, $1f                                        ; $56e7: $16 $1f
	dec c                                            ; $56e9: $0d
	rrca                                             ; $56ea: $0f
	ld c, $0f                                        ; $56eb: $0e $0f
	ld a, [de]                                       ; $56ed: $1a
	rra                                              ; $56ee: $1f
	dec d                                            ; $56ef: $15
	rra                                              ; $56f0: $1f
	rla                                              ; $56f1: $17
	ld e, $0b                                        ; $56f2: $1e $0b
	rrca                                             ; $56f4: $0f
	rlca                                             ; $56f5: $07
	ld b, $03                                        ; $56f6: $06 $03
	inc bc                                           ; $56f8: $03
	ld bc, $fb01                                     ; $56f9: $01 $01 $fb
	rst SubAFromDE                                          ; $56fc: $df
	rst AddAOntoHL                                          ; $56fd: $ef
	adc e                                            ; $56fe: $8b
	sub b                                            ; $56ff: $90
	rst $38                                          ; $5700: $ff
	jr nc, @+$01                                     ; $5701: $30 $ff

	jp z, Jump_01d_55ff                              ; $5703: $ca $ff $55

	rst $38                                          ; $5706: $ff
	sub h                                            ; $5707: $94
	rst $38                                          ; $5708: $ff
	call nc, $f2ff                                   ; $5709: $d4 $ff $f2
	cpl                                              ; $570c: $2f
	rst $38                                          ; $570d: $ff
	call $ce77                                       ; $570e: $cd $77 $ce
	rst $38                                          ; $5711: $ff
	call z, $fe7b                                    ; $5712: $cc $7b $fe
	add b                                            ; $5715: $80
	ld sp, $83ff                                     ; $5716: $31 $ff $83
	inc e                                            ; $5719: $1c
	inc e                                            ; $571a: $1c
	ld [hl+], a                                      ; $571b: $22
	ld a, $49                                        ; $571c: $3e $49
	ld a, a                                          ; $571e: $7f
	push af                                          ; $571f: $f5
	rst FarCall                                          ; $5720: $f7
	add hl, sp                                       ; $5721: $39
	rst AddAOntoHL                                          ; $5722: $ef
	ld a, [hl-]                                      ; $5723: $3a
	cp $1c                                           ; $5724: $fe $1c
	db $f4                                           ; $5726: $f4
	sbc h                                            ; $5727: $9c
	db $fc                                           ; $5728: $fc
	sub d                                            ; $5729: $92
	cp $51                                           ; $572a: $fe $51
	rst $38                                          ; $572c: $ff
	and l                                            ; $572d: $a5
	rst $38                                          ; $572e: $ff
	ld [$70fe], a                                    ; $572f: $ea $fe $70
	or b                                             ; $5732: $b0
	ld h, b                                          ; $5733: $60
	and b                                            ; $5734: $a0
	rst SubAFromDE                                          ; $5735: $df
	ret nz                                           ; $5736: $c0

	db $fd                                           ; $5737: $fd
	rst SubAFromDE                                          ; $5738: $df
	ld bc, $029a                                     ; $5739: $01 $9a $02
	inc bc                                           ; $573c: $03
	ld [bc], a                                       ; $573d: $02
	inc bc                                           ; $573e: $03
	inc b                                            ; $573f: $04
	db $dd                                           ; $5740: $dd
	rlca                                             ; $5741: $07
	sbc [hl]                                         ; $5742: $9e
	dec b                                            ; $5743: $05
	ld [hl], a                                       ; $5744: $77
	xor h                                            ; $5745: $ac
	ld h, a                                          ; $5746: $67
	xor d                                            ; $5747: $aa
	rst SubAFromDE                                          ; $5748: $df
	ld bc, $03df                                     ; $5749: $01 $df $03
	rst $38                                          ; $574c: $ff
	sbc b                                            ; $574d: $98
	db $fc                                           ; $574e: $fc
	rst $38                                          ; $574f: $ff
	cp e                                             ; $5750: $bb
	rst JumpTable                                          ; $5751: $c7
	db $fc                                           ; $5752: $fc
	rst SubAFromHL                                          ; $5753: $d7

jr_01d_5754:
	add c                                            ; $5754: $81
	sbc $ff                                          ; $5755: $de $ff
	ld a, a                                          ; $5757: $7f
	and d                                            ; $5758: $a2
	sbc [hl]                                         ; $5759: $9e
	ld d, d                                          ; $575a: $52
	ld [hl], e                                       ; $575b: $73
	cp $df                                           ; $575c: $fe $df
	rst $38                                          ; $575e: $ff
	add [hl]                                         ; $575f: $86
	cp $92                                           ; $5760: $fe $92
	rst $38                                          ; $5762: $ff
	ld sp, hl                                        ; $5763: $f9
	rst $38                                          ; $5764: $ff
	sbc a                                            ; $5765: $9f
	rra                                              ; $5766: $1f
	ld sp, hl                                        ; $5767: $f9
	pop af                                           ; $5768: $f1
	rst $38                                          ; $5769: $ff
	ccf                                              ; $576a: $3f
	ccf                                              ; $576b: $3f
	add b                                            ; $576c: $80
	add b                                            ; $576d: $80
	ret nz                                           ; $576e: $c0

	ret nz                                           ; $576f: $c0

	ld b, b                                          ; $5770: $40
	ret nz                                           ; $5771: $c0

	jr nz, jr_01d_5754                               ; $5772: $20 $e0

	jr nz, @-$1e                                     ; $5774: $20 $e0

	ld h, b                                          ; $5776: $60
	ldh [$e0], a                                     ; $5777: $e0 $e0
	ld a, e                                          ; $5779: $7b
	xor [hl]                                         ; $577a: $ae
	db $dd                                           ; $577b: $dd
	add b                                            ; $577c: $80
	ei                                               ; $577d: $fb
	ld [hl], a                                       ; $577e: $77
	and $67                                          ; $577f: $e6 $67
	and b                                            ; $5781: $a0
	ld a, a                                          ; $5782: $7f
	and d                                            ; $5783: $a2
	sbc c                                            ; $5784: $99
	inc c                                            ; $5785: $0c
	rrca                                             ; $5786: $0f
	rrca                                             ; $5787: $0f
	dec bc                                           ; $5788: $0b
	dec c                                            ; $5789: $0d
	dec c                                            ; $578a: $0d
	db $db                                           ; $578b: $db
	ld bc, $a007                                     ; $578c: $01 $07 $a0
	sub e                                            ; $578f: $93
	ld a, h                                          ; $5790: $7c
	ld h, h                                          ; $5791: $64
	inc a                                            ; $5792: $3c
	inc h                                            ; $5793: $24
	inc a                                            ; $5794: $3c
	inc a                                            ; $5795: $3c
	rst $38                                          ; $5796: $ff
	rst SubAFromBC                                          ; $5797: $e7
	rst JumpTable                                          ; $5798: $c7
	rst $38                                          ; $5799: $ff
	ld a, h                                          ; $579a: $7c
	ld a, h                                          ; $579b: $7c
	ld h, a                                          ; $579c: $67
	and b                                            ; $579d: $a0
	sub a                                            ; $579e: $97
	db $10                                           ; $579f: $10
	ldh a, [$b0]                                     ; $57a0: $f0 $b0
	ldh a, [$f0]                                     ; $57a2: $f0 $f0
	ret nc                                           ; $57a4: $d0

	or b                                             ; $57a5: $b0
	or b                                             ; $57a6: $b0
	ld e, a                                          ; $57a7: $5f
	and b                                            ; $57a8: $a0
	rst $38                                          ; $57a9: $ff
	ld [hl], a                                       ; $57aa: $77
	and b                                            ; $57ab: $a0
	sub $00                                          ; $57ac: $d6 $00
	ei                                               ; $57ae: $fb
	rst SubAFromDE                                          ; $57af: $df
	ld bc, $0291                                     ; $57b0: $01 $91 $02
	inc bc                                           ; $57b3: $03
	rlca                                             ; $57b4: $07
	rlca                                             ; $57b5: $07
	ld [$330f], sp                                   ; $57b6: $08 $0f $33
	ccf                                              ; $57b9: $3f
	rra                                              ; $57ba: $1f
	ld e, $0b                                        ; $57bb: $1e $0b
	ld c, $07                                        ; $57bd: $0e $07
	ld b, $de                                        ; $57bf: $06 $de
	inc bc                                           ; $57c1: $03
	ld a, a                                          ; $57c2: $7f
	rst AddAOntoHL                                          ; $57c3: $ef
	sbc $03                                          ; $57c4: $de $03
	rst SubAFromDE                                          ; $57c6: $df
	ld bc, $36df                                     ; $57c7: $01 $df $36
	add a                                            ; $57ca: $87
	ld a, a                                          ; $57cb: $7f
	ld c, c                                          ; $57cc: $49
	ld a, a                                          ; $57cd: $7f
	ld a, l                                          ; $57ce: $7d

jr_01d_57cf:
	db $db                                           ; $57cf: $db
	rst $38                                          ; $57d0: $ff
	ld d, c                                          ; $57d1: $51
	rst $38                                          ; $57d2: $ff
	ld a, $ff                                        ; $57d3: $3e $ff
	jp hl                                            ; $57d5: $e9


	rst $38                                          ; $57d6: $ff
	call c, $fe77                                    ; $57d7: $dc $77 $fe
	ld h, e                                          ; $57da: $63
	rst $38                                          ; $57db: $ff
	ld hl, $cdff                                     ; $57dc: $21 $ff $cd
	ld [hl], a                                       ; $57df: $77
	adc $ff                                          ; $57e0: $ce $ff
	call z, $fe7b                                    ; $57e2: $cc $7b $fe
	adc l                                            ; $57e5: $8d
	ld sp, $83ff                                     ; $57e6: $31 $ff $83
	nop                                              ; $57e9: $00
	nop                                              ; $57ea: $00
	ret nz                                           ; $57eb: $c0

	ret nz                                           ; $57ec: $c0

	jr nz, jr_01d_57cf                               ; $57ed: $20 $e0

	db $10                                           ; $57ef: $10
	ldh a, [hDisp1_SCY]                                     ; $57f0: $f0 $90
	ldh a, [rOBP0]                                   ; $57f2: $f0 $48
	ld hl, sp+$28                                    ; $57f4: $f8 $28
	ld hl, sp-$58                                    ; $57f6: $f8 $a8
	ld [hl], e                                       ; $57f8: $73
	cp $93                                           ; $57f9: $fe $93
	ld l, b                                          ; $57fb: $68
	ld hl, sp-$18                                    ; $57fc: $f8 $e8
	ld hl, sp-$18                                    ; $57fe: $f8 $e8
	cp b                                             ; $5800: $b8
	ldh a, [$b0]                                     ; $5801: $f0 $b0
	ret nc                                           ; $5803: $d0

	ldh a, [$8c]                                     ; $5804: $f0 $8c
	db $fc                                           ; $5806: $fc
	ld [hl], a                                       ; $5807: $77
	or a                                             ; $5808: $b7
	ld a, a                                          ; $5809: $7f
	cp $9c                                           ; $580a: $fe $9c
	inc b                                            ; $580c: $04
	rlca                                             ; $580d: $07
	inc b                                            ; $580e: $04
	db $dd                                           ; $580f: $dd
	rlca                                             ; $5810: $07
	sbc [hl]                                         ; $5811: $9e
	dec b                                            ; $5812: $05
	ld [hl], a                                       ; $5813: $77
	xor [hl]                                         ; $5814: $ae
	rst SubAFromDE                                          ; $5815: $df
	ld bc, $8c67                                     ; $5816: $01 $67 $8c
	rst SubAFromDE                                          ; $5819: $df
	inc bc                                           ; $581a: $03
	rst $38                                          ; $581b: $ff
	sbc b                                            ; $581c: $98
	db $fc                                           ; $581d: $fc
	rst $38                                          ; $581e: $ff
	cp e                                             ; $581f: $bb
	rst JumpTable                                          ; $5820: $c7
	db $fc                                           ; $5821: $fc
	rst SubAFromHL                                          ; $5822: $d7
	add c                                            ; $5823: $81
	sbc $ff                                          ; $5824: $de $ff
	sbc h                                            ; $5826: $9c
	ld d, l                                          ; $5827: $55
	rst $38                                          ; $5828: $ff
	ld d, d                                          ; $5829: $52
	ld [hl], e                                       ; $582a: $73
	cp $df                                           ; $582b: $fe $df
	rst $38                                          ; $582d: $ff
	adc [hl]                                         ; $582e: $8e
	cp $92                                           ; $582f: $fe $92
	rst $38                                          ; $5831: $ff
	ld sp, hl                                        ; $5832: $f9
	rst $38                                          ; $5833: $ff
	sbc a                                            ; $5834: $9f
	rra                                              ; $5835: $1f
	ld sp, hl                                        ; $5836: $f9
	pop af                                           ; $5837: $f1
	rst $38                                          ; $5838: $ff
	ccf                                              ; $5839: $3f
	ccf                                              ; $583a: $3f
	ldh a, [$f0]                                     ; $583b: $f0 $f0
	ld h, b                                          ; $583d: $60
	ldh [rAUD4LEN], a                                ; $583e: $e0 $20
	ld [hl], e                                       ; $5840: $73
	cp $7f                                           ; $5841: $fe $7f
	ld hl, sp-$65                                    ; $5843: $f8 $9b
	ldh [$a0], a                                     ; $5845: $e0 $a0
	ret nz                                           ; $5847: $c0

	ret nz                                           ; $5848: $c0

	db $dd                                           ; $5849: $dd
	add b                                            ; $584a: $80
	ei                                               ; $584b: $fb
	rst SubAFromDE                                          ; $584c: $df
	add b                                            ; $584d: $80
	rst SubAFromDE                                          ; $584e: $df
	ret nz                                           ; $584f: $c0

	rst $38                                          ; $5850: $ff
	ld h, a                                          ; $5851: $67
	and b                                            ; $5852: $a0
	sbc c                                            ; $5853: $99
	inc c                                            ; $5854: $0c
	rrca                                             ; $5855: $0f
	rrca                                             ; $5856: $0f
	dec bc                                           ; $5857: $0b
	dec c                                            ; $5858: $0d
	dec c                                            ; $5859: $0d
	db $db                                           ; $585a: $db
	ld bc, $77f9                                     ; $585b: $01 $f9 $77
	or $47                                           ; $585e: $f6 $47
	and b                                            ; $5860: $a0
	sbc [hl]                                         ; $5861: $9e
	ld c, d                                          ; $5862: $4a
	sbc $ff                                          ; $5863: $de $ff
	sub e                                            ; $5865: $93
	ld a, h                                          ; $5866: $7c
	ld h, h                                          ; $5867: $64
	ld a, $26                                        ; $5868: $3e $26
	dec a                                            ; $586a: $3d
	ccf                                              ; $586b: $3f
	rst $38                                          ; $586c: $ff
	rst SubAFromBC                                          ; $586d: $e7
	rst JumpTable                                          ; $586e: $c7
	rst $38                                          ; $586f: $ff
	ld a, h                                          ; $5870: $7c
	ld a, h                                          ; $5871: $7c
	ld h, a                                          ; $5872: $67
	and b                                            ; $5873: $a0
	ld a, a                                          ; $5874: $7f
	ld a, $99                                        ; $5875: $3e $99
	or b                                             ; $5877: $b0
	ldh a, [$f0]                                     ; $5878: $f0 $f0
	ret nc                                           ; $587a: $d0

	or b                                             ; $587b: $b0
	or b                                             ; $587c: $b0
	ld e, a                                          ; $587d: $5f
	and b                                            ; $587e: $a0
	ld [hl], a                                       ; $587f: $77
	sbc [hl]                                         ; $5880: $9e
	rst $38                                          ; $5881: $ff
	ld e, b                                          ; $5882: $58
	ld bc, $029a                                     ; $5883: $01 $9a $02
	ldh a, [c]                                       ; $5886: $f2
	ld a, [$e802]                                    ; $5887: $fa $02 $e8
	sbc $f0                                          ; $588a: $de $f0
	sbc d                                            ; $588c: $9a
	ret z                                            ; $588d: $c8

	inc b                                            ; $588e: $04
	ld b, $08                                        ; $588f: $06 $08
	ld h, $de                                        ; $5891: $26 $de
	ld [hl+], a                                      ; $5893: $22
	ld a, a                                          ; $5894: $7f
	ldh a, [c]                                       ; $5895: $f2
	ld a, a                                          ; $5896: $7f
	xor $de                                          ; $5897: $ee $de
	add sp, -$69                                     ; $5899: $e8 $97
	ldh a, [rP1]                                     ; $589b: $f0 $00
	ld [bc], a                                       ; $589d: $02
	jp z, $200e                                      ; $589e: $ca $0e $20

	ld hl, $7b26                                     ; $58a1: $21 $26 $7b
	ldh a, [$7f]                                     ; $58a4: $f0 $7f
	cp $df                                           ; $58a6: $fe $df
	ldh a, [$df]                                     ; $58a8: $f0 $df
	add sp, -$69                                     ; $58aa: $e8 $97
	db $10                                           ; $58ac: $10
	ld [de], a                                       ; $58ad: $12
	ld a, [bc]                                       ; $58ae: $0a
	inc c                                            ; $58af: $0c
	ld [hl+], a                                      ; $58b0: $22
	ld [hl+], a                                      ; $58b1: $22
	jr nz, @+$23                                     ; $58b2: $20 $21

	ld h, a                                          ; $58b4: $67
	ret nc                                           ; $58b5: $d0

	sbc e                                            ; $58b6: $9b
	call z, $1a18                                    ; $58b7: $cc $18 $1a
	inc e                                            ; $58ba: $1c
	ld d, a                                          ; $58bb: $57
	ret nc                                           ; $58bc: $d0

	sbc h                                            ; $58bd: $9c
	inc d                                            ; $58be: $14
	ld d, $c8                                        ; $58bf: $16 $c8
	ld a, e                                          ; $58c1: $7b
	ldh [c], a                                       ; $58c2: $e2
	ld e, a                                          ; $58c3: $5f
	ret nc                                           ; $58c4: $d0

	sbc e                                            ; $58c5: $9b
	inc h                                            ; $58c6: $24
	ld h, $1e                                        ; $58c7: $26 $1e
	jr nz, jr_01d_5922                               ; $58c9: $20 $57

	ret nc                                           ; $58cb: $d0

	sbc e                                            ; $58cc: $9b
	adc $2c                                          ; $58cd: $ce $2c
	ld l, $30                                        ; $58cf: $2e $30
	ld d, a                                          ; $58d1: $57
	ret nc                                           ; $58d2: $d0

	sbc e                                            ; $58d3: $9b
	jr z, @+$2c                                      ; $58d4: $28 $2a

	call z, $5718                                    ; $58d6: $cc $18 $57
	ret nc                                           ; $58d9: $d0

	sbc e                                            ; $58da: $9b
	ld [hl-], a                                      ; $58db: $32
	inc [hl]                                         ; $58dc: $34
	inc d                                            ; $58dd: $14
	ld d, $77                                        ; $58de: $16 $77
	ret nc                                           ; $58e0: $d0

	sbc e                                            ; $58e1: $9b
	ld hl, sp+$00                                    ; $58e2: $f8 $00
	ld [$def8], sp                                   ; $58e4: $08 $f8 $de
	ldh a, [hDisp1_BGP]                                     ; $58e7: $f0 $92
	add sp, $3a                                      ; $58e9: $e8 $3a
	inc a                                            ; $58eb: $3c
	ld a, $36                                        ; $58ec: $3e $36
	ld [hl+], a                                      ; $58ee: $22
	jr nz, jr_01d_5911                               ; $58ef: $20 $20

	ld h, $00                                        ; $58f1: $26 $00
	ei                                               ; $58f3: $fb
	inc bc                                           ; $58f4: $03
	dec bc                                           ; $58f5: $0b
	ld [hl], a                                       ; $58f6: $77
	ret nz                                           ; $58f7: $c0

	sub e                                            ; $58f8: $93
	jr c, jr_01d_593f                                ; $58f9: $38 $44

	ld b, [hl]                                       ; $58fb: $46
	ld c, b                                          ; $58fc: $48
	daa                                              ; $58fd: $27
	ld [hl+], a                                      ; $58fe: $22
	ld h, $26                                        ; $58ff: $26 $26
	ei                                               ; $5901: $fb
	inc bc                                           ; $5902: $03
	ld [bc], a                                       ; $5903: $02
	ld a, [$c077]                                    ; $5904: $fa $77 $c0
	sbc e                                            ; $5907: $9b
	ld b, b                                          ; $5908: $40
	ld b, d                                          ; $5909: $42

jr_01d_590a:
	call z, Call_01d_774a                            ; $590a: $cc $4a $77
	ret nz                                           ; $590d: $c0

	ld a, e                                          ; $590e: $7b
	pop bc                                           ; $590f: $c1
	ld a, a                                          ; $5910: $7f

jr_01d_5911:
	ret nz                                           ; $5911: $c0

	sbc $e8                                          ; $5912: $de $e8
	sbc e                                            ; $5914: $9b
	ld c, h                                          ; $5915: $4c
	inc d                                            ; $5916: $14
	ld d, $d0                                        ; $5917: $16 $d0
	ld a, e                                          ; $5919: $7b
	pop bc                                           ; $591a: $c1
	sbc l                                            ; $591b: $9d
	jr z, @-$04                                      ; $591c: $28 $fa

	ld a, e                                          ; $591e: $7b
	adc a                                            ; $591f: $8f
	ld a, e                                          ; $5920: $7b
	pop hl                                           ; $5921: $e1

jr_01d_5922:
	sub l                                            ; $5922: $95
	ldh a, [$4e]                                     ; $5923: $f0 $4e
	ld d, b                                          ; $5925: $50
	inc b                                            ; $5926: $04
	ld d, d                                          ; $5927: $52
	inc h                                            ; $5928: $24
	inc h                                            ; $5929: $24
	ld [hl+], a                                      ; $592a: $22
	ld [hl+], a                                      ; $592b: $22
	ld [bc], a                                       ; $592c: $02
	ld [hl], a                                       ; $592d: $77
	and b                                            ; $592e: $a0
	sbc $e8                                          ; $592f: $de $e8
	sub a                                            ; $5931: $97
	ld [$54d2], sp                                   ; $5932: $08 $d2 $54
	ld d, [hl]                                       ; $5935: $56
	inc hl                                           ; $5936: $23
	jr z, jr_01d_595d                                ; $5937: $28 $24

	inc h                                            ; $5939: $24
	ld a, e                                          ; $593a: $7b
	ld [hl], c                                       ; $593b: $71
	ld a, e                                          ; $593c: $7b

jr_01d_593d:
	sub b                                            ; $593d: $90
	ld a, a                                          ; $593e: $7f

jr_01d_593f:
	xor $98                                          ; $593f: $ee $98
	ld c, $58                                        ; $5941: $0e $58
	ld [de], a                                       ; $5943: $12
	call nc, $2222                                   ; $5944: $d4 $22 $22
	inc hl                                           ; $5947: $23
	ld h, e                                          ; $5948: $63
	ret nc                                           ; $5949: $d0

	sbc e                                            ; $594a: $9b
	ld e, d                                          ; $594b: $5a
	ld e, h                                          ; $594c: $5c
	jr @+$60                                         ; $594d: $18 $5e

	ld d, a                                          ; $594f: $57
	ret nc                                           ; $5950: $d0

	sbc e                                            ; $5951: $9b
	ld h, b                                          ; $5952: $60
	ret nc                                           ; $5953: $d0

	ld h, d                                          ; $5954: $62
	ld h, h                                          ; $5955: $64
	ld d, a                                          ; $5956: $57
	ret nc                                           ; $5957: $d0

	sbc e                                            ; $5958: $9b
	ld [hl+], a                                      ; $5959: $22
	ld h, [hl]                                       ; $595a: $66
	ld h, $d6                                        ; $595b: $26 $d6

jr_01d_595d:
	ld d, a                                          ; $595d: $57
	ret nc                                           ; $595e: $d0

	sbc e                                            ; $595f: $9b
	ld l, b                                          ; $5960: $68
	ld l, d                                          ; $5961: $6a
	inc l                                            ; $5962: $2c
	ld l, h                                          ; $5963: $6c
	ld d, a                                          ; $5964: $57
	ret nc                                           ; $5965: $d0

	sbc e                                            ; $5966: $9b
	jr nc, jr_01d_593d                               ; $5967: $30 $d4

	ld e, d                                          ; $5969: $5a
	ld e, h                                          ; $596a: $5c
	ld l, e                                          ; $596b: $6b
	ret nc                                           ; $596c: $d0

	ld [hl], a                                       ; $596d: $77
	ld b, b                                          ; $596e: $40
	sbc d                                            ; $596f: $9a
	ldh a, [rAUD2LOW]                                ; $5970: $f0 $18
	ld l, [hl]                                       ; $5972: $6e
	ld [hl], b                                       ; $5973: $70
	halt                                             ; $5974: $76
	ld a, e                                          ; $5975: $7b
	ret nc                                           ; $5976: $d0

	sbc [hl]                                         ; $5977: $9e
	ld [hl+], a                                      ; $5978: $22
	ld a, e                                          ; $5979: $7b
	ld sp, $009e                                     ; $597a: $31 $9e $00
	ld [hl], a                                       ; $597d: $77
	jr nz, jr_01d_590a                               ; $597e: $20 $8a

	ld a, b                                          ; $5980: $78
	ld a, d                                          ; $5981: $7a
	ld [hl], d                                       ; $5982: $72
	ld [hl], h                                       ; $5983: $74
	ld [hl+], a                                      ; $5984: $22
	inc h                                            ; $5985: $24
	jr z, @+$2b                                      ; $5986: $28 $29

	ei                                               ; $5988: $fb
	ei                                               ; $5989: $fb
	inc bc                                           ; $598a: $03
	inc bc                                           ; $598b: $03
	add sp, -$10                                     ; $598c: $e8 $f0
	add sp, -$10                                     ; $598e: $e8 $f0
	ld a, h                                          ; $5990: $7c
	ld b, h                                          ; $5991: $44
	ld a, [hl]                                       ; $5992: $7e
	ret nz                                           ; $5993: $c0

	inc h                                            ; $5994: $24
	ld a, e                                          ; $5995: $7b
	rst AddAOntoHL                                          ; $5996: $ef
	sbc [hl]                                         ; $5997: $9e
	dec bc                                           ; $5998: $0b
	ld l, e                                          ; $5999: $6b
	ret nz                                           ; $599a: $c0

	sbc [hl]                                         ; $599b: $9e
	jp nz, $c07b                                     ; $599c: $c2 $7b $c0

	sbc [hl]                                         ; $599f: $9e
	add hl, hl                                       ; $59a0: $29
	ld a, e                                          ; $59a1: $7b
	ret nz                                           ; $59a2: $c0

	ld a, a                                          ; $59a3: $7f
	ldh a, [c]                                       ; $59a4: $f2
	adc l                                            ; $59a5: $8d
	inc b                                            ; $59a6: $04
	db $fc                                           ; $59a7: $fc
	ldh a, [$f0]                                     ; $59a8: $f0 $f0
	or $f6                                           ; $59aa: $f6 $f6
	call nz, $d8c6                                   ; $59ac: $c4 $c6 $d8
	jp c, $2322                                      ; $59af: $da $22 $23

	ld l, h                                          ; $59b2: $6c
	inc l                                            ; $59b3: $2c
	db $f4                                           ; $59b4: $f4
	inc b                                            ; $59b5: $04
	db $fc                                           ; $59b6: $fc
	db $f4                                           ; $59b7: $f4
	db $dd                                           ; $59b8: $dd
	or $97                                           ; $59b9: $f6 $97
	ret c                                            ; $59bb: $d8

	ldh [$de], a                                     ; $59bc: $e0 $de
	call c, $2e2d                                    ; $59be: $dc $2d $2e
	ld l, $2f                                        ; $59c1: $2e $2f
	ld a, e                                          ; $59c3: $7b
	pop af                                           ; $59c4: $f1
	sbc [hl]                                         ; $59c5: $9e
	inc b                                            ; $59c6: $04
	db $dd                                           ; $59c7: $dd
	or $9b                                           ; $59c8: $f6 $9b
	and $e4                                          ; $59ca: $e6 $e4
	ldh [c], a                                       ; $59cc: $e2
	db $ec                                           ; $59cd: $ec
	ld a, e                                          ; $59ce: $7b
	pop af                                           ; $59cf: $f1
	sub [hl]                                         ; $59d0: $96
	ld l, $fc                                        ; $59d1: $2e $fc
	or $ea                                           ; $59d3: $f6 $ea
	ld l, $f4                                        ; $59d5: $2e $f4
	or $e8                                           ; $59d7: $f6 $e8
	cpl                                              ; $59d9: $2f
	ld a, $01                                        ; $59da: $3e $01
	adc a                                            ; $59dc: $8f
	rst FarCall                                          ; $59dd: $f7
	rst $38                                          ; $59de: $ff
	rst FarCall                                          ; $59df: $f7
	rst $38                                          ; $59e0: $ff
	ldh a, [$f0]                                     ; $59e1: $f0 $f0
	add sp, -$18                                     ; $59e3: $e8 $e8
	inc b                                            ; $59e5: $04
	ld b, $00                                        ; $59e6: $06 $00
	ld [bc], a                                       ; $59e8: $02
	ld [hl+], a                                      ; $59e9: $22
	ld [hl+], a                                      ; $59ea: $22
	jr nz, @+$23                                     ; $59eb: $20 $21

	ld h, a                                          ; $59ed: $67
	ldh a, [$9b]                                     ; $59ee: $f0 $9b
	inc c                                            ; $59f0: $0c
	ld c, $08                                        ; $59f1: $0e $08
	ld a, [bc]                                       ; $59f3: $0a
	ld d, a                                          ; $59f4: $57
	ldh a, [$9b]                                     ; $59f5: $f0 $9b
	inc d                                            ; $59f7: $14
	ld d, $10                                        ; $59f8: $16 $10
	ld [de], a                                       ; $59fa: $12
	ld d, a                                          ; $59fb: $57
	ldh a, [$9b]                                     ; $59fc: $f0 $9b
	inc e                                            ; $59fe: $1c
	ld e, $18                                        ; $59ff: $1e $18
	ld a, [de]                                       ; $5a01: $1a
	ld d, a                                          ; $5a02: $57
	ldh a, [$9c]                                     ; $5a03: $f0 $9c
	inc h                                            ; $5a05: $24
	ld h, $20                                        ; $5a06: $26 $20
	sbc $22                                          ; $5a08: $de $22
	ld e, a                                          ; $5a0a: $5f
	ldh a, [$9d]                                     ; $5a0b: $f0 $9d
	jr z, jr_01d_5a39                                ; $5a0d: $28 $2a

	ld l, a                                          ; $5a0f: $6f
	ret nc                                           ; $5a10: $d0

	sbc e                                            ; $5a11: $9b
	ld a, [$0202]                                    ; $5a12: $fa $02 $02
	ld a, [bc]                                       ; $5a15: $0a
	ld [hl], a                                       ; $5a16: $77
	ldh a, [hDisp1_OBP0]                                     ; $5a17: $f0 $93
	jr nc, jr_01d_5a4d                               ; $5a19: $30 $32

	inc l                                            ; $5a1b: $2c
	ld l, $22                                        ; $5a1c: $2e $22
	jr nz, jr_01d_5a40                               ; $5a1e: $20 $20

	ld hl, $03fb                                     ; $5a20: $21 $fb $03
	dec bc                                           ; $5a23: $0b
	inc bc                                           ; $5a24: $03
	sbc $f0                                          ; $5a25: $de $f0
	sbc d                                            ; $5a27: $9a
	add sp, $38                                      ; $5a28: $e8 $38
	ld a, [hl-]                                      ; $5a2a: $3a
	inc a                                            ; $5a2b: $3c
	inc [hl]                                         ; $5a2c: $34
	ld a, e                                          ; $5a2d: $7b
	ldh a, [$9d]                                     ; $5a2e: $f0 $9d
	jr nz, jr_01d_5a3d                               ; $5a30: $20 $0b

	ld a, e                                          ; $5a32: $7b
	rst AddAOntoHL                                          ; $5a33: $ef
	sbc [hl]                                         ; $5a34: $9e
	add sp, -$22                                     ; $5a35: $e8 $de
	ldh a, [$9a]                                     ; $5a37: $f0 $9a

jr_01d_5a39:
	ld [hl], $42                                     ; $5a39: $36 $42
	ld b, h                                          ; $5a3b: $44
	ld b, [hl]                                       ; $5a3c: $46

jr_01d_5a3d:
	ld hl, $cf7b                                     ; $5a3d: $21 $7b $cf

jr_01d_5a40:
	ld a, a                                          ; $5a40: $7f
	ldh a, [c]                                       ; $5a41: $f2
	ld a, a                                          ; $5a42: $7f
	rst AddAOntoHL                                          ; $5a43: $ef
	rst SubAFromDE                                          ; $5a44: $df
	add sp, -$21                                     ; $5a45: $e8 $df
	ldh a, [hDisp1_WX]                                     ; $5a47: $f0 $96
	ld a, $40                                        ; $5a49: $3e $40
	ld c, b                                          ; $5a4b: $48
	ld c, d                                          ; $5a4c: $4a

jr_01d_5a4d:
	jr nz, jr_01d_5a70                               ; $5a4d: $20 $21

	ld [hl+], a                                      ; $5a4f: $22
	jr nz, @+$0d                                     ; $5a50: $20 $0b

	ld a, e                                          ; $5a52: $7b
	xor a                                            ; $5a53: $af
	ld a, e                                          ; $5a54: $7b
	pop bc                                           ; $5a55: $c1
	sub [hl]                                         ; $5a56: $96
	ldh a, [$4c]                                     ; $5a57: $f0 $4c
	ld c, [hl]                                       ; $5a59: $4e
	ld d, b                                          ; $5a5a: $50
	inc b                                            ; $5a5b: $04
	ld hl, $2424                                     ; $5a5c: $21 $24 $24
	ld [hl+], a                                      ; $5a5f: $22
	ld a, e                                          ; $5a60: $7b
	and c                                            ; $5a61: $a1
	ld [hl], e                                       ; $5a62: $73
	ldh a, [$9a]                                     ; $5a63: $f0 $9a
	ld d, d                                          ; $5a65: $52
	ld d, h                                          ; $5a66: $54
	ld d, [hl]                                       ; $5a67: $56
	inc c                                            ; $5a68: $0c
	inc hl                                           ; $5a69: $23
	ld e, e                                          ; $5a6a: $5b
	ldh a, [$9b]                                     ; $5a6b: $f0 $9b
	ld e, b                                          ; $5a6d: $58
	ld e, d                                          ; $5a6e: $5a
	ld e, h                                          ; $5a6f: $5c

jr_01d_5a70:
	inc d                                            ; $5a70: $14
	ld d, a                                          ; $5a71: $57
	ldh a, [$9b]                                     ; $5a72: $f0 $9b
	ld e, [hl]                                       ; $5a74: $5e
	ld h, b                                          ; $5a75: $60
	ld h, d                                          ; $5a76: $62
	inc e                                            ; $5a77: $1c
	ld d, a                                          ; $5a78: $57
	ldh a, [$9b]                                     ; $5a79: $f0 $9b
	ld h, h                                          ; $5a7b: $64
	ld h, [hl]                                       ; $5a7c: $66
	ld l, b                                          ; $5a7d: $68
	inc h                                            ; $5a7e: $24
	ld d, a                                          ; $5a7f: $57
	ldh a, [$9b]                                     ; $5a80: $f0 $9b
	ld l, d                                          ; $5a82: $6a
	ld e, d                                          ; $5a83: $5a
	ld e, h                                          ; $5a84: $5c
	jr z, jr_01d_5afa                                ; $5a85: $28 $73

	ldh a, [$7f]                                     ; $5a87: $f0 $7f
	ld h, c                                          ; $5a89: $61
	sbc [hl]                                         ; $5a8a: $9e
	ld a, [$f077]                                    ; $5a8b: $fa $77 $f0
	sbc e                                            ; $5a8e: $9b
	ld l, h                                          ; $5a8f: $6c
	ld l, [hl]                                       ; $5a90: $6e
	ld [hl], b                                       ; $5a91: $70
	jr nc, jr_01d_5b0b                               ; $5a92: $30 $77

	ldh a, [$9b]                                     ; $5a94: $f0 $9b
	ld [bc], a                                       ; $5a96: $02
	dec bc                                           ; $5a97: $0b
	inc bc                                           ; $5a98: $03
	dec bc                                           ; $5a99: $0b
	ld [hl], a                                       ; $5a9a: $77
	ld d, b                                          ; $5a9b: $50
	sub a                                            ; $5a9c: $97
	ld [hl-], a                                      ; $5a9d: $32
	ld a, b                                          ; $5a9e: $78
	ld [hl], d                                       ; $5a9f: $72
	ld [hl], h                                       ; $5aa0: $74
	inc hl                                           ; $5aa1: $23
	ld [hl+], a                                      ; $5aa2: $22
	inc h                                            ; $5aa3: $24
	inc h                                            ; $5aa4: $24
	ld h, e                                          ; $5aa5: $63
	ld d, b                                          ; $5aa6: $50
	sbc e                                            ; $5aa7: $9b
	halt                                             ; $5aa8: $76
	ret nz                                           ; $5aa9: $c0

	ld a, d                                          ; $5aaa: $7a
	ld [hl+], a                                      ; $5aab: $22
	ld a, e                                          ; $5aac: $7b
	rst AddAOntoHL                                          ; $5aad: $ef
	ld a, e                                          ; $5aae: $7b
	ld h, c                                          ; $5aaf: $61
	sbc [hl]                                         ; $5ab0: $9e
	nop                                              ; $5ab1: $00
	ld [hl], a                                       ; $5ab2: $77
	ld d, b                                          ; $5ab3: $50
	sub h                                            ; $5ab4: $94
	ld a, h                                          ; $5ab5: $7c
	ld b, d                                          ; $5ab6: $42
	ld a, [hl]                                       ; $5ab7: $7e
	ret z                                            ; $5ab8: $c8

	inc h                                            ; $5ab9: $24
	ld [hl+], a                                      ; $5aba: $22
	inc hl                                           ; $5abb: $23
	ld l, $00                                        ; $5abc: $2e $00
	ld hl, sp-$08                                    ; $5abe: $f8 $f8
	ld a, e                                          ; $5ac0: $7b
	ldh a, [$7f]                                     ; $5ac1: $f0 $7f
	cp $96                                           ; $5ac3: $fe $96
	call nz, $c2c6                                   ; $5ac5: $c4 $c6 $c2
	jp nc, $2e2c                                     ; $5ac8: $d2 $2c $2e

	dec l                                            ; $5acb: $2d
	ld l, $f8                                        ; $5acc: $2e $f8
	ld a, e                                          ; $5ace: $7b
	rst AddAOntoHL                                          ; $5acf: $ef
	ld a, e                                          ; $5ad0: $7b
	pop bc                                           ; $5ad1: $c1
	sub l                                            ; $5ad2: $95
	ldh [$d0], a                                     ; $5ad3: $e0 $d0
	adc $cc                                          ; $5ad5: $ce $cc
	jp z, $2c2e                                      ; $5ad7: $ca $2e $2c

	inc l                                            ; $5ada: $2c
	dec l                                            ; $5adb: $2d
	nop                                              ; $5adc: $00
	ld a, e                                          ; $5add: $7b
	rst AddAOntoHL                                          ; $5ade: $ef
	ld [hl], a                                       ; $5adf: $77
	or b                                             ; $5ae0: $b0
	sbc [hl]                                         ; $5ae1: $9e
	jp nc, $ef7b                                     ; $5ae2: $d2 $7b $ef

	rst SubAFromDE                                          ; $5ae5: $df
	ld l, $df                                        ; $5ae6: $2e $df
	inc l                                            ; $5ae8: $2c
	ld a, e                                          ; $5ae9: $7b
	pop af                                           ; $5aea: $f1
	sbc l                                            ; $5aeb: $9d
	nop                                              ; $5aec: $00
	ldh [$7b], a                                     ; $5aed: $e0 $7b
	rst AddAOntoHL                                          ; $5aef: $ef
	sbc [hl]                                         ; $5af0: $9e
	call nc, $ef7b                                   ; $5af1: $d4 $7b $ef
	ld a, a                                          ; $5af4: $7f
	jp nc, $ef7f                                     ; $5af5: $d2 $7f $ef

	ld a, e                                          ; $5af8: $7b
	pop bc                                           ; $5af9: $c1

jr_01d_5afa:
	sbc l                                            ; $5afa: $9d
	ld hl, sp-$18                                    ; $5afb: $f8 $e8
	ld a, e                                          ; $5afd: $7b
	rst AddAOntoHL                                          ; $5afe: $ef
	sbc d                                            ; $5aff: $9a
	call z, $d2d6                                    ; $5b00: $cc $d6 $d2
	ret nc                                           ; $5b03: $d0

	inc l                                            ; $5b04: $2c
	ld a, e                                          ; $5b05: $7b
	rst AddAOntoHL                                          ; $5b06: $ef
	ld [hl], e                                       ; $5b07: $73
	or b                                             ; $5b08: $b0
	ld a, e                                          ; $5b09: $7b
	rst AddAOntoHL                                          ; $5b0a: $ef

jr_01d_5b0b:
	ld a, a                                          ; $5b0b: $7f
	jp nc, $d89d                                     ; $5b0c: $d2 $9d $d8

	jp nc, $c17b                                     ; $5b0f: $d2 $7b $c1

	ld d, a                                          ; $5b12: $57
	or b                                             ; $5b13: $b0
	sbc [hl]                                         ; $5b14: $9e
	jp c, $b077                                      ; $5b15: $da $77 $b0

	or c                                             ; $5b18: $b1
	nop                                              ; $5b19: $00
	sub e                                            ; $5b1a: $93
	db $10                                           ; $5b1b: $10
	ld [$0810], sp                                   ; $5b1c: $08 $10 $08
	db $fc                                           ; $5b1f: $fc
	db $fc                                           ; $5b20: $fc
	db $f4                                           ; $5b21: $f4
	db $f4                                           ; $5b22: $f4
	ld [de], a                                       ; $5b23: $12
	db $10                                           ; $5b24: $10
	ld c, $0c                                        ; $5b25: $0e $0c
	db $dd                                           ; $5b27: $dd
	jr nz, @-$6b                                     ; $5b28: $20 $93

	nop                                              ; $5b2a: $00
	ld hl, sp-$10                                    ; $5b2b: $f8 $f0
	add sp, -$0c                                     ; $5b2d: $e8 $f4
	db $f4                                           ; $5b2f: $f4
	db $fc                                           ; $5b30: $fc
	db $fc                                           ; $5b31: $fc
	ld a, [bc]                                       ; $5b32: $0a
	ld [$0406], sp                                   ; $5b33: $08 $06 $04
	db $dd                                           ; $5b36: $dd
	jr nz, jr_01d_5bb8                               ; $5b37: $20 $7f

	ldh a, [c]                                       ; $5b39: $f2
	ld a, a                                          ; $5b3a: $7f
	ldh [rPCM34], a                                  ; $5b3b: $e0 $77
	ldh a, [hDisp1_OBP0]                                     ; $5b3d: $f0 $93
	ld [bc], a                                       ; $5b3f: $02
	nop                                              ; $5b40: $00
	ld [de], a                                       ; $5b41: $12
	db $10                                           ; $5b42: $10
	jr nz, @+$23                                     ; $5b43: $20 $21

	ld [hl+], a                                      ; $5b45: $22
	ld [hl+], a                                      ; $5b46: $22
	db $10                                           ; $5b47: $10
	ld [$f800], sp                                   ; $5b48: $08 $00 $f8
	db $dd                                           ; $5b4b: $dd
	db $f4                                           ; $5b4c: $f4
	ld a, a                                          ; $5b4d: $7f
	jp nc, $de7f                                     ; $5b4e: $d2 $7f $de

	db $dd                                           ; $5b51: $dd
	ld [hl+], a                                      ; $5b52: $22
	ld a, a                                          ; $5b53: $7f
	ldh [$7f], a                                     ; $5b54: $e0 $7f
	cp $77                                           ; $5b56: $fe $77
	ret nz                                           ; $5b58: $c0

	sbc e                                            ; $5b59: $9b
	ld a, [de]                                       ; $5b5a: $1a
	jr jr_01d_5b73                                   ; $5b5b: $18 $16

	inc d                                            ; $5b5d: $14
	sbc $22                                          ; $5b5e: $de $22
	sbc [hl]                                         ; $5b60: $9e
	inc hl                                           ; $5b61: $23
	ccf                                              ; $5b62: $3f
	or b                                             ; $5b63: $b0
	ld a, a                                          ; $5b64: $7f
	cp $77                                           ; $5b65: $fe $77
	ldh a, [$9b]                                     ; $5b67: $f0 $9b
	ld [hl+], a                                      ; $5b69: $22
	jr nz, @+$20                                     ; $5b6a: $20 $1e

	inc e                                            ; $5b6c: $1c
	ld l, a                                          ; $5b6d: $6f
	or b                                             ; $5b6e: $b0
	ld l, a                                          ; $5b6f: $6f
	ret nc                                           ; $5b70: $d0

	ld a, a                                          ; $5b71: $7f
	and d                                            ; $5b72: $a2

jr_01d_5b73:
	ld a, a                                          ; $5b73: $7f
	xor [hl]                                         ; $5b74: $ae
	sbc $20                                          ; $5b75: $de $20
	sbc [hl]                                         ; $5b77: $9e
	ld hl, $d057                                     ; $5b78: $21 $57 $d0
	db $dd                                           ; $5b7b: $dd
	ld [hl+], a                                      ; $5b7c: $22
	ld d, a                                          ; $5b7d: $57
	ret nc                                           ; $5b7e: $d0

	cpl                                              ; $5b7f: $2f
	and b                                            ; $5b80: $a0
	ld a, a                                          ; $5b81: $7f
	ldh [$dd], a                                     ; $5b82: $e0 $dd
	ld hl, sp-$65                                    ; $5b84: $f8 $9b
	ld [hl], $34                                     ; $5b86: $36 $34
	ld [hl-], a                                      ; $5b88: $32
	jr z, @-$21                                      ; $5b89: $28 $dd

	inc h                                            ; $5b8b: $24
	ld [hl], a                                       ; $5b8c: $77
	ld h, b                                          ; $5b8d: $60
	db $dd                                           ; $5b8e: $dd
	ld hl, sp-$69                                    ; $5b8f: $f8 $97
	ld h, $24                                        ; $5b91: $26 $24
	ld [hl], $34                                     ; $5b93: $36 $34
	inc h                                            ; $5b95: $24
	dec h                                            ; $5b96: $25
	inc h                                            ; $5b97: $24
	inc h                                            ; $5b98: $24
	ld [hl], a                                       ; $5b99: $77
	ld b, b                                          ; $5b9a: $40
	db $dd                                           ; $5b9b: $dd
	ld hl, sp-$64                                    ; $5b9c: $f8 $9c
	ld [hl-], a                                      ; $5b9e: $32
	inc l                                            ; $5b9f: $2c
	ld a, [hl+]                                      ; $5ba0: $2a
	db $dd                                           ; $5ba1: $dd
	inc h                                            ; $5ba2: $24
	sbc [hl]                                         ; $5ba3: $9e
	dec h                                            ; $5ba4: $25
	ld e, e                                          ; $5ba5: $5b
	ret nc                                           ; $5ba6: $d0

	sbc [hl]                                         ; $5ba7: $9e
	jr nc, @+$71                                     ; $5ba8: $30 $6f

	ret nc                                           ; $5baa: $d0

	ld l, a                                          ; $5bab: $6f
	rst AddAOntoHL                                          ; $5bac: $ef
	sub l                                            ; $5bad: $95
	ld l, $24                                        ; $5bae: $2e $24
	ld a, $3c                                        ; $5bb0: $3e $3c
	inc h                                            ; $5bb2: $24
	dec h                                            ; $5bb3: $25
	jr nz, jr_01d_5bd6                               ; $5bb4: $20 $20

	ld hl, sp-$10                                    ; $5bb6: $f8 $f0

jr_01d_5bb8:
	ld l, a                                          ; $5bb8: $6f
	ldh a, [$9b]                                     ; $5bb9: $f0 $9b
	ld a, [hl-]                                      ; $5bbb: $3a
	jr c, @+$40                                      ; $5bbc: $38 $3e

	inc a                                            ; $5bbe: $3c
	ld [hl], a                                       ; $5bbf: $77
	jr nz, @+$7d                                     ; $5bc0: $20 $7b

	or $7f                                           ; $5bc2: $f6 $7f
	adc h                                            ; $5bc4: $8c
	sbc h                                            ; $5bc5: $9c
	ld hl, sp+$38                                    ; $5bc6: $f8 $38
	inc hl                                           ; $5bc8: $23
	inc b                                            ; $5bc9: $04
	add c                                            ; $5bca: $81
	adc a                                            ; $5bcb: $8f
	nop                                              ; $5bcc: $00
	inc bc                                           ; $5bcd: $03
	rrca                                             ; $5bce: $0f
	rra                                              ; $5bcf: $1f
	ccf                                              ; $5bd0: $3f
	ccf                                              ; $5bd1: $3f
	ld a, a                                          ; $5bd2: $7f
	ld a, a                                          ; $5bd3: $7f
	nop                                              ; $5bd4: $00
	inc bc                                           ; $5bd5: $03

jr_01d_5bd6:
	inc c                                            ; $5bd6: $0c
	db $10                                           ; $5bd7: $10
	ld hl, $4321                                     ; $5bd8: $21 $21 $43
	ld b, c                                          ; $5bdb: $41
	reti                                             ; $5bdc: $d9


	rst $38                                          ; $5bdd: $ff
	sbc h                                            ; $5bde: $9c
	add c                                            ; $5bdf: $81
	add e                                            ; $5be0: $83
	add e                                            ; $5be1: $83
	sbc $81                                          ; $5be2: $de $81
	rst SubAFromDE                                          ; $5be4: $df
	add b                                            ; $5be5: $80
	ret c                                            ; $5be6: $d8

	rst $38                                          ; $5be7: $ff
	db $fc                                           ; $5be8: $fc
	sbc l                                            ; $5be9: $9d
	or c                                             ; $5bea: $b1
	ld c, b                                          ; $5beb: $48
	reti                                             ; $5bec: $d9


	rst $38                                          ; $5bed: $ff
	sub a                                            ; $5bee: $97
	adc b                                            ; $5bef: $88
	ld [$2d18], sp                                   ; $5bf0: $08 $18 $2d
	dec hl                                           ; $5bf3: $2b
	ld [hl-], a                                      ; $5bf4: $32
	nop                                              ; $5bf5: $00
	inc b                                            ; $5bf6: $04
	ld d, a                                          ; $5bf7: $57
	ldh [$9b], a                                     ; $5bf8: $e0 $9b
	pop hl                                           ; $5bfa: $e1
	ld bc, $11fb                                     ; $5bfb: $01 $fb $11
	reti                                             ; $5bfe: $d9


Call_01d_5bff:
	rst $38                                          ; $5bff: $ff
	ld a, a                                          ; $5c00: $7f
	or l                                             ; $5c01: $b5
	sbc d                                            ; $5c02: $9a
	jp $31a1                                         ; $5c03: $c3 $a1 $31


	add hl, de                                       ; $5c06: $19
	nop                                              ; $5c07: $00
	ld h, e                                          ; $5c08: $63
	ret nc                                           ; $5c09: $d0

	dec hl                                           ; $5c0a: $2b
	ret nz                                           ; $5c0b: $c0

	sbc [hl]                                         ; $5c0c: $9e
	nop                                              ; $5c0d: $00
	ld d, a                                          ; $5c0e: $57
	ldh [$9b], a                                     ; $5c0f: $e0 $9b
	ldh [rP1], a                                     ; $5c11: $e0 $00
	ld hl, sp+$10                                    ; $5c13: $f8 $10
	reti                                             ; $5c15: $d9


	rst $38                                          ; $5c16: $ff
	sbc c                                            ; $5c17: $99
	jr nz, @+$42                                     ; $5c18: $20 $40

	ret nz                                           ; $5c1a: $c0

	and b                                            ; $5c1b: $a0
	ld [hl-], a                                      ; $5c1c: $32
	add hl, de                                       ; $5c1d: $19
	ld c, a                                          ; $5c1e: $4f
	ldh [$fd], a                                     ; $5c1f: $e0 $fd
	ld c, e                                          ; $5c21: $4b
	pop af                                           ; $5c22: $f1
	rst $38                                          ; $5c23: $ff
	sub b                                            ; $5c24: $90
	ret nz                                           ; $5c25: $c0

	ldh a, [$f8]                                     ; $5c26: $f0 $f8
	db $fc                                           ; $5c28: $fc
	db $fc                                           ; $5c29: $fc
	cp $fe                                           ; $5c2a: $fe $fe
	nop                                              ; $5c2c: $00
	ret nz                                           ; $5c2d: $c0

	jr nc, @+$0a                                     ; $5c2e: $30 $08

	inc b                                            ; $5c30: $04
	inc b                                            ; $5c31: $04
	ld [bc], a                                       ; $5c32: $02
	ld [bc], a                                       ; $5c33: $02
	reti                                             ; $5c34: $d9


	rst $38                                          ; $5c35: $ff
	reti                                             ; $5c36: $d9


	ld bc, $ffda                                     ; $5c37: $01 $da $ff
	sbc [hl]                                         ; $5c3a: $9e
	ld a, a                                          ; $5c3b: $7f
	jp c, $9180                                      ; $5c3c: $da $80 $91

	ld b, b                                          ; $5c3f: $40
	ld a, a                                          ; $5c40: $7f
	ccf                                              ; $5c41: $3f
	ccf                                              ; $5c42: $3f
	rra                                              ; $5c43: $1f
	rrca                                             ; $5c44: $0f
	inc bc                                           ; $5c45: $03
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	ld b, b                                          ; $5c48: $40
	jr nz, jr_01d_5c6b                               ; $5c49: $20 $20

	db $10                                           ; $5c4b: $10
	inc c                                            ; $5c4c: $0c
	ld a, e                                          ; $5c4d: $7b
	ld hl, sp-$27                                    ; $5c4e: $f8 $d9
	rst $38                                          ; $5c50: $ff
	sbc [hl]                                         ; $5c51: $9e
	ld [bc], a                                       ; $5c52: $02
	cp $9e                                           ; $5c53: $fe $9e
	ld b, $de                                        ; $5c55: $06 $de
	ld [bc], a                                       ; $5c57: $02
	jp c, $9bff                                      ; $5c58: $da $ff $9b

	db $fc                                           ; $5c5b: $fc
	ld [bc], a                                       ; $5c5c: $02
	dec b                                            ; $5c5d: $05
	inc b                                            ; $5c5e: $04
	cp $9d                                           ; $5c5f: $fe $9d
	add e                                            ; $5c61: $83
	add h                                            ; $5c62: $84
	reti                                             ; $5c63: $d9


	rst $38                                          ; $5c64: $ff
	sub a                                            ; $5c65: $97
	ld c, a                                          ; $5c66: $4f
	ldh a, [rVBK]                                    ; $5c67: $f0 $4f
	ld [hl], c                                       ; $5c69: $71
	ld d, d                                          ; $5c6a: $52

jr_01d_5c6b:
	ld e, a                                          ; $5c6b: $5f
	ld d, d                                          ; $5c6c: $52
	sub d                                            ; $5c6d: $92
	ld h, a                                          ; $5c6e: $67
	add c                                            ; $5c6f: $81
	sbc l                                            ; $5c70: $9d
	ld [hl], $00                                     ; $5c71: $36 $00
	ld [hl], a                                       ; $5c73: $77
	ld a, l                                          ; $5c74: $7d
	ld a, a                                          ; $5c75: $7f
	db $fc                                           ; $5c76: $fc
	reti                                             ; $5c77: $d9


	rst $38                                          ; $5c78: $ff
	sub a                                            ; $5c79: $97
	dec b                                            ; $5c7a: $05
	dec d                                            ; $5c7b: $15
	ld [hl], b                                       ; $5c7c: $70
	inc h                                            ; $5c7d: $24
	ld h, $25                                        ; $5c7e: $26 $25
	ld b, h                                          ; $5c80: $44
	ld b, h                                          ; $5c81: $44
	ld h, a                                          ; $5c82: $67
	ldh [$df], a                                     ; $5c83: $e0 $df
	ld b, h                                          ; $5c85: $44
	sbc [hl]                                         ; $5c86: $9e
	jr c, jr_01d_5cdc                                ; $5c87: $38 $53

	ldh [$7b], a                                     ; $5c89: $e0 $7b
	adc [hl]                                         ; $5c8b: $8e
	sbc [hl]                                         ; $5c8c: $9e
	ld b, d                                          ; $5c8d: $42
	db $dd                                           ; $5c8e: $dd
	ld b, c                                          ; $5c8f: $41
	ld h, a                                          ; $5c90: $67
	pop af                                           ; $5c91: $f1

jr_01d_5c92:
	sbc h                                            ; $5c92: $9c
	ld b, b                                          ; $5c93: $40
	jr z, jr_01d_5ca6                                ; $5c94: $28 $10

	ld c, e                                          ; $5c96: $4b
	ldh [$9e], a                                     ; $5c97: $e0 $9e
	inc a                                            ; $5c99: $3c
	ld [hl], a                                       ; $5c9a: $77
	ld a, l                                          ; $5c9b: $7d
	ld h, a                                          ; $5c9c: $67
	ldh a, [$7f]                                     ; $5c9d: $f0 $7f
	ldh [$9d], a                                     ; $5c9f: $e0 $9d
	ld b, b                                          ; $5ca1: $40
	ld a, $57                                        ; $5ca2: $3e $57
	ldh [$9d], a                                     ; $5ca4: $e0 $9d

jr_01d_5ca6:
	cp $01                                           ; $5ca6: $fe $01
	db $db                                           ; $5ca8: $db
	ld b, c                                          ; $5ca9: $41
	sub c                                            ; $5caa: $91
	ld [bc], a                                       ; $5cab: $02
	cp $fc                                           ; $5cac: $fe $fc
	db $fc                                           ; $5cae: $fc
	ld hl, sp-$10                                    ; $5caf: $f8 $f0
	ret nz                                           ; $5cb1: $c0

	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	ld [bc], a                                       ; $5cb4: $02
	ld b, h                                          ; $5cb5: $44
	ld b, h                                          ; $5cb6: $44
	ld [$7b30], sp                                   ; $5cb7: $08 $30 $7b
	ld hl, sp-$71                                    ; $5cba: $f8 $8f
	db $fc                                           ; $5cbc: $fc
	ld a, h                                          ; $5cbd: $7c
	ld a, h                                          ; $5cbe: $7c
	inc a                                            ; $5cbf: $3c
	inc a                                            ; $5cc0: $3c
	inc e                                            ; $5cc1: $1c
	inc e                                            ; $5cc2: $1c
	inc c                                            ; $5cc3: $0c
	add h                                            ; $5cc4: $84
	ld b, h                                          ; $5cc5: $44
	ld b, h                                          ; $5cc6: $44
	inc h                                            ; $5cc7: $24
	inc h                                            ; $5cc8: $24
	inc d                                            ; $5cc9: $14
	inc d                                            ; $5cca: $14
	inc c                                            ; $5ccb: $0c
	pop af                                           ; $5ccc: $f1
	add hl, sp                                       ; $5ccd: $39
	add c                                            ; $5cce: $81
	rst $38                                          ; $5ccf: $ff
	sbc c                                            ; $5cd0: $99
	ld bc, $0703                                     ; $5cd1: $01 $03 $07
	rlca                                             ; $5cd4: $07
	rrca                                             ; $5cd5: $0f
	rrca                                             ; $5cd6: $0f
	ld a, e                                          ; $5cd7: $7b
	ld hl, sp-$66                                    ; $5cd8: $f8 $9a
	ld [bc], a                                       ; $5cda: $02
	inc b                                            ; $5cdb: $04

jr_01d_5cdc:
	inc b                                            ; $5cdc: $04
	ld [$d908], sp                                   ; $5cdd: $08 $08 $d9
	rra                                              ; $5ce0: $1f
	reti                                             ; $5ce1: $d9


	db $10                                           ; $5ce2: $10
	sbc l                                            ; $5ce3: $9d
	rra                                              ; $5ce4: $1f
	ld a, a                                          ; $5ce5: $7f
	db $db                                           ; $5ce6: $db
	rst $38                                          ; $5ce7: $ff
	sbc d                                            ; $5ce8: $9a
	rra                                              ; $5ce9: $1f
	ld h, b                                          ; $5cea: $60
	add b                                            ; $5ceb: $80
	jr nz, @+$23                                     ; $5cec: $20 $21

	sbc $20                                          ; $5cee: $de $20
	reti                                             ; $5cf0: $d9


	rst $38                                          ; $5cf1: $ff
	rst SubAFromDE                                          ; $5cf2: $df
	jr nz, jr_01d_5c92                               ; $5cf3: $20 $9d

	inc d                                            ; $5cf5: $14
	ld [$9efe], sp                                   ; $5cf6: $08 $fe $9e
	ld [de], a                                       ; $5cf9: $12
	ret c                                            ; $5cfa: $d8

	rst $38                                          ; $5cfb: $ff
	rst $38                                          ; $5cfc: $ff
	ld a, a                                          ; $5cfd: $7f
	ldh [$de], a                                     ; $5cfe: $e0 $de
	and b                                            ; $5d00: $a0
	reti                                             ; $5d01: $d9


	rst $38                                          ; $5d02: $ff
	sbc [hl]                                         ; $5d03: $9e
	and b                                            ; $5d04: $a0
	ld [hl], a                                       ; $5d05: $77
	ldh [$9c], a                                     ; $5d06: $e0 $9c
	ld a, a                                          ; $5d08: $7f
	ld [bc], a                                       ; $5d09: $02
	ld [bc], a                                       ; $5d0a: $02
	ld e, e                                          ; $5d0b: $5b
	ldh [rIE], a                                     ; $5d0c: $e0 $ff
	sbc $80                                          ; $5d0e: $de $80
	reti                                             ; $5d10: $d9


	rst $38                                          ; $5d11: $ff
	sbc [hl]                                         ; $5d12: $9e
	add b                                            ; $5d13: $80
	db $fd                                           ; $5d14: $fd
	sbc l                                            ; $5d15: $9d
	ldh a, [c]                                       ; $5d16: $f2
	inc bc                                           ; $5d17: $03
	ld c, a                                          ; $5d18: $4f
	ldh [$fe], a                                     ; $5d19: $e0 $fe
	ld c, a                                          ; $5d1b: $4f
	pop af                                           ; $5d1c: $f1
	sbc [hl]                                         ; $5d1d: $9e
	cp $63                                           ; $5d1e: $fe $63
	ldh a, [$33]                                     ; $5d20: $f0 $33
	ldh [$df], a                                     ; $5d22: $e0 $df
	ld a, [bc]                                       ; $5d24: $0a
	rrca                                             ; $5d25: $0f
	ldh [rIE], a                                     ; $5d26: $e0 $ff
	sbc [hl]                                         ; $5d28: $9e
	ld [$e00b], sp                                   ; $5d29: $08 $0b $e0
	sbc h                                            ; $5d2c: $9c
	ld b, b                                          ; $5d2d: $40
	ld hl, sp-$02                                    ; $5d2e: $f8 $fe
	db $db                                           ; $5d30: $db
	rst $38                                          ; $5d31: $ff
	sbc h                                            ; $5d32: $9c
	ld hl, sp+$06                                    ; $5d33: $f8 $06
	ld bc, $e037                                     ; $5d35: $01 $37 $e0
	ld [hl], a                                       ; $5d38: $77
	ld c, e                                          ; $5d39: $4b
	sbc d                                            ; $5d3a: $9a
	ret nz                                           ; $5d3b: $c0

	ldh [$e0], a                                     ; $5d3c: $e0 $e0
	ldh a, [$f0]                                     ; $5d3e: $f0 $f0
	ld a, e                                          ; $5d40: $7b
	ld hl, sp-$66                                    ; $5d41: $f8 $9a
	ld b, b                                          ; $5d43: $40
	jr nz, jr_01d_5d66                               ; $5d44: $20 $20

	db $10                                           ; $5d46: $10
	db $10                                           ; $5d47: $10
	reti                                             ; $5d48: $d9


	ld hl, sp-$27                                    ; $5d49: $f8 $d9
	ld [$1fdd], sp                                   ; $5d4b: $08 $dd $1f
	rst SubAFromDE                                          ; $5d4e: $df
	rrca                                             ; $5d4f: $0f
	rst SubAFromDE                                          ; $5d50: $df
	rlca                                             ; $5d51: $07
	db $dd                                           ; $5d52: $dd
	db $10                                           ; $5d53: $10
	rst SubAFromDE                                          ; $5d54: $df
	ld [$04df], sp                                   ; $5d55: $08 $df $04
	sbc [hl]                                         ; $5d58: $9e
	inc bc                                           ; $5d59: $03
	ld l, a                                          ; $5d5a: $6f
	cp c                                             ; $5d5b: $b9
	sbc l                                            ; $5d5c: $9d
	nop                                              ; $5d5d: $00
	ld [bc], a                                       ; $5d5e: $02
	ld l, e                                          ; $5d5f: $6b
	ld hl, sp-$27                                    ; $5d60: $f8 $d9
	rst $38                                          ; $5d62: $ff
	sbc d                                            ; $5d63: $9a
	dec a                                            ; $5d64: $3d
	db $10                                           ; $5d65: $10

jr_01d_5d66:
	db $10                                           ; $5d66: $10
	ld e, $31                                        ; $5d67: $1e $31
	sbc $51                                          ; $5d69: $de $51
	rst SubAFromDE                                          ; $5d6b: $df
	rst $38                                          ; $5d6c: $ff
	sbc [hl]                                         ; $5d6d: $9e
	ld a, a                                          ; $5d6e: $7f
	ld [hl], e                                       ; $5d6f: $73
	rst GetHLinHL                                          ; $5d70: $cf
	sub a                                            ; $5d71: $97
	ld h, $80                                        ; $5d72: $26 $80
	ld h, b                                          ; $5d74: $60
	db $10                                           ; $5d75: $10
	ld de, $0909                                     ; $5d76: $11 $09 $09
	dec b                                            ; $5d79: $05
	reti                                             ; $5d7a: $d9


	rst $38                                          ; $5d7b: $ff
	sub a                                            ; $5d7c: $97
	ld [bc], a                                       ; $5d7d: $02
	ccf                                              ; $5d7e: $3f
	ld [bc], a                                       ; $5d7f: $02
	dec b                                            ; $5d80: $05
	dec b                                            ; $5d81: $05
	ld [$1008], sp                                   ; $5d82: $08 $08 $10
	ld h, a                                          ; $5d85: $67
	add h                                            ; $5d86: $84
	sbc [hl]                                         ; $5d87: $9e
	ld h, b                                          ; $5d88: $60
	ld a, e                                          ; $5d89: $7b
	push bc                                          ; $5d8a: $c5
	ld d, a                                          ; $5d8b: $57
	ret nz                                           ; $5d8c: $c0

	sub a                                            ; $5d8d: $97
	dec b                                            ; $5d8e: $05
	ldh [rTAC], a                                    ; $5d8f: $e0 $07
	nop                                              ; $5d91: $00
	ld bc, $8080                                     ; $5d92: $01 $80 $80
	ld b, c                                          ; $5d95: $41
	ld h, a                                          ; $5d96: $67
	ldh [$9e], a                                     ; $5d97: $e0 $9e
	ld [hl], $4b                                     ; $5d99: $36 $4b
	ldh [$97], a                                     ; $5d9b: $e0 $97
	db $fc                                           ; $5d9d: $fc
	nop                                              ; $5d9e: $00
	db $fc                                           ; $5d9f: $fc
	inc b                                            ; $5da0: $04
	inc d                                            ; $5da1: $14
	and l                                            ; $5da2: $a5
	ld b, l                                          ; $5da3: $45
	and e                                            ; $5da4: $a3
	ld h, a                                          ; $5da5: $67
	ldh [$7b], a                                     ; $5da6: $e0 $7b
	add c                                            ; $5da8: $81
	ld d, e                                          ; $5da9: $53
	ldh [$9c], a                                     ; $5daa: $e0 $9c
	cp $08                                           ; $5dac: $fe $08
	db $10                                           ; $5dae: $10
	db $dd                                           ; $5daf: $dd
	jr nz, jr_01d_5e15                               ; $5db0: $20 $63

	and b                                            ; $5db2: $a0
	sbc [hl]                                         ; $5db3: $9e
	inc c                                            ; $5db4: $0c
	ld c, e                                          ; $5db5: $4b
	ldh [$98], a                                     ; $5db6: $e0 $98
	ld [$08fe], sp                                   ; $5db8: $08 $fe $08
	jr c, @+$4a                                      ; $5dbb: $38 $48

	ld c, b                                          ; $5dbd: $48
	jr c, jr_01d_5e32                                ; $5dbe: $38 $72

	ret nc                                           ; $5dc0: $d0

	db $fd                                           ; $5dc1: $fd
	sbc [hl]                                         ; $5dc2: $9e
	db $10                                           ; $5dc3: $10
	ld c, e                                          ; $5dc4: $4b
	ldh [$97], a                                     ; $5dc5: $e0 $97
	ld b, b                                          ; $5dc7: $40
	db $ec                                           ; $5dc8: $ec
	ld d, d                                          ; $5dc9: $52
	ld h, d                                          ; $5dca: $62
	jp nz, Jump_01d_4bc6                             ; $5dcb: $c2 $c6 $4b

	ld c, d                                          ; $5dce: $4a
	ld h, a                                          ; $5dcf: $67
	ldh [$9e], a                                     ; $5dd0: $e0 $9e
	ld c, h                                          ; $5dd2: $4c
	ld c, e                                          ; $5dd3: $4b
	ldh [$97], a                                     ; $5dd4: $e0 $97
	nop                                              ; $5dd6: $00
	jr nc, jr_01d_5de1                               ; $5dd7: $30 $08

	ld a, h                                          ; $5dd9: $7c
	ld [$2810], sp                                   ; $5dda: $08 $10 $28
	ld c, b                                          ; $5ddd: $48
	ld a, e                                          ; $5dde: $7b
	sub [hl]                                         ; $5ddf: $96
	sbc [hl]                                         ; $5de0: $9e

jr_01d_5de1:
	ld hl, sp-$03                                    ; $5de1: $f8 $fd
	sbc h                                            ; $5de3: $9c
	add [hl]                                         ; $5de4: $86
	ld bc, $7306                                     ; $5de5: $01 $06 $73
	ld hl, sp-$23                                    ; $5de8: $f8 $dd
	ld hl, sp-$21                                    ; $5dea: $f8 $df
	ldh a, [$df]                                     ; $5dec: $f0 $df
	ldh [$dd], a                                     ; $5dee: $e0 $dd
	ld [$10df], sp                                   ; $5df0: $08 $df $10
	rst SubAFromDE                                          ; $5df3: $df
	jr nz, @-$60                                     ; $5df4: $20 $9e

	ret nz                                           ; $5df6: $c0

	ld [hl], d                                       ; $5df7: $72
	rlca                                             ; $5df8: $07
	ld a, d                                          ; $5df9: $7a
	add a                                            ; $5dfa: $87
	ld l, e                                          ; $5dfb: $6b
	ld hl, sp-$63                                    ; $5dfc: $f8 $9d
	rlca                                             ; $5dfe: $07
	inc bc                                           ; $5dff: $03
	ei                                               ; $5e00: $fb
	sbc [hl]                                         ; $5e01: $9e
	dec b                                            ; $5e02: $05
	ld l, e                                          ; $5e03: $6b
	ld hl, sp-$0f                                    ; $5e04: $f8 $f1
	ld b, [hl]                                       ; $5e06: $46
	add c                                            ; $5e07: $81
	adc a                                            ; $5e08: $8f
	nop                                              ; $5e09: $00
	inc bc                                           ; $5e0a: $03
	rrca                                             ; $5e0b: $0f
	rra                                              ; $5e0c: $1f
	ccf                                              ; $5e0d: $3f
	ccf                                              ; $5e0e: $3f
	ld a, a                                          ; $5e0f: $7f
	ld a, a                                          ; $5e10: $7f
	nop                                              ; $5e11: $00
	inc bc                                           ; $5e12: $03
	inc c                                            ; $5e13: $0c
	db $10                                           ; $5e14: $10

jr_01d_5e15:
	jr nz, jr_01d_5e3e                               ; $5e15: $20 $27

jr_01d_5e17:
	ld b, c                                          ; $5e17: $41
	ld b, c                                          ; $5e18: $41
	reti                                             ; $5e19: $d9


	rst $38                                          ; $5e1a: $ff
	sub a                                            ; $5e1b: $97
	add a                                            ; $5e1c: $87
	add c                                            ; $5e1d: $81
	add e                                            ; $5e1e: $83
	add e                                            ; $5e1f: $83
	add l                                            ; $5e20: $85
	add l                                            ; $5e21: $85
	add c                                            ; $5e22: $81
	add c                                            ; $5e23: $81
	ret c                                            ; $5e24: $d8

	rst $38                                          ; $5e25: $ff
	cp $9e                                           ; $5e26: $fe $9e
	ret nz                                           ; $5e28: $c0

	sbc $08                                          ; $5e29: $de $08
	reti                                             ; $5e2b: $d9


	rst $38                                          ; $5e2c: $ff
	sub a                                            ; $5e2d: $97
	add sp, $10                                      ; $5e2e: $e8 $10
	sub b                                            ; $5e30: $90
	ld d, d                                          ; $5e31: $52

jr_01d_5e32:
	ld [hl+], a                                      ; $5e32: $22
	ld hl, $017f                                     ; $5e33: $21 $7f $01
	ld d, a                                          ; $5e36: $57
	ldh [$9b], a                                     ; $5e37: $e0 $9b
	nop                                              ; $5e39: $00
	dec b                                            ; $5e3a: $05
	dec h                                            ; $5e3b: $25
	jr nz, jr_01d_5e17                               ; $5e3c: $20 $d9

jr_01d_5e3e:
	rst $38                                          ; $5e3e: $ff
	sub a                                            ; $5e3f: $97
	ld a, [hl]                                       ; $5e40: $7e
	jr nz, jr_01d_5e71                               ; $5e41: $20 $2e

	ld hl, $4040                                     ; $5e43: $21 $40 $40
	ld d, b                                          ; $5e46: $50
	ld c, a                                          ; $5e47: $4f
	ld d, e                                          ; $5e48: $53
	ldh [$9c], a                                     ; $5e49: $e0 $9c
	nop                                              ; $5e4b: $00
	ld b, d                                          ; $5e4c: $42
	ld b, d                                          ; $5e4d: $42
	reti                                             ; $5e4e: $d9


	rst $38                                          ; $5e4f: $ff
	sbc [hl]                                         ; $5e50: $9e
	ld e, a                                          ; $5e51: $5f
	db $db                                           ; $5e52: $db
	ld b, d                                          ; $5e53: $42
	sbc [hl]                                         ; $5e54: $9e
	inc h                                            ; $5e55: $24
	ld c, a                                          ; $5e56: $4f
	ldh [$df], a                                     ; $5e57: $e0 $df
	db $10                                           ; $5e59: $10
	reti                                             ; $5e5a: $d9


	rst $38                                          ; $5e5b: $ff
	sub a                                            ; $5e5c: $97
	ld a, $10                                        ; $5e5d: $3e $10
	dec sp                                           ; $5e5f: $3b
	ld c, h                                          ; $5e60: $4c
	inc d                                            ; $5e61: $14
	jr nz, @+$22                                     ; $5e62: $20 $20

	rra                                              ; $5e64: $1f
	ld c, a                                          ; $5e65: $4f
	ldh [$df], a                                     ; $5e66: $e0 $df
	ld bc, $ffd9                                     ; $5e68: $01 $d9 $ff
	sub a                                            ; $5e6b: $97
	rrca                                             ; $5e6c: $0f
	ld bc, $0907                                     ; $5e6d: $01 $07 $09
	add hl, bc                                       ; $5e70: $09

jr_01d_5e71:
	rlca                                             ; $5e71: $07
	ld b, c                                          ; $5e72: $41
	ld [hl+], a                                      ; $5e73: $22
	ld d, e                                          ; $5e74: $53
	ldh [$df], a                                     ; $5e75: $e0 $df
	and b                                            ; $5e77: $a0
	sbc [hl]                                         ; $5e78: $9e
	nop                                              ; $5e79: $00
	reti                                             ; $5e7a: $d9


	rst $38                                          ; $5e7b: $ff
	sub a                                            ; $5e7c: $97
	ldh [rP1], a                                     ; $5e7d: $e0 $00
	inc c                                            ; $5e7f: $0c
	ld [de], a                                       ; $5e80: $12
	ld h, c                                          ; $5e81: $61
	ld bc, $0c02                                     ; $5e82: $01 $02 $0c
	ld c, a                                          ; $5e85: $4f
	ret nz                                           ; $5e86: $c0

	rst SubAFromDE                                          ; $5e87: $df
	ld b, b                                          ; $5e88: $40
	reti                                             ; $5e89: $d9


	rst $38                                          ; $5e8a: $ff
	sbc e                                            ; $5e8b: $9b
	jr nz, jr_01d_5eb4                               ; $5e8c: $20 $26

	jr jr_01d_5eb0                                   ; $5e8e: $18 $20

	sbc $40                                          ; $5e90: $de $40
	adc [hl]                                         ; $5e92: $8e
	ld a, $00                                        ; $5e93: $3e $00
	ret nz                                           ; $5e95: $c0

	ldh a, [$f8]                                     ; $5e96: $f0 $f8
	db $fc                                           ; $5e98: $fc
	db $fc                                           ; $5e99: $fc
	cp $fe                                           ; $5e9a: $fe $fe
	nop                                              ; $5e9c: $00
	ret nz                                           ; $5e9d: $c0

	jr nc, @+$0a                                     ; $5e9e: $30 $08

	inc b                                            ; $5ea0: $04
	inc b                                            ; $5ea1: $04
	ld [bc], a                                       ; $5ea2: $02
	ld [bc], a                                       ; $5ea3: $02
	reti                                             ; $5ea4: $d9


	rst $38                                          ; $5ea5: $ff
	reti                                             ; $5ea6: $d9


	ld bc, $ffd9                                     ; $5ea7: $01 $d9 $ff
	sbc l                                            ; $5eaa: $9d
	add b                                            ; $5eab: $80
	add a                                            ; $5eac: $87
	sbc $81                                          ; $5ead: $de $81
	sub a                                            ; $5eaf: $97

jr_01d_5eb0:
	add a                                            ; $5eb0: $87
	adc c                                            ; $5eb1: $89
	adc c                                            ; $5eb2: $89
	ld a, a                                          ; $5eb3: $7f

jr_01d_5eb4:
	ld a, a                                          ; $5eb4: $7f
	ccf                                              ; $5eb5: $3f
	ccf                                              ; $5eb6: $3f
	rra                                              ; $5eb7: $1f
	sbc $0f                                          ; $5eb8: $de $0f
	sbc d                                            ; $5eba: $9a
	ld c, d                                          ; $5ebb: $4a
	ld b, h                                          ; $5ebc: $44
	jr nz, jr_01d_5edf                               ; $5ebd: $20 $20

	db $10                                           ; $5ebf: $10
	ld e, d                                          ; $5ec0: $5a
	ldh a, [rIE]                                     ; $5ec1: $f0 $ff
	sbc d                                            ; $5ec3: $9a
	inc bc                                           ; $5ec4: $03
	inc b                                            ; $5ec5: $04
	ld c, b                                          ; $5ec6: $48
	ret nz                                           ; $5ec7: $c0

	ld h, b                                          ; $5ec8: $60
	ld h, e                                          ; $5ec9: $63
	and b                                            ; $5eca: $a0
	rst SubAFromDE                                          ; $5ecb: $df
	ld b, b                                          ; $5ecc: $40
	sbc [hl]                                         ; $5ecd: $9e
	add c                                            ; $5ece: $81
	db $fd                                           ; $5ecf: $fd
	ld e, a                                          ; $5ed0: $5f
	add c                                            ; $5ed1: $81
	sbc b                                            ; $5ed2: $98
	inc b                                            ; $5ed3: $04
	add h                                            ; $5ed4: $84
	ld b, a                                          ; $5ed5: $47
	inc h                                            ; $5ed6: $24
	ld l, $2b                                        ; $5ed7: $2e $2b
	add hl, hl                                       ; $5ed9: $29
	reti                                             ; $5eda: $d9


	rst $38                                          ; $5edb: $ff
	sbc h                                            ; $5edc: $9c
	dec hl                                           ; $5edd: $2b
	ld c, d                                          ; $5ede: $4a

jr_01d_5edf:
	add h                                            ; $5edf: $84
	ld c, a                                          ; $5ee0: $4f
	ldh [$99], a                                     ; $5ee1: $e0 $99
	ld b, b                                          ; $5ee3: $40
	ld c, a                                          ; $5ee4: $4f
	ret nz                                           ; $5ee5: $c0

	pop bc                                           ; $5ee6: $c1
	and d                                            ; $5ee7: $a2
	and d                                            ; $5ee8: $a2
	ld h, e                                          ; $5ee9: $63
	jr nc, jr_01d_5f6a                               ; $5eea: $30 $7e

	and h                                            ; $5eec: $a4
	sbc [hl]                                         ; $5eed: $9e
	ld b, b                                          ; $5eee: $40
	ld c, a                                          ; $5eef: $4f
	ldh [$9c], a                                     ; $5ef0: $e0 $9c
	nop                                              ; $5ef2: $00
	add sp, -$78                                     ; $5ef3: $e8 $88
	db $dd                                           ; $5ef5: $dd
	ld [$ffd9], sp                                   ; $5ef6: $08 $d9 $ff
	sbc h                                            ; $5ef9: $9c
	ld [$c205], sp                                   ; $5efa: $08 $05 $c2
	ld c, e                                          ; $5efd: $4b

Call_01d_5efe:
	ldh [$9c], a                                     ; $5efe: $e0 $9c
	rrca                                             ; $5f00: $0f
	ld b, b                                          ; $5f01: $40
	ld hl, $22de                                     ; $5f02: $21 $de $22
	reti                                             ; $5f05: $d9


	rst $38                                          ; $5f06: $ff
	sbc l                                            ; $5f07: $9d
	ld [bc], a                                       ; $5f08: $02
	ld bc, $5bfc                                     ; $5f09: $01 $fc $5b
	add b                                            ; $5f0c: $80
	sbc d                                            ; $5f0d: $9a
	db $e4                                           ; $5f0e: $e4

jr_01d_5f0f:
	adc [hl]                                         ; $5f0f: $8e
	dec b                                            ; $5f10: $05
	ld b, $0c                                        ; $5f11: $06 $0c
	ld h, d                                          ; $5f13: $62
	ldh a, [$df]                                     ; $5f14: $f0 $df
	inc b                                            ; $5f16: $04
	sbc [hl]                                         ; $5f17: $9e
	call nz, $c04b                                   ; $5f18: $c4 $4b $c0
	ld a, [hl]                                       ; $5f1b: $7e
	cp $9b                                           ; $5f1c: $fe $9b
	ld h, $2f                                        ; $5f1e: $26 $2f
	cpl                                              ; $5f20: $2f
	ld l, a                                          ; $5f21: $6f
	reti                                             ; $5f22: $d9


	rst $38                                          ; $5f23: $ff
	sbc h                                            ; $5f24: $9c
	or a                                             ; $5f25: $b7
	and e                                            ; $5f26: $a3
	pop bc                                           ; $5f27: $c1
	ld d, e                                          ; $5f28: $53
	ldh [$dd], a                                     ; $5f29: $e0 $dd
	ld bc, $619e                                     ; $5f2b: $01 $9e $61
	sbc $f1                                          ; $5f2e: $de $f1
	rst SubAFromDE                                          ; $5f30: $df
	cp $df                                           ; $5f31: $fe $df
	db $fc                                           ; $5f33: $fc
	sub e                                            ; $5f34: $93
	ld hl, sp-$10                                    ; $5f35: $f8 $f0
	ret nz                                           ; $5f37: $c0

	nop                                              ; $5f38: $00
	ldh [c], a                                       ; $5f39: $e2
	jp nz, $0484                                     ; $5f3a: $c2 $84 $04

	ld [$c030], sp                                   ; $5f3d: $08 $30 $c0
	nop                                              ; $5f40: $00
	db $dd                                           ; $5f41: $dd
	rlca                                             ; $5f42: $07
	sbc [hl]                                         ; $5f43: $9e
	inc bc                                           ; $5f44: $03
	ld a, e                                          ; $5f45: $7b
	sub h                                            ; $5f46: $94
	db $dd                                           ; $5f47: $dd
	dec b                                            ; $5f48: $05
	ld [hl], a                                       ; $5f49: $77
	ld hl, sp-$0f                                    ; $5f4a: $f8 $f1
	rst $38                                          ; $5f4c: $ff
	add b                                            ; $5f4d: $80
	adc a                                            ; $5f4e: $8f
	nop                                              ; $5f4f: $00
	ld bc, $0f07                                     ; $5f50: $01 $07 $0f
	rra                                              ; $5f53: $1f
	ccf                                              ; $5f54: $3f
	ccf                                              ; $5f55: $3f
	ld a, a                                          ; $5f56: $7f
	nop                                              ; $5f57: $00
	ld bc, $0806                                     ; $5f58: $01 $06 $08
	db $10                                           ; $5f5b: $10
	jr nz, @+$22                                     ; $5f5c: $20 $20

	ld b, b                                          ; $5f5e: $40
	reti                                             ; $5f5f: $d9


	ld a, a                                          ; $5f60: $7f
	call c, $de40                                    ; $5f61: $dc $40 $de
	ld b, c                                          ; $5f64: $41
	sbc [hl]                                         ; $5f65: $9e
	ld a, a                                          ; $5f66: $7f
	jp c, $9dff                                      ; $5f67: $da $ff $9d

jr_01d_5f6a:
	ld a, a                                          ; $5f6a: $7f
	add b                                            ; $5f6b: $80
	db $fc                                           ; $5f6c: $fc
	sbc [hl]                                         ; $5f6d: $9e
	ld h, b                                          ; $5f6e: $60
	reti                                             ; $5f6f: $d9


	rst $38                                          ; $5f70: $ff
	sbc d                                            ; $5f71: $9a
	stop                                             ; $5f72: $10 $00
	ld b, b                                          ; $5f74: $40
	jr nz, jr_01d_5f0f                               ; $5f75: $20 $98

	sbc $15                                          ; $5f77: $de $15
	ret c                                            ; $5f79: $d8

	rst $38                                          ; $5f7a: $ff
	ei                                               ; $5f7b: $fb
	inc bc                                           ; $5f7c: $03
	ldh [rHDMA3], a                                  ; $5f7d: $e0 $53
	ldh [$9c], a                                     ; $5f7f: $e0 $9c
	inc d                                            ; $5f81: $14
	dec d                                            ; $5f82: $15
	inc d                                            ; $5f83: $14
	ld d, e                                          ; $5f84: $53

jr_01d_5f85:
	ldh [$9c], a                                     ; $5f85: $e0 $9c
	ld [bc], a                                       ; $5f87: $02
	inc bc                                           ; $5f88: $03
	ld [bc], a                                       ; $5f89: $02
	reti                                             ; $5f8a: $d9


	rst $38                                          ; $5f8b: $ff
	sub a                                            ; $5f8c: $97
	ld b, $09                                        ; $5f8d: $06 $09
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	ld bc, $1d03                                     ; $5f91: $01 $03 $1d
	add c                                            ; $5f94: $81
	ld c, a                                          ; $5f95: $4f
	ret nz                                           ; $5f96: $c0

	sbc l                                            ; $5f97: $9d
	db $e3                                           ; $5f98: $e3
	ld [hl+], a                                      ; $5f99: $22
	reti                                             ; $5f9a: $d9


	rst $38                                          ; $5f9b: $ff
	sub a                                            ; $5f9c: $97
	ld hl, $c140                                     ; $5f9d: $21 $40 $c1
	add b                                            ; $5fa0: $80
	ld sp, hl                                        ; $5fa1: $f9
	ld [$080b], sp                                   ; $5fa2: $08 $0b $08
	ld d, e                                          ; $5fa5: $53
	ldh [$9c], a                                     ; $5fa6: $e0 $9c
	db $10                                           ; $5fa8: $10
	rst $38                                          ; $5fa9: $ff
	ld b, b                                          ; $5faa: $40
	ret c                                            ; $5fab: $d8

	rst $38                                          ; $5fac: $ff
	sbc b                                            ; $5fad: $98
	add d                                            ; $5fae: $82
	call z, $d738                                    ; $5faf: $cc $38 $d7
	db $10                                           ; $5fb2: $10
	rst $38                                          ; $5fb3: $ff
	ld d, h                                          ; $5fb4: $54
	ld c, a                                          ; $5fb5: $4f
	ret nz                                           ; $5fb6: $c0

	sbc l                                            ; $5fb7: $9d
	add d                                            ; $5fb8: $82
	sub d                                            ; $5fb9: $92
	ld h, e                                          ; $5fba: $63
	add b                                            ; $5fbb: $80
	sub a                                            ; $5fbc: $97
	ccf                                              ; $5fbd: $3f
	db $10                                           ; $5fbe: $10
	rla                                              ; $5fbf: $17
	db $10                                           ; $5fc0: $10
	jr nz, @-$5e                                     ; $5fc1: $20 $a0

jr_01d_5fc3:
	jr z, jr_01d_5fc3                                ; $5fc3: $28 $fe

	jp c, $9dff                                      ; $5fc5: $da $ff $9d

	cp $01                                           ; $5fc8: $fe $01
	db $fd                                           ; $5fca: $fd
	sbc l                                            ; $5fcb: $9d
	add b                                            ; $5fcc: $80
	sub b                                            ; $5fcd: $90
	ld h, e                                          ; $5fce: $63
	ldh [hDisp0_WY], a                                     ; $5fcf: $e0 $88
	dec sp                                           ; $5fd1: $3b
	inc d                                            ; $5fd2: $14
	jr jr_01d_5f85                                   ; $5fd3: $18 $b0

	jr nc, jr_01d_5fe7                               ; $5fd5: $30 $10

	stop                                             ; $5fd7: $10 $00
	add b                                            ; $5fd9: $80
	ldh [$f0], a                                     ; $5fda: $e0 $f0
	ld hl, sp-$04                                    ; $5fdc: $f8 $fc
	db $fc                                           ; $5fde: $fc
	cp $00                                           ; $5fdf: $fe $00
	add b                                            ; $5fe1: $80
	ld h, b                                          ; $5fe2: $60
	db $10                                           ; $5fe3: $10
	ld [$0404], sp                                   ; $5fe4: $08 $04 $04

jr_01d_5fe7:
	ld [bc], a                                       ; $5fe7: $02
	reti                                             ; $5fe8: $d9


	cp $df                                           ; $5fe9: $fe $df
	ld [bc], a                                       ; $5feb: $02
	db $db                                           ; $5fec: $db
	add d                                            ; $5fed: $82
	rst SubAFromDE                                          ; $5fee: $df
	ccf                                              ; $5fef: $3f
	sbc h                                            ; $5ff0: $9c
	rra                                              ; $5ff1: $1f
	rrca                                             ; $5ff2: $0f

Jump_01d_5ff3:
	rlca                                             ; $5ff3: $07
	ld a, e                                          ; $5ff4: $7b
	call nz, $20df                                   ; $5ff5: $c4 $df $20
	ld a, a                                          ; $5ff8: $7f
	pop hl                                           ; $5ff9: $e1
	sbc [hl]                                         ; $5ffa: $9e
	ld b, $73                                        ; $5ffb: $06 $73
	cp h                                             ; $5ffd: $bc
	di                                               ; $5ffe: $f3
	ld l, d                                          ; $5fff: $6a
	jp nz, $3e9d                                     ; $6000: $c2 $9d $3e

	ld h, b                                          ; $6003: $60
	ld [hl], e                                       ; $6004: $73
	and c                                            ; $6005: $a1
	adc [hl]                                         ; $6006: $8e
	ld b, c                                          ; $6007: $41
	ld [hl+], a                                      ; $6008: $22
	ld a, $3e                                        ; $6009: $3e $3e
	ld e, $1e                                        ; $600b: $1e $1e
	ld c, $0e                                        ; $600d: $0e $0e
	ld b, $02                                        ; $600f: $06 $02
	ld [hl+], a                                      ; $6011: $22
	ld [hl+], a                                      ; $6012: $22
	ld [de], a                                       ; $6013: $12
	ld [de], a                                       ; $6014: $12
	ld a, [bc]                                       ; $6015: $0a
	ld a, [bc]                                       ; $6016: $0a
	ld b, $67                                        ; $6017: $06 $67
	db $10                                           ; $6019: $10
	ld a, [hl]                                       ; $601a: $7e
	rst SubAFromBC                                          ; $601b: $e7
	ld l, a                                          ; $601c: $6f
	jp nc, $c02b                                     ; $601d: $d2 $2b $c0

	inc bc                                           ; $6020: $03
	ldh [$7e], a                                     ; $6021: $e0 $7e
	call nc, $e00b                                   ; $6023: $d4 $0b $e0
	sbc [hl]                                         ; $6026: $9e
	ld sp, hl                                        ; $6027: $f9
	dec bc                                           ; $6028: $0b
	ldh [$9e], a                                     ; $6029: $e0 $9e
	sub e                                            ; $602b: $93
	dec bc                                           ; $602c: $0b
	ldh [$9e], a                                     ; $602d: $e0 $9e
	daa                                              ; $602f: $27
	inc de                                           ; $6030: $13
	ldh [$7e], a                                     ; $6031: $e0 $7e
	pop hl                                           ; $6033: $e1
	ld [hl], e                                       ; $6034: $73
	ret nz                                           ; $6035: $c0

	sbc l                                            ; $6036: $9d
	ld bc, $f0fe                                     ; $6037: $01 $fe $f0
	rst SubAFromDE                                          ; $603a: $df
	db $fc                                           ; $603b: $fc
	sbc h                                            ; $603c: $9c
	ld hl, sp-$10                                    ; $603d: $f8 $f0
	ldh [$79], a                                     ; $603f: $e0 $79
	call nz, $04df                                   ; $6041: $c4 $df $04
	ld a, l                                          ; $6044: $7d
	and c                                            ; $6045: $a1
	sbc [hl]                                         ; $6046: $9e
	ld h, b                                          ; $6047: $60
	ld l, l                                          ; $6048: $6d
	cp h                                             ; $6049: $bc
	db $f4                                           ; $604a: $f4
	ld e, $81                                        ; $604b: $1e $81
	adc a                                            ; $604d: $8f
	nop                                              ; $604e: $00
	ld bc, $0f07                                     ; $604f: $01 $07 $0f
	rra                                              ; $6052: $1f
	rra                                              ; $6053: $1f
	ccf                                              ; $6054: $3f
	ccf                                              ; $6055: $3f
	nop                                              ; $6056: $00
	ld bc, $0806                                     ; $6057: $01 $06 $08
	db $10                                           ; $605a: $10
	db $10                                           ; $605b: $10
	jr nz, jr_01d_607e                               ; $605c: $20 $20

	reti                                             ; $605e: $d9


	ld a, a                                          ; $605f: $7f
	rst SubAFromDE                                          ; $6060: $df
	ld b, b                                          ; $6061: $40
	sbc [hl]                                         ; $6062: $9e
	ld c, a                                          ; $6063: $4f
	sbc $40                                          ; $6064: $de $40
	sbc h                                            ; $6066: $9c
	ld b, c                                          ; $6067: $41
	ld b, d                                          ; $6068: $42
	ld a, a                                          ; $6069: $7f
	jp c, $9dff                                      ; $606a: $da $ff $9d

	ld a, a                                          ; $606d: $7f
	add b                                            ; $606e: $80
	db $fc                                           ; $606f: $fc
	sbc [hl]                                         ; $6070: $9e
	ld b, b                                          ; $6071: $40
	reti                                             ; $6072: $d9


	rst $38                                          ; $6073: $ff
	rst SubAFromDE                                          ; $6074: $df
	ld b, b                                          ; $6075: $40
	sbc c                                            ; $6076: $99
	cp $40                                           ; $6077: $fe $40
	ldh [$e0], a                                     ; $6079: $e0 $e0
	ld d, b                                          ; $607b: $50
	ld c, b                                          ; $607c: $48
	ret c                                            ; $607d: $d8

jr_01d_607e:
	rst $38                                          ; $607e: $ff
	ei                                               ; $607f: $fb
	sbc [hl]                                         ; $6080: $9e
	adc b                                            ; $6081: $88
	reti                                             ; $6082: $d9


	rst $38                                          ; $6083: $ff
	sbc h                                            ; $6084: $9c
	ld c, b                                          ; $6085: $48
	ld c, c                                          ; $6086: $49
	ld [$ed7b], sp                                   ; $6087: $08 $7b $ed
	ld a, a                                          ; $608a: $7f
	db $fd                                           ; $608b: $fd
	ld c, e                                          ; $608c: $4b
	ldh [$9e], a                                     ; $608d: $e0 $9e
	add b                                            ; $608f: $80
	reti                                             ; $6090: $d9


	rst $38                                          ; $6091: $ff
	ld a, a                                          ; $6092: $7f
	or c                                             ; $6093: $b1
	sbc l                                            ; $6094: $9d
	ld c, $95                                        ; $6095: $0e $95
	sbc $a4                                          ; $6097: $de $a4
	sbc [hl]                                         ; $6099: $9e
	xor b                                            ; $609a: $a8
	ld c, e                                          ; $609b: $4b
	ldh [$9e], a                                     ; $609c: $e0 $9e
	ld b, $d9                                        ; $609e: $06 $d9
	rst $38                                          ; $60a0: $ff
	sub a                                            ; $60a1: $97
	jr c, @+$0a                                      ; $60a2: $38 $08

	ld [$883f], sp                                   ; $60a4: $08 $3f $88
	sbc h                                            ; $60a7: $9c
	sbc d                                            ; $60a8: $9a
	xor c                                            ; $60a9: $a9
	ld c, e                                          ; $60aa: $4b
	ldh [$63], a                                     ; $60ab: $e0 $63
	or b                                             ; $60ad: $b0
	ld [hl], a                                       ; $60ae: $77
	ld h, e                                          ; $60af: $63
	sbc e                                            ; $60b0: $9b
	add b                                            ; $60b1: $80
	add c                                            ; $60b2: $81
	sub d                                            ; $60b3: $92
	db $10                                           ; $60b4: $10
	daa                                              ; $60b5: $27
	ldh [$7f], a                                     ; $60b6: $e0 $7f
	sub [hl]                                         ; $60b8: $96
	sbc c                                            ; $60b9: $99
	add b                                            ; $60ba: $80
	ldh a, [$80]                                     ; $60bb: $f0 $80
	ret c                                            ; $60bd: $d8

	ld h, b                                          ; $60be: $60
	and b                                            ; $60bf: $a0
	inc hl                                           ; $60c0: $23
	ldh [$7b], a                                     ; $60c1: $e0 $7b
	sbc a                                            ; $60c3: $9f
	sbc d                                            ; $60c4: $9a
	ld a, [bc]                                       ; $60c5: $0a
	ld a, $4b                                        ; $60c6: $3e $4b
	ld c, d                                          ; $60c8: $4a
	cp $da                                           ; $60c9: $fe $da
	rst $38                                          ; $60cb: $ff
	sbc l                                            ; $60cc: $9d
	cp $01                                           ; $60cd: $fe $01
	ld c, e                                          ; $60cf: $4b
	ldh [hDisp0_WY], a                                     ; $60d0: $e0 $88
	nop                                              ; $60d2: $00
	cp $08                                           ; $60d3: $fe $08
	db $10                                           ; $60d5: $10
	jr nz, jr_01d_60f9                               ; $60d6: $20 $21

	jr nz, jr_01d_60da                               ; $60d8: $20 $00

jr_01d_60da:
	add b                                            ; $60da: $80
	ldh [$f0], a                                     ; $60db: $e0 $f0
	ld hl, sp-$08                                    ; $60dd: $f8 $f8
	db $fc                                           ; $60df: $fc
	db $fc                                           ; $60e0: $fc
	nop                                              ; $60e1: $00
	add b                                            ; $60e2: $80
	ld h, b                                          ; $60e3: $60
	db $10                                           ; $60e4: $10
	ld [$0408], sp                                   ; $60e5: $08 $08 $04
	inc b                                            ; $60e8: $04
	reti                                             ; $60e9: $d9


	cp $db                                           ; $60ea: $fe $db
	ld [bc], a                                       ; $60ec: $02
	adc l                                            ; $60ed: $8d
	ld d, d                                          ; $60ee: $52
	ld [bc], a                                       ; $60ef: $02
	ld a, a                                          ; $60f0: $7f
	ld a, a                                          ; $60f1: $7f
	ccf                                              ; $60f2: $3f
	ccf                                              ; $60f3: $3f
	rra                                              ; $60f4: $1f
	rra                                              ; $60f5: $1f
	rrca                                             ; $60f6: $0f
	rlca                                             ; $60f7: $07
	ld c, l                                          ; $60f8: $4d

jr_01d_60f9:
	ld b, b                                          ; $60f9: $40
	jr nz, jr_01d_611c                               ; $60fa: $20 $20

	db $10                                           ; $60fc: $10
	db $10                                           ; $60fd: $10
	ld [$6b06], sp                                   ; $60fe: $08 $06 $6b
	cp c                                             ; $6101: $b9
	ld a, [hl]                                       ; $6102: $7e
	or c                                             ; $6103: $b1
	ld c, e                                          ; $6104: $4b
	sub b                                            ; $6105: $90
	sbc h                                            ; $6106: $9c
	or $40                                           ; $6107: $f6 $40
	ld b, b                                          ; $6109: $40
	ld l, a                                          ; $610a: $6f
	ldh a, [hDisp1_SCY]                                     ; $610b: $f0 $90
	ld a, a                                          ; $610d: $7f
	ld a, [hl]                                       ; $610e: $7e
	ld a, $3e                                        ; $610f: $3e $3e
	ld e, $1e                                        ; $6111: $1e $1e
	ld c, $80                                        ; $6113: $0e $80
	ld b, c                                          ; $6115: $41
	ld b, d                                          ; $6116: $42
	ld [hl+], a                                      ; $6117: $22
	ld [hl+], a                                      ; $6118: $22
	ld [de], a                                       ; $6119: $12
	ld [de], a                                       ; $611a: $12
	ld a, [bc]                                       ; $611b: $0a

jr_01d_611c:
	ld e, a                                          ; $611c: $5f
	sub b                                            ; $611d: $90
	ld l, a                                          ; $611e: $6f
	ld e, [hl]                                       ; $611f: $5e
	ld e, a                                          ; $6120: $5f
	ld d, a                                          ; $6121: $57
	ld c, a                                          ; $6122: $4f
	ret nz                                           ; $6123: $c0

	sbc h                                            ; $6124: $9c
	xor b                                            ; $6125: $a8
	or b                                             ; $6126: $b0
	sub e                                            ; $6127: $93
	inc de                                           ; $6128: $13
	ldh [$9c], a                                     ; $6129: $e0 $9c
	xor c                                            ; $612b: $a9
	adc e                                            ; $612c: $8b
	ld [$e013], sp                                   ; $612d: $08 $13 $e0
	sbc l                                            ; $6130: $9d
	add hl, bc                                       ; $6131: $09
	ld sp, hl                                        ; $6132: $f9
	rrca                                             ; $6133: $0f
	ldh [$9c], a                                     ; $6134: $e0 $9c
	nop                                              ; $6136: $00
	ld [bc], a                                       ; $6137: $02
	ld sp, hl                                        ; $6138: $f9
	inc de                                           ; $6139: $13
	ldh [$9c], a                                     ; $613a: $e0 $9c
	ld d, d                                          ; $613c: $52
	ld [hl+], a                                      ; $613d: $22
	inc b                                            ; $613e: $04
	inc de                                           ; $613f: $13
	ldh [$7f], a                                     ; $6140: $e0 $7f
	inc bc                                           ; $6142: $03
	sbc [hl]                                         ; $6143: $9e
	inc c                                            ; $6144: $0c
	ld l, a                                          ; $6145: $6f
	ldh a, [$9e]                                     ; $6146: $f0 $9e
	cp $6b                                           ; $6148: $fe $6b
	nop                                              ; $614a: $00
	ld l, e                                          ; $614b: $6b
	ld hl, sp-$21                                    ; $614c: $f8 $df
	cp $df                                           ; $614e: $fe $df
	db $fc                                           ; $6150: $fc
	rst SubAFromDE                                          ; $6151: $df
	ld hl, sp-$6b                                    ; $6152: $f8 $95
	ldh a, [$e0]                                     ; $6154: $f0 $e0
	ld [bc], a                                       ; $6156: $02
	ld [bc], a                                       ; $6157: $02
	inc b                                            ; $6158: $04
	inc b                                            ; $6159: $04
	ld [$1008], sp                                   ; $615a: $08 $08 $10
	ld h, b                                          ; $615d: $60
	ld l, l                                          ; $615e: $6d
	cp c                                             ; $615f: $b9
	ld a, c                                          ; $6160: $79
	rst FarCall                                          ; $6161: $f7
	ld a, [$0e9d]                                    ; $6162: $fa $9d $0e
	ld [bc], a                                       ; $6165: $02
	ld c, a                                          ; $6166: $4f
	ld hl, sp-$0f                                    ; $6167: $f8 $f1
	ldh [c], a                                       ; $6169: $e2
	add b                                            ; $616a: $80
	adc a                                            ; $616b: $8f
	nop                                              ; $616c: $00
	inc bc                                           ; $616d: $03
	rrca                                             ; $616e: $0f
	rra                                              ; $616f: $1f
	ccf                                              ; $6170: $3f
	ccf                                              ; $6171: $3f
	ld a, a                                          ; $6172: $7f
	ld a, a                                          ; $6173: $7f
	nop                                              ; $6174: $00
	inc bc                                           ; $6175: $03
	inc c                                            ; $6176: $0c
	db $10                                           ; $6177: $10
	jr nz, @+$22                                     ; $6178: $20 $20

	ld b, b                                          ; $617a: $40
	ld b, e                                          ; $617b: $43
	reti                                             ; $617c: $d9


	rst $38                                          ; $617d: $ff
	rst SubAFromDE                                          ; $617e: $df
	add b                                            ; $617f: $80
	sbc c                                            ; $6180: $99
	add e                                            ; $6181: $83
	add b                                            ; $6182: $80
	add c                                            ; $6183: $81
	add c                                            ; $6184: $81
	add d                                            ; $6185: $82
	add d                                            ; $6186: $82
	ret c                                            ; $6187: $d8

	rst $38                                          ; $6188: $ff
	db $fc                                           ; $6189: $fc
	sbc l                                            ; $618a: $9d
	ld h, b                                          ; $618b: $60
	add h                                            ; $618c: $84
	reti                                             ; $618d: $d9


	rst $38                                          ; $618e: $ff
	rst SubAFromDE                                          ; $618f: $df
	add h                                            ; $6190: $84
	sbc c                                            ; $6191: $99
	db $f4                                           ; $6192: $f4
	adc b                                            ; $6193: $88
	ret z                                            ; $6194: $c8

	xor c                                            ; $6195: $a9
	sub c                                            ; $6196: $91
	sub b                                            ; $6197: $90
	ld c, a                                          ; $6198: $4f
	ldh [rIE], a                                     ; $6199: $e0 $ff
	reti                                             ; $619b: $d9


	rst $38                                          ; $619c: $ff
	sbc l                                            ; $619d: $9d
	ld bc, $dc03                                     ; $619e: $01 $03 $dc
	ld bc, $819e                                     ; $61a1: $01 $9e $81
	ld c, a                                          ; $61a4: $4f
	ldh [$9d], a                                     ; $61a5: $e0 $9d
	ld b, b                                          ; $61a7: $40
	db $fc                                           ; $61a8: $fc
	reti                                             ; $61a9: $d9


	rst $38                                          ; $61aa: $ff
	sbc h                                            ; $61ab: $9c
	ld [$02fe], sp                                   ; $61ac: $08 $fe $02
	ld [hl], e                                       ; $61af: $73
	cp $27                                           ; $61b0: $fe $27
	ret nz                                           ; $61b2: $c0

	rst SubAFromDE                                          ; $61b3: $df
	ld b, d                                          ; $61b4: $42
	sbc [hl]                                         ; $61b5: $9e
	ld e, a                                          ; $61b6: $5f
	call c, $2742                                    ; $61b7: $dc $42 $27
	ldh [$97], a                                     ; $61ba: $e0 $97
	jr nz, jr_01d_61e1                               ; $61bc: $20 $23

	ld a, c                                          ; $61be: $79
	jr nz, jr_01d_61e3                               ; $61bf: $20 $22

	ld b, d                                          ; $61c1: $42
	ld c, [hl]                                       ; $61c2: $4e
	inc de                                           ; $61c3: $13
	daa                                              ; $61c4: $27
	ldh [$7f], a                                     ; $61c5: $e0 $7f
	sub l                                            ; $61c7: $95
	sbc [hl]                                         ; $61c8: $9e
	ld b, d                                          ; $61c9: $42
	db $dd                                           ; $61ca: $dd
	ld b, c                                          ; $61cb: $41
	sbc [hl]                                         ; $61cc: $9e
	ld b, b                                          ; $61cd: $40
	daa                                              ; $61ce: $27
	ldh [$df], a                                     ; $61cf: $e0 $df
	ld [$0b89], sp                                   ; $61d1: $08 $89 $0b
	inc c                                            ; $61d4: $0c
	ld [$3808], sp                                   ; $61d5: $08 $08 $38
	ld c, h                                          ; $61d8: $4c
	nop                                              ; $61d9: $00
	ret nz                                           ; $61da: $c0

	ldh a, [$f8]                                     ; $61db: $f0 $f8
	db $fc                                           ; $61dd: $fc
	db $fc                                           ; $61de: $fc
	cp $fe                                           ; $61df: $fe $fe

jr_01d_61e1:
	nop                                              ; $61e1: $00
	ret nz                                           ; $61e2: $c0

jr_01d_61e3:
	jr nc, jr_01d_61ed                               ; $61e3: $30 $08

	inc b                                            ; $61e5: $04
	inc b                                            ; $61e6: $04
	ld [bc], a                                       ; $61e7: $02
	ld [bc], a                                       ; $61e8: $02
	reti                                             ; $61e9: $d9


	rst $38                                          ; $61ea: $ff
	db $db                                           ; $61eb: $db
	ld b, c                                          ; $61ec: $41

jr_01d_61ed:
	rst SubAFromDE                                          ; $61ed: $df
	ld bc, $7fdf                                     ; $61ee: $01 $df $7f
	rst SubAFromDE                                          ; $61f1: $df
	ccf                                              ; $61f2: $3f
	sub h                                            ; $61f3: $94
	rra                                              ; $61f4: $1f
	rrca                                             ; $61f5: $0f
	inc bc                                           ; $61f6: $03
	nop                                              ; $61f7: $00
	ld b, b                                          ; $61f8: $40
	ld b, b                                          ; $61f9: $40
	jr nz, jr_01d_621c                               ; $61fa: $20 $20

	db $10                                           ; $61fc: $10
	inc c                                            ; $61fd: $0c
	inc bc                                           ; $61fe: $03
	ldh a, [$d9]                                     ; $61ff: $f0 $d9
	rst $38                                          ; $6201: $ff
	sbc l                                            ; $6202: $9d
	cp a                                             ; $6203: $bf
	add b                                            ; $6204: $80
	db $fc                                           ; $6205: $fc
	sub c                                            ; $6206: $91
	add a                                            ; $6207: $87
	ld hl, sp+$78                                    ; $6208: $f8 $78
	ld a, b                                          ; $620a: $78
	jr c, jr_01d_6245                                ; $620b: $38 $38

	jr @+$0a                                         ; $620d: $18 $08

	nop                                              ; $620f: $00
	adc b                                            ; $6210: $88
	ld c, b                                          ; $6211: $48
	ld c, b                                          ; $6212: $48
	jr z, jr_01d_623d                                ; $6213: $28 $28

	ld a, e                                          ; $6215: $7b
	ld hl, sp-$27                                    ; $6216: $f8 $d9
	rst $38                                          ; $6218: $ff
	sbc l                                            ; $6219: $9d
	and b                                            ; $621a: $a0
	sub e                                            ; $621b: $93

jr_01d_621c:
	ld l, a                                          ; $621c: $6f
	pop de                                           ; $621d: $d1
	daa                                              ; $621e: $27
	ret nz                                           ; $621f: $c0

	sbc [hl]                                         ; $6220: $9e
	add h                                            ; $6221: $84
	ld l, a                                          ; $6222: $6f
	and l                                            ; $6223: $a5
	inc hl                                           ; $6224: $23
	ldh [$9d], a                                     ; $6225: $e0 $9d
	ld b, d                                          ; $6227: $42
	inc h                                            ; $6228: $24
	rrca                                             ; $6229: $0f
	ldh [$9d], a                                     ; $622a: $e0 $9d
	ld [de], a                                       ; $622c: $12
	ld c, $0f                                        ; $622d: $0e $0f
	ldh [$9d], a                                     ; $622f: $e0 $9d
	jr z, jr_01d_6243                                ; $6231: $28 $10

	rrca                                             ; $6233: $0f
	ldh [$9d], a                                     ; $6234: $e0 $9d
	ld c, e                                          ; $6236: $4b
	jr nc, jr_01d_6268                               ; $6237: $30 $2f

	ldh [$df], a                                     ; $6239: $e0 $df
	cp $df                                           ; $623b: $fe $df

jr_01d_623d:
	db $fc                                           ; $623d: $fc
	sub h                                            ; $623e: $94
	ld hl, sp-$10                                    ; $623f: $f8 $f0
	ret nz                                           ; $6241: $c0

	nop                                              ; $6242: $00

jr_01d_6243:
	ld b, d                                          ; $6243: $42
	ld b, d                                          ; $6244: $42

jr_01d_6245:
	inc b                                            ; $6245: $04
	inc b                                            ; $6246: $04
	ld [$c030], sp                                   ; $6247: $08 $30 $c0
	ldh a, [$09]                                     ; $624a: $f0 $09
	add c                                            ; $624c: $81
	rst $38                                          ; $624d: $ff
	sbc c                                            ; $624e: $99
	ld bc, $0703                                     ; $624f: $01 $03 $07
	rlca                                             ; $6252: $07
	rrca                                             ; $6253: $0f
	rrca                                             ; $6254: $0f
	ld a, e                                          ; $6255: $7b
	ld hl, sp-$66                                    ; $6256: $f8 $9a
	ld [bc], a                                       ; $6258: $02
	inc b                                            ; $6259: $04
	inc b                                            ; $625a: $04
	ld [$d908], sp                                   ; $625b: $08 $08 $d9
	rra                                              ; $625e: $1f
	db $db                                           ; $625f: $db
	db $10                                           ; $6260: $10
	sbc e                                            ; $6261: $9b
	ld de, $1f10                                     ; $6262: $11 $10 $1f
	ld a, a                                          ; $6265: $7f
	db $db                                           ; $6266: $db
	rst $38                                          ; $6267: $ff

jr_01d_6268:
	sbc h                                            ; $6268: $9c
	rra                                              ; $6269: $1f
	ld h, b                                          ; $626a: $60
	add b                                            ; $626b: $80
	cp $9d                                           ; $626c: $fe $9d
	ld [hl+], a                                      ; $626e: $22
	inc d                                            ; $626f: $14
	reti                                             ; $6270: $d9


	rst $38                                          ; $6271: $ff
	sbc b                                            ; $6272: $98
	ld a, a                                          ; $6273: $7f
	ld [$083e], sp                                   ; $6274: $08 $3e $08
	rst $38                                          ; $6277: $ff
	ld [$63ff], sp                                   ; $6278: $08 $ff $63
	ldh a, [$9e]                                     ; $627b: $f0 $9e
	rst $38                                          ; $627d: $ff
	ld a, [$ffd9]                                    ; $627e: $fa $d9 $ff
	db $dd                                           ; $6281: $dd
	db $10                                           ; $6282: $10
	sbc e                                            ; $6283: $9b
	sub b                                            ; $6284: $90
	db $10                                           ; $6285: $10
	ret nc                                           ; $6286: $d0

	db $10                                           ; $6287: $10
	daa                                              ; $6288: $27
	ldh [$df], a                                     ; $6289: $e0 $df
	ld [$0499], sp                                   ; $628b: $08 $99 $04
	ccf                                              ; $628e: $3f
	ld [bc], a                                       ; $628f: $02
	ld bc, $a000                                     ; $6290: $01 $00 $a0
	daa                                              ; $6293: $27
	ldh [$fe], a                                     ; $6294: $e0 $fe
	sbc d                                            ; $6296: $9a
	add [hl]                                         ; $6297: $86
	add hl, bc                                       ; $6298: $09
	jr nc, jr_01d_629b                               ; $6299: $30 $00

jr_01d_629b:
	ld bc, $e023                                     ; $629b: $01 $23 $e0
	ld a, a                                          ; $629e: $7f
	jp nz, Jump_01d_527f                             ; $629f: $c2 $7f $52

	rst SubAFromDE                                          ; $62a2: $df
	adc b                                            ; $62a3: $88
	ld a, a                                          ; $62a4: $7f
	ld a, [hl]                                       ; $62a5: $7e
	ld d, e                                          ; $62a6: $53
	ldh [$df], a                                     ; $62a7: $e0 $df
	ld bc, $ffd9                                     ; $62a9: $01 $d9 $ff
	sbc e                                            ; $62ac: $9b
	ld bc, $0081                                     ; $62ad: $01 $81 $00

jr_01d_62b0:
	ld bc, $fe7b                                     ; $62b0: $01 $7b $fe
	sbc [hl]                                         ; $62b3: $9e
	inc bc                                           ; $62b4: $03
	ld c, a                                          ; $62b5: $4f
	ldh [$9d], a                                     ; $62b6: $e0 $9d
	rst $38                                          ; $62b8: $ff
	add hl, hl                                       ; $62b9: $29
	reti                                             ; $62ba: $d9


	rst $38                                          ; $62bb: $ff
	ld a, a                                          ; $62bc: $7f
	rst FarCall                                          ; $62bd: $f7
	sbc l                                            ; $62be: $9d
	jr z, jr_01d_62b0                                ; $62bf: $28 $ef

	ld [hl], a                                       ; $62c1: $77
	cp $9d                                           ; $62c2: $fe $9d
	ld hl, sp-$02                                    ; $62c4: $f8 $fe
	db $db                                           ; $62c6: $db
	rst $38                                          ; $62c7: $ff
	sbc h                                            ; $62c8: $9c
	ld hl, sp+$06                                    ; $62c9: $f8 $06
	ld bc, $404b                                     ; $62cb: $01 $4b $40
	sub c                                            ; $62ce: $91
	dec sp                                           ; $62cf: $3b
	inc d                                            ; $62d0: $14
	jr jr_01d_6303                                   ; $62d1: $18 $30

	ld sp, $0092                                     ; $62d3: $31 $92 $00
	nop                                              ; $62d6: $00
	add b                                            ; $62d7: $80
	ret nz                                           ; $62d8: $c0

	ldh [$e0], a                                     ; $62d9: $e0 $e0
	ldh a, [$f0]                                     ; $62db: $f0 $f0
	ld a, e                                          ; $62dd: $7b
	ld hl, sp-$66                                    ; $62de: $f8 $9a
	ld b, b                                          ; $62e0: $40
	jr nz, jr_01d_6303                               ; $62e1: $20 $20

	db $10                                           ; $62e3: $10
	db $10                                           ; $62e4: $10
	reti                                             ; $62e5: $d9


	ld hl, sp-$22                                    ; $62e6: $f8 $de
	ld [$88dd], sp                                   ; $62e8: $08 $dd $88
	sbc c                                            ; $62eb: $99

jr_01d_62ec:
	ret z                                            ; $62ec: $c8

	rrca                                             ; $62ed: $0f

jr_01d_62ee:
	rrca                                             ; $62ee: $0f
	rlca                                             ; $62ef: $07
	rlca                                             ; $62f0: $07
	inc bc                                           ; $62f1: $03
	ld a, e                                          ; $62f2: $7b
	push bc                                          ; $62f3: $c5
	sbc e                                            ; $62f4: $9b
	ld [$0409], sp                                   ; $62f5: $08 $09 $04
	inc b                                            ; $62f8: $04
	ld a, e                                          ; $62f9: $7b
	jr nc, jr_01d_62ec                               ; $62fa: $30 $f0

	ld l, d                                          ; $62fc: $6a
	jp nc, $1f9d                                     ; $62fd: $d2 $9d $1f

	ld h, e                                          ; $6300: $63
	halt                                             ; $6301: $76
	pop bc                                           ; $6302: $c1

jr_01d_6303:
	sbc d                                            ; $6303: $9a
	add b                                            ; $6304: $80
	ld h, b                                          ; $6305: $60
	db $10                                           ; $6306: $10
	rra                                              ; $6307: $1f
	rra                                              ; $6308: $1f
	sbc $0f                                          ; $6309: $de $0f
	ld a, e                                          ; $630b: $7b
	call $11df                                       ; $630c: $cd $df $11
	sbc $09                                          ; $630f: $de $09
	rst SubAFromDE                                          ; $6311: $df
	dec b                                            ; $6312: $05
	ld h, e                                          ; $6313: $63
	ld h, b                                          ; $6314: $60
	sbc l                                            ; $6315: $9d
	db $10                                           ; $6316: $10
	rst GetHLinHL                                          ; $6317: $cf
	ld l, a                                          ; $6318: $6f
	pop de                                           ; $6319: $d1
	cpl                                              ; $631a: $2f
	ret nz                                           ; $631b: $c0

	rst SubAFromDE                                          ; $631c: $df
	rst $38                                          ; $631d: $ff
	sbc [hl]                                         ; $631e: $9e
	sub b                                            ; $631f: $90
	ld a, d                                          ; $6320: $7a
	ld e, [hl]                                       ; $6321: $5e
	rla                                              ; $6322: $17
	ldh [$9e], a                                     ; $6323: $e0 $9e
	ld b, $6b                                        ; $6325: $06 $6b
	pop af                                           ; $6327: $f1
	daa                                              ; $6328: $27
	ldh [$9d], a                                     ; $6329: $e0 $9d
	inc b                                            ; $632b: $04
	inc bc                                           ; $632c: $03
	rrca                                             ; $632d: $0f
	ldh [$7f], a                                     ; $632e: $e0 $7f
	dec h                                            ; $6330: $25
	rrca                                             ; $6331: $0f
	ldh [$9d], a                                     ; $6332: $e0 $9d
	ld c, b                                          ; $6334: $48
	adc b                                            ; $6335: $88
	rla                                              ; $6336: $17
	ldh [$9b], a                                     ; $6337: $e0 $9b
	cp $f8                                           ; $6339: $fe $f8
	ld [de], a                                       ; $633b: $12
	inc de                                           ; $633c: $13
	halt                                             ; $633d: $76
	add c                                            ; $633e: $81
	sbc l                                            ; $633f: $9d
	ld b, $f8                                        ; $6340: $06 $f8
	pop af                                           ; $6342: $f1
	rst SubAFromDE                                          ; $6343: $df
	ldh a, [$df]                                     ; $6344: $f0 $df
	ldh [$9e], a                                     ; $6346: $e0 $9e
	ret nz                                           ; $6348: $c0

	ld a, e                                          ; $6349: $7b
	inc b                                            ; $634a: $04
	ld a, l                                          ; $634b: $7d
	db $f4                                           ; $634c: $f4
	rst SubAFromDE                                          ; $634d: $df
	jr nz, jr_01d_62ee                               ; $634e: $20 $9e

	ld b, b                                          ; $6350: $40
	halt                                             ; $6351: $76
	db $fc                                           ; $6352: $fc
	ldh a, [c]                                       ; $6353: $f2
	ld a, [bc]                                       ; $6354: $0a
	add c                                            ; $6355: $81
	adc a                                            ; $6356: $8f
	inc bc                                           ; $6357: $03
	rrca                                             ; $6358: $0f
	rra                                              ; $6359: $1f
	ccf                                              ; $635a: $3f
	ld a, a                                          ; $635b: $7f
	ld a, a                                          ; $635c: $7f
	rst $38                                          ; $635d: $ff
	rst $38                                          ; $635e: $ff
	inc bc                                           ; $635f: $03
	inc c                                            ; $6360: $0c
	db $10                                           ; $6361: $10
	jr nz, jr_01d_63a4                               ; $6362: $20 $40

	ld b, b                                          ; $6364: $40
	add b                                            ; $6365: $80
	add b                                            ; $6366: $80
	reti                                             ; $6367: $d9


	rst $38                                          ; $6368: $ff
	call c, $9d80                                    ; $6369: $dc $80 $9d
	add c                                            ; $636c: $81
	add d                                            ; $636d: $82
	ld h, e                                          ; $636e: $63
	ldh a, [$9e]                                     ; $636f: $f0 $9e
	rst $38                                          ; $6371: $ff
	cp $9b                                           ; $6372: $fe $9b
	inc h                                            ; $6374: $24
	ld [hl+], a                                      ; $6375: $22
	jr nz, jr_01d_6398                               ; $6376: $20 $20

	reti                                             ; $6378: $d9


	rst $38                                          ; $6379: $ff
	sbc $40                                          ; $637a: $de $40
	rst SubAFromDE                                          ; $637c: $df
	add b                                            ; $637d: $80
	sbc h                                            ; $637e: $9c
	ld bc, $0006                                     ; $637f: $01 $06 $00
	ld d, a                                          ; $6382: $57
	ldh [rIE], a                                     ; $6383: $e0 $ff
	rst SubAFromDE                                          ; $6385: $df
	ld b, b                                          ; $6386: $40
	reti                                             ; $6387: $d9


	rst $38                                          ; $6388: $ff
	sbc $41                                          ; $6389: $de $41
	rst SubAFromDE                                          ; $638b: $df
	add d                                            ; $638c: $82
	sbc l                                            ; $638d: $9d
	inc b                                            ; $638e: $04
	ld [$e053], sp                                   ; $638f: $08 $53 $e0
	sbc e                                            ; $6392: $9b
	sub b                                            ; $6393: $90
	adc b                                            ; $6394: $88
	add c                                            ; $6395: $81
	add c                                            ; $6396: $81
	reti                                             ; $6397: $d9


jr_01d_6398:
	rst $38                                          ; $6398: $ff
	sbc $01                                          ; $6399: $de $01
	rst SubAFromDE                                          ; $639b: $df
	ld [bc], a                                       ; $639c: $02
	sbc l                                            ; $639d: $9d
	inc b                                            ; $639e: $04
	jr jr_01d_63ec                                   ; $639f: $18 $4b

	ret nz                                           ; $63a1: $c0

	rst $38                                          ; $63a2: $ff
	ld d, e                                          ; $63a3: $53

jr_01d_63a4:
	pop af                                           ; $63a4: $f1
	sbc l                                            ; $63a5: $9d
	add b                                            ; $63a6: $80
	ld b, b                                          ; $63a7: $40
	rrca                                             ; $63a8: $0f
	ldh [rPCM34], a                                  ; $63a9: $e0 $77
	db $dd                                           ; $63ab: $dd
	sub b                                            ; $63ac: $90
	ldh [$f0], a                                     ; $63ad: $e0 $f0
	ld hl, sp-$04                                    ; $63af: $f8 $fc
	db $fc                                           ; $63b1: $fc
	cp $fe                                           ; $63b2: $fe $fe
	add b                                            ; $63b4: $80
	ld h, b                                          ; $63b5: $60
	db $10                                           ; $63b6: $10
	ld [$0404], sp                                   ; $63b7: $08 $04 $04
	ld [bc], a                                       ; $63ba: $02
	ld [bc], a                                       ; $63bb: $02
	reti                                             ; $63bc: $d9


jr_01d_63bd:
	cp $d9                                           ; $63bd: $fe $d9
	ld [bc], a                                       ; $63bf: $02
	reti                                             ; $63c0: $d9


	rst $38                                          ; $63c1: $ff
	sbc [hl]                                         ; $63c2: $9e
	add e                                            ; $63c3: $83
	sbc $80                                          ; $63c4: $de $80
	sbc [hl]                                         ; $63c6: $9e
	adc a                                            ; $63c7: $8f
	sbc $81                                          ; $63c8: $de $81
	rst SubAFromDE                                          ; $63ca: $df
	rst $38                                          ; $63cb: $ff
	rst SubAFromDE                                          ; $63cc: $df
	ld a, a                                          ; $63cd: $7f
	sub h                                            ; $63ce: $94
	ccf                                              ; $63cf: $3f
	rra                                              ; $63d0: $1f

jr_01d_63d1:
	rrca                                             ; $63d1: $0f
	inc bc                                           ; $63d2: $03
	add c                                            ; $63d3: $81
	add c                                            ; $63d4: $81
	ld b, d                                          ; $63d5: $42
	ld c, h                                          ; $63d6: $4c
	jr nz, @+$12                                     ; $63d7: $20 $10

	inc c                                            ; $63d9: $0c
	ld h, e                                          ; $63da: $63
	ldh [$9e], a                                     ; $63db: $e0 $9e
	ld hl, sp-$02                                    ; $63dd: $f8 $fe
	sbc [hl]                                         ; $63df: $9e
	cp $de                                           ; $63e0: $fe $de
	jr nz, jr_01d_63bd                               ; $63e2: $20 $d9

	rst $38                                          ; $63e4: $ff
	sbc $22                                          ; $63e5: $de $22
	sbc [hl]                                         ; $63e7: $9e
	ld e, $fe                                        ; $63e8: $1e $fe
	sbc [hl]                                         ; $63ea: $9e
	rrca                                             ; $63eb: $0f

jr_01d_63ec:
	ld h, e                                          ; $63ec: $63
	db $10                                           ; $63ed: $10
	sbc b                                            ; $63ee: $98
	ld a, a                                          ; $63ef: $7f
	ld b, b                                          ; $63f0: $40
	cp a                                             ; $63f1: $bf
	nop                                              ; $63f2: $00
	rst $38                                          ; $63f3: $ff

jr_01d_63f4:
	nop                                              ; $63f4: $00
	ld [hl+], a                                      ; $63f5: $22
	reti                                             ; $63f6: $d9


	rst $38                                          ; $63f7: $ff
	sbc e                                            ; $63f8: $9b
	inc d                                            ; $63f9: $14
	ld [$c034], sp                                   ; $63fa: $08 $34 $c0
	ld e, e                                          ; $63fd: $5b
	ld [hl], c                                       ; $63fe: $71
	ld a, a                                          ; $63ff: $7f
	and $98                                          ; $6400: $e6 $98
	ret nz                                           ; $6402: $c0

	inc b                                            ; $6403: $04
	add h                                            ; $6404: $84
	rrca                                             ; $6405: $0f
	add h                                            ; $6406: $84
	add l                                            ; $6407: $85
	add h                                            ; $6408: $84
	reti                                             ; $6409: $d9


	rst $38                                          ; $640a: $ff
	rst SubAFromDE                                          ; $640b: $df
	xor b                                            ; $640c: $a8
	sbc l                                            ; $640d: $9d
	ld l, d                                          ; $640e: $6a
	add hl, hl                                       ; $640f: $29
	ld d, e                                          ; $6410: $53
	ldh [$98], a                                     ; $6411: $e0 $98
	and b                                            ; $6413: $a0
	xor b                                            ; $6414: $a8
	ld [$08c8], sp                                   ; $6415: $08 $c8 $08
	ret z                                            ; $6418: $c8

	jr z, jr_01d_63f4                                ; $6419: $28 $d9

	rst $38                                          ; $641b: $ff
	sbc $08                                          ; $641c: $de $08
	sbc [hl]                                         ; $641e: $9e
	rst SubAFromBC                                          ; $641f: $e7
	ld d, e                                          ; $6420: $53
	ldh [rIE], a                                     ; $6421: $e0 $ff
	sbc d                                            ; $6423: $9a
	ccf                                              ; $6424: $3f
	ld [bc], a                                       ; $6425: $02
	inc b                                            ; $6426: $04
	ld [$6308], sp                                   ; $6427: $08 $08 $63
	ldh [$9c], a                                     ; $642a: $e0 $9c
	ld c, b                                          ; $642c: $48
	ld b, h                                          ; $642d: $44
	add e                                            ; $642e: $83
	ld [hl], a                                       ; $642f: $77
	ldh [$5f], a                                     ; $6430: $e0 $5f
	jr nc, jr_01d_63d1                               ; $6432: $30 $9d

jr_01d_6434:
	ld [hl+], a                                      ; $6434: $22
	and d                                            ; $6435: $a2
	db $dd                                           ; $6436: $dd
	ld [hl+], a                                      ; $6437: $22
	rst SubAFromDE                                          ; $6438: $df
	cp $df                                           ; $6439: $fe $df
	db $fc                                           ; $643b: $fc
	sub e                                            ; $643c: $93
	ld hl, sp-$10                                    ; $643d: $f8 $f0
	ldh [$80], a                                     ; $643f: $e0 $80
	ld [bc], a                                       ; $6441: $02
	ld [bc], a                                       ; $6442: $02
	inc h                                            ; $6443: $24
	inc h                                            ; $6444: $24
	ld [$6010], sp                                   ; $6445: $08 $10 $60
	add b                                            ; $6448: $80
	sbc $01                                          ; $6449: $de $01
	db $fc                                           ; $644b: $fc
	ld h, a                                          ; $644c: $67
	ld hl, sp-$0f                                    ; $644d: $f8 $f1

jr_01d_644f:
	call c, $dff0                                    ; $644f: $dc $f0 $df
	ld [hl], b                                       ; $6452: $70
	sbc [hl]                                         ; $6453: $9e
	jr nc, jr_01d_6434                               ; $6454: $30 $de

	db $10                                           ; $6456: $10
	rst SubAFromDE                                          ; $6457: $df
	sub b                                            ; $6458: $90
	rst SubAFromDE                                          ; $6459: $df
	ld d, b                                          ; $645a: $50
	sbc [hl]                                         ; $645b: $9e
	jr nc, jr_01d_644f                               ; $645c: $30 $f1

	ld [bc], a                                       ; $645e: $02
	add c                                            ; $645f: $81
	adc a                                            ; $6460: $8f
	inc bc                                           ; $6461: $03
	rrca                                             ; $6462: $0f
	rra                                              ; $6463: $1f
	ccf                                              ; $6464: $3f
	ld a, a                                          ; $6465: $7f
	ld a, a                                          ; $6466: $7f

jr_01d_6467:
	rst $38                                          ; $6467: $ff
	rst $38                                          ; $6468: $ff
	inc bc                                           ; $6469: $03
	inc c                                            ; $646a: $0c
	db $10                                           ; $646b: $10
	jr nz, jr_01d_64ae                               ; $646c: $20 $40

	ld b, b                                          ; $646e: $40
	add b                                            ; $646f: $80
	add e                                            ; $6470: $83
	reti                                             ; $6471: $d9


	rst $38                                          ; $6472: $ff
	rst SubAFromDE                                          ; $6473: $df
	add b                                            ; $6474: $80
	sbc h                                            ; $6475: $9c
	add d                                            ; $6476: $82
	add c                                            ; $6477: $81
	add h                                            ; $6478: $84
	sbc $88                                          ; $6479: $de $88
	ret c                                            ; $647b: $d8

	rst $38                                          ; $647c: $ff
	ei                                               ; $647d: $fb
	sbc [hl]                                         ; $647e: $9e
	rlca                                             ; $647f: $07
	ld h, e                                          ; $6480: $63
	ldh [$9b], a                                     ; $6481: $e0 $9b
	rlca                                             ; $6483: $07
	ld [$c000], sp                                   ; $6484: $08 $00 $c0
	sbc $a0                                          ; $6487: $de $a0
	ld c, e                                          ; $6489: $4b
	ldh [$9e], a                                     ; $648a: $e0 $9e
	add b                                            ; $648c: $80
	reti                                             ; $648d: $d9


	rst $38                                          ; $648e: $ff
	sub a                                            ; $648f: $97
	ld bc, $4080                                     ; $6490: $01 $80 $40
	ld b, b                                          ; $6493: $40
	ld b, c                                          ; $6494: $41
	ld b, d                                          ; $6495: $42
	ld b, d                                          ; $6496: $42
	sub d                                            ; $6497: $92

jr_01d_6498:
	ld c, e                                          ; $6498: $4b
	ldh [$9e], a                                     ; $6499: $e0 $9e
	sub b                                            ; $649b: $90
	reti                                             ; $649c: $d9


	rst $38                                          ; $649d: $ff
	sbc d                                            ; $649e: $9a
	add sp, -$7f                                     ; $649f: $e8 $81
	add b                                            ; $64a1: $80
	ldh a, [c]                                       ; $64a2: $f2
	adc c                                            ; $64a3: $89
	ccf                                              ; $64a4: $3f
	and b                                            ; $64a5: $a0
	sbc [hl]                                         ; $64a6: $9e
	add d                                            ; $64a7: $82
	reti                                             ; $64a8: $d9


	rst $38                                          ; $64a9: $ff
	sbc h                                            ; $64aa: $9c
	add d                                            ; $64ab: $82
	ldh [c], a                                       ; $64ac: $e2
	add d                                            ; $64ad: $82

jr_01d_64ae:
	ld a, e                                          ; $64ae: $7b
	db $fd                                           ; $64af: $fd
	rst SubAFromDE                                          ; $64b0: $df
	adc d                                            ; $64b1: $8a
	ld c, e                                          ; $64b2: $4b
	ldh [$9e], a                                     ; $64b3: $e0 $9e
	inc bc                                           ; $64b5: $03
	ld e, a                                          ; $64b6: $5f
	pop af                                           ; $64b7: $f1
	sbc c                                            ; $64b8: $99
	ld bc, $0403                                     ; $64b9: $01 $03 $04
	nop                                              ; $64bc: $00
	db $10                                           ; $64bd: $10
	ld [de], a                                       ; $64be: $12
	ld c, e                                          ; $64bf: $4b
	ldh [$9e], a                                     ; $64c0: $e0 $9e
	pop hl                                           ; $64c2: $e1
	reti                                             ; $64c3: $d9


	rst $38                                          ; $64c4: $ff
	sub a                                            ; $64c5: $97
	ld b, c                                          ; $64c6: $41
	add c                                            ; $64c7: $81
	rlca                                             ; $64c8: $07
	pop hl                                           ; $64c9: $e1
	ld [de], a                                       ; $64ca: $12
	ld [de], a                                       ; $64cb: $12
	inc d                                            ; $64cc: $14
	dec d                                            ; $64cd: $15
	ld c, e                                          ; $64ce: $4b
	ldh [$9e], a                                     ; $64cf: $e0 $9e
	nop                                              ; $64d1: $00
	ld h, e                                          ; $64d2: $63
	pop af                                           ; $64d3: $f1
	sbc e                                            ; $64d4: $9b
	jr nz, jr_01d_6467                               ; $64d5: $20 $90

	ld d, c                                          ; $64d7: $51
	ld d, [hl]                                       ; $64d8: $56
	sbc $40                                          ; $64d9: $de $40
	ld c, e                                          ; $64db: $4b
	ldh [$9e], a                                     ; $64dc: $e0 $9e
	ld [bc], a                                       ; $64de: $02
	reti                                             ; $64df: $d9


	rst $38                                          ; $64e0: $ff
	add a                                            ; $64e1: $87
	ld [bc], a                                       ; $64e2: $02
	rlca                                             ; $64e3: $07
	jp nz, $1222                                     ; $64e4: $c2 $22 $12

	inc d                                            ; $64e7: $14
	inc h                                            ; $64e8: $24
	push bc                                          ; $64e9: $c5
	ret nz                                           ; $64ea: $c0

	ldh a, [$f8]                                     ; $64eb: $f0 $f8
	db $fc                                           ; $64ed: $fc
	cp $fe                                           ; $64ee: $fe $fe
	rst $38                                          ; $64f0: $ff
	rst $38                                          ; $64f1: $ff
	ret nz                                           ; $64f2: $c0

	jr nc, jr_01d_64fd                               ; $64f3: $30 $08

	inc b                                            ; $64f5: $04
	ld [bc], a                                       ; $64f6: $02
	ld [bc], a                                       ; $64f7: $02
	ld bc, $6301                                     ; $64f8: $01 $01 $63
	jr nz, jr_01d_6498                               ; $64fb: $20 $9b

jr_01d_64fd:
	pop hl                                           ; $64fd: $e1
	ld bc, $11e1                                     ; $64fe: $01 $e1 $11
	sbc $01                                          ; $6501: $de $01
	rst SubAFromDE                                          ; $6503: $df
	rst $38                                          ; $6504: $ff
	rst SubAFromDE                                          ; $6505: $df
	ld a, a                                          ; $6506: $7f
	sbc d                                            ; $6507: $9a
	ccf                                              ; $6508: $3f
	rra                                              ; $6509: $1f
	rrca                                             ; $650a: $0f
	inc bc                                           ; $650b: $03
	add e                                            ; $650c: $83
	ld a, e                                          ; $650d: $7b
	db $10                                           ; $650e: $10
	sbc c                                            ; $650f: $99
	jr nz, jr_01d_6522                               ; $6510: $20 $10

	inc c                                            ; $6512: $0c
	ld [bc], a                                       ; $6513: $02
	inc bc                                           ; $6514: $03
	inc bc                                           ; $6515: $03
	sbc $01                                          ; $6516: $de $01
	ld [hl], a                                       ; $6518: $77
	or a                                             ; $6519: $b7
	ld a, e                                          ; $651a: $7b
	call nc, $f877                                   ; $651b: $d4 $77 $f8
	reti                                             ; $651e: $d9


	rst $38                                          ; $651f: $ff
	sbc [hl]                                         ; $6520: $9e
	rlca                                             ; $6521: $07

jr_01d_6522:
	ei                                               ; $6522: $fb
	sbc [hl]                                         ; $6523: $9e
	rra                                              ; $6524: $1f
	jp c, $9ee0                                      ; $6525: $da $e0 $9e

	ld h, b                                          ; $6528: $60
	call c, $df20                                    ; $6529: $dc $20 $df
	and b                                            ; $652c: $a0
	sbc [hl]                                         ; $652d: $9e
	ld h, b                                          ; $652e: $60
	reti                                             ; $652f: $d9


	rst $38                                          ; $6530: $ff
	sbc [hl]                                         ; $6531: $9e
	add hl, bc                                       ; $6532: $09
	ld l, e                                          ; $6533: $6b
	ld h, c                                          ; $6534: $61
	pop af                                           ; $6535: $f1
	reti                                             ; $6536: $d9


	rst $38                                          ; $6537: $ff
	sbc [hl]                                         ; $6538: $9e
	jr nc, @+$0d                                     ; $6539: $30 $0b

	ldh [$9e], a                                     ; $653b: $e0 $9e
	ld [hl], c                                       ; $653d: $71
	dec bc                                           ; $653e: $0b
	ldh [$9e], a                                     ; $653f: $e0 $9e
	pop hl                                           ; $6541: $e1
	dec bc                                           ; $6542: $0b
	ldh [$9e], a                                     ; $6543: $e0 $9e
	ldh [$0b], a                                     ; $6545: $e0 $0b
	ldh [$9e], a                                     ; $6547: $e0 $9e
	add b                                            ; $6549: $80
	dec bc                                           ; $654a: $0b
	ldh [$7e], a                                     ; $654b: $e0 $7e
	ld [hl], h                                       ; $654d: $74
	daa                                              ; $654e: $27
	ldh [$df], a                                     ; $654f: $e0 $df
	cp $93                                           ; $6551: $fe $93
	db $fc                                           ; $6553: $fc
	ld hl, sp-$10                                    ; $6554: $f8 $f0
	ret nz                                           ; $6556: $c0

	pop af                                           ; $6557: $f1
	ld bc, $0202                                     ; $6558: $01 $02 $02
	inc b                                            ; $655b: $04
	ld [$c030], sp                                   ; $655c: $08 $30 $c0
	pop af                                           ; $655f: $f1
	jp c, $8f80                                      ; $6560: $da $80 $8f

	nop                                              ; $6563: $00
	inc bc                                           ; $6564: $03
	rrca                                             ; $6565: $0f
	rra                                              ; $6566: $1f
	ccf                                              ; $6567: $3f
	ccf                                              ; $6568: $3f
	ld a, a                                          ; $6569: $7f
	ld a, a                                          ; $656a: $7f
	nop                                              ; $656b: $00
	inc bc                                           ; $656c: $03
	inc c                                            ; $656d: $0c
	db $10                                           ; $656e: $10
	jr nz, jr_01d_6591                               ; $656f: $20 $20

	ld b, b                                          ; $6571: $40
	ld b, b                                          ; $6572: $40
	reti                                             ; $6573: $d9


	rst $38                                          ; $6574: $ff
	rst SubAFromDE                                          ; $6575: $df
	add b                                            ; $6576: $80
	sbc [hl]                                         ; $6577: $9e
	add c                                            ; $6578: $81
	call c, $d880                                    ; $6579: $dc $80 $d8
	rst $38                                          ; $657c: $ff
	ei                                               ; $657d: $fb
	ld h, e                                          ; $657e: $63
	ldh a, [$97]                                     ; $657f: $f0 $97
	ld d, b                                          ; $6581: $50
	db $10                                           ; $6582: $10
	ld [de], a                                       ; $6583: $12
	sub d                                            ; $6584: $92
	inc de                                           ; $6585: $13
	ld d, $22                                        ; $6586: $16 $22
	ld hl, $e04f                                     ; $6588: $21 $4f $e0
	rst SubAFromDE                                          ; $658b: $df
	inc b                                            ; $658c: $04
	reti                                             ; $658d: $d9


	rst $38                                          ; $658e: $ff
	sbc [hl]                                         ; $658f: $9e
	rra                                              ; $6590: $1f

jr_01d_6591:
	sbc $04                                          ; $6591: $de $04
	sbc e                                            ; $6593: $9b
	rst SubAFromDE                                          ; $6594: $df
	ld b, d                                          ; $6595: $42
	add d                                            ; $6596: $82
	ld [bc], a                                       ; $6597: $02
	ld c, e                                          ; $6598: $4b
	ret nz                                           ; $6599: $c0

	sbc [hl]                                         ; $659a: $9e
	nop                                              ; $659b: $00
	reti                                             ; $659c: $d9


	rst $38                                          ; $659d: $ff
	rst SubAFromDE                                          ; $659e: $df
	ld bc, $9bff                                     ; $659f: $01 $ff $9b
	db $10                                           ; $65a2: $10
	ld d, h                                          ; $65a3: $54
	ld b, l                                          ; $65a4: $45
	dec b                                            ; $65a5: $05
	rra                                              ; $65a6: $1f
	ldh [$99], a                                     ; $65a7: $e0 $99
	add c                                            ; $65a9: $81
	sbc c                                            ; $65aa: $99
	ld h, c                                          ; $65ab: $61
	add c                                            ; $65ac: $81
	ld bc, $2301                                     ; $65ad: $01 $01 $23
	ldh [$fe], a                                     ; $65b0: $e0 $fe
	sbc e                                            ; $65b2: $9b
	ld bc, $0002                                     ; $65b3: $01 $02 $00
	ld [$e027], sp                                   ; $65b6: $08 $27 $e0
	sub a                                            ; $65b9: $97
	ldh a, [rAUD4LEN]                                ; $65ba: $f0 $20
	ld b, b                                          ; $65bc: $40
	add b                                            ; $65bd: $80
	ldh a, [$08]                                     ; $65be: $f0 $08
	add hl, bc                                       ; $65c0: $09
	ld a, [bc]                                       ; $65c1: $0a
	daa                                              ; $65c2: $27
	ldh [$df], a                                     ; $65c3: $e0 $df
	ld b, c                                          ; $65c5: $41
	adc d                                            ; $65c6: $8a
	ld e, c                                          ; $65c7: $59
	ld h, c                                          ; $65c8: $61
	ld b, c                                          ; $65c9: $41
	ld b, c                                          ; $65ca: $41
	ret nz                                           ; $65cb: $c0

	ld h, b                                          ; $65cc: $60
	nop                                              ; $65cd: $00
	ret nz                                           ; $65ce: $c0

	ldh a, [$f8]                                     ; $65cf: $f0 $f8
	db $fc                                           ; $65d1: $fc
	db $fc                                           ; $65d2: $fc
	cp $fe                                           ; $65d3: $fe $fe
	nop                                              ; $65d5: $00
	ret nz                                           ; $65d6: $c0

	jr nc, @+$0a                                     ; $65d7: $30 $08

	inc b                                            ; $65d9: $04
	inc b                                            ; $65da: $04
	ld [bc], a                                       ; $65db: $02
	ld h, e                                          ; $65dc: $63
	ld d, b                                          ; $65dd: $50
	reti                                             ; $65de: $d9


	ld bc, $7fdf                                     ; $65df: $01 $df $7f
	rst SubAFromDE                                          ; $65e2: $df
	ccf                                              ; $65e3: $3f
	sub h                                            ; $65e4: $94
	rra                                              ; $65e5: $1f
	rrca                                             ; $65e6: $0f
	inc bc                                           ; $65e7: $03
	nop                                              ; $65e8: $00
	ld b, b                                          ; $65e9: $40
	ld b, c                                          ; $65ea: $41
	jr nz, jr_01d_660d                               ; $65eb: $20 $20

	db $10                                           ; $65ed: $10
	inc c                                            ; $65ee: $0c
	inc bc                                           ; $65ef: $03
	ldh a, [$63]                                     ; $65f0: $f0 $63
	or b                                             ; $65f2: $b0
	sbc [hl]                                         ; $65f3: $9e
	add c                                            ; $65f4: $81
	db $fc                                           ; $65f5: $fc
	adc [hl]                                         ; $65f6: $8e
	add e                                            ; $65f7: $83
	db $fc                                           ; $65f8: $fc
	ld a, h                                          ; $65f9: $7c
	ld a, h                                          ; $65fa: $7c
	inc a                                            ; $65fb: $3c
	inc a                                            ; $65fc: $3c
	inc e                                            ; $65fd: $1c
	inc e                                            ; $65fe: $1c
	inc c                                            ; $65ff: $0c
	add h                                            ; $6600: $84
	ld b, h                                          ; $6601: $44
	ld b, h                                          ; $6602: $44
	inc h                                            ; $6603: $24
	inc h                                            ; $6604: $24
	inc d                                            ; $6605: $14
	inc d                                            ; $6606: $14
	inc c                                            ; $6607: $0c
	reti                                             ; $6608: $d9


	rst $38                                          ; $6609: $ff
	rst SubAFromDE                                          ; $660a: $df
	ld [bc], a                                       ; $660b: $02
	ld l, a                                          ; $660c: $6f

jr_01d_660d:
	pop de                                           ; $660d: $d1
	daa                                              ; $660e: $27
	ret nz                                           ; $660f: $c0

	sbc l                                            ; $6610: $9d
	add hl, bc                                       ; $6611: $09
	db $10                                           ; $6612: $10
	rrca                                             ; $6613: $0f
	ldh [$9d], a                                     ; $6614: $e0 $9d
	ld bc, $0bf8                                     ; $6616: $01 $f8 $0b
	ret nz                                           ; $6619: $c0

	sbc [hl]                                         ; $661a: $9e
	ldh a, [rIF]                                     ; $661b: $f0 $0f
	ldh [$9d], a                                     ; $661d: $e0 $9d
	ld a, [bc]                                       ; $661f: $0a
	pop af                                           ; $6620: $f1
	rrca                                             ; $6621: $0f
	ldh [$9e], a                                     ; $6622: $e0 $9e
	ld e, c                                          ; $6624: $59
	ld l, a                                          ; $6625: $6f
	ld b, b                                          ; $6626: $40
	ld b, e                                          ; $6627: $43
	ldh [$df], a                                     ; $6628: $e0 $df
	cp $df                                           ; $662a: $fe $df
	db $fc                                           ; $662c: $fc
	sub h                                            ; $662d: $94
	ld hl, sp-$10                                    ; $662e: $f8 $f0
	ret nz                                           ; $6630: $c0

	nop                                              ; $6631: $00
	ld [bc], a                                       ; $6632: $02
	ld [bc], a                                       ; $6633: $02
	inc b                                            ; $6634: $04
	inc b                                            ; $6635: $04
	ld [$c030], sp                                   ; $6636: $08 $30 $c0
	ldh a, [$f9]                                     ; $6639: $f0 $f9
	add b                                            ; $663b: $80
	adc a                                            ; $663c: $8f
	nop                                              ; $663d: $00
	inc bc                                           ; $663e: $03
	rrca                                             ; $663f: $0f
	rra                                              ; $6640: $1f
	ccf                                              ; $6641: $3f
	ccf                                              ; $6642: $3f
	ld a, a                                          ; $6643: $7f
	ld a, a                                          ; $6644: $7f
	nop                                              ; $6645: $00
	inc bc                                           ; $6646: $03
	inc c                                            ; $6647: $0c
	db $10                                           ; $6648: $10
	jr nz, jr_01d_666b                               ; $6649: $20 $20

	ld b, b                                          ; $664b: $40
	ld b, b                                          ; $664c: $40
	reti                                             ; $664d: $d9


	rst $38                                          ; $664e: $ff
	sub a                                            ; $664f: $97
	add e                                            ; $6650: $83
	add c                                            ; $6651: $81
	add c                                            ; $6652: $81
	add e                                            ; $6653: $83
	add l                                            ; $6654: $85
	add l                                            ; $6655: $85
	add h                                            ; $6656: $84
	add l                                            ; $6657: $85
	ret c                                            ; $6658: $d8

	rst $38                                          ; $6659: $ff
	ei                                               ; $665a: $fb
	sbc [hl]                                         ; $665b: $9e
	add b                                            ; $665c: $80
	reti                                             ; $665d: $d9


	rst $38                                          ; $665e: $ff
	sub a                                            ; $665f: $97
	pop bc                                           ; $6660: $c1
	ld [bc], a                                       ; $6661: $02
	inc d                                            ; $6662: $14
	db $e4                                           ; $6663: $e4
	inc [hl]                                         ; $6664: $34
	ld d, l                                          ; $6665: $55
	sub l                                            ; $6666: $95
	sub [hl]                                         ; $6667: $96
	ld c, e                                          ; $6668: $4b
	ldh [$9e], a                                     ; $6669: $e0 $9e

jr_01d_666b:
	nop                                              ; $666b: $00
	reti                                             ; $666c: $d9


	rst $38                                          ; $666d: $ff
	sbc d                                            ; $666e: $9a
	ret nz                                           ; $666f: $c0

	and b                                            ; $6670: $a0
	sub b                                            ; $6671: $90
	sub b                                            ; $6672: $90
	sub d                                            ; $6673: $92
	sbc $10                                          ; $6674: $de $10
	ld c, e                                          ; $6676: $4b
	ldh [$9e], a                                     ; $6677: $e0 $9e
	inc bc                                           ; $6679: $03
	ld h, e                                          ; $667a: $63
	pop af                                           ; $667b: $f1
	sbc e                                            ; $667c: $9b
	inc bc                                           ; $667d: $03

Jump_01d_667e:
	inc b                                            ; $667e: $04
	nop                                              ; $667f: $00
	and b                                            ; $6680: $a0
	ld e, e                                          ; $6681: $5b
	ret nc                                           ; $6682: $d0

	ld l, e                                          ; $6683: $6b
	ldh [$9e], a                                     ; $6684: $e0 $9e
	jp nz, $ffd9                                     ; $6686: $c2 $d9 $ff

	sub a                                            ; $6689: $97
	ld [bc], a                                       ; $668a: $02
	rst JumpTable                                          ; $668b: $c7
	ld [hl+], a                                      ; $668c: $22
	inc hl                                           ; $668d: $23
	ld h, $26                                        ; $668e: $26 $26
	ld [hl+], a                                      ; $6690: $22
	ld b, d                                          ; $6691: $42
	ld c, e                                          ; $6692: $4b
	ldh [$9e], a                                     ; $6693: $e0 $9e
	ld [bc], a                                       ; $6695: $02
	ld h, e                                          ; $6696: $63
	ldh [$9d], a                                     ; $6697: $e0 $9d
	ld h, d                                          ; $6699: $62
	and d                                            ; $669a: $a2
	sbc $22                                          ; $669b: $de $22
	rst SubAFromDE                                          ; $669d: $df
	ld b, d                                          ; $669e: $42
	daa                                              ; $669f: $27
	add b                                            ; $66a0: $80
	db $db                                           ; $66a1: $db
	inc b                                            ; $66a2: $04
	sbc l                                            ; $66a3: $9d
	inc d                                            ; $66a4: $14
	ld [de], a                                       ; $66a5: $12
	daa                                              ; $66a6: $27
	ldh [$9c], a                                     ; $66a7: $e0 $9c
	rlca                                             ; $66a9: $07
	jr nz, jr_01d_66bc                               ; $66aa: $20 $10

	sbc $11                                          ; $66ac: $de $11
	sbc [hl]                                         ; $66ae: $9e
	ld bc, $3063                                     ; $66af: $01 $63 $30
	ld [hl], e                                       ; $66b2: $73
	ldh [$df], a                                     ; $66b3: $e0 $df
	ld d, b                                          ; $66b5: $50
	ld h, e                                          ; $66b6: $63
	ldh [hDisp0_WY], a                                     ; $66b7: $e0 $88
	ldh a, [rBGP]                                    ; $66b9: $f0 $47
	add b                                            ; $66bb: $80

jr_01d_66bc:
	ld bc, $0202                                     ; $66bc: $01 $02 $02
	ld bc, $0080                                     ; $66bf: $01 $80 $00
	ret nz                                           ; $66c2: $c0

	ldh a, [$f8]                                     ; $66c3: $f0 $f8
	db $fc                                           ; $66c5: $fc
	db $fc                                           ; $66c6: $fc
	cp $fe                                           ; $66c7: $fe $fe
	nop                                              ; $66c9: $00
	ret nz                                           ; $66ca: $c0

	jr nc, jr_01d_66d5                               ; $66cb: $30 $08

	inc b                                            ; $66cd: $04
	inc b                                            ; $66ce: $04
	ld [bc], a                                       ; $66cf: $02
	ld h, e                                          ; $66d0: $63
	sub b                                            ; $66d1: $90
	sbc d                                            ; $66d2: $9a
	ld b, c                                          ; $66d3: $41
	pop af                                           ; $66d4: $f1

jr_01d_66d5:
	ld b, c                                          ; $66d5: $41
	pop bc                                           ; $66d6: $c1
	ld b, c                                          ; $66d7: $41
	ld a, e                                          ; $66d8: $7b
	db $fd                                           ; $66d9: $fd
	adc a                                            ; $66da: $8f
	rst $38                                          ; $66db: $ff
	ld a, a                                          ; $66dc: $7f
	ld a, a                                          ; $66dd: $7f
	ccf                                              ; $66de: $3f
	ccf                                              ; $66df: $3f
	rra                                              ; $66e0: $1f
	rrca                                             ; $66e1: $0f
	inc bc                                           ; $66e2: $03
	add e                                            ; $66e3: $83
	ld b, b                                          ; $66e4: $40
	ld b, b                                          ; $66e5: $40
	jr nz, @+$22                                     ; $66e6: $20 $20

	db $10                                           ; $66e8: $10
	inc c                                            ; $66e9: $0c
	inc bc                                           ; $66ea: $03
	pop af                                           ; $66eb: $f1
	reti                                             ; $66ec: $d9


	rst $38                                          ; $66ed: $ff
	sbc [hl]                                         ; $66ee: $9e
	ld [hl+], a                                      ; $66ef: $22
	ld h, a                                          ; $66f0: $67
	ldh a, [hDisp1_SCY]                                     ; $66f1: $f0 $90
	ld hl, sp+$78                                    ; $66f3: $f8 $78
	ld a, b                                          ; $66f5: $78
	jr c, @+$3a                                      ; $66f6: $38 $38

	jr jr_01d_6702                                   ; $66f8: $18 $08

	add a                                            ; $66fa: $87
	adc b                                            ; $66fb: $88
	ld c, b                                          ; $66fc: $48
	ld c, b                                          ; $66fd: $48
	jr z, @+$2a                                      ; $66fe: $28 $28

	jr @+$0a                                         ; $6700: $18 $08

jr_01d_6702:
	reti                                             ; $6702: $d9


	rst $38                                          ; $6703: $ff
	sbc [hl]                                         ; $6704: $9e
	ld h, b                                          ; $6705: $60
	ld h, a                                          ; $6706: $67
	ldh [rBGP], a                                    ; $6707: $e0 $47
	ld hl, sp-$26                                    ; $6709: $f8 $da
	rst $38                                          ; $670b: $ff
	ld h, a                                          ; $670c: $67
	and a                                            ; $670d: $a7
	daa                                              ; $670e: $27
	ldh [$9e], a                                     ; $670f: $e0 $9e
	add d                                            ; $6711: $82
	dec bc                                           ; $6712: $0b
	ldh [$9e], a                                     ; $6713: $e0 $9e
	ld sp, $e00b                                     ; $6715: $31 $0b $e0
	sbc [hl]                                         ; $6718: $9e
	pop hl                                           ; $6719: $e1
	dec bc                                           ; $671a: $0b
	ldh [$63], a                                     ; $671b: $e0 $63
	jr nc, jr_01d_674a                               ; $671d: $30 $2b

	ldh [rAUD4GO], a                                 ; $671f: $e0 $23
	ld b, b                                          ; $6721: $40
	rst SubAFromDE                                          ; $6722: $df
	cp $df                                           ; $6723: $fe $df
	db $fc                                           ; $6725: $fc
	sub h                                            ; $6726: $94
	ld hl, sp-$10                                    ; $6727: $f8 $f0
	ret nz                                           ; $6729: $c0

	add c                                            ; $672a: $81
	ld [bc], a                                       ; $672b: $02
	ld [bc], a                                       ; $672c: $02
	inc b                                            ; $672d: $04
	inc b                                            ; $672e: $04
	ld [$c030], sp                                   ; $672f: $08 $30 $c0
	pop af                                           ; $6732: $f1
	ld a, [$8f80]                                    ; $6733: $fa $80 $8f
	nop                                              ; $6736: $00
	inc bc                                           ; $6737: $03
	rrca                                             ; $6738: $0f
	rra                                              ; $6739: $1f
	ccf                                              ; $673a: $3f
	ccf                                              ; $673b: $3f
	ld a, a                                          ; $673c: $7f
	ld a, a                                          ; $673d: $7f
	nop                                              ; $673e: $00
	inc bc                                           ; $673f: $03
	inc c                                            ; $6740: $0c
	db $10                                           ; $6741: $10
	jr nz, jr_01d_6764                               ; $6742: $20 $20

	ld b, b                                          ; $6744: $40
	ld b, b                                          ; $6745: $40
	reti                                             ; $6746: $d9


	rst $38                                          ; $6747: $ff
	sub a                                            ; $6748: $97
	add c                                            ; $6749: $81

jr_01d_674a:
	add d                                            ; $674a: $82
	add h                                            ; $674b: $84
	sbc e                                            ; $674c: $9b
	add b                                            ; $674d: $80
	add b                                            ; $674e: $80
	adc a                                            ; $674f: $8f
	add c                                            ; $6750: $81
	ret c                                            ; $6751: $d8

	rst $38                                          ; $6752: $ff
	ei                                               ; $6753: $fb
	sbc [hl]                                         ; $6754: $9e
	add b                                            ; $6755: $80
	reti                                             ; $6756: $d9


	rst $38                                          ; $6757: $ff
	sub a                                            ; $6758: $97
	ld b, b                                          ; $6759: $40
	jr nz, @+$12                                     ; $675a: $20 $10

	db $ed                                           ; $675c: $ed
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	ld hl, sp+$00                                    ; $675f: $f8 $00
	ld c, e                                          ; $6761: $4b
	ldh [$63], a                                     ; $6762: $e0 $63

jr_01d_6764:
	ldh a, [$97]                                     ; $6764: $f0 $97
	nop                                              ; $6766: $00
	ldh [$03], a                                     ; $6767: $e0 $03
	ld hl, sp+$10                                    ; $6769: $f8 $10
	jr nz, jr_01d_67ad                               ; $676b: $20 $40

	ret nz                                           ; $676d: $c0

	inc hl                                           ; $676e: $23
	ldh [$9b], a                                     ; $676f: $e0 $9b
	ld bc, $21f8                                     ; $6771: $01 $f8 $21
	ld b, d                                          ; $6774: $42
	sbc $80                                          ; $6775: $de $80
	inc hl                                           ; $6777: $23
	ldh [$98], a                                     ; $6778: $e0 $98
	ldh [c], a                                       ; $677a: $e2
	ld [bc], a                                       ; $677b: $02
	rst SubAFromBC                                          ; $677c: $e7
	ld [de], a                                       ; $677d: $12
	inc de                                           ; $677e: $13
	ld d, $16                                        ; $677f: $16 $16
	inc hl                                           ; $6781: $23
	ldh [$df], a                                     ; $6782: $e0 $df
	inc b                                            ; $6784: $04
	sbc l                                            ; $6785: $9d
	ld h, h                                          ; $6786: $64
	and h                                            ; $6787: $a4
	sbc $24                                          ; $6788: $de $24
	inc hl                                           ; $678a: $23
	ldh [$9e], a                                     ; $678b: $e0 $9e
	nop                                              ; $678d: $00
	db $db                                           ; $678e: $db
	ld [$c01b], sp                                   ; $678f: $08 $1b $c0
	sbc d                                            ; $6792: $9a
	ld c, a                                          ; $6793: $4f
	inc h                                            ; $6794: $24
	inc h                                            ; $6795: $24
	jr z, jr_01d_67c1                                ; $6796: $28 $29

	rra                                              ; $6798: $1f
	ret nz                                           ; $6799: $c0

	adc c                                            ; $679a: $89
	ld h, b                                          ; $679b: $60
	ld h, $0f                                        ; $679c: $26 $0f
	ld c, a                                          ; $679e: $4f
	ld c, a                                          ; $679f: $4f
	rst GetHLinHL                                          ; $67a0: $cf
	nop                                              ; $67a1: $00
	ret nz                                           ; $67a2: $c0

	ldh a, [$f8]                                     ; $67a3: $f0 $f8
	db $fc                                           ; $67a5: $fc
	db $fc                                           ; $67a6: $fc
	cp $fe                                           ; $67a7: $fe $fe
	nop                                              ; $67a9: $00
	ret nz                                           ; $67aa: $c0

	jr nc, jr_01d_67b5                               ; $67ab: $30 $08

jr_01d_67ad:
	inc b                                            ; $67ad: $04
	inc b                                            ; $67ae: $04
	ld [bc], a                                       ; $67af: $02
	ld [bc], a                                       ; $67b0: $02
	reti                                             ; $67b1: $d9


	rst $38                                          ; $67b2: $ff
	sbc $01                                          ; $67b3: $de $01

jr_01d_67b5:
	sbc [hl]                                         ; $67b5: $9e
	ld h, c                                          ; $67b6: $61
	db $dd                                           ; $67b7: $dd
	pop af                                           ; $67b8: $f1
	rst SubAFromDE                                          ; $67b9: $df
	rst $38                                          ; $67ba: $ff
	rst SubAFromDE                                          ; $67bb: $df
	ld a, a                                          ; $67bc: $7f
	rst SubAFromDE                                          ; $67bd: $df
	ccf                                              ; $67be: $3f
	sub h                                            ; $67bf: $94
	rra                                              ; $67c0: $1f

jr_01d_67c1:
	rrca                                             ; $67c1: $0f
	add d                                            ; $67c2: $82
	add h                                            ; $67c3: $84
	ld c, a                                          ; $67c4: $4f
	ld b, b                                          ; $67c5: $40
	jr nz, jr_01d_67e8                               ; $67c6: $20 $20

	db $10                                           ; $67c8: $10
	inc c                                            ; $67c9: $0c
	inc bc                                           ; $67ca: $03
	ld a, [$f867]                                    ; $67cb: $fa $67 $f8
	reti                                             ; $67ce: $d9


	rst $38                                          ; $67cf: $ff
	sbc h                                            ; $67d0: $9c
	ld de, $ca3b                                     ; $67d1: $11 $3b $ca
	ld l, e                                          ; $67d4: $6b
	ldh a, [hDisp1_SCX]                                     ; $67d5: $f0 $91
	db $fc                                           ; $67d7: $fc
	ld a, h                                          ; $67d8: $7c
	ld a, h                                          ; $67d9: $7c
	inc a                                            ; $67da: $3c
	inc a                                            ; $67db: $3c
	inc e                                            ; $67dc: $1c
	nop                                              ; $67dd: $00
	add e                                            ; $67de: $83
	add h                                            ; $67df: $84
	ld b, h                                          ; $67e0: $44
	ld b, h                                          ; $67e1: $44
	inc h                                            ; $67e2: $24
	inc h                                            ; $67e3: $24
	inc d                                            ; $67e4: $14
	reti                                             ; $67e5: $d9


	rst $38                                          ; $67e6: $ff
	sbc h                                            ; $67e7: $9c

jr_01d_67e8:
	and b                                            ; $67e8: $a0
	jr nc, @+$1a                                     ; $67e9: $30 $18

	ld l, e                                          ; $67eb: $6b
	ldh [$67], a                                     ; $67ec: $e0 $67
	rst JumpTable                                          ; $67ee: $c7
	ld c, a                                          ; $67ef: $4f
	ret nz                                           ; $67f0: $c0

	sbc h                                            ; $67f1: $9c
	add b                                            ; $67f2: $80
	ld b, b                                          ; $67f3: $40
	ld sp, $e013                                     ; $67f4: $31 $13 $e0
	sbc h                                            ; $67f7: $9c
	ld [de], a                                       ; $67f8: $12
	ld [hl+], a                                      ; $67f9: $22
	jp nz, $e013                                     ; $67fa: $c2 $13 $e0

	rst SubAFromDE                                          ; $67fd: $df
	ld b, h                                          ; $67fe: $44
	sbc [hl]                                         ; $67ff: $9e
	inc sp                                           ; $6800: $33
	inc de                                           ; $6801: $13
	ldh [$9d], a                                     ; $6802: $e0 $9d
	jr z, jr_01d_682b                                ; $6804: $28 $25

	rrca                                             ; $6806: $0f
	ret nz                                           ; $6807: $c0

	rst SubAFromDE                                          ; $6808: $df
	ld [bc], a                                       ; $6809: $02
	sbc [hl]                                         ; $680a: $9e
	ld bc, $e013                                     ; $680b: $01 $13 $e0
	sbc h                                            ; $680e: $9c
	ld h, a                                          ; $680f: $67
	ld b, e                                          ; $6810: $43
	pop bc                                           ; $6811: $c1
	dec hl                                           ; $6812: $2b
	ldh [$df], a                                     ; $6813: $e0 $df
	cp $df                                           ; $6815: $fe $df
	db $fc                                           ; $6817: $fc
	sub h                                            ; $6818: $94
	ld hl, sp-$10                                    ; $6819: $f8 $f0
	pop hl                                           ; $681b: $e1
	pop bc                                           ; $681c: $c1
	add d                                            ; $681d: $82
	ld [bc], a                                       ; $681e: $02
	inc b                                            ; $681f: $04
	inc b                                            ; $6820: $04
	ld [$c030], sp                                   ; $6821: $08 $30 $c0
	ld a, [$f867]                                    ; $6824: $fa $67 $f8
	sbc l                                            ; $6827: $9d
	inc c                                            ; $6828: $0c
	inc b                                            ; $6829: $04
	ld c, a                                          ; $682a: $4f

jr_01d_682b:
	ld hl, sp-$0f                                    ; $682b: $f8 $f1
	inc e                                            ; $682d: $1c
	add c                                            ; $682e: $81
	adc a                                            ; $682f: $8f
	nop                                              ; $6830: $00
	inc bc                                           ; $6831: $03
	rrca                                             ; $6832: $0f
	rra                                              ; $6833: $1f
	ccf                                              ; $6834: $3f
	ccf                                              ; $6835: $3f
	ld a, a                                          ; $6836: $7f
	ld a, a                                          ; $6837: $7f
	nop                                              ; $6838: $00
	inc bc                                           ; $6839: $03
	ld c, $18                                        ; $683a: $0e $18
	jr nc, jr_01d_685e                               ; $683c: $30 $20

	ld h, b                                          ; $683e: $60
	ld b, b                                          ; $683f: $40
	reti                                             ; $6840: $d9


	rst $38                                          ; $6841: $ff
	sbc [hl]                                         ; $6842: $9e
	rst JumpTable                                          ; $6843: $c7
	call c, $df80                                    ; $6844: $dc $80 $df
	adc b                                            ; $6847: $88
	ret c                                            ; $6848: $d8

	rst $38                                          ; $6849: $ff
	sbc [hl]                                         ; $684a: $9e
	add b                                            ; $684b: $80
	db $fc                                           ; $684c: $fc
	sbc [hl]                                         ; $684d: $9e
	ld [$ffd9], sp                                   ; $684e: $08 $d9 $ff
	sub a                                            ; $6851: $97
	adc b                                            ; $6852: $88
	ld e, l                                          ; $6853: $5d
	ld a, [bc]                                       ; $6854: $0a
	inc c                                            ; $6855: $0c
	jr jr_01d_6870                                   ; $6856: $18 $18

	add hl, bc                                       ; $6858: $09
	add hl, bc                                       ; $6859: $09
	ret c                                            ; $685a: $d8

jr_01d_685b:
	rst $38                                          ; $685b: $ff
	db $fc                                           ; $685c: $fc
	sbc l                                            ; $685d: $9d

jr_01d_685e:
	ld bc, $d902                                     ; $685e: $01 $02 $d9
	rst $38                                          ; $6861: $ff
	sub a                                            ; $6862: $97
	rlca                                             ; $6863: $07
	adc h                                            ; $6864: $8c
	sub a                                            ; $6865: $97
	add h                                            ; $6866: $84
	add a                                            ; $6867: $87
	add l                                            ; $6868: $85
	inc b                                            ; $6869: $04
	inc b                                            ; $686a: $04
	ld d, e                                          ; $686b: $53
	ldh [$9c], a                                     ; $686c: $e0 $9c
	add b                                            ; $686e: $80
	ld b, b                                          ; $686f: $40

jr_01d_6870:
	and b                                            ; $6870: $a0
	reti                                             ; $6871: $d9


	rst $38                                          ; $6872: $ff
	sub a                                            ; $6873: $97
	ldh a, [rAUD2LOW]                                ; $6874: $f0 $18
	db $f4                                           ; $6876: $f4
	ld de, $08f2                                     ; $6877: $11 $f2 $08
	sub b                                            ; $687a: $90
	ld h, b                                          ; $687b: $60
	ld c, a                                          ; $687c: $4f
	ret nz                                           ; $687d: $c0

	sbc l                                            ; $687e: $9d
	nop                                              ; $687f: $00

jr_01d_6880:
	jr z, jr_01d_685b                                ; $6880: $28 $d9

	rst $38                                          ; $6882: $ff
	sbc [hl]                                         ; $6883: $9e
	dec hl                                           ; $6884: $2b
	ld a, e                                          ; $6885: $7b
	db $d3                                           ; $6886: $d3
	sbc e                                            ; $6887: $9b
	jr nz, @+$12                                     ; $6888: $20 $10

	ld [$4b00], sp                                   ; $688a: $08 $00 $4b
	ldh [$63], a                                     ; $688d: $e0 $63
	ldh a, [$9c]                                     ; $688f: $f0 $9c
	ldh a, [rAUD4LEN]                                ; $6891: $f0 $20

jr_01d_6893:
	ld b, b                                          ; $6893: $40
	db $dd                                           ; $6894: $dd
	add b                                            ; $6895: $80
	ld h, e                                          ; $6896: $63
	ld d, b                                          ; $6897: $50
	ld b, a                                          ; $6898: $47
	ldh [$fa], a                                     ; $6899: $e0 $fa
	sbc [hl]                                         ; $689b: $9e
	ld d, b                                          ; $689c: $50
	ret c                                            ; $689d: $d8

	rst $38                                          ; $689e: $ff
	sbc [hl]                                         ; $689f: $9e
	ld bc, $e033                                     ; $68a0: $01 $33 $e0
	rst $38                                          ; $68a3: $ff
	sub c                                            ; $68a4: $91
	ret nz                                           ; $68a5: $c0

	ldh a, [$f8]                                     ; $68a6: $f0 $f8
	db $fc                                           ; $68a8: $fc
	db $fc                                           ; $68a9: $fc
	cp $fe                                           ; $68aa: $fe $fe
	nop                                              ; $68ac: $00

jr_01d_68ad:
	ret nz                                           ; $68ad: $c0

	ld [hl], b                                       ; $68ae: $70
	jr jr_01d_68bd                                   ; $68af: $18 $0c

	inc b                                            ; $68b1: $04
	ld b, $63                                        ; $68b2: $06 $63
	ld b, b                                          ; $68b4: $40
	sbc [hl]                                         ; $68b5: $9e
	inc bc                                           ; $68b6: $03
	jp c, $d901                                      ; $68b7: $da $01 $d9

	rst $38                                          ; $68ba: $ff
	sbc [hl]                                         ; $68bb: $9e
	add a                                            ; $68bc: $87

jr_01d_68bd:
	db $db                                           ; $68bd: $db
	add b                                            ; $68be: $80
	sbc c                                            ; $68bf: $99
	ret nz                                           ; $68c0: $c0

	ld a, a                                          ; $68c1: $7f
	ld a, a                                          ; $68c2: $7f
	ccf                                              ; $68c3: $3f
	ccf                                              ; $68c4: $3f
	rra                                              ; $68c5: $1f
	sbc $0f                                          ; $68c6: $de $0f
	sbc d                                            ; $68c8: $9a
	ld b, b                                          ; $68c9: $40
	ld h, b                                          ; $68ca: $60
	jr nz, jr_01d_68fd                               ; $68cb: $20 $30

	jr jr_01d_68ad                                   ; $68cd: $18 $de

	ld [$ffd9], sp                                   ; $68cf: $08 $d9 $ff
	sbc [hl]                                         ; $68d2: $9e
	ret z                                            ; $68d3: $c8

	cpl                                              ; $68d4: $2f
	add b                                            ; $68d5: $80
	ret c                                            ; $68d6: $d8

	rst $38                                          ; $68d7: $ff
	sbc [hl]                                         ; $68d8: $9e
	rst SubAFromDE                                          ; $68d9: $df
	dec bc                                           ; $68da: $0b
	ldh [$9e], a                                     ; $68db: $e0 $9e
	sbc h                                            ; $68dd: $9c
	cp $9d                                           ; $68de: $fe $9d
	inc bc                                           ; $68e0: $03
	nop                                              ; $68e1: $00
	ld e, a                                          ; $68e2: $5f
	sub b                                            ; $68e3: $90
	rst SubAFromDE                                          ; $68e4: $df
	ld [bc], a                                       ; $68e5: $02
	ld c, a                                          ; $68e6: $4f
	ldh [$97], a                                     ; $68e7: $e0 $97
	jr z, jr_01d_6893                                ; $68e9: $28 $a8

	add b                                            ; $68eb: $80
	sub b                                            ; $68ec: $90
	ret                                              ; $68ed: $c9


	xor c                                            ; $68ee: $a9
	dec hl                                           ; $68ef: $2b
	ld [hl+], a                                      ; $68f0: $22
	reti                                             ; $68f1: $d9


	rst $38                                          ; $68f2: $ff
	sbc h                                            ; $68f3: $9c
	ld [hl+], a                                      ; $68f4: $22
	and h                                            ; $68f5: $a4
	ld b, h                                          ; $68f6: $44
	ld d, e                                          ; $68f7: $53
	ldh [$9c], a                                     ; $68f8: $e0 $9c
	jr nc, jr_01d_6880                               ; $68fa: $30 $84

	add h                                            ; $68fc: $84

jr_01d_68fd:
	ld a, d                                          ; $68fd: $7a
	sub d                                            ; $68fe: $92
	sbc l                                            ; $68ff: $9d
	add h                                            ; $6900: $84
	sub h                                            ; $6901: $94
	reti                                             ; $6902: $d9


	rst $38                                          ; $6903: $ff
	rst SubAFromDE                                          ; $6904: $df
	sub l                                            ; $6905: $95
	sbc [hl]                                         ; $6906: $9e
	ld h, d                                          ; $6907: $62
	ld d, e                                          ; $6908: $53
	ldh [$97], a                                     ; $6909: $e0 $97
	ld d, b                                          ; $690b: $50
	jr nz, jr_01d_692e                               ; $690c: $20 $20

	ldh a, [rAUD4ENV]                                ; $690e: $f0 $21
	ld [hl+], a                                      ; $6910: $22
	inc l                                            ; $6911: $2c
	ldh [$63], a                                     ; $6912: $e0 $63
	ret nc                                           ; $6914: $d0

	sbc l                                            ; $6915: $9d
	ld hl, $53c0                                     ; $6916: $21 $c0 $53
	ldh [rIE], a                                     ; $6919: $e0 $ff
	sbc d                                            ; $691b: $9a
	ccf                                              ; $691c: $3f
	ld [bc], a                                       ; $691d: $02
	add h                                            ; $691e: $84
	ld c, b                                          ; $691f: $48
	jr z, jr_01d_6984                                ; $6920: $28 $62

	add b                                            ; $6922: $80
	sbc h                                            ; $6923: $9c
	ld c, b                                          ; $6924: $48
	add h                                            ; $6925: $84
	inc bc                                           ; $6926: $03
	halt                                             ; $6927: $76
	jr nc, jr_01d_6988                               ; $6928: $30 $5e

	pop bc                                           ; $692a: $c1
	db $db                                           ; $692b: $db
	ld b, c                                          ; $692c: $41
	adc [hl]                                         ; $692d: $8e

jr_01d_692e:
	inc bc                                           ; $692e: $03
	cp $fe                                           ; $692f: $fe $fe
	db $fc                                           ; $6931: $fc
	db $fc                                           ; $6932: $fc
	ld hl, sp-$10                                    ; $6933: $f8 $f0
	ret nz                                           ; $6935: $c0

	nop                                              ; $6936: $00
	ld [bc], a                                       ; $6937: $02
	ld b, [hl]                                       ; $6938: $46
	ld b, h                                          ; $6939: $44
	inc c                                            ; $693a: $0c
	jr jr_01d_69ad                                   ; $693b: $18 $70

	ret nz                                           ; $693d: $c0

	nop                                              ; $693e: $00
	db $dd                                           ; $693f: $dd
	rlca                                             ; $6940: $07
	ld a, [hl]                                       ; $6941: $7e
	call nc, $ddff                                   ; $6942: $d4 $ff $dd
	dec b                                            ; $6945: $05
	ld [hl], a                                       ; $6946: $77
	ld hl, sp-$0f                                    ; $6947: $f8 $f1
	res 0, b                                         ; $6949: $cb $80
	adc a                                            ; $694b: $8f
	nop                                              ; $694c: $00
	inc bc                                           ; $694d: $03
	rrca                                             ; $694e: $0f
	rra                                              ; $694f: $1f
	ccf                                              ; $6950: $3f
	ccf                                              ; $6951: $3f
	ld a, a                                          ; $6952: $7f
	ld a, a                                          ; $6953: $7f
	nop                                              ; $6954: $00
	inc bc                                           ; $6955: $03
	inc c                                            ; $6956: $0c
	db $10                                           ; $6957: $10
	jr nz, jr_01d_697a                               ; $6958: $20 $20

	ld b, b                                          ; $695a: $40
	ld b, b                                          ; $695b: $40
	reti                                             ; $695c: $d9


	rst $38                                          ; $695d: $ff
	reti                                             ; $695e: $d9


	add b                                            ; $695f: $80
	ret c                                            ; $6960: $d8

	rst $38                                          ; $6961: $ff
	ei                                               ; $6962: $fb
	sbc [hl]                                         ; $6963: $9e
	adc b                                            ; $6964: $88
	reti                                             ; $6965: $d9


	rst $38                                          ; $6966: $ff
	sbc d                                            ; $6967: $9a
	adc b                                            ; $6968: $88

jr_01d_6969:
	adc c                                            ; $6969: $89
	adc c                                            ; $696a: $89
	adc b                                            ; $696b: $88
	ld sp, hl                                        ; $696c: $f9
	sbc $89                                          ; $696d: $de $89
	ld c, a                                          ; $696f: $4f
	ldh [$df], a                                     ; $6970: $e0 $df
	ld bc, $ffd9                                     ; $6972: $01 $d9 $ff
	rst SubAFromDE                                          ; $6975: $df
	ld [hl+], a                                      ; $6976: $22
	sbc c                                            ; $6977: $99
	inc hl                                           ; $6978: $23
	ld [hl+], a                                      ; $6979: $22

jr_01d_697a:
	inc h                                            ; $697a: $24
	ld hl, $0000                                     ; $697b: $21 $00 $00
	ld c, a                                          ; $697e: $4f
	ldh [$5f], a                                     ; $697f: $e0 $5f
	and b                                            ; $6981: $a0
	rst $38                                          ; $6982: $ff
	sbc c                                            ; $6983: $99

jr_01d_6984:
	ret nz                                           ; $6984: $c0

	ld c, b                                          ; $6985: $48
	ld b, a                                          ; $6986: $47
	ld b, b                                          ; $6987: $40

jr_01d_6988:
	add b                                            ; $6988: $80
	ret nz                                           ; $6989: $c0

	ld c, e                                          ; $698a: $4b
	and b                                            ; $698b: $a0
	sbc [hl]                                         ; $698c: $9e
	ld [de], a                                       ; $698d: $12
	reti                                             ; $698e: $d9


	rst $38                                          ; $698f: $ff
	db $dd                                           ; $6990: $dd
	ld [de], a                                       ; $6991: $12
	sbc e                                            ; $6992: $9b
	add d                                            ; $6993: $82
	ld [bc], a                                       ; $6994: $02
	inc b                                            ; $6995: $04
	inc b                                            ; $6996: $04
	ld c, e                                          ; $6997: $4b
	ldh [$63], a                                     ; $6998: $e0 $63
	ret nz                                           ; $699a: $c0

	sbc [hl]                                         ; $699b: $9e
	jr nz, jr_01d_697a                               ; $699c: $20 $dc

	inc b                                            ; $699e: $04
	rst SubAFromDE                                          ; $699f: $df
	ld [$e04b], sp                                   ; $69a0: $08 $4b $e0
	ld h, e                                          ; $69a3: $63
	sub b                                            ; $69a4: $90
	rst $38                                          ; $69a5: $ff
	sbc [hl]                                         ; $69a6: $9e
	ld h, [hl]                                       ; $69a7: $66
	db $dd                                           ; $69a8: $dd
	rst $38                                          ; $69a9: $ff
	adc [hl]                                         ; $69aa: $8e
	ld a, [hl]                                       ; $69ab: $7e
	nop                                              ; $69ac: $00

jr_01d_69ad:
	ret nz                                           ; $69ad: $c0

	ldh a, [$f8]                                     ; $69ae: $f0 $f8
	db $fc                                           ; $69b0: $fc
	db $fc                                           ; $69b1: $fc
	cp $fe                                           ; $69b2: $fe $fe
	nop                                              ; $69b4: $00
	ret nz                                           ; $69b5: $c0

	jr nc, @+$0a                                     ; $69b6: $30 $08

	inc b                                            ; $69b8: $04
	inc b                                            ; $69b9: $04
	ld [bc], a                                       ; $69ba: $02
	ld [bc], a                                       ; $69bb: $02
	reti                                             ; $69bc: $d9


	rst $38                                          ; $69bd: $ff
	reti                                             ; $69be: $d9


	ld bc, $7fdf                                     ; $69bf: $01 $df $7f
	rst SubAFromDE                                          ; $69c2: $df
	ccf                                              ; $69c3: $3f
	sbc h                                            ; $69c4: $9c
	rra                                              ; $69c5: $1f
	rrca                                             ; $69c6: $0f
	inc bc                                           ; $69c7: $03
	ld a, e                                          ; $69c8: $7b
	ld h, [hl]                                       ; $69c9: $66
	rst SubAFromDE                                          ; $69ca: $df
	jr nz, jr_01d_6969                               ; $69cb: $20 $9c

	db $10                                           ; $69cd: $10
	inc c                                            ; $69ce: $0c
	inc bc                                           ; $69cf: $03
	ldh a, [$d9]                                     ; $69d0: $f0 $d9
	rst $38                                          ; $69d2: $ff
	rst SubAFromDE                                          ; $69d3: $df
	adc c                                            ; $69d4: $89
	db $fc                                           ; $69d5: $fc
	sub c                                            ; $69d6: $91
	add a                                            ; $69d7: $87
	ld hl, sp+$78                                    ; $69d8: $f8 $78
	ld a, b                                          ; $69da: $78
	jr c, jr_01d_6a15                                ; $69db: $38 $38

	jr @+$0a                                         ; $69dd: $18 $08

	nop                                              ; $69df: $00
	adc b                                            ; $69e0: $88
	ld c, b                                          ; $69e1: $48
	ld c, b                                          ; $69e2: $48
	jr z, jr_01d_6a0d                                ; $69e3: $28 $28

	ld a, e                                          ; $69e5: $7b
	ld hl, sp-$27                                    ; $69e6: $f8 $d9
	rst $38                                          ; $69e8: $ff
	sbc l                                            ; $69e9: $9d
	ld hl, $6f22                                     ; $69ea: $21 $22 $6f
	pop de                                           ; $69ed: $d1
	daa                                              ; $69ee: $27
	ret nz                                           ; $69ef: $c0

	ld h, a                                          ; $69f0: $67
	pop af                                           ; $69f1: $f1
	daa                                              ; $69f2: $27
	ldh [$9d], a                                     ; $69f3: $e0 $9d
	ld [$0f10], sp                                   ; $69f5: $08 $10 $0f
	ldh [$9d], a                                     ; $69f8: $e0 $9d
	db $10                                           ; $69fa: $10
	ld h, b                                          ; $69fb: $60
	rrca                                             ; $69fc: $0f
	ldh [$9d], a                                     ; $69fd: $e0 $9d
	inc a                                            ; $69ff: $3c
	jr jr_01d_6a31                                   ; $6a00: $18 $2f

	ldh [$df], a                                     ; $6a02: $e0 $df
	cp $df                                           ; $6a04: $fe $df
	db $fc                                           ; $6a06: $fc
	sbc d                                            ; $6a07: $9a
	ld hl, sp-$10                                    ; $6a08: $f8 $f0
	ret nz                                           ; $6a0a: $c0

	nop                                              ; $6a0b: $00
	ld [bc], a                                       ; $6a0c: $02

jr_01d_6a0d:
	ld a, d                                          ; $6a0d: $7a
	or h                                             ; $6a0e: $b4
	sbc h                                            ; $6a0f: $9c
	ld [$c030], sp                                   ; $6a10: $08 $30 $c0
	ldh a, [$fe]                                     ; $6a13: $f0 $fe

jr_01d_6a15:
	add b                                            ; $6a15: $80
	adc a                                            ; $6a16: $8f
	nop                                              ; $6a17: $00
	inc bc                                           ; $6a18: $03
	rrca                                             ; $6a19: $0f
	rra                                              ; $6a1a: $1f
	ccf                                              ; $6a1b: $3f
	ccf                                              ; $6a1c: $3f
	ld a, a                                          ; $6a1d: $7f
	ld a, a                                          ; $6a1e: $7f
	nop                                              ; $6a1f: $00
	inc bc                                           ; $6a20: $03
	inc c                                            ; $6a21: $0c
	db $10                                           ; $6a22: $10
	jr nz, jr_01d_6a45                               ; $6a23: $20 $20

	ld b, b                                          ; $6a25: $40
	ld b, b                                          ; $6a26: $40
	reti                                             ; $6a27: $d9


	rst $38                                          ; $6a28: $ff
	sub a                                            ; $6a29: $97
	add e                                            ; $6a2a: $83
	add c                                            ; $6a2b: $81
	add c                                            ; $6a2c: $81
	add e                                            ; $6a2d: $83
	add l                                            ; $6a2e: $85
	add l                                            ; $6a2f: $85
	add h                                            ; $6a30: $84

jr_01d_6a31:
	add l                                            ; $6a31: $85
	ret c                                            ; $6a32: $d8

	rst $38                                          ; $6a33: $ff
	ei                                               ; $6a34: $fb
	sbc [hl]                                         ; $6a35: $9e
	add b                                            ; $6a36: $80
	reti                                             ; $6a37: $d9


	rst $38                                          ; $6a38: $ff
	sub a                                            ; $6a39: $97
	ret nz                                           ; $6a3a: $c0

	nop                                              ; $6a3b: $00
	db $10                                           ; $6a3c: $10
	ldh [$31], a                                     ; $6a3d: $e0 $31
	ld d, c                                          ; $6a3f: $51
	sub c                                            ; $6a40: $91
	sub h                                            ; $6a41: $94
	ld c, e                                          ; $6a42: $4b
	ldh [$9e], a                                     ; $6a43: $e0 $9e

jr_01d_6a45:
	ldh [$d9], a                                     ; $6a45: $e0 $d9
	rst $38                                          ; $6a47: $ff
	sub a                                            ; $6a48: $97
	jr nz, jr_01d_6a6c                               ; $6a49: $20 $21

	ld a, [hl+]                                      ; $6a4b: $2a
	ld hl, sp+$2c                                    ; $6a4c: $f8 $2c
	jr z, jr_01d_6a98                                ; $6a4e: $28 $48

	adc b                                            ; $6a50: $88
	ld c, e                                          ; $6a51: $4b
	ldh [$9e], a                                     ; $6a52: $e0 $9e
	nop                                              ; $6a54: $00
	reti                                             ; $6a55: $d9


	rst $38                                          ; $6a56: $ff
	sub a                                            ; $6a57: $97
	ldh [rAUD1SWEEP], a                              ; $6a58: $e0 $10
	dec bc                                           ; $6a5a: $0b
	ld [$0909], sp                                   ; $6a5b: $08 $09 $09
	ld a, [bc]                                       ; $6a5e: $0a
	ld [de], a                                       ; $6a5f: $12
	daa                                              ; $6a60: $27
	and b                                            ; $6a61: $a0
	sub a                                            ; $6a62: $97
	add b                                            ; $6a63: $80
	sub b                                            ; $6a64: $90
	ret z                                            ; $6a65: $c8

	xor b                                            ; $6a66: $a8
	dec hl                                           ; $6a67: $2b
	jr nz, jr_01d_6a8a                               ; $6a68: $20 $20

	and b                                            ; $6a6a: $a0
	ld c, e                                          ; $6a6b: $4b

jr_01d_6a6c:
	ldh [$9e], a                                     ; $6a6c: $e0 $9e
	ld bc, $ffd9                                     ; $6a6e: $01 $d9 $ff
	sub a                                            ; $6a71: $97
	ld bc, $6107                                     ; $6a72: $01 $07 $61
	sub c                                            ; $6a75: $91
	ld a, [bc]                                       ; $6a76: $0a
	ld [$6210], sp                                   ; $6a77: $08 $10 $62
	daa                                              ; $6a7a: $27
	and b                                            ; $6a7b: $a0
	sub a                                            ; $6a7c: $97
	nop                                              ; $6a7d: $00
	ldh [c], a                                       ; $6a7e: $e2
	ld [bc], a                                       ; $6a7f: $02
	pop hl                                           ; $6a80: $e1
	rla                                              ; $6a81: $17
	ld de, $2010                                     ; $6a82: $11 $10 $20
	inc hl                                           ; $6a85: $23
	ldh [$99], a                                     ; $6a86: $e0 $99
	ld b, b                                          ; $6a88: $40
	ld h, b                                          ; $6a89: $60

jr_01d_6a8a:
	sub c                                            ; $6a8a: $91
	ld d, $20                                        ; $6a8b: $16 $20
	add b                                            ; $6a8d: $80
	ld h, e                                          ; $6a8e: $63
	sub b                                            ; $6a8f: $90
	ld l, e                                          ; $6a90: $6b
	ldh [$9e], a                                     ; $6a91: $e0 $9e
	ld [bc], a                                       ; $6a93: $02
	reti                                             ; $6a94: $d9


	rst $38                                          ; $6a95: $ff
	adc b                                            ; $6a96: $88
	ld [bc], a                                       ; $6a97: $02

jr_01d_6a98:
	rlca                                             ; $6a98: $07
	jp nz, $1222                                     ; $6a99: $c2 $22 $12

	inc d                                            ; $6a9c: $14
	inc h                                            ; $6a9d: $24
	push bc                                          ; $6a9e: $c5
	nop                                              ; $6a9f: $00
	ret nz                                           ; $6aa0: $c0

	ldh a, [$f8]                                     ; $6aa1: $f0 $f8
	db $fc                                           ; $6aa3: $fc
	db $fc                                           ; $6aa4: $fc
	cp $fe                                           ; $6aa5: $fe $fe
	nop                                              ; $6aa7: $00
	ret nz                                           ; $6aa8: $c0

	jr nc, @+$0a                                     ; $6aa9: $30 $08

	inc b                                            ; $6aab: $04
	inc b                                            ; $6aac: $04
	ld [bc], a                                       ; $6aad: $02
	ld h, e                                          ; $6aae: $63
	ldh [$9a], a                                     ; $6aaf: $e0 $9a
	ld bc, $01e1                                     ; $6ab1: $01 $e1 $01
	pop hl                                           ; $6ab4: $e1
	ld de, $01de                                     ; $6ab5: $11 $de $01
	rst SubAFromDE                                          ; $6ab8: $df
	ld a, a                                          ; $6ab9: $7f
	rst SubAFromDE                                          ; $6aba: $df
	ccf                                              ; $6abb: $3f
	sub h                                            ; $6abc: $94
	rra                                              ; $6abd: $1f
	rrca                                             ; $6abe: $0f
	inc bc                                           ; $6abf: $03
	nop                                              ; $6ac0: $00
	ld b, e                                          ; $6ac1: $43
	ld b, b                                          ; $6ac2: $40
	jr nz, jr_01d_6ae5                               ; $6ac3: $20 $20

	db $10                                           ; $6ac5: $10
	inc c                                            ; $6ac6: $0c
	inc bc                                           ; $6ac7: $03
	ldh a, [$d9]                                     ; $6ac8: $f0 $d9
	rst $38                                          ; $6aca: $ff
	sbc [hl]                                         ; $6acb: $9e
	ld [hl+], a                                      ; $6acc: $22
	ei                                               ; $6acd: $fb
	adc [hl]                                         ; $6ace: $8e
	add e                                            ; $6acf: $83
	db $fc                                           ; $6ad0: $fc
	ld a, h                                          ; $6ad1: $7c
	ld a, h                                          ; $6ad2: $7c
	inc a                                            ; $6ad3: $3c
	inc a                                            ; $6ad4: $3c
	inc e                                            ; $6ad5: $1c
	inc c                                            ; $6ad6: $0c
	inc b                                            ; $6ad7: $04
	add h                                            ; $6ad8: $84
	ld b, h                                          ; $6ad9: $44
	ld b, h                                          ; $6ada: $44
	inc h                                            ; $6adb: $24
	inc h                                            ; $6adc: $24
	inc d                                            ; $6add: $14
	inc c                                            ; $6ade: $0c
	inc b                                            ; $6adf: $04
	reti                                             ; $6ae0: $d9


	rst $38                                          ; $6ae1: $ff
	sbc [hl]                                         ; $6ae2: $9e
	db $10                                           ; $6ae3: $10
	ld l, e                                          ; $6ae4: $6b

jr_01d_6ae5:
	pop de                                           ; $6ae5: $d1
	daa                                              ; $6ae6: $27
	ret nz                                           ; $6ae7: $c0

	sbc [hl]                                         ; $6ae8: $9e
	ld h, b                                          ; $6ae9: $60
	dec bc                                           ; $6aea: $0b
	ldh [$9e], a                                     ; $6aeb: $e0 $9e
	ld b, b                                          ; $6aed: $40
	dec bc                                           ; $6aee: $0b
	ldh [$9e], a                                     ; $6aef: $e0 $9e
	ld bc, $e00b                                     ; $6af1: $01 $0b $e0
	ld a, [hl]                                       ; $6af4: $7e
	jr nc, @+$11                                     ; $6af5: $30 $0f

	ldh [$67], a                                     ; $6af7: $e0 $67
	pop af                                           ; $6af9: $f1
	daa                                              ; $6afa: $27
	ldh [$9e], a                                     ; $6afb: $e0 $9e
	inc b                                            ; $6afd: $04
	dec hl                                           ; $6afe: $2b
	ldh [$df], a                                     ; $6aff: $e0 $df
	cp $df                                           ; $6b01: $fe $df
	db $fc                                           ; $6b03: $fc
	sub l                                            ; $6b04: $95
	ld hl, sp-$10                                    ; $6b05: $f8 $f0
	ret nz                                           ; $6b07: $c0

	nop                                              ; $6b08: $00
	ldh a, [c]                                       ; $6b09: $f2
	ld [bc], a                                       ; $6b0a: $02
	inc b                                            ; $6b0b: $04
	inc b                                            ; $6b0c: $04
	ld [$6b30], sp                                   ; $6b0d: $08 $30 $6b
	sbc d                                            ; $6b10: $9a
	or $1c                                           ; $6b11: $f6 $1c
	add c                                            ; $6b13: $81
	rst $38                                          ; $6b14: $ff
	sbc c                                            ; $6b15: $99
	ld bc, $0703                                     ; $6b16: $01 $03 $07
	rlca                                             ; $6b19: $07
	rrca                                             ; $6b1a: $0f
	rrca                                             ; $6b1b: $0f
	ld a, e                                          ; $6b1c: $7b
	ld hl, sp-$66                                    ; $6b1d: $f8 $9a
	ld [bc], a                                       ; $6b1f: $02
	inc b                                            ; $6b20: $04
	inc b                                            ; $6b21: $04
	add hl, bc                                       ; $6b22: $09
	add hl, bc                                       ; $6b23: $09
	reti                                             ; $6b24: $d9


	rra                                              ; $6b25: $1f
	sbc l                                            ; $6b26: $9d
	ld [de], a                                       ; $6b27: $12
	inc de                                           ; $6b28: $13
	call c, $9c10                                    ; $6b29: $dc $10 $9c
	inc de                                           ; $6b2c: $13
	rra                                              ; $6b2d: $1f
	ld a, a                                          ; $6b2e: $7f
	db $db                                           ; $6b2f: $db
	rst $38                                          ; $6b30: $ff
	sub a                                            ; $6b31: $97
	rra                                              ; $6b32: $1f
	ld h, b                                          ; $6b33: $60
	add b                                            ; $6b34: $80
	nop                                              ; $6b35: $00
	sub b                                            ; $6b36: $90
	sub b                                            ; $6b37: $90
	rst $38                                          ; $6b38: $ff
	db $10                                           ; $6b39: $10
	reti                                             ; $6b3a: $d9


	rst $38                                          ; $6b3b: $ff
	ld a, a                                          ; $6b3c: $7f
	rst FarCall                                          ; $6b3d: $f7
	db $dd                                           ; $6b3e: $dd
	ld b, h                                          ; $6b3f: $44
	sbc l                                            ; $6b40: $9d
	add h                                            ; $6b41: $84
	inc bc                                           ; $6b42: $03
	ret c                                            ; $6b43: $d8

	rst $38                                          ; $6b44: $ff
	cp $9b                                           ; $6b45: $fe $9b
	ld [bc], a                                       ; $6b47: $02
	ld a, $02                                        ; $6b48: $3e $02
	ld a, $d9                                        ; $6b4a: $3e $d9
	rst $38                                          ; $6b4c: $ff
	sub a                                            ; $6b4d: $97
	ld [bc], a                                       ; $6b4e: $02
	add c                                            ; $6b4f: $81
	ccf                                              ; $6b50: $3f
	add hl, bc                                       ; $6b51: $09
	rrca                                             ; $6b52: $0f
	adc c                                            ; $6b53: $89
	cp a                                             ; $6b54: $bf
	add c                                            ; $6b55: $81
	ld d, a                                          ; $6b56: $57
	ldh [$9b], a                                     ; $6b57: $e0 $9b
	add b                                            ; $6b59: $80
	ld hl, sp-$80                                    ; $6b5a: $f8 $80
	ld hl, sp-$27                                    ; $6b5c: $f8 $d9
	rst $38                                          ; $6b5e: $ff
	ld a, a                                          ; $6b5f: $7f
	or d                                             ; $6b60: $b2
	sbc c                                            ; $6b61: $99
	ld hl, sp+$20                                    ; $6b62: $f8 $20
	ldh [rAUD4LEN], a                                ; $6b64: $e0 $20
	ld a, [$5701]                                    ; $6b66: $fa $01 $57
	ldh [$fd], a                                     ; $6b69: $e0 $fd
	ld c, e                                          ; $6b6b: $4b
	pop af                                           ; $6b6c: $f1
	ld h, e                                          ; $6b6d: $63
	ldh a, [$27]                                     ; $6b6e: $f0 $27
	ldh [$9d], a                                     ; $6b70: $e0 $9d

jr_01d_6b72:
	ld hl, sp-$02                                    ; $6b72: $f8 $fe
	db $db                                           ; $6b74: $db
	rst $38                                          ; $6b75: $ff
	sbc h                                            ; $6b76: $9c
	ld hl, sp+$06                                    ; $6b77: $f8 $06
	ld bc, $e033                                     ; $6b79: $01 $33 $e0
	ld a, e                                          ; $6b7c: $7b
	adc d                                            ; $6b7d: $8a
	sbc d                                            ; $6b7e: $9a
	ret nz                                           ; $6b7f: $c0

	ldh [$e0], a                                     ; $6b80: $e0 $e0
	ldh a, [$f0]                                     ; $6b82: $f0 $f0
	ld a, e                                          ; $6b84: $7b
	ld hl, sp-$66                                    ; $6b85: $f8 $9a
	ld b, b                                          ; $6b87: $40
	jr nz, jr_01d_6baa                               ; $6b88: $20 $20

	db $10                                           ; $6b8a: $10
	db $10                                           ; $6b8b: $10
	reti                                             ; $6b8c: $d9


	ld hl, sp-$27                                    ; $6b8d: $f8 $d9
	ld [$1fd9], sp                                   ; $6b8f: $08 $d9 $1f
	reti                                             ; $6b92: $d9


	db $10                                           ; $6b93: $10
	rst SubAFromDE                                          ; $6b94: $df
	rrca                                             ; $6b95: $0f
	rst SubAFromDE                                          ; $6b96: $df
	rlca                                             ; $6b97: $07
	sbc [hl]                                         ; $6b98: $9e
	inc bc                                           ; $6b99: $03
	ld a, e                                          ; $6b9a: $7b
	or l                                             ; $6b9b: $b5
	rst SubAFromDE                                          ; $6b9c: $df
	ld [$04df], sp                                   ; $6b9d: $08 $df $04
	sbc [hl]                                         ; $6ba0: $9e
	ld [bc], a                                       ; $6ba1: $02
	ld a, e                                          ; $6ba2: $7b
	ld hl, sp+$63                                    ; $6ba3: $f8 $63
	or b                                             ; $6ba5: $b0
	sbc c                                            ; $6ba6: $99
	ld [bc], a                                       ; $6ba7: $02
	ld [de], a                                       ; $6ba8: $12
	db $10                                           ; $6ba9: $10

jr_01d_6baa:
	ccf                                              ; $6baa: $3f
	db $10                                           ; $6bab: $10
	rla                                              ; $6bac: $17
	ld l, e                                          ; $6bad: $6b
	nop                                              ; $6bae: $00
	sub [hl]                                         ; $6baf: $96
	ld a, a                                          ; $6bb0: $7f
	rra                                              ; $6bb1: $1f
	jr nz, @+$22                                     ; $6bb2: $20 $20

	jr z, jr_01d_6bdd                                ; $6bb4: $28 $27

	nop                                              ; $6bb6: $00
	add b                                            ; $6bb7: $80
	ld h, b                                          ; $6bb8: $60
	ld h, d                                          ; $6bb9: $62
	ldh a, [$7f]                                     ; $6bba: $f0 $7f
	db $f4                                           ; $6bbc: $f4
	ld a, a                                          ; $6bbd: $7f
	ld l, $ff                                        ; $6bbe: $2e $ff
	sbc l                                            ; $6bc0: $9d
	inc bc                                           ; $6bc1: $03
	cp h                                             ; $6bc2: $bc
	ld d, a                                          ; $6bc3: $57
	ld de, $6afe                                     ; $6bc4: $11 $fe $6a
	jp nz, $f073                                     ; $6bc7: $c2 $73 $f0

	sbc d                                            ; $6bca: $9a
	jr nz, jr_01d_6bee                               ; $6bcb: $20 $21

	jr nz, @-$5e                                     ; $6bcd: $20 $a0

	jr nz, jr_01d_6baa                               ; $6bcf: $20 $d9

	rst $38                                          ; $6bd1: $ff
	rst SubAFromDE                                          ; $6bd2: $df
	jr nz, jr_01d_6b72                               ; $6bd3: $20 $9d

	inc d                                            ; $6bd5: $14
	ld [$214f], sp                                   ; $6bd6: $08 $4f $21
	rst SubAFromDE                                          ; $6bd9: $df
	ld [bc], a                                       ; $6bda: $02
	sbc e                                            ; $6bdb: $9b
	ccf                                              ; $6bdc: $3f

jr_01d_6bdd:
	add d                                            ; $6bdd: $82
	adc [hl]                                         ; $6bde: $8e
	sub d                                            ; $6bdf: $92
	reti                                             ; $6be0: $d9


	rst $38                                          ; $6be1: $ff
	sbc e                                            ; $6be2: $9b
	sub d                                            ; $6be3: $92
	ld c, $02                                        ; $6be4: $0e $02
	inc b                                            ; $6be6: $04
	ld c, a                                          ; $6be7: $4f
	ldh [$df], a                                     ; $6be8: $e0 $df
	ld [$bf9b], sp                                   ; $6bea: $08 $9b $bf
	inc b                                            ; $6bed: $04

jr_01d_6bee:
	rra                                              ; $6bee: $1f
	ld [bc], a                                       ; $6bef: $02
	reti                                             ; $6bf0: $d9


	rst $38                                          ; $6bf1: $ff
	sbc e                                            ; $6bf2: $9b
	ld bc, $2020                                     ; $6bf3: $01 $20 $20
	rra                                              ; $6bf6: $1f
	ld b, [hl]                                       ; $6bf7: $46
	pop hl                                           ; $6bf8: $e1
	sbc e                                            ; $6bf9: $9b
	add hl, de                                       ; $6bfa: $19
	ccf                                              ; $6bfb: $3f
	cp a                                             ; $6bfc: $bf
	ccf                                              ; $6bfd: $3f
	db $db                                           ; $6bfe: $db
	rst $38                                          ; $6bff: $ff
	sub [hl]                                         ; $6c00: $96
	cp $f8                                           ; $6c01: $fe $f8
	ccf                                              ; $6c03: $3f
	rra                                              ; $6c04: $1f
	rrca                                             ; $6c05: $0f
	ld b, $00                                        ; $6c06: $06 $00
	ld bc, wShiftedFarTextByteAddr                                     ; $6c08: $01 $06 $d8
	ld hl, sp-$23                                    ; $6c0b: $f8 $dd
	ld [$889e], sp                                   ; $6c0d: $08 $9e $88
	sbc $c8                                          ; $6c10: $de $c8
	rst SubAFromDE                                          ; $6c12: $df
	ldh a, [$df]                                     ; $6c13: $f0 $df
	ldh [$9e], a                                     ; $6c15: $e0 $9e
	ret nz                                           ; $6c17: $c0

	ld a, e                                          ; $6c18: $7b
	ld h, [hl]                                       ; $6c19: $66
	sbc d                                            ; $6c1a: $9a
	ret nc                                           ; $6c1b: $d0

	sub b                                            ; $6c1c: $90
	jr nz, @+$22                                     ; $6c1d: $20 $20

	ld b, b                                          ; $6c1f: $40
	ld a, e                                          ; $6c20: $7b
	ld hl, sp+$7f                                    ; $6c21: $f8 $7f
	reti                                             ; $6c23: $d9


	ld l, a                                          ; $6c24: $6f
	rrca                                             ; $6c25: $0f
	sbc [hl]                                         ; $6c26: $9e
	db $10                                           ; $6c27: $10
	ld h, a                                          ; $6c28: $67
	rrca                                             ; $6c29: $0f
	ldh a, [c]                                       ; $6c2a: $f2
	pop de                                           ; $6c2b: $d1
	add b                                            ; $6c2c: $80
	pop af                                           ; $6c2d: $f1
	add hl, sp                                       ; $6c2e: $39
	nop                                              ; $6c2f: $00
	sbc d                                            ; $6c30: $9a
	db $ec                                           ; $6c31: $ec
	inc d                                            ; $6c32: $14
	inc c                                            ; $6c33: $0c
	inc b                                            ; $6c34: $04
	ld de, $01de                                     ; $6c35: $11 $de $01
	sbc e                                            ; $6c38: $9b
	inc e                                            ; $6c39: $1c
	ld a, [de]                                       ; $6c3a: $1a
	jr jr_01d_6c53                                   ; $6c3b: $18 $16

	db $dd                                           ; $6c3d: $dd
	ld h, $9b                                        ; $6c3e: $26 $9b
	db $fc                                           ; $6c40: $fc
	db $f4                                           ; $6c41: $f4
	db $ec                                           ; $6c42: $ec
	db $e4                                           ; $6c43: $e4
	db $dd                                           ; $6c44: $dd
	ld bc, $149b                                     ; $6c45: $01 $9b $14
	ld [de], a                                       ; $6c48: $12
	db $10                                           ; $6c49: $10
	ld c, $dd                                        ; $6c4a: $0e $dd
	ld h, $7b                                        ; $6c4c: $26 $7b
	pop hl                                           ; $6c4e: $e1
	sbc [hl]                                         ; $6c4f: $9e
	db $fc                                           ; $6c50: $fc
	db $dd                                           ; $6c51: $dd
	pop af                                           ; $6c52: $f1

jr_01d_6c53:
	sbc e                                            ; $6c53: $9b
	inc c                                            ; $6c54: $0c
	ld a, [bc]                                       ; $6c55: $0a
	ld [$dd06], sp                                   ; $6c56: $08 $06 $dd
	ld h, $93                                        ; $6c59: $26 $93
	db $f4                                           ; $6c5b: $f4
	pop af                                           ; $6c5c: $f1
	inc b                                            ; $6c5d: $04
	ld h, $ec                                        ; $6c5e: $26 $ec
	pop af                                           ; $6c60: $f1
	ld [bc], a                                       ; $6c61: $02
	ld h, $e4                                        ; $6c62: $26 $e4
	pop af                                           ; $6c64: $f1
	nop                                              ; $6c65: $00
	daa                                              ; $6c66: $27
	ld c, d                                          ; $6c67: $4a
	nop                                              ; $6c68: $00
	sbc d                                            ; $6c69: $9a
	ldh [rAUD1SWEEP], a                              ; $6c6a: $e0 $10
	jr nz, @+$1a                                     ; $6c6c: $20 $18

	db $10                                           ; $6c6e: $10
	cp $9b                                           ; $6c6f: $fe $9b
	jr z, jr_01d_6c95                                ; $6c71: $28 $22

	ld h, $24                                        ; $6c73: $26 $24
	db $dd                                           ; $6c75: $dd
	ld h, $9b                                        ; $6c76: $26 $9b
	ld [$f800], sp                                   ; $6c78: $08 $00 $f8
	ldh a, [$fd]                                     ; $6c7b: $f0 $fd
	sbc e                                            ; $6c7d: $9b
	jr nz, jr_01d_6c9e                               ; $6c7e: $20 $1e

	inc e                                            ; $6c80: $1c
	ld a, [de]                                       ; $6c81: $1a
	db $dd                                           ; $6c82: $dd
	ld h, $9b                                        ; $6c83: $26 $9b
	add sp, -$20                                     ; $6c85: $e8 $e0
	ret c                                            ; $6c87: $d8

jr_01d_6c88:
	jr nz, jr_01d_6c88                               ; $6c88: $20 $fe

	sbc d                                            ; $6c8a: $9a
	ldh a, [rAUD2LOW]                                ; $6c8b: $f0 $18
	ld d, $14                                        ; $6c8d: $16 $14
	ld [de], a                                       ; $6c8f: $12
	db $dd                                           ; $6c90: $dd
	ld h, $7f                                        ; $6c91: $26 $7f
	db $d3                                           ; $6c93: $d3
	ld a, a                                          ; $6c94: $7f

jr_01d_6c95:
	sbc $dd                                          ; $6c95: $de $dd
	ldh a, [$9b]                                     ; $6c97: $f0 $9b
	db $10                                           ; $6c99: $10
	ld c, $0c                                        ; $6c9a: $0e $0c
	ld a, [bc]                                       ; $6c9c: $0a
	db $dd                                           ; $6c9d: $dd

jr_01d_6c9e:
	ld h, $7f                                        ; $6c9e: $26 $7f
	jp nc, $de7f                                     ; $6ca0: $d2 $7f $de

	db $dd                                           ; $6ca3: $dd
	ldh a, [$9b]                                     ; $6ca4: $f0 $9b
	ld [$0406], sp                                   ; $6ca6: $08 $06 $04
	ld [bc], a                                       ; $6ca9: $02
	db $dd                                           ; $6caa: $dd
	ld h, $9b                                        ; $6cab: $26 $9b
	ret c                                            ; $6cad: $d8

	ldh a, [rP1]                                     ; $6cae: $f0 $00
	daa                                              ; $6cb0: $27
	ld b, [hl]                                       ; $6cb1: $46
	nop                                              ; $6cb2: $00
	sbc d                                            ; $6cb3: $9a
	call c, $141c                                    ; $6cb4: $dc $1c $14
	inc c                                            ; $6cb7: $0c
	db $10                                           ; $6cb8: $10
	cp $9b                                           ; $6cb9: $fe $9b
	inc h                                            ; $6cbb: $24
	ld [hl+], a                                      ; $6cbc: $22
	jr nz, @+$20                                     ; $6cbd: $20 $1e

	db $dd                                           ; $6cbf: $dd
	ld h, $9b                                        ; $6cc0: $26 $9b
	inc b                                            ; $6cc2: $04
	db $fc                                           ; $6cc3: $fc
	db $f4                                           ; $6cc4: $f4
	db $ec                                           ; $6cc5: $ec
	db $fd                                           ; $6cc6: $fd
	sbc e                                            ; $6cc7: $9b
	inc e                                            ; $6cc8: $1c
	ld a, [de]                                       ; $6cc9: $1a
	jr jr_01d_6ce2                                   ; $6cca: $18 $16

	db $dd                                           ; $6ccc: $dd
	ld h, $93                                        ; $6ccd: $26 $93
	call c, $1ce4                                    ; $6ccf: $dc $e4 $1c
	inc c                                            ; $6cd2: $0c
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	ldh a, [$f0]                                     ; $6cd5: $f0 $f0
	ld [de], a                                       ; $6cd7: $12
	inc d                                            ; $6cd8: $14
	db $10                                           ; $6cd9: $10
	inc c                                            ; $6cda: $0c
	db $dd                                           ; $6cdb: $dd
	ld h, $9e                                        ; $6cdc: $26 $9e
	inc d                                            ; $6cde: $14
	ld a, e                                          ; $6cdf: $7b
	rst SubAFromDE                                          ; $6ce0: $df
	db $dd                                           ; $6ce1: $dd

jr_01d_6ce2:
	ldh a, [$9b]                                     ; $6ce2: $f0 $9b
	ld c, $0a                                        ; $6ce4: $0e $0a
	ld [$dd06], sp                                   ; $6ce6: $08 $06 $dd
	ld h, $93                                        ; $6ce9: $26 $93
	db $ec                                           ; $6ceb: $ec
	ldh a, [rDIV]                                    ; $6cec: $f0 $04
	ld h, $e4                                        ; $6cee: $26 $e4
	ldh a, [rSC]                                     ; $6cf0: $f0 $02
	ld h, $dc                                        ; $6cf2: $26 $dc
	ldh a, [rP1]                                     ; $6cf4: $f0 $00
	daa                                              ; $6cf6: $27
	ld c, c                                          ; $6cf7: $49
	nop                                              ; $6cf8: $00
	sbc e                                            ; $6cf9: $9b
	jr nz, jr_01d_6d14                               ; $6cfa: $20 $18

	db $10                                           ; $6cfc: $10
	ld [$04dd], sp                                   ; $6cfd: $08 $dd $04
	sbc e                                            ; $6d00: $9b
	ld h, $24                                        ; $6d01: $26 $24
	ld [hl+], a                                      ; $6d03: $22
	jr nz, @-$21                                     ; $6d04: $20 $dd

	ld h, $9b                                        ; $6d06: $26 $9b
	nop                                              ; $6d08: $00
	ld hl, sp-$10                                    ; $6d09: $f8 $f0
	add sp, -$23                                     ; $6d0b: $e8 $dd
	inc b                                            ; $6d0d: $04
	sbc e                                            ; $6d0e: $9b
	ld e, $1c                                        ; $6d0f: $1e $1c
	ld a, [de]                                       ; $6d11: $1a
	jr @-$21                                         ; $6d12: $18 $dd

jr_01d_6d14:
	ld h, $93                                        ; $6d14: $26 $93
	ldh [$d8], a                                     ; $6d16: $e0 $d8
	jr nz, jr_01d_6d32                               ; $6d18: $20 $18

	inc b                                            ; $6d1a: $04
	inc b                                            ; $6d1b: $04
	db $f4                                           ; $6d1c: $f4
	db $f4                                           ; $6d1d: $f4
	ld d, $14                                        ; $6d1e: $16 $14
	ld [de], a                                       ; $6d20: $12
	db $10                                           ; $6d21: $10
	db $dd                                           ; $6d22: $dd
	ld h, $7f                                        ; $6d23: $26 $7f

jr_01d_6d25:
	jp nc, $de7f                                     ; $6d25: $d2 $7f $de

	db $dd                                           ; $6d28: $dd
	db $f4                                           ; $6d29: $f4
	sbc e                                            ; $6d2a: $9b
	ld c, $0c                                        ; $6d2b: $0e $0c
	ld a, [bc]                                       ; $6d2d: $0a
	ld [$26dd], sp                                   ; $6d2e: $08 $dd $26
	ld a, a                                          ; $6d31: $7f

jr_01d_6d32:
	jp nc, $de7f                                     ; $6d32: $d2 $7f $de

	db $dd                                           ; $6d35: $dd
	db $f4                                           ; $6d36: $f4
	sbc e                                            ; $6d37: $9b
	ld b, $04                                        ; $6d38: $06 $04
	ld [bc], a                                       ; $6d3a: $02
	nop                                              ; $6d3b: $00
	sbc $26                                          ; $6d3c: $de $26
	sbc [hl]                                         ; $6d3e: $9e
	daa                                              ; $6d3f: $27
	ld c, [hl]                                       ; $6d40: $4e
	nop                                              ; $6d41: $00
	sub e                                            ; $6d42: $93

jr_01d_6d43:
	jr jr_01d_6d25                                   ; $6d43: $18 $e0

	jr nz, jr_01d_6d57                               ; $6d45: $20 $10

	inc bc                                           ; $6d47: $03
	inc de                                           ; $6d48: $13
	inc bc                                           ; $6d49: $03
	inc bc                                           ; $6d4a: $03
	inc h                                            ; $6d4b: $24
	jr z, jr_01d_6d74                                ; $6d4c: $28 $26

	ld [hl+], a                                      ; $6d4e: $22
	db $dd                                           ; $6d4f: $dd
	ld h, $9b                                        ; $6d50: $26 $9b
	ld [$f800], sp                                   ; $6d52: $08 $00 $f8
	ldh a, [$dd]                                     ; $6d55: $f0 $dd

jr_01d_6d57:
	inc bc                                           ; $6d57: $03
	sbc e                                            ; $6d58: $9b
	jr nz, jr_01d_6d79                               ; $6d59: $20 $1e

	inc e                                            ; $6d5b: $1c
	ld a, [de]                                       ; $6d5c: $1a
	db $dd                                           ; $6d5d: $dd
	ld h, $9b                                        ; $6d5e: $26 $9b
	add sp, -$20                                     ; $6d60: $e8 $e0
	ret c                                            ; $6d62: $d8

	jr nz, jr_01d_6d43                               ; $6d63: $20 $de

	inc bc                                           ; $6d65: $03
	sbc d                                            ; $6d66: $9a
	di                                               ; $6d67: $f3
	jr jr_01d_6d80                                   ; $6d68: $18 $16

	inc d                                            ; $6d6a: $14
	ld [de], a                                       ; $6d6b: $12
	db $dd                                           ; $6d6c: $dd
	ld h, $9b                                        ; $6d6d: $26 $9b
	jr jr_01d_6d81                                   ; $6d6f: $18 $10

	ld [$dd00], sp                                   ; $6d71: $08 $00 $dd

jr_01d_6d74:
	di                                               ; $6d74: $f3
	sbc e                                            ; $6d75: $9b
	db $10                                           ; $6d76: $10
	ld c, $0c                                        ; $6d77: $0e $0c

jr_01d_6d79:
	ld a, [bc]                                       ; $6d79: $0a
	db $dd                                           ; $6d7a: $dd
	ld h, $7f                                        ; $6d7b: $26 $7f
	jp nc, $de7f                                     ; $6d7d: $d2 $7f $de

jr_01d_6d80:
	db $dd                                           ; $6d80: $dd

jr_01d_6d81:
	di                                               ; $6d81: $f3
	sbc e                                            ; $6d82: $9b
	ld [$0406], sp                                   ; $6d83: $08 $06 $04
	ld [bc], a                                       ; $6d86: $02
	db $dd                                           ; $6d87: $dd
	ld h, $9b                                        ; $6d88: $26 $9b
	ret c                                            ; $6d8a: $d8

	di                                               ; $6d8b: $f3
	nop                                              ; $6d8c: $00
	daa                                              ; $6d8d: $27
	ld b, c                                          ; $6d8e: $41
	nop                                              ; $6d8f: $00
	sbc e                                            ; $6d90: $9b
	inc e                                            ; $6d91: $1c
	inc d                                            ; $6d92: $14
	inc c                                            ; $6d93: $0c
	inc b                                            ; $6d94: $04
	db $fd                                           ; $6d95: $fd
	sbc e                                            ; $6d96: $9b
	ld [hl+], a                                      ; $6d97: $22
	jr nz, jr_01d_6db8                               ; $6d98: $20 $1e

	inc e                                            ; $6d9a: $1c
	db $dd                                           ; $6d9b: $dd
	ld h, $9b                                        ; $6d9c: $26 $9b
	db $fc                                           ; $6d9e: $fc
	db $f4                                           ; $6d9f: $f4
	db $ec                                           ; $6da0: $ec
	db $e4                                           ; $6da1: $e4
	db $fd                                           ; $6da2: $fd
	sbc e                                            ; $6da3: $9b
	ld a, [de]                                       ; $6da4: $1a
	jr jr_01d_6dbd                                   ; $6da5: $18 $16

	inc d                                            ; $6da7: $14
	db $dd                                           ; $6da8: $dd
	ld h, $9e                                        ; $6da9: $26 $9e
	call c, $df7b                                    ; $6dab: $dc $7b $df
	sbc [hl]                                         ; $6dae: $9e
	nop                                              ; $6daf: $00
	sbc $f0                                          ; $6db0: $de $f0
	sbc e                                            ; $6db2: $9b
	ld [de], a                                       ; $6db3: $12
	db $10                                           ; $6db4: $10
	ld c, $0c                                        ; $6db5: $0e $0c
	db $dd                                           ; $6db7: $dd

jr_01d_6db8:
	ld h, $9e                                        ; $6db8: $26 $9e
	inc b                                            ; $6dba: $04

jr_01d_6dbb:
	ld a, e                                          ; $6dbb: $7b
	rst SubAFromDE                                          ; $6dbc: $df

jr_01d_6dbd:
	db $dd                                           ; $6dbd: $dd
	ldh a, [$9b]                                     ; $6dbe: $f0 $9b
	ld a, [bc]                                       ; $6dc0: $0a
	ld [$0406], sp                                   ; $6dc1: $08 $06 $04
	db $dd                                           ; $6dc4: $dd
	ld h, $97                                        ; $6dc5: $26 $97
	db $e4                                           ; $6dc7: $e4
	ldh a, [rSC]                                     ; $6dc8: $f0 $02
	ld h, $dc                                        ; $6dca: $26 $dc
	ldh a, [rP1]                                     ; $6dcc: $f0 $00
	daa                                              ; $6dce: $27
	ld c, c                                          ; $6dcf: $49
	nop                                              ; $6dd0: $00
	sbc e                                            ; $6dd1: $9b
	jr nz, jr_01d_6dec                               ; $6dd2: $20 $18

	db $10                                           ; $6dd4: $10
	ld [$04dd], sp                                   ; $6dd5: $08 $dd $04
	sbc e                                            ; $6dd8: $9b
	ld h, $24                                        ; $6dd9: $26 $24
	ld [hl+], a                                      ; $6ddb: $22
	jr nz, jr_01d_6dbb                               ; $6ddc: $20 $dd

	ld h, $9b                                        ; $6dde: $26 $9b
	nop                                              ; $6de0: $00
	ld hl, sp-$10                                    ; $6de1: $f8 $f0
	add sp, -$23                                     ; $6de3: $e8 $dd
	inc b                                            ; $6de5: $04
	sbc e                                            ; $6de6: $9b
	ld e, $1c                                        ; $6de7: $1e $1c
	ld a, [de]                                       ; $6de9: $1a
	jr @-$21                                         ; $6dea: $18 $dd

jr_01d_6dec:
	ld h, $93                                        ; $6dec: $26 $93
	ldh [$d8], a                                     ; $6dee: $e0 $d8
	jr nz, jr_01d_6e0a                               ; $6df0: $20 $18

	inc b                                            ; $6df2: $04
	inc b                                            ; $6df3: $04
	db $f4                                           ; $6df4: $f4
	db $f4                                           ; $6df5: $f4
	ld d, $14                                        ; $6df6: $16 $14
	ld [de], a                                       ; $6df8: $12
	db $10                                           ; $6df9: $10
	db $dd                                           ; $6dfa: $dd
	ld h, $7f                                        ; $6dfb: $26 $7f
	jp nc, $de7f                                     ; $6dfd: $d2 $7f $de

	db $dd                                           ; $6e00: $dd
	db $f4                                           ; $6e01: $f4
	sbc e                                            ; $6e02: $9b
	ld c, $0c                                        ; $6e03: $0e $0c

jr_01d_6e05:
	ld a, [bc]                                       ; $6e05: $0a
	ld [$26dd], sp                                   ; $6e06: $08 $dd $26
	ld a, a                                          ; $6e09: $7f

jr_01d_6e0a:
	jp nc, $de7f                                     ; $6e0a: $d2 $7f $de

	db $dd                                           ; $6e0d: $dd
	db $f4                                           ; $6e0e: $f4
	sbc e                                            ; $6e0f: $9b
	ld b, $04                                        ; $6e10: $06 $04
	ld [bc], a                                       ; $6e12: $02
	nop                                              ; $6e13: $00
	sbc $26                                          ; $6e14: $de $26
	sbc [hl]                                         ; $6e16: $9e
	daa                                              ; $6e17: $27
	dec sp                                           ; $6e18: $3b
	nop                                              ; $6e19: $00
	sub e                                            ; $6e1a: $93
	db $ec                                           ; $6e1b: $ec
	db $e4                                           ; $6e1c: $e4
	inc d                                            ; $6e1d: $14
	inc c                                            ; $6e1e: $0c
	db $10                                           ; $6e1f: $10
	stop                                             ; $6e20: $10 $00
	nop                                              ; $6e22: $00
	ld e, $1c                                        ; $6e23: $1e $1c
	ld a, [de]                                       ; $6e25: $1a
	jr jr_01d_6e05                                   ; $6e26: $18 $dd

	ld h, $9b                                        ; $6e28: $26 $9b
	inc b                                            ; $6e2a: $04
	db $fc                                           ; $6e2b: $fc
	db $f4                                           ; $6e2c: $f4
	db $ec                                           ; $6e2d: $ec
	db $fd                                           ; $6e2e: $fd
	sbc e                                            ; $6e2f: $9b
	ld d, $14                                        ; $6e30: $16 $14
	ld [de], a                                       ; $6e32: $12
	db $10                                           ; $6e33: $10
	db $dd                                           ; $6e34: $dd
	ld h, $7b                                        ; $6e35: $26 $7b
	pop hl                                           ; $6e37: $e1
	sbc l                                            ; $6e38: $9d
	inc b                                            ; $6e39: $04
	nop                                              ; $6e3a: $00
	sbc $f0                                          ; $6e3b: $de $f0
	sbc e                                            ; $6e3d: $9b
	ld c, $0c                                        ; $6e3e: $0e $0c
	ld a, [bc]                                       ; $6e40: $0a
	ld [$26dd], sp                                   ; $6e41: $08 $dd $26
	ld a, e                                          ; $6e44: $7b
	pop hl                                           ; $6e45: $e1
	sbc [hl]                                         ; $6e46: $9e
	db $e4                                           ; $6e47: $e4
	db $dd                                           ; $6e48: $dd
	ldh a, [$9b]                                     ; $6e49: $f0 $9b
	ld b, $04                                        ; $6e4b: $06 $04

jr_01d_6e4d:
	ld [bc], a                                       ; $6e4d: $02
	nop                                              ; $6e4e: $00
	sbc $26                                          ; $6e4f: $de $26
	sbc [hl]                                         ; $6e51: $9e
	daa                                              ; $6e52: $27
	ld c, c                                          ; $6e53: $49
	nop                                              ; $6e54: $00
	sbc e                                            ; $6e55: $9b
	jr nz, jr_01d_6e70                               ; $6e56: $20 $18

	db $10                                           ; $6e58: $10
	ld [$04dd], sp                                   ; $6e59: $08 $dd $04
	sbc e                                            ; $6e5c: $9b
	ld h, $24                                        ; $6e5d: $26 $24
	ld [hl+], a                                      ; $6e5f: $22
	jr nz, @-$21                                     ; $6e60: $20 $dd

	ld h, $9b                                        ; $6e62: $26 $9b
	nop                                              ; $6e64: $00
	ld hl, sp-$10                                    ; $6e65: $f8 $f0
	add sp, -$23                                     ; $6e67: $e8 $dd
	inc b                                            ; $6e69: $04
	sbc e                                            ; $6e6a: $9b
	ld e, $1c                                        ; $6e6b: $1e $1c
	ld a, [de]                                       ; $6e6d: $1a
	jr jr_01d_6e4d                                   ; $6e6e: $18 $dd

jr_01d_6e70:
	ld h, $93                                        ; $6e70: $26 $93
	ldh [$d8], a                                     ; $6e72: $e0 $d8
	jr nz, jr_01d_6e8e                               ; $6e74: $20 $18

	inc b                                            ; $6e76: $04
	inc b                                            ; $6e77: $04
	db $f4                                           ; $6e78: $f4
	db $f4                                           ; $6e79: $f4
	ld d, $14                                        ; $6e7a: $16 $14
	ld [de], a                                       ; $6e7c: $12
	db $10                                           ; $6e7d: $10
	db $dd                                           ; $6e7e: $dd
	ld h, $7f                                        ; $6e7f: $26 $7f
	jp nc, $de7f                                     ; $6e81: $d2 $7f $de

	db $dd                                           ; $6e84: $dd
	db $f4                                           ; $6e85: $f4
	sbc e                                            ; $6e86: $9b
	ld c, $0c                                        ; $6e87: $0e $0c
	ld a, [bc]                                       ; $6e89: $0a
	ld [$26dd], sp                                   ; $6e8a: $08 $dd $26
	ld a, a                                          ; $6e8d: $7f

jr_01d_6e8e:
	jp nc, $de7f                                     ; $6e8e: $d2 $7f $de

	db $dd                                           ; $6e91: $dd
	db $f4                                           ; $6e92: $f4
	sbc e                                            ; $6e93: $9b
	ld b, $04                                        ; $6e94: $06 $04
	ld [bc], a                                       ; $6e96: $02
	nop                                              ; $6e97: $00
	sbc $26                                          ; $6e98: $de $26
	sbc [hl]                                         ; $6e9a: $9e
	daa                                              ; $6e9b: $27
	ld b, b                                          ; $6e9c: $40
	nop                                              ; $6e9d: $00
	sbc h                                            ; $6e9e: $9c
	inc e                                            ; $6e9f: $1c
	inc d                                            ; $6ea0: $14
	inc c                                            ; $6ea1: $0c
	call c, $9b04                                    ; $6ea2: $dc $04 $9b
	ld [hl+], a                                      ; $6ea5: $22
	jr nz, @+$20                                     ; $6ea6: $20 $1e

	inc e                                            ; $6ea8: $1c
	db $dd                                           ; $6ea9: $dd
	ld h, $9b                                        ; $6eaa: $26 $9b
	db $fc                                           ; $6eac: $fc
	db $f4                                           ; $6ead: $f4
	db $ec                                           ; $6eae: $ec
	db $e4                                           ; $6eaf: $e4
	db $dd                                           ; $6eb0: $dd
	inc b                                            ; $6eb1: $04
	sbc e                                            ; $6eb2: $9b
	ld a, [de]                                       ; $6eb3: $1a
	jr jr_01d_6ecc                                   ; $6eb4: $18 $16

	inc d                                            ; $6eb6: $14
	db $dd                                           ; $6eb7: $dd
	ld h, $9e                                        ; $6eb8: $26 $9e
	call c, $df77                                    ; $6eba: $dc $77 $df
	sbc $f4                                          ; $6ebd: $de $f4
	sbc e                                            ; $6ebf: $9b
	ld [de], a                                       ; $6ec0: $12
	db $10                                           ; $6ec1: $10
	ld c, $0c                                        ; $6ec2: $0e $0c
	db $dd                                           ; $6ec4: $dd
	ld h, $9e                                        ; $6ec5: $26 $9e
	inc b                                            ; $6ec7: $04

jr_01d_6ec8:
	ld a, e                                          ; $6ec8: $7b
	rst SubAFromDE                                          ; $6ec9: $df
	db $dd                                           ; $6eca: $dd
	db $f4                                           ; $6ecb: $f4

jr_01d_6ecc:
	sbc e                                            ; $6ecc: $9b
	ld a, [bc]                                       ; $6ecd: $0a
	ld [$0406], sp                                   ; $6ece: $08 $06 $04
	db $dd                                           ; $6ed1: $dd
	ld h, $97                                        ; $6ed2: $26 $97
	db $e4                                           ; $6ed4: $e4
	db $f4                                           ; $6ed5: $f4

jr_01d_6ed6:
	ld [bc], a                                       ; $6ed6: $02
	ld h, $dc                                        ; $6ed7: $26 $dc
	db $f4                                           ; $6ed9: $f4
	nop                                              ; $6eda: $00
	daa                                              ; $6edb: $27
	ld c, c                                          ; $6edc: $49
	nop                                              ; $6edd: $00
	sbc e                                            ; $6ede: $9b
	jr nz, jr_01d_6ef9                               ; $6edf: $20 $18

	db $10                                           ; $6ee1: $10
	ld [$04dd], sp                                   ; $6ee2: $08 $dd $04
	sbc e                                            ; $6ee5: $9b
	ld h, $24                                        ; $6ee6: $26 $24
	ld [hl+], a                                      ; $6ee8: $22
	jr nz, jr_01d_6ec8                               ; $6ee9: $20 $dd

	ld h, $9b                                        ; $6eeb: $26 $9b
	nop                                              ; $6eed: $00
	ld hl, sp-$10                                    ; $6eee: $f8 $f0
	add sp, -$23                                     ; $6ef0: $e8 $dd
	inc b                                            ; $6ef2: $04
	sbc e                                            ; $6ef3: $9b
	ld e, $1c                                        ; $6ef4: $1e $1c
	ld a, [de]                                       ; $6ef6: $1a
	jr jr_01d_6ed6                                   ; $6ef7: $18 $dd

jr_01d_6ef9:
	ld h, $93                                        ; $6ef9: $26 $93
	ldh [$d8], a                                     ; $6efb: $e0 $d8
	jr nz, jr_01d_6f17                               ; $6efd: $20 $18

	inc b                                            ; $6eff: $04
	inc b                                            ; $6f00: $04
	db $f4                                           ; $6f01: $f4
	db $f4                                           ; $6f02: $f4
	ld d, $14                                        ; $6f03: $16 $14
	ld [de], a                                       ; $6f05: $12
	db $10                                           ; $6f06: $10
	db $dd                                           ; $6f07: $dd
	ld h, $7f                                        ; $6f08: $26 $7f
	jp nc, $de7f                                     ; $6f0a: $d2 $7f $de

	db $dd                                           ; $6f0d: $dd
	db $f4                                           ; $6f0e: $f4
	sbc e                                            ; $6f0f: $9b
	ld c, $0c                                        ; $6f10: $0e $0c
	ld a, [bc]                                       ; $6f12: $0a
	ld [$26dd], sp                                   ; $6f13: $08 $dd $26
	ld a, a                                          ; $6f16: $7f

jr_01d_6f17:
	jp nc, $de7f                                     ; $6f17: $d2 $7f $de

	db $dd                                           ; $6f1a: $dd
	db $f4                                           ; $6f1b: $f4
	sbc e                                            ; $6f1c: $9b
	ld b, $04                                        ; $6f1d: $06 $04
	ld [bc], a                                       ; $6f1f: $02
	nop                                              ; $6f20: $00
	sbc $26                                          ; $6f21: $de $26
	sbc [hl]                                         ; $6f23: $9e
	daa                                              ; $6f24: $27
	ld c, l                                          ; $6f25: $4d
	nop                                              ; $6f26: $00
	sbc d                                            ; $6f27: $9a

jr_01d_6f28:
	ldh [rAUD4LEN], a                                ; $6f28: $e0 $20
	jr jr_01d_6f3c                                   ; $6f2a: $18 $10

	inc de                                           ; $6f2c: $13
	sbc $03                                          ; $6f2d: $de $03
	sbc e                                            ; $6f2f: $9b
	jr z, jr_01d_6f58                                ; $6f30: $28 $26

	inc h                                            ; $6f32: $24
	ld [hl+], a                                      ; $6f33: $22
	db $dd                                           ; $6f34: $dd
	ld h, $9b                                        ; $6f35: $26 $9b
	ld [$f800], sp                                   ; $6f37: $08 $00 $f8
	ldh a, [$dd]                                     ; $6f3a: $f0 $dd

jr_01d_6f3c:
	inc bc                                           ; $6f3c: $03
	sbc e                                            ; $6f3d: $9b
	jr nz, jr_01d_6f5e                               ; $6f3e: $20 $1e

	inc e                                            ; $6f40: $1c
	ld a, [de]                                       ; $6f41: $1a
	db $dd                                           ; $6f42: $dd
	ld h, $9b                                        ; $6f43: $26 $9b
	add sp, -$20                                     ; $6f45: $e8 $e0
	ret c                                            ; $6f47: $d8

	jr nz, jr_01d_6f28                               ; $6f48: $20 $de

	inc bc                                           ; $6f4a: $03
	sbc d                                            ; $6f4b: $9a
	di                                               ; $6f4c: $f3
	jr jr_01d_6f65                                   ; $6f4d: $18 $16

	inc d                                            ; $6f4f: $14
	ld [de], a                                       ; $6f50: $12
	db $dd                                           ; $6f51: $dd
	ld h, $7f                                        ; $6f52: $26 $7f
	jp nc, $de7f                                     ; $6f54: $d2 $7f $de

	db $dd                                           ; $6f57: $dd

jr_01d_6f58:
	di                                               ; $6f58: $f3
	sbc e                                            ; $6f59: $9b
	db $10                                           ; $6f5a: $10
	ld c, $0c                                        ; $6f5b: $0e $0c
	ld a, [bc]                                       ; $6f5d: $0a

jr_01d_6f5e:
	db $dd                                           ; $6f5e: $dd
	ld h, $7f                                        ; $6f5f: $26 $7f
	jp nc, $de7f                                     ; $6f61: $d2 $7f $de

	db $dd                                           ; $6f64: $dd

jr_01d_6f65:
	di                                               ; $6f65: $f3
	sbc e                                            ; $6f66: $9b
	ld [$0406], sp                                   ; $6f67: $08 $06 $04
	ld [bc], a                                       ; $6f6a: $02
	db $dd                                           ; $6f6b: $dd
	ld h, $9b                                        ; $6f6c: $26 $9b
	ret c                                            ; $6f6e: $d8

	di                                               ; $6f6f: $f3
	nop                                              ; $6f70: $00
	daa                                              ; $6f71: $27
	ld b, l                                          ; $6f72: $45
	nop                                              ; $6f73: $00
	sbc d                                            ; $6f74: $9a
	ldh [rAUD4LEN], a                                ; $6f75: $e0 $20
	jr jr_01d_6f89                                   ; $6f77: $18 $10

	db $10                                           ; $6f79: $10
	cp $9b                                           ; $6f7a: $fe $9b
	inc h                                            ; $6f7c: $24
	ld [hl+], a                                      ; $6f7d: $22
	jr nz, jr_01d_6f9e                               ; $6f7e: $20 $1e

	db $dd                                           ; $6f80: $dd
	ld h, $9b                                        ; $6f81: $26 $9b
	ld [$f800], sp                                   ; $6f83: $08 $00 $f8
	ldh a, [$fd]                                     ; $6f86: $f0 $fd
	sbc e                                            ; $6f88: $9b

jr_01d_6f89:
	inc e                                            ; $6f89: $1c
	ld a, [de]                                       ; $6f8a: $1a
	jr jr_01d_6fa3                                   ; $6f8b: $18 $16

	db $dd                                           ; $6f8d: $dd
	ld h, $9e                                        ; $6f8e: $26 $9e
	add sp, $7b                                      ; $6f90: $e8 $7b
	rst SubAFromDE                                          ; $6f92: $df
	rst $38                                          ; $6f93: $ff
	rst SubAFromDE                                          ; $6f94: $df
	ldh a, [$9b]                                     ; $6f95: $f0 $9b
	inc d                                            ; $6f97: $14
	ld [de], a                                       ; $6f98: $12
	db $10                                           ; $6f99: $10
	ld c, $dd                                        ; $6f9a: $0e $dd
	ld h, $9e                                        ; $6f9c: $26 $9e

jr_01d_6f9e:
	db $10                                           ; $6f9e: $10
	ld [hl], a                                       ; $6f9f: $77
	rst SubAFromDE                                          ; $6fa0: $df
	sbc $f0                                          ; $6fa1: $de $f0

jr_01d_6fa3:
	sbc e                                            ; $6fa3: $9b
	inc c                                            ; $6fa4: $0c
	ld a, [bc]                                       ; $6fa5: $0a
	ld [$dd06], sp                                   ; $6fa6: $08 $06 $dd
	ld h, $df                                        ; $6fa9: $26 $df
	ldh a, [hDisp1_WY]                                     ; $6fab: $f0 $95
	inc b                                            ; $6fad: $04
	ld h, $e8                                        ; $6fae: $26 $e8
	ldh a, [rSC]                                     ; $6fb0: $f0 $02
	ld h, $e0                                        ; $6fb2: $26 $e0
	ldh a, [rP1]                                     ; $6fb4: $f0 $00
	daa                                              ; $6fb6: $27
	inc [hl]                                         ; $6fb7: $34
	nop                                              ; $6fb8: $00
	sbc e                                            ; $6fb9: $9b
	jr jr_01d_6fcc                                   ; $6fba: $18 $10

	ld [$dd00], sp                                   ; $6fbc: $08 $00 $dd
	inc b                                            ; $6fbf: $04
	sbc e                                            ; $6fc0: $9b
	ld e, $1c                                        ; $6fc1: $1e $1c
	ld a, [de]                                       ; $6fc3: $1a
	jr jr_01d_6fa3                                   ; $6fc4: $18 $dd

	ld h, $9b                                        ; $6fc6: $26 $9b
	ld hl, sp-$10                                    ; $6fc8: $f8 $f0
	add sp, -$20                                     ; $6fca: $e8 $e0

jr_01d_6fcc:
	db $dd                                           ; $6fcc: $dd
	inc b                                            ; $6fcd: $04
	sbc e                                            ; $6fce: $9b
	ld d, $14                                        ; $6fcf: $16 $14
	ld [de], a                                       ; $6fd1: $12
	db $10                                           ; $6fd2: $10
	db $dd                                           ; $6fd3: $dd
	ld h, $77                                        ; $6fd4: $26 $77
	ldh [$dd], a                                     ; $6fd6: $e0 $dd
	db $f4                                           ; $6fd8: $f4
	sbc e                                            ; $6fd9: $9b
	ld c, $0c                                        ; $6fda: $0e $0c
	ld a, [bc]                                       ; $6fdc: $0a
	ld [$e067], sp                                   ; $6fdd: $08 $67 $e0
	db $dd                                           ; $6fe0: $dd
	db $f4                                           ; $6fe1: $f4
	sbc e                                            ; $6fe2: $9b
	ld b, $04                                        ; $6fe3: $06 $04

jr_01d_6fe5:
	ld [bc], a                                       ; $6fe5: $02
	nop                                              ; $6fe6: $00
	sbc $26                                          ; $6fe7: $de $26
	sbc [hl]                                         ; $6fe9: $9e
	daa                                              ; $6fea: $27
	ld c, c                                          ; $6feb: $49
	nop                                              ; $6fec: $00
	sbc e                                            ; $6fed: $9b
	jr nz, jr_01d_7008                               ; $6fee: $20 $18

	db $10                                           ; $6ff0: $10
	ld [$04dd], sp                                   ; $6ff1: $08 $dd $04
	sbc e                                            ; $6ff4: $9b
	ld h, $24                                        ; $6ff5: $26 $24
	ld [hl+], a                                      ; $6ff7: $22
	jr nz, @-$21                                     ; $6ff8: $20 $dd

	ld h, $9b                                        ; $6ffa: $26 $9b
	nop                                              ; $6ffc: $00
	ld hl, sp-$10                                    ; $6ffd: $f8 $f0
	add sp, -$23                                     ; $6fff: $e8 $dd
	inc b                                            ; $7001: $04
	sbc e                                            ; $7002: $9b
	ld e, $1c                                        ; $7003: $1e $1c
	ld a, [de]                                       ; $7005: $1a
	jr jr_01d_6fe5                                   ; $7006: $18 $dd

jr_01d_7008:
	ld h, $93                                        ; $7008: $26 $93
	ldh [$d8], a                                     ; $700a: $e0 $d8
	jr nz, jr_01d_7026                               ; $700c: $20 $18

	inc b                                            ; $700e: $04
	inc b                                            ; $700f: $04
	db $f4                                           ; $7010: $f4
	db $f4                                           ; $7011: $f4
	ld d, $14                                        ; $7012: $16 $14
	ld [de], a                                       ; $7014: $12
	db $10                                           ; $7015: $10
	db $dd                                           ; $7016: $dd
	ld h, $7f                                        ; $7017: $26 $7f

jr_01d_7019:
	jp nc, $de7f                                     ; $7019: $d2 $7f $de

	db $dd                                           ; $701c: $dd
	db $f4                                           ; $701d: $f4
	sbc e                                            ; $701e: $9b
	ld c, $0c                                        ; $701f: $0e $0c
	ld a, [bc]                                       ; $7021: $0a
	ld [$26dd], sp                                   ; $7022: $08 $dd $26
	ld a, a                                          ; $7025: $7f

jr_01d_7026:
	jp nc, $de7f                                     ; $7026: $d2 $7f $de

	db $dd                                           ; $7029: $dd
	db $f4                                           ; $702a: $f4
	sbc e                                            ; $702b: $9b
	ld b, $04                                        ; $702c: $06 $04
	ld [bc], a                                       ; $702e: $02
	nop                                              ; $702f: $00
	sbc $26                                          ; $7030: $de $26
	sbc [hl]                                         ; $7032: $9e
	daa                                              ; $7033: $27
	dec a                                            ; $7034: $3d
	nop                                              ; $7035: $00
	sbc h                                            ; $7036: $9c
	ldh a, [$e8]                                     ; $7037: $f0 $e8
	jr jr_01d_7019                                   ; $7039: $18 $de

	db $10                                           ; $703b: $10
	rst $38                                          ; $703c: $ff
	sbc e                                            ; $703d: $9b
	ld [hl+], a                                      ; $703e: $22
	jr nz, jr_01d_705f                               ; $703f: $20 $1e

	inc e                                            ; $7041: $1c
	db $dd                                           ; $7042: $dd
	ld h, $9b                                        ; $7043: $26 $9b
	ld [$f800], sp                                   ; $7045: $08 $00 $f8
	ldh a, [$fd]                                     ; $7048: $f0 $fd
	sbc e                                            ; $704a: $9b
	ld a, [de]                                       ; $704b: $1a
	jr jr_01d_7064                                   ; $704c: $18 $16

	inc d                                            ; $704e: $14
	db $dd                                           ; $704f: $dd
	ld h, $9c                                        ; $7050: $26 $9c
	add sp, -$20                                     ; $7052: $e8 $e0
	jr jr_01d_70d1                                   ; $7054: $18 $7b

	ldh [c], a                                       ; $7056: $e2
	rst SubAFromDE                                          ; $7057: $df
	ldh a, [$9b]                                     ; $7058: $f0 $9b
	ld [de], a                                       ; $705a: $12
	db $10                                           ; $705b: $10
	ld c, $0c                                        ; $705c: $0e $0c
	ld h, a                                          ; $705e: $67

jr_01d_705f:
	ldh [$dd], a                                     ; $705f: $e0 $dd
	ldh a, [$9b]                                     ; $7061: $f0 $9b
	ld a, [bc]                                       ; $7063: $0a

jr_01d_7064:
	ld [$0406], sp                                   ; $7064: $08 $06 $04
	ld [hl], e                                       ; $7067: $73
	ldh [$98], a                                     ; $7068: $e0 $98
	ldh a, [rSC]                                     ; $706a: $f0 $02
	ld h, $e0                                        ; $706c: $26 $e0
	ldh a, [rP1]                                     ; $706e: $f0 $00
	daa                                              ; $7070: $27
	ld d, c                                          ; $7071: $51
	rlca                                             ; $7072: $07
	db $ec                                           ; $7073: $ec
	sbc d                                            ; $7074: $9a
	rra                                              ; $7075: $1f
	rrca                                             ; $7076: $0f
	ccf                                              ; $7077: $3f
	ld [$7738], sp                                   ; $7078: $08 $38 $77
	cp $9d                                           ; $707b: $fe $9d
	jr nz, jr_01d_70be                               ; $707d: $20 $3f

	db $fd                                           ; $707f: $fd
	sbc c                                            ; $7080: $99
	add b                                            ; $7081: $80
	adc a                                            ; $7082: $8f
	add [hl]                                         ; $7083: $86
	sbc a                                            ; $7084: $9f
	inc b                                            ; $7085: $04
	dec e                                            ; $7086: $1d
	ld [hl], a                                       ; $7087: $77
	cp $9d                                           ; $7088: $fe $9d
	sub b                                            ; $708a: $90
	sbc a                                            ; $708b: $9f
	db $fc                                           ; $708c: $fc
	sbc d                                            ; $708d: $9a
	rrca                                             ; $708e: $0f
	ld bc, $428f                                     ; $708f: $01 $8f $42
	adc $77                                          ; $7092: $ce $77
	cp $9d                                           ; $7094: $fe $9d
	jp nz, $fcce                                     ; $7096: $c2 $ce $fc

	sbc d                                            ; $7099: $9a
	add e                                            ; $709a: $83
	ld bc, $21c7                                     ; $709b: $01 $c7 $21
	rst SubAFromBC                                          ; $709e: $e7
	ld [hl], a                                       ; $709f: $77
	cp $9d                                           ; $70a0: $fe $9d
	inc h                                            ; $70a2: $24
	rst SubAFromBC                                          ; $70a3: $e7
	db $fc                                           ; $70a4: $fc
	sbc d                                            ; $70a5: $9a
	pop hl                                           ; $70a6: $e1
	sub b                                            ; $70a7: $90
	pop af                                           ; $70a8: $f1
	db $10                                           ; $70a9: $10
	ld [hl], c                                       ; $70aa: $71
	ld a, e                                          ; $70ab: $7b
	cp $7f                                           ; $70ac: $fe $7f
	ld a, [$f19e]                                    ; $70ae: $fa $9e $f1
	db $fc                                           ; $70b1: $fc
	sub h                                            ; $70b2: $94
	ldh a, [$08]                                     ; $70b3: $f0 $08
	ld sp, hl                                        ; $70b5: $f9
	ld a, b                                          ; $70b6: $78
	ld sp, hl                                        ; $70b7: $f9
	ld b, b                                          ; $70b8: $40
	pop bc                                           ; $70b9: $c1
	ld b, b                                          ; $70ba: $40
	pop bc                                           ; $70bb: $c1
	ld b, c                                          ; $70bc: $41
	pop bc                                           ; $70bd: $c1

jr_01d_70be:
	db $fc                                           ; $70be: $fc
	sbc d                                            ; $70bf: $9a
	ld hl, sp+$64                                    ; $70c0: $f8 $64
	db $fc                                           ; $70c2: $fc
	ld b, h                                          ; $70c3: $44
	call c, $fe7b                                    ; $70c4: $dc $7b $fe
	sbc h                                            ; $70c7: $9c
	db $fc                                           ; $70c8: $fc
	inc d                                            ; $70c9: $14
	db $fc                                           ; $70ca: $fc
	cp $98                                           ; $70cb: $fe $98
	jr nc, jr_01d_70d7                               ; $70cd: $30 $08

	jr c, jr_01d_70d3                                ; $70cf: $38 $02

jr_01d_70d1:
	ld a, [hl]                                       ; $70d1: $7e
	ld c, [hl]                                       ; $70d2: $4e

jr_01d_70d3:
	ld a, [hl]                                       ; $70d3: $7e
	ld [hl], a                                       ; $70d4: $77
	sub b                                            ; $70d5: $90
	sbc l                                            ; $70d6: $9d

jr_01d_70d7:
	ld [hl+], a                                      ; $70d7: $22
	ld a, $fc                                        ; $70d8: $3e $fc
	sbc h                                            ; $70da: $9c
	ld h, [hl]                                       ; $70db: $66
	ld de, $7377                                     ; $70dc: $11 $77 $73
	cp $9c                                           ; $70df: $fe $9c
	ld a, a                                          ; $70e1: $7f
	ld b, e                                          ; $70e2: $43
	ld a, a                                          ; $70e3: $7f
	cp $9c                                           ; $70e4: $fe $9c
	inc e                                            ; $70e6: $1c
	ld [bc], a                                       ; $70e7: $02
	ld c, $67                                        ; $70e8: $0e $67
	cp $9d                                           ; $70ea: $fe $9d
	ld bc, $6f0f                                     ; $70ec: $01 $0f $6f
	add b                                            ; $70ef: $80
	sbc l                                            ; $70f0: $9d
	ld b, $1f                                        ; $70f1: $06 $1f
	ld [hl], e                                       ; $70f3: $73
	ld [hl], b                                       ; $70f4: $70
	sbc h                                            ; $70f5: $9c
	rra                                              ; $70f6: $1f
	ld de, $fe1f                                     ; $70f7: $11 $1f $fe
	add c                                            ; $70fa: $81
	inc bc                                           ; $70fb: $03
	nop                                              ; $70fc: $00
	add e                                            ; $70fd: $83
	ld b, b                                          ; $70fe: $40
	rst JumpTable                                          ; $70ff: $c7
	ld b, h                                          ; $7100: $44
	rst JumpTable                                          ; $7101: $c7
	ld b, b                                          ; $7102: $40
	jp $c340                                         ; $7103: $c3 $40 $c3


	ld b, d                                          ; $7106: $42
	jp Boot                                          ; $7107: $c3 $00 $01


	add c                                            ; $710a: $81
	add c                                            ; $710b: $81
	add b                                            ; $710c: $80
	add e                                            ; $710d: $83
	ld [hl+], a                                      ; $710e: $22
	db $e3                                           ; $710f: $e3
	ldh [$e1], a                                     ; $7110: $e0 $e1
	add b                                            ; $7112: $80
	add c                                            ; $7113: $81
	add b                                            ; $7114: $80
	add c                                            ; $7115: $81
	jr nz, @-$1d                                     ; $7116: $20 $e1

	ld b, b                                          ; $7118: $40
	sbc $c0                                          ; $7119: $de $c0
	ld a, e                                          ; $711b: $7b
	add [hl]                                         ; $711c: $86
	ld a, e                                          ; $711d: $7b
	db $e4                                           ; $711e: $e4
	ld [hl], a                                       ; $711f: $77
	cp $7f                                           ; $7120: $fe $7f
	add sp, $6f                                      ; $7122: $e8 $6f
	ld h, b                                          ; $7124: $60
	sbc e                                            ; $7125: $9b
	ret nz                                           ; $7126: $c0

	pop af                                           ; $7127: $f1

jr_01d_7128:
	adc b                                            ; $7128: $88
	cp c                                             ; $7129: $b9
	ld [hl], a                                       ; $712a: $77
	cp $9d                                           ; $712b: $fe $9d
	jr jr_01d_7128                                   ; $712d: $18 $f9

	db $fd                                           ; $712f: $fd
	sbc h                                            ; $7130: $9c
	adc b                                            ; $7131: $88
	ld hl, sp+$24                                    ; $7132: $f8 $24
	ld l, a                                          ; $7134: $6f
	ld [hl], b                                       ; $7135: $70
	ld a, e                                          ; $7136: $7b
	cp $fc                                           ; $7137: $fe $fc
	add h                                            ; $7139: $84
	ld a, b                                          ; $713a: $78
	ld [hl-], a                                      ; $713b: $32
	cp $8e                                           ; $713c: $fe $8e
	cp $64                                           ; $713e: $fe $64
	ld a, h                                          ; $7140: $7c
	ld [hl-], a                                      ; $7141: $32
	cp $86                                           ; $7142: $fe $86
	cp $00                                           ; $7144: $fe $00
	nop                                              ; $7146: $00
	inc b                                            ; $7147: $04
	inc e                                            ; $7148: $1c
	ld [bc], a                                       ; $7149: $02
	ld a, $02                                        ; $714a: $3e $02
	ld a, $06                                        ; $714c: $3e $06
	ld e, $1c                                        ; $714e: $1e $1c
	inc e                                            ; $7150: $1c
	nop                                              ; $7151: $00
	jr jr_01d_7158                                   ; $7152: $18 $04

	inc e                                            ; $7154: $1c
	pop hl                                           ; $7155: $e1
	rst SubAFromDE                                          ; $7156: $df
	rra                                              ; $7157: $1f

jr_01d_7158:
	di                                               ; $7158: $f3
	rst SubAFromDE                                          ; $7159: $df
	adc a                                            ; $715a: $8f

jr_01d_715b:
	di                                               ; $715b: $f3
	rst SubAFromDE                                          ; $715c: $df
	adc [hl]                                         ; $715d: $8e
	di                                               ; $715e: $f3
	rst SubAFromDE                                          ; $715f: $df
	db $e3                                           ; $7160: $e3
	sbc [hl]                                         ; $7161: $9e
	nop                                              ; $7162: $00
	sbc $07                                          ; $7163: $de $07
	rst FarCall                                          ; $7165: $f7
	sbc c                                            ; $7166: $99
	sub c                                            ; $7167: $91
	pop af                                           ; $7168: $f1
	jr nc, jr_01d_715b                               ; $7169: $30 $f0

	ret nz                                           ; $716b: $c0

	ret nz                                           ; $716c: $c0

	rst FarCall                                          ; $716d: $f7
	ld d, a                                          ; $716e: $57
	db $f4                                           ; $716f: $f4
	rst $38                                          ; $7170: $ff
	rst SubAFromDE                                          ; $7171: $df
	ld bc, $fcdf                                     ; $7172: $01 $df $fc
	ld a, [$1896]                                    ; $7175: $fa $96 $18
	db $10                                           ; $7178: $10
	inc e                                            ; $7179: $1c
	ld a, a                                          ; $717a: $7f
	ld a, a                                          ; $717b: $7f
	adc [hl]                                         ; $717c: $8e
	rst $38                                          ; $717d: $ff
	ld e, $1e                                        ; $717e: $1e $1e
	ld d, a                                          ; $7180: $57
	call nc, $b09c                                   ; $7181: $d4 $9c $b0
	ldh a, [$3e]                                     ; $7184: $f0 $3e
	ld l, [hl]                                       ; $7186: $6e
	cp [hl]                                          ; $7187: $be
	cp $df                                           ; $7188: $fe $df
	rlca                                             ; $718a: $07
	sbc e                                            ; $718b: $9b
	inc c                                            ; $718c: $0c
	rrca                                             ; $718d: $0f
	rra                                              ; $718e: $1f
	rra                                              ; $718f: $1f
	ld d, a                                          ; $7190: $57
	and h                                            ; $7191: $a4
	rst SubAFromDE                                          ; $7192: $df
	db $fc                                           ; $7193: $fc
	sbc l                                            ; $7194: $9d
	ld c, a                                          ; $7195: $4f
	rst $38                                          ; $7196: $ff
	ld d, a                                          ; $7197: $57
	ldh a, [$fd]                                     ; $7198: $f0 $fd
	rst SubAFromDE                                          ; $719a: $df
	pop bc                                           ; $719b: $c1
	push af                                          ; $719c: $f5
	rst SubAFromDE                                          ; $719d: $df
	rlca                                             ; $719e: $07
	rst SubAFromDE                                          ; $719f: $df
	pop hl                                           ; $71a0: $e1
	ld hl, sp-$21                                    ; $71a1: $f8 $df
	add b                                            ; $71a3: $80
	sbc $c0                                          ; $71a4: $de $c0
	ld e, e                                          ; $71a6: $5b
	ldh a, [$fc]                                     ; $71a7: $f0 $fc
	rst SubAFromDE                                          ; $71a9: $df
	pop af                                           ; $71aa: $f1
	di                                               ; $71ab: $f3
	rst SubAFromDE                                          ; $71ac: $df
	call c, $dff3                                    ; $71ad: $dc $f3 $df
	ld a, h                                          ; $71b0: $7c
	di                                               ; $71b1: $f3
	ld a, d                                          ; $71b2: $7a
	jp z, $9ee0                                      ; $71b3: $ca $e0 $9e

	ld [hl], a                                       ; $71b6: $77
	inc d                                            ; $71b7: $14
	sbc c                                            ; $71b8: $99
	jr jr_01d_71d2                                   ; $71b9: $18 $17

	inc [hl]                                         ; $71bb: $34
	cpl                                              ; $71bc: $2f
	ld a, l                                          ; $71bd: $7d
	ld c, e                                          ; $71be: $4b
	ei                                               ; $71bf: $fb
	rst SubAFromDE                                          ; $71c0: $df
	cp [hl]                                          ; $71c1: $be
	add b                                            ; $71c2: $80
	ld d, c                                          ; $71c3: $51
	rst $38                                          ; $71c4: $ff
	ld h, $ff                                        ; $71c5: $26 $ff
	jr z, @+$01                                      ; $71c7: $28 $ff

	ret nz                                           ; $71c9: $c0

	rst $38                                          ; $71ca: $ff
	inc bc                                           ; $71cb: $03
	ld [bc], a                                       ; $71cc: $02
	rlca                                             ; $71cd: $07
	dec b                                            ; $71ce: $05
	rrca                                             ; $71cf: $0f
	ld c, $0f                                        ; $71d0: $0e $0f

jr_01d_71d2:
	inc c                                            ; $71d2: $0c
	rra                                              ; $71d3: $1f
	dec de                                           ; $71d4: $1b
	sbc a                                            ; $71d5: $9f
	sub [hl]                                         ; $71d6: $96
	sub $dd                                          ; $71d7: $d6 $dd
	db $ed                                           ; $71d9: $ed
	ld a, e                                          ; $71da: $7b
	ld a, h                                          ; $71db: $7c
	rst $38                                          ; $71dc: $ff
	rst GetHLinHL                                          ; $71dd: $cf
	rst $38                                          ; $71de: $ff
	xor b                                            ; $71df: $a8
	ld a, a                                          ; $71e0: $7f
	db $d3                                           ; $71e1: $d3
	add b                                            ; $71e2: $80
	rst $38                                          ; $71e3: $ff
	ld [hl], h                                       ; $71e4: $74
	cp a                                             ; $71e5: $bf
	db $eb                                           ; $71e6: $eb
	ld a, [hl]                                       ; $71e7: $7e
	rst $38                                          ; $71e8: $ff
	sub d                                            ; $71e9: $92
	ld a, a                                          ; $71ea: $7f
	and l                                            ; $71eb: $a5
	ld c, b                                          ; $71ec: $48
	ld hl, sp+$3c                                    ; $71ed: $f8 $3c
	db $e4                                           ; $71ef: $e4
	cp h                                             ; $71f0: $bc
	call nc, $ca7e                                   ; $71f1: $d4 $7e $ca
	db $fc                                           ; $71f4: $fc
	xor e                                            ; $71f5: $ab
	rst $38                                          ; $71f6: $ff
	sub l                                            ; $71f7: $95
	db $fd                                           ; $71f8: $fd
	ld d, a                                          ; $71f9: $57
	push de                                          ; $71fa: $d5
	ld a, a                                          ; $71fb: $7f
	inc l                                            ; $71fc: $2c
	ccf                                              ; $71fd: $3f
	ld e, d                                          ; $71fe: $5a
	ld a, a                                          ; $71ff: $7f
	and c                                            ; $7200: $a1
	rst $38                                          ; $7201: $ff
	add b                                            ; $7202: $80
	ld d, h                                          ; $7203: $54
	rst AddAOntoHL                                          ; $7204: $ef
	ei                                               ; $7205: $fb
	sbc a                                            ; $7206: $9f
	ld e, a                                          ; $7207: $5f
	cp a                                             ; $7208: $bf
	sbc a                                            ; $7209: $9f
	ld [hl], d                                       ; $720a: $72
	dec sp                                           ; $720b: $3b
	and $81                                          ; $720c: $e6 $81
	rst $38                                          ; $720e: $ff
	or d                                             ; $720f: $b2
	rst $38                                          ; $7210: $ff
	ld c, d                                          ; $7211: $4a
	rst $38                                          ; $7212: $ff
	adc l                                            ; $7213: $8d
	rst $38                                          ; $7214: $ff
	ld e, a                                          ; $7215: $5f
	ld [$caff], a                                    ; $7216: $ea $ff $ca
	rst AddAOntoHL                                          ; $7219: $ef
	dec [hl]                                         ; $721a: $35
	rst SubAFromDE                                          ; $721b: $df
	inc [hl]                                         ; $721c: $34
	add b                                            ; $721d: $80
	add h                                            ; $721e: $84
	add l                                            ; $721f: $85
	add a                                            ; $7220: $87
	jp nz, $4380                                     ; $7221: $c2 $80 $43

	jp $e343                                         ; $7224: $c3 $43 $e3


	and d                                            ; $7227: $a2
	and a                                            ; $7228: $a7
	db $e4                                           ; $7229: $e4
	ld h, [hl]                                       ; $722a: $66
	push hl                                          ; $722b: $e5
	cp l                                             ; $722c: $bd
	ei                                               ; $722d: $fb
	ld a, $3f                                        ; $722e: $3e $3f
	ld sp, hl                                        ; $7230: $f9
	rst JumpTable                                          ; $7231: $c7
	call c, $c33f                                    ; $7232: $dc $3f $c3
	rst $38                                          ; $7235: $ff
	sbc e                                            ; $7236: $9b
	ld a, a                                          ; $7237: $7f
	ld h, h                                          ; $7238: $64
	rst $38                                          ; $7239: $ff
	ldh a, [$9f]                                     ; $723a: $f0 $9f
	jp nz, $383f                                     ; $723c: $c2 $3f $38

	ld hl, sp+$66                                    ; $723f: $f8 $66
	cp $93                                           ; $7241: $fe $93
	set 6, a                                         ; $7243: $cb $f7
	dec a                                            ; $7245: $3d
	di                                               ; $7246: $f3
	xor [hl]                                         ; $7247: $ae
	reti                                             ; $7248: $d9


	ld a, [$f54d]                                    ; $7249: $fa $4d $f5
	ld l, $fc                                        ; $724c: $2e $fc
	sub a                                            ; $724e: $97
	ld e, [hl]                                       ; $724f: $5e
	or e                                             ; $7250: $b3
	rst SubAFromDE                                          ; $7251: $df
	add b                                            ; $7252: $80
	rst SubAFromDE                                          ; $7253: $df
	add c                                            ; $7254: $81
	sbc [hl]                                         ; $7255: $9e
	sbc [hl]                                         ; $7256: $9e
	ld l, h                                          ; $7257: $6c
	ret nz                                           ; $7258: $c0

	ld a, [$f0df]                                    ; $7259: $fa $df $f0
	sbc [hl]                                         ; $725c: $9e
	inc c                                            ; $725d: $0c
	ld h, [hl]                                       ; $725e: $66
	ld [hl-], a                                      ; $725f: $32
	ldh [$a4], a                                     ; $7260: $e0 $a4
	rst SubAFromDE                                          ; $7262: $df
	ld bc, $4680                                     ; $7263: $01 $80 $46
	ld b, a                                          ; $7266: $47
	ld a, e                                          ; $7267: $7b
	ccf                                              ; $7268: $3f
	rra                                              ; $7269: $1f
	ld h, b                                          ; $726a: $60
	ld c, [hl]                                       ; $726b: $4e
	ld c, a                                          ; $726c: $4f
	sbc a                                            ; $726d: $9f
	sub b                                            ; $726e: $90
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	jr nz, @+$62                                     ; $7271: $20 $60

	rst GetHLinHL                                          ; $7273: $cf
	rst AddAOntoHL                                          ; $7274: $ef
	rst $38                                          ; $7275: $ff
	ld sp, $efbe                                     ; $7276: $31 $be $ef
	db $ed                                           ; $7279: $ed
	ld [hl], c                                       ; $727a: $71

jr_01d_727b:
	ld a, b                                          ; $727b: $78
	ret nz                                           ; $727c: $c0

	db $fc                                           ; $727d: $fc
	jr jr_01d_727b                                   ; $727e: $18 $fb

	sub $bf                                          ; $7280: $d6 $bf
	db $e4                                           ; $7282: $e4
	ld e, a                                          ; $7283: $5f
	add b                                            ; $7284: $80
	db $ec                                           ; $7285: $ec
	rst GetHLinHL                                          ; $7286: $cf
	ld sp, hl                                        ; $7287: $f9
	push af                                          ; $7288: $f5
	ld a, e                                          ; $7289: $7b
	pop af                                           ; $728a: $f1
	cp a                                             ; $728b: $bf
	pop af                                           ; $728c: $f1
	ld a, a                                          ; $728d: $7f
	pop af                                           ; $728e: $f1
	sbc a                                            ; $728f: $9f
	nop                                              ; $7290: $00
	rst $38                                          ; $7291: $ff
	ld h, c                                          ; $7292: $61
	cp $c1                                           ; $7293: $fe $c1
	cp [hl]                                          ; $7295: $be
	di                                               ; $7296: $f3
	inc e                                            ; $7297: $1c
	db $fd                                           ; $7298: $fd
	ld a, $bc                                        ; $7299: $3e $bc
	ld h, e                                          ; $729b: $63
	ld a, $e3                                        ; $729c: $3e $e3
	sbc a                                            ; $729e: $9f
	rst SubAFromBC                                          ; $729f: $e7
	xor $3b                                          ; $72a0: $ee $3b
	ld [hl], d                                       ; $72a2: $72
	cp a                                             ; $72a3: $bf
	adc c                                            ; $72a4: $89
	sub c                                            ; $72a5: $91
	rst $38                                          ; $72a6: $ff
	rst SubAFromHL                                          ; $72a7: $d7
	ld a, l                                          ; $72a8: $7d
	cpl                                              ; $72a9: $2f
	rst $38                                          ; $72aa: $ff
	sbc a                                            ; $72ab: $9f
	ld sp, hl                                        ; $72ac: $f9
	ld b, a                                          ; $72ad: $47
	db $fd                                           ; $72ae: $fd
	ccf                                              ; $72af: $3f
	db $fc                                           ; $72b0: $fc
	cp l                                             ; $72b1: $bd
	ld h, a                                          ; $72b2: $67
	cp l                                             ; $72b3: $bd
	and $fb                                          ; $72b4: $e6 $fb
	inc b                                            ; $72b6: $04
	rst $38                                          ; $72b7: $ff
	jp Jump_01d_667e                                 ; $72b8: $c3 $7e $66


	ld a, e                                          ; $72bb: $7b
	db $fc                                           ; $72bc: $fc
	ld a, a                                          ; $72bd: $7f
	add hl, bc                                       ; $72be: $09
	add b                                            ; $72bf: $80
	nop                                              ; $72c0: $00
	ld c, e                                          ; $72c1: $4b
	rst $38                                          ; $72c2: $ff
	dec hl                                           ; $72c3: $2b
	rst $38                                          ; $72c4: $ff
	xor a                                            ; $72c5: $af
	ld a, a                                          ; $72c6: $7f
	xor $b7                                          ; $72c7: $ee $b7
	xor $d7                                          ; $72c9: $ee $d7
	rst FarCall                                          ; $72cb: $f7
	sbc a                                            ; $72cc: $9f
	ld a, [$dd9f]                                    ; $72cd: $fa $9f $dd
	ccf                                              ; $72d0: $3f
	rst SubAFromBC                                          ; $72d1: $e7
	call c, $fc0f                                    ; $72d2: $dc $0f $fc
	dec a                                            ; $72d5: $3d
	or $7f                                           ; $72d6: $f6 $7f
	call c, $dcf7                                    ; $72d8: $dc $f7 $dc
	ld a, a                                          ; $72db: $7f
	ret nz                                           ; $72dc: $c0

	rst SubAFromDE                                          ; $72dd: $df
	pop hl                                           ; $72de: $e1
	add b                                            ; $72df: $80
	xor a                                            ; $72e0: $af
	ldh a, [$b6]                                     ; $72e1: $f0 $b6
	ld l, a                                          ; $72e3: $6f
	cp $0b                                           ; $72e4: $fe $0b
	rst $38                                          ; $72e6: $ff
	ld bc, $39f7                                     ; $72e7: $01 $f7 $39
	rst $38                                          ; $72ea: $ff
	dec e                                            ; $72eb: $1d
	rst $38                                          ; $72ec: $ff
	ld bc, $c3fd                                     ; $72ed: $01 $fd $c3
	ei                                               ; $72f0: $fb
	rlca                                             ; $72f1: $07
	xor e                                            ; $72f2: $ab
	cp $6b                                           ; $72f3: $fe $6b
	cp $fe                                           ; $72f5: $fe $fe
	db $fd                                           ; $72f7: $fd
	ld hl, sp-$61                                    ; $72f8: $f8 $9f
	db $fc                                           ; $72fa: $fc
	rra                                              ; $72fb: $1f
	db $fd                                           ; $72fc: $fd
	rrca                                             ; $72fd: $0f
	db $fd                                           ; $72fe: $fd
	add b                                            ; $72ff: $80
	rrca                                             ; $7300: $0f
	push af                                          ; $7301: $f5
	sbc a                                            ; $7302: $9f
	and c                                            ; $7303: $a1
	ld a, a                                          ; $7304: $7f
	ld d, l                                          ; $7305: $55
	rst $38                                          ; $7306: $ff
	ld d, h                                          ; $7307: $54
	rst $38                                          ; $7308: $ff
	sub $eb                                          ; $7309: $d6 $eb
	rst $38                                          ; $730b: $ff
	add b                                            ; $730c: $80
	cp [hl]                                          ; $730d: $be
	ld [hl], c                                       ; $730e: $71
	rst $38                                          ; $730f: $ff
	pop af                                           ; $7310: $f1
	rst $38                                          ; $7311: $ff
	ld d, b                                          ; $7312: $50
	ld a, d                                          ; $7313: $7a
	rst SubAFromHL                                          ; $7314: $d7
	ld e, d                                          ; $7315: $5a
	rst AddAOntoHL                                          ; $7316: $ef
	and l                                            ; $7317: $a5
	rst $38                                          ; $7318: $ff
	db $d3                                           ; $7319: $d3
	ld a, a                                          ; $731a: $7f
	db $ec                                           ; $731b: $ec
	ccf                                              ; $731c: $3f
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	sub d                                            ; $731f: $92
	rst FarCall                                          ; $7320: $f7
	rst $38                                          ; $7321: $ff
	rst FarCall                                          ; $7322: $f7
	cp a                                             ; $7323: $bf
	ld h, a                                          ; $7324: $67
	rst $38                                          ; $7325: $ff
	ld c, h                                          ; $7326: $4c
	rst $38                                          ; $7327: $ff
	cp e                                             ; $7328: $bb
	rst $38                                          ; $7329: $ff
	ld d, b                                          ; $732a: $50
	rst $38                                          ; $732b: $ff
	sub b                                            ; $732c: $90
	ld a, e                                          ; $732d: $7b
	cp $8b                                           ; $732e: $fe $8b
	db $eb                                           ; $7330: $eb
	ld a, $ef                                        ; $7331: $3e $ef
	ld e, c                                          ; $7333: $59
	ld a, [$3fce]                                    ; $7334: $fa $ce $3f
	rst FarCall                                          ; $7337: $f7
	rst $38                                          ; $7338: $ff
	set 7, l                                         ; $7339: $cb $fd
	scf                                              ; $733b: $37
	ld a, d                                          ; $733c: $7a
	adc a                                            ; $733d: $8f
	db $fd                                           ; $733e: $fd
	rlca                                             ; $733f: $07
	jp nz, $717f                                     ; $7340: $c2 $7f $71

	cp a                                             ; $7343: $bf
	ld h, [hl]                                       ; $7344: $66
	and h                                            ; $7345: $a4
	ld a, l                                          ; $7346: $7d
	ld b, $99                                        ; $7347: $06 $99
	ld l, e                                          ; $7349: $6b
	ei                                               ; $734a: $fb
	db $fc                                           ; $734b: $fc
	rst $38                                          ; $734c: $ff
	db $fd                                           ; $734d: $fd
	rst SubAFromBC                                          ; $734e: $e7
	ld c, h                                          ; $734f: $4c
	ldh a, [c]                                       ; $7350: $f2
	sbc l                                            ; $7351: $9d
	ld a, b                                          ; $7352: $78
	ret z                                            ; $7353: $c8

	ldh [$cf], a                                     ; $7354: $e0 $cf
	push de                                          ; $7356: $d5
	ld bc, $80ff                                     ; $7357: $01 $ff $80
	rst AddAOntoHL                                          ; $735a: $ef
	and h                                            ; $735b: $a4
	bit 1, b                                         ; $735c: $cb $48
	ret nc                                           ; $735e: $d0

	sub c                                            ; $735f: $91
	ret c                                            ; $7360: $d8

	inc hl                                           ; $7361: $23
	ei                                               ; $7362: $fb
	daa                                              ; $7363: $27
	or a                                             ; $7364: $b7
	ld l, l                                          ; $7365: $6d
	cpl                                              ; $7366: $2f
	ld hl, sp-$41                                    ; $7367: $f8 $bf
	cp $f6                                           ; $7369: $fe $f6
	rlca                                             ; $736b: $07
	ld [hl], e                                       ; $736c: $73
	ld bc, $0287                                     ; $736d: $01 $87 $02
	db $db                                           ; $7370: $db
	ld b, l                                          ; $7371: $45
	xor l                                            ; $7372: $ad
	ld [hl], a                                       ; $7373: $77
	ld [hl], a                                       ; $7374: $77
	cp d                                             ; $7375: $ba
	ei                                               ; $7376: $fb
	xor [hl]                                         ; $7377: $ae
	cp a                                             ; $7378: $bf
	add b                                            ; $7379: $80
	rst GetHLinHL                                          ; $737a: $cf
	ld hl, sp+$5f                                    ; $737b: $f8 $5f
	ld [hl], b                                       ; $737d: $70
	xor a                                            ; $737e: $af
	cp h                                             ; $737f: $bc
	rst AddAOntoHL                                          ; $7380: $ef
	ei                                               ; $7381: $fb
	ld c, h                                          ; $7382: $4c
	ei                                               ; $7383: $fb
	ld c, h                                          ; $7384: $4c
	rst AddAOntoHL                                          ; $7385: $ef
	call c, $ffca                                    ; $7386: $dc $ca $ff
	xor e                                            ; $7389: $ab
	rst SubAFromDE                                          ; $738a: $df
	ei                                               ; $738b: $fb
	db $eb                                           ; $738c: $eb
	db $fd                                           ; $738d: $fd
	sbc a                                            ; $738e: $9f
	di                                               ; $738f: $f3
	adc h                                            ; $7390: $8c
	rst $38                                          ; $7391: $ff
	nop                                              ; $7392: $00
	ld l, a                                          ; $7393: $6f
	ldh a, [$fe]                                     ; $7394: $f0 $fe
	ld h, c                                          ; $7396: $61
	ei                                               ; $7397: $fb
	rlca                                             ; $7398: $07
	add b                                            ; $7399: $80
	sbc l                                            ; $739a: $9d
	rst $38                                          ; $739b: $ff
	rst AddAOntoHL                                          ; $739c: $ef
	cp $f7                                           ; $739d: $fe $f7
	cp a                                             ; $739f: $bf
	rst $38                                          ; $73a0: $ff
	or a                                             ; $73a1: $b7
	cp $eb                                           ; $73a2: $fe $eb
	cp a                                             ; $73a4: $bf
	xor c                                            ; $73a5: $a9
	add hl, sp                                       ; $73a6: $39
	ld l, $2d                                        ; $73a7: $2e $2d
	scf                                              ; $73a9: $37
	dec d                                            ; $73aa: $15
	rra                                              ; $73ab: $1f
	rst $38                                          ; $73ac: $ff
	inc a                                            ; $73ad: $3c
	rst AddAOntoHL                                          ; $73ae: $ef
	jr @-$40                                         ; $73af: $18 $be

	pop bc                                           ; $73b1: $c1
	rst FarCall                                          ; $73b2: $f7
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst SubAFromHL                                          ; $73b5: $d7
	rst $38                                          ; $73b6: $ff
	ld [$80f7], a                                    ; $73b7: $ea $f7 $80
	ld e, [hl]                                       ; $73ba: $5e
	rst $38                                          ; $73bb: $ff
	ld c, h                                          ; $73bc: $4c
	rst FarCall                                          ; $73bd: $f7
	dec a                                            ; $73be: $3d
	cp [hl]                                          ; $73bf: $be
	ld [hl], l                                       ; $73c0: $75
	ei                                               ; $73c1: $fb
	sub $ff                                          ; $73c2: $d6 $ff
	ld [$eadf], a                                    ; $73c4: $ea $df $ea
	ld [$f4ff], a                                    ; $73c7: $ea $ff $f4
	cp a                                             ; $73ca: $bf
	push hl                                          ; $73cb: $e5
	cp a                                             ; $73cc: $bf
	ld [hl], a                                       ; $73cd: $77
	ld hl, sp-$63                                    ; $73ce: $f8 $9d
	cp $8f                                           ; $73d0: $fe $8f
	rst $38                                          ; $73d2: $ff
	add l                                            ; $73d3: $85
	cp $c2                                           ; $73d4: $fe $c2
	rst $38                                          ; $73d6: $ff
	and e                                            ; $73d7: $a3
	cp l                                             ; $73d8: $bd
	add b                                            ; $73d9: $80
	sub c                                            ; $73da: $91
	sbc h                                            ; $73db: $9c
	ld de, $f41e                                     ; $73dc: $11 $1e $f4
	rrca                                             ; $73df: $0f
	ret                                              ; $73e0: $c9


	ccf                                              ; $73e1: $3f
	ld a, $ff                                        ; $73e2: $3e $ff
	call z, $333f                                    ; $73e4: $cc $3f $33
	rst $38                                          ; $73e7: $ff
	jp hl                                            ; $73e8: $e9


	rst SubAFromDE                                          ; $73e9: $df
	ld l, b                                          ; $73ea: $68
	rra                                              ; $73eb: $1f
	ld c, b                                          ; $73ec: $48
	cp a                                             ; $73ed: $bf
	ldh [c], a                                       ; $73ee: $e2
	rst $38                                          ; $73ef: $ff
	ld h, d                                          ; $73f0: $62
	rst $38                                          ; $73f1: $ff
	ld [hl], b                                       ; $73f2: $70
	rst $38                                          ; $73f3: $ff
	ret c                                            ; $73f4: $d8

	rst SubAFromDE                                          ; $73f5: $df
	adc h                                            ; $73f6: $8c
	adc a                                            ; $73f7: $8f
	inc bc                                           ; $73f8: $03
	add b                                            ; $73f9: $80
	inc bc                                           ; $73fa: $03
	add c                                            ; $73fb: $81
	add c                                            ; $73fc: $81
	add b                                            ; $73fd: $80
	add b                                            ; $73fe: $80
	rst $38                                          ; $73ff: $ff
	adc a                                            ; $7400: $8f
	ld sp, hl                                        ; $7401: $f9
	adc a                                            ; $7402: $8f
	ld a, c                                          ; $7403: $79
	rst GetHLinHL                                          ; $7404: $cf
	cpl                                              ; $7405: $2f
	or $18                                           ; $7406: $f6 $18
	rst $38                                          ; $7408: $ff
	ld a, [bc]                                       ; $7409: $0a
	db $fd                                           ; $740a: $fd
	rst GetHLinHL                                          ; $740b: $cf
	rst FarCall                                          ; $740c: $f7
	ld h, l                                          ; $740d: $65
	ld [hl], b                                       ; $740e: $70
	and $1f                                          ; $740f: $e6 $1f
	ldh a, [c]                                       ; $7411: $f2
	ccf                                              ; $7412: $3f
	rst AddAOntoHL                                          ; $7413: $ef
	ccf                                              ; $7414: $3f
	or c                                             ; $7415: $b1
	ld a, a                                          ; $7416: $7f
	db $dd                                           ; $7417: $dd
	rst $38                                          ; $7418: $ff
	add b                                            ; $7419: $80
	add d                                            ; $741a: $82
	cp $8c                                           ; $741b: $fe $8c
	ld a, h                                          ; $741d: $7c
	or c                                             ; $741e: $b1
	ld [hl], c                                       ; $741f: $71
	rst $38                                          ; $7420: $ff
	sub l                                            ; $7421: $95
	cp h                                             ; $7422: $bc
	rst FarCall                                          ; $7423: $f7
	ld a, [hl]                                       ; $7424: $7e
	db $e3                                           ; $7425: $e3
	ld e, a                                          ; $7426: $5f
	pop hl                                           ; $7427: $e1
	rst FarCall                                          ; $7428: $f7
	cp b                                             ; $7429: $b8
	rst $38                                          ; $742a: $ff
	xor b                                            ; $742b: $a8
	rst FarCall                                          ; $742c: $f7
	cp b                                             ; $742d: $b8
	rst AddAOntoHL                                          ; $742e: $ef
	ld hl, sp-$57                                    ; $742f: $f8 $a9
	rst $38                                          ; $7431: $ff
	db $f4                                           ; $7432: $f4
	rst AddAOntoHL                                          ; $7433: $ef
	ld a, [$fdff]                                    ; $7434: $fa $ff $fd
	add e                                            ; $7437: $83
	xor $80                                          ; $7438: $ee $80
	di                                               ; $743a: $f3
	rst FarCall                                          ; $743b: $f7
	cp [hl]                                          ; $743c: $be
	db $dd                                           ; $743d: $dd
	halt                                             ; $743e: $76
	cp l                                             ; $743f: $bd
	ld h, [hl]                                       ; $7440: $66
	ld a, a                                          ; $7441: $7f
	ldh [c], a                                       ; $7442: $e2
	rst $38                                          ; $7443: $ff
	rst AddAOntoHL                                          ; $7444: $ef
	jp c, $2bff                                      ; $7445: $da $ff $2b

	or $db                                           ; $7448: $f6 $db
	ld h, [hl]                                       ; $744a: $66
	push af                                          ; $744b: $f5
	ld l, [hl]                                       ; $744c: $6e
	sub a                                            ; $744d: $97
	cp $cd                                           ; $744e: $fe $cd
	rst $38                                          ; $7450: $ff
	db $fc                                           ; $7451: $fc
	adc h                                            ; $7452: $8c
	cp $8e                                           ; $7453: $fe $8e
	ld a, e                                          ; $7455: $7b
	rst $38                                          ; $7456: $ff
	ld c, c                                          ; $7457: $49
	rst $38                                          ; $7458: $ff
	sub a                                            ; $7459: $97
	and l                                            ; $745a: $a5
	ld a, a                                          ; $745b: $7f
	cp [hl]                                          ; $745c: $be
	ld l, a                                          ; $745d: $6f
	ld a, [hl-]                                      ; $745e: $3a
	rst AddAOntoHL                                          ; $745f: $ef
	ld a, c                                          ; $7460: $79
	rst GetHLinHL                                          ; $7461: $cf
	rst FarCall                                          ; $7462: $f7
	db $db                                           ; $7463: $db
	add b                                            ; $7464: $80
	db $eb                                           ; $7465: $eb
	ld a, h                                          ; $7466: $7c
	sbc d                                            ; $7467: $9a
	sbc [hl]                                         ; $7468: $9e
	inc bc                                           ; $7469: $03
	ld a, b                                          ; $746a: $78
	ld a, h                                          ; $746b: $7c
	sbc e                                            ; $746c: $9b

jr_01d_746d:
	inc e                                            ; $746d: $1c
	jr jr_01d_74a0                                   ; $746e: $18 $30

	jr nz, jr_01d_746d                               ; $7470: $20 $fb

	add b                                            ; $7472: $80
	db $dd                                           ; $7473: $dd
	call nz, $33b7                                   ; $7474: $c4 $b7 $33
	rst $38                                          ; $7477: $ff
	adc a                                            ; $7478: $8f
	rst SubAFromBC                                          ; $7479: $e7
	ld a, c                                          ; $747a: $79
	rra                                              ; $747b: $1f
	jr c, @+$7f                                      ; $747c: $38 $7d

	ld l, l                                          ; $747e: $6d
	ld e, a                                          ; $747f: $5f
	daa                                              ; $7480: $27
	add hl, sp                                       ; $7481: $39
	ld h, a                                          ; $7482: $67
	ld [hl], a                                       ; $7483: $77
	ld a, b                                          ; $7484: $78
	cp a                                             ; $7485: $bf
	jr c, @+$01                                      ; $7486: $38 $ff

	sbc h                                            ; $7488: $9c
	sbc $cf                                          ; $7489: $de $cf
	db $ed                                           ; $748b: $ed
	ld b, a                                          ; $748c: $47
	ei                                               ; $748d: $fb
	sbc e                                            ; $748e: $9b
	rst $38                                          ; $748f: $ff
	ld c, $f9                                        ; $7490: $0e $f9
	add b                                            ; $7492: $80
	ld c, $ff                                        ; $7493: $0e $ff
	nop                                              ; $7495: $00
	cp $f1                                           ; $7496: $fe $f1
	cp l                                             ; $7498: $bd
	ld h, e                                          ; $7499: $63
	ld a, e                                          ; $749a: $7b
	add [hl]                                         ; $749b: $86
	ld d, e                                          ; $749c: $53
	cp [hl]                                          ; $749d: $be
	ld sp, hl                                        ; $749e: $f9
	ld e, a                                          ; $749f: $5f

jr_01d_74a0:
	di                                               ; $74a0: $f3
	rra                                              ; $74a1: $1f
	and a                                            ; $74a2: $a7
	ld a, h                                          ; $74a3: $7c
	ld [hl], e                                       ; $74a4: $73
	rst $38                                          ; $74a5: $ff
	ret z                                            ; $74a6: $c8

	rst GetHLinHL                                          ; $74a7: $cf
	add a                                            ; $74a8: $87
	add a                                            ; $74a9: $87
	push bc                                          ; $74aa: $c5
	ld b, a                                          ; $74ab: $47
	push hl                                          ; $74ac: $e5
	ld h, a                                          ; $74ad: $67
	ld d, [hl]                                       ; $74ae: $56
	cp [hl]                                          ; $74af: $be
	cp d                                             ; $74b0: $ba
	and $91                                          ; $74b1: $e6 $91
	jp c, $92f6                                      ; $74b3: $da $f6 $92

	cp $34                                           ; $74b6: $fe $34
	db $fc                                           ; $74b8: $fc
	ret c                                            ; $74b9: $d8

	ld hl, sp+$54                                    ; $74ba: $f8 $54
	db $fc                                           ; $74bc: $fc
	ld d, h                                          ; $74bd: $54
	db $fc                                           ; $74be: $fc
	dec bc                                           ; $74bf: $0b
	ld a, [bc]                                       ; $74c0: $0a
	ld a, e                                          ; $74c1: $7b
	and h                                            ; $74c2: $a4
	ld a, a                                          ; $74c3: $7f

jr_01d_74c4:
	cp $9e                                           ; $74c4: $fe $9e
	inc bc                                           ; $74c6: $03
	ld l, [hl]                                       ; $74c7: $6e
	ld [hl], d                                       ; $74c8: $72
	rst $38                                          ; $74c9: $ff
	adc e                                            ; $74ca: $8b
	rst $38                                          ; $74cb: $ff
	ld [hl], l                                       ; $74cc: $75
	rst $38                                          ; $74cd: $ff
	ccf                                              ; $74ce: $3f
	rst $38                                          ; $74cf: $ff
	dec h                                            ; $74d0: $25
	rst $38                                          ; $74d1: $ff
	ld d, $ff                                        ; $74d2: $16 $ff
	inc e                                            ; $74d4: $1c
	rst $38                                          ; $74d5: $ff
	xor e                                            ; $74d6: $ab
	rst $38                                          ; $74d7: $ff
	jp hl                                            ; $74d8: $e9


	rst $38                                          ; $74d9: $ff
	db $e4                                           ; $74da: $e4
	ld a, [$f09a]                                    ; $74db: $fa $9a $f0
	db $10                                           ; $74de: $10
	ld [hl], e                                       ; $74df: $73
	cp $95                                           ; $74e0: $fe $95
	jr nc, jr_01d_74c4                               ; $74e2: $30 $e0

	ld h, b                                          ; $74e4: $60
	ret nz                                           ; $74e5: $c0

	ret nz                                           ; $74e6: $c0

	add b                                            ; $74e7: $80
	add b                                            ; $74e8: $80
	rrca                                             ; $74e9: $0f
	rrca                                             ; $74ea: $0f
	ld a, [bc]                                       ; $74eb: $0a
	ld [hl], e                                       ; $74ec: $73
	cp $8b                                           ; $74ed: $fe $8b
	ld [de], a                                       ; $74ef: $12
	rra                                              ; $74f0: $1f
	inc d                                            ; $74f1: $14
	rra                                              ; $74f2: $1f
	inc h                                            ; $74f3: $24
	ccf                                              ; $74f4: $3f
	inc h                                            ; $74f5: $24
	ccf                                              ; $74f6: $3f
	pop af                                           ; $74f7: $f1
	rst $38                                          ; $74f8: $ff
	cp [hl]                                          ; $74f9: $be
	cp $ae                                           ; $74fa: $fe $ae
	ld a, [$f9af]                                    ; $74fc: $fa $af $f9
	sub a                                            ; $74ff: $97
	rst $38                                          ; $7500: $ff
	sub h                                            ; $7501: $94
	db $fc                                           ; $7502: $fc
	ld [hl], a                                       ; $7503: $77
	cp $f1                                           ; $7504: $fe $f1
	sub [hl]                                         ; $7506: $96
	dec h                                            ; $7507: $25
	ld a, [hl-]                                      ; $7508: $3a
	jr nz, jr_01d_754a                               ; $7509: $20 $3f

	rra                                              ; $750b: $1f
	ld [de], a                                       ; $750c: $12
	jr nz, jr_01d_754e                               ; $750d: $20 $3f

	ld a, [hl+]                                      ; $750f: $2a
	ld a, e                                          ; $7510: $7b
	cp $92                                           ; $7511: $fe $92
	ld d, d                                          ; $7513: $52
	ld a, a                                          ; $7514: $7f
	ld d, d                                          ; $7515: $52
	ld a, a                                          ; $7516: $7f
	inc hl                                           ; $7517: $23
	db $e3                                           ; $7518: $e3
	inc hl                                           ; $7519: $23
	ldh [c], a                                       ; $751a: $e2
	jp $2742                                         ; $751b: $c3 $42 $27


	rst SubAFromBC                                          ; $751e: $e7
	and h                                            ; $751f: $a4
	ld a, e                                          ; $7520: $7b
	cp $80                                           ; $7521: $fe $80
	sub [hl]                                         ; $7523: $96
	rst FarCall                                          ; $7524: $f7
	ld d, e                                          ; $7525: $53
	di                                               ; $7526: $f3
	db $fd                                           ; $7527: $fd
	ld h, $eb                                        ; $7528: $26 $eb
	scf                                              ; $752a: $37
	rst SubAFromHL                                          ; $752b: $d7
	ld e, b                                          ; $752c: $58
	call c, $29df                                    ; $752d: $dc $df $29
	cp $04                                           ; $7530: $fe $04
	rst $38                                          ; $7532: $ff
	ld [bc], a                                       ; $7533: $02
	rst $38                                          ; $7534: $ff
	rra                                              ; $7535: $1f
	ld sp, hl                                        ; $7536: $f9
	ld sp, hl                                        ; $7537: $f9
	rrca                                             ; $7538: $0f
	ld a, [$db0f]                                    ; $7539: $fa $0f $db
	ccf                                              ; $753c: $3f
	db $fd                                           ; $753d: $fd
	rst $38                                          ; $753e: $ff
	adc c                                            ; $753f: $89
	ld a, [hl]                                       ; $7540: $7e
	dec de                                           ; $7541: $1b
	ld a, [hl]                                       ; $7542: $7e
	dec hl                                           ; $7543: $2b
	add b                                            ; $7544: $80
	db $f4                                           ; $7545: $f4
	swap h                                           ; $7546: $cb $34
	ld a, [hl+]                                      ; $7548: $2a
	rst $38                                          ; $7549: $ff

jr_01d_754a:
	sbc c                                            ; $754a: $99
	rst $38                                          ; $754b: $ff
	inc a                                            ; $754c: $3c
	rst SubAFromBC                                          ; $754d: $e7

jr_01d_754e:
	ld a, $e3                                        ; $754e: $3e $e3
	jp c, $ffb7                                      ; $7550: $da $b7 $ff

	inc b                                            ; $7553: $04
	sbc $61                                          ; $7554: $de $61
	rst $38                                          ; $7556: $ff
	pop hl                                           ; $7557: $e1
	xor l                                            ; $7558: $ad
	db $db                                           ; $7559: $db
	ld d, l                                          ; $755a: $55
	ei                                               ; $755b: $fb
	cp c                                             ; $755c: $b9
	rst FarCall                                          ; $755d: $f7
	cp c                                             ; $755e: $b9
	rst SubAFromDE                                          ; $755f: $df
	db $eb                                           ; $7560: $eb
	rst SubAFromDE                                          ; $7561: $df
	rst $38                                          ; $7562: $ff
	rrca                                             ; $7563: $0f
	sbc b                                            ; $7564: $98
	rst FarCall                                          ; $7565: $f7
	adc e                                            ; $7566: $8b
	rst $38                                          ; $7567: $ff
	jp z, $c040                                      ; $7568: $ca $40 $c0

	ld b, b                                          ; $756b: $40
	sbc $c0                                          ; $756c: $de $c0
	sbc h                                            ; $756e: $9c
	and b                                            ; $756f: $a0
	ldh [$60], a                                     ; $7570: $e0 $60
	ld a, e                                          ; $7572: $7b
	cp $9c                                           ; $7573: $fe $9c
	ldh a, [hDisp1_SCY]                                     ; $7575: $f0 $90
	ldh a, [$78]                                     ; $7577: $f0 $78
	add b                                            ; $7579: $80
	di                                               ; $757a: $f3
	add b                                            ; $757b: $80
	ld b, e                                          ; $757c: $43
	ld b, b                                          ; $757d: $40
	sbc a                                            ; $757e: $9f
	add e                                            ; $757f: $83
	ld a, [hl]                                       ; $7580: $7e
	inc e                                            ; $7581: $1c
	ld hl, sp+$70                                    ; $7582: $f8 $70
	sub e                                            ; $7584: $93
	sub c                                            ; $7585: $91
	ld h, $22                                        ; $7586: $26 $22
	inc l                                            ; $7588: $2c
	inc h                                            ; $7589: $24
	ld e, l                                          ; $758a: $5d
	ld b, h                                          ; $758b: $44
	rst AddAOntoHL                                          ; $758c: $ef
	inc e                                            ; $758d: $1c
	rst $38                                          ; $758e: $ff
	rlc a                                            ; $758f: $cb $07

jr_01d_7591:
	ld [$001b], sp                                   ; $7591: $08 $1b $00
	ld sp, $7000                                     ; $7594: $31 $00 $70
	jr nz, jr_01d_7591                               ; $7597: $20 $f8

	ld h, b                                          ; $7599: $60
	call c, $f082                                    ; $759a: $dc $82 $f0
	scf                                              ; $759d: $37
	ld [hl+], a                                      ; $759e: $22
	or e                                             ; $759f: $b3
	ld [de], a                                       ; $75a0: $12
	db $db                                           ; $75a1: $db
	sub c                                            ; $75a2: $91
	rst SubAFromDE                                          ; $75a3: $df
	adc c                                            ; $75a4: $89
	rst $38                                          ; $75a5: $ff
	ld c, b                                          ; $75a6: $48
	rst $38                                          ; $75a7: $ff
	ld b, h                                          ; $75a8: $44
	rst $38                                          ; $75a9: $ff
	inc h                                            ; $75aa: $24
	ld a, a                                          ; $75ab: $7f
	inc h                                            ; $75ac: $24
	pop af                                           ; $75ad: $f1
	rst AddAOntoHL                                          ; $75ae: $ef
	and h                                            ; $75af: $a4
	rrca                                             ; $75b0: $0f
	and [hl]                                         ; $75b1: $a6
	ld e, a                                          ; $75b2: $5f
	dec b                                            ; $75b3: $05
	db $fd                                           ; $75b4: $fd
	ld hl, sp-$08                                    ; $75b5: $f8 $f8
	call nc, Call_01d_77fc                           ; $75b7: $d4 $fc $77
	cp $88                                           ; $75ba: $fe $88
	and l                                            ; $75bc: $a5
	rst SubAFromBC                                          ; $75bd: $e7
	ld h, $e7                                        ; $75be: $26 $e7
	ld c, d                                          ; $75c0: $4a
	rst GetHLinHL                                          ; $75c1: $cf
	adc d                                            ; $75c2: $8a
	adc a                                            ; $75c3: $8f
	ld a, [bc]                                       ; $75c4: $0a
	rrca                                             ; $75c5: $0f
	rlca                                             ; $75c6: $07
	rlca                                             ; $75c7: $07
	inc b                                            ; $75c8: $04
	rlca                                             ; $75c9: $07
	ld b, $05                                        ; $75ca: $06 $05
	ld d, h                                          ; $75cc: $54
	db $fc                                           ; $75cd: $fc
	ld d, d                                          ; $75ce: $52
	cp $4a                                           ; $75cf: $fe $4a
	cp $49                                           ; $75d1: $fe $49
	ld a, d                                          ; $75d3: $7a
	ld a, $99                                        ; $75d4: $3e $99
	xor $fe                                          ; $75d6: $ee $fe
	and h                                            ; $75d8: $a4
	cp h                                             ; $75d9: $bc
	cp h                                             ; $75da: $bc
	and h                                            ; $75db: $a4
	ld h, l                                          ; $75dc: $65
	cpl                                              ; $75dd: $2f
	ld sp, hl                                        ; $75de: $f9
	ld a, l                                          ; $75df: $7d
	ld [hl], e                                       ; $75e0: $73
	ld a, l                                          ; $75e1: $7d
	sub e                                            ; $75e2: $93
	ld a, [hl]                                       ; $75e3: $7e
	rst JumpTable                                          ; $75e4: $c7
	ld a, h                                          ; $75e5: $7c
	adc [hl]                                         ; $75e6: $8e
	ld a, a                                          ; $75e7: $7f
	ld h, c                                          ; $75e8: $61
	sbc c                                            ; $75e9: $99
	ld l, c                                          ; $75ea: $69
	ld e, a                                          ; $75eb: $5f
	ld a, l                                          ; $75ec: $7d
	ld c, e                                          ; $75ed: $4b
	ld a, a                                          ; $75ee: $7f
	ld a, a                                          ; $75ef: $7f
	sbc $80                                          ; $75f0: $de $80
	ld [hl], e                                       ; $75f2: $73
	ld e, [hl]                                       ; $75f3: $5e
	ld h, [hl]                                       ; $75f4: $66
	ld h, $80                                        ; $75f5: $26 $80
	inc e                                            ; $75f7: $1c
	rra                                              ; $75f8: $1f
	rrca                                             ; $75f9: $0f
	rrca                                             ; $75fa: $0f
	add hl, bc                                       ; $75fb: $09
	rrca                                             ; $75fc: $0f
	rra                                              ; $75fd: $1f
	ld de, $161a                                     ; $75fe: $11 $1a $16
	ld [hl-], a                                      ; $7601: $32
	ld a, $3c                                        ; $7602: $3e $3c
	inc l                                            ; $7604: $2c
	ld b, h                                          ; $7605: $44
	ld b, h                                          ; $7606: $44
	db $fc                                           ; $7607: $fc
	db $fc                                           ; $7608: $fc
	and h                                            ; $7609: $a4
	cp h                                             ; $760a: $bc
	inc a                                            ; $760b: $3c
	inc h                                            ; $760c: $24
	inc [hl]                                         ; $760d: $34
	inc l                                            ; $760e: $2c
	inc [hl]                                         ; $760f: $34
	inc l                                            ; $7610: $2c
	inc h                                            ; $7611: $24
	inc a                                            ; $7612: $3c
	ld a, $3a                                        ; $7613: $3e $3a
	ld [hl+], a                                      ; $7615: $22
	sbc [hl]                                         ; $7616: $9e
	ld [hl+], a                                      ; $7617: $22
	pop af                                           ; $7618: $f1
	halt                                             ; $7619: $76
	call z, Call_01d_7fdf                            ; $761a: $cc $df $7f
	add b                                            ; $761d: $80
	dec h                                            ; $761e: $25
	dec a                                            ; $761f: $3d
	dec [hl]                                         ; $7620: $35
	dec l                                            ; $7621: $2d
	dec [hl]                                         ; $7622: $35

jr_01d_7623:
	dec l                                            ; $7623: $2d
	ld a, b                                          ; $7624: $78
	ld c, b                                          ; $7625: $48
	ld l, b                                          ; $7626: $68
	ld e, b                                          ; $7627: $58
	ld c, c                                          ; $7628: $49
	ld sp, hl                                        ; $7629: $f9
	ld c, b                                          ; $762a: $48
	ld hl, sp+$70                                    ; $762b: $f8 $70
	ldh a, [rAUD4LEN]                                ; $762d: $f0 $20
	ldh [$e0], a                                     ; $762f: $e0 $e0
	jr nz, jr_01d_7623                               ; $7631: $20 $f0

	db $10                                           ; $7633: $10
	or b                                             ; $7634: $b0
	ret nc                                           ; $7635: $d0

	ld hl, sp-$68                                    ; $7636: $f8 $98
	rst AddAOntoHL                                          ; $7638: $ef
	add sp, $0a                                      ; $7639: $e8 $0a
	dec c                                            ; $763b: $0d
	ld [$0fde], sp                                   ; $763c: $08 $de $0f
	ld a, a                                          ; $763f: $7f
	xor h                                            ; $7640: $ac
	ld a, a                                          ; $7641: $7f
	cp $9e                                           ; $7642: $fe $9e
	dec c                                            ; $7644: $0d
	ld a, e                                          ; $7645: $7b
	cp $9a                                           ; $7646: $fe $9a
	db $db                                           ; $7648: $db
	dec [hl]                                         ; $7649: $35
	sub l                                            ; $764a: $95
	ld a, [hl]                                       ; $764b: $7e
	ld [de], a                                       ; $764c: $12
	ld a, d                                          ; $764d: $7a
	ld b, a                                          ; $764e: $47
	sbc c                                            ; $764f: $99
	ld e, c                                          ; $7650: $59
	rst $38                                          ; $7651: $ff
	ld e, a                                          ; $7652: $5f
	rst $38                                          ; $7653: $ff
	ccf                                              ; $7654: $3f
	pop af                                           ; $7655: $f1
	ld a, d                                          ; $7656: $7a
	ld h, c                                          ; $7657: $61
	add b                                            ; $7658: $80
	pop hl                                           ; $7659: $e1
	rst $38                                          ; $765a: $ff
	and c                                            ; $765b: $a1
	rst $38                                          ; $765c: $ff
	ld e, $fb                                        ; $765d: $1e $fb
	ld e, $f3                                        ; $765f: $1e $f3
	adc [hl]                                         ; $7661: $8e
	db $db                                           ; $7662: $db
	push hl                                          ; $7663: $e5
	ld a, $3f                                        ; $7664: $3e $3f
	ld d, c                                          ; $7666: $51
	ld a, a                                          ; $7667: $7f
	ei                                               ; $7668: $fb
	xor $ff                                          ; $7669: $ee $ff
	ld c, [hl]                                       ; $766b: $4e
	jp hl                                            ; $766c: $e9


	rra                                              ; $766d: $1f
	pop af                                           ; $766e: $f1
	rra                                              ; $766f: $1f
	ldh [c], a                                       ; $7670: $e2
	ld a, a                                          ; $7671: $7f
	and h                                            ; $7672: $a4
	rst $38                                          ; $7673: $ff
	and h                                            ; $7674: $a4
	rst $38                                          ; $7675: $ff
	add hl, sp                                       ; $7676: $39
	rst $38                                          ; $7677: $ff
	halt                                             ; $7678: $76
	ld h, $93                                        ; $7679: $26 $93
	sub [hl]                                         ; $767b: $96
	or $38                                           ; $767c: $f6 $38
	rst $38                                          ; $767e: $ff
	ld h, c                                          ; $767f: $61
	rst $38                                          ; $7680: $ff
	ld h, a                                          ; $7681: $67
	rst SubAFromDE                                          ; $7682: $df
	call z, $dcbf                                    ; $7683: $cc $bf $dc
	inc sp                                           ; $7686: $33
	ld d, l                                          ; $7687: $55
	ld [hl], b                                       ; $7688: $70
	ld a, [hl]                                       ; $7689: $7e
	xor [hl]                                         ; $768a: $ae
	ld a, a                                          ; $768b: $7f
	db $e3                                           ; $768c: $e3
	add b                                            ; $768d: $80
	ld e, c                                          ; $768e: $59
	ld c, b                                          ; $768f: $48
	ld e, e                                          ; $7690: $5b
	ld c, c                                          ; $7691: $49
	ld e, e                                          ; $7692: $5b
	ld c, c                                          ; $7693: $49
	ld a, a                                          ; $7694: $7f
	ld c, d                                          ; $7695: $4a
	dec sp                                           ; $7696: $3b
	ld l, $27                                        ; $7697: $2e $27
	ld [hl], $13                                     ; $7699: $36 $13
	ld [de], a                                       ; $769b: $12
	ld bc, $ba01                                     ; $769c: $01 $01 $ba
	call c, $cebd                                    ; $769f: $dc $bd $ce
	sbc $e7                                          ; $76a2: $de $e7
	cp a                                             ; $76a4: $bf
	or e                                             ; $76a5: $b3
	rst $38                                          ; $76a6: $ff
	ldh [c], a                                       ; $76a7: $e2
	ld a, a                                          ; $76a8: $7f
	jp nz, $3bc7                                     ; $76a9: $c2 $c7 $3b

	cp $87                                           ; $76ac: $fe $87
	inc bc                                           ; $76ae: $03
	ccf                                              ; $76af: $3f
	ld [de], a                                       ; $76b0: $12
	dec de                                           ; $76b1: $1b
	ld c, $cf                                        ; $76b2: $0e $cf
	ld b, $3b                                        ; $76b4: $06 $3b
	add $ff                                          ; $76b6: $c6 $ff
	ld a, h                                          ; $76b8: $7c
	ld a, a                                          ; $76b9: $7f
	rst $38                                          ; $76ba: $ff
	adc h                                            ; $76bb: $8c
	rst $38                                          ; $76bc: $ff
	ld [hl], a                                       ; $76bd: $77
	rst $38                                          ; $76be: $ff
	jp nc, $cafe                                     ; $76bf: $d2 $fe $ca

	cp $c9                                           ; $76c2: $fe $c9
	rst $38                                          ; $76c4: $ff
	ret                                              ; $76c5: $c9


	ld a, d                                          ; $76c6: $7a
	ldh [c], a                                       ; $76c7: $e2
	add b                                            ; $76c8: $80
	db $fc                                           ; $76c9: $fc
	db $e4                                           ; $76ca: $e4
	inc a                                            ; $76cb: $3c
	db $f4                                           ; $76cc: $f4
	cp $8a                                           ; $76cd: $fe $8a
	ld b, $05                                        ; $76cf: $06 $05
	dec c                                            ; $76d1: $0d
	dec bc                                           ; $76d2: $0b
	rrca                                             ; $76d3: $0f
	add hl, bc                                       ; $76d4: $09
	rla                                              ; $76d5: $17
	rla                                              ; $76d6: $17
	inc de                                           ; $76d7: $13
	ld de, $1f1f                                     ; $76d8: $11 $1f $1f
	ccf                                              ; $76db: $3f
	ccf                                              ; $76dc: $3f
	ld [hl], a                                       ; $76dd: $77
	ld l, a                                          ; $76de: $6f
	cp d                                             ; $76df: $ba
	and [hl]                                         ; $76e0: $a6
	ld e, $12                                        ; $76e1: $1e $12
	rra                                              ; $76e3: $1f
	inc de                                           ; $76e4: $13
	rrca                                             ; $76e5: $0f
	dec c                                            ; $76e6: $0d
	add hl, bc                                       ; $76e7: $09
	ld [hl], a                                       ; $76e8: $77
	ld c, e                                          ; $76e9: $4b
	sbc h                                            ; $76ea: $9c
	rra                                              ; $76eb: $1f
	ld c, $fd                                        ; $76ec: $0e $fd
	ei                                               ; $76ee: $fb
	rst SubAFromDE                                          ; $76ef: $df
	ld bc, $8387                                     ; $76f0: $01 $87 $83
	add a                                            ; $76f3: $87
	add e                                            ; $76f4: $83
	rst $38                                          ; $76f5: $ff
	jp $e0ff                                         ; $76f6: $c3 $ff $e0


	rst $38                                          ; $76f9: $ff
	ld c, h                                          ; $76fa: $4c
	ld a, a                                          ; $76fb: $7f
	ld c, h                                          ; $76fc: $4c
	ld a, a                                          ; $76fd: $7f
	adc d                                            ; $76fe: $8a
	ei                                               ; $76ff: $fb
	ei                                               ; $7700: $fb
	rst $38                                          ; $7701: $ff
	db $db                                           ; $7702: $db
	ld a, $fb                                        ; $7703: $3e $fb
	rst $38                                          ; $7705: $ff
	pop af                                           ; $7706: $f1
	rst $38                                          ; $7707: $ff
	nop                                              ; $7708: $00
	rst $38                                          ; $7709: $ff
	ld a, d                                          ; $770a: $7a
	pop bc                                           ; $770b: $c1
	adc e                                            ; $770c: $8b
	ret nz                                           ; $770d: $c0

	ld hl, $e1e1                                     ; $770e: $21 $e1 $e1
	db $e3                                           ; $7711: $e3
	or c                                             ; $7712: $b1
	ld a, a                                          ; $7713: $7f
	ldh a, [rIE]                                     ; $7714: $f0 $ff
	ldh a, [rIE]                                     ; $7716: $f0 $ff
	nop                                              ; $7718: $00
	ld hl, sp+$7c                                    ; $7719: $f8 $7c
	ld a, h                                          ; $771b: $7c
	db $fc                                           ; $771c: $fc
	rst $38                                          ; $771d: $ff
	db $ec                                           ; $771e: $ec
	rst SubAFromDE                                          ; $771f: $df
	ld hl, sp+$77                                    ; $7720: $f8 $77
	db $f4                                           ; $7722: $f4
	ld [hl], a                                       ; $7723: $77
	cp $95                                           ; $7724: $fe $95
	rra                                              ; $7726: $1f
	ld a, $3e                                        ; $7727: $3e $3e
	ccf                                              ; $7729: $3f
	rst $38                                          ; $772a: $ff
	ld a, $fd                                        ; $772b: $3e $fd
	ccf                                              ; $772d: $3f
	rst $38                                          ; $772e: $ff
	rra                                              ; $772f: $1f
	ld l, a                                          ; $7730: $6f
	ldh a, [$9e]                                     ; $7731: $f0 $9e
	ld hl, sp+$6f                                    ; $7733: $f8 $6f
	ld b, [hl]                                       ; $7735: $46
	sub c                                            ; $7736: $91
	add c                                            ; $7737: $81
	pop hl                                           ; $7738: $e1
	inc bc                                           ; $7739: $03
	cp $03                                           ; $773a: $fe $03
	rst $38                                          ; $773c: $ff
	ld bc, $0087                                     ; $773d: $01 $87 $00
	inc bc                                           ; $7740: $03
	cp b                                             ; $7741: $b8
	cp b                                             ; $7742: $b8
	ret c                                            ; $7743: $d8

	adc b                                            ; $7744: $88
	db $dd                                           ; $7745: $dd
	ld hl, sp-$62                                    ; $7746: $f8 $9e
	ld a, b                                          ; $7748: $78
	ld a, e                                          ; $7749: $7b

Call_01d_774a:
	adc $7f                                          ; $774a: $ce $7f
	and d                                            ; $774c: $a2
	ld a, a                                          ; $774d: $7f
	sbc $94                                          ; $774e: $de $94
	ld a, b                                          ; $7750: $78
	ld l, b                                          ; $7751: $68
	ld c, h                                          ; $7752: $4c
	ld b, h                                          ; $7753: $44
	ld a, h                                          ; $7754: $7c
	ld a, h                                          ; $7755: $7c
	ld a, [hl]                                       ; $7756: $7e
	ld a, [hl]                                       ; $7757: $7e
	ld [hl], a                                       ; $7758: $77
	rst AddAOntoHL                                          ; $7759: $ef
	ccf                                              ; $775a: $3f
	ld a, c                                          ; $775b: $79
	dec e                                            ; $775c: $1d
	ld a, a                                          ; $775d: $7f
	ldh a, [$9c]                                     ; $775e: $f0 $9c
	inc b                                            ; $7760: $04
	rrca                                             ; $7761: $0f
	inc c                                            ; $7762: $0c
	ld a, e                                          ; $7763: $7b
	cp $7f                                           ; $7764: $fe $7f
	ld a, [$0380]                                    ; $7766: $fa $80 $03
	rlca                                             ; $7769: $07
	inc bc                                           ; $776a: $03
	add b                                            ; $776b: $80
	inc bc                                           ; $776c: $03

jr_01d_776d:
	jp nz, $f302                                     ; $776d: $c2 $02 $f3

	xor [hl]                                         ; $7770: $ae
	rst $38                                          ; $7771: $ff
	and l                                            ; $7772: $a5
	rst $38                                          ; $7773: $ff
	sub a                                            ; $7774: $97
	rst $38                                          ; $7775: $ff
	sub d                                            ; $7776: $92
	rst $38                                          ; $7777: $ff
	db $fc                                           ; $7778: $fc
	rst $38                                          ; $7779: $ff
	cp $d3                                           ; $777a: $fe $d3
	rst $38                                          ; $777c: $ff
	ld d, c                                          ; $777d: $51
	rst $38                                          ; $777e: $ff
	ld l, a                                          ; $777f: $6f
	sbc a                                            ; $7780: $9f
	ldh [$be], a                                     ; $7781: $e0 $be
	pop bc                                           ; $7783: $c1
	jr jr_01d_776d                                   ; $7784: $18 $e7

	rla                                              ; $7786: $17
	add b                                            ; $7787: $80
	ld hl, sp+$39                                    ; $7788: $f8 $39
	rst $38                                          ; $778a: $ff
	ld [hl], c                                       ; $778b: $71
	rst $38                                          ; $778c: $ff
	sub $df                                          ; $778d: $d6 $df
	ld h, $3f                                        ; $778f: $26 $3f
	ld sp, $71ef                                     ; $7791: $31 $ef $71
	rst GetHLinHL                                          ; $7794: $cf
	db $ec                                           ; $7795: $ec
	sbc a                                            ; $7796: $9f
	ret c                                            ; $7797: $d8

	or a                                             ; $7798: $b7
	inc l                                            ; $7799: $2c
	di                                               ; $779a: $f3
	ld e, a                                          ; $779b: $5f
	ldh [rHDMA4], a                                  ; $779c: $e0 $54
	rst AddAOntoHL                                          ; $779e: $ef
	adc l                                            ; $779f: $8d
	rst $38                                          ; $77a0: $ff
	add hl, sp                                       ; $77a1: $39
	rst SubAFromBC                                          ; $77a2: $e7
	ld [hl], d                                       ; $77a3: $72
	rst GetHLinHL                                          ; $77a4: $cf
	inc e                                            ; $77a5: $1c
	rst AddAOntoHL                                          ; $77a6: $ef
	add l                                            ; $77a7: $85
	ld a, [hl-]                                      ; $77a8: $3a
	rst JumpTable                                          ; $77a9: $c7
	ld h, l                                          ; $77aa: $65
	cp e                                             ; $77ab: $bb
	sub c                                            ; $77ac: $91
	rst $38                                          ; $77ad: $ff
	pop de                                           ; $77ae: $d1
	rst $38                                          ; $77af: $ff
	db $db                                           ; $77b0: $db
	ld l, a                                          ; $77b1: $6f
	ldh [$e0], a                                     ; $77b2: $e0 $e0
	ld hl, sp+$18                                    ; $77b4: $f8 $18
	inc [hl]                                         ; $77b6: $34
	call z, $fee2                                    ; $77b7: $cc $e2 $fe
	add hl, sp                                       ; $77ba: $39
	rst $38                                          ; $77bb: $ff
	rst GetHLinHL                                          ; $77bc: $cf
	rst $38                                          ; $77bd: $ff
	jr z, @-$06                                      ; $77be: $28 $f8

	db $10                                           ; $77c0: $10
	ld hl, sp+$04                                    ; $77c1: $f8 $04
	nop                                              ; $77c3: $00
	ldh [$b1], a                                     ; $77c4: $e0 $b1
	ld [bc], a                                       ; $77c6: $02
	adc b                                            ; $77c7: $88
	call c, $de03                                    ; $77c8: $dc $03 $de
	inc b                                            ; $77cb: $04
	db $dd                                           ; $77cc: $dd
	ld [bc], a                                       ; $77cd: $02
	sbc [hl]                                         ; $77ce: $9e
	inc bc                                           ; $77cf: $03
	sbc $07                                          ; $77d0: $de $07
	add a                                            ; $77d2: $87
	rst $38                                          ; $77d3: $ff
	db $fd                                           ; $77d4: $fd
	rst $38                                          ; $77d5: $ff
	cp $97                                           ; $77d6: $fe $97
	sbc e                                            ; $77d8: $9b
	rst FarCall                                          ; $77d9: $f7
	or $83                                           ; $77da: $f6 $83
	adc $79                                          ; $77dc: $ce $79
	ld e, e                                          ; $77de: $5b
	db $fc                                           ; $77df: $fc

Call_01d_77e0:
	db $fc                                           ; $77e0: $fc
	ld hl, sp-$63                                    ; $77e1: $f8 $9d
	adc b                                            ; $77e3: $88
	ld l, a                                          ; $77e4: $6f
	db $10                                           ; $77e5: $10
	add b                                            ; $77e6: $80
	nop                                              ; $77e7: $00
	add b                                            ; $77e8: $80
	pop af                                           ; $77e9: $f1
	rst SubAFromHL                                          ; $77ea: $d7
	sbc $ff                                          ; $77eb: $de $ff
	add b                                            ; $77ed: $80
	ld a, a                                          ; $77ee: $7f
	rst $38                                          ; $77ef: $ff
	ld a, a                                          ; $77f0: $7f
	sbc [hl]                                         ; $77f1: $9e
	cp b                                             ; $77f2: $b8
	ld a, [hl]                                       ; $77f3: $7e
	ld [hl], a                                       ; $77f4: $77
	cp e                                             ; $77f5: $bb
	ld d, [hl]                                       ; $77f6: $56
	and e                                            ; $77f7: $a3
	or c                                             ; $77f8: $b1
	rst $38                                          ; $77f9: $ff
	xor $e6                                          ; $77fa: $ee $e6

Call_01d_77fc:
	sbc a                                            ; $77fc: $9f
	rst GetHLinHL                                          ; $77fd: $cf
	rst AddAOntoHL                                          ; $77fe: $ef

Call_01d_77ff:
	ld a, a                                          ; $77ff: $7f
	ld a, a                                          ; $7800: $7f
	ccf                                              ; $7801: $3f
	sbc a                                            ; $7802: $9f
	ld a, a                                          ; $7803: $7f

jr_01d_7804:
	di                                               ; $7804: $f3
	dec h                                            ; $7805: $25
	sub d                                            ; $7806: $92
	rrca                                             ; $7807: $0f
	xor c                                            ; $7808: $a9
	rst JumpTable                                          ; $7809: $c7
	dec sp                                           ; $780a: $3b
	ld a, a                                          ; $780b: $7f
	rst $38                                          ; $780c: $ff
	sbc l                                            ; $780d: $9d
	daa                                              ; $780e: $27
	or e                                             ; $780f: $b3
	db $dd                                           ; $7810: $dd
	rst $38                                          ; $7811: $ff
	sub a                                            ; $7812: $97
	rrca                                             ; $7813: $0f
	add a                                            ; $7814: $87
	ldh [$50], a                                     ; $7815: $e0 $50
	or b                                             ; $7817: $b0
	add sp, $30                                      ; $7818: $e8 $30
	add hl, hl                                       ; $781a: $29
	sbc $ff                                          ; $781b: $de $ff
	ld a, a                                          ; $781d: $7f
	jp nz, $f89a                                     ; $781e: $c2 $9a $f8

	ldh a, [$f9]                                     ; $7821: $f0 $f9
	ldh [$c0], a                                     ; $7823: $e0 $c0
	db $fd                                           ; $7825: $fd
	sbc d                                            ; $7826: $9a
	jr nc, jr_01d_7804                               ; $7827: $30 $db

	rst $38                                          ; $7829: $ff
	cp $e0                                           ; $782a: $fe $e0
	ld [hl], a                                       ; $782c: $77
	ld hl, sp-$62                                    ; $782d: $f8 $9e
	set 7, d                                         ; $782f: $cb $fa
	sbc l                                            ; $7831: $9d
	sbc [hl]                                         ; $7832: $9e
	rst $38                                          ; $7833: $ff
	ld l, e                                          ; $7834: $6b
	ld hl, sp-$06                                    ; $7835: $f8 $fa
	sbc [hl]                                         ; $7837: $9e
	xor $4b                                          ; $7838: $ee $4b
	ld hl, sp-$07                                    ; $783a: $f8 $f9
	sbc [hl]                                         ; $783c: $9e
	ld bc, $7ff2                                     ; $783d: $01 $f2 $7f
	ld [hl], h                                       ; $7840: $74
	ld c, a                                          ; $7841: $4f
	add sp, -$62                                     ; $7842: $e8 $9e
	dec b                                            ; $7844: $05
	ld a, [$889d]                                    ; $7845: $fa $9d $88
	inc bc                                           ; $7848: $03
	ei                                               ; $7849: $fb
	sbc [hl]                                         ; $784a: $9e
	ld hl, sp-$06                                    ; $784b: $f8 $fa
	sbc l                                            ; $784d: $9d
	inc bc                                           ; $784e: $03
	rst $38                                          ; $784f: $ff
	ld l, a                                          ; $7850: $6f
	sbc $de                                          ; $7851: $de $de
	inc bc                                           ; $7853: $03
	add b                                            ; $7854: $80
	rlca                                             ; $7855: $07
	dec c                                            ; $7856: $0d
	rrca                                             ; $7857: $0f
	rla                                              ; $7858: $17

jr_01d_7859:
	ei                                               ; $7859: $fb
	rst SubAFromHL                                          ; $785a: $d7
	cp $ff                                           ; $785b: $fe $ff
	ld a, $0b                                        ; $785d: $3e $0b
	rla                                              ; $785f: $17
	scf                                              ; $7860: $37
	ld sp, hl                                        ; $7861: $f9
	ld d, b                                          ; $7862: $50
	cp $fe                                           ; $7863: $fe $fe
	rst $38                                          ; $7865: $ff
	sbc $ff                                          ; $7866: $de $ff

jr_01d_7868:
	cp $89                                           ; $7868: $fe $89
	db $eb                                           ; $786a: $eb
	ld h, h                                          ; $786b: $64
	db $fc                                           ; $786c: $fc
	ld h, d                                          ; $786d: $62
	cp [hl]                                          ; $786e: $be
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	cp $6c                                           ; $7871: $fe $6c
	ld a, [hl+]                                      ; $7873: $2a
	sub l                                            ; $7874: $95
	ld c, d                                          ; $7875: $4a
	ld a, a                                          ; $7876: $7f
	ret nz                                           ; $7877: $c0

	nop                                              ; $7878: $00
	db $10                                           ; $7879: $10
	ld sp, $3ff0                                     ; $787a: $31 $f0 $3f
	ld [hl], a                                       ; $787d: $77
	ld a, a                                          ; $787e: $7f
	db $dd                                           ; $787f: $dd
	rst $38                                          ; $7880: $ff
	add b                                            ; $7881: $80
	ld l, a                                          ; $7882: $6f
	sub h                                            ; $7883: $94
	or e                                             ; $7884: $b3
	rst SubAFromBC                                          ; $7885: $e7
	scf                                              ; $7886: $37
	rrca                                             ; $7887: $0f
	ld c, $2f                                        ; $7888: $0e $2f
	cp l                                             ; $788a: $bd
	rst $38                                          ; $788b: $ff
	db $fc                                           ; $788c: $fc
	ld sp, hl                                        ; $788d: $f9
	cp $fc                                           ; $788e: $fe $fc
	rst FarCall                                          ; $7890: $f7
	ldh a, [c]                                       ; $7891: $f2
	db $d3                                           ; $7892: $d3
	ld a, h                                          ; $7893: $7c
	sub e                                            ; $7894: $93
	rst JumpTable                                          ; $7895: $c7
	rst JumpTable                                          ; $7896: $c7
	rst SubAFromHL                                          ; $7897: $d7
	jr c, jr_01d_7859                                ; $7898: $38 $bf

	db $db                                           ; $789a: $db
	rst GetHLinHL                                          ; $789b: $cf
	ld l, h                                          ; $789c: $6c
	ei                                               ; $789d: $fb
	ld a, h                                          ; $789e: $7c
	jr z, jr_01d_7868                                ; $789f: $28 $c7

	sub l                                            ; $78a1: $95
	ld h, h                                          ; $78a2: $64
	inc a                                            ; $78a3: $3c
	ld d, h                                          ; $78a4: $54
	ld d, h                                          ; $78a5: $54
	ret c                                            ; $78a6: $d8

	ret z                                            ; $78a7: $c8

	ld b, b                                          ; $78a8: $40
	ldh [rLCDC], a                                   ; $78a9: $e0 $40
	ret nz                                           ; $78ab: $c0

	ld a, d                                          ; $78ac: $7a
	db $e4                                           ; $78ad: $e4
	sbc d                                            ; $78ae: $9a
	add sp, -$20                                     ; $78af: $e8 $e0
	ld h, b                                          ; $78b1: $60
	ret nz                                           ; $78b2: $c0

	ret nz                                           ; $78b3: $c0

	ld a, d                                          ; $78b4: $7a
	add $73                                          ; $78b5: $c6 $73
	sub [hl]                                         ; $78b7: $96
	rst SubAFromDE                                          ; $78b8: $df
	rlca                                             ; $78b9: $07
	sbc [hl]                                         ; $78ba: $9e
	inc bc                                           ; $78bb: $03
	ld [hl], e                                       ; $78bc: $73
	ld hl, sp-$69                                    ; $78bd: $f8 $97
	xor c                                            ; $78bf: $a9
	inc de                                           ; $78c0: $13
	ld h, a                                          ; $78c1: $67
	cp a                                             ; $78c2: $bf
	rst SubAFromHL                                          ; $78c3: $d7
	rst SubAFromHL                                          ; $78c4: $d7
	ld e, a                                          ; $78c5: $5f
	ld e, e                                          ; $78c6: $5b
	sbc $ff                                          ; $78c7: $de $ff
	ld a, [hl]                                       ; $78c9: $7e
	or [hl]                                          ; $78ca: $b6
	ld a, a                                          ; $78cb: $7f
	cp $80                                           ; $78cc: $fe $80
	or $3f                                           ; $78ce: $f6 $3f
	ld a, c                                          ; $78d0: $79
	db $fd                                           ; $78d1: $fd
	rst $38                                          ; $78d2: $ff
	ld a, [hl]                                       ; $78d3: $7e
	rst $38                                          ; $78d4: $ff
	inc a                                            ; $78d5: $3c
	rst SubAFromDE                                          ; $78d6: $df
	ld [$86cf], a                                    ; $78d7: $ea $cf $86
	jp $c342                                         ; $78da: $c3 $42 $c3


	jp $cc28                                         ; $78dd: $c3 $28 $cc


	ld l, d                                          ; $78e0: $6a
	sbc l                                            ; $78e1: $9d
	sbc $fb                                          ; $78e2: $de $fb
	cp $f7                                           ; $78e4: $fe $f7
	push hl                                          ; $78e6: $e5
	ld a, a                                          ; $78e7: $7f
	cp l                                             ; $78e8: $bd
	ei                                               ; $78e9: $fb
	di                                               ; $78ea: $f3
	rst FarCall                                          ; $78eb: $f7
	sub l                                            ; $78ec: $95
	sub l                                            ; $78ed: $95
	cp l                                             ; $78ee: $bd
	ccf                                              ; $78ef: $3f
	ld d, h                                          ; $78f0: $54
	xor b                                            ; $78f1: $a8
	ret nz                                           ; $78f2: $c0

	ld d, l                                          ; $78f3: $55
	cp d                                             ; $78f4: $ba
	or [hl]                                          ; $78f5: $b6
	cp e                                             ; $78f6: $bb
	ld a, e                                          ; $78f7: $7b
	sbc $ff                                          ; $78f8: $de $ff
	sub d                                            ; $78fa: $92
	cp $df                                           ; $78fb: $fe $df
	rst $38                                          ; $78fd: $ff
	rst AddAOntoHL                                          ; $78fe: $ef
	adc l                                            ; $78ff: $8d
	xor [hl]                                         ; $7900: $ae
	ld a, l                                          ; $7901: $7d
	cp l                                             ; $7902: $bd
	push af                                          ; $7903: $f5
	or $52                                           ; $7904: $f6 $52
	ld e, e                                          ; $7906: $5b
	rla                                              ; $7907: $17
	ld a, d                                          ; $7908: $7a
	sub c                                            ; $7909: $91
	add h                                            ; $790a: $84
	ccf                                              ; $790b: $3f
	ld a, $be                                        ; $790c: $3e $be
	cp a                                             ; $790e: $bf
	rst $38                                          ; $790f: $ff
	db $ec                                           ; $7910: $ec
	ld [hl], b                                       ; $7911: $70
	cp [hl]                                          ; $7912: $be
	pop hl                                           ; $7913: $e1
	ld h, b                                          ; $7914: $60
	xor h                                            ; $7915: $ac
	cp $7e                                           ; $7916: $fe $7e
	rst SubAFromDE                                          ; $7918: $df
	ccf                                              ; $7919: $3f
	ld a, a                                          ; $791a: $7f
	rst $38                                          ; $791b: $ff
	ld e, a                                          ; $791c: $5f
	rst SubAFromHL                                          ; $791d: $d7
	and l                                            ; $791e: $a5
	xor c                                            ; $791f: $a9
	ld b, e                                          ; $7920: $43
	ld bc, $8c70                                     ; $7921: $01 $70 $8c
	ld b, $a5                                        ; $7924: $06 $a5
	db $db                                           ; $7926: $db
	rst $38                                          ; $7927: $ff
	add b                                            ; $7928: $80
	ei                                               ; $7929: $fb
	db $db                                           ; $792a: $db
	sub c                                            ; $792b: $91
	sub h                                            ; $792c: $94
	or c                                             ; $792d: $b1
	cp $59                                           ; $792e: $fe $59
	ld l, a                                          ; $7930: $6f
	inc a                                            ; $7931: $3c
	jr c, jr_01d_7967                                ; $7932: $38 $33

	xor d                                            ; $7934: $aa
	sbc a                                            ; $7935: $9f
	cp a                                             ; $7936: $bf
	rst GetHLinHL                                          ; $7937: $cf
	rst SubAFromDE                                          ; $7938: $df
	rst $38                                          ; $7939: $ff
	cp $fd                                           ; $793a: $fe $fd
	rst FarCall                                          ; $793c: $f7
	ld bc, $c0ff                                     ; $793d: $01 $ff $c0
	ld [hl+], a                                      ; $7940: $22
	nop                                              ; $7941: $00
	ld hl, sp-$79                                    ; $7942: $f8 $87
	nop                                              ; $7944: $00
	ld bc, rIE                                     ; $7945: $01 $ff $ff
	add c                                            ; $7948: $81
	pop bc                                           ; $7949: $c1
	nop                                              ; $794a: $00
	ld a, b                                          ; $794b: $78
	rst $38                                          ; $794c: $ff
	rst $38                                          ; $794d: $ff
	nop                                              ; $794e: $00
	and b                                            ; $794f: $a0
	jr nc, @+$0a                                     ; $7950: $30 $08

	add l                                            ; $7952: $85
	ld b, a                                          ; $7953: $47
	inc hl                                           ; $7954: $23
	sub e                                            ; $7955: $93
	ret nz                                           ; $7956: $c0

	ldh [$f0], a                                     ; $7957: $e0 $f0
	ld hl, sp+$7d                                    ; $7959: $f8 $7d
	ccf                                              ; $795b: $3f
	rra                                              ; $795c: $1f
	sbc a                                            ; $795d: $9f
	ld [de], a                                       ; $795e: $12
	inc [hl]                                         ; $795f: $34
	ld d, h                                          ; $7960: $54
	ret z                                            ; $7961: $c8

	adc c                                            ; $7962: $89
	inc d                                            ; $7963: $14
	ld [hl+], a                                      ; $7964: $22
	inc [hl]                                         ; $7965: $34
	rra                                              ; $7966: $1f

jr_01d_7967:
	ld a, e                                          ; $7967: $7b
	or b                                             ; $7968: $b0
	sbc $ff                                          ; $7969: $de $ff
	sub e                                            ; $796b: $93
	rst AddAOntoHL                                          ; $796c: $ef
	jr nc, jr_01d_79b0                               ; $796d: $30 $41

	adc [hl]                                         ; $796f: $8e
	and b                                            ; $7970: $a0
	ld a, c                                          ; $7971: $79
	ld b, a                                          ; $7972: $47
	add b                                            ; $7973: $80
	rlca                                             ; $7974: $07
	rst FarCall                                          ; $7975: $f7
	rst $38                                          ; $7976: $ff
	cp $7b                                           ; $7977: $fe $7b
	cp $7f                                           ; $7979: $fe $7f
	db $fd                                           ; $797b: $fd
	add b                                            ; $797c: $80
	ld b, [hl]                                       ; $797d: $46
	adc l                                            ; $797e: $8d
	ld a, [bc]                                       ; $797f: $0a
	sbc l                                            ; $7980: $9d
	rst FarCall                                          ; $7981: $f7
	jp c, $b7ff                                      ; $7982: $da $ff $b7

	call nz, $0a89                                   ; $7985: $c4 $89 $0a
	sub h                                            ; $7988: $94
	ld [hl], l                                       ; $7989: $75
	jr c, @-$04                                      ; $798a: $38 $fa

	ld h, d                                          ; $798c: $62
	cp a                                             ; $798d: $bf
	ld a, [hl]                                       ; $798e: $7e
	call Call_01d_4fb7                               ; $798f: $cd $b7 $4f
	db $dd                                           ; $7992: $dd
	or [hl]                                          ; $7993: $b6
	and a                                            ; $7994: $a7
	adc a                                            ; $7995: $8f
	ld a, [hl-]                                      ; $7996: $3a
	ld c, l                                          ; $7997: $4d
	or d                                             ; $7998: $b2
	ld c, e                                          ; $7999: $4b
	ld e, l                                          ; $799a: $5d
	sub h                                            ; $799b: $94
	add d                                            ; $799c: $82
	and l                                            ; $799d: $a5
	db $e3                                           ; $799e: $e3
	cp $1e                                           ; $799f: $fe $1e
	ld a, a                                          ; $79a1: $7f
	cp [hl]                                          ; $79a2: $be
	rst SubAFromDE                                          ; $79a3: $df
	ld l, a                                          ; $79a4: $6f
	cpl                                              ; $79a5: $2f
	db $fc                                           ; $79a6: $fc
	jp hl                                            ; $79a7: $e9


	dec e                                            ; $79a8: $1d
	ld c, a                                          ; $79a9: $4f
	daa                                              ; $79aa: $27
	sub e                                            ; $79ab: $93
	ld c, e                                          ; $79ac: $4b
	dec h                                            ; $79ad: $25
	ld [hl], l                                       ; $79ae: $75
	ccf                                              ; $79af: $3f

jr_01d_79b0:
	sub e                                            ; $79b0: $93
	inc sp                                           ; $79b1: $33
	and d                                            ; $79b2: $a2
	ld [hl+], a                                      ; $79b3: $22
	ldh [c], a                                       ; $79b4: $e2
	ldh a, [c]                                       ; $79b5: $f2
	adc $c4                                          ; $79b6: $ce $c4
	xor $ee                                          ; $79b8: $ee $ee
	db $dd                                           ; $79ba: $dd
	rst $38                                          ; $79bb: $ff
	sub e                                            ; $79bc: $93
	db $fd                                           ; $79bd: $fd
	call c, $a2cc                                    ; $79be: $dc $cc $a2
	and d                                            ; $79c1: $a2
	ld [hl+], a                                      ; $79c2: $22
	inc hl                                           ; $79c3: $23
	daa                                              ; $79c4: $27
	ld c, e                                          ; $79c5: $4b
	ld h, a                                          ; $79c6: $67
	ld [hl], a                                       ; $79c7: $77
	ld a, a                                          ; $79c8: $7f
	ld [hl], e                                       ; $79c9: $73
	sbc [hl]                                         ; $79ca: $9e
	adc [hl]                                         ; $79cb: $8e
	ei                                               ; $79cc: $fb
	call $a3ff                                       ; $79cd: $cd $ff $a3
	and a                                            ; $79d0: $a7
	xor a                                            ; $79d1: $af
	rst $38                                          ; $79d2: $ff
	ld bc, $ff86                                     ; $79d3: $01 $86 $ff
	rst $38                                          ; $79d6: $ff
	and c                                            ; $79d7: $a1
	and c                                            ; $79d8: $a1
	and a                                            ; $79d9: $a7
	db $fd                                           ; $79da: $fd
	ld b, b                                          ; $79db: $40
	ret nz                                           ; $79dc: $c0

	ld a, c                                          ; $79dd: $79
	or c                                             ; $79de: $b1
	sbc l                                            ; $79df: $9d
	add b                                            ; $79e0: $80
	ld b, b                                          ; $79e1: $40
	sbc $c0                                          ; $79e2: $de $c0
	ld [hl], a                                       ; $79e4: $77
	ld hl, sp-$21                                    ; $79e5: $f8 $df
	ret nz                                           ; $79e7: $c0

jr_01d_79e8:
	pop af                                           ; $79e8: $f1
	add b                                            ; $79e9: $80
	ld d, e                                          ; $79ea: $53
	ld c, [hl]                                       ; $79eb: $4e

jr_01d_79ec:
	ld e, e                                          ; $79ec: $5b
	di                                               ; $79ed: $f3
	dec l                                            ; $79ee: $2d
	ccf                                              ; $79ef: $3f
	rra                                              ; $79f0: $1f
	rra                                              ; $79f1: $1f
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst FarCall                                          ; $79f4: $f7
	rst $38                                          ; $79f5: $ff
	ccf                                              ; $79f6: $3f
	add hl, hl                                       ; $79f7: $29
	dec d                                            ; $79f8: $15
	dec d                                            ; $79f9: $15
	rst SubAFromHL                                          ; $79fa: $d7
	cp [hl]                                          ; $79fb: $be
	rst SubAFromBC                                          ; $79fc: $e7
	sbc b                                            ; $79fd: $98
	ld b, c                                          ; $79fe: $41
	ld h, $3e                                        ; $79ff: $26 $3e
	ld d, $38                                        ; $7a01: $16 $38
	pop bc                                           ; $7a03: $c1
	rst $38                                          ; $7a04: $ff
	rst SubAFromBC                                          ; $7a05: $e7

Call_01d_7a06:
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	db $db                                           ; $7a08: $db
	sub [hl]                                         ; $7a09: $96
	jp $ebaa                                         ; $7a0a: $c3 $aa $eb


	db $eb                                           ; $7a0d: $eb
	ei                                               ; $7a0e: $fb
	cp e                                             ; $7a0f: $bb
	db $fd                                           ; $7a10: $fd
	db $fd                                           ; $7a11: $fd
	or h                                             ; $7a12: $b4
	ld a, e                                          ; $7a13: $7b
	and h                                            ; $7a14: $a4
	sub a                                            ; $7a15: $97
	sbc a                                            ; $7a16: $9f
	adc $c6                                          ; $7a17: $ce $c6
	add a                                            ; $7a19: $87
	adc $ff                                          ; $7a1a: $ce $ff
	ld a, a                                          ; $7a1c: $7f
	push af                                          ; $7a1d: $f5
	ld a, d                                          ; $7a1e: $7a
	call nz, $df8d                                   ; $7a1f: $c4 $8d $df
	cp [hl]                                          ; $7a22: $be
	add e                                            ; $7a23: $83
	ld b, b                                          ; $7a24: $40
	adc $c7                                          ; $7a25: $ce $c7
	add b                                            ; $7a27: $80
	inc b                                            ; $7a28: $04
	jr c, jr_01d_79ec                                ; $7a29: $38 $c1

	adc c                                            ; $7a2b: $89
	adc l                                            ; $7a2c: $8d
	xor [hl]                                         ; $7a2d: $ae
	xor l                                            ; $7a2e: $ad
	xor b                                            ; $7a2f: $a8
	or e                                             ; $7a30: $b3
	or h                                             ; $7a31: $b4
	xor e                                            ; $7a32: $ab
	jp c, $80ff                                      ; $7a33: $da $ff $80

	rst AddAOntoHL                                          ; $7a36: $ef
	ld e, h                                          ; $7a37: $5c
	ld d, d                                          ; $7a38: $52
	sub [hl]                                         ; $7a39: $96
	or a                                             ; $7a3a: $b7
	cp a                                             ; $7a3b: $bf
	ld [hl], a                                       ; $7a3c: $77
	rst $38                                          ; $7a3d: $ff
	ld [hl], a                                       ; $7a3e: $77
	db $eb                                           ; $7a3f: $eb
	rst $38                                          ; $7a40: $ff
	db $fd                                           ; $7a41: $fd
	db $ed                                           ; $7a42: $ed
	db $fc                                           ; $7a43: $fc
	db $f4                                           ; $7a44: $f4
	call c, $b3dc                                    ; $7a45: $dc $dc $b3
	ld c, d                                          ; $7a48: $4a
	ld l, c                                          ; $7a49: $69
	ld l, h                                          ; $7a4a: $6c
	cp $ee                                           ; $7a4b: $fe $ee
	rst $38                                          ; $7a4d: $ff
	rst AddAOntoHL                                          ; $7a4e: $ef
	sbc $ff                                          ; $7a4f: $de $ff
	cp a                                             ; $7a51: $bf
	or a                                             ; $7a52: $b7
	ei                                               ; $7a53: $fb
	ld l, l                                          ; $7a54: $6d
	rst SubAFromDE                                          ; $7a55: $df
	jr c, jr_01d_79e8                                ; $7a56: $38 $90

	call z, Call_01d_7f5b                            ; $7a58: $cc $5b $7f
	or [hl]                                          ; $7a5b: $b6
	jp hl                                            ; $7a5c: $e9


	xor e                                            ; $7a5d: $ab
	and a                                            ; $7a5e: $a7
	rst SubAFromBC                                          ; $7a5f: $e7
	di                                               ; $7a60: $f3
	db $f4                                           ; $7a61: $f4
	db $e4                                           ; $7a62: $e4
	db $ed                                           ; $7a63: $ed
	ld a, a                                          ; $7a64: $7f
	ld a, a                                          ; $7a65: $7f
	ld a, [hl]                                       ; $7a66: $7e
	ld a, c                                          ; $7a67: $79
	ld l, c                                          ; $7a68: $69
	add l                                            ; $7a69: $85
	ld [hl], a                                       ; $7a6a: $77
	rst FarCall                                          ; $7a6b: $f7
	push de                                          ; $7a6c: $d5
	cp d                                             ; $7a6d: $ba
	cp a                                             ; $7a6e: $bf
	ld a, [hl]                                       ; $7a6f: $7e
	rst $38                                          ; $7a70: $ff
	rst $38                                          ; $7a71: $ff
	adc c                                            ; $7a72: $89
	sbc h                                            ; $7a73: $9c
	cp [hl]                                          ; $7a74: $be
	rst AddAOntoHL                                          ; $7a75: $ef
	rst GetHLinHL                                          ; $7a76: $cf
	ld b, [hl]                                       ; $7a77: $46
	ld b, c                                          ; $7a78: $41
	pop af                                           ; $7a79: $f1
	ld [hl], c                                       ; $7a7a: $71
	or c                                             ; $7a7b: $b1
	adc c                                            ; $7a7c: $89
	ld c, c                                          ; $7a7d: $49
	ret                                              ; $7a7e: $c9


	reti                                             ; $7a7f: $d9


	rst GetHLinHL                                          ; $7a80: $cf
	cpl                                              ; $7a81: $2f
	sbc a                                            ; $7a82: $9f
	rst SubAFromDE                                          ; $7a83: $df
	db $dd                                           ; $7a84: $dd
	rst $38                                          ; $7a85: $ff
	adc b                                            ; $7a86: $88
	ld a, b                                          ; $7a87: $78
	ld [hl], l                                       ; $7a88: $75
	ld e, [hl]                                       ; $7a89: $5e
	ld l, a                                          ; $7a8a: $6f
	ld l, l                                          ; $7a8b: $6d
	ld e, a                                          ; $7a8c: $5f
	db $ed                                           ; $7a8d: $ed
	rst AddAOntoHL                                          ; $7a8e: $ef
	rst GetHLinHL                                          ; $7a8f: $cf
	db $db                                           ; $7a90: $db
	di                                               ; $7a91: $f3
	or $fe                                           ; $7a92: $f6 $fe
	cp a                                             ; $7a94: $bf
	dec a                                            ; $7a95: $3d
	ccf                                              ; $7a96: $3f
	add hl, bc                                       ; $7a97: $09
	ld b, [hl]                                       ; $7a98: $46
	rst $38                                          ; $7a99: $ff
	ei                                               ; $7a9a: $fb
	sub a                                            ; $7a9b: $97
	cp a                                             ; $7a9c: $bf
	ei                                               ; $7a9d: $fb
	ld a, e                                          ; $7a9e: $7b
	rlca                                             ; $7a9f: $07
	add [hl]                                         ; $7aa0: $86
	ld d, h                                          ; $7aa1: $54
	ld d, [hl]                                       ; $7aa2: $56
	db $fd                                           ; $7aa3: $fd
	db $ed                                           ; $7aa4: $ed
	jp z, $fd0f                                      ; $7aa5: $ca $0f $fd

	sbc l                                            ; $7aa8: $9d
	ld e, h                                          ; $7aa9: $5c
	ld e, a                                          ; $7aaa: $5f
	ccf                                              ; $7aab: $3f
	ccf                                              ; $7aac: $3f
	sbc a                                            ; $7aad: $9f
	db $dd                                           ; $7aae: $dd
	dec h                                            ; $7aaf: $25
	push af                                          ; $7ab0: $f5
	db $f4                                           ; $7ab1: $f4
	push af                                          ; $7ab2: $f5
	db $f4                                           ; $7ab3: $f4
	ldh a, [c]                                       ; $7ab4: $f2
	ldh a, [c]                                       ; $7ab5: $f2
	push af                                          ; $7ab6: $f5
	ld l, a                                          ; $7ab7: $6f
	ld l, a                                          ; $7ab8: $6f
	rst FarCall                                          ; $7ab9: $f7
	sbc $ff                                          ; $7aba: $de $ff
	ld a, a                                          ; $7abc: $7f
	push bc                                          ; $7abd: $c5
	add a                                            ; $7abe: $87
	add hl, hl                                       ; $7abf: $29
	ld [$2000], sp                                   ; $7ac0: $08 $00 $20
	ld [hl], b                                       ; $7ac3: $70
	ldh a, [rSVBK]                                   ; $7ac4: $f0 $70
	nop                                              ; $7ac6: $00
	sbc a                                            ; $7ac7: $9f
	ld e, e                                          ; $7ac8: $5b
	ld c, a                                          ; $7ac9: $4f
	rst $38                                          ; $7aca: $ff
	cp e                                             ; $7acb: $bb
	db $fd                                           ; $7acc: $fd
	push af                                          ; $7acd: $f5
	db $fd                                           ; $7ace: $fd
	dec d                                            ; $7acf: $15
	ld d, b                                          ; $7ad0: $50
	ld a, [bc]                                       ; $7ad1: $0a
	jp hl                                            ; $7ad2: $e9


	cp e                                             ; $7ad3: $bb
	db $ed                                           ; $7ad4: $ed
	or l                                             ; $7ad5: $b5
	ld d, l                                          ; $7ad6: $55
	sbc $7f                                          ; $7ad7: $de $7f
	halt                                             ; $7ad9: $76
	rst SubAFromHL                                          ; $7ada: $d7
	sub [hl]                                         ; $7adb: $96
	db $fc                                           ; $7adc: $fc
	db $dd                                           ; $7add: $dd
	db $f4                                           ; $7ade: $f4
	db $fc                                           ; $7adf: $fc
	ret z                                            ; $7ae0: $c8

	jp $90e0                                         ; $7ae1: $c3 $e0 $90


	adc a                                            ; $7ae4: $8f
	sbc $fe                                          ; $7ae5: $de $fe
	sbc l                                            ; $7ae7: $9d
	sbc $7d                                          ; $7ae8: $de $7d
	sbc $fc                                          ; $7aea: $de $fc
	adc h                                            ; $7aec: $8c
	rst $38                                          ; $7aed: $ff
	cpl                                              ; $7aee: $2f
	scf                                              ; $7aef: $37
	daa                                              ; $7af0: $27
	adc a                                            ; $7af1: $8f
	ccf                                              ; $7af2: $3f
	ld e, a                                          ; $7af3: $5f
	adc a                                            ; $7af4: $8f
	ld a, a                                          ; $7af5: $7f
	rlca                                             ; $7af6: $07
	rlca                                             ; $7af7: $07
	ld b, $8d                                        ; $7af8: $06 $8d
	or $96                                           ; $7afa: $f6 $96
	sub h                                            ; $7afc: $94
	ld hl, sp-$04                                    ; $7afd: $f8 $fc
	db $fd                                           ; $7aff: $fd
	ld a, d                                          ; $7b00: $7a
	ld h, d                                          ; $7b01: $62
	rst SubAFromDE                                          ; $7b02: $df
	cp $dd                                           ; $7b03: $fe $dd
	ret nz                                           ; $7b05: $c0

	ld [hl], h                                       ; $7b06: $74
	ei                                               ; $7b07: $fb
	ld h, a                                          ; $7b08: $67
	ld hl, sp+$50                                    ; $7b09: $f8 $50
	db $d3                                           ; $7b0b: $d3
	ld a, c                                          ; $7b0c: $79
	ld a, l                                          ; $7b0d: $7d
	sub a                                            ; $7b0e: $97
	rra                                              ; $7b0f: $1f
	dec d                                            ; $7b10: $15
	ld a, a                                          ; $7b11: $7f
	rst FarCall                                          ; $7b12: $f7
	rst $38                                          ; $7b13: $ff
	ld a, $00                                        ; $7b14: $3e $00
	ld bc, $f87b                                     ; $7b16: $01 $7b $f8
	sbc [hl]                                         ; $7b19: $9e
	rst AddAOntoHL                                          ; $7b1a: $ef
	db $dd                                           ; $7b1b: $dd
	rst $38                                          ; $7b1c: $ff
	sbc e                                            ; $7b1d: $9b
	ld a, [hl+]                                      ; $7b1e: $2a
	inc h                                            ; $7b1f: $24
	inc d                                            ; $7b20: $14
	sbc h                                            ; $7b21: $9c
	sbc $ff                                          ; $7b22: $de $ff
	sbc [hl]                                         ; $7b24: $9e
	ld c, c                                          ; $7b25: $49
	ld [hl], a                                       ; $7b26: $77
	ld a, d                                          ; $7b27: $7a
	sub e                                            ; $7b28: $93
	db $d3                                           ; $7b29: $d3
	jp hl                                            ; $7b2a: $e9


	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	ld a, [hl]                                       ; $7b2d: $7e
	ld b, e                                          ; $7b2e: $43
	ld b, b                                          ; $7b2f: $40
	ld h, b                                          ; $7b30: $60
	or c                                             ; $7b31: $b1
	ld e, [hl]                                       ; $7b32: $5e
	ld b, b                                          ; $7b33: $40
	nop                                              ; $7b34: $00
	ld a, d                                          ; $7b35: $7a
	inc d                                            ; $7b36: $14
	ld a, [hl]                                       ; $7b37: $7e
	cp $94                                           ; $7b38: $fe $94
	sbc $c0                                          ; $7b3a: $de $c0
	ret nz                                           ; $7b3c: $c0

	rst SubAFromBC                                          ; $7b3d: $e7
	ld e, b                                          ; $7b3e: $58
	ld b, c                                          ; $7b3f: $41
	ld l, $7c                                        ; $7b40: $2e $7c
	dec l                                            ; $7b42: $2d
	xor c                                            ; $7b43: $a9
	add e                                            ; $7b44: $83
	halt                                             ; $7b45: $76
	and d                                            ; $7b46: $a2
	adc a                                            ; $7b47: $8f
	sub e                                            ; $7b48: $93
	add e                                            ; $7b49: $83
	rst SubAFromHL                                          ; $7b4a: $d7
	rst $38                                          ; $7b4b: $ff
	adc d                                            ; $7b4c: $8a
	call nz, $10b1                                   ; $7b4d: $c4 $b1 $10
	ld [$c404], sp                                   ; $7b50: $08 $04 $c4
	add h                                            ; $7b53: $84
	rst GetHLinHL                                          ; $7b54: $cf
	push hl                                          ; $7b55: $e5
	pop af                                           ; $7b56: $f1
	ld hl, sp-$23                                    ; $7b57: $f8 $dd
	db $fc                                           ; $7b59: $fc
	add b                                            ; $7b5a: $80
	ld e, a                                          ; $7b5b: $5f
	rst SubAFromBC                                          ; $7b5c: $e7
	inc e                                            ; $7b5d: $1c
	dec bc                                           ; $7b5e: $0b
	ld c, $19                                        ; $7b5f: $0e $19
	inc h                                            ; $7b61: $24
	ld [hl+], a                                      ; $7b62: $22
	add sp, -$05                                     ; $7b63: $e8 $fb
	inc de                                           ; $7b65: $13
	inc c                                            ; $7b66: $0c
	rrca                                             ; $7b67: $0f
	ld e, $3f                                        ; $7b68: $1e $3f
	ccf                                              ; $7b6a: $3f
	rst $38                                          ; $7b6b: $ff
	add $fa                                          ; $7b6c: $c6 $fa
	db $ec                                           ; $7b6e: $ec
	ld a, h                                          ; $7b6f: $7c
	adc b                                            ; $7b70: $88
	ld [de], a                                       ; $7b71: $12
	ld h, d                                          ; $7b72: $62
	ld de, $86ba                                     ; $7b73: $11 $ba $86
	inc e                                            ; $7b76: $1c
	db $fc                                           ; $7b77: $fc
	ld a, h                                          ; $7b78: $7c
	cp $7d                                           ; $7b79: $fe $7d
	ld c, h                                          ; $7b7b: $4c
	sbc h                                            ; $7b7c: $9c
	ld [hl-], a                                      ; $7b7d: $32
	dec de                                           ; $7b7e: $1b
	ccf                                              ; $7b7f: $3f
	ld a, e                                          ; $7b80: $7b
	ld b, b                                          ; $7b81: $40
	sbc b                                            ; $7b82: $98
	sbc [hl]                                         ; $7b83: $9e
	db $fd                                           ; $7b84: $fd
	dec a                                            ; $7b85: $3d
	inc e                                            ; $7b86: $1c
	ld a, $63                                        ; $7b87: $3e $63
	ld b, c                                          ; $7b89: $41
	ld a, e                                          ; $7b8a: $7b
	cp e                                             ; $7b8b: $bb
	sbc h                                            ; $7b8c: $9c
	ld a, h                                          ; $7b8d: $7c
	ld a, [hl]                                       ; $7b8e: $7e
	rst $38                                          ; $7b8f: $ff
	ld a, d                                          ; $7b90: $7a
	ld c, h                                          ; $7b91: $4c
	sbc d                                            ; $7b92: $9a
	sbc h                                            ; $7b93: $9c
	jp $81c3                                         ; $7b94: $c3 $c3 $81


	jr z, jr_01d_7c13                                ; $7b97: $28 $7a

	ld c, h                                          ; $7b99: $4c
	sub h                                            ; $7b9a: $94
	db $e3                                           ; $7b9b: $e3
	ld sp, hl                                        ; $7b9c: $f9
	ld sp, hl                                        ; $7b9d: $f9
	pop af                                           ; $7b9e: $f1
	jp hl                                            ; $7b9f: $e9


	ret                                              ; $7ba0: $c9


	xor c                                            ; $7ba1: $a9
	add hl, hl                                       ; $7ba2: $29
	xor c                                            ; $7ba3: $a9
	rst AddAOntoHL                                          ; $7ba4: $ef
	adc a                                            ; $7ba5: $8f
	ld l, l                                          ; $7ba6: $6d
	adc [hl]                                         ; $7ba7: $8e
	adc a                                            ; $7ba8: $8f
	ld l, l                                          ; $7ba9: $6d
	xor a                                            ; $7baa: $af
	xor a                                            ; $7bab: $af
	ld e, a                                          ; $7bac: $5f
	scf                                              ; $7bad: $37
	inc bc                                           ; $7bae: $03
	inc c                                            ; $7baf: $0c
	ld d, $bf                                        ; $7bb0: $16 $bf
	ld a, [$78f8]                                    ; $7bb2: $fa $f8 $78
	inc [hl]                                         ; $7bb5: $34
	inc bc                                           ; $7bb6: $03
	rrca                                             ; $7bb7: $0f
	rra                                              ; $7bb8: $1f
	ld a, d                                          ; $7bb9: $7a
	add $80                                          ; $7bba: $c6 $80
	xor [hl]                                         ; $7bbc: $ae
	db $fc                                           ; $7bbd: $fc
	sbc b                                            ; $7bbe: $98
	ld h, h                                          ; $7bbf: $64
	inc c                                            ; $7bc0: $0c
	ld c, $05                                        ; $7bc1: $0e $05
	ld d, c                                          ; $7bc3: $51
	ld [hl], d                                       ; $7bc4: $72
	inc b                                            ; $7bc5: $04
	ld hl, sp-$64                                    ; $7bc6: $f8 $9c
	db $fc                                           ; $7bc8: $fc
	ld l, d                                          ; $7bc9: $6a
	ld l, l                                          ; $7bca: $6d
	ld l, [hl]                                       ; $7bcb: $6e
	ld l, a                                          ; $7bcc: $6f
	cp [hl]                                          ; $7bcd: $be
	scf                                              ; $7bce: $37
	ld d, $1c                                        ; $7bcf: $16 $1c
	ld [$cce9], a                                    ; $7bd1: $ea $e9 $cc
	res 4, h                                         ; $7bd4: $cb $a4
	daa                                              ; $7bd6: $27
	inc de                                           ; $7bd7: $13
	rla                                              ; $7bd8: $17
	rst AddAOntoHL                                          ; $7bd9: $ef
	cp $80                                           ; $7bda: $fe $80
	ld a, l                                          ; $7bdc: $7d
	cp c                                             ; $7bdd: $b9
	add $60                                          ; $7bde: $c6 $60
	dec e                                            ; $7be0: $1d
	rrca                                             ; $7be1: $0f
	sbc a                                            ; $7be2: $9f
	rst GetHLinHL                                          ; $7be3: $cf
	ld h, [hl]                                       ; $7be4: $66
	ccf                                              ; $7be5: $3f
	ld sp, hl                                        ; $7be6: $f9
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	ldh a, [c]                                       ; $7be9: $f2
	db $eb                                           ; $7bea: $eb
	ei                                               ; $7beb: $fb
	ld [hl], a                                       ; $7bec: $77
	xor $7b                                          ; $7bed: $ee $7b
	rst $38                                          ; $7bef: $ff
	ld bc, $2b80                                     ; $7bf0: $01 $80 $2b
	ld c, e                                          ; $7bf3: $4b
	di                                               ; $7bf4: $f3
	add [hl]                                         ; $7bf5: $86
	set 3, a                                         ; $7bf6: $cb $df
	rst $38                                          ; $7bf8: $ff
	ld a, a                                          ; $7bf9: $7f
	ld a, a                                          ; $7bfa: $7f
	add [hl]                                         ; $7bfb: $86
	db $fc                                           ; $7bfc: $fc
	ld a, [hl]                                       ; $7bfd: $7e
	dec d                                            ; $7bfe: $15
	ld [hl-], a                                      ; $7bff: $32
	cp b                                             ; $7c00: $b8
	db $fc                                           ; $7c01: $fc
	ld a, a                                          ; $7c02: $7f
	call z, Call_01d_7fff                            ; $7c03: $cc $ff $7f
	ld a, b                                          ; $7c06: $78
	ld a, l                                          ; $7c07: $7d
	rst AddAOntoHL                                          ; $7c08: $ef
	rst AddAOntoHL                                          ; $7c09: $ef
	set 7, h                                         ; $7c0a: $cb $fc
	db $fd                                           ; $7c0c: $fd
	push hl                                          ; $7c0d: $e5
	rst JumpTable                                          ; $7c0e: $c7
	xor $3e                                          ; $7c0f: $ee $3e
	ld h, a                                          ; $7c11: $67
	and a                                            ; $7c12: $a7

jr_01d_7c13:
	adc a                                            ; $7c13: $8f
	sbc a                                            ; $7c14: $9f
	ld a, b                                          ; $7c15: $78
	cp [hl]                                          ; $7c16: $be
	sub h                                            ; $7c17: $94
	db $fd                                           ; $7c18: $fd
	db $e4                                           ; $7c19: $e4
	db $e4                                           ; $7c1a: $e4
	sub l                                            ; $7c1b: $95
	dec h                                            ; $7c1c: $25
	daa                                              ; $7c1d: $27
	cp $64                                           ; $7c1e: $fe $64
	add sp, -$08                                     ; $7c20: $e8 $f8
	ld hl, sp+$74                                    ; $7c22: $f8 $74
	and b                                            ; $7c24: $a0
	sbc e                                            ; $7c25: $9b
	db $fc                                           ; $7c26: $fc
	ret c                                            ; $7c27: $d8

	ret z                                            ; $7c28: $c8

	ret z                                            ; $7c29: $c8

	pop hl                                           ; $7c2a: $e1
	ld [hl], b                                       ; $7c2b: $70
	dec sp                                           ; $7c2c: $3b
	cp $9e                                           ; $7c2d: $fe $9e
	rrca                                             ; $7c2f: $0f
	ld l, e                                          ; $7c30: $6b
	rst FarCall                                          ; $7c31: $f7
	rst SubAFromDE                                          ; $7c32: $df
	ld c, c                                          ; $7c33: $49
	sbc c                                            ; $7c34: $99
	ret                                              ; $7c35: $c9


	ld a, [hl]                                       ; $7c36: $7e
	ld c, h                                          ; $7c37: $4c
	cpl                                              ; $7c38: $2f
	dec a                                            ; $7c39: $3d
	cpl                                              ; $7c3a: $2f
	sbc $ff                                          ; $7c3b: $de $ff
	rst SubAFromDE                                          ; $7c3d: $df
	ld a, a                                          ; $7c3e: $7f
	sub h                                            ; $7c3f: $94
	ld [hl], h                                       ; $7c40: $74
	ld h, [hl]                                       ; $7c41: $66
	or $00                                           ; $7c42: $f6 $00
	ld b, b                                          ; $7c44: $40
	ld b, b                                          ; $7c45: $40
	add b                                            ; $7c46: $80
	add c                                            ; $7c47: $81
	add c                                            ; $7c48: $81
	pop bc                                           ; $7c49: $c1
	jp $8176                                         ; $7c4a: $c3 $76 $81


	rst SubAFromDE                                          ; $7c4d: $df
	add c                                            ; $7c4e: $81
	sub h                                            ; $7c4f: $94
	ld b, c                                          ; $7c50: $41
	ld b, e                                          ; $7c51: $43
	rst $38                                          ; $7c52: $ff
	db $d3                                           ; $7c53: $d3

jr_01d_7c54:
	db $d3                                           ; $7c54: $d3
	jp nc, $4a52                                     ; $7c55: $d2 $52 $4a

	ld c, c                                          ; $7c58: $49
	ld c, c                                          ; $7c59: $49
	cp $76                                           ; $7c5a: $fe $76
	xor a                                            ; $7c5c: $af
	sbc $ff                                          ; $7c5d: $de $ff
	sub l                                            ; $7c5f: $95
	call z, $c0f8                                    ; $7c60: $cc $f8 $c0
	add b                                            ; $7c63: $80
	ret nz                                           ; $7c64: $c0

	ld b, b                                          ; $7c65: $40
	ld b, b                                          ; $7c66: $40
	jr nz, jr_01d_7ce5                               ; $7c67: $20 $7c

	ld a, b                                          ; $7c69: $78
	ld a, e                                          ; $7c6a: $7b
	ld hl, sp-$21                                    ; $7c6b: $f8 $df
	ret nz                                           ; $7c6d: $c0

	add e                                            ; $7c6e: $83
	ldh [rSCX], a                                    ; $7c6f: $e0 $43
	ld c, c                                          ; $7c71: $49
	ld c, c                                          ; $7c72: $49
	ld c, b                                          ; $7c73: $48
	ld l, a                                          ; $7c74: $6f
	ld a, [hl-]                                      ; $7c75: $3a
	ld a, [bc]                                       ; $7c76: $0a
	ld a, [bc]                                       ; $7c77: $0a
	ld a, l                                          ; $7c78: $7d
	ld a, h                                          ; $7c79: $7c
	ld a, [hl]                                       ; $7c7a: $7e
	ld a, a                                          ; $7c7b: $7f
	ld a, a                                          ; $7c7c: $7f
	ccf                                              ; $7c7d: $3f
	rrca                                             ; $7c7e: $0f
	rrca                                             ; $7c7f: $0f
	pop hl                                           ; $7c80: $e1
	ld l, c                                          ; $7c81: $69
	ld c, c                                          ; $7c82: $49
	add hl, bc                                       ; $7c83: $09
	ei                                               ; $7c84: $fb
	xor [hl]                                         ; $7c85: $ae
	xor b                                            ; $7c86: $a8
	xor b                                            ; $7c87: $a8
	sbc a                                            ; $7c88: $9f
	rra                                              ; $7c89: $1f
	cp a                                             ; $7c8a: $bf
	ld a, e                                          ; $7c8b: $7b
	ld l, [hl]                                       ; $7c8c: $6e
	rst SubAFromDE                                          ; $7c8d: $df
	ld hl, sp-$21                                    ; $7c8e: $f8 $df
	add h                                            ; $7c90: $84
	sbc c                                            ; $7c91: $99
	ld b, b                                          ; $7c92: $40
	add hl, sp                                       ; $7c93: $39
	rlca                                             ; $7c94: $07
	ld bc, $0001                                     ; $7c95: $01 $01 $00
	ld a, e                                          ; $7c98: $7b
	and c                                            ; $7c99: $a1
	sbc [hl]                                         ; $7c9a: $9e
	ccf                                              ; $7c9b: $3f
	ld [hl], a                                       ; $7c9c: $77
	ld hl, sp-$6c                                    ; $7c9d: $f8 $94
	add b                                            ; $7c9f: $80
	ld h, a                                          ; $7ca0: $67
	cp $ac                                           ; $7ca1: $fe $ac
	xor b                                            ; $7ca3: $a8
	ld bc, $aaff                                     ; $7ca4: $01 $ff $aa
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	sbc c                                            ; $7ca9: $99
	ld a, d                                          ; $7caa: $7a
	ld [hl], d                                       ; $7cab: $72
	rst SubAFromDE                                          ; $7cac: $df
	rst $38                                          ; $7cad: $ff
	sub a                                            ; $7cae: $97
	xor c                                            ; $7caf: $a9
	ld l, d                                          ; $7cb0: $6a
	inc l                                            ; $7cb1: $2c
	jr nc, jr_01d_7c54                               ; $7cb2: $30 $a0

	and b                                            ; $7cb4: $a0
	ld b, b                                          ; $7cb5: $40
	ret nz                                           ; $7cb6: $c0

	ld a, e                                          ; $7cb7: $7b
	ld b, d                                          ; $7cb8: $42
	sbc b                                            ; $7cb9: $98
	ldh a, [$e0]                                     ; $7cba: $f0 $e0
	ldh [$c0], a                                     ; $7cbc: $e0 $c0
	ret nz                                           ; $7cbe: $c0

	ld de, $de20                                     ; $7cbf: $11 $20 $de
	ld [hl+], a                                      ; $7cc2: $22
	sbc e                                            ; $7cc3: $9b
	inc hl                                           ; $7cc4: $23
	inc d                                            ; $7cc5: $14
	inc c                                            ; $7cc6: $0c
	rra                                              ; $7cc7: $1f
	call c, $903f                                    ; $7cc8: $dc $3f $90
	rra                                              ; $7ccb: $1f
	rrca                                             ; $7ccc: $0f
	call nc, Call_01d_5efe                           ; $7ccd: $d4 $fe $5e
	ld d, [hl]                                       ; $7cd0: $56
	ld b, $fc                                        ; $7cd1: $06 $fc
	and b                                            ; $7cd3: $a0
	and h                                            ; $7cd4: $a4
	db $fc                                           ; $7cd5: $fc
	ld h, $06                                        ; $7cd6: $26 $06
	xor [hl]                                         ; $7cd8: $ae
	cp $de                                           ; $7cd9: $fe $de
	db $fc                                           ; $7cdb: $fc
	sbc $08                                          ; $7cdc: $de $08
	sbc l                                            ; $7cde: $9d
	inc c                                            ; $7cdf: $0c
	rlca                                             ; $7ce0: $07
	ld [hl], a                                       ; $7ce1: $77
	ld b, b                                          ; $7ce2: $40
	sbc $0f                                          ; $7ce3: $de $0f

jr_01d_7ce5:
	ld [hl], a                                       ; $7ce5: $77
	ld hl, sp-$74                                    ; $7ce6: $f8 $8c
	dec h                                            ; $7ce8: $25
	push hl                                          ; $7ce9: $e5
	ld [hl], b                                       ; $7cea: $70
	rst $38                                          ; $7ceb: $ff
	ld a, [$4aea]                                    ; $7cec: $fa $ea $4a
	jp nc, $faf0                                     ; $7cef: $d2 $f0 $fa

	rst $38                                          ; $7cf2: $ff
	sbc a                                            ; $7cf3: $9f
	sbc a                                            ; $7cf4: $9f
	rst $38                                          ; $7cf5: $ff
	ld a, a                                          ; $7cf6: $7f
	rst $38                                          ; $7cf7: $ff
	ldh [$78], a                                     ; $7cf8: $e0 $78
	ld h, a                                          ; $7cfa: $67
	ld a, e                                          ; $7cfb: $7b
	ld h, c                                          ; $7cfc: $61
	sbc d                                            ; $7cfd: $9a
	ret nz                                           ; $7cfe: $c0

	and b                                            ; $7cff: $a0
	ld a, a                                          ; $7d00: $7f
	rst $38                                          ; $7d01: $ff
	rst SubAFromBC                                          ; $7d02: $e7
	db $dd                                           ; $7d03: $dd
	ret nz                                           ; $7d04: $c0

	sbc c                                            ; $7d05: $99
	ldh [$7e], a                                     ; $7d06: $e0 $7e
	ld a, a                                          ; $7d08: $7f
	db $fd                                           ; $7d09: $fd
	ld c, c                                          ; $7d0a: $49
	ld c, c                                          ; $7d0b: $49
	sbc $52                                          ; $7d0c: $de $52
	rst SubAFromDE                                          ; $7d0e: $df
	db $d3                                           ; $7d0f: $d3
	ld a, e                                          ; $7d10: $7b
	jr nz, @-$20                                     ; $7d11: $20 $de

	ld a, a                                          ; $7d13: $7f
	sbc l                                            ; $7d14: $9d
	daa                                              ; $7d15: $27
	ld l, h                                          ; $7d16: $6c
	sbc $5f                                          ; $7d17: $de $5f
	sbc d                                            ; $7d19: $9a
	ld d, a                                          ; $7d1a: $57
	ld d, b                                          ; $7d1b: $50
	nop                                              ; $7d1c: $00
	rst SubAFromBC                                          ; $7d1d: $e7
	add sp, -$25                                     ; $7d1e: $e8 $db
	rst $38                                          ; $7d20: $ff
	sub h                                            ; $7d21: $94
	ld hl, sp-$14                                    ; $7d22: $f8 $ec
	cp $bd                                           ; $7d24: $fe $bd
	rst $38                                          ; $7d26: $ff
	cp $00                                           ; $7d27: $fe $00
	nop                                              ; $7d29: $00
	ld hl, sp+$64                                    ; $7d2a: $f8 $64
	cp $78                                           ; $7d2c: $fe $78
	sbc b                                            ; $7d2e: $98
	ld a, a                                          ; $7d2f: $7f
	ld c, a                                          ; $7d30: $4f
	ldh [$de], a                                     ; $7d31: $e0 $de
	sbc $01                                          ; $7d33: $de $01
	ld l, a                                          ; $7d35: $6f
	ld sp, hl                                        ; $7d36: $f9
	rst SubAFromDE                                          ; $7d37: $df
	inc bc                                           ; $7d38: $03
	ld a, c                                          ; $7d39: $79
	ld [hl], b                                       ; $7d3a: $70
	sbc e                                            ; $7d3b: $9b
	ld c, h                                          ; $7d3c: $4c
	rst $38                                          ; $7d3d: $ff
	cp l                                             ; $7d3e: $bd
	rst $38                                          ; $7d3f: $ff
	ld a, b                                          ; $7d40: $78
	xor d                                            ; $7d41: $aa
	ld a, [hl]                                       ; $7d42: $7e
	rst SubAFromBC                                          ; $7d43: $e7
	sbc [hl]                                         ; $7d44: $9e
	rst $38                                          ; $7d45: $ff
	ld a, e                                          ; $7d46: $7b
	ret nz                                           ; $7d47: $c0

	ld a, h                                          ; $7d48: $7c
	dec l                                            ; $7d49: $2d
	sbc l                                            ; $7d4a: $9d
	db $e3                                           ; $7d4b: $e3
	ld h, c                                          ; $7d4c: $61
	sbc $e0                                          ; $7d4d: $de $e0
	sbc c                                            ; $7d4f: $99
	ret nz                                           ; $7d50: $c0

	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	db $e3                                           ; $7d53: $e3
	ld hl, $79f0                                     ; $7d54: $21 $f0 $79
	and b                                            ; $7d57: $a0
	adc h                                            ; $7d58: $8c
	ld hl, sp-$0f                                    ; $7d59: $f8 $f1
	ld c, e                                          ; $7d5b: $4b
	db $fd                                           ; $7d5c: $fd
	ld c, a                                          ; $7d5d: $4f
	ld a, a                                          ; $7d5e: $7f
	ld e, [hl]                                       ; $7d5f: $5e
	ld a, e                                          ; $7d60: $7b
	ld a, e                                          ; $7d61: $7b
	sbc d                                            ; $7d62: $9a
	rst $38                                          ; $7d63: $ff
	cp $7c                                           ; $7d64: $fe $7c
	ld c, h                                          ; $7d66: $4c
	ld l, a                                          ; $7d67: $6f
	ld c, d                                          ; $7d68: $4a
	ld a, e                                          ; $7d69: $7b
	adc d                                            ; $7d6a: $8a
	ret nz                                           ; $7d6b: $c0

	sbc $80                                          ; $7d6c: $de $80
	sbc $c0                                          ; $7d6e: $de $c0
	sbc [hl]                                         ; $7d70: $9e
	ld h, b                                          ; $7d71: $60
	ld [hl], a                                       ; $7d72: $77
	ld hl, sp+$7b                                    ; $7d73: $f8 $7b
	ld e, b                                          ; $7d75: $58
	sub l                                            ; $7d76: $95
	jr nz, jr_01d_7d8d                               ; $7d77: $20 $14

	inc d                                            ; $7d79: $14
	dec h                                            ; $7d7a: $25
	dec h                                            ; $7d7b: $25
	dec e                                            ; $7d7c: $1d
	rlca                                             ; $7d7d: $07
	inc bc                                           ; $7d7e: $03
	inc bc                                           ; $7d7f: $03
	rra                                              ; $7d80: $1f
	ld a, e                                          ; $7d81: $7b
	rrca                                             ; $7d82: $0f
	sbc [hl]                                         ; $7d83: $9e
	rra                                              ; $7d84: $1f
	ld a, e                                          ; $7d85: $7b
	ld hl, sp-$69                                    ; $7d86: $f8 $97
	xor b                                            ; $7d88: $a8
	and h                                            ; $7d89: $a4
	inc h                                            ; $7d8a: $24
	inc [hl]                                         ; $7d8b: $34
	inc d                                            ; $7d8c: $14

jr_01d_7d8d:
	ld hl, sp+$20                                    ; $7d8d: $f8 $20
	ldh [$71], a                                     ; $7d8f: $e0 $71
	ld h, e                                          ; $7d91: $63
	sbc h                                            ; $7d92: $9c
	ld hl, sp-$20                                    ; $7d93: $f8 $e0
	jr nz, jr_01d_7e0e                               ; $7d95: $20 $77

	sub d                                            ; $7d97: $92
	sbc $02                                          ; $7d98: $de $02
	ld a, a                                          ; $7d9a: $7f

jr_01d_7d9b:
	sub a                                            ; $7d9b: $97
	sbc $01                                          ; $7d9c: $de $01
	sbc $03                                          ; $7d9e: $de $03
	sbc e                                            ; $7da0: $9b
	ld bc, $2aaa                                     ; $7da1: $01 $aa $2a
	ld c, d                                          ; $7da4: $4a
	ld a, d                                          ; $7da5: $7a
	ld [hl], d                                       ; $7da6: $72
	sbc [hl]                                         ; $7da7: $9e
	ld c, c                                          ; $7da8: $49
	ret c                                            ; $7da9: $d8

	rst $38                                          ; $7daa: $ff
	ld a, e                                          ; $7dab: $7b
	inc de                                           ; $7dac: $13
	sbc e                                            ; $7dad: $9b
	ld h, b                                          ; $7dae: $60
	jr nz, @+$22                                     ; $7daf: $20 $20

	ret nz                                           ; $7db1: $c0

	ld [hl], h                                       ; $7db2: $74
	ret nc                                           ; $7db3: $d0

	ld [hl], e                                       ; $7db4: $73
	add a                                            ; $7db5: $87
	rst SubAFromDE                                          ; $7db6: $df
	add hl, bc                                       ; $7db7: $09
	sbc $12                                          ; $7db8: $de $12
	ld a, l                                          ; $7dba: $7d
	sub e                                            ; $7dbb: $93
	sbc h                                            ; $7dbc: $9c
	ld b, $0f                                        ; $7dbd: $06 $0f
	rrca                                             ; $7dbf: $0f
	sbc $1f                                          ; $7dc0: $de $1f
	ld a, [hl]                                       ; $7dc2: $7e
	sbc $9d                                          ; $7dc3: $de $9d
	dec b                                            ; $7dc5: $05
	jr z, jr_01d_7e43                                ; $7dc6: $28 $7b

	ret nc                                           ; $7dc8: $d0

	rst SubAFromDE                                          ; $7dc9: $df
	ld c, d                                          ; $7dca: $4a
	sbc h                                            ; $7dcb: $9c
	ld hl, sp-$38                                    ; $7dcc: $f8 $c8
	db $fc                                           ; $7dce: $fc
	call c, $dffe                                    ; $7dcf: $dc $fe $df
	ld hl, sp+$73                                    ; $7dd2: $f8 $73
	ld b, c                                          ; $7dd4: $41
	sbc $03                                          ; $7dd5: $de $03
	ld [hl], a                                       ; $7dd7: $77
	ld hl, sp+$78                                    ; $7dd8: $f8 $78
	xor a                                            ; $7dda: $af
	sub [hl]                                         ; $7ddb: $96
	ld [bc], a                                       ; $7ddc: $02
	sub h                                            ; $7ddd: $94
	and h                                            ; $7dde: $a4
	inc h                                            ; $7ddf: $24
	db $e4                                           ; $7de0: $e4
	cp a                                             ; $7de1: $bf
	ldh a, [c]                                       ; $7de2: $f2
	db $e3                                           ; $7de3: $e3
	and c                                            ; $7de4: $a1
	call c, $80ff                                    ; $7de5: $dc $ff $80
	inc de                                           ; $7de8: $13
	ld [hl+], a                                      ; $7de9: $22
	ld h, c                                          ; $7dea: $61
	and b                                            ; $7deb: $a0
	and b                                            ; $7dec: $a0
	or b                                             ; $7ded: $b0
	or b                                             ; $7dee: $b0
	ldh [rLCDC], a                                   ; $7def: $e0 $40
	ret nz                                           ; $7df1: $c0

	ld h, b                                          ; $7df2: $60
	ldh [$e0], a                                     ; $7df3: $e0 $e0
	ldh a, [$f0]                                     ; $7df5: $f0 $f0
	ldh [$c0], a                                     ; $7df7: $e0 $c0
	jr nz, jr_01d_7d9b                               ; $7df9: $20 $a0

	ld a, $31                                        ; $7dfb: $3e $31
	ld a, [hl-]                                      ; $7dfd: $3a
	ld [hl], $3f                                     ; $7dfe: $36 $3f
	ld c, [hl]                                       ; $7e00: $4e
	ld a, a                                          ; $7e01: $7f
	db $fd                                           ; $7e02: $fd
	ccf                                              ; $7e03: $3f
	rra                                              ; $7e04: $1f
	daa                                              ; $7e05: $27
	cpl                                              ; $7e06: $2f
	sub [hl]                                         ; $7e07: $96
	ccf                                              ; $7e08: $3f
	ld b, [hl]                                       ; $7e09: $46
	ld a, a                                          ; $7e0a: $7f
	ei                                               ; $7e0b: $fb
	ldh [rP1], a                                     ; $7e0c: $e0 $00

jr_01d_7e0e:
	ld b, b                                          ; $7e0e: $40
	add b                                            ; $7e0f: $80
	and b                                            ; $7e10: $a0
	ld a, e                                          ; $7e11: $7b
	sub h                                            ; $7e12: $94
	ld a, l                                          ; $7e13: $7d
	db $10                                           ; $7e14: $10
	sbc c                                            ; $7e15: $99
	rst SubAFromDE                                          ; $7e16: $df
	cp $7c                                           ; $7e17: $fe $7c
	ld a, b                                          ; $7e19: $78
	ld hl, sp-$10                                    ; $7e1a: $f8 $f0
	ld sp, hl                                        ; $7e1c: $f9
	ld b, b                                          ; $7e1d: $40
	ld d, e                                          ; $7e1e: $53
	ldh [$d2], a                                     ; $7e1f: $e0 $d2
	ld a, l                                          ; $7e21: $7d
	db $e4                                           ; $7e22: $e4
	ei                                               ; $7e23: $fb
	sbc h                                            ; $7e24: $9c
	inc bc                                           ; $7e25: $03
	ld b, $07                                        ; $7e26: $06 $07
	halt                                             ; $7e28: $76
	add hl, hl                                       ; $7e29: $29
	ld a, [hl]                                       ; $7e2a: $7e
	or b                                             ; $7e2b: $b0
	sbc h                                            ; $7e2c: $9c
	db $fd                                           ; $7e2d: $fd
	rst $38                                          ; $7e2e: $ff
	ccf                                              ; $7e2f: $3f
	ld [hl], l                                       ; $7e30: $75
	ld e, h                                          ; $7e31: $5c
	rst SubAFromDE                                          ; $7e32: $df
	ei                                               ; $7e33: $fb
	sbc l                                            ; $7e34: $9d
	pop af                                           ; $7e35: $f1
	ldh [$73], a                                     ; $7e36: $e0 $73
	ldh a, [$dc]                                     ; $7e38: $f0 $dc
	rst $38                                          ; $7e3a: $ff
	ld a, a                                          ; $7e3b: $7f
	ld c, c                                          ; $7e3c: $49
	sbc e                                            ; $7e3d: $9b
	ldh a, [$d8]                                     ; $7e3e: $f0 $d8
	db $fc                                           ; $7e40: $fc
	db $fc                                           ; $7e41: $fc
	db $fd                                           ; $7e42: $fd

jr_01d_7e43:
	sbc l                                            ; $7e43: $9d
	ldh a, [$bc]                                     ; $7e44: $f0 $bc
	ld [hl], c                                       ; $7e46: $71
	ld l, a                                          ; $7e47: $6f
	sub c                                            ; $7e48: $91
	rrca                                             ; $7e49: $0f
	inc bc                                           ; $7e4a: $03
	inc bc                                           ; $7e4b: $03
	rlca                                             ; $7e4c: $07
	dec c                                            ; $7e4d: $0d
	rrca                                             ; $7e4e: $0f
	dec e                                            ; $7e4f: $1d
	rra                                              ; $7e50: $1f
	rra                                              ; $7e51: $1f
	ld [bc], a                                       ; $7e52: $02
	ld [bc], a                                       ; $7e53: $02
	rlca                                             ; $7e54: $07
	adc h                                            ; $7e55: $8c
	rst $38                                          ; $7e56: $ff
	ld a, b                                          ; $7e57: $78
	sub e                                            ; $7e58: $93
	sub b                                            ; $7e59: $90
	or b                                             ; $7e5a: $b0
	ldh a, [$f0]                                     ; $7e5b: $f0 $f0
	or b                                             ; $7e5d: $b0
	ldh a, [$f8]                                     ; $7e5e: $f0 $f8
	db $ec                                           ; $7e60: $ec
	db $fc                                           ; $7e61: $fc
	ret nc                                           ; $7e62: $d0

	sub b                                            ; $7e63: $90
	ldh a, [hDisp1_SCY]                                     ; $7e64: $f0 $90
	ldh a, [$fc]                                     ; $7e66: $f0 $fc
	rst SubAFromDE                                          ; $7e68: $df
	ld a, d                                          ; $7e69: $7a
	ld h, [hl]                                       ; $7e6a: $66
	db $f4                                           ; $7e6b: $f4
	adc [hl]                                         ; $7e6c: $8e
	rst JumpTable                                          ; $7e6d: $c7
	ld l, h                                          ; $7e6e: $6c
	ld a, [hl]                                       ; $7e6f: $7e
	cpl                                              ; $7e70: $2f
	ccf                                              ; $7e71: $3f
	scf                                              ; $7e72: $37
	daa                                              ; $7e73: $27
	ld a, a                                          ; $7e74: $7f
	rst AddAOntoHL                                          ; $7e75: $ef
	ld e, h                                          ; $7e76: $5c
	ld b, [hl]                                       ; $7e77: $46
	scf                                              ; $7e78: $37
	cpl                                              ; $7e79: $2f
	inc sp                                           ; $7e7a: $33
	daa                                              ; $7e7b: $27
	ld a, a                                          ; $7e7c: $7f
	rst SubAFromDE                                          ; $7e7d: $df
	db $fd                                           ; $7e7e: $fd
	halt                                             ; $7e7f: $76
	ld l, [hl]                                       ; $7e80: $6e
	ld [hl], e                                       ; $7e81: $73
	ld hl, sp-$69                                    ; $7e82: $f8 $97
	add c                                            ; $7e84: $81
	pop hl                                           ; $7e85: $e1
	rst $38                                          ; $7e86: $ff
	ld b, $0d                                        ; $7e87: $06 $0d
	rrca                                             ; $7e89: $0f
	rra                                              ; $7e8a: $1f
	add hl, de                                       ; $7e8b: $19
	sbc $1f                                          ; $7e8c: $de $1f
	sub a                                            ; $7e8e: $97
	dec b                                            ; $7e8f: $05
	dec bc                                           ; $7e90: $0b
	add hl, bc                                       ; $7e91: $09
	rra                                              ; $7e92: $1f
	ld [hl], b                                       ; $7e93: $70
	rst $38                                          ; $7e94: $ff
	cp $ff                                           ; $7e95: $fe $ff
	sbc $d0                                          ; $7e97: $de $d0
	ld a, e                                          ; $7e99: $7b
	adc l                                            ; $7e9a: $8d
	sbc l                                            ; $7e9b: $9d
	ld a, d                                          ; $7e9c: $7a
	cp $de                                           ; $7e9d: $fe $de
	or b                                             ; $7e9f: $b0
	sub l                                            ; $7ea0: $95
	ldh a, [$c8]                                     ; $7ea1: $f0 $c8
	rst $38                                          ; $7ea3: $ff
	rst FarCall                                          ; $7ea4: $f7
	rst $38                                          ; $7ea5: $ff
	inc bc                                           ; $7ea6: $03
	rlca                                             ; $7ea7: $07
	inc b                                            ; $7ea8: $04
	rlca                                             ; $7ea9: $07
	ld c, $79                                        ; $7eaa: $0e $79
	add l                                            ; $7eac: $85
	ld a, a                                          ; $7ead: $7f
	sub c                                            ; $7eae: $91
	ld a, a                                          ; $7eaf: $7f
	ld hl, sp-$65                                    ; $7eb0: $f8 $9b
	dec c                                            ; $7eb2: $0d
	ccf                                              ; $7eb3: $3f
	rst $38                                          ; $7eb4: $ff
	rst $38                                          ; $7eb5: $ff
	db $dd                                           ; $7eb6: $dd
	pop bc                                           ; $7eb7: $c1
	sbc $e1                                          ; $7eb8: $de $e1
	sbc d                                            ; $7eba: $9a
	ret nz                                           ; $7ebb: $c0

	ld b, c                                          ; $7ebc: $41
	pop bc                                           ; $7ebd: $c1
	ld b, c                                          ; $7ebe: $41
	pop bc                                           ; $7ebf: $c1
	db $dd                                           ; $7ec0: $dd
	rst $38                                          ; $7ec1: $ff
	ld a, [hl]                                       ; $7ec2: $7e
	ret                                              ; $7ec3: $c9


	sbc h                                            ; $7ec4: $9c

jr_01d_7ec5:
	jr nc, jr_01d_7ec5                               ; $7ec5: $30 $fe

	rst FarCall                                          ; $7ec7: $f7
	ld a, c                                          ; $7ec8: $79
	xor a                                            ; $7ec9: $af
	sbc d                                            ; $7eca: $9a
	ld hl, $1ff3                                     ; $7ecb: $21 $f3 $1f
	ld a, a                                          ; $7ece: $7f
	rst AddAOntoHL                                          ; $7ecf: $ef
	sbc $ff                                          ; $7ed0: $de $ff
	sbc l                                            ; $7ed2: $9d
	db $fd                                           ; $7ed3: $fd
	ld a, a                                          ; $7ed4: $7f
	ei                                               ; $7ed5: $fb
	db $dd                                           ; $7ed6: $dd
	rst $38                                          ; $7ed7: $ff
	ld a, c                                          ; $7ed8: $79
	ld e, $7f                                        ; $7ed9: $1e $7f
	sub [hl]                                         ; $7edb: $96
	ld l, d                                          ; $7edc: $6a
	ret c                                            ; $7edd: $d8

	ld a, d                                          ; $7ede: $7a
	and d                                            ; $7edf: $a2
	ld [bc], a                                       ; $7ee0: $02
	adc $e0                                          ; $7ee1: $ce $e0
	and l                                            ; $7ee3: $a5
	ld a, c                                          ; $7ee4: $79
	rst $38                                          ; $7ee5: $ff
	db $f4                                           ; $7ee6: $f4
	ld a, d                                          ; $7ee7: $7a
	or l                                             ; $7ee8: $b5
	db $fc                                           ; $7ee9: $fc
	sbc [hl]                                         ; $7eea: $9e
	ld a, h                                          ; $7eeb: $7c
	ld h, e                                          ; $7eec: $63
	ldh a, [$7a]                                     ; $7eed: $f0 $7a
	sub e                                            ; $7eef: $93
	ld d, e                                          ; $7ef0: $53
	ldh [$6f], a                                     ; $7ef1: $e0 $6f
	rst AddAOntoHL                                          ; $7ef3: $ef
	ld a, h                                          ; $7ef4: $7c
	ld a, h                                          ; $7ef5: $7c
	ld e, a                                          ; $7ef6: $5f
	ldh a, [$78]                                     ; $7ef7: $f0 $78
	ret                                              ; $7ef9: $c9


	ld d, a                                          ; $7efa: $57
	ldh [$72], a                                     ; $7efb: $e0 $72
	ld e, b                                          ; $7efd: $58
	ld [hl], d                                       ; $7efe: $72
	ld b, e                                          ; $7eff: $43
	ld l, a                                          ; $7f00: $6f
	ldh a, [$fc]                                     ; $7f01: $f0 $fc
	ld l, e                                          ; $7f03: $6b
	pop de                                           ; $7f04: $d1
	ld a, e                                          ; $7f05: $7b
	ldh a, [$67]                                     ; $7f06: $f0 $67
	or $6b                                           ; $7f08: $f6 $6b
	ldh a, [$9e]                                     ; $7f0a: $f0 $9e
	di                                               ; $7f0c: $f3
	ld c, e                                          ; $7f0d: $4b
	add b                                            ; $7f0e: $80
	ld c, a                                          ; $7f0f: $4f
	pop hl                                           ; $7f10: $e1
	ld a, a                                          ; $7f11: $7f
	sbc b                                            ; $7f12: $98
	ldh [$b8], a                                     ; $7f13: $e0 $b8
	sbc h                                            ; $7f15: $9c
	ld [bc], a                                       ; $7f16: $02

jr_01d_7f17:
	nop                                              ; $7f17: $00
	jr nz, jr_01d_7f17                               ; $7f18: $20 $fd

	sbc c                                            ; $7f1a: $99
	ccf                                              ; $7f1b: $3f
	ld bc, $1803                                     ; $7f1c: $01 $03 $18
	jr nc, @+$41                                     ; $7f1f: $30 $3f

	rst FarCall                                          ; $7f21: $f7
	sbc b                                            ; $7f22: $98
	add [hl]                                         ; $7f23: $86
	adc a                                            ; $7f24: $8f
	ld b, $06                                        ; $7f25: $06 $06
	ld c, $9e                                        ; $7f27: $0e $9e
	ld b, $f8                                        ; $7f29: $06 $f8
	sbc c                                            ; $7f2b: $99
	pop bc                                           ; $7f2c: $c1
	db $e3                                           ; $7f2d: $e3
	ld h, c                                          ; $7f2e: $61
	pop bc                                           ; $7f2f: $c1
	jp Jump_01d_5ff3                                 ; $7f30: $c3 $f3 $5f


	inc c                                            ; $7f33: $0c
	sbc b                                            ; $7f34: $98
	or b                                             ; $7f35: $b0
	ld hl, sp-$44                                    ; $7f36: $f8 $bc
	or b                                             ; $7f38: $b0

jr_01d_7f39:
	jr nc, jr_01d_7f6b                               ; $7f39: $30 $30

	ld h, b                                          ; $7f3b: $60
	ld hl, sp-$68                                    ; $7f3c: $f8 $98
	call c, $fec0                                    ; $7f3e: $dc $c0 $fe
	and $06                                          ; $7f41: $e6 $06
	ld c, $3c                                        ; $7f43: $0e $3c
	ld hl, sp-$63                                    ; $7f45: $f8 $9d
	jr @+$41                                         ; $7f47: $18 $3f

	ld a, e                                          ; $7f49: $7b
	cp $9e                                           ; $7f4a: $fe $9e
	add hl, de                                       ; $7f4c: $19
	ld l, [hl]                                       ; $7f4d: $6e
	set 7, h                                         ; $7f4e: $cb $fc
	ld a, [hl]                                       ; $7f50: $7e
	ld sp, $fe7f                                     ; $7f51: $31 $7f $fe
	sbc l                                            ; $7f54: $9d
	sbc h                                            ; $7f55: $9c
	ld c, $5a                                        ; $7f56: $0e $5a
	sbc [hl]                                         ; $7f58: $9e
	ld a, a                                          ; $7f59: $7f
	adc a                                            ; $7f5a: $8f

Call_01d_7f5b:
	ld l, c                                          ; $7f5b: $69
	inc l                                            ; $7f5c: $2c
	db $fd                                           ; $7f5d: $fd
	sbc b                                            ; $7f5e: $98
	ld b, $1b                                        ; $7f5f: $06 $1b
	db $fc                                           ; $7f61: $fc
	ldh [rSVBK], a                                   ; $7f62: $e0 $70
	ldh a, [$30]                                     ; $7f64: $f0 $30
	ld [hl], d                                       ; $7f66: $72

jr_01d_7f67:
	call c, $9afb                                    ; $7f67: $dc $fb $9a
	ld a, h                                          ; $7f6a: $7c

jr_01d_7f6b:
	add $06                                          ; $7f6b: $c6 $06
	inc c                                            ; $7f6d: $0c
	jr c, jr_01d_7f67                                ; $7f6e: $38 $f7

	sbc c                                            ; $7f70: $99
	inc c                                            ; $7f71: $0c
	rrca                                             ; $7f72: $0f
	ld e, $30                                        ; $7f73: $1e $30
	jr nc, jr_01d_7fb0                               ; $7f75: $30 $39

	ld e, a                                          ; $7f77: $5f
	or b                                             ; $7f78: $b0
	sbc l                                            ; $7f79: $9d
	inc c                                            ; $7f7a: $0c
	adc h                                            ; $7f7b: $8c
	sbc $0c                                          ; $7f7c: $de $0c
	sbc [hl]                                         ; $7f7e: $9e
	adc l                                            ; $7f7f: $8d
	ld h, [hl]                                       ; $7f80: $66
	or c                                             ; $7f81: $b1
	ld a, b                                          ; $7f82: $78
	sbc a                                            ; $7f83: $9f
	sbc e                                            ; $7f84: $9b
	ld h, c                                          ; $7f85: $61

jr_01d_7f86:
	ld h, e                                          ; $7f86: $63
	jr nc, jr_01d_7f39                               ; $7f87: $30 $b0

	ld d, l                                          ; $7f89: $55
	call $f09c                                       ; $7f8a: $cd $9c $f0
	jr jr_01d_7fa7                                   ; $7f8d: $18 $18

	ld d, a                                          ; $7f8f: $57
	or c                                             ; $7f90: $b1
	rst SubAFromDE                                          ; $7f91: $df
	ret nz                                           ; $7f92: $c0

	sbc $c6                                          ; $7f93: $de $c6
	ld h, [hl]                                       ; $7f95: $66
	ld b, d                                          ; $7f96: $42
	ld [hl], a                                       ; $7f97: $77
	adc a                                            ; $7f98: $8f
	sbc c                                            ; $7f99: $99
	rlca                                             ; $7f9a: $07
	ld b, $0e                                        ; $7f9b: $06 $0e
	ccf                                              ; $7f9d: $3f
	ld [hl], $1c                                     ; $7f9e: $36 $1c
	ld e, a                                          ; $7fa0: $5f
	ldh a, [$99]                                     ; $7fa1: $f0 $99
	sbc a                                            ; $7fa3: $9f
	rra                                              ; $7fa4: $1f
	dec b                                            ; $7fa5: $05
	adc h                                            ; $7fa6: $8c

jr_01d_7fa7:
	dec c                                            ; $7fa7: $0d
	dec c                                            ; $7fa8: $0d
	ld sp, hl                                        ; $7fa9: $f9
	sub a                                            ; $7faa: $97
	jr nc, jr_01d_7f86                               ; $7fab: $30 $d9

	di                                               ; $7fad: $f3
	add c                                            ; $7fae: $81
	di                                               ; $7faf: $f3

jr_01d_7fb0:
	inc sp                                           ; $7fb0: $33
	add e                                            ; $7fb1: $83
	pop af                                           ; $7fb2: $f1
	ld hl, sp+$7d                                    ; $7fb3: $f8 $7d
	ld b, a                                          ; $7fb5: $47
	sbc d                                            ; $7fb6: $9a
	sbc c                                            ; $7fb7: $99
	cp c                                             ; $7fb8: $b9
	db $ec                                           ; $7fb9: $ec
	ld hl, sp-$50                                    ; $7fba: $f8 $b0
	rst FarCall                                          ; $7fbc: $f7
	ld a, b                                          ; $7fbd: $78
	sub a                                            ; $7fbe: $97
	sbc l                                            ; $7fbf: $9d
	ld hl, sp+$70                                    ; $7fc0: $f8 $70
	ld [hl], d                                       ; $7fc2: $72
	push bc                                          ; $7fc3: $c5
	ldh [rAUDVOL], a                                 ; $7fc4: $e0 $24
	ldh [$a2], a                                     ; $7fc6: $e0 $a2
	inc b                                            ; $7fc8: $04
	nop                                              ; $7fc9: $00
	ldh [$9d], a                                     ; $7fca: $e0 $9d
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

Call_01d_7fdf:
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
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_01d_7fff:
	rst $38                                          ; $7fff: $ff
