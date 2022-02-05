; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

	rst FarCall                                          ; $4000: $f7
	xor $f7                                          ; $4001: $ee $f7
	xor $3d                                          ; $4003: $ee $3d
	ld e, [hl]                                       ; $4005: $5e
	xor l                                            ; $4006: $ad
	ld a, [hl]                                       ; $4007: $7e
	xor [hl]                                         ; $4008: $ae
	ld d, e                                          ; $4009: $53
	xor d                                            ; $400a: $aa
	ld d, d                                          ; $400b: $52
	xor d                                            ; $400c: $aa
	ld d, h                                          ; $400d: $54
	and h                                            ; $400e: $a4
	ld d, h                                          ; $400f: $54
	ld d, e                                          ; $4010: $53
	xor [hl]                                         ; $4011: $ae
	ld d, a                                          ; $4012: $57
	xor a                                            ; $4013: $af
	ld a, a                                          ; $4014: $7f
	cp $8e                                           ; $4015: $fe $8e
	ld e, a                                          ; $4017: $5f
	xor a                                            ; $4018: $af
	xor d                                            ; $4019: $aa

jr_05b_401a:
	ld d, l                                          ; $401a: $55
	xor d                                            ; $401b: $aa
	dec d                                            ; $401c: $15
	xor d                                            ; $401d: $aa
	nop                                              ; $401e: $00
	xor d                                            ; $401f: $aa
	nop                                              ; $4020: $00
	ld d, l                                          ; $4021: $55
	xor d                                            ; $4022: $aa
	ld d, l                                          ; $4023: $55
	ld [$ff55], a                                    ; $4024: $ea $55 $ff
	ld d, l                                          ; $4027: $55
	ld [hl], c                                       ; $4028: $71
	sub b                                            ; $4029: $90
	sbc [hl]                                         ; $402a: $9e
	ld [bc], a                                       ; $402b: $02
	ld l, e                                          ; $402c: $6b
	ld [hl], b                                       ; $402d: $70
	add c                                            ; $402e: $81
	db $fd                                           ; $402f: $fd
	cp $ff                                           ; $4030: $fe $ff
	rst $38                                          ; $4032: $ff
	add l                                            ; $4033: $85
	ld b, d                                          ; $4034: $42
	ld h, c                                          ; $4035: $61
	jr nc, jr_05b_4054                               ; $4036: $30 $1c

	rrca                                             ; $4038: $0f
	add l                                            ; $4039: $85
	ld h, d                                          ; $403a: $62
	ld a, b                                          ; $403b: $78
	cp h                                             ; $403c: $bc
	sbc [hl]                                         ; $403d: $9e
	rst GetHLinHL                                          ; $403e: $cf
	db $e3                                           ; $403f: $e3
	ldh a, [$78]                                     ; $4040: $f0 $78
	sbc h                                            ; $4042: $9c
	sub d                                            ; $4043: $92
	ld c, c                                          ; $4044: $49
	db $38, $8c                                      ; $4045: $38 $8c
	ld b, [hl]                                       ; $4047: $46
	jr nz, jr_05b_401a                               ; $4048: $20 $d0

	jr c, @+$63                                      ; $404a: $38 $61

	jr nc, jr_05b_40c4                               ; $404c: $30 $76

	ld h, $7f                                        ; $404e: $26 $7f
	ld l, h                                          ; $4050: $6c
	rst SubAFromDE                                          ; $4051: $df
	add b                                            ; $4052: $80
	ld a, [hl]                                       ; $4053: $7e

jr_05b_4054:
	ld hl, $109e                                     ; $4054: $21 $9e $10
	ld b, d                                          ; $4057: $42
	call z, $019d                                    ; $4058: $cc $9d $01
	ld a, a                                          ; $405b: $7f
	ld h, a                                          ; $405c: $67
	ld hl, sp-$80                                    ; $405d: $f8 $80
	ld de, $473a                                     ; $405f: $11 $3a $47
	and l                                            ; $4062: $a5
	add $59                                          ; $4063: $c6 $59
	ld [$1f65], a                                    ; $4065: $ea $65 $1f
	ccf                                              ; $4068: $3f
	ld a, a                                          ; $4069: $7f
	sbc $bf                                          ; $406a: $de $bf
	cp a                                             ; $406c: $bf
	inc a                                            ; $406d: $3c
	ld a, $69                                        ; $406e: $3e $69
	sub h                                            ; $4070: $94
	add $23                                          ; $4071: $c6 $23
	sub c                                            ; $4073: $91
	add hl, hl                                       ; $4074: $29
	sub [hl]                                         ; $4075: $96
	ld c, a                                          ; $4076: $4f
	sbc h                                            ; $4077: $9c
	ld c, $e3                                        ; $4078: $0e $e3
	add hl, sp                                       ; $407a: $39
	inc e                                            ; $407b: $1c
	adc $e7                                          ; $407c: $ce $e7
	add [hl]                                         ; $407e: $86

Call_05b_407f:
	ld [hl], e                                       ; $407f: $73
	ld e, c                                          ; $4080: $59
	ld l, h                                          ; $4081: $6c
	jr c, jr_05b_401a                                ; $4082: $38 $96

	ld e, l                                          ; $4084: $5d
	or $7c                                           ; $4085: $f6 $7c
	rrca                                             ; $4087: $0f
	rst SubAFromBC                                          ; $4088: $e7
	inc sp                                           ; $4089: $33
	rra                                              ; $408a: $1f
	rst GetHLinHL                                          ; $408b: $cf

Call_05b_408c:
	db $e3                                           ; $408c: $e3
	add hl, sp                                       ; $408d: $39
	sbc a                                            ; $408e: $9f
	rst $38                                          ; $408f: $ff
	and e                                            ; $4090: $a3
	push bc                                          ; $4091: $c5
	ld l, c                                          ; $4092: $69
	ld de, $c30d                                     ; $4093: $11 $0d $c3
	ld a, a                                          ; $4096: $7f

jr_05b_4097:
	ld de, $d072                                     ; $4097: $11 $72 $d0
	sbc $ff                                          ; $409a: $de $ff
	rst SubAFromDE                                          ; $409c: $df
	ccf                                              ; $409d: $3f
	sbc $7f                                          ; $409e: $de $7f
	sbc $ff                                          ; $40a0: $de $ff

Call_05b_40a2:
	rst SubAFromDE                                          ; $40a2: $df
	ldh [$de], a                                     ; $40a3: $e0 $de
	ret nz                                           ; $40a5: $c0

	sbc $80                                          ; $40a6: $de $80
	sbc [hl]                                         ; $40a8: $9e
	ld a, l                                          ; $40a9: $7d
	ld [hl], a                                       ; $40aa: $77
	ldh a, [c]                                       ; $40ab: $f2
	sbc $bf                                          ; $40ac: $de $bf
	sbc h                                            ; $40ae: $9c
	jp $c1c1                                         ; $40af: $c3 $c1 $c1


	call c, $8041                                    ; $40b2: $dc $41 $80
	ld e, $3f                                        ; $40b5: $1e $3f
	ld h, e                                          ; $40b7: $63
	ld b, a                                          ; $40b8: $47
	dec de                                           ; $40b9: $1b
	ld h, $48                                        ; $40ba: $26 $48
	add e                                            ; $40bc: $83
	pop hl                                           ; $40bd: $e1
	sbc $bf                                          ; $40be: $de $bf
	cp $fc                                           ; $40c0: $fe $fc
	ld hl, sp-$10                                    ; $40c2: $f8 $f0

jr_05b_40c4:
	ldh a, [$6c]                                     ; $40c4: $f0 $6c
	ld d, h                                          ; $40c6: $54
	call nc, $4a89                                   ; $40c7: $d4 $89 $4a
	ld b, h                                          ; $40ca: $44
	ld c, b                                          ; $40cb: $48
	ld d, c                                          ; $40cc: $51
	db $f4                                           ; $40cd: $f4
	call c, $89dc                                    ; $40ce: $dc $dc $89
	jp z, Jump_05b_4844                              ; $40d1: $ca $44 $48

	add l                                            ; $40d4: $85
	ret nc                                           ; $40d5: $d0

	inc de                                           ; $40d6: $13
	ld h, a                                          ; $40d7: $67
	adc a                                            ; $40d8: $8f
	ld a, [de]                                       ; $40d9: $1a
	inc [hl]                                         ; $40da: $34
	ld l, a                                          ; $40db: $6f
	ei                                               ; $40dc: $fb
	jp Jump_05b_6010                                 ; $40dd: $c3 $10 $60


	add c                                            ; $40e0: $81
	ld [bc], a                                       ; $40e1: $02
	inc b                                            ; $40e2: $04
	rrca                                             ; $40e3: $0f
	ld a, [hl-]                                      ; $40e4: $3a
	ld b, d                                          ; $40e5: $42
	cp e                                             ; $40e6: $bb
	xor a                                            ; $40e7: $af
	ld hl, sp+$20                                    ; $40e8: $f8 $20
	ld b, e                                          ; $40ea: $43
	db $fc                                           ; $40eb: $fc
	ld b, b                                          ; $40ec: $40
	rst JumpTable                                          ; $40ed: $c7
	xor $7b                                          ; $40ee: $ee $7b
	and l                                            ; $40f0: $a5
	sbc b                                            ; $40f1: $98
	ld a, a                                          ; $40f2: $7f
	db $fc                                           ; $40f3: $fc
	and b                                            ; $40f4: $a0
	and b                                            ; $40f5: $a0
	db $fc                                           ; $40f6: $fc
	ld hl, sp+$70                                    ; $40f7: $f8 $70
	ld a, e                                          ; $40f9: $7b
	jr c, jr_05b_4097                                ; $40fa: $38 $9b

	ret nz                                           ; $40fc: $c0

	adc $07                                          ; $40fd: $ce $07
	adc a                                            ; $40ff: $8f
	ld [hl], b                                       ; $4100: $70
	and c                                            ; $4101: $a1
	add h                                            ; $4102: $84
	ld a, a                                          ; $4103: $7f
	ld a, h                                          ; $4104: $7c
	ld e, [hl]                                       ; $4105: $5e
	dec sp                                           ; $4106: $3b
	ld a, $30                                        ; $4107: $3e $30
	ccf                                              ; $4109: $3f
	ccf                                              ; $410a: $3f
	inc [hl]                                         ; $410b: $34
	jp $eee5                                         ; $410c: $c3 $e5 $ee


	push hl                                          ; $410f: $e5
	rst AddAOntoHL                                          ; $4110: $ef
	rst $38                                          ; $4111: $ff
	ldh [$ef], a                                     ; $4112: $e0 $ef
	ld b, $05                                        ; $4114: $06 $05
	ld b, $05                                        ; $4116: $06 $05
	cp $fd                                           ; $4118: $fe $fd
	ld b, $04                                        ; $411a: $06 $04
	db $fd                                           ; $411c: $fd
	cp $7b                                           ; $411d: $fe $7b
	cp $93                                           ; $411f: $fe $93
	ld b, $fd                                        ; $4121: $06 $fd
	rst $38                                          ; $4123: $ff
	and h                                            ; $4124: $a4
	ld d, h                                          ; $4125: $54
	and h                                            ; $4126: $a4
	ld e, b                                          ; $4127: $58
	xor b                                            ; $4128: $a8
	ld c, b                                          ; $4129: $48
	adc b                                            ; $412a: $88
	ld [$7a5f], sp                                   ; $412b: $08 $5f $7a
	call nz, Call_05b_5f9c                           ; $412e: $c4 $9c $5f
	cp a                                             ; $4131: $bf
	ld a, a                                          ; $4132: $7f
	ld h, h                                          ; $4133: $64
	ld h, b                                          ; $4134: $60
	ld b, h                                          ; $4135: $44
	ld d, b                                          ; $4136: $50
	ld h, e                                          ; $4137: $63
	ldh a, [hDisp1_OBP1]                                     ; $4138: $f0 $94
	ld sp, $bf1c                                     ; $413a: $31 $1c $bf
	ld h, c                                          ; $413d: $61
	jr nc, jr_05b_4178                               ; $413e: $30 $38

	inc d                                            ; $4140: $14
	ld a, [bc]                                       ; $4141: $0a
	adc $e3                                          ; $4142: $ce $e3
	ld b, b                                          ; $4144: $40
	ld a, e                                          ; $4145: $7b
	sbc c                                            ; $4146: $99
	sbc l                                            ; $4147: $9d
	ldh [$f0], a                                     ; $4148: $e0 $f0
	ld a, e                                          ; $414a: $7b
	sub e                                            ; $414b: $93
	ld a, a                                          ; $414c: $7f
	db $fc                                           ; $414d: $fc
	ld d, h                                          ; $414e: $54
	ld [hl], e                                       ; $414f: $73
	adc e                                            ; $4150: $8b
	dec b                                            ; $4151: $05
	dec bc                                           ; $4152: $0b
	rrca                                             ; $4153: $0f
	rrca                                             ; $4154: $0f
	inc de                                           ; $4155: $13
	ld de, $0310                                     ; $4156: $11 $10 $03
	ld b, $0c                                        ; $4159: $06 $0c
	ld [$1c08], sp                                   ; $415b: $08 $08 $1c
	ld e, $1f                                        ; $415e: $1e $1f
	and c                                            ; $4160: $a1
	db $fd                                           ; $4161: $fd
	rrca                                             ; $4162: $0f
	db $fc                                           ; $4163: $fc
	rst $38                                          ; $4164: $ff
	ld a, e                                          ; $4165: $7b
	ld [hl], $9a                                     ; $4166: $36 $9a
	rst SubAFromDE                                          ; $4168: $df
	inc bc                                           ; $4169: $03
	pop af                                           ; $416a: $f1
	rra                                              ; $416b: $1f
	inc bc                                           ; $416c: $03
	ld a, c                                          ; $416d: $79
	adc h                                            ; $416e: $8c
	add b                                            ; $416f: $80
	ld h, h                                          ; $4170: $64
	ld l, e                                          ; $4171: $6b
	ldh [c], a                                       ; $4172: $e2
	db $d3                                           ; $4173: $d3
	db $d3                                           ; $4174: $d3
	rst SubAFromDE                                          ; $4175: $df
	sub a                                            ; $4176: $97
	xor [hl]                                         ; $4177: $ae

jr_05b_4178:
	ccf                                              ; $4178: $3f
	scf                                              ; $4179: $37
	scf                                              ; $417a: $37
	or [hl]                                          ; $417b: $b6
	or [hl]                                          ; $417c: $b6
	or d                                             ; $417d: $b2
	ld a, [$a3fb]                                    ; $417e: $fa $fb $a3
	ld d, b                                          ; $4181: $50
	cp h                                             ; $4182: $bc
	bit 4, a                                         ; $4183: $cb $67
	ccf                                              ; $4185: $3f
	inc e                                            ; $4186: $1c
	add b                                            ; $4187: $80
	dec a                                            ; $4188: $3d
	sbc a                                            ; $4189: $9f
	rst GetHLinHL                                          ; $418a: $cf
	ld a, a                                          ; $418b: $7f
	inc a                                            ; $418c: $3c
	ld e, $00                                        ; $418d: $1e $00
	add h                                            ; $418f: $84
	db $10                                           ; $4190: $10
	ldh [c], a                                       ; $4191: $e2
	cp [hl]                                          ; $4192: $be
	ld a, a                                          ; $4193: $7f
	rst FarCall                                          ; $4194: $f7
	db $fd                                           ; $4195: $fd
	ld a, [hl]                                       ; $4196: $7e
	ei                                               ; $4197: $fb
	rst AddAOntoHL                                          ; $4198: $ef
	rst $38                                          ; $4199: $ff
	rst SubAFromDE                                          ; $419a: $df
	ldh [hDisp1_LCDC], a                                     ; $419b: $e0 $8f
	cp $f0                                           ; $419d: $fe $f0
	rlca                                             ; $419f: $07
	rra                                              ; $41a0: $1f
	ld sp, hl                                        ; $41a1: $f9
	ld a, l                                          ; $41a2: $7d
	dec c                                            ; $41a3: $0d
	add a                                            ; $41a4: $87
	inc bc                                           ; $41a5: $03
	ld h, e                                          ; $41a6: $63
	db $e3                                           ; $41a7: $e3
	ld b, e                                          ; $41a8: $43
	rst $38                                          ; $41a9: $ff
	add e                                            ; $41aa: $83
	ld a, c                                          ; $41ab: $79
	xor c                                            ; $41ac: $a9
	sbc h                                            ; $41ad: $9c
	ld hl, $81c1                                     ; $41ae: $21 $c1 $81
	db $dd                                           ; $41b1: $dd
	ld a, a                                          ; $41b2: $7f
	db $dd                                           ; $41b3: $dd
	ccf                                              ; $41b4: $3f
	db $dd                                           ; $41b5: $dd
	add b                                            ; $41b6: $80
	db $dd                                           ; $41b7: $dd
	ret nz                                           ; $41b8: $c0

	sbc [hl]                                         ; $41b9: $9e
	cp a                                             ; $41ba: $bf
	ld a, c                                          ; $41bb: $79
	ld c, e                                          ; $41bc: $4b
	db $dd                                           ; $41bd: $dd
	rst $38                                          ; $41be: $ff
	sbc h                                            ; $41bf: $9c
	ld b, c                                          ; $41c0: $41
	ld bc, $db01                                     ; $41c1: $01 $01 $db
	ld b, b                                          ; $41c4: $40
	sub l                                            ; $41c5: $95
	inc hl                                           ; $41c6: $23
	and a                                            ; $41c7: $a7
	ld e, [hl]                                       ; $41c8: $5e
	ld c, [hl]                                       ; $41c9: $4e
	ld c, a                                          ; $41ca: $4f
	ld c, a                                          ; $41cb: $4f
	ld e, a                                          ; $41cc: $5f
	rst SubAFromBC                                          ; $41cd: $e7
	rst AddAOntoHL                                          ; $41ce: $ef
	db $fc                                           ; $41cf: $fc
	db $dd                                           ; $41d0: $dd
	ld hl, sp-$6d                                    ; $41d1: $f8 $93
	ldh a, [$e3]                                     ; $41d3: $f0 $e3
	scf                                              ; $41d5: $37
	rra                                              ; $41d6: $1f
	rrca                                             ; $41d7: $0f
	ld b, $07                                        ; $41d8: $06 $07
	inc bc                                           ; $41da: $03
	ld bc, $11a0                                     ; $41db: $01 $a0 $11
	dec bc                                           ; $41de: $0b
	ld a, e                                          ; $41df: $7b
	ld a, [$96ff]                                    ; $41e0: $fa $ff $96
	di                                               ; $41e3: $f3
	adc a                                            ; $41e4: $8f
	db $e3                                           ; $41e5: $e3
	pop af                                           ; $41e6: $f1
	cp b                                             ; $41e7: $b8
	ld e, b                                          ; $41e8: $58
	rst $38                                          ; $41e9: $ff
	add b                                            ; $41ea: $80
	di                                               ; $41eb: $f3
	ld l, b                                          ; $41ec: $68
	or c                                             ; $41ed: $b1
	sub [hl]                                         ; $41ee: $96
	rst $38                                          ; $41ef: $ff
	ld hl, sp-$20                                    ; $41f0: $f8 $e0
	ldh a, [$f9]                                     ; $41f2: $f0 $f9
	rst $38                                          ; $41f4: $ff
	rst $38                                          ; $41f5: $ff
	dec e                                            ; $41f6: $1d
	and a                                            ; $41f7: $a7
	db $dd                                           ; $41f8: $dd
	rst $38                                          ; $41f9: $ff
	ld a, [hl]                                       ; $41fa: $7e
	xor $83                                          ; $41fb: $ee $83
	ld d, $93                                        ; $41fd: $16 $93
	inc hl                                           ; $41ff: $23
	ld c, e                                          ; $4200: $4b
	sub [hl]                                         ; $4201: $96
	inc a                                            ; $4202: $3c
	ld hl, sp-$0f                                    ; $4203: $f8 $f1
	cp $f3                                           ; $4205: $fe $f3
	pop hl                                           ; $4207: $e1
	pop bc                                           ; $4208: $c1
	add e                                            ; $4209: $83
	rlca                                             ; $420a: $07
	adc a                                            ; $420b: $8f
	ld e, a                                          ; $420c: $5f
	cp a                                             ; $420d: $bf
	ld a, [hl-]                                      ; $420e: $3a
	ld a, $64                                        ; $420f: $3e $64
	ld h, e                                          ; $4211: $63
	ld c, [hl]                                       ; $4212: $4e
	sub d                                            ; $4213: $92
	db $e4                                           ; $4214: $e4
	inc b                                            ; $4215: $04
	rst AddAOntoHL                                          ; $4216: $ef
	push hl                                          ; $4217: $e5
	db $db                                           ; $4218: $db
	ld [hl], d                                       ; $4219: $72
	dec a                                            ; $421a: $3d
	sbc e                                            ; $421b: $9b
	ld [$6018], sp                                   ; $421c: $08 $18 $60
	add b                                            ; $421f: $80
	ld a, e                                          ; $4220: $7b
	cp c                                             ; $4221: $b9
	sbc [hl]                                         ; $4222: $9e
	rrca                                             ; $4223: $0f
	reti                                             ; $4224: $d9


	rst $38                                          ; $4225: $ff
	sub a                                            ; $4226: $97
	ld [$1010], sp                                   ; $4227: $08 $10 $10
	sub b                                            ; $422a: $90
	ld d, b                                          ; $422b: $50
	sub a                                            ; $422c: $97
	db $fd                                           ; $422d: $fd
	ld a, [hl+]                                      ; $422e: $2a
	db $db                                           ; $422f: $db
	rst $38                                          ; $4230: $ff
	sbc l                                            ; $4231: $9d
	ld a, [$7ad5]                                    ; $4232: $fa $d5 $7a
	cp $9a                                           ; $4235: $fe $9a
	ld c, $35                                        ; $4237: $0e $35
	db $eb                                           ; $4239: $eb
	ld d, a                                          ; $423a: $57
	xor a                                            ; $423b: $af
	ld [hl], l                                       ; $423c: $75
	sub c                                            ; $423d: $91
	sbc d                                            ; $423e: $9a
	ld a, [$a8d4]                                    ; $423f: $fa $d4 $a8
	ld d, b                                          ; $4242: $50
	nop                                              ; $4243: $00
	ld a, e                                          ; $4244: $7b
	db $d3                                           ; $4245: $d3
	ld [hl], l                                       ; $4246: $75
	add $6b                                          ; $4247: $c6 $6b
	ld e, c                                          ; $4249: $59
	adc a                                            ; $424a: $8f
	cp $05                                           ; $424b: $fe $05
	ld [bc], a                                       ; $424d: $02
	sub d                                            ; $424e: $92
	ld c, c                                          ; $424f: $49
	inc l                                            ; $4250: $2c
	add hl, de                                       ; $4251: $19
	nop                                              ; $4252: $00
	ld [$fcf8], sp                                   ; $4253: $08 $f8 $fc
	ld l, h                                          ; $4256: $6c
	or [hl]                                          ; $4257: $b6
	db $d3                                           ; $4258: $d3
	ldh [$f0], a                                     ; $4259: $e0 $f0
	ld [hl], d                                       ; $425b: $72
	call nz, $2c7c                                   ; $425c: $c4 $7c $2c
	sbc [hl]                                         ; $425f: $9e
	ldh [$79], a                                     ; $4260: $e0 $79
	add d                                            ; $4262: $82
	ld [hl], a                                       ; $4263: $77
	rst FarCall                                          ; $4264: $f7
	rst $38                                          ; $4265: $ff
	rst SubAFromDE                                          ; $4266: $df
	ld [$04df], sp                                   ; $4267: $08 $df $04
	rst SubAFromDE                                          ; $426a: $df
	ld [bc], a                                       ; $426b: $02
	rst SubAFromDE                                          ; $426c: $df
	ld bc, $0fdf                                     ; $426d: $01 $df $0f
	ld l, h                                          ; $4270: $6c
	or [hl]                                          ; $4271: $b6
	sub [hl]                                         ; $4272: $96
	ld a, b                                          ; $4273: $78
	ld a, h                                          ; $4274: $7c
	inc a                                            ; $4275: $3c
	inc a                                            ; $4276: $3c
	ld a, $3e                                        ; $4277: $3e $3e
	rra                                              ; $4279: $1f
	rra                                              ; $427a: $1f
	add a                                            ; $427b: $87
	ld a, b                                          ; $427c: $78
	and e                                            ; $427d: $a3
	rst SubAFromDE                                          ; $427e: $df
	pop bc                                           ; $427f: $c1
	rst SubAFromDE                                          ; $4280: $df
	ldh [$9c], a                                     ; $4281: $e0 $9c
	ld l, a                                          ; $4283: $6f
	ld b, a                                          ; $4284: $47
	ld b, a                                          ; $4285: $47
	ld [hl], a                                       ; $4286: $77
	add hl, sp                                       ; $4287: $39
	sbc e                                            ; $4288: $9b
	nop                                              ; $4289: $00
	ld sp, hl                                        ; $428a: $f9
	db $fd                                           ; $428b: $fd
	db $fd                                           ; $428c: $fd
	call c, Call_05b_7fff                            ; $428d: $dc $ff $7f
	cp b                                             ; $4290: $b8
	adc a                                            ; $4291: $8f
	db $fc                                           ; $4292: $fc
	ld a, a                                          ; $4293: $7f
	ccf                                              ; $4294: $3f
	ld a, a                                          ; $4295: $7f
	add hl, de                                       ; $4296: $19
	dec c                                            ; $4297: $0d
	db $10                                           ; $4298: $10
	or b                                             ; $4299: $b0
	ldh [$dc], a                                     ; $429a: $e0 $dc
	cp $f2                                           ; $429c: $fe $f2
	ld hl, sp-$08                                    ; $429e: $f8 $f8
	ld a, l                                          ; $42a0: $7d
	inc e                                            ; $42a1: $1c
	ld a, e                                          ; $42a2: $7b
	cp c                                             ; $42a3: $b9
	ld a, [hl]                                       ; $42a4: $7e
	and $9c                                          ; $42a5: $e6 $9c
	rst GetHLinHL                                          ; $42a7: $cf
	ld e, $08                                        ; $42a8: $1e $08
	ld [hl], a                                       ; $42aa: $77
	or b                                             ; $42ab: $b0
	sbc e                                            ; $42ac: $9b
	add b                                            ; $42ad: $80
	rst JumpTable                                          ; $42ae: $c7
	inc bc                                           ; $42af: $03
	ld [bc], a                                       ; $42b0: $02
	ld a, c                                          ; $42b1: $79
	ld c, d                                          ; $42b2: $4a
	rst SubAFromDE                                          ; $42b3: $df
	ld bc, $819e                                     ; $42b4: $01 $9e $81
	sbc $01                                          ; $42b7: $de $01
	db $fc                                           ; $42b9: $fc
	sub a                                            ; $42ba: $97
	rra                                              ; $42bb: $1f
	sbc a                                            ; $42bc: $9f
	sbc a                                            ; $42bd: $9f
	sbc [hl]                                         ; $42be: $9e
	adc [hl]                                         ; $42bf: $8e
	adc h                                            ; $42c0: $8c
	adc h                                            ; $42c1: $8c
	add b                                            ; $42c2: $80
	sbc $e0                                          ; $42c3: $de $e0
	sbc h                                            ; $42c5: $9c
	pop hl                                           ; $42c6: $e1
	pop af                                           ; $42c7: $f1
	di                                               ; $42c8: $f3
	ld a, d                                          ; $42c9: $7a
	ld a, [$3fda]                                    ; $42ca: $fa $da $3f
	sbc [hl]                                         ; $42cd: $9e
	ld b, b                                          ; $42ce: $40
	jp c, $95c0                                      ; $42cf: $da $c0 $95

	ld e, a                                          ; $42d2: $5f
	ccf                                              ; $42d3: $3f
	ccf                                              ; $42d4: $3f
	inc sp                                           ; $42d5: $33
	ld de, $1310                                     ; $42d6: $11 $10 $13
	inc c                                            ; $42d9: $0c
	ldh a, [$e0]                                     ; $42da: $f0 $e0
	ld l, a                                          ; $42dc: $6f
	ld c, a                                          ; $42dd: $4f
	rst SubAFromDE                                          ; $42de: $df
	add b                                            ; $42df: $80
	sbc c                                            ; $42e0: $99
	add $fc                                          ; $42e1: $c6 $fc
	ldh a, [c]                                       ; $42e3: $f2
	db $eb                                           ; $42e4: $eb
	db $eb                                           ; $42e5: $eb
	ld l, e                                          ; $42e6: $6b
	ld l, a                                          ; $42e7: $6f
	ld h, b                                          ; $42e8: $60
	sbc h                                            ; $42e9: $9c
	add c                                            ; $42ea: $81
	set 0, c                                         ; $42eb: $cb $c1
	ld a, c                                          ; $42ed: $79
	ld d, b                                          ; $42ee: $50
	rst SubAFromDE                                          ; $42ef: $df
	ld sp, hl                                        ; $42f0: $f9
	sbc l                                            ; $42f1: $9d
	ldh a, [c]                                       ; $42f2: $f2
	db $f4                                           ; $42f3: $f4
	sbc $40                                          ; $42f4: $de $40
	ld [hl], c                                       ; $42f6: $71
	jr c, @-$20                                      ; $42f7: $38 $de

	cp $71                                           ; $42f9: $fe $71
	call c, $0bde                                    ; $42fb: $dc $de $0b
	call c, $9dff                                    ; $42fe: $dc $ff $9d
	pop hl                                           ; $4301: $e1
	ret nz                                           ; $4302: $c0

	ld a, e                                          ; $4303: $7b
	dec sp                                           ; $4304: $3b
	cp $7e                                           ; $4305: $fe $7e
	ld l, b                                          ; $4307: $68
	ld c, l                                          ; $4308: $4d
	cp a                                             ; $4309: $bf
	reti                                             ; $430a: $d9


	rst $38                                          ; $430b: $ff
	sbc e                                            ; $430c: $9b
	ldh a, [rSC]                                     ; $430d: $f0 $02
	nop                                              ; $430f: $00
	ld a, [bc]                                       ; $4310: $0a
	ld [hl], a                                       ; $4311: $77
	cp $7e                                           ; $4312: $fe $7e
	ldh [c], a                                       ; $4314: $e2
	sbc l                                            ; $4315: $9d
	rst $38                                          ; $4316: $ff
	push af                                          ; $4317: $f5
	ld [hl], a                                       ; $4318: $77
	cp $7c                                           ; $4319: $fe $7c
	ld d, e                                          ; $431b: $53
	ld a, b                                          ; $431c: $78
	ld d, [hl]                                       ; $431d: $56
	ld a, e                                          ; $431e: $7b
	cp $7c                                           ; $431f: $fe $7c
	ld d, e                                          ; $4321: $53
	ld l, a                                          ; $4322: $6f
	rst FarCall                                          ; $4323: $f7
	ld a, [hl]                                       ; $4324: $7e
	adc [hl]                                         ; $4325: $8e
	ld a, c                                          ; $4326: $79

Jump_05b_4327:
	ld a, d                                          ; $4327: $7a
	ld a, e                                          ; $4328: $7b
	cp $9a                                           ; $4329: $fe $9a
	and b                                            ; $432b: $a0
	ld b, b                                          ; $432c: $40
	and b                                            ; $432d: $a0
	ld b, b                                          ; $432e: $40
	add b                                            ; $432f: $80
	ld a, e                                          ; $4330: $7b

Call_05b_4331:
	cp $6f                                           ; $4331: $fe $6f
	ld c, d                                          ; $4333: $4a
	rst $38                                          ; $4334: $ff
	ld l, a                                          ; $4335: $6f
	ld [hl], d                                       ; $4336: $72
	rst SubAFromDE                                          ; $4337: $df
	rst $38                                          ; $4338: $ff
	adc a                                            ; $4339: $8f
	add h                                            ; $433a: $84
	ldh [c], a                                       ; $433b: $e2
	ld c, h                                          ; $433c: $4c
	jr nc, jr_05b_434b                               ; $433d: $30 $0c

	inc bc                                           ; $433f: $03
	inc e                                            ; $4340: $1c
	ld b, $78                                        ; $4341: $06 $78
	inc e                                            ; $4343: $1c
	add e                                            ; $4344: $83
	ret nz                                           ; $4345: $c0

	ldh a, [$fc]                                     ; $4346: $f0 $fc
	ldh [$f8], a                                     ; $4348: $e0 $f8
	ld [hl], d                                       ; $434a: $72

jr_05b_434b:
	set 4, [hl]                                      ; $434b: $cb $e6
	add b                                            ; $434d: $80
	sbc a                                            ; $434e: $9f
	ld e, a                                          ; $434f: $5f
	ld c, a                                          ; $4350: $4f
	daa                                              ; $4351: $27
	ld hl, $0f10                                     ; $4352: $21 $10 $0f
	ld b, $e0                                        ; $4355: $06 $e0
	ld h, b                                          ; $4357: $60
	ld [hl], b                                       ; $4358: $70
	jr c, jr_05b_4399                                ; $4359: $38 $3e

	rra                                              ; $435b: $1f
	rrca                                             ; $435c: $0f
	rlca                                             ; $435d: $07
	sub b                                            ; $435e: $90
	sbc b                                            ; $435f: $98
	ret c                                            ; $4360: $d8

	call c, $7efc                                    ; $4361: $dc $fc $7e
	ld c, $e0                                        ; $4364: $0e $e0
	ld l, a                                          ; $4366: $6f
	ld h, a                                          ; $4367: $67
	daa                                              ; $4368: $27
	inc hl                                           ; $4369: $23
	inc bc                                           ; $436a: $03
	add c                                            ; $436b: $81
	pop af                                           ; $436c: $f1
	sbc l                                            ; $436d: $9d
	rst $38                                          ; $436e: $ff
	rrca                                             ; $436f: $0f
	ld a, c                                          ; $4370: $79
	ld [$0299], a                                    ; $4371: $ea $99 $02
	rlca                                             ; $4374: $07
	ld b, $0c                                        ; $4375: $06 $0c
	db $fc                                           ; $4377: $fc
	db $fc                                           ; $4378: $fc
	ld [hl], a                                       ; $4379: $77
	sbc [hl]                                         ; $437a: $9e
	ld a, l                                          ; $437b: $7d
	call z, $fb80                                    ; $437c: $cc $80 $fb
	or $ec                                           ; $437f: $f6 $ec
	db $f4                                           ; $4381: $f4
	cp e                                             ; $4382: $bb
	rst AddAOntoHL                                          ; $4383: $ef
	ld a, e                                          ; $4384: $7b
	dec e                                            ; $4385: $1d
	rrca                                             ; $4386: $0f
	rra                                              ; $4387: $1f
	rra                                              ; $4388: $1f
	rrca                                             ; $4389: $0f
	rst JumpTable                                          ; $438a: $c7
	ldh a, [$3c]                                     ; $438b: $f0 $3c
	rrca                                             ; $438d: $0f
	pop bc                                           ; $438e: $c1
	ld b, d                                          ; $438f: $42
	jp nz, $8bc5                                     ; $4390: $c2 $c5 $8b

	rla                                              ; $4393: $17
	cp [hl]                                          ; $4394: $be
	pop hl                                           ; $4395: $e1
	add b                                            ; $4396: $80
	pop bc                                           ; $4397: $c1
	ld b, c                                          ; $4398: $41

jr_05b_4399:
	jp $0f87                                         ; $4399: $c3 $87 $0f


	ccf                                              ; $439c: $3f
	sbc [hl]                                         ; $439d: $9e
	pop bc                                           ; $439e: $c1
	ld [hl], c                                       ; $439f: $71
	adc b                                            ; $43a0: $88
	rst SubAFromDE                                          ; $43a1: $df
	ld b, b                                          ; $43a2: $40
	sbc [hl]                                         ; $43a3: $9e
	ret nz                                           ; $43a4: $c0

	reti                                             ; $43a5: $d9


	rst $38                                          ; $43a6: $ff
	rst SubAFromDE                                          ; $43a7: $df
	ccf                                              ; $43a8: $3f
	sbc $1f                                          ; $43a9: $de $1f
	sbc h                                            ; $43ab: $9c
	ld e, a                                          ; $43ac: $5f
	ld e, [hl]                                       ; $43ad: $5e
	ld e, [hl]                                       ; $43ae: $5e
	ld a, b                                          ; $43af: $78
	db $f4                                           ; $43b0: $f4
	halt                                             ; $43b1: $76
	xor l                                            ; $43b2: $ad
	adc l                                            ; $43b3: $8d
	pop hl                                           ; $43b4: $e1
	add hl, bc                                       ; $43b5: $09
	adc e                                            ; $43b6: $8b
	sub a                                            ; $43b7: $97
	push de                                          ; $43b8: $d5
	ld [hl], l                                       ; $43b9: $75
	ld [hl], a                                       ; $43ba: $77
	ld a, [$fefa]                                    ; $43bb: $fa $fa $fe
	ld a, h                                          ; $43be: $7c
	ld l, h                                          ; $43bf: $6c
	ld l, [hl]                                       ; $43c0: $6e
	adc $ce                                          ; $43c1: $ce $ce
	adc a                                            ; $43c3: $8f
	adc a                                            ; $43c4: $8f
	rst AddAOntoHL                                          ; $43c5: $ef
	ld a, d                                          ; $43c6: $7a
	db $dd                                           ; $43c7: $dd
	sbc c                                            ; $43c8: $99
	push af                                          ; $43c9: $f5
	ld [$ead5], a                                    ; $43ca: $ea $d5 $ea
	set 1, a                                         ; $43cd: $cb $cf
	db $db                                           ; $43cf: $db
	rst $38                                          ; $43d0: $ff
	sbc l                                            ; $43d1: $9d
	ret c                                            ; $43d2: $d8

	or b                                             ; $43d3: $b0
	ld a, e                                          ; $43d4: $7b
	dec hl                                           ; $43d5: $2b
	ld a, b                                          ; $43d6: $78
	ld b, l                                          ; $43d7: $45
	ld d, d                                          ; $43d8: $52
	pop hl                                           ; $43d9: $e1
	sbc l                                            ; $43da: $9d
	rst $38                                          ; $43db: $ff
	ld bc, $ffda                                     ; $43dc: $01 $da $ff
	ld l, [hl]                                       ; $43df: $6e
	or h                                             ; $43e0: $b4
	sbc e                                            ; $43e1: $9b
	nop                                              ; $43e2: $00
	ldh [$df], a                                     ; $43e3: $e0 $df
	db $ec                                           ; $43e5: $ec
	ld l, e                                          ; $43e6: $6b
	and d                                            ; $43e7: $a2
	ld l, b                                          ; $43e8: $68

jr_05b_43e9:
	and h                                            ; $43e9: $a4
	ld a, a                                          ; $43ea: $7f
	adc l                                            ; $43eb: $8d
	jp c, $9cff                                      ; $43ec: $da $ff $9c

	ld a, a                                          ; $43ef: $7f
	nop                                              ; $43f0: $00
	ld [bc], a                                       ; $43f1: $02
	ld a, e                                          ; $43f2: $7b
	cp $77                                           ; $43f3: $fe $77
	call $c07e                                       ; $43f5: $cd $7e $c0
	ld [hl], c                                       ; $43f8: $71
	rst $38                                          ; $43f9: $ff
	ld a, [hl]                                       ; $43fa: $7e
	ret nz                                           ; $43fb: $c0

	sbc [hl]                                         ; $43fc: $9e
	dec b                                            ; $43fd: $05
	ld a, e                                          ; $43fe: $7b
	cp $9e                                           ; $43ff: $fe $9e
	ld bc, $c07a                                     ; $4401: $01 $7a $c0
	sbc [hl]                                         ; $4404: $9e
	ld a, [$fe7b]                                    ; $4405: $fa $7b $fe
	sbc [hl]                                         ; $4408: $9e
	cp $76                                           ; $4409: $fe $76
	ret nz                                           ; $440b: $c0

	sbc d                                            ; $440c: $9a
	xor a                                            ; $440d: $af
	ld d, a                                          ; $440e: $57
	xor e                                            ; $440f: $ab
	ld d, l                                          ; $4410: $55
	xor d                                            ; $4411: $aa
	ld a, d                                          ; $4412: $7a
	ret nz                                           ; $4413: $c0

	sbc d                                            ; $4414: $9a
	ld d, b                                          ; $4415: $50
	xor b                                            ; $4416: $a8
	ld d, h                                          ; $4417: $54
	xor d                                            ; $4418: $aa
	ld d, l                                          ; $4419: $55
	ld b, h                                          ; $441a: $44
	ld b, b                                          ; $441b: $40
	ld [hl], l                                       ; $441c: $75
	ld b, h                                          ; $441d: $44
	sbc e                                            ; $441e: $9b
	ld b, $01                                        ; $441f: $06 $01
	add b                                            ; $4421: $80
	ld [hl], b                                       ; $4422: $70
	ld a, e                                          ; $4423: $7b
	ld [de], a                                       ; $4424: $12
	sub l                                            ; $4425: $95
	ldh a, [$f8]                                     ; $4426: $f0 $f8
	cp $7f                                           ; $4428: $fe $7f
	adc a                                            ; $442a: $8f
	add b                                            ; $442b: $80
	ld h, b                                          ; $442c: $60
	inc e                                            ; $442d: $1c
	ldh [rP1], a                                     ; $442e: $e0 $00
	ld a, e                                          ; $4430: $7b
	ei                                               ; $4431: $fb
	ld a, a                                          ; $4432: $7f
	db $fc                                           ; $4433: $fc
	ld a, a                                          ; $4434: $7f
	ld sp, hl                                        ; $4435: $f9
	ld a, e                                          ; $4436: $7b
	sbc b                                            ; $4437: $98
	ld [hl], a                                       ; $4438: $77
	ei                                               ; $4439: $fb
	db $f4                                           ; $443a: $f4
	ld h, [hl]                                       ; $443b: $66
	add b                                            ; $443c: $80
	ld h, a                                          ; $443d: $67
	ld hl, sp-$75                                    ; $443e: $f8 $8b
	jr jr_05b_43e9                                   ; $4440: $18 $a7

	ld e, h                                          ; $4442: $5c
	ld h, $18                                        ; $4443: $26 $18
	inc b                                            ; $4445: $04
	ld [bc], a                                       ; $4446: $02
	rlca                                             ; $4447: $07
	rst $38                                          ; $4448: $ff
	rst SubAFromDE                                          ; $4449: $df
	ld h, e                                          ; $444a: $63
	add hl, sp                                       ; $444b: $39
	rra                                              ; $444c: $1f
	rlca                                             ; $444d: $07
	inc bc                                           ; $444e: $03
	rlca                                             ; $444f: $07
	add hl, bc                                       ; $4450: $09
	dec bc                                           ; $4451: $0b
	call c, Call_05b_7530                            ; $4452: $dc $30 $75
	ld hl, sp-$6e                                    ; $4455: $f8 $92
	ld sp, hl                                        ; $4457: $f9
	ld hl, sp-$10                                    ; $4458: $f8 $f0
	ldh [$de], a                                     ; $445a: $e0 $de
	and c                                            ; $445c: $a1
	rst SubAFromDE                                          ; $445d: $df
	and $8f                                          ; $445e: $e6 $8f
	sbc $ef                                          ; $4460: $de $ef
	ld e, h                                          ; $4462: $5c
	ld hl, sp+$7b                                    ; $4463: $f8 $7b
	ld e, b                                          ; $4465: $58
	adc a                                            ; $4466: $8f
	add [hl]                                         ; $4467: $86
	ld e, h                                          ; $4468: $5c
	daa                                              ; $4469: $27
	ld c, b                                          ; $446a: $48
	ld d, b                                          ; $446b: $50
	rst $38                                          ; $446c: $ff
	sbc d                                            ; $446d: $9a
	add hl, hl                                       ; $446e: $29
	ld bc, $dd00                                     ; $446f: $01 $00 $dd
	inc bc                                           ; $4472: $03
	inc bc                                           ; $4473: $03
	jp nz, $fdf6                                     ; $4474: $c2 $f6 $fd

	ld [hl], a                                       ; $4477: $77
	cp l                                             ; $4478: $bd
	sub e                                            ; $4479: $93
	ld bc, $6383                                     ; $447a: $01 $83 $63
	rla                                              ; $447d: $17
	ldh [$a0], a                                     ; $447e: $e0 $a0
	or b                                             ; $4480: $b0
	db $10                                           ; $4481: $10
	ld [$8a0c], sp                                   ; $4482: $08 $0c $8a
	bit 6, e                                         ; $4485: $cb $73
	inc sp                                           ; $4487: $33
	sbc b                                            ; $4488: $98
	scf                                              ; $4489: $37
	rla                                              ; $448a: $17
	rlca                                             ; $448b: $07
	ld e, h                                          ; $448c: $5c
	ld e, l                                          ; $448d: $5d
	ld e, c                                          ; $448e: $59
	ld b, c                                          ; $448f: $41
	sbc $43                                          ; $4490: $de $43
	sbc e                                            ; $4492: $9b
	ld b, a                                          ; $4493: $47
	db $e3                                           ; $4494: $e3
	db $e3                                           ; $4495: $e3
	rst SubAFromBC                                          ; $4496: $e7
	ld [hl], l                                       ; $4497: $75
	or h                                             ; $4498: $b4
	sbc l                                            ; $4499: $9d
	db $fc                                           ; $449a: $fc
	ld sp, hl                                        ; $449b: $f9
	sbc $f1                                          ; $449c: $de $f1
	rst SubAFromDE                                          ; $449e: $df
	push hl                                          ; $449f: $e5
	sbc h                                            ; $44a0: $9c
	rst GetHLinHL                                          ; $44a1: $cf
	adc a                                            ; $44a2: $8f
	adc a                                            ; $44a3: $8f
	sbc $1f                                          ; $44a4: $de $1f
	rst SubAFromDE                                          ; $44a6: $df
	dec sp                                           ; $44a7: $3b
	sbc h                                            ; $44a8: $9c
	ld sp, $d571                                     ; $44a9: $31 $71 $d5
	ld a, c                                          ; $44ac: $79
	db $eb                                           ; $44ad: $eb
	sbc l                                            ; $44ae: $9d
	push af                                          ; $44af: $f5
	ld e, $62                                        ; $44b0: $1e $62
	sub c                                            ; $44b2: $91
	ld a, l                                          ; $44b3: $7d
	ld d, $91                                        ; $44b4: $16 $91
	daa                                              ; $44b6: $27
	ld c, a                                          ; $44b7: $4f
	sbc a                                            ; $44b8: $9f
	ld a, $7c                                        ; $44b9: $3e $7c
	db $fd                                           ; $44bb: $fd
	ld hl, sp-$01                                    ; $44bc: $f8 $ff
	cp $f8                                           ; $44be: $fe $f8
	pop af                                           ; $44c0: $f1
	ldh [c], a                                       ; $44c1: $e2
	add $86                                          ; $44c2: $c6 $86
	ld a, c                                          ; $44c4: $79
	adc e                                            ; $44c5: $8b
	adc a                                            ; $44c6: $8f
	ret nz                                           ; $44c7: $c0

	add hl, bc                                       ; $44c8: $09
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	ld d, d                                          ; $44cb: $52
	and c                                            ; $44cc: $a1
	nop                                              ; $44cd: $00
	ccf                                              ; $44ce: $3f
	rst JumpTable                                          ; $44cf: $c7
	ld b, $0e                                        ; $44d0: $06 $0e
	ld c, $0c                                        ; $44d2: $0e $0c
	inc e                                            ; $44d4: $1c
	rst $38                                          ; $44d5: $ff
	rst $38                                          ; $44d6: $ff
	ld a, e                                          ; $44d7: $7b
	ld l, d                                          ; $44d8: $6a
	ld a, a                                          ; $44d9: $7f
	adc e                                            ; $44da: $8b
	sbc h                                            ; $44db: $9c
	ld b, b                                          ; $44dc: $40
	rra                                              ; $44dd: $1f
	ldh [$7b], a                                     ; $44de: $e0 $7b
	ld e, d                                          ; $44e0: $5a
	rst SubAFromDE                                          ; $44e1: $df
	ld bc, $038e                                     ; $44e2: $01 $8e $03
	ld h, b                                          ; $44e5: $60
	or b                                             ; $44e6: $b0
	ret c                                            ; $44e7: $d8

	db $ec                                           ; $44e8: $ec
	or $f9                                           ; $44e9: $f6 $f9
	db $fc                                           ; $44eb: $fc
	ld a, [hl]                                       ; $44ec: $7e
	cp a                                             ; $44ed: $bf
	rst SubAFromDE                                          ; $44ee: $df
	ld l, a                                          ; $44ef: $6f
	scf                                              ; $44f0: $37
	dec de                                           ; $44f1: $1b
	rrca                                             ; $44f2: $0f
	add a                                            ; $44f3: $87
	jp $9cfc                                         ; $44f4: $c3 $fc $9c


	inc bc                                           ; $44f7: $03
	db $fc                                           ; $44f8: $fc
	ld [hl], e                                       ; $44f9: $73
	jp c, $94ff                                      ; $44fa: $da $ff $94

	adc a                                            ; $44fd: $8f
	nop                                              ; $44fe: $00
	ld a, [hl+]                                      ; $44ff: $2a
	nop                                              ; $4500: $00
	ld a, [hl+]                                      ; $4501: $2a
	rlca                                             ; $4502: $07
	ld hl, sp-$19                                    ; $4503: $f8 $e7
	rst $38                                          ; $4505: $ff
	rst $38                                          ; $4506: $ff
	push de                                          ; $4507: $d5
	ld a, e                                          ; $4508: $7b
	cp $7f                                           ; $4509: $fe $7f
	call nz, $f88f                                   ; $450b: $c4 $8f $f8
	ld d, l                                          ; $450e: $55
	xor d                                            ; $450f: $aa
	inc bc                                           ; $4510: $03
	cp h                                             ; $4511: $bc
	jp $ff3f                                         ; $4512: $c3 $3f $ff


	rst $38                                          ; $4515: $ff
	xor d                                            ; $4516: $aa
	ld d, l                                          ; $4517: $55
	rst $38                                          ; $4518: $ff
	ld a, a                                          ; $4519: $7f
	rst $38                                          ; $451a: $ff
	db $fc                                           ; $451b: $fc
	ret nz                                           ; $451c: $c0

	ld a, [$039e]                                    ; $451d: $fa $9e $03
	ld l, d                                          ; $4520: $6a
	ret nz                                           ; $4521: $c0

	sbc e                                            ; $4522: $9b
	db $fc                                           ; $4523: $fc
	rst $38                                          ; $4524: $ff
	rra                                              ; $4525: $1f
	rrca                                             ; $4526: $0f
	ld a, d                                          ; $4527: $7a
	or $9a                                           ; $4528: $f6 $9a
	ccf                                              ; $452a: $3f
	ret nz                                           ; $452b: $c0

	ld a, a                                          ; $452c: $7f
	ldh [$f0], a                                     ; $452d: $e0 $f0
	ld a, d                                          ; $452f: $7a
	cp [hl]                                          ; $4530: $be
	ld a, a                                          ; $4531: $7f
	pop hl                                           ; $4532: $e1
	ld a, d                                          ; $4533: $7a
	rst GetHLinHL                                          ; $4534: $cf
	sbc h                                            ; $4535: $9c
	db $fc                                           ; $4536: $fc
	inc bc                                           ; $4537: $03
	inc a                                            ; $4538: $3c
	ld l, a                                          ; $4539: $6f
	reti                                             ; $453a: $d9


	ld h, e                                          ; $453b: $63
	jp nc, $bf4e                                     ; $453c: $d2 $4e $bf

	ld [hl], h                                       ; $453f: $74
	ld [hl-], a                                      ; $4540: $32
	ld e, a                                          ; $4541: $5f
	ld hl, sp-$66                                    ; $4542: $f8 $9a
	ld hl, sp-$79                                    ; $4544: $f8 $87
	ccf                                              ; $4546: $3f
	ld a, [hl]                                       ; $4547: $7e
	ld [hl], b                                       ; $4548: $70
	ld a, c                                          ; $4549: $79
	sub h                                            ; $454a: $94
	ld a, l                                          ; $454b: $7d
	ld b, a                                          ; $454c: $47
	adc a                                            ; $454d: $8f
	inc bc                                           ; $454e: $03
	inc c                                            ; $454f: $0c
	db $10                                           ; $4550: $10
	inc l                                            ; $4551: $2c
	or d                                             ; $4552: $b2
	rst $38                                          ; $4553: $ff
	cp $ed                                           ; $4554: $fe $ed
	db $db                                           ; $4556: $db
	scf                                              ; $4557: $37
	ld c, $1c                                        ; $4558: $0e $1c
	ld a, $3f                                        ; $455a: $3e $3f
	jr jr_05b_45be                                   ; $455c: $18 $60

	ld a, c                                          ; $455e: $79
	db $eb                                           ; $455f: $eb
	rst SubAFromDE                                          ; $4560: $df
	ld [$1795], sp                                   ; $4561: $08 $95 $17
	rst AddAOntoHL                                          ; $4564: $ef
	db $db                                           ; $4565: $db
	sub e                                            ; $4566: $93
	inc sp                                           ; $4567: $33
	ld [hl], e                                       ; $4568: $73
	pop hl                                           ; $4569: $e1
	pop hl                                           ; $456a: $e1
	call Call_05b_7841                               ; $456b: $cd $41 $78
	ld c, [hl]                                       ; $456e: $4e
	cp $99                                           ; $456f: $fe $99
	adc h                                            ; $4571: $8c
	ld hl, sp+$00                                    ; $4572: $f8 $00
	ld [hl], b                                       ; $4574: $70
	ld a, b                                          ; $4575: $78
	db $fc                                           ; $4576: $fc
	ld l, a                                          ; $4577: $6f
	ld d, l                                          ; $4578: $55
	sbc l                                            ; $4579: $9d
	add a                                            ; $457a: $87
	add e                                            ; $457b: $83
	sbc $80                                          ; $457c: $de $80
	adc [hl]                                         ; $457e: $8e
	ldh [c], a                                       ; $457f: $e2
	ld [hl], h                                       ; $4580: $74
	inc [hl]                                         ; $4581: $34
	dec d                                            ; $4582: $15
	adc l                                            ; $4583: $8d
	pop af                                           ; $4584: $f1
	ld sp, hl                                        ; $4585: $f9
	db $fc                                           ; $4586: $fc
	adc a                                            ; $4587: $8f
	rst GetHLinHL                                          ; $4588: $cf
	rst AddAOntoHL                                          ; $4589: $ef
	cp $7e                                           ; $458a: $fe $7e
	ld e, $0e                                        ; $458c: $1e $0e
	rlca                                             ; $458e: $07
	ld b, a                                          ; $458f: $47
	sbc $4f                                          ; $4590: $de $4f
	sbc [hl]                                         ; $4592: $9e
	rrca                                             ; $4593: $0f
	sbc $9f                                          ; $4594: $de $9f
	ld a, l                                          ; $4596: $7d
	ld b, [hl]                                       ; $4597: $46
	sbc $f8                                          ; $4598: $de $f8
	sbc $70                                          ; $459a: $de $70
	rst SubAFromDE                                          ; $459c: $df
	sbc a                                            ; $459d: $9f
	rst SubAFromDE                                          ; $459e: $df
	cp l                                             ; $459f: $bd
	ld a, b                                          ; $45a0: $78
	and l                                            ; $45a1: $a5
	sub [hl]                                         ; $45a2: $96
	rst AddAOntoHL                                          ; $45a3: $ef
	ld h, c                                          ; $45a4: $61
	ld h, c                                          ; $45a5: $61
	ld b, e                                          ; $45a6: $43
	ld b, e                                          ; $45a7: $43
	inc bc                                           ; $45a8: $03
	inc bc                                           ; $45a9: $03
	rrca                                             ; $45aa: $0f
	inc de                                           ; $45ab: $13
	reti                                             ; $45ac: $d9


	rst $38                                          ; $45ad: $ff
	ld [hl], b                                       ; $45ae: $70
	and d                                            ; $45af: $a2
	add d                                            ; $45b0: $82
	push de                                          ; $45b1: $d5
	ld a, [$fcfd]                                    ; $45b2: $fa $fd $fc
	rst $38                                          ; $45b5: $ff
	db $fc                                           ; $45b6: $fc
	cp $fa                                           ; $45b7: $fe $fa
	db $fc                                           ; $45b9: $fc
	db $f4                                           ; $45ba: $f4
	db $fc                                           ; $45bb: $fc
	dec bc                                           ; $45bc: $0b
	dec bc                                           ; $45bd: $0b

jr_05b_45be:
	rlca                                             ; $45be: $07
	dec b                                            ; $45bf: $05
	adc l                                            ; $45c0: $8d
	ld e, e                                          ; $45c1: $5b
	cp e                                             ; $45c2: $bb
	ld d, e                                          ; $45c3: $53
	ldh [c], a                                       ; $45c4: $e2
	db $fd                                           ; $45c5: $fd
	rla                                              ; $45c6: $17
	inc l                                            ; $45c7: $2c
	inc l                                            ; $45c8: $2c
	jr z, jr_05b_4624                                ; $45c9: $28 $59

	ld e, d                                          ; $45cb: $5a
	inc e                                            ; $45cc: $1c
	cp $de                                           ; $45cd: $fe $de
	ei                                               ; $45cf: $fb
	sbc $f7                                          ; $45d0: $de $f7
	ld a, l                                          ; $45d2: $7d
	jp z, Jump_05b_6090                              ; $45d3: $ca $90 $60

	pop bc                                           ; $45d6: $c1
	ld [hl+], a                                      ; $45d7: $22
	dec d                                            ; $45d8: $15
	bit 5, e                                         ; $45d9: $cb $6b
	inc bc                                           ; $45db: $03
	rlca                                             ; $45dc: $07
	adc [hl]                                         ; $45dd: $8e
	cp $fc                                           ; $45de: $fe $fc
	ld hl, sp-$04                                    ; $45e0: $f8 $fc
	db $fd                                           ; $45e2: $fd
	ld e, a                                          ; $45e3: $5f
	sbc $7f                                          ; $45e4: $de $7f
	sbc d                                            ; $45e6: $9a
	rst SubAFromDE                                          ; $45e7: $df
	rst $38                                          ; $45e8: $ff
	cp a                                             ; $45e9: $bf
	ld a, a                                          ; $45ea: $7f
	pop hl                                           ; $45eb: $e1
	sbc $20                                          ; $45ec: $de $20
	sbc e                                            ; $45ee: $9b
	ld h, b                                          ; $45ef: $60
	ld b, b                                          ; $45f0: $40
	ret nz                                           ; $45f1: $c0

	add b                                            ; $45f2: $80
	reti                                             ; $45f3: $d9


	rst $38                                          ; $45f4: $ff
	sbc [hl]                                         ; $45f5: $9e
	db $fc                                           ; $45f6: $fc
	ld d, c                                          ; $45f7: $51
	xor b                                            ; $45f8: $a8
	sbc l                                            ; $45f9: $9d
	db $fd                                           ; $45fa: $fd
	cp [hl]                                          ; $45fb: $be
	ld l, d                                          ; $45fc: $6a
	ret c                                            ; $45fd: $d8

	sbc [hl]                                         ; $45fe: $9e
	ld a, [hl]                                       ; $45ff: $7e
	ld [hl], a                                       ; $4600: $77
	di                                               ; $4601: $f3
	sbc l                                            ; $4602: $9d
	or $b8                                           ; $4603: $f6 $b8
	ld [hl], d                                       ; $4605: $72
	or $9c                                           ; $4606: $f6 $9c
	inc bc                                           ; $4608: $03
	ld c, $78                                        ; $4609: $0e $78
	ld h, [hl]                                       ; $460b: $66
	xor $7c                                          ; $460c: $ee $7c
	sbc c                                            ; $460e: $99
	jp c, $9eff                                      ; $460f: $da $ff $9e

	rrca                                             ; $4612: $0f
	ld [hl], d                                       ; $4613: $72
	or e                                             ; $4614: $b3
	ld a, d                                          ; $4615: $7a
	call nc, $b372                                   ; $4616: $d4 $72 $b3
	sbc $ff                                          ; $4619: $de $ff
	sub b                                            ; $461b: $90
	ldh a, [$0e]                                     ; $461c: $f0 $0e
	ld a, b                                          ; $461e: $78
	ldh [$3c], a                                     ; $461f: $e0 $3c
	ld bc, $7807                                     ; $4621: $01 $07 $78

jr_05b_4624:
	nop                                              ; $4624: $00
	ldh a, [$80]                                     ; $4625: $f0 $80
	nop                                              ; $4627: $00
	ret nz                                           ; $4628: $c0

	cp $f8                                           ; $4629: $fe $f8
	ld l, h                                          ; $462b: $6c
	inc sp                                           ; $462c: $33
	ld b, c                                          ; $462d: $41
	ld a, d                                          ; $462e: $7a
	rst FarCall                                          ; $462f: $f7
	sbc $20                                          ; $4630: $de $20
	sbc e                                            ; $4632: $9b
	inc h                                            ; $4633: $24
	inc l                                            ; $4634: $2c
	ld l, $3e                                        ; $4635: $2e $3e
	db $dd                                           ; $4637: $dd
	ccf                                              ; $4638: $3f
	adc a                                            ; $4639: $8f
	dec sp                                           ; $463a: $3b
	inc sp                                           ; $463b: $33
	ld sp, $3031                                     ; $463c: $31 $31 $30
	sbc b                                            ; $463f: $98
	ld h, b                                          ; $4640: $60
	nop                                              ; $4641: $00
	dec b                                            ; $4642: $05
	dec b                                            ; $4643: $05
	inc b                                            ; $4644: $04
	inc b                                            ; $4645: $04
	ld c, $9f                                        ; $4646: $0e $9f
	rst $38                                          ; $4648: $ff
	rst $38                                          ; $4649: $ff
	db $dd                                           ; $464a: $dd
	ei                                               ; $464b: $fb
	adc [hl]                                         ; $464c: $8e
	pop af                                           ; $464d: $f1
	ld d, e                                          ; $464e: $53
	jr nc, jr_05b_4659                               ; $464f: $30 $08

	add hl, hl                                       ; $4651: $29
	dec sp                                           ; $4652: $3b
	or a                                             ; $4653: $b7
	cp a                                             ; $4654: $bf
	cp a                                             ; $4655: $bf
	rst SubAFromDE                                          ; $4656: $df
	rst $38                                          ; $4657: $ff
	rst $38                                          ; $4658: $ff

jr_05b_4659:
	sbc $cc                                          ; $4659: $de $cc
	call z, $c4c4                                    ; $465b: $cc $c4 $c4
	ld a, d                                          ; $465e: $7a
	ld a, [hl-]                                      ; $465f: $3a
	rst SubAFromDE                                          ; $4660: $df
	db $fd                                           ; $4661: $fd
	sbc $fe                                          ; $4662: $de $fe
	rst SubAFromDE                                          ; $4664: $df
	add b                                            ; $4665: $80
	ld a, h                                          ; $4666: $7c
	ret z                                            ; $4667: $c8

	sbc [hl]                                         ; $4668: $9e
	ld [bc], a                                       ; $4669: $02
	sbc $03                                          ; $466a: $de $03
	add b                                            ; $466c: $80
	cp $df                                           ; $466d: $fe $df
	rst SubAFromDE                                          ; $466f: $df
	db $eb                                           ; $4670: $eb
	jp hl                                            ; $4671: $e9


	db $f4                                           ; $4672: $f4
	ldh a, [c]                                       ; $4673: $f2
	ld a, e                                          ; $4674: $7b
	inc bc                                           ; $4675: $03
	ld hl, $1420                                     ; $4676: $21 $20 $14
	ld d, $0b                                        ; $4679: $16 $0b
	dec c                                            ; $467b: $0d
	add h                                            ; $467c: $84
	rra                                              ; $467d: $1f
	ld e, a                                          ; $467e: $5f
	sbc $dd                                          ; $467f: $de $dd
	cp e                                             ; $4681: $bb
	or a                                             ; $4682: $b7
	cpl                                              ; $4683: $2f
	ld a, $f0                                        ; $4684: $3e $f0
	ldh [$e1], a                                     ; $4686: $e0 $e1
	ld h, d                                          ; $4688: $62
	ld h, h                                          ; $4689: $64
	ld l, b                                          ; $468a: $68
	ldh a, [$8d]                                     ; $468b: $f0 $8d
	pop hl                                           ; $468d: $e1
	db $db                                           ; $468e: $db
	cp a                                             ; $468f: $bf
	ld [hl], a                                       ; $4690: $77
	db $fc                                           ; $4691: $fc
	add sp, -$30                                     ; $4692: $e8 $d0
	jr nz, jr_05b_46d6                               ; $4694: $20 $40

	daa                                              ; $4696: $27
	ld b, a                                          ; $4697: $47
	adc a                                            ; $4698: $8f
	inc c                                            ; $4699: $0c
	jr jr_05b_46cc                                   ; $469a: $18 $30

	ldh [$c0], a                                     ; $469c: $e0 $c0
	di                                               ; $469e: $f3
	ld l, e                                          ; $469f: $6b
	dec a                                            ; $46a0: $3d
	ld h, a                                          ; $46a1: $67
	ld hl, sp-$80                                    ; $46a2: $f8 $80
	ld hl, sp+$68                                    ; $46a4: $f8 $68
	inc sp                                           ; $46a6: $33
	inc [hl]                                         ; $46a7: $34
	ld c, c                                          ; $46a8: $49
	ld l, e                                          ; $46a9: $6b
	xor [hl]                                         ; $46aa: $ae
	rst SubAFromDE                                          ; $46ab: $df
	or a                                             ; $46ac: $b7
	ld [hl], a                                       ; $46ad: $77
	cpl                                              ; $46ae: $2f
	inc l                                            ; $46af: $2c
	ld a, c                                          ; $46b0: $79
	ld e, d                                          ; $46b1: $5a
	call c, $51b7                                    ; $46b2: $dc $b7 $51
	or c                                             ; $46b5: $b1
	or b                                             ; $46b6: $b0
	jp Jump_05b_63e4                                 ; $46b7: $c3 $e4 $63


	di                                               ; $46ba: $f3
	adc b                                            ; $46bb: $88
	rst $38                                          ; $46bc: $ff
	xor $ef                                          ; $46bd: $ee $ef
	ld a, a                                          ; $46bf: $7f
	ccf                                              ; $46c0: $3f
	ccf                                              ; $46c1: $3f
	ld a, h                                          ; $46c2: $7c
	sub h                                            ; $46c3: $94
	rst $38                                          ; $46c4: $ff
	or [hl]                                          ; $46c5: $b6
	push af                                          ; $46c6: $f5
	ld h, a                                          ; $46c7: $67
	add a                                            ; $46c8: $87
	rst GetHLinHL                                          ; $46c9: $cf
	ld l, a                                          ; $46ca: $6f
	rst AddAOntoHL                                          ; $46cb: $ef

jr_05b_46cc:
	rst GetHLinHL                                          ; $46cc: $cf
	rst $38                                          ; $46cd: $ff
	ld l, [hl]                                       ; $46ce: $6e
	ld a, e                                          ; $46cf: $7b
	ld l, [hl]                                       ; $46d0: $6e
	ld a, h                                          ; $46d1: $7c
	db $db                                           ; $46d2: $db
	ld a, l                                          ; $46d3: $7d
	or [hl]                                          ; $46d4: $b6
	ld a, e                                          ; $46d5: $7b

jr_05b_46d6:
	ld [hl], a                                       ; $46d6: $77
	sbc d                                            ; $46d7: $9a
	rst SubAFromDE                                          ; $46d8: $df
	ei                                               ; $46d9: $fb
	ld a, a                                          ; $46da: $7f
	ld sp, hl                                        ; $46db: $f9
	nop                                              ; $46dc: $00
	ld a, c                                          ; $46dd: $79
	xor h                                            ; $46de: $ac
	sbc d                                            ; $46df: $9a
	rst FarCall                                          ; $46e0: $f7
	rst $38                                          ; $46e1: $ff
	db $d3                                           ; $46e2: $d3
	di                                               ; $46e3: $f3
	rst FarCall                                          ; $46e4: $f7
	ld h, [hl]                                       ; $46e5: $66
	rst FarCall                                          ; $46e6: $f7
	rst SubAFromDE                                          ; $46e7: $df
	rst $38                                          ; $46e8: $ff
	ld a, l                                          ; $46e9: $7d
	ei                                               ; $46ea: $fb
	sbc e                                            ; $46eb: $9b
	ld a, [$eaff]                                    ; $46ec: $fa $ff $ea
	ldh a, [$db]                                     ; $46ef: $f0 $db
	ldh [$7b], a                                     ; $46f1: $e0 $7b
	ld sp, hl                                        ; $46f3: $f9
	sbc $c0                                          ; $46f4: $de $c0
	adc [hl]                                         ; $46f6: $8e
	and b                                            ; $46f7: $a0
	ldh [$a0], a                                     ; $46f8: $e0 $a0
	ldh a, [$7c]                                     ; $46fa: $f0 $7c
	ld l, $13                                        ; $46fc: $2e $13
	add hl, bc                                       ; $46fe: $09
	inc b                                            ; $46ff: $04
	ld [bc], a                                       ; $4700: $02
	ldh [c], a                                       ; $4701: $e2
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	db $10                                           ; $4704: $10
	inc c                                            ; $4705: $0c
	ld b, $03                                        ; $4706: $06 $03
	ld a, c                                          ; $4708: $79
	ccf                                              ; $4709: $3f
	ld [hl], b                                       ; $470a: $70
	adc e                                            ; $470b: $8b
	sbc l                                            ; $470c: $9d
	ld e, $0f                                        ; $470d: $1e $0f
	ld [hl], e                                       ; $470f: $73
	ld hl, sp-$02                                    ; $4710: $f8 $fe
	sbc e                                            ; $4712: $9b
	xor a                                            ; $4713: $af
	cp $3b                                           ; $4714: $fe $3b
	dec c                                            ; $4716: $0d
	ld [hl], a                                       ; $4717: $77
	add sp, -$21                                     ; $4718: $e8 $df
	rst $38                                          ; $471a: $ff
	sbc l                                            ; $471b: $9d
	ccf                                              ; $471c: $3f
	rrca                                             ; $471d: $0f
	ld a, c                                          ; $471e: $79
	jr jr_05b_479a                                   ; $471f: $18 $79

	ld a, a                                          ; $4721: $7f
	sub c                                            ; $4722: $91
	jr c, jr_05b_4743                                ; $4723: $38 $1e

	adc l                                            ; $4725: $8d
	add a                                            ; $4726: $87
	add e                                            ; $4727: $83
	pop bc                                           ; $4728: $c1
	add b                                            ; $4729: $80
	ld h, b                                          ; $472a: $60
	ret c                                            ; $472b: $d8

	and $f3                                          ; $472c: $e6 $f3
	ld hl, sp-$04                                    ; $472e: $f8 $fc
	cp $fd                                           ; $4730: $fe $fd
	ld a, h                                          ; $4732: $7c
	ld [hl+], a                                      ; $4733: $22
	sbc l                                            ; $4734: $9d
	db $ec                                           ; $4735: $ec
	rst $38                                          ; $4736: $ff
	ld [hl], e                                       ; $4737: $73
	ld hl, sp-$63                                    ; $4738: $f8 $9d
	ldh a, [rAUD3LEVEL]                              ; $473a: $f0 $1c
	ld h, a                                          ; $473c: $67
	ret                                              ; $473d: $c9


	ld hl, sp-$21                                    ; $473e: $f8 $df
	scf                                              ; $4740: $37
	sbc h                                            ; $4741: $9c
	daa                                              ; $4742: $27

jr_05b_4743:
	cpl                                              ; $4743: $2f
	cpl                                              ; $4744: $2f
	sbc $4f                                          ; $4745: $de $4f
	call c, $de38                                    ; $4747: $dc $38 $de
	ld a, b                                          ; $474a: $78
	add d                                            ; $474b: $82
	ld c, $8e                                        ; $474c: $0e $8e
	sbc [hl]                                         ; $474e: $9e
	sbc $fe                                          ; $474f: $de $fe
	cp $fb                                           ; $4751: $fe $fb
	db $e4                                           ; $4753: $e4
	pop af                                           ; $4754: $f1
	ld [hl], c                                       ; $4755: $71
	ld h, c                                          ; $4756: $61
	ld hl, $0101                                     ; $4757: $21 $01 $01
	rlca                                             ; $475a: $07
	rra                                              ; $475b: $1f
	ld e, c                                          ; $475c: $59
	ld d, c                                          ; $475d: $51
	dec l                                            ; $475e: $2d
	ld a, $7e                                        ; $475f: $3e $7e
	xor [hl]                                         ; $4761: $ae
	ld d, $13                                        ; $4762: $16 $13
	and $ee                                          ; $4764: $e6 $ee
	ldh a, [c]                                       ; $4766: $f2
	pop hl                                           ; $4767: $e1
	pop hl                                           ; $4768: $e1
	ld a, c                                          ; $4769: $79
	sbc b                                            ; $476a: $98
	ld a, l                                          ; $476b: $7d
	or h                                             ; $476c: $b4
	sbc c                                            ; $476d: $99
	rst $38                                          ; $476e: $ff
	ld a, [hl]                                       ; $476f: $7e
	sbc a                                            ; $4770: $9f
	rst AddAOntoHL                                          ; $4771: $ef
	ld [hl], e                                       ; $4772: $73
	ld a, h                                          ; $4773: $7c
	ld a, e                                          ; $4774: $7b
	adc l                                            ; $4775: $8d
	add b                                            ; $4776: $80
	add c                                            ; $4777: $81
	ld h, b                                          ; $4778: $60
	db $10                                           ; $4779: $10
	adc h                                            ; $477a: $8c
	add e                                            ; $477b: $83
	ld a, c                                          ; $477c: $79
	ld a, l                                          ; $477d: $7d
	dec a                                            ; $477e: $3d
	cp a                                             ; $477f: $bf
	cp a                                             ; $4780: $bf
	sbc a                                            ; $4781: $9f
	ld e, a                                          ; $4782: $5f
	ld e, [hl]                                       ; $4783: $5e
	add [hl]                                         ; $4784: $86
	add d                                            ; $4785: $82
	jp nz, $c0c0                                     ; $4786: $c2 $c0 $c0

	ldh [$e0], a                                     ; $4789: $e0 $e0
	pop hl                                           ; $478b: $e1
	cp h                                             ; $478c: $bc
	cp c                                             ; $478d: $b9
	or c                                             ; $478e: $b1
	and d                                            ; $478f: $a2
	ld h, h                                          ; $4790: $64
	ld b, h                                          ; $4791: $44
	ld c, b                                          ; $4792: $48
	ret z                                            ; $4793: $c8

	ld b, e                                          ; $4794: $43
	ld b, a                                          ; $4795: $47
	sbc c                                            ; $4796: $99
	ld c, a                                          ; $4797: $4f
	ld e, [hl]                                       ; $4798: $5e
	sbc h                                            ; $4799: $9c

jr_05b_479a:
	cp h                                             ; $479a: $bc
	cp b                                             ; $479b: $b8
	jr c, jr_05b_480c                                ; $479c: $38 $6e

	ccf                                              ; $479e: $3f
	ld a, e                                          ; $479f: $7b
	add h                                            ; $47a0: $84
	ld h, c                                          ; $47a1: $61
	nop                                              ; $47a2: $00
	rst SubAFromDE                                          ; $47a3: $df
	ld bc, $887e                                     ; $47a4: $01 $7e $88
	rst SubAFromDE                                          ; $47a7: $df
	ld [bc], a                                       ; $47a8: $02
	ld [hl], a                                       ; $47a9: $77
	ld hl, sp-$21                                    ; $47aa: $f8 $df
	inc bc                                           ; $47ac: $03
	rst SubAFromDE                                          ; $47ad: $df
	ld [bc], a                                       ; $47ae: $02
	sbc e                                            ; $47af: $9b
	rst SubAFromDE                                          ; $47b0: $df
	dec sp                                           ; $47b1: $3b
	ld a, e                                          ; $47b2: $7b
	ld a, e                                          ; $47b3: $7b
	sbc $f6                                          ; $47b4: $de $f6
	sbc l                                            ; $47b6: $9d
	db $ed                                           ; $47b7: $ed
	or h                                             ; $47b8: $b4
	sbc $e9                                          ; $47b9: $de $e9
	sub l                                            ; $47bb: $95
	db $d3                                           ; $47bc: $d3
	ld d, e                                          ; $47bd: $53
	ld d, e                                          ; $47be: $53
	and [hl]                                         ; $47bf: $a6
	xor b                                            ; $47c0: $a8
	ld a, $7f                                        ; $47c1: $3e $7f
	ld a, a                                          ; $47c3: $7f
	rst AddAOntoHL                                          ; $47c4: $ef
	rst AddAOntoHL                                          ; $47c5: $ef
	ld a, d                                          ; $47c6: $7a
	ld l, d                                          ; $47c7: $6a
	sub b                                            ; $47c8: $90
	rst SubAFromDE                                          ; $47c9: $df
	sbc a                                            ; $47ca: $9f
	sub e                                            ; $47cb: $93
	inc sp                                           ; $47cc: $33
	inc sp                                           ; $47cd: $33
	inc hl                                           ; $47ce: $23
	ld h, e                                          ; $47cf: $63
	dec e                                            ; $47d0: $1d
	rra                                              ; $47d1: $1f
	rla                                              ; $47d2: $17
	sbc a                                            ; $47d3: $9f
	cp a                                             ; $47d4: $bf
	ccf                                              ; $47d5: $3f
	ccf                                              ; $47d6: $3f
	ld a, a                                          ; $47d7: $7f
	ld a, c                                          ; $47d8: $79
	cp c                                             ; $47d9: $b9
	ld a, l                                          ; $47da: $7d
	ld a, [hl-]                                      ; $47db: $3a
	ld a, a                                          ; $47dc: $7f
	cp $9d                                           ; $47dd: $fe $9d
	cp $f1                                           ; $47df: $fe $f1
	sbc $f0                                          ; $47e1: $de $f0
	sbc $e0                                          ; $47e3: $de $e0
	add [hl]                                         ; $47e5: $86
	ret nz                                           ; $47e6: $c0

	ld d, c                                          ; $47e7: $51
	pop af                                           ; $47e8: $f1
	ld [hl], b                                       ; $47e9: $70
	ldh [$60], a                                     ; $47ea: $e0 $60
	ldh [rLCDC], a                                   ; $47ec: $e0 $40
	ret nz                                           ; $47ee: $c0

	rst $38                                          ; $47ef: $ff
	rst $38                                          ; $47f0: $ff
	ld a, a                                          ; $47f1: $7f
	ccf                                              ; $47f2: $3f
	rra                                              ; $47f3: $1f
	rrca                                             ; $47f4: $0f
	rlca                                             ; $47f5: $07
	rlca                                             ; $47f6: $07
	rst $38                                          ; $47f7: $ff
	ld [$6aff], a                                    ; $47f8: $ea $ff $6a
	ccf                                              ; $47fb: $3f
	ld a, [de]                                       ; $47fc: $1a
	rrca                                             ; $47fd: $0f
	ld b, $dd                                        ; $47fe: $06 $dd
	ldh a, [$dd]                                     ; $4800: $f0 $dd
	ld hl, sp-$71                                    ; $4802: $f8 $8f
	ldh [$b0], a                                     ; $4804: $e0 $b0
	ldh a, [$b0]                                     ; $4806: $f0 $b0
	ret nc                                           ; $4808: $d0

	or b                                             ; $4809: $b0
	ret c                                            ; $480a: $d8

	xor b                                            ; $480b: $a8

jr_05b_480c:
	ld a, c                                          ; $480c: $79
	dec a                                            ; $480d: $3d
	ld e, $1b                                        ; $480e: $1e $1b
	adc l                                            ; $4810: $8d
	ld h, h                                          ; $4811: $64
	ld [hl], d                                       ; $4812: $72
	ld a, [hl+]                                      ; $4813: $2a
	cp $7e                                           ; $4814: $fe $7e
	cp d                                             ; $4816: $ba
	ld a, a                                          ; $4817: $7f
	ld c, e                                          ; $4818: $4b
	sbc l                                            ; $4819: $9d
	ld de, $7b07                                     ; $481a: $11 $07 $7b
	ld b, a                                          ; $481d: $47
	ld a, d                                          ; $481e: $7a
	db $db                                           ; $481f: $db
	sbc h                                            ; $4820: $9c
	ldh a, [rP1]                                     ; $4821: $f0 $00
	ld [bc], a                                       ; $4823: $02
	ld [hl], h                                       ; $4824: $74
	or c                                             ; $4825: $b1
	ld a, e                                          ; $4826: $7b
	ld l, b                                          ; $4827: $68
	ld a, a                                          ; $4828: $7f
	ld c, e                                          ; $4829: $4b
	sbc [hl]                                         ; $482a: $9e
	ld sp, hl                                        ; $482b: $f9
	ld a, e                                          ; $482c: $7b
	cp h                                             ; $482d: $bc
	sbc [hl]                                         ; $482e: $9e
	ld a, a                                          ; $482f: $7f
	ld [hl], a                                       ; $4830: $77
	push af                                          ; $4831: $f5
	sbc [hl]                                         ; $4832: $9e
	add b                                            ; $4833: $80
	sbc $40                                          ; $4834: $de $40
	ld a, a                                          ; $4836: $7f
	pop af                                           ; $4837: $f1
	ld a, a                                          ; $4838: $7f
	pop bc                                           ; $4839: $c1
	rst SubAFromDE                                          ; $483a: $df
	db $fc                                           ; $483b: $fc
	rst SubAFromDE                                          ; $483c: $df
	cp $6f                                           ; $483d: $fe $6f
	xor d                                            ; $483f: $aa
	rst SubAFromDE                                          ; $4840: $df
	inc bc                                           ; $4841: $03
	ld [hl], a                                       ; $4842: $77

jr_05b_4843:
	and c                                            ; $4843: $a1

Jump_05b_4844:
	ld a, a                                          ; $4844: $7f
	ei                                               ; $4845: $fb
	ld a, c                                          ; $4846: $79
	jp nc, $d77b                                     ; $4847: $d2 $7b $d7

	ld a, l                                          ; $484a: $7d
	inc e                                            ; $484b: $1c
	rst SubAFromDE                                          ; $484c: $df
	ld a, a                                          ; $484d: $7f
	ld a, a                                          ; $484e: $7f
	push bc                                          ; $484f: $c5
	adc a                                            ; $4850: $8f
	pop af                                           ; $4851: $f1
	ld a, [$fffe]                                    ; $4852: $fa $fe $ff
	rlca                                             ; $4855: $07
	nop                                              ; $4856: $00
	add b                                            ; $4857: $80

jr_05b_4858:
	ld h, b                                          ; $4858: $60
	ld de, $070b                                     ; $4859: $11 $0b $07
	inc bc                                           ; $485c: $03
	ld hl, sp-$01                                    ; $485d: $f8 $ff
	add sp, -$01                                     ; $485f: $e8 $ff
	db $dd                                           ; $4861: $dd
	ld l, a                                          ; $4862: $6f
	sbc e                                            ; $4863: $9b
	cp a                                             ; $4864: $bf
	rst $38                                          ; $4865: $ff
	rst SubAFromDE                                          ; $4866: $df
	ld hl, sp-$22                                    ; $4867: $f8 $de
	ret c                                            ; $4869: $d8

	ld a, a                                          ; $486a: $7f
	pop af                                           ; $486b: $f1
	sbc l                                            ; $486c: $9d
	ccf                                              ; $486d: $3f
	ld e, $de                                        ; $486e: $1e $de
	cp $9a                                           ; $4870: $fe $9a
	db $fc                                           ; $4872: $fc
	ldh a, [$80]                                     ; $4873: $f0 $80
	rst $38                                          ; $4875: $ff
	pop hl                                           ; $4876: $e1
	ld [hl], a                                       ; $4877: $77
	jr nz, @+$7c                                     ; $4878: $20 $7a

	dec hl                                           ; $487a: $2b
	rst SubAFromDE                                          ; $487b: $df
	db $10                                           ; $487c: $10
	sbc c                                            ; $487d: $99
	ld [$3f1f], sp                                   ; $487e: $08 $1f $3f
	ld a, h                                          ; $4881: $7c
	ld hl, sp-$10                                    ; $4882: $f8 $f0
	db $dd                                           ; $4884: $dd
	rst $38                                          ; $4885: $ff
	ld a, a                                          ; $4886: $7f
	ld a, [$d078]                                    ; $4887: $fa $78 $d0
	rst SubAFromDE                                          ; $488a: $df
	ld a, a                                          ; $488b: $7f
	sbc e                                            ; $488c: $9b
	rst $38                                          ; $488d: $ff
	rst AddAOntoHL                                          ; $488e: $ef
	dec e                                            ; $488f: $1d
	inc bc                                           ; $4890: $03
	ld a, e                                          ; $4891: $7b
	or c                                             ; $4892: $b1
	rst SubAFromDE                                          ; $4893: $df
	ret nz                                           ; $4894: $c0

	adc c                                            ; $4895: $89
	ldh a, [rAUD3HIGH]                               ; $4896: $f0 $1e
	inc bc                                           ; $4898: $03
	nop                                              ; $4899: $00
	sbc $fe                                          ; $489a: $de $fe
	and l                                            ; $489c: $a5
	jp hl                                            ; $489d: $e9


	db $ec                                           ; $489e: $ec
	push de                                          ; $489f: $d5
	ld [hl], l                                       ; $48a0: $75
	or l                                             ; $48a1: $b5
	pop hl                                           ; $48a2: $e1
	ld [hl], c                                       ; $48a3: $71
	ld a, d                                          ; $48a4: $7a
	ld [hl], $33                                     ; $48a5: $36 $33
	ld a, [hl-]                                      ; $48a7: $3a
	sbc d                                            ; $48a8: $9a
	jp c, $d0d0                                      ; $48a9: $da $d0 $d0

jr_05b_48ac:
	ld a, e                                          ; $48ac: $7b
	jr nz, jr_05b_4843                               ; $48ad: $20 $94

	ld h, b                                          ; $48af: $60
	and b                                            ; $48b0: $a0
	ldh [$30], a                                     ; $48b1: $e0 $30
	jr nc, jr_05b_48c5                               ; $48b3: $30 $10

	db $10                                           ; $48b5: $10
	jr nz, jr_05b_4858                               ; $48b6: $20 $a0

	ld h, b                                          ; $48b8: $60
	jr nz, jr_05b_48ac                               ; $48b9: $20 $f1

	sbc $05                                          ; $48bb: $de $05
	sbc $0b                                          ; $48bd: $de $0b
	rst SubAFromDE                                          ; $48bf: $df
	rla                                              ; $48c0: $17
	rst SubAFromDE                                          ; $48c1: $df
	inc b                                            ; $48c2: $04
	sub a                                            ; $48c3: $97
	dec b                                            ; $48c4: $05

jr_05b_48c5:
	add hl, bc                                       ; $48c5: $09
	add hl, bc                                       ; $48c6: $09
	ld a, [bc]                                       ; $48c7: $0a
	ld [de], a                                       ; $48c8: $12
	ld [de], a                                       ; $48c9: $12
	db $ed                                           ; $48ca: $ed
	db $ed                                           ; $48cb: $ed
	sbc $db                                          ; $48cc: $de $db
	rst SubAFromDE                                          ; $48ce: $df
	or a                                             ; $48cf: $b7
	sbc h                                            ; $48d0: $9c
	rst FarCall                                          ; $48d1: $f7
	and [hl]                                         ; $48d2: $a6
	and [hl]                                         ; $48d3: $a6
	sbc $4c                                          ; $48d4: $de $4c
	sbc $99                                          ; $48d6: $de $99
	adc a                                            ; $48d8: $8f
	rst SubAFromDE                                          ; $48d9: $df
	db $fc                                           ; $48da: $fc
	cp l                                             ; $48db: $bd
	cp a                                             ; $48dc: $bf
	ld sp, hl                                        ; $48dd: $f9
	ld a, d                                          ; $48de: $7a
	ld a, a                                          ; $48df: $7f
	rst FarCall                                          ; $48e0: $f7
	ld h, e                                          ; $48e1: $63
	ld b, a                                          ; $48e2: $47
	add $c6                                          ; $48e3: $c6 $c6
	adc a                                            ; $48e5: $8f
	adc l                                            ; $48e6: $8d
	adc [hl]                                         ; $48e7: $8e
	add hl, de                                       ; $48e8: $19
	ld a, e                                          ; $48e9: $7b
	inc h                                            ; $48ea: $24
	ld a, a                                          ; $48eb: $7f
	ld h, e                                          ; $48ec: $63
	ld a, h                                          ; $48ed: $7c
	ld d, b                                          ; $48ee: $50
	ld a, [hl]                                       ; $48ef: $7e
	add $96                                          ; $48f0: $c6 $96
	ld a, [$7ad5]                                    ; $48f2: $fa $d5 $7a
	dec b                                            ; $48f5: $05
	rst JumpTable                                          ; $48f6: $c7
	ld a, l                                          ; $48f7: $7d
	add a                                            ; $48f8: $87
	ret nz                                           ; $48f9: $c0

	ret nz                                           ; $48fa: $c0

	db $dd                                           ; $48fb: $dd
	add b                                            ; $48fc: $80
	rst $38                                          ; $48fd: $ff
	ld h, a                                          ; $48fe: $67
	ld hl, sp+$7d                                    ; $48ff: $f8 $7d
	sub $91                                          ; $4901: $d6 $91
	and c                                            ; $4903: $a1
	ld d, b                                          ; $4904: $50
	ld c, b                                          ; $4905: $48
	ld b, b                                          ; $4906: $40
	inc b                                            ; $4907: $04
	ld b, d                                          ; $4908: $42
	rlca                                             ; $4909: $07
	inc bc                                           ; $490a: $03
	ld b, c                                          ; $490b: $41
	ld hl, $3830                                     ; $490c: $21 $30 $38
	jr c, jr_05b_494d                                ; $490f: $38 $3c

	sbc $fc                                          ; $4911: $de $fc
	rst SubAFromDE                                          ; $4913: $df
	cp $df                                           ; $4914: $fe $df
	ld a, [hl]                                       ; $4916: $7e
	add [hl]                                         ; $4917: $86
	ld a, a                                          ; $4918: $7f
	ret c                                            ; $4919: $d8

	xor h                                            ; $491a: $ac
	call nc, $d6ac                                   ; $491b: $d4 $ac $d6
	ld [$6b56], a                                    ; $491e: $ea $56 $6b
	dec h                                            ; $4921: $25
	inc de                                           ; $4922: $13
	inc de                                           ; $4923: $13
	ld de, $0809                                     ; $4924: $11 $09 $08
	ld [$1810], sp                                   ; $4927: $08 $10 $18
	inc c                                            ; $492a: $0c
	inc c                                            ; $492b: $0c
	ld c, $06                                        ; $492c: $0e $06
	rlca                                             ; $492e: $07
	rlca                                             ; $492f: $07
	rrca                                             ; $4930: $0f
	ld d, [hl]                                       ; $4931: $56
	nop                                              ; $4932: $00
	sbc $44                                          ; $4933: $de $44
	sbc e                                            ; $4935: $9b
	ld d, l                                          ; $4936: $55
	ld d, [hl]                                       ; $4937: $56
	ld h, a                                          ; $4938: $67
	ld d, l                                          ; $4939: $55
	sbc $22                                          ; $493a: $de $22
	rst SubAFromDE                                          ; $493c: $df
	ld b, h                                          ; $493d: $44
	sbc [hl]                                         ; $493e: $9e
	ld b, l                                          ; $493f: $45
	ld a, e                                          ; $4940: $7b
	or $9e                                           ; $4941: $f6 $9e
	ld d, d                                          ; $4943: $52
	ld h, a                                          ; $4944: $67
	or $9e                                           ; $4945: $f6 $9e
	ld h, [hl]                                       ; $4947: $66
	ld [hl], e                                       ; $4948: $73
	or $9d                                           ; $4949: $f6 $9d
	ld b, [hl]                                       ; $494b: $46
	ld h, l                                          ; $494c: $65

jr_05b_494d:
	ld a, e                                          ; $494d: $7b
	db $ec                                           ; $494e: $ec
	sbc [hl]                                         ; $494f: $9e
	halt                                             ; $4950: $76
	ld [hl], e                                       ; $4951: $73
	or $9a                                           ; $4952: $f6 $9a
	ld h, a                                          ; $4954: $67
	ld [hl], l                                       ; $4955: $75
	ld d, [hl]                                       ; $4956: $56
	ld h, a                                          ; $4957: $67
	ld [hl], a                                       ; $4958: $77
	ld [hl], e                                       ; $4959: $73
	ldh [c], a                                       ; $495a: $e2
	sbc e                                            ; $495b: $9b
	ld h, [hl]                                       ; $495c: $66
	ld [hl], l                                       ; $495d: $75
	ld d, [hl]                                       ; $495e: $56
	ld h, [hl]                                       ; $495f: $66
	db $dd                                           ; $4960: $dd
	ld [hl+], a                                      ; $4961: $22
	rst SubAFromDE                                          ; $4962: $df
	ld b, h                                          ; $4963: $44
	sbc h                                            ; $4964: $9c
	ld b, [hl]                                       ; $4965: $46
	inc sp                                           ; $4966: $33
	ld [hl], $6b                                     ; $4967: $36 $6b
	or $9c                                           ; $4969: $f6 $9c
	ld [hl], e                                       ; $496b: $73
	inc sp                                           ; $496c: $33
	ld h, [hl]                                       ; $496d: $66
	ld h, a                                          ; $496e: $67
	db $ec                                           ; $496f: $ec
	sbc $66                                          ; $4970: $de $66
	sbc $22                                          ; $4972: $de $22
	sbc h                                            ; $4974: $9c
	inc h                                            ; $4975: $24
	ld d, a                                          ; $4976: $57
	ld h, [hl]                                       ; $4977: $66
	ld a, e                                          ; $4978: $7b
	or $9e                                           ; $4979: $f6 $9e
	ld h, h                                          ; $497b: $64
	ld [hl], e                                       ; $497c: $73
	or $9c                                           ; $497d: $f6 $9c
	halt                                             ; $497f: $76
	ld h, [hl]                                       ; $4980: $66
	ld h, a                                          ; $4981: $67
	ld [hl], a                                       ; $4982: $77
	or $9d                                           ; $4983: $f6 $9d
	ld b, h                                          ; $4985: $44
	inc h                                            ; $4986: $24
	ld c, e                                          ; $4987: $4b
	adc e                                            ; $4988: $8b
	sbc e                                            ; $4989: $9b
	nop                                              ; $498a: $00
	ret nz                                           ; $498b: $c0

	jr c, jr_05b_4995                                ; $498c: $38 $07

	db $fd                                           ; $498e: $fd
	ld a, e                                          ; $498f: $7b
	ld sp, hl                                        ; $4990: $f9
	sbc l                                            ; $4991: $9d
	ret nz                                           ; $4992: $c0

	ld hl, sp-$22                                    ; $4993: $f8 $de

jr_05b_4995:
	rst $38                                          ; $4995: $ff
	db $fd                                           ; $4996: $fd
	sbc d                                            ; $4997: $9a
	ldh [rAUD3LEVEL], a                              ; $4998: $e0 $1c
	inc bc                                           ; $499a: $03
	nop                                              ; $499b: $00
	ld bc, $f973                                     ; $499c: $01 $73 $f9
	sbc e                                            ; $499f: $9b
	ldh [$fc], a                                     ; $49a0: $e0 $fc
	ld e, $03                                        ; $49a2: $1e $03
	db $fd                                           ; $49a4: $fd
	sbc l                                            ; $49a5: $9d
	add b                                            ; $49a6: $80
	ld [hl], b                                       ; $49a7: $70
	ld [hl], a                                       ; $49a8: $77
	db $ec                                           ; $49a9: $ec
	ld a, e                                          ; $49aa: $7b
	ld sp, hl                                        ; $49ab: $f9
	sbc [hl]                                         ; $49ac: $9e
	ld c, $fe                                        ; $49ad: $0e $fe
	sbc d                                            ; $49af: $9a
	jr @+$09                                         ; $49b0: $18 $07

	rlca                                             ; $49b2: $07
	ld c, $19                                        ; $49b3: $0e $19

jr_05b_49b5:
	ld a, e                                          ; $49b5: $7b
	adc $80                                          ; $49b6: $ce $80
	jr nz, @+$03                                     ; $49b8: $20 $01

	ld b, $09                                        ; $49ba: $06 $09
	rla                                              ; $49bc: $17
	rrca                                             ; $49bd: $0f
	rrca                                             ; $49be: $0f
	inc e                                            ; $49bf: $1c
	jr jr_05b_49b5                                   ; $49c0: $18 $f3

	sub a                                            ; $49c2: $97
	ld e, $f8                                        ; $49c3: $1e $f8
	ld a, [bc]                                       ; $49c5: $0a
	inc c                                            ; $49c6: $0c
	dec de                                           ; $49c7: $1b
	rla                                              ; $49c8: $17
	rst $38                                          ; $49c9: $ff
	ld a, h                                          ; $49ca: $7c
	ld sp, hl                                        ; $49cb: $f9
	rst FarCall                                          ; $49cc: $f7
	rst JumpTable                                          ; $49cd: $c7
	ld [bc], a                                       ; $49ce: $02
	rra                                              ; $49cf: $1f
	cp $be                                           ; $49d0: $fe $be
	jr c, jr_05b_4a49                                ; $49d2: $38 $75

	halt                                             ; $49d4: $76
	ccf                                              ; $49d5: $3f
	rst $38                                          ; $49d6: $ff
	sub c                                            ; $49d7: $91
	rst $38                                          ; $49d8: $ff
	di                                               ; $49d9: $f3
	ld h, c                                          ; $49da: $61
	rst SubAFromBC                                          ; $49db: $e7
	set 1, c                                         ; $49dc: $cb $c9
	nop                                              ; $49de: $00
	ld h, b                                          ; $49df: $60
	sbc b                                            ; $49e0: $98
	inc [hl]                                         ; $49e1: $34
	ld a, [hl]                                       ; $49e2: $7e
	reti                                             ; $49e3: $d9


	db $e4                                           ; $49e4: $e4
	ld a, [$ffde]                                    ; $49e5: $fa $de $ff
	add b                                            ; $49e8: $80
	rst GetHLinHL                                          ; $49e9: $cf
	add e                                            ; $49ea: $83
	pop hl                                           ; $49eb: $e1
	jr c, jr_05b_4a0a                                ; $49ec: $38 $1c

	and c                                            ; $49ee: $a1
	ld d, b                                          ; $49ef: $50
	ld l, b                                          ; $49f0: $68
	jr c, jr_05b_4a0f                                ; $49f1: $38 $1c

	ld c, $8d                                        ; $49f3: $0e $8d
	ld b, h                                          ; $49f5: $44
	ld a, [hl]                                       ; $49f6: $7e
	cp a                                             ; $49f7: $bf
	sbc a                                            ; $49f8: $9f
	rst GetHLinHL                                          ; $49f9: $cf
	rst SubAFromBC                                          ; $49fa: $e7
	di                                               ; $49fb: $f3
	pop af                                           ; $49fc: $f1
	ld a, b                                          ; $49fd: $78
	sub h                                            ; $49fe: $94
	jp z, Jump_05b_77ed                              ; $49ff: $ca $ed $77

	ld [hl], a                                       ; $4a02: $77
	ld [hl-], a                                      ; $4a03: $32
	ld a, [hl-]                                      ; $4a04: $3a
	sub l                                            ; $4a05: $95
	rst AddAOntoHL                                          ; $4a06: $ef
	ld [hl], a                                       ; $4a07: $77
	add b                                            ; $4a08: $80
	inc sp                                           ; $4a09: $33

jr_05b_4a0a:
	sbc c                                            ; $4a0a: $99
	adc b                                            ; $4a0b: $88
	call z, $e2c4                                    ; $4a0c: $cc $c4 $e2

jr_05b_4a0f:
	inc b                                            ; $4a0f: $04
	add hl, de                                       ; $4a10: $19
	inc hl                                           ; $4a11: $23
	ld a, h                                          ; $4a12: $7c
	adc e                                            ; $4a13: $8b
	cp $59                                           ; $4a14: $fe $59
	daa                                              ; $4a16: $27
	ld hl, sp-$20                                    ; $4a17: $f8 $e0
	ret nz                                           ; $4a19: $c0

	add e                                            ; $4a1a: $83
	db $fc                                           ; $4a1b: $fc
	pop af                                           ; $4a1c: $f1
	ld h, a                                          ; $4a1d: $67
	ccf                                              ; $4a1e: $3f
	rst $38                                          ; $4a1f: $ff
	sub d                                            ; $4a20: $92
	ld d, c                                          ; $4a21: $51
	sbc d                                            ; $4a22: $9a
	dec hl                                           ; $4a23: $2b
	ld e, l                                          ; $4a24: $5d
	xor l                                            ; $4a25: $ad
	ld c, [hl]                                       ; $4a26: $4e
	ccf                                              ; $4a27: $3f
	add b                                            ; $4a28: $80
	ld a, a                                          ; $4a29: $7f
	cp a                                             ; $4a2a: $bf
	ld a, l                                          ; $4a2b: $7d
	db $fc                                           ; $4a2c: $fc
	cp $fe                                           ; $4a2d: $fe $fe
	rst $38                                          ; $4a2f: $ff
	rst SubAFromBC                                          ; $4a30: $e7
	dec sp                                           ; $4a31: $3b
	ld e, $99                                        ; $4a32: $1e $99
	adc h                                            ; $4a34: $8c
	ld c, d                                          ; $4a35: $4a
	and d                                            ; $4a36: $a2
	push hl                                          ; $4a37: $e5
	ld sp, hl                                        ; $4a38: $f9
	db $fc                                           ; $4a39: $fc
	rst $38                                          ; $4a3a: $ff
	jp hl                                            ; $4a3b: $e9


	db $f4                                           ; $4a3c: $f4
	ldh a, [c]                                       ; $4a3d: $f2
	ld a, d                                          ; $4a3e: $7a
	add hl, sp                                       ; $4a3f: $39
	inc b                                            ; $4a40: $04
	add b                                            ; $4a41: $80
	call nz, Call_05b_74a2                           ; $4a42: $c4 $a2 $74
	ld [bc], a                                       ; $4a45: $02
	inc b                                            ; $4a46: $04
	ld [bc], a                                       ; $4a47: $02
	ld a, a                                          ; $4a48: $7f

jr_05b_4a49:
	ld h, h                                          ; $4a49: $64
	sbc h                                            ; $4a4a: $9c
	ld b, b                                          ; $4a4b: $40
	ldh [rSVBK], a                                   ; $4a4c: $e0 $70
	cp $97                                           ; $4a4e: $fe $97
	add c                                            ; $4a50: $81
	ld b, c                                          ; $4a51: $41
	ld hl, $4d91                                     ; $4a52: $21 $91 $4d
	inc hl                                           ; $4a55: $23
	dec e                                            ; $4a56: $1d
	ld [hl], $7b                                     ; $4a57: $36 $7b
	ld d, e                                          ; $4a59: $53
	sbc d                                            ; $4a5a: $9a
	nop                                              ; $4a5b: $00
	jr nz, jr_05b_4a6e                               ; $4a5c: $20 $10

	jr nz, @+$03                                     ; $4a5e: $20 $01

	jp c, $9eff                                      ; $4a60: $da $ff $9e

	ccf                                              ; $4a63: $3f
	ld sp, hl                                        ; $4a64: $f9
	reti                                             ; $4a65: $d9


	rst $38                                          ; $4a66: $ff
	rra                                              ; $4a67: $1f
	ldh a, [$db]                                     ; $4a68: $f0 $db
	cp $f9                                           ; $4a6a: $fe $f9
	sbc h                                            ; $4a6c: $9c
	adc b                                            ; $4a6d: $88

jr_05b_4a6e:
	inc c                                            ; $4a6e: $0c
	ld [$fe73], sp                                   ; $4a6f: $08 $73 $fe
	sbc l                                            ; $4a72: $9d
	rla                                              ; $4a73: $17
	inc de                                           ; $4a74: $13
	ld l, a                                          ; $4a75: $6f
	cp $97                                           ; $4a76: $fe $97
	add b                                            ; $4a78: $80
	ret nz                                           ; $4a79: $c0

	and b                                            ; $4a7a: $a0
	sub b                                            ; $4a7b: $90
	ldh [hDisp1_SCY], a                                     ; $4a7c: $e0 $90
	ld l, b                                          ; $4a7e: $68
	or h                                             ; $4a7f: $b4
	cp $90                                           ; $4a80: $fe $90
	ld b, b                                          ; $4a82: $40
	nop                                              ; $4a83: $00
	ld b, b                                          ; $4a84: $40
	add b                                            ; $4a85: $80
	ld b, b                                          ; $4a86: $40
	ld bc, $0002                                     ; $4a87: $01 $02 $00
	cp $d4                                           ; $4a8a: $fe $d4
	xor b                                            ; $4a8c: $a8
	ld d, b                                          ; $4a8d: $50
	add b                                            ; $4a8e: $80
	cp $fc                                           ; $4a8f: $fe $fc
	db $dd                                           ; $4a91: $dd
	rst $38                                          ; $4a92: $ff
	ld a, a                                          ; $4a93: $7f
	ld a, [$ea7e]                                    ; $4a94: $fa $7e $ea
	ei                                               ; $4a97: $fb
	sub a                                            ; $4a98: $97
	ccf                                              ; $4a99: $3f
	rra                                              ; $4a9a: $1f
	rst $38                                          ; $4a9b: $ff
	ld a, [$2194]                                    ; $4a9c: $fa $94 $21
	ld b, e                                          ; $4a9f: $43
	add a                                            ; $4aa0: $87
	halt                                             ; $4aa1: $76
	rst GetHLinHL                                          ; $4aa2: $cf
	add b                                            ; $4aa3: $80
	inc de                                           ; $4aa4: $13
	daa                                              ; $4aa5: $27
	ld c, [hl]                                       ; $4aa6: $4e
	sbc l                                            ; $4aa7: $9d
	add c                                            ; $4aa8: $81
	ldh a, [$7e]                                     ; $4aa9: $f0 $7e
	rst $38                                          ; $4aab: $ff
	ldh [$c0], a                                     ; $4aac: $e0 $c0
	add b                                            ; $4aae: $80
	nop                                              ; $4aaf: $00
	ld e, $38                                        ; $4ab0: $1e $38
	ld sp, $0322                                     ; $4ab2: $31 $22 $03
	dec b                                            ; $4ab5: $05
	ld b, $06                                        ; $4ab6: $06 $06
	sub [hl]                                         ; $4ab8: $96
	jr z, @+$33                                      ; $4ab9: $28 $31

	and e                                            ; $4abb: $a3
	ldh [c], a                                       ; $4abc: $e2
	ld d, $05                                        ; $4abd: $16 $05
	dec b                                            ; $4abf: $05
	ld [hl], b                                       ; $4ac0: $70
	and c                                            ; $4ac1: $a1
	ld sp, $2d99                                     ; $4ac2: $31 $99 $2d
	inc sp                                           ; $4ac5: $33
	ld l, c                                          ; $4ac6: $69
	sub l                                            ; $4ac7: $95
	sub e                                            ; $4ac8: $93
	ld l, a                                          ; $4ac9: $6f
	jp c, $95ff                                      ; $4aca: $da $ff $95

	rst FarCall                                          ; $4acd: $f7
	ld [hl], e                                       ; $4ace: $73
	ld h, c                                          ; $4acf: $61
	ld hl, $8201                                     ; $4ad0: $21 $01 $82
	sub [hl]                                         ; $4ad3: $96
	sub [hl]                                         ; $4ad4: $96
	ret                                              ; $4ad5: $c9


	ret                                              ; $4ad6: $c9


	sbc $cb                                          ; $4ad7: $de $cb
	sbc $4a                                          ; $4ad9: $de $4a
	add b                                            ; $4adb: $80
	ld c, l                                          ; $4adc: $4d
	sub [hl]                                         ; $4add: $96
	ld c, e                                          ; $4ade: $4b
	daa                                              ; $4adf: $27
	jr c, jr_05b_4af0                                ; $4ae0: $38 $0e

	rlca                                             ; $4ae2: $07
	inc bc                                           ; $4ae3: $03
	adc [hl]                                         ; $4ae4: $8e
	rst SubAFromBC                                          ; $4ae5: $e7
	ld [hl], e                                       ; $4ae6: $73
	add hl, sp                                       ; $4ae7: $39
	rra                                              ; $4ae8: $1f
	rlca                                             ; $4ae9: $07
	ld bc, $3200                                     ; $4aea: $01 $00 $32
	ld c, h                                          ; $4aed: $4c
	rra                                              ; $4aee: $1f
	rst SubAFromBC                                          ; $4aef: $e7

jr_05b_4af0:
	ld hl, sp+$3f                                    ; $4af0: $f8 $3f
	sbc [hl]                                         ; $4af2: $9e
	rst $38                                          ; $4af3: $ff
	inc a                                            ; $4af4: $3c
	adc a                                            ; $4af5: $8f
	db $e3                                           ; $4af6: $e3
	ld hl, sp-$21                                    ; $4af7: $f8 $df
	rst SubAFromBC                                          ; $4af9: $e7
	pop af                                           ; $4afa: $f1
	add b                                            ; $4afb: $80
	ld a, c                                          ; $4afc: $79
	ld c, d                                          ; $4afd: $4a
	and l                                            ; $4afe: $a5
	ld [hl-], a                                      ; $4aff: $32
	call c, $e33f                                    ; $4b00: $dc $3f $e3
	rra                                              ; $4b03: $1f
	rst $38                                          ; $4b04: $ff
	ld [hl], c                                       ; $4b05: $71
	add hl, sp                                       ; $4b06: $39
	call c, $ffef                                    ; $4b07: $dc $ef $ff
	rst $38                                          ; $4b0a: $ff
	db $fc                                           ; $4b0b: $fc
	ldh a, [$bc]                                     ; $4b0c: $f0 $bc
	ld e, c                                          ; $4b0e: $59
	cp [hl]                                          ; $4b0f: $be
	call c, $bf6f                                    ; $4b10: $dc $6f $bf
	or $f2                                           ; $4b13: $f6 $f2
	rra                                              ; $4b15: $1f
	adc a                                            ; $4b16: $8f
	rst GetHLinHL                                          ; $4b17: $cf
	ld h, a                                          ; $4b18: $67
	or e                                             ; $4b19: $b3
	reti                                             ; $4b1a: $d9


	add b                                            ; $4b1b: $80
	ld a, a                                          ; $4b1c: $7f
	rra                                              ; $4b1d: $1f
	sbc d                                            ; $4b1e: $9a
	add hl, hl                                       ; $4b1f: $29
	ld e, c                                          ; $4b20: $59
	xor c                                            ; $4b21: $a9
	ld c, l                                          ; $4b22: $4d
	sub l                                            ; $4b23: $95
	dec d                                            ; $4b24: $15
	dec h                                            ; $4b25: $25
	rst $38                                          ; $4b26: $ff
	rst $38                                          ; $4b27: $ff
	rst AddAOntoHL                                          ; $4b28: $ef
	rst SubAFromDE                                          ; $4b29: $df
	cp a                                             ; $4b2a: $bf
	rst FarCall                                          ; $4b2b: $f7
	rst FarCall                                          ; $4b2c: $f7
	rst SubAFromBC                                          ; $4b2d: $e7
	sub c                                            ; $4b2e: $91
	dec sp                                           ; $4b2f: $3b
	rst SubAFromHL                                          ; $4b30: $d7
	sub e                                            ; $4b31: $93
	pop af                                           ; $4b32: $f1
	ld d, b                                          ; $4b33: $50
	jr nc, jr_05b_4b66                               ; $4b34: $30 $30

	dec a                                            ; $4b36: $3d
	sbc l                                            ; $4b37: $9d
	sub h                                            ; $4b38: $94
	jp nc, $94d1                                     ; $4b39: $d2 $d1 $94

	ld [hl], b                                       ; $4b3c: $70
	jr nc, jr_05b_4b6f                               ; $4b3d: $30 $30

	rla                                              ; $4b3f: $17
	ld d, h                                          ; $4b40: $54
	or h                                             ; $4b41: $b4
	ret nc                                           ; $4b42: $d0

	or c                                             ; $4b43: $b1
	ret nc                                           ; $4b44: $d0

	or d                                             ; $4b45: $b2
	ld d, e                                          ; $4b46: $53
	ld a, d                                          ; $4b47: $7a
	ret nc                                           ; $4b48: $d0

	rst SubAFromDE                                          ; $4b49: $df
	add [hl]                                         ; $4b4a: $86
	add h                                            ; $4b4b: $84
	add a                                            ; $4b4c: $87
	dec b                                            ; $4b4d: $05
	inc b                                            ; $4b4e: $04
	inc de                                           ; $4b4f: $13
	or b                                             ; $4b50: $b0
	ld d, c                                          ; $4b51: $51
	jr nc, jr_05b_4b65                               ; $4b52: $30 $11

	or b                                             ; $4b54: $b0
	ld d, b                                          ; $4b55: $50
	jr z, jr_05b_4b78                                ; $4b56: $28 $20

	ld bc, $0120                                     ; $4b58: $01 $20 $01
	and b                                            ; $4b5b: $a0
	ld b, c                                          ; $4b5c: $41
	and c                                            ; $4b5d: $a1
	pop de                                           ; $4b5e: $d1
	rra                                              ; $4b5f: $1f
	adc a                                            ; $4b60: $8f
	add a                                            ; $4b61: $87
	jp $93a3                                         ; $4b62: $c3 $a3 $93


jr_05b_4b65:
	sbc e                                            ; $4b65: $9b

jr_05b_4b66:
	sub a                                            ; $4b66: $97
	ld c, d                                          ; $4b67: $4a
	ret nc                                           ; $4b68: $d0

	sbc [hl]                                         ; $4b69: $9e
	ld d, l                                          ; $4b6a: $55
	daa                                              ; $4b6b: $27
	ldh a, [$7a]                                     ; $4b6c: $f0 $7a
	ld e, l                                          ; $4b6e: $5d

jr_05b_4b6f:
	ld a, e                                          ; $4b6f: $7b
	cp $9d                                           ; $4b70: $fe $9d
	db $fd                                           ; $4b72: $fd
	ld d, [hl]                                       ; $4b73: $56
	ei                                               ; $4b74: $fb
	ld a, [hl]                                       ; $4b75: $7e
	db $e3                                           ; $4b76: $e3
	sbc l                                            ; $4b77: $9d

jr_05b_4b78:
	ld [$778c], sp                                   ; $4b78: $08 $8c $77
	cp $9d                                           ; $4b7b: $fe $9d
	dec bc                                           ; $4b7d: $0b
	and a                                            ; $4b7e: $a7
	ld l, [hl]                                       ; $4b7f: $6e
	jp nz, $1490                                     ; $4b80: $c2 $90 $14

	jr jr_05b_4bdf                                   ; $4b83: $18 $5a

	xor [hl]                                         ; $4b85: $ae
	ld b, b                                          ; $4b86: $40
	nop                                              ; $4b87: $00
	inc e                                            ; $4b88: $1c
	ret nz                                           ; $4b89: $c0

	add b                                            ; $4b8a: $80
	add b                                            ; $4b8b: $80
	and b                                            ; $4b8c: $a0
	ld d, b                                          ; $4b8d: $50
	cp a                                             ; $4b8e: $bf
	rst $38                                          ; $4b8f: $ff

jr_05b_4b90:
	ldh [$f9], a                                     ; $4b90: $e0 $f9
	ld a, a                                          ; $4b92: $7f
	adc d                                            ; $4b93: $8a
	adc c                                            ; $4b94: $89
	jr c, jr_05b_4b90                                ; $4b95: $38 $f9

	ldh a, [c]                                       ; $4b97: $f2
	db $e4                                           ; $4b98: $e4
	ret nz                                           ; $4b99: $c0

	adc a                                            ; $4b9a: $8f
	jr jr_05b_4bc9                                   ; $4b9b: $18 $2c

	ld b, a                                          ; $4b9d: $47
	ld bc, $0402                                     ; $4b9e: $01 $02 $04
	add hl, bc                                       ; $4ba1: $09
	ld de, $8203                                     ; $4ba2: $11 $03 $82
	inc b                                            ; $4ba5: $04
	ld c, $1c                                        ; $4ba6: $0e $1c
	jr c, @+$12                                      ; $4ba8: $38 $10

	add b                                            ; $4baa: $80
	ld a, d                                          ; $4bab: $7a
	inc l                                            ; $4bac: $2c
	sbc b                                            ; $4bad: $98
	dec sp                                           ; $4bae: $3b
	halt                                             ; $4baf: $76
	db $ec                                           ; $4bb0: $ec
	ret c                                            ; $4bb1: $d8

	or b                                             ; $4bb2: $b0
	ld b, b                                          ; $4bb3: $40
	add b                                            ; $4bb4: $80
	ld hl, sp-$6a                                    ; $4bb5: $f8 $96
	dec bc                                           ; $4bb7: $0b
	add hl, bc                                       ; $4bb8: $09
	ld c, $0e                                        ; $4bb9: $0e $0e
	dec bc                                           ; $4bbb: $0b
	dec bc                                           ; $4bbc: $0b
	ld c, $09                                        ; $4bbd: $0e $09
	add hl, bc                                       ; $4bbf: $09
	sbc $0b                                          ; $4bc0: $de $0b
	rst SubAFromDE                                          ; $4bc2: $df
	ld c, $96                                        ; $4bc3: $0e $96
	rrca                                             ; $4bc5: $0f
	add hl, bc                                       ; $4bc6: $09
	add hl, hl                                       ; $4bc7: $29
	dec h                                            ; $4bc8: $25

jr_05b_4bc9:
	ld h, a                                          ; $4bc9: $67
	add $cb                                          ; $4bca: $c6 $cb
	ld [$ddea], a                                    ; $4bcc: $ea $ea $dd
	rst $38                                          ; $4bcf: $ff
	add [hl]                                         ; $4bd0: $86
	ld a, a                                          ; $4bd1: $7f
	ld a, [hl]                                       ; $4bd2: $7e
	ld e, a                                          ; $4bd3: $5f
	ld e, a                                          ; $4bd4: $5f
	ld c, e                                          ; $4bd5: $4b
	and [hl]                                         ; $4bd6: $a6
	ld [$64e4], a                                    ; $4bd7: $ea $e4 $64
	ld l, [hl]                                       ; $4bda: $6e
	rst SubAFromDE                                          ; $4bdb: $df
	cp a                                             ; $4bdc: $bf
	rst SubAFromDE                                          ; $4bdd: $df
	ld e, d                                          ; $4bde: $5a

jr_05b_4bdf:
	ld d, [hl]                                       ; $4bdf: $56
	ld e, h                                          ; $4be0: $5c
	call c, $bbd9                                    ; $4be1: $dc $d9 $bb
	ldh a, [$f0]                                     ; $4be4: $f0 $f0
	ld c, $16                                        ; $4be6: $0e $16
	dec hl                                           ; $4be8: $2b
	or a                                             ; $4be9: $b7
	ld a, d                                          ; $4bea: $7a
	rst SubAFromBC                                          ; $4beb: $e7
	sub b                                            ; $4bec: $90
	rst $38                                          ; $4bed: $ff
	inc b                                            ; $4bee: $04
	inc c                                            ; $4bef: $0c
	inc e                                            ; $4bf0: $1c
	ld a, b                                          ; $4bf1: $78
	ldh a, [$80]                                     ; $4bf2: $f0 $80
	rrca                                             ; $4bf4: $0f
	rra                                              ; $4bf5: $1f
	ccf                                              ; $4bf6: $3f
	rlca                                             ; $4bf7: $07
	rlca                                             ; $4bf8: $07
	add a                                            ; $4bf9: $87
	add e                                            ; $4bfa: $83
	add b                                            ; $4bfb: $80
	ld a, c                                          ; $4bfc: $79
	db $e3                                           ; $4bfd: $e3
	ei                                               ; $4bfe: $fb
	add b                                            ; $4bff: $80
	add b                                            ; $4c00: $80
	rst $38                                          ; $4c01: $ff
	rst SubAFromDE                                          ; $4c02: $df
	rst $38                                          ; $4c03: $ff
	di                                               ; $4c04: $f3
	di                                               ; $4c05: $f3
	db $eb                                           ; $4c06: $eb
	dec c                                            ; $4c07: $0d
	dec de                                           ; $4c08: $1b
	nop                                              ; $4c09: $00
	inc a                                            ; $4c0a: $3c
	ld a, a                                          ; $4c0b: $7f
	di                                               ; $4c0c: $f3
	pop af                                           ; $4c0d: $f1
	cp e                                             ; $4c0e: $bb
	ccf                                              ; $4c0f: $3f
	ld de, $f3f2                                     ; $4c10: $11 $f2 $f3
	di                                               ; $4c13: $f3
	ld [hl], a                                       ; $4c14: $77
	di                                               ; $4c15: $f3
	di                                               ; $4c16: $f3
	db $fd                                           ; $4c17: $fd
	sbc e                                            ; $4c18: $9b
	rra                                              ; $4c19: $1f
	rra                                              ; $4c1a: $1f
	sbc [hl]                                         ; $4c1b: $9e
	sbc d                                            ; $4c1c: $9a
	dec de                                           ; $4c1d: $1b
	ld a, [de]                                       ; $4c1e: $1a
	adc e                                            ; $4c1f: $8b
	dec bc                                           ; $4c20: $0b
	dec c                                            ; $4c21: $0d
	ldh [c], a                                       ; $4c22: $e2
	ldh [c], a                                       ; $4c23: $e2
	and d                                            ; $4c24: $a2
	and b                                            ; $4c25: $a0
	jr nc, jr_05b_4ca6                               ; $4c26: $30 $7e

	rst AddAOntoHL                                          ; $4c28: $ef
	rst SubAFromHL                                          ; $4c29: $d7
	ldh [c], a                                       ; $4c2a: $e2
	ld [hl+], a                                      ; $4c2b: $22
	and d                                            ; $4c2c: $a2
	and b                                            ; $4c2d: $a0
	or b                                             ; $4c2e: $b0
	ld a, $3f                                        ; $4c2f: $3e $3f
	ld a, a                                          ; $4c31: $7f
	db $10                                           ; $4c32: $10
	db $10                                           ; $4c33: $10
	ld [hl], e                                       ; $4c34: $73
	ret                                              ; $4c35: $c9


	sub [hl]                                         ; $4c36: $96
	ld b, b                                          ; $4c37: $40
	ld [de], a                                       ; $4c38: $12
	dec d                                            ; $4c39: $15
	ld [bc], a                                       ; $4c3a: $02
	dec b                                            ; $4c3b: $05
	ld [bc], a                                       ; $4c3c: $02
	push bc                                          ; $4c3d: $c5
	ldh a, [c]                                       ; $4c3e: $f2
	push bc                                          ; $4c3f: $c5
	db $db                                           ; $4c40: $db
	inc bc                                           ; $4c41: $03
	ld a, e                                          ; $4c42: $7b
	ld c, d                                          ; $4c43: $4a
	adc l                                            ; $4c44: $8d
	inc b                                            ; $4c45: $04
	and h                                            ; $4c46: $a4
	ld d, h                                          ; $4c47: $54
	and h                                            ; $4c48: $a4
	ld d, h                                          ; $4c49: $54
	and [hl]                                         ; $4c4a: $a6
	ld d, l                                          ; $4c4b: $55
	sub $2a                                          ; $4c4c: $d6 $2a
	jr jr_05b_4c54                                   ; $4c4e: $18 $04

	inc bc                                           ; $4c50: $03
	ld bc, $4181                                     ; $4c51: $01 $81 $41

jr_05b_4c54:
	add hl, hl                                       ; $4c54: $29
	dec d                                            ; $4c55: $15
	rlca                                             ; $4c56: $07
	ld [hl], h                                       ; $4c57: $74
	add $89                                          ; $4c58: $c6 $89
	add b                                            ; $4c5a: $80
	db $d3                                           ; $4c5b: $d3
	di                                               ; $4c5c: $f3

jr_05b_4c5d:
	ld h, d                                          ; $4c5d: $62
	dec sp                                           ; $4c5e: $3b
	ld c, h                                          ; $4c5f: $4c
	ld c, a                                          ; $4c60: $4f
	ld b, h                                          ; $4c61: $44
	ld b, b                                          ; $4c62: $40
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	sub b                                            ; $4c65: $90
	ret nz                                           ; $4c66: $c0

	or d                                             ; $4c67: $b2
	sub b                                            ; $4c68: $90
	adc d                                            ; $4c69: $8a
	add [hl]                                         ; $4c6a: $86
	rst $38                                          ; $4c6b: $ff
	ld d, l                                          ; $4c6c: $55
	xor d                                            ; $4c6d: $aa
	ld d, l                                          ; $4c6e: $55
	nop                                              ; $4c6f: $00
	ld h, d                                          ; $4c70: $62
	jp nc, $c07a                                     ; $4c71: $d2 $7a $c0

	ld c, e                                          ; $4c74: $4b
	ldh a, [hDisp1_WY]                                     ; $4c75: $f0 $95
	db $fd                                           ; $4c77: $fd
	ld e, d                                          ; $4c78: $5a
	or l                                             ; $4c79: $b5
	ld l, h                                          ; $4c7a: $6c
	ld d, l                                          ; $4c7b: $55
	ld l, h                                          ; $4c7c: $6c
	ld e, l                                          ; $4c7d: $5d
	db $ec                                           ; $4c7e: $ec
	ld [bc], a                                       ; $4c7f: $02
	nop                                              ; $4c80: $00
	db $db                                           ; $4c81: $db
	ld [bc], a                                       ; $4c82: $02
	sbc l                                            ; $4c83: $9d
	ld c, e                                          ; $4c84: $4b
	xor e                                            ; $4c85: $ab
	ld [hl], a                                       ; $4c86: $77
	cp $9d                                           ; $4c87: $fe $9d
	ld l, h                                          ; $4c89: $6c
	ldh [$db], a                                     ; $4c8a: $e0 $db
	db $10                                           ; $4c8c: $10
	sub l                                            ; $4c8d: $95
	inc de                                           ; $4c8e: $13
	rra                                              ; $4c8f: $1f
	add b                                            ; $4c90: $80
	add b                                            ; $4c91: $80
	add a                                            ; $4c92: $87
	cp h                                             ; $4c93: $bc
	db $e3                                           ; $4c94: $e3
	rra                                              ; $4c95: $1f
	cp a                                             ; $4c96: $bf
	ld a, a                                          ; $4c97: $7f
	cp $98                                           ; $4c98: $fe $98
	inc bc                                           ; $4c9a: $03
	inc e                                            ; $4c9b: $1c
	ldh [rLCDC], a                                   ; $4c9c: $e0 $40
	add b                                            ; $4c9e: $80
	jr nz, jr_05b_4cb7                               ; $4c9f: $20 $16

	halt                                             ; $4ca1: $76
	ld a, l                                          ; $4ca2: $7d
	ld a, l                                          ; $4ca3: $7d
	adc b                                            ; $4ca4: $88
	sbc h                                            ; $4ca5: $9c

jr_05b_4ca6:
	pop bc                                           ; $4ca6: $c1
	ldh [$f9], a                                     ; $4ca7: $e0 $f9
	ld a, c                                          ; $4ca9: $79
	inc a                                            ; $4caa: $3c
	sbc l                                            ; $4cab: $9d
	ld bc, $7903                                     ; $4cac: $01 $03 $79
	add c                                            ; $4caf: $81
	sub e                                            ; $4cb0: $93

Jump_05b_4cb1:
	ldh [$df], a                                     ; $4cb1: $e0 $df
	nop                                              ; $4cb3: $00
	rra                                              ; $4cb4: $1f
	ld a, a                                          ; $4cb5: $7f
	sub b                                            ; $4cb6: $90

jr_05b_4cb7:
	ret z                                            ; $4cb7: $c8

	db $ec                                           ; $4cb8: $ec
	db $fc                                           ; $4cb9: $fc
	ccf                                              ; $4cba: $3f
	rst $38                                          ; $4cbb: $ff
	ldh [$6f], a                                     ; $4cbc: $e0 $6f
	jr jr_05b_4c5d                                   ; $4cbe: $18 $9d

	ld hl, sp-$39                                    ; $4cc0: $f8 $c7
	ld l, l                                          ; $4cc2: $6d
	jr nz, jr_05b_4d42                               ; $4cc3: $20 $7d

	rst JumpTable                                          ; $4cc5: $c7
	sbc l                                            ; $4cc6: $9d
	nop                                              ; $4cc7: $00
	add hl, bc                                       ; $4cc8: $09
	sbc $01                                          ; $4cc9: $de $01
	rst $38                                          ; $4ccb: $ff
	ld a, [hl]                                       ; $4ccc: $7e
	jp hl                                            ; $4ccd: $e9


	ld l, e                                          ; $4cce: $6b
	ld hl, sp-$21                                    ; $4ccf: $f8 $df
	cp $80                                           ; $4cd1: $fe $80
	call c, Call_05b_6777                            ; $4cd3: $dc $77 $67
	push de                                          ; $4cd6: $d5
	jp c, $0849                                      ; $4cd7: $da $49 $08

	ld c, e                                          ; $4cda: $4b
	ld l, e                                          ; $4cdb: $6b
	db $ed                                           ; $4cdc: $ed
	db $fd                                           ; $4cdd: $fd
	rst SubAFromDE                                          ; $4cde: $df
	db $db                                           ; $4cdf: $db
	ld c, c                                          ; $4ce0: $49
	ld [$8f9f], sp                                   ; $4ce1: $08 $9f $8f
	ld l, [hl]                                       ; $4ce4: $6e
	ld l, e                                          ; $4ce5: $6b
	ld c, l                                          ; $4ce6: $4d
	xor d                                            ; $4ce7: $aa
	xor c                                            ; $4ce8: $a9
	rst SubAFromDE                                          ; $4ce9: $df
	db $fc                                           ; $4cea: $fc
	ld a, [$5d5b]                                    ; $4ceb: $fa $5b $5d
	ld a, [hl]                                       ; $4cee: $7e
	cp e                                             ; $4cef: $bb
	cp c                                             ; $4cf0: $b9

jr_05b_4cf1:
	rst SubAFromDE                                          ; $4cf1: $df
	ld a, b                                          ; $4cf2: $78
	sbc b                                            ; $4cf3: $98
	adc d                                            ; $4cf4: $8a
	ld l, e                                          ; $4cf5: $6b
	push af                                          ; $4cf6: $f5
	rst $38                                          ; $4cf7: $ff
	rst $38                                          ; $4cf8: $ff
	cp b                                             ; $4cf9: $b8
	add hl, de                                       ; $4cfa: $19
	inc a                                            ; $4cfb: $3c
	ld a, a                                          ; $4cfc: $7f
	xor a                                            ; $4cfd: $af
	add [hl]                                         ; $4cfe: $86
	jp Jump_05b_6060                                 ; $4cff: $c3 $60 $60


	add b                                            ; $4d02: $80
	ret nz                                           ; $4d03: $c0

	ld b, b                                          ; $4d04: $40
	ld c, b                                          ; $4d05: $48
	call z, $1e1d                                    ; $4d06: $cc $1d $1e
	rrca                                             ; $4d09: $0f
	db $dd                                           ; $4d0a: $dd
	add b                                            ; $4d0b: $80
	sbc c                                            ; $4d0c: $99
	add h                                            ; $4d0d: $84
	add [hl]                                         ; $4d0e: $86
	ld b, $01                                        ; $4d0f: $06 $01
	rla                                              ; $4d11: $17
	inc c                                            ; $4d12: $0c
	db $fc                                           ; $4d13: $fc
	sbc [hl]                                         ; $4d14: $9e
	jr nz, jr_05b_4d8c                               ; $4d15: $20 $75

jr_05b_4d17:
	jr jr_05b_4d17                                   ; $4d17: $18 $fe

	add [hl]                                         ; $4d19: $86
	ldh [$0b], a                                     ; $4d1a: $e0 $0b
	rrca                                             ; $4d1c: $0f
	dec c                                            ; $4d1d: $0d
	rrca                                             ; $4d1e: $0f
	rlca                                             ; $4d1f: $07
	dec e                                            ; $4d20: $1d
	inc c                                            ; $4d21: $0c
	inc [hl]                                         ; $4d22: $34
	dec c                                            ; $4d23: $0d
	dec b                                            ; $4d24: $05
	rlca                                             ; $4d25: $07
	rlca                                             ; $4d26: $07
	dec c                                            ; $4d27: $0d
	inc c                                            ; $4d28: $0c
	inc e                                            ; $4d29: $1c
	inc e                                            ; $4d2a: $1c
	xor l                                            ; $4d2b: $ad
	ld e, d                                          ; $4d2c: $5a
	db $ed                                           ; $4d2d: $ed
	call nz, Call_05b_6242                           ; $4d2e: $c4 $42 $62
	ld [hl+], a                                      ; $4d31: $22
	inc hl                                           ; $4d32: $23
	halt                                             ; $4d33: $76
	ld h, b                                          ; $4d34: $60
	sbc [hl]                                         ; $4d35: $9e
	ld a, a                                          ; $4d36: $7f
	sbc $3f                                          ; $4d37: $de $3f
	adc a                                            ; $4d39: $8f
	ldh [$b8], a                                     ; $4d3a: $e0 $b8
	ld e, [hl]                                       ; $4d3c: $5e
	rst GetHLinHL                                          ; $4d3d: $cf
	ld c, a                                          ; $4d3e: $4f
	rst GetHLinHL                                          ; $4d3f: $cf
	adc h                                            ; $4d40: $8c
	add hl, de                                       ; $4d41: $19

jr_05b_4d42:
	and d                                            ; $4d42: $a2
	reti                                             ; $4d43: $d9


	and $f1                                          ; $4d44: $e6 $f1
	ldh a, [$f3]                                     ; $4d46: $f0 $f3
	rst FarCall                                          ; $4d48: $f7
	xor $7b                                          ; $4d49: $ee $7b
	ld a, e                                          ; $4d4b: $7b
	add b                                            ; $4d4c: $80
	nop                                              ; $4d4d: $00
	add e                                            ; $4d4e: $83
	ldh [c], a                                       ; $4d4f: $e2
	ld [hl], d                                       ; $4d50: $72
	rst $38                                          ; $4d51: $ff
	and h                                            ; $4d52: $a4
	ld d, [hl]                                       ; $4d53: $56
	and a                                            ; $4d54: $a7
	ld d, a                                          ; $4d55: $57
	add h                                            ; $4d56: $84
	db $e4                                           ; $4d57: $e4
	or h                                             ; $4d58: $b4
	rra                                              ; $4d59: $1f
	or c                                             ; $4d5a: $b1
	ld c, l                                          ; $4d5b: $4d
	inc sp                                           ; $4d5c: $33
	inc c                                            ; $4d5d: $0c
	ld [bc], a                                       ; $4d5e: $02
	ld b, b                                          ; $4d5f: $40
	db $10                                           ; $4d60: $10
	inc b                                            ; $4d61: $04
	ld b, b                                          ; $4d62: $40
	jr nc, jr_05b_4cf1                               ; $4d63: $30 $8c

	jp $3cf1                                         ; $4d65: $c3 $f1 $3c


	rrca                                             ; $4d68: $0f
	inc bc                                           ; $4d69: $03
	ld d, b                                          ; $4d6a: $50
	ld e, b                                          ; $4d6b: $58
	sbc b                                            ; $4d6c: $98
	ld d, h                                          ; $4d6d: $54
	ld e, [hl]                                       ; $4d6e: $5e
	ld e, [hl]                                       ; $4d6f: $5e
	ld c, [hl]                                       ; $4d70: $4e
	ld e, [hl]                                       ; $4d71: $5e
	ld h, $82                                        ; $4d72: $26 $82
	db $db                                           ; $4d74: $db
	add c                                            ; $4d75: $81
	sbc [hl]                                         ; $4d76: $9e
	pop bc                                           ; $4d77: $c1
	ld a, e                                          ; $4d78: $7b
	sbc l                                            ; $4d79: $9d
	sbc e                                            ; $4d7a: $9b
	cpl                                              ; $4d7b: $2f
	jr nc, jr_05b_4dbd                               ; $4d7c: $30 $3f

	jr c, jr_05b_4de8                                ; $4d7e: $38 $68

	sbc d                                            ; $4d80: $9a
	sub [hl]                                         ; $4d81: $96
	rlca                                             ; $4d82: $07
	rrca                                             ; $4d83: $0f
	inc bc                                           ; $4d84: $03
	ld c, $15                                        ; $4d85: $0e $15
	xor $15                                          ; $4d87: $ee $15
	adc $15                                          ; $4d89: $ce $15
	ld a, e                                          ; $4d8b: $7b

jr_05b_4d8c:
	add c                                            ; $4d8c: $81
	sbc l                                            ; $4d8d: $9d
	ld [$7b10], sp                                   ; $4d8e: $08 $10 $7b
	cp $93                                           ; $4d91: $fe $93
	sub b                                            ; $4d93: $90
	db $dd                                           ; $4d94: $dd
	ld l, c                                          ; $4d95: $69
	add hl, bc                                       ; $4d96: $09
	ld c, c                                          ; $4d97: $49
	add hl, bc                                       ; $4d98: $09
	ld c, c                                          ; $4d99: $49
	add hl, sp                                       ; $4d9a: $39
	ld a, b                                          ; $4d9b: $78
	ld [bc], a                                       ; $4d9c: $02
	ld b, $46                                        ; $4d9d: $06 $46
	ld [hl], a                                       ; $4d9f: $77
	cp $95                                           ; $4da0: $fe $95
	rlca                                             ; $4da2: $07
	db $e4                                           ; $4da3: $e4
	ldh [$a4], a                                     ; $4da4: $e0 $a4
	and b                                            ; $4da6: $a0
	xor h                                            ; $4da7: $ac
	add sp, $04                                      ; $4da8: $e8 $04
	sub b                                            ; $4daa: $90
	dec de                                           ; $4dab: $1b
	ld [hl], c                                       ; $4dac: $71
	ld a, a                                          ; $4dad: $7f
	adc h                                            ; $4dae: $8c
	ei                                               ; $4daf: $fb
	rrca                                             ; $4db0: $0f
	cp b                                             ; $4db1: $b8
	ld h, d                                          ; $4db2: $62
	push bc                                          ; $4db3: $c5
	add d                                            ; $4db4: $82
	adc l                                            ; $4db5: $8d
	sub d                                            ; $4db6: $92
	ret nz                                           ; $4db7: $c0

	ret nz                                           ; $4db8: $c0

	ld b, a                                          ; $4db9: $47
	sbc a                                            ; $4dba: $9f
	ccf                                              ; $4dbb: $3f
	ld a, a                                          ; $4dbc: $7f

jr_05b_4dbd:
	ld [hl], e                                       ; $4dbd: $73
	ld h, c                                          ; $4dbe: $61
	jr nz, jr_05b_4df9                               ; $4dbf: $20 $38

	pop af                                           ; $4dc1: $f1
	sbc $ff                                          ; $4dc2: $de $ff
	sbc e                                            ; $4dc4: $9b
	ccf                                              ; $4dc5: $3f
	rrca                                             ; $4dc6: $0f
	ld bc, $7780                                     ; $4dc7: $01 $80 $77
	ld b, b                                          ; $4dca: $40
	sbc h                                            ; $4dcb: $9c
	ret nz                                           ; $4dcc: $c0

	ldh a, [$fe]                                     ; $4dcd: $f0 $fe
	reti                                             ; $4dcf: $d9


	rst $38                                          ; $4dd0: $ff
	ld a, [hl]                                       ; $4dd1: $7e
	rst SubAFromHL                                          ; $4dd2: $d7
	ei                                               ; $4dd3: $fb
	sbc h                                            ; $4dd4: $9c
	ret nz                                           ; $4dd5: $c0

	rst $38                                          ; $4dd6: $ff
	ldh a, [$db]                                     ; $4dd7: $f0 $db
	rst $38                                          ; $4dd9: $ff
	sbc l                                            ; $4dda: $9d
	nop                                              ; $4ddb: $00
	rrca                                             ; $4ddc: $0f
	ei                                               ; $4ddd: $fb
	sbc l                                            ; $4dde: $9d
	pop bc                                           ; $4ddf: $c1
	rrca                                             ; $4de0: $0f
	ld l, l                                          ; $4de1: $6d
	dec c                                            ; $4de2: $0d
	ld a, [hl]                                       ; $4de3: $7e
	and h                                            ; $4de4: $a4
	ld l, [hl]                                       ; $4de5: $6e
	xor l                                            ; $4de6: $ad
	sbc [hl]                                         ; $4de7: $9e

jr_05b_4de8:
	add c                                            ; $4de8: $81
	jp c, $9dff                                      ; $4de9: $da $ff $9d

	add c                                            ; $4dec: $81
	cp $fb                                           ; $4ded: $fe $fb
	add b                                            ; $4def: $80
	ld sp, hl                                        ; $4df0: $f9
	add c                                            ; $4df1: $81
	add hl, bc                                       ; $4df2: $09
	add hl, de                                       ; $4df3: $19
	add hl, de                                       ; $4df4: $19
	sbc c                                            ; $4df5: $99
	ret c                                            ; $4df6: $d8

	db $ec                                           ; $4df7: $ec
	rst $38                                          ; $4df8: $ff

jr_05b_4df9:
	ld a, a                                          ; $4df9: $7f
	rst FarCall                                          ; $4dfa: $f7
	rst SubAFromBC                                          ; $4dfb: $e7
	rst SubAFromBC                                          ; $4dfc: $e7
	ld h, a                                          ; $4dfd: $67
	daa                                              ; $4dfe: $27
	inc de                                           ; $4dff: $13
	ld a, $5f                                        ; $4e00: $3e $5f
	ld e, a                                          ; $4e02: $5f
	rst SubAFromDE                                          ; $4e03: $df
	rst FarCall                                          ; $4e04: $f7
	cp [hl]                                          ; $4e05: $be
	or a                                             ; $4e06: $b7
	cp d                                             ; $4e07: $ba
	ld [hl], b                                       ; $4e08: $70
	jr c, jr_05b_4e47                                ; $4e09: $38 $3c

	ccf                                              ; $4e0b: $3f
	ccf                                              ; $4e0c: $3f
	ld a, a                                          ; $4e0d: $7f
	rst $38                                          ; $4e0e: $ff
	sub l                                            ; $4e0f: $95
	rst $38                                          ; $4e10: $ff
	inc bc                                           ; $4e11: $03
	inc bc                                           ; $4e12: $03
	add e                                            ; $4e13: $83
	pop hl                                           ; $4e14: $e1
	ld hl, sp-$0a                                    ; $4e15: $f8 $f6
	ld l, a                                          ; $4e17: $6f
	or a                                             ; $4e18: $b7
	ld [bc], a                                       ; $4e19: $02
	ld a, c                                          ; $4e1a: $79
	res 0, b                                         ; $4e1b: $cb $80
	ret nz                                           ; $4e1d: $c0

	ld hl, sp-$02                                    ; $4e1e: $f8 $fe
	ld sp, hl                                        ; $4e20: $f9
	ldh a, [hDisp1_SCY]                                     ; $4e21: $f0 $90
	db $10                                           ; $4e23: $10
	pop af                                           ; $4e24: $f1
	db $e3                                           ; $4e25: $e3
	rlca                                             ; $4e26: $07
	sbc [hl]                                         ; $4e27: $9e
	ld sp, hl                                        ; $4e28: $f9
	ld [hl], b                                       ; $4e29: $70
	ldh a, [$f0]                                     ; $4e2a: $f0 $f0
	ldh [rSB], a                                     ; $4e2c: $e0 $01
	inc bc                                           ; $4e2e: $03
	rrca                                             ; $4e2f: $0f
	rst $38                                          ; $4e30: $ff
	inc a                                            ; $4e31: $3c
	ld l, h                                          ; $4e32: $6c
	call c, $b8b8                                    ; $4e33: $dc $b8 $b8
	ld [hl], b                                       ; $4e36: $70
	pop hl                                           ; $4e37: $e1
	pop bc                                           ; $4e38: $c1
	inc d                                            ; $4e39: $14
	inc [hl]                                         ; $4e3a: $34
	ld h, h                                          ; $4e3b: $64
	rst SubAFromDE                                          ; $4e3c: $df
	ret z                                            ; $4e3d: $c8

	sub h                                            ; $4e3e: $94
	sub b                                            ; $4e3f: $90
	ld h, b                                          ; $4e40: $60
	add c                                            ; $4e41: $81
	inc hl                                           ; $4e42: $23
	ld [hl+], a                                      ; $4e43: $22
	ld [hl], h                                       ; $4e44: $74
	ld c, h                                          ; $4e45: $4c
	ret z                                            ; $4e46: $c8

jr_05b_4e47:
	sub b                                            ; $4e47: $90
	and b                                            ; $4e48: $a0
	ld b, b                                          ; $4e49: $40
	sbc $3f                                          ; $4e4a: $de $3f
	rst SubAFromDE                                          ; $4e4c: $df
	ld a, a                                          ; $4e4d: $7f
	sbc $ff                                          ; $4e4e: $de $ff
	adc l                                            ; $4e50: $8d
	dec de                                           ; $4e51: $1b
	ld [hl], $34                                     ; $4e52: $36 $34
	add hl, hl                                       ; $4e54: $29
	ld a, [hl+]                                      ; $4e55: $2a
	ld d, d                                          ; $4e56: $52
	ld d, l                                          ; $4e57: $55
	xor c                                            ; $4e58: $a9
	db $ec                                           ; $4e59: $ec
	reti                                             ; $4e5a: $d9


	db $db                                           ; $4e5b: $db
	rst FarCall                                          ; $4e5c: $f7
	rst FarCall                                          ; $4e5d: $f7
	rst AddAOntoHL                                          ; $4e5e: $ef
	xor $de                                          ; $4e5f: $ee $de
	jr nc, jr_05b_4eb2                               ; $4e61: $30 $4f

	jp c, Jump_05b_7dff                              ; $4e63: $da $ff $7d

	inc hl                                           ; $4e66: $23
	ld l, a                                          ; $4e67: $6f
	ld c, a                                          ; $4e68: $4f
	add b                                            ; $4e69: $80
	or c                                             ; $4e6a: $b1
	add sp, -$09                                     ; $4e6b: $e8 $f7
	db $fd                                           ; $4e6d: $fd
	cp $8f                                           ; $4e6e: $fe $8f
	ret nc                                           ; $4e70: $d0

	pop bc                                           ; $4e71: $c1
	ld [hl], b                                       ; $4e72: $70
	add hl, de                                       ; $4e73: $19
	ld c, $03                                        ; $4e74: $0e $03
	ld bc, $3f70                                     ; $4e76: $01 $70 $3f
	adc b                                            ; $4e79: $88
	ld h, d                                          ; $4e7a: $62
	and b                                            ; $4e7b: $a0
	ld l, d                                          ; $4e7c: $6a
	and [hl]                                         ; $4e7d: $a6
	db $ed                                           ; $4e7e: $ed
	ld a, c                                          ; $4e7f: $79
	add hl, de                                       ; $4e80: $19
	ld [hl], c                                       ; $4e81: $71
	sbc l                                            ; $4e82: $9d
	ld e, a                                          ; $4e83: $5f
	sub l                                            ; $4e84: $95
	ld e, c                                          ; $4e85: $59
	sub b                                            ; $4e86: $90
	ldh [$f8], a                                     ; $4e87: $e0 $f8
	adc e                                            ; $4e89: $8b
	and b                                            ; $4e8a: $a0
	ld h, c                                          ; $4e8b: $61
	and b                                            ; $4e8c: $a0
	ld h, b                                          ; $4e8d: $60
	and c                                            ; $4e8e: $a1
	ld h, h                                          ; $4e8f: $64
	add [hl]                                         ; $4e90: $86
	ld b, $1f                                        ; $4e91: $06 $1f
	inc e                                            ; $4e93: $1c
	jr jr_05b_4eae                                   ; $4e94: $18 $18

	inc c                                            ; $4e96: $0c
	dec de                                           ; $4e97: $1b
	ld a, c                                          ; $4e98: $79
	ld sp, hl                                        ; $4e99: $f9
	inc d                                            ; $4e9a: $14
	jr jr_05b_4eb0                                   ; $4e9b: $18 $13

	ld a, [de]                                       ; $4e9d: $1a
	ld [hl], h                                       ; $4e9e: $74
	ld e, b                                          ; $4e9f: $58
	add b                                            ; $4ea0: $80
	ret z                                            ; $4ea1: $c8

	ret nz                                           ; $4ea2: $c0

	ret z                                            ; $4ea3: $c8

	add b                                            ; $4ea4: $80
	adc a                                            ; $4ea5: $8f
	rra                                              ; $4ea6: $1f
	sbc l                                            ; $4ea7: $9d
	ret c                                            ; $4ea8: $d8

	add hl, bc                                       ; $4ea9: $09
	ld c, d                                          ; $4eaa: $4a
	ld [$5a58], sp                                   ; $4eab: $08 $58 $5a

jr_05b_4eae:
	ld a, d                                          ; $4eae: $7a
	add hl, hl                                       ; $4eaf: $29

jr_05b_4eb0:
	ld b, l                                          ; $4eb0: $45
	ld b, [hl]                                       ; $4eb1: $46

jr_05b_4eb2:
	inc b                                            ; $4eb2: $04
	ld b, h                                          ; $4eb3: $44
	inc b                                            ; $4eb4: $04
	inc b                                            ; $4eb5: $04
	add h                                            ; $4eb6: $84
	sub [hl]                                         ; $4eb7: $96
	sbc d                                            ; $4eb8: $9a
	inc e                                            ; $4eb9: $1c
	cp h                                             ; $4eba: $bc
	or [hl]                                          ; $4ebb: $b6
	ld l, $06                                        ; $4ebc: $2e $06
	call nz, $8064                                   ; $4ebe: $c4 $64 $80
	ld d, h                                          ; $4ec1: $54
	inc bc                                           ; $4ec2: $03
	inc bc                                           ; $4ec3: $03
	add hl, bc                                       ; $4ec4: $09
	add c                                            ; $4ec5: $81
	xor c                                            ; $4ec6: $a9
	dec hl                                           ; $4ec7: $2b
	adc e                                            ; $4ec8: $8b
	xor e                                            ; $4ec9: $ab
	ret c                                            ; $4eca: $d8

	ret nc                                           ; $4ecb: $d0

	ret c                                            ; $4ecc: $d8

	call c, $edec                                    ; $4ecd: $dc $ec $ed
	rst FarCall                                          ; $4ed0: $f7
	cp b                                             ; $4ed1: $b8
	jr nz, jr_05b_4ef4                               ; $4ed2: $20 $20

	inc h                                            ; $4ed4: $24
	jr nz, jr_05b_4ee7                               ; $4ed5: $20 $10

	db $10                                           ; $4ed7: $10
	ld [$6047], sp                                   ; $4ed8: $08 $47 $60
	jr jr_05b_4ee3                                   ; $4edb: $18 $06

	pop bc                                           ; $4edd: $c1
	jr nz, jr_05b_4f00                               ; $4ede: $20 $20

	sbc [hl]                                         ; $4ee0: $9e
	ret nz                                           ; $4ee1: $c0

	halt                                             ; $4ee2: $76

jr_05b_4ee3:
	db $eb                                           ; $4ee3: $eb
	sub l                                            ; $4ee4: $95
	ccf                                              ; $4ee5: $3f
	rra                                              ; $4ee6: $1f

jr_05b_4ee7:
	rra                                              ; $4ee7: $1f
	ccf                                              ; $4ee8: $3f
	rst $38                                          ; $4ee9: $ff
	rrca                                             ; $4eea: $0f
	ld bc, $c000                                     ; $4eeb: $01 $00 $c0
	inc a                                            ; $4eee: $3c
	ld a, c                                          ; $4eef: $79
	ld b, $72                                        ; $4ef0: $06 $72
	or l                                             ; $4ef2: $b5
	sbc l                                            ; $4ef3: $9d

jr_05b_4ef4:
	ei                                               ; $4ef4: $fb
	ld hl, sp+$7a                                    ; $4ef5: $f8 $7a
	jp nz, $f17d                                     ; $4ef7: $c2 $7d $f1

	sbc h                                            ; $4efa: $9c
	rlca                                             ; $4efb: $07
	pop bc                                           ; $4efc: $c1
	ld a, $75                                        ; $4efd: $3e $75
	sub h                                            ; $4eff: $94

jr_05b_4f00:
	rst SubAFromDE                                          ; $4f00: $df
	ld hl, sp+$7f                                    ; $4f01: $f8 $7f
	db $dd                                           ; $4f03: $dd
	sbc [hl]                                         ; $4f04: $9e
	ld bc, $ffdd                                     ; $4f05: $01 $dd $ff
	sbc e                                            ; $4f08: $9b
	ld e, $e0                                        ; $4f09: $1e $e0
	nop                                              ; $4f0b: $00
	ldh [$71], a                                     ; $4f0c: $e0 $71
	inc b                                            ; $4f0e: $04
	jp c, Jump_05b_7dff                              ; $4f0f: $da $ff $7d

	add sp, -$62                                     ; $4f12: $e8 $9e
	ld h, $6c                                        ; $4f14: $26 $6c
	xor d                                            ; $4f16: $aa
	add h                                            ; $4f17: $84
	ret nz                                           ; $4f18: $c0

	ld sp, hl                                        ; $4f19: $f9
	rst $38                                          ; $4f1a: $ff
	db $ec                                           ; $4f1b: $ec
	ld h, h                                          ; $4f1c: $64
	ld h, d                                          ; $4f1d: $62
	ld [hl+], a                                      ; $4f1e: $22
	ld sp, $5030                                     ; $4f1f: $31 $30 $50
	ld c, b                                          ; $4f22: $48
	inc de                                           ; $4f23: $13
	sbc e                                            ; $4f24: $9b
	sbc l                                            ; $4f25: $9d
	db $dd                                           ; $4f26: $dd
	adc $cf                                          ; $4f27: $ce $cf
	rst AddAOntoHL                                          ; $4f29: $ef
	rst FarCall                                          ; $4f2a: $f7
	ld d, l                                          ; $4f2b: $55
	ld e, c                                          ; $4f2c: $59
	db $10                                           ; $4f2d: $10
	ld [$0408], sp                                   ; $4f2e: $08 $08 $04
	add h                                            ; $4f31: $84
	ld [bc], a                                       ; $4f32: $02
	ld l, e                                          ; $4f33: $6b
	sub $9a                                          ; $4f34: $d6 $9a
	rst $38                                          ; $4f36: $ff
	ld e, b                                          ; $4f37: $58
	inc c                                            ; $4f38: $0c
	add [hl]                                         ; $4f39: $86
	ld b, e                                          ; $4f3a: $43
	ld [hl], l                                       ; $4f3b: $75
	ld b, [hl]                                       ; $4f3c: $46
	rst SubAFromDE                                          ; $4f3d: $df
	ld hl, sp-$62                                    ; $4f3e: $f8 $9e
	db $fc                                           ; $4f40: $fc
	ld l, [hl]                                       ; $4f41: $6e
	ld d, e                                          ; $4f42: $53
	sbc [hl]                                         ; $4f43: $9e
	jr c, jr_05b_4fbd                                ; $4f44: $38 $77

	ret z                                            ; $4f46: $c8

	sbc h                                            ; $4f47: $9c
	ldh a, [$78]                                     ; $4f48: $f0 $78
	ld a, [hl]                                       ; $4f4a: $7e
	ld l, h                                          ; $4f4b: $6c
	ld sp, $c086                                     ; $4f4c: $31 $86 $c0
	inc bc                                           ; $4f4f: $03
	rlca                                             ; $4f50: $07
	ld c, $3c                                        ; $4f51: $0e $3c
	ld a, b                                          ; $4f53: $78
	ldh a, [$e0]                                     ; $4f54: $f0 $e0
	pop bc                                           ; $4f56: $c1
	ld bc, $0303                                     ; $4f57: $01 $03 $03
	rlca                                             ; $4f5a: $07
	rrca                                             ; $4f5b: $0f
	rra                                              ; $4f5c: $1f
	ccf                                              ; $4f5d: $3f
	ld a, a                                          ; $4f5e: $7f
	add b                                            ; $4f5f: $80
	ld bc, $0502                                     ; $4f60: $01 $02 $05
	add hl, bc                                       ; $4f63: $09
	inc de                                           ; $4f64: $13
	ld h, a                                          ; $4f65: $67
	adc [hl]                                         ; $4f66: $8e
	ld [hl], h                                       ; $4f67: $74
	db $db                                           ; $4f68: $db
	ld a, h                                          ; $4f69: $7c
	jp c, $f998                                      ; $4f6a: $da $98 $f9

	di                                               ; $4f6d: $f3
	xor c                                            ; $4f6e: $a9
	ld [hl], c                                       ; $4f6f: $71
	pop af                                           ; $4f70: $f1
	pop af                                           ; $4f71: $f1
	ret nc                                           ; $4f72: $d0

	sbc $88                                          ; $4f73: $de $88
	sbc e                                            ; $4f75: $9b
	sbc $9e                                          ; $4f76: $de $9e
	ld e, $3e                                        ; $4f78: $1e $3e
	halt                                             ; $4f7a: $76
	or b                                             ; $4f7b: $b0
	rst SubAFromDE                                          ; $4f7c: $df
	rst $38                                          ; $4f7d: $ff
	sbc c                                            ; $4f7e: $99
	db $fd                                           ; $4f7f: $fd
	ld sp, hl                                        ; $4f80: $f9
	ld sp, hl                                        ; $4f81: $f9
	pop af                                           ; $4f82: $f1
	pop af                                           ; $4f83: $f1
	ldh a, [$7a]                                     ; $4f84: $f0 $7a
	db $fc                                           ; $4f86: $fc
	rst SubAFromDE                                          ; $4f87: $df
	ld b, $df                                        ; $4f88: $06 $df
	ld c, $9e                                        ; $4f8a: $0e $9e
	rrca                                             ; $4f8c: $0f
	ld h, l                                          ; $4f8d: $65

jr_05b_4f8e:
	cp $7b                                           ; $4f8e: $fe $7b
	jr c, jr_05b_4f8e                                ; $4f90: $38 $fc

	sbc l                                            ; $4f92: $9d
	inc c                                            ; $4f93: $0c
	jp $ffdb                                         ; $4f94: $c3 $db $ff


	sbc [hl]                                         ; $4f97: $9e
	db $fd                                           ; $4f98: $fd
	ld l, c                                          ; $4f99: $69
	db $ed                                           ; $4f9a: $ed
	sbc e                                            ; $4f9b: $9b
	ld b, $02                                        ; $4f9c: $06 $02
	jp nz, Jump_05b_77f8                             ; $4f9e: $c2 $f8 $77

	call c, $f999                                    ; $4fa1: $dc $99 $f9
	db $fd                                           ; $4fa4: $fd
	db $fd                                           ; $4fa5: $fd
	ccf                                              ; $4fa6: $3f
	rlca                                             ; $4fa7: $07
	ld bc, $eb69                                     ; $4fa8: $01 $69 $eb
	sbc d                                            ; $4fab: $9a
	add b                                            ; $4fac: $80
	ldh [$98], a                                     ; $4fad: $e0 $98
	ret nc                                           ; $4faf: $d0

	ld sp, hl                                        ; $4fb0: $f9
	ld l, a                                          ; $4fb1: $6f
	ld e, a                                          ; $4fb2: $5f
	add b                                            ; $4fb3: $80
	dec hl                                           ; $4fb4: $2b
	ld d, [hl]                                       ; $4fb5: $56
	xor b                                            ; $4fb6: $a8
	ld d, [hl]                                       ; $4fb7: $56
	nop                                              ; $4fb8: $00
	dec b                                            ; $4fb9: $05
	ld d, h                                          ; $4fba: $54
	dec d                                            ; $4fbb: $15
	sub h                                            ; $4fbc: $94

jr_05b_4fbd:
	adc c                                            ; $4fbd: $89
	rlca                                             ; $4fbe: $07
	add c                                            ; $4fbf: $81
	cp [hl]                                          ; $4fc0: $be
	add sp, -$58                                     ; $4fc1: $e8 $a8
	xor b                                            ; $4fc3: $a8
	ld d, [hl]                                       ; $4fc4: $56
	ld e, e                                          ; $4fc5: $5b
	xor b                                            ; $4fc6: $a8
	inc bc                                           ; $4fc7: $03
	add hl, de                                       ; $4fc8: $19
	sbc [hl]                                         ; $4fc9: $9e
	rlca                                             ; $4fca: $07
	inc bc                                           ; $4fcb: $03
	xor c                                            ; $4fcc: $a9
	and h                                            ; $4fcd: $a4
	ld d, a                                          ; $4fce: $57
	db $fc                                           ; $4fcf: $fc
	ld b, $61                                        ; $4fd0: $06 $61
	nop                                              ; $4fd2: $00
	sub h                                            ; $4fd3: $94
	nop                                              ; $4fd4: $00
	jr nc, jr_05b_5047                               ; $4fd5: $30 $70

	ldh [$c0], a                                     ; $4fd7: $e0 $c0
	add b                                            ; $4fd9: $80
	nop                                              ; $4fda: $00
	add b                                            ; $4fdb: $80
	nop                                              ; $4fdc: $00
	rst GetHLinHL                                          ; $4fdd: $cf
	adc a                                            ; $4fde: $8f
	ld a, e                                          ; $4fdf: $7b
	ld h, e                                          ; $4fe0: $63
	ld a, e                                          ; $4fe1: $7b
	jr nc, jr_05b_5063                               ; $4fe2: $30 $7f

	call nc, $0181                                   ; $4fe4: $d4 $81 $01
	dec b                                            ; $4fe7: $05
	inc d                                            ; $4fe8: $14
	inc d                                            ; $4fe9: $14
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	ccf                                              ; $4fec: $3f
	ld a, [hl-]                                      ; $4fed: $3a
	ld a, $3a                                        ; $4fee: $3e $3a
	ld a, [hl+]                                      ; $4ff0: $2a
	jr z, jr_05b_502b                                ; $4ff1: $28 $38

	jr nc, @+$06                                     ; $4ff3: $30 $04

	add b                                            ; $4ff5: $80
	add h                                            ; $4ff6: $84
	inc c                                            ; $4ff7: $0c
	ld [$282c], sp                                   ; $4ff8: $08 $2c $28
	xor b                                            ; $4ffb: $a8
	ldh [rLCDC], a                                   ; $4ffc: $e0 $40
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	inc d                                            ; $5000: $14
	db $10                                           ; $5001: $10
	ld d, h                                          ; $5002: $54
	ld d, h                                          ; $5003: $54
	pop af                                           ; $5004: $f1
	sbc e                                            ; $5005: $9b
	jr jr_05b_500b                                   ; $5006: $18 $03

	ld [bc], a                                       ; $5008: $02
	ld [bc], a                                       ; $5009: $02
	db $fd                                           ; $500a: $fd

jr_05b_500b:
	sub e                                            ; $500b: $93
	rra                                              ; $500c: $1f
	inc bc                                           ; $500d: $03
	ld bc, $0501                                     ; $500e: $01 $01 $05
	add hl, hl                                       ; $5011: $29
	ld d, c                                          ; $5012: $51
	and c                                            ; $5013: $a1
	ld [$b9c6], sp                                   ; $5014: $08 $c6 $b9
	add a                                            ; $5017: $87
	db $dd                                           ; $5018: $dd
	add [hl]                                         ; $5019: $86
	ld a, e                                          ; $501a: $7b
	add l                                            ; $501b: $85
	sbc [hl]                                         ; $501c: $9e
	ld c, a                                          ; $501d: $4f
	db $dd                                           ; $501e: $dd
	ld c, b                                          ; $501f: $48
	rst SubAFromDE                                          ; $5020: $df
	jr nz, jr_05b_4fbd                               ; $5021: $20 $9a

	ld [de], a                                       ; $5023: $12
	sub d                                            ; $5024: $92
	ld c, c                                          ; $5025: $49
	add hl, sp                                       ; $5026: $39
	inc c                                            ; $5027: $0c
	ld [hl], d                                       ; $5028: $72
	ret nc                                           ; $5029: $d0

	ld a, b                                          ; $502a: $78

jr_05b_502b:
	sub b                                            ; $502b: $90
	sub [hl]                                         ; $502c: $96
	dec hl                                           ; $502d: $2b
	ld bc, $1000                                     ; $502e: $01 $00 $10
	db $10                                           ; $5031: $10
	add hl, bc                                       ; $5032: $09
	add hl, bc                                       ; $5033: $09
	adc d                                            ; $5034: $8a
	ld c, e                                          ; $5035: $4b
	jp c, Jump_05b_7dff                              ; $5036: $da $ff $7d

	ld e, d                                          ; $5039: $5a
	sbc b                                            ; $503a: $98
	ret nz                                           ; $503b: $c0

	or b                                             ; $503c: $b0
	db $ec                                           ; $503d: $ec
	ld a, e                                          ; $503e: $7b
	db $fc                                           ; $503f: $fc
	cp $fd                                           ; $5040: $fe $fd
	sbc $ff                                          ; $5042: $de $ff
	sbc d                                            ; $5044: $9a
	sbc a                                            ; $5045: $9f
	add a                                            ; $5046: $87

jr_05b_5047:
	inc bc                                           ; $5047: $03
	ld bc, $7a00                                     ; $5048: $01 $00 $7a
	ld c, e                                          ; $504b: $4b
	sbc d                                            ; $504c: $9a
	rrca                                             ; $504d: $0f
	ld c, $87                                        ; $504e: $0e $87
	ld b, [hl]                                       ; $5050: $46
	inc h                                            ; $5051: $24
	ld a, c                                          ; $5052: $79
	jr @-$61                                         ; $5053: $18 $9d

	ld sp, hl                                        ; $5055: $f9
	ei                                               ; $5056: $fb
	sbc $ff                                          ; $5057: $de $ff
	sub a                                            ; $5059: $97
	add $88                                          ; $505a: $c6 $88
	ld sp, $8f41                                     ; $505c: $31 $41 $8f
	inc a                                            ; $505f: $3c
	ld [hl], b                                       ; $5060: $70
	ret nz                                           ; $5061: $c0

	ld a, e                                          ; $5062: $7b

jr_05b_5063:
	push de                                          ; $5063: $d5
	ld a, a                                          ; $5064: $7f
	cp $90                                           ; $5065: $fe $90
	ld hl, sp-$40                                    ; $5067: $f8 $c0
	add b                                            ; $5069: $80
	dec d                                            ; $506a: $15
	ld a, e                                          ; $506b: $7b
	rst AddAOntoHL                                          ; $506c: $ef

Jump_05b_506d:
	cp [hl]                                          ; $506d: $be
	ld a, $1f                                        ; $506e: $3e $1f
	rrca                                             ; $5070: $0f
	rlca                                             ; $5071: $07
	xor $9c                                          ; $5072: $ee $9c
	ld [hl], b                                       ; $5074: $70
	ret nz                                           ; $5075: $c0

	db $fd                                           ; $5076: $fd
	sub a                                            ; $5077: $97
	ld b, h                                          ; $5078: $44
	and h                                            ; $5079: $a4
	jp nc, Jump_05b_77ea                             ; $507a: $d2 $ea $77

	dec a                                            ; $507d: $3d
	sbc a                                            ; $507e: $9f
	rst GetHLinHL                                          ; $507f: $cf
	ld a, e                                          ; $5080: $7b
	and e                                            ; $5081: $a3
	ld a, a                                          ; $5082: $7f
	ld [$187a], a                                    ; $5083: $ea $7a $18
	rst SubAFromDE                                          ; $5086: $df
	ld [hl], b                                       ; $5087: $70
	sub h                                            ; $5088: $94
	jr c, jr_05b_50e5                                ; $5089: $38 $5a

	ld a, [hl+]                                      ; $508b: $2a
	ld de, $c889                                     ; $508c: $11 $89 $c8
	adc a                                            ; $508f: $8f
	adc a                                            ; $5090: $8f
	rst JumpTable                                          ; $5091: $c7
	rst SubAFromBC                                          ; $5092: $e7
	rst FarCall                                          ; $5093: $f7
	halt                                             ; $5094: $76
	ld e, a                                          ; $5095: $5f
	sbc $ff                                          ; $5096: $de $ff
	rst SubAFromDE                                          ; $5098: $df
	ld l, a                                          ; $5099: $6f
	sbc l                                            ; $509a: $9d
	daa                                              ; $509b: $27
	and a                                            ; $509c: $a7
	db $fd                                           ; $509d: $fd
	rst SubAFromDE                                          ; $509e: $df
	sub b                                            ; $509f: $90
	rst SubAFromDE                                          ; $50a0: $df
	ret c                                            ; $50a1: $d8

	ld a, e                                          ; $50a2: $7b
	cp b                                             ; $50a3: $b8
	sub d                                            ; $50a4: $92
	ld hl, sp-$0d                                    ; $50a5: $f8 $f3
	di                                               ; $50a7: $f3
	rst SubAFromBC                                          ; $50a8: $e7
	rst SubAFromBC                                          ; $50a9: $e7
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	ld bc, $0e07                                     ; $50ac: $01 $07 $0e
	ld c, $1c                                        ; $50af: $0e $1c
	inc e                                            ; $50b1: $1c
	ld l, e                                          ; $50b2: $6b
	db $dd                                           ; $50b3: $dd
	ld a, b                                          ; $50b4: $78
	jp Jump_05b_506d                                 ; $50b5: $c3 $6d $50


	sbc d                                            ; $50b8: $9a
	db $f4                                           ; $50b9: $f4
	ld a, [$bebd]                                    ; $50ba: $fa $bd $be
	sbc a                                            ; $50bd: $9f
	ld a, d                                          ; $50be: $7a
	jr @+$81                                         ; $50bf: $18 $7f

	sbc [hl]                                         ; $50c1: $9e
	sub c                                            ; $50c2: $91
	ld b, e                                          ; $50c3: $43
	ld b, c                                          ; $50c4: $41
	ld h, b                                          ; $50c5: $60
	jr nc, jr_05b_50d8                               ; $50c6: $30 $10

	jr @+$18                                         ; $50c8: $18 $16

	inc d                                            ; $50ca: $14
	ld d, h                                          ; $50cb: $54
	ret nc                                           ; $50cc: $d0

	ld b, b                                          ; $50cd: $40
	ret nz                                           ; $50ce: $c0

	and b                                            ; $50cf: $a0
	and b                                            ; $50d0: $a0
	sbc $28                                          ; $50d1: $de $28
	sbc l                                            ; $50d3: $9d
	xor b                                            ; $50d4: $a8
	ld hl, sp-$22                                    ; $50d5: $f8 $de
	ld a, b                                          ; $50d7: $78

jr_05b_50d8:
	ld a, [hl]                                       ; $50d8: $7e
	ld a, [hl-]                                      ; $50d9: $3a
	sbc d                                            ; $50da: $9a
	rlca                                             ; $50db: $07
	dec c                                            ; $50dc: $0d
	add hl, de                                       ; $50dd: $19
	ld de, $742f                                     ; $50de: $11 $2f $74
	ld h, c                                          ; $50e1: $61
	rst $38                                          ; $50e2: $ff
	sbc h                                            ; $50e3: $9c
	inc h                                            ; $50e4: $24

jr_05b_50e5:
	ld b, b                                          ; $50e5: $40
	sub c                                            ; $50e6: $91
	ld sp, hl                                        ; $50e7: $f9
	reti                                             ; $50e8: $d9


	rst $38                                          ; $50e9: $ff
	sbc $01                                          ; $50ea: $de $01
	db $fc                                           ; $50ec: $fc
	sub h                                            ; $50ed: $94
	jr nz, jr_05b_50f2                               ; $50ee: $20 $02

	ld h, $0f                                        ; $50f0: $26 $0f

jr_05b_50f2:
	ld de, $4121                                     ; $50f2: $11 $21 $41
	add c                                            ; $50f5: $81
	xor b                                            ; $50f6: $a8
	xor b                                            ; $50f7: $a8
	and b                                            ; $50f8: $a0
	ld a, e                                          ; $50f9: $7b
	and l                                            ; $50fa: $a5
	sub a                                            ; $50fb: $97
	add b                                            ; $50fc: $80
	ld b, b                                          ; $50fd: $40
	ld d, h                                          ; $50fe: $54
	ld d, h                                          ; $50ff: $54
	ld e, h                                          ; $5100: $5c
	ldh a, [$c0]                                     ; $5101: $f0 $c0
	ld b, b                                          ; $5103: $40
	ld a, d                                          ; $5104: $7a
	cp e                                             ; $5105: $bb
	db $fd                                           ; $5106: $fd
	ld a, c                                          ; $5107: $79
	db $fc                                           ; $5108: $fc
	ld a, e                                          ; $5109: $7b
	db $fd                                           ; $510a: $fd
	sub b                                            ; $510b: $90
	ld a, [bc]                                       ; $510c: $0a
	inc d                                            ; $510d: $14
	jr nz, jr_05b_5150                               ; $510e: $20 $40

	nop                                              ; $5110: $00
	ld [bc], a                                       ; $5111: $02
	ld [de], a                                       ; $5112: $12
	ld a, [hl+]                                      ; $5113: $2a
	ld e, d                                          ; $5114: $5a
	cp d                                             ; $5115: $ba
	ld a, d                                          ; $5116: $7a
	ld a, [$41fa]                                    ; $5117: $fa $fa $41
	add l                                            ; $511a: $85
	db $db                                           ; $511b: $db
	dec b                                            ; $511c: $05
	reti                                             ; $511d: $d9


	add [hl]                                         ; $511e: $86
	reti                                             ; $511f: $d9


	ld c, b                                          ; $5120: $48
	ld sp, hl                                        ; $5121: $f9
	sbc l                                            ; $5122: $9d
	ld d, l                                          ; $5123: $55
	ld l, e                                          ; $5124: $6b
	ld [hl], a                                       ; $5125: $77
	cp $86                                           ; $5126: $fe $86
	ld [hl], l                                       ; $5128: $75
	ccf                                              ; $5129: $3f
	db $eb                                           ; $512a: $eb
	dec a                                            ; $512b: $3d
	rra                                              ; $512c: $1f
	dec bc                                           ; $512d: $0b
	rrca                                             ; $512e: $0f
	rrca                                             ; $512f: $0f
	ld c, $1d                                        ; $5130: $0e $1d
	cp $fe                                           ; $5132: $fe $fe
	ld e, h                                          ; $5134: $5c
	db $fc                                           ; $5135: $fc
	ld e, b                                          ; $5136: $58
	ld hl, sp+$58                                    ; $5137: $f8 $58
	ldh a, [$fa]                                     ; $5139: $f0 $fa
	db $fc                                           ; $513b: $fc
	cp b                                             ; $513c: $b8
	ld [hl], h                                       ; $513d: $74
	xor b                                            ; $513e: $a8
	jr nc, jr_05b_5161                               ; $513f: $30 $20

	ld hl, sp-$71                                    ; $5141: $f8 $8f
	ld d, l                                          ; $5143: $55
	dec l                                            ; $5144: $2d
	ld a, [de]                                       ; $5145: $1a
	ld e, $1e                                        ; $5146: $1e $1e
	ld d, $16                                        ; $5148: $16 $16

jr_05b_514a:
	jr z, @+$41                                      ; $514a: $28 $3f

	rra                                              ; $514c: $1f
	ld a, [bc]                                       ; $514d: $0a
	ld a, [bc]                                       ; $514e: $0a
	inc c                                            ; $514f: $0c

jr_05b_5150:
	inc d                                            ; $5150: $14
	inc d                                            ; $5151: $14
	inc l                                            ; $5152: $2c
	pop af                                           ; $5153: $f1
	ld a, d                                          ; $5154: $7a
	sbc l                                            ; $5155: $9d
	db $f4                                           ; $5156: $f4
	sub a                                            ; $5157: $97
	and a                                            ; $5158: $a7
	db $d3                                           ; $5159: $d3
	jp hl                                            ; $515a: $e9


	ld [hl], b                                       ; $515b: $70
	jr z, jr_05b_5172                                ; $515c: $28 $14

	ld a, [de]                                       ; $515e: $1a
	dec c                                            ; $515f: $0d
	ld sp, hl                                        ; $5160: $f9

jr_05b_5161:
	sbc l                                            ; $5161: $9d
	db $e4                                           ; $5162: $e4
	ld a, [$5876]                                    ; $5163: $fa $76 $58
	ld a, [hl]                                       ; $5166: $7e
	or l                                             ; $5167: $b5
	ld a, a                                          ; $5168: $7f
	db $fd                                           ; $5169: $fd
	ld a, l                                          ; $516a: $7d
	or d                                             ; $516b: $b2
	db $fd                                           ; $516c: $fd
	sub [hl]                                         ; $516d: $96
	adc e                                            ; $516e: $8b
	ld b, h                                          ; $516f: $44
	inc h                                            ; $5170: $24
	ldh a, [c]                                       ; $5171: $f2

jr_05b_5172:
	rst AddAOntoHL                                          ; $5172: $ef
	ldh [$e0], a                                     ; $5173: $e0 $e0
	ld h, b                                          ; $5175: $60
	db $fc                                           ; $5176: $fc
	halt                                             ; $5177: $76
	cp b                                             ; $5178: $b8
	sbc $23                                          ; $5179: $de $23
	sub h                                            ; $517b: $94
	rst JumpTable                                          ; $517c: $c7
	add a                                            ; $517d: $87
	ld c, $0e                                        ; $517e: $0e $0e
	inc c                                            ; $5180: $0c
	ret z                                            ; $5181: $c8

	add hl, sp                                       ; $5182: $39
	ld a, [bc]                                       ; $5183: $0a
	jr c, jr_05b_51fe                                ; $5184: $38 $78

	ld sp, hl                                        ; $5186: $f9
	ld a, d                                          ; $5187: $7a
	ld h, b                                          ; $5188: $60
	ld a, [hl]                                       ; $5189: $7e
	call nz, $9f9d                                   ; $518a: $c4 $9d $9f
	ccf                                              ; $518d: $3f
	sbc $7f                                          ; $518e: $de $7f
	sbc d                                            ; $5190: $9a
	cp $c0                                           ; $5191: $fe $c0
	add b                                            ; $5193: $80
	ld h, b                                          ; $5194: $60
	ret nz                                           ; $5195: $c0

	sbc $80                                          ; $5196: $de $80
	adc h                                            ; $5198: $8c
	ld bc, $7f3f                                     ; $5199: $01 $3f $7f
	ld sp, hl                                        ; $519c: $f9
	db $fc                                           ; $519d: $fc
	cp $e1                                           ; $519e: $fe $e1

jr_05b_51a0:
	ld hl, sp+$1e                                    ; $51a0: $f8 $1e
	rrca                                             ; $51a2: $0f
	pop hl                                           ; $51a3: $e1
	ld c, $07                                        ; $51a4: $0e $07
	inc bc                                           ; $51a6: $03
	rra                                              ; $51a7: $1f
	rlca                                             ; $51a8: $07
	pop hl                                           ; $51a9: $e1
	ldh a, [$fe]                                     ; $51aa: $f0 $fe
	db $dd                                           ; $51ac: $dd
	jr nz, jr_05b_514a                               ; $51ad: $20 $9b

	and b                                            ; $51af: $a0
	ld h, b                                          ; $51b0: $60
	or b                                             ; $51b1: $b0
	rst SubAFromHL                                          ; $51b2: $d7
	db $dd                                           ; $51b3: $dd
	ldh a, [$df]                                     ; $51b4: $f0 $df
	ld hl, sp+$7f                                    ; $51b6: $f8 $7f
	and [hl]                                         ; $51b8: $a6
	sub h                                            ; $51b9: $94
	ld e, $34                                        ; $51ba: $1e $34
	ld l, h                                          ; $51bc: $6c
	ld e, b                                          ; $51bd: $58
	jr nc, jr_05b_51a0                               ; $51be: $30 $e0

	nop                                              ; $51c0: $00
	ret nz                                           ; $51c1: $c0

	ld hl, $8343                                     ; $51c2: $21 $43 $83
	ld a, b                                          ; $51c5: $78
	ldh a, [rPCM12]                                  ; $51c6: $f0 $76
	adc b                                            ; $51c8: $88
	ld c, [hl]                                       ; $51c9: $4e
	ret nz                                           ; $51ca: $c0

	ei                                               ; $51cb: $fb
	sub b                                            ; $51cc: $90
	or $ef                                           ; $51cd: $f6 $ef
	ld bc, $ab01                                     ; $51cf: $01 $01 $ab
	ld d, l                                          ; $51d2: $55
	xor e                                            ; $51d3: $ab
	rst $38                                          ; $51d4: $ff
	ld sp, hl                                        ; $51d5: $f9
	ldh a, [rLCDC]                                   ; $51d6: $f0 $40
	ld b, b                                          ; $51d8: $40
	add b                                            ; $51d9: $80
	ld b, b                                          ; $51da: $40
	add b                                            ; $51db: $80
	ld a, d                                          ; $51dc: $7a
	ld h, l                                          ; $51dd: $65
	ld a, [hl]                                       ; $51de: $7e
	ret nc                                           ; $51df: $d0

	sub d                                            ; $51e0: $92
	ld d, h                                          ; $51e1: $54
	jr z, jr_05b_5234                                ; $51e2: $28 $50

	ld h, c                                          ; $51e4: $61
	jp $0b07                                         ; $51e5: $c3 $07 $0b


	rla                                              ; $51e8: $17
	dec hl                                           ; $51e9: $2b
	ld d, a                                          ; $51ea: $57
	ld l, $55                                        ; $51eb: $2e $55
	xor d                                            ; $51ed: $aa
	ld a, e                                          ; $51ee: $7b
	ld h, h                                          ; $51ef: $64
	sbc c                                            ; $51f0: $99
	inc b                                            ; $51f1: $04
	ld [$2a91], sp                                   ; $51f2: $08 $91 $2a
	ld d, l                                          ; $51f5: $55
	cp $de                                           ; $51f6: $fe $de

jr_05b_51f8:
	ld a, [$d29a]                                    ; $51f8: $fa $9a $d2
	xor d                                            ; $51fb: $aa
	ld d, d                                          ; $51fc: $52
	xor d                                            ; $51fd: $aa

jr_05b_51fe:
	ld d, d                                          ; $51fe: $52
	sbc $05                                          ; $51ff: $de $05
	sbc d                                            ; $5201: $9a
	dec l                                            ; $5202: $2d
	ld d, l                                          ; $5203: $55
	xor l                                            ; $5204: $ad
	ld d, l                                          ; $5205: $55
	xor l                                            ; $5206: $ad
	db $db                                           ; $5207: $db
	add [hl]                                         ; $5208: $86
	ld a, l                                          ; $5209: $7d
	ld a, l                                          ; $520a: $7d
	jp c, $9e48                                      ; $520b: $da $48 $9e

	ld c, c                                          ; $520e: $49
	ei                                               ; $520f: $fb
	ld a, a                                          ; $5210: $7f
	adc a                                            ; $5211: $8f
	call c, $df3f                                    ; $5212: $dc $3f $df
	rra                                              ; $5215: $1f
	sbc h                                            ; $5216: $9c
	rst $38                                          ; $5217: $ff
	ld e, $14                                        ; $5218: $1e $14
	db $dd                                           ; $521a: $dd
	db $10                                           ; $521b: $10
	rst SubAFromDE                                          ; $521c: $df
	jr jr_05b_51f8                                   ; $521d: $18 $d9

	ldh a, [rPCM12]                                  ; $521f: $f0 $76
	ld [hl], d                                       ; $5221: $72
	ld l, d                                          ; $5222: $6a
	db $ed                                           ; $5223: $ed
	ld [hl], e                                       ; $5224: $73
	ld hl, sp-$64                                    ; $5225: $f8 $9c
	ld e, b                                          ; $5227: $58
	ld [hl], b                                       ; $5228: $70
	or b                                             ; $5229: $b0
	ld a, e                                          ; $522a: $7b
	dec [hl]                                         ; $522b: $35
	rst SubAFromDE                                          ; $522c: $df
	ld [bc], a                                       ; $522d: $02
	sub a                                            ; $522e: $97
	ld c, h                                          ; $522f: $4c
	ld e, h                                          ; $5230: $5c
	xor h                                            ; $5231: $ac
	inc l                                            ; $5232: $2c
	ld c, h                                          ; $5233: $4c

jr_05b_5234:
	adc h                                            ; $5234: $8c
	inc c                                            ; $5235: $0c
	inc c                                            ; $5236: $0c
	pop hl                                           ; $5237: $e1
	sbc h                                            ; $5238: $9c
	ld b, $03                                        ; $5239: $06 $03
	nop                                              ; $523b: $00
	ld [hl], a                                       ; $523c: $77
	ret                                              ; $523d: $c9


	ld l, e                                          ; $523e: $6b
	cp l                                             ; $523f: $bd
	rst SubAFromDE                                          ; $5240: $df
	ld [bc], a                                       ; $5241: $02
	sbc [hl]                                         ; $5242: $9e
	inc b                                            ; $5243: $04
	ld a, b                                          ; $5244: $78
	ldh a, [c]                                       ; $5245: $f2
	ld a, a                                          ; $5246: $7f
	ld c, [hl]                                       ; $5247: $4e
	ld a, l                                          ; $5248: $7d
	add $f9                                          ; $5249: $c6 $f9
	add [hl]                                         ; $524b: $86
	ld h, b                                          ; $524c: $60
	ld h, e                                          ; $524d: $63
	ld a, l                                          ; $524e: $7d
	ld a, [$7b60]                                    ; $524f: $fa $60 $7b
	halt                                             ; $5252: $76
	ld c, b                                          ; $5253: $48
	ccf                                              ; $5254: $3f
	inc a                                            ; $5255: $3c
	jr nz, jr_05b_5298                               ; $5256: $20 $40

	ld b, b                                          ; $5258: $40
	ld b, c                                          ; $5259: $41
	ld b, [hl]                                       ; $525a: $46
	ld c, b                                          ; $525b: $48
	ld a, h                                          ; $525c: $7c
	db $ec                                           ; $525d: $ec
	inc b                                            ; $525e: $04
	and h                                            ; $525f: $a4
	ld e, $f6                                        ; $5260: $1e $f6
	inc hl                                           ; $5262: $23
	ld b, e                                          ; $5263: $43
	add a                                            ; $5264: $87
	sbc $07                                          ; $5265: $de $07

jr_05b_5267:
	sub a                                            ; $5267: $97
	rra                                              ; $5268: $1f
	rst FarCall                                          ; $5269: $f7
	inc hl                                           ; $526a: $23
	ld b, e                                          ; $526b: $43
	inc bc                                           ; $526c: $03
	inc c                                            ; $526d: $0c
	db $10                                           ; $526e: $10
	jr nz, jr_05b_52e8                               ; $526f: $20 $77

	rra                                              ; $5271: $1f
	sbc h                                            ; $5272: $9c
	rst $38                                          ; $5273: $ff
	db $fc                                           ; $5274: $fc
	ldh a, [$78]                                     ; $5275: $f0 $78
	ld [hl], a                                       ; $5277: $77
	ld a, a                                          ; $5278: $7f
	ld hl, sp-$64                                    ; $5279: $f8 $9c
	jr jr_05b_5281                                   ; $527b: $18 $04

	ld [bc], a                                       ; $527d: $02
	ld [hl], e                                       ; $527e: $73
	or h                                             ; $527f: $b4
	ld a, [hl]                                       ; $5280: $7e

jr_05b_5281:
	jp Jump_05b_566e                                 ; $5281: $c3 $6e $56


	adc b                                            ; $5284: $88
	rst AddAOntoHL                                          ; $5285: $ef
	add hl, hl                                       ; $5286: $29
	jr z, jr_05b_52a1                                ; $5287: $28 $18

	sbc b                                            ; $5289: $98
	ld c, b                                          ; $528a: $48
	jr c, jr_05b_529d                                ; $528b: $38 $10

	jr jr_05b_5267                                   ; $528d: $18 $d8

	ret c                                            ; $528f: $d8

	rst AddAOntoHL                                          ; $5290: $ef
	add sp, $78                                      ; $5291: $e8 $78
	jr z, @+$12                                      ; $5293: $28 $10

	add b                                            ; $5295: $80
	nop                                              ; $5296: $00
	ld b, b                                          ; $5297: $40

jr_05b_5298:
	ld b, b                                          ; $5298: $40
	ld hl, $7f67                                     ; $5299: $21 $67 $7f
	ld a, b                                          ; $529c: $78

jr_05b_529d:
	ld d, h                                          ; $529d: $54
	sbc $ff                                          ; $529e: $de $ff
	sub l                                            ; $52a0: $95

jr_05b_52a1:
	ld a, [hl]                                       ; $52a1: $7e
	ld a, h                                          ; $52a2: $7c
	ld b, b                                          ; $52a3: $40
	jr nz, @+$22                                     ; $52a4: $20 $20

	ld h, b                                          ; $52a6: $60
	ldh [$c1], a                                     ; $52a7: $e0 $c1
	rst JumpTable                                          ; $52a9: $c7
	ret z                                            ; $52aa: $c8

	ld a, c                                          ; $52ab: $79
	dec d                                            ; $52ac: $15
	ld a, d                                          ; $52ad: $7a
	ld c, b                                          ; $52ae: $48
	rst SubAFromDE                                          ; $52af: $df
	ld a, a                                          ; $52b0: $7f
	sub h                                            ; $52b1: $94
	ld a, b                                          ; $52b2: $78
	sbc $e7                                          ; $52b3: $de $e7
	rst $38                                          ; $52b5: $ff
	rrca                                             ; $52b6: $0f
	nop                                              ; $52b7: $00
	ld bc, $c03e                                     ; $52b8: $01 $3e $c0
	ldh [$f8], a                                     ; $52bb: $e0 $f8
	ld [hl], h                                       ; $52bd: $74
	and d                                            ; $52be: $a2
	sub a                                            ; $52bf: $97
	pop bc                                           ; $52c0: $c1
	ld a, $04                                        ; $52c1: $3e $04
	ret nc                                           ; $52c3: $d0

	sbc a                                            ; $52c4: $9f
	ldh [rIF], a                                     ; $52c5: $e0 $0f
	ldh a, [$78]                                     ; $52c7: $f0 $78
	ld h, c                                          ; $52c9: $61
	sbc e                                            ; $52ca: $9b
	rrca                                             ; $52cb: $0f
	rst $38                                          ; $52cc: $ff
	rst $38                                          ; $52cd: $ff
	ldh a, [$7b]                                     ; $52ce: $f0 $7b
	rst FarCall                                          ; $52d0: $f7
	rst $38                                          ; $52d1: $ff
	sbc l                                            ; $52d2: $9d
	rlca                                             ; $52d3: $07
	ld hl, sp+$7b                                    ; $52d4: $f8 $7b
	db $fd                                           ; $52d6: $fd
	sbc e                                            ; $52d7: $9b
	rlca                                             ; $52d8: $07
	rst $38                                          ; $52d9: $ff
	rst $38                                          ; $52da: $ff
	ld hl, sp+$73                                    ; $52db: $f8 $73
	rst FarCall                                          ; $52dd: $f7
	sub l                                            ; $52de: $95
	ld [bc], a                                       ; $52df: $02
	inc a                                            ; $52e0: $3c
	ret nz                                           ; $52e1: $c0

Jump_05b_52e2:
	inc bc                                           ; $52e2: $03
	ld a, h                                          ; $52e3: $7c
	add e                                            ; $52e4: $83
	ld a, a                                          ; $52e5: $7f
	db $fd                                           ; $52e6: $fd
	db $fd                                           ; $52e7: $fd

jr_05b_52e8:
	jp $f777                                         ; $52e8: $c3 $77 $f7


	ld a, a                                          ; $52eb: $7f
	and d                                            ; $52ec: $a2
	ld a, [hl]                                       ; $52ed: $7e
	inc a                                            ; $52ee: $3c
	sub h                                            ; $52ef: $94
	ld e, $e1                                        ; $52f0: $1e $e1
	ld e, $55                                        ; $52f2: $1e $55
	ld a, [$5e55]                                    ; $52f4: $fa $55 $5e
	ldh [rSB], a                                     ; $52f7: $e0 $01
	ld e, $e0                                        ; $52f9: $1e $e0
	ld l, [hl]                                       ; $52fb: $6e
	push bc                                          ; $52fc: $c5
	sbc d                                            ; $52fd: $9a
	ld c, b                                          ; $52fe: $48
	xor [hl]                                         ; $52ff: $ae
	ld b, [hl]                                       ; $5300: $46
	and d                                            ; $5301: $a2
	ld b, d                                          ; $5302: $42
	ld a, d                                          ; $5303: $7a
	push bc                                          ; $5304: $c5
	sbc [hl]                                         ; $5305: $9e
	rla                                              ; $5306: $17
	db $dd                                           ; $5307: $dd
	ld de, $0c87                                     ; $5308: $11 $87 $0c
	ld c, $07                                        ; $530b: $0e $07
	dec b                                            ; $530d: $05
	and d                                            ; $530e: $a2
	sub c                                            ; $530f: $91
	db $10                                           ; $5310: $10
	db $10                                           ; $5311: $10
	ld hl, sp-$08                                    ; $5312: $f8 $f8
	db $f4                                           ; $5314: $f4
	or $1b                                           ; $5315: $f6 $1b
	add hl, bc                                       ; $5317: $09
	adc b                                            ; $5318: $88
	adc b                                            ; $5319: $88
	nop                                              ; $531a: $00
	xor b                                            ; $531b: $a8
	push af                                          ; $531c: $f5
	cp $07                                           ; $531d: $fe $07
	nop                                              ; $531f: $00
	add b                                            ; $5320: $80
	ld b, e                                          ; $5321: $43
	db $fd                                           ; $5322: $fd
	ld a, e                                          ; $5323: $7b
	adc l                                            ; $5324: $8d
	sub l                                            ; $5325: $95
	ld a, h                                          ; $5326: $7c
	ld [bc], a                                       ; $5327: $02
	nop                                              ; $5328: $00
	ld b, b                                          ; $5329: $40
	xor b                                            ; $532a: $a8
	push af                                          ; $532b: $f5
	db $fc                                           ; $532c: $fc
	ld a, h                                          ; $532d: $7c
	cp $0c                                           ; $532e: $fe $0c
	sbc $06                                          ; $5330: $de $06
	sbc h                                            ; $5332: $9c
	ld [bc], a                                       ; $5333: $02
	inc bc                                           ; $5334: $03
	add e                                            ; $5335: $83
	ld [hl], e                                       ; $5336: $73
	inc a                                            ; $5337: $3c
	sbc e                                            ; $5338: $9b
	ld b, h                                          ; $5339: $44
	xor d                                            ; $533a: $aa
	rst $38                                          ; $533b: $ff
	ld a, a                                          ; $533c: $7f
	ld a, [$367a]                                    ; $533d: $fa $7a $36
	ld a, [hl]                                       ; $5340: $7e
	rst GetHLinHL                                          ; $5341: $cf
	sbc e                                            ; $5342: $9b
	inc [hl]                                         ; $5343: $34
	adc [hl]                                         ; $5344: $8e
	ld b, a                                          ; $5345: $47
	and e                                            ; $5346: $a3
	ld sp, hl                                        ; $5347: $f9
	sub [hl]                                         ; $5348: $96
	ld de, $f4e8                                     ; $5349: $11 $e8 $f4
	xor b                                            ; $534c: $a8
	inc d                                            ; $534d: $14
	ld [bc], a                                       ; $534e: $02
	ld b, b                                          ; $534f: $40
	ldh [rSC], a                                     ; $5350: $e0 $02
	ld l, d                                          ; $5352: $6a
	ld a, d                                          ; $5353: $7a
	add b                                            ; $5354: $80
	db $10                                           ; $5355: $10
	sub d                                            ; $5356: $92
	ret                                              ; $5357: $c9


	ld h, h                                          ; $5358: $64
	ld sp, $0e1a                                     ; $5359: $31 $1a $0e
	inc b                                            ; $535c: $04
	ld [$060c], sp                                   ; $535d: $08 $0c $06
	add e                                            ; $5360: $83
	ld b, e                                          ; $5361: $43
	ld [hl+], a                                      ; $5362: $22
	ld [de], a                                       ; $5363: $12
	inc c                                            ; $5364: $0c
	ld d, b                                          ; $5365: $50
	ld h, c                                          ; $5366: $61
	ld b, e                                          ; $5367: $43
	add a                                            ; $5368: $87
	ld c, $1d                                        ; $5369: $0e $1d
	ccf                                              ; $536b: $3f
	ld a, h                                          ; $536c: $7c
	ld d, b                                          ; $536d: $50
	ld h, b                                          ; $536e: $60
	ld b, c                                          ; $536f: $41
	add c                                            ; $5370: $81
	ld [bc], a                                       ; $5371: $02
	inc b                                            ; $5372: $04
	jr @-$7e                                         ; $5373: $18 $80

	jr c, @-$37                                      ; $5375: $38 $c7

	adc a                                            ; $5377: $8f
	sbc a                                            ; $5378: $9f
	ld a, $3c                                        ; $5379: $3e $3c
	ld a, c                                          ; $537b: $79
	ld [hl], e                                       ; $537c: $73
	rst $38                                          ; $537d: $ff
	add e                                            ; $537e: $83
	add d                                            ; $537f: $82
	ld [bc], a                                       ; $5380: $02
	inc b                                            ; $5381: $04
	ld [$2110], sp                                   ; $5382: $08 $10 $21
	ld h, e                                          ; $5385: $63
	rlca                                             ; $5386: $07
	rra                                              ; $5387: $1f
	inc a                                            ; $5388: $3c
	ld h, h                                          ; $5389: $64
	push bc                                          ; $538a: $c5
	ret z                                            ; $538b: $c8

	ld c, c                                          ; $538c: $49
	ld c, d                                          ; $538d: $4a
	nop                                              ; $538e: $00
	rrca                                             ; $538f: $0f
	ccf                                              ; $5390: $3f
	ccf                                              ; $5391: $3f
	ld a, [hl]                                       ; $5392: $7e
	rst $38                                          ; $5393: $ff
	add e                                            ; $5394: $83
	cp $fd                                           ; $5395: $fe $fd
	ld hl, sp-$02                                    ; $5397: $f8 $fe
	rrca                                             ; $5399: $0f
	add a                                            ; $539a: $87
	inc bc                                           ; $539b: $03
	sub c                                            ; $539c: $91
	jr jr_05b_53d7                                   ; $539d: $18 $38

	nop                                              ; $539f: $00
	ldh a, [$f8]                                     ; $53a0: $f0 $f8
	ld a, h                                          ; $53a2: $7c
	cp $6f                                           ; $53a3: $fe $6f
	rst SubAFromBC                                          ; $53a5: $e7
	rst JumpTable                                          ; $53a6: $c7
	ld e, $11                                        ; $53a7: $1e $11
	ld [$8888], sp                                   ; $53a9: $08 $88 $88
	call nz, $c6c4                                   ; $53ac: $c4 $c4 $c6
	ld de, $de1e                                     ; $53af: $11 $1e $de
	ld [$0494], sp                                   ; $53b2: $08 $94 $04
	add h                                            ; $53b5: $84
	add d                                            ; $53b6: $82
	ld a, a                                          ; $53b7: $7f
	rst $38                                          ; $53b8: $ff
	cpl                                              ; $53b9: $2f
	ld e, a                                          ; $53ba: $5f
	dec sp                                           ; $53bb: $3b
	ld d, a                                          ; $53bc: $57
	cpl                                              ; $53bd: $2f
	rla                                              ; $53be: $17
	ld a, e                                          ; $53bf: $7b
	ld [hl], a                                       ; $53c0: $77
	db $fc                                           ; $53c1: $fc
	sbc h                                            ; $53c2: $9c

jr_05b_53c3:
	add sp, -$11                                     ; $53c3: $e8 $ef
	rst AddAOntoHL                                          ; $53c5: $ef
	sbc $df                                          ; $53c6: $de $df
	sbc d                                            ; $53c8: $9a
	sbc a                                            ; $53c9: $9f
	ld e, a                                          ; $53ca: $5f
	scf                                              ; $53cb: $37
	db $10                                           ; $53cc: $10
	db $10                                           ; $53cd: $10
	call c, Call_05b_7e20                            ; $53ce: $dc $20 $7e
	push bc                                          ; $53d1: $c5
	sbc [hl]                                         ; $53d2: $9e
	pop hl                                           ; $53d3: $e1
	ld a, c                                          ; $53d4: $79
	ld l, d                                          ; $53d5: $6a
	rst SubAFromDE                                          ; $53d6: $df

jr_05b_53d7:
	rst $38                                          ; $53d7: $ff
	sbc [hl]                                         ; $53d8: $9e
	ret nz                                           ; $53d9: $c0

	ld h, a                                          ; $53da: $67
	ld bc, $f273                                     ; $53db: $01 $73 $f2
	rst SubAFromDE                                          ; $53de: $df
	rst $38                                          ; $53df: $ff
	sbc [hl]                                         ; $53e0: $9e
	rra                                              ; $53e1: $1f
	ld [hl], e                                       ; $53e2: $73
	ldh a, [c]                                       ; $53e3: $f2
	ld b, l                                          ; $53e4: $45
	ld e, b                                          ; $53e5: $58
	ld a, e                                          ; $53e6: $7b
	ldh a, [$98]                                     ; $53e7: $f0 $98
	db $fd                                           ; $53e9: $fd
	rst $38                                          ; $53ea: $ff
	push af                                          ; $53eb: $f5
	rst $38                                          ; $53ec: $ff
	push de                                          ; $53ed: $d5
	rst $38                                          ; $53ee: $ff
	push de                                          ; $53ef: $d5
	ld sp, hl                                        ; $53f0: $f9
	ld a, [hl]                                       ; $53f1: $7e
	add $9e                                          ; $53f2: $c6 $9e
	xor d                                            ; $53f4: $aa
	ld [hl], a                                       ; $53f5: $77
	cp $9e                                           ; $53f6: $fe $9e
	ld d, h                                          ; $53f8: $54
	ld a, [$0180]                                    ; $53f9: $fa $80 $01
	and d                                            ; $53fc: $a2
	ld d, [hl]                                       ; $53fd: $56
	adc h                                            ; $53fe: $8c
	inc h                                            ; $53ff: $24
	and b                                            ; $5400: $a0
	ld a, [bc]                                       ; $5401: $0a
	add c                                            ; $5402: $81
	ld d, $11                                        ; $5403: $16 $11
	ld hl, $4222                                     ; $5405: $21 $22 $42
	ld b, h                                          ; $5408: $44
	ld b, l                                          ; $5409: $45
	ld c, [hl]                                       ; $540a: $4e
	ld c, b                                          ; $540b: $48
	db $10                                           ; $540c: $10
	ld [hl], b                                       ; $540d: $70
	ld d, h                                          ; $540e: $54
	ld d, e                                          ; $540f: $53

jr_05b_5410:
	inc d                                            ; $5410: $14
	jr nc, jr_05b_53c3                               ; $5411: $30 $b0

	db $10                                           ; $5413: $10
	adc b                                            ; $5414: $88
	adc b                                            ; $5415: $88
	adc e                                            ; $5416: $8b
	adc h                                            ; $5417: $8c
	ld c, b                                          ; $5418: $48
	ret z                                            ; $5419: $c8

	sbc b                                            ; $541a: $98
	ld c, b                                          ; $541b: $48
	jr z, jr_05b_5445                                ; $541c: $28 $27

	sub l                                            ; $541e: $95
	ld a, d                                          ; $541f: $7a
	adc e                                            ; $5420: $8b
	dec b                                            ; $5421: $05
	ld a, d                                          ; $5422: $7a
	dec c                                            ; $5423: $0d
	ld a, h                                          ; $5424: $7c
	or b                                             ; $5425: $b0
	ld a, l                                          ; $5426: $7d
	sub e                                            ; $5427: $93
	ld a, l                                          ; $5428: $7d
	or h                                             ; $5429: $b4
	ld a, a                                          ; $542a: $7f
	ld hl, sp-$80                                    ; $542b: $f8 $80
	cp $3e                                           ; $542d: $fe $3e
	ld c, a                                          ; $542f: $4f
	inc hl                                           ; $5430: $23
	adc c                                            ; $5431: $89
	ldh [c], a                                       ; $5432: $e2

jr_05b_5433:
	ld a, c                                          ; $5433: $79
	cp [hl]                                          ; $5434: $be
	ld bc, $30c1                                     ; $5435: $01 $c1 $30
	inc e                                            ; $5438: $1c
	ld b, $01                                        ; $5439: $06 $01
	add b                                            ; $543b: $80
	ret nz                                           ; $543c: $c0

	ld a, a                                          ; $543d: $7f
	ld a, a                                          ; $543e: $7f
	ccf                                              ; $543f: $3f
	ccf                                              ; $5440: $3f
	sbc a                                            ; $5441: $9f
	sbc a                                            ; $5442: $9f
	adc a                                            ; $5443: $8f
	rst GetHLinHL                                          ; $5444: $cf

jr_05b_5445:
	add b                                            ; $5445: $80
	add b                                            ; $5446: $80
	ret nz                                           ; $5447: $c0

	ret nz                                           ; $5448: $c0

	ld h, b                                          ; $5449: $60
	ld h, b                                          ; $544a: $60
	ld [hl], b                                       ; $544b: $70
	sub [hl]                                         ; $544c: $96
	jr nc, jr_05b_5410                               ; $544d: $30 $c1

	ldh [$f0], a                                     ; $544f: $e0 $f0
	cp b                                             ; $5451: $b8
	call c, $e7ce                                    ; $5452: $dc $ce $e7
	di                                               ; $5455: $f3
	ld sp, hl                                        ; $5456: $f9
	sbc d                                            ; $5457: $9a
	ld [hl], b                                       ; $5458: $70
	cp b                                             ; $5459: $b8
	ld d, h                                          ; $545a: $54
	ld a, [bc]                                       ; $545b: $0a
	dec b                                            ; $545c: $05
	ld [hl], d                                       ; $545d: $72
	xor b                                            ; $545e: $a8
	ei                                               ; $545f: $fb
	sbc c                                            ; $5460: $99
	inc c                                            ; $5461: $0c
	dec c                                            ; $5462: $0d
	add hl, bc                                       ; $5463: $09
	dec de                                           ; $5464: $1b
	dec de                                           ; $5465: $1b
	ld c, $7b                                        ; $5466: $0e $7b
	ld hl, sp-$21                                    ; $5468: $f8 $df
	ld [$11df], sp                                   ; $546a: $08 $df $11
	ld a, e                                          ; $546d: $7b
	ld hl, sp-$80                                    ; $546e: $f8 $80
	rst SubAFromDE                                          ; $5470: $df
	sub e                                            ; $5471: $93
	or c                                             ; $5472: $b1
	ld a, [hl-]                                      ; $5473: $3a
	ld a, l                                          ; $5474: $7d
	ld e, a                                          ; $5475: $5f
	ld c, a                                          ; $5476: $4f
	ld c, e                                          ; $5477: $4b
	ld e, h                                          ; $5478: $5c
	sbc a                                            ; $5479: $9f
	xor a                                            ; $547a: $af
	daa                                              ; $547b: $27
	ld b, [hl]                                       ; $547c: $46
	ld b, h                                          ; $547d: $44
	ld c, b                                          ; $547e: $48
	ld c, b                                          ; $547f: $48
	rst $38                                          ; $5480: $ff
	sbc [hl]                                         ; $5481: $9e
	ld a, d                                          ; $5482: $7a
	ld hl, sp-$08                                    ; $5483: $f8 $f8
	ldh a, [$b0]                                     ; $5485: $f0 $b0
	sub b                                            ; $5487: $90
	rst $38                                          ; $5488: $ff
	rst AddAOntoHL                                          ; $5489: $ef
	sbc a                                            ; $548a: $9f
	cpl                                              ; $548b: $2f
	cpl                                              ; $548c: $2f
	ld e, a                                          ; $548d: $5f
	cp a                                             ; $548e: $bf
	sub c                                            ; $548f: $91
	sbc a                                            ; $5490: $9f
	ld c, c                                          ; $5491: $49
	adc e                                            ; $5492: $8b
	and c                                            ; $5493: $a1
	jp Jump_05b_4327                                 ; $5494: $c3 $27 $43


	daa                                              ; $5497: $27
	ld b, e                                          ; $5498: $43
	cp $fc                                           ; $5499: $fe $fc
	sbc $bc                                          ; $549b: $de $bc
	ret c                                            ; $549d: $d8

	ld a, e                                          ; $549e: $7b
	cp $df                                           ; $549f: $fe $df
	jr c, jr_05b_5433                                ; $54a1: $38 $90

	ld a, c                                          ; $54a3: $79
	ld a, [$faf9]                                    ; $54a4: $fa $f9 $fa
	db $fd                                           ; $54a7: $fd
	ld a, [$c7c7]                                    ; $54a8: $fa $c7 $c7
	add [hl]                                         ; $54ab: $86
	dec b                                            ; $54ac: $05
	ld b, $05                                        ; $54ad: $06 $05
	ld [bc], a                                       ; $54af: $02
	dec b                                            ; $54b0: $05
	ld h, d                                          ; $54b1: $62
	sbc $63                                          ; $54b2: $de $63
	sbc d                                            ; $54b4: $9a
	halt                                             ; $54b5: $76
	ld [hl], $36                                     ; $54b6: $36 $36
	cp h                                             ; $54b8: $bc
	jp nz, $c1de                                     ; $54b9: $c2 $de $c1

	sbc b                                            ; $54bc: $98
	jp nz, $e2e2                                     ; $54bd: $c2 $e2 $e2

	ld h, h                                          ; $54c0: $64
	ld l, $15                                        ; $54c1: $2e $15
	ld a, [hl+]                                      ; $54c3: $2a
	ld [hl], e                                       ; $54c4: $73
	cp $f9                                           ; $54c5: $fe $f9
	sbc e                                            ; $54c7: $9b
	cp a                                             ; $54c8: $bf
	ccf                                              ; $54c9: $3f
	cp a                                             ; $54ca: $bf
	ccf                                              ; $54cb: $3f
	db $dd                                           ; $54cc: $dd
	ld a, a                                          ; $54cd: $7f
	db $dd                                           ; $54ce: $dd
	ld b, b                                          ; $54cf: $40
	db $dd                                           ; $54d0: $dd
	add b                                            ; $54d1: $80
	ld d, [hl]                                       ; $54d2: $56
	nop                                              ; $54d3: $00
	sbc l                                            ; $54d4: $9d
	ld [hl+], a                                      ; $54d5: $22
	dec h                                            ; $54d6: $25
	db $dd                                           ; $54d7: $dd
	ld d, l                                          ; $54d8: $55
	sbc [hl]                                         ; $54d9: $9e
	ld d, a                                          ; $54da: $57
	sbc $77                                          ; $54db: $de $77
	sbc l                                            ; $54dd: $9d
	ld [hl+], a                                      ; $54de: $22
	ld [hl], l                                       ; $54df: $75
	db $dd                                           ; $54e0: $dd
	ld d, l                                          ; $54e1: $55
	call c, Call_05b_7777                            ; $54e2: $dc $77 $77
	or $77                                           ; $54e5: $f6 $77
	db $ed                                           ; $54e7: $ed
	sbc h                                            ; $54e8: $9c
	ld [hl], a                                       ; $54e9: $77
	ld h, [hl]                                       ; $54ea: $66
	ld h, [hl]                                       ; $54eb: $66
	sbc $55                                          ; $54ec: $de $55
	sbc d                                            ; $54ee: $9a
	ld [hl], $67                                     ; $54ef: $36 $67
	ld [hl], d                                       ; $54f1: $72
	daa                                              ; $54f2: $27
	ld [hl+], a                                      ; $54f3: $22
	sbc $66                                          ; $54f4: $de $66
	ld a, e                                          ; $54f6: $7b
	or $9c                                           ; $54f7: $f6 $9c
	ld h, [hl]                                       ; $54f9: $66
	ld h, d                                          ; $54fa: $62
	ld [hl+], a                                      ; $54fb: $22
	ld [hl], a                                       ; $54fc: $77
	or $9d                                           ; $54fd: $f6 $9d
	ld h, e                                          ; $54ff: $63
	inc sp                                           ; $5500: $33
	sbc $66                                          ; $5501: $de $66
	sbc b                                            ; $5503: $98
	ld h, d                                          ; $5504: $62
	ld [hl], d                                       ; $5505: $72
	ld [hl], a                                       ; $5506: $77
	halt                                             ; $5507: $76
	ld h, [hl]                                       ; $5508: $66
	ld h, [hl]                                       ; $5509: $66
	ld [hl], $dd                                     ; $550a: $36 $dd
	ld h, [hl]                                       ; $550c: $66
	ld l, a                                          ; $550d: $6f
	push de                                          ; $550e: $d5
	ld h, a                                          ; $550f: $67
	or $7b                                           ; $5510: $f6 $7b
	ld [$f677], a                                    ; $5512: $ea $77 $f6
	sbc h                                            ; $5515: $9c
	ld [hl], d                                       ; $5516: $72
	ld [hl+], a                                      ; $5517: $22
	ld [hl+], a                                      ; $5518: $22
	ld a, e                                          ; $5519: $7b
	or $9b                                           ; $551a: $f6 $9b
	ld h, l                                          ; $551c: $65
	ld d, h                                          ; $551d: $54
	ld b, l                                          ; $551e: $45
	ld [hl], a                                       ; $551f: $77
	sbc $22                                          ; $5520: $de $22
	sbc [hl]                                         ; $5522: $9e
	ld h, $7b                                        ; $5523: $26 $7b
	pop bc                                           ; $5525: $c1
	ld a, e                                          ; $5526: $7b
	or $8c                                           ; $5527: $f6 $8c
	adc d                                            ; $5529: $8a
	db $fc                                           ; $552a: $fc
	sbc h                                            ; $552b: $9c
	dec de                                           ; $552c: $1b
	xor l                                            ; $552d: $ad
	ld d, [hl]                                       ; $552e: $56
	call c, $90ff                                    ; $552f: $dc $ff $90
	db $e4                                           ; $5532: $e4
	ld d, b                                          ; $5533: $50
	xor b                                            ; $5534: $a8
	nop                                              ; $5535: $00
	inc bc                                           ; $5536: $03
	inc l                                            ; $5537: $2c
	ld l, d                                          ; $5538: $6a
	ret nc                                           ; $5539: $d0

	ldh [rLCDC], a                                   ; $553a: $e0 $40
	xor b                                            ; $553c: $a8
	rst $38                                          ; $553d: $ff
	db $fc                                           ; $553e: $fc
	ret nc                                           ; $553f: $d0

	add b                                            ; $5540: $80
	db $fd                                           ; $5541: $fd
	sbc l                                            ; $5542: $9d
	and a                                            ; $5543: $a7
	ld e, b                                          ; $5544: $58
	ei                                               ; $5545: $fb
	sbc [hl]                                         ; $5546: $9e
	ld [$9cfa], sp                                   ; $5547: $08 $fa $9c
	add b                                            ; $554a: $80
	ld a, b                                          ; $554b: $78
	rlca                                             ; $554c: $07
	db $fc                                           ; $554d: $fc
	sbc [hl]                                         ; $554e: $9e
	ld a, a                                          ; $554f: $7f
	ld l, a                                          ; $5550: $6f
	ld sp, hl                                        ; $5551: $f9
	cp $9d                                           ; $5552: $fe $9d
	ret nz                                           ; $5554: $c0

	ccf                                              ; $5555: $3f
	db $fd                                           ; $5556: $fd
	rst SubAFromDE                                          ; $5557: $df
	rst $38                                          ; $5558: $ff
	ld [hl], e                                       ; $5559: $73
	ld sp, hl                                        ; $555a: $f9
	sbc d                                            ; $555b: $9a
	nop                                              ; $555c: $00
	dec b                                            ; $555d: $05
	ld a, [hl+]                                      ; $555e: $2a
	ld a, a                                          ; $555f: $7f
	sbc a                                            ; $5560: $9f
	db $fd                                           ; $5561: $fd
	sbc l                                            ; $5562: $9d
	ld a, [$73d5]                                    ; $5563: $fa $d5 $73
	pop bc                                           ; $5566: $c1
	sbc [hl]                                         ; $5567: $9e
	nop                                              ; $5568: $00
	db $dd                                           ; $5569: $dd
	ldh a, [$97]                                     ; $556a: $f0 $97
	ret z                                            ; $556c: $c8

	ld c, b                                          ; $556d: $48
	ld b, h                                          ; $556e: $44
	call nz, $1f1f                                   ; $556f: $c4 $1f $1f
	ccf                                              ; $5572: $3f
	ccf                                              ; $5573: $3f
	sbc $7f                                          ; $5574: $de $7f
	add b                                            ; $5576: $80
	rst $38                                          ; $5577: $ff
	ld e, h                                          ; $5578: $5c
	ld d, h                                          ; $5579: $54
	ld [hl-], a                                      ; $557a: $32
	ld [hl-], a                                      ; $557b: $32
	sub c                                            ; $557c: $91
	pop af                                           ; $557d: $f1
	ld h, h                                          ; $557e: $64
	dec c                                            ; $557f: $0d
	db $e3                                           ; $5580: $e3
	db $e3                                           ; $5581: $e3
	pop hl                                           ; $5582: $e1
	pop hl                                           ; $5583: $e1
	ld h, b                                          ; $5584: $60
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	ld b, $44                                        ; $5587: $06 $44
	ld d, d                                          ; $5589: $52
	ld [hl+], a                                      ; $558a: $22
	jr z, jr_05b_559e                                ; $558b: $28 $11

	inc d                                            ; $558d: $14
	adc d                                            ; $558e: $8a
	ld b, l                                          ; $558f: $45
	db $e3                                           ; $5590: $e3
	pop hl                                           ; $5591: $e1
	pop af                                           ; $5592: $f1
	pop af                                           ; $5593: $f1
	ld hl, sp-$08                                    ; $5594: $f8 $f8
	sub b                                            ; $5596: $90
	ld a, h                                          ; $5597: $7c
	ld a, $a4                                        ; $5598: $3e $a4
	and b                                            ; $559a: $a0
	ld d, d                                          ; $559b: $52
	ld b, b                                          ; $559c: $40
	add hl, hl                                       ; $559d: $29

jr_05b_559e:
	inc h                                            ; $559e: $24
	sub d                                            ; $559f: $92
	ld c, c                                          ; $55a0: $49
	jp $e1c3                                         ; $55a1: $c3 $c3 $e1


	pop af                                           ; $55a4: $f1
	ldh a, [$7b]                                     ; $55a5: $f0 $7b
	ldh a, [$97]                                     ; $55a7: $f0 $97
	add b                                            ; $55a9: $80
	ld b, b                                          ; $55aa: $40
	ld b, b                                          ; $55ab: $40
	ld hl, $8c12                                     ; $55ac: $21 $12 $8c
	ld c, b                                          ; $55af: $48
	inc h                                            ; $55b0: $24
	call c, $97ff                                    ; $55b1: $dc $ff $97
	ld a, a                                          ; $55b4: $7f
	ccf                                              ; $55b5: $3f
	rra                                              ; $55b6: $1f
	add hl, hl                                       ; $55b7: $29
	ld c, c                                          ; $55b8: $49
	adc d                                            ; $55b9: $8a
	ld a, [bc]                                       ; $55ba: $0a
	ld a, [bc]                                       ; $55bb: $0a
	sbc $04                                          ; $55bc: $de $04
	reti                                             ; $55be: $d9


	rst $38                                          ; $55bf: $ff
	sub a                                            ; $55c0: $97
	and d                                            ; $55c1: $a2
	ld [hl+], a                                      ; $55c2: $22
	ld [hl+], a                                      ; $55c3: $22
	ld h, $25                                        ; $55c4: $26 $25
	dec h                                            ; $55c6: $25
	ld l, l                                          ; $55c7: $6d
	xor d                                            ; $55c8: $aa
	db $dd                                           ; $55c9: $dd
	pop af                                           ; $55ca: $f1
	sbc $f3                                          ; $55cb: $de $f3
	sub [hl]                                         ; $55cd: $96
	rst FarCall                                          ; $55ce: $f7
	pop de                                           ; $55cf: $d1
	pop de                                           ; $55d0: $d1
	call nc, $a8ac                                   ; $55d1: $d4 $ac $a8
	xor d                                            ; $55d4: $aa
	or h                                             ; $55d5: $b4
	sub h                                            ; $55d6: $94
	sbc $f8                                          ; $55d7: $de $f8
	sbc c                                            ; $55d9: $99
	ret c                                            ; $55da: $d8

	call c, $cedc                                    ; $55db: $dc $dc $ce
	adc $42                                          ; $55de: $ce $42
	db $dd                                           ; $55e0: $dd
	ld d, d                                          ; $55e1: $52
	sbc e                                            ; $55e2: $9b
	or d                                             ; $55e3: $b2
	add hl, hl                                       ; $55e4: $29
	add hl, hl                                       ; $55e5: $29
	pop af                                           ; $55e6: $f1
	db $dd                                           ; $55e7: $dd
	pop hl                                           ; $55e8: $e1
	adc a                                            ; $55e9: $8f
	ld h, c                                          ; $55ea: $61
	ld [hl], b                                       ; $55eb: $70
	ld [hl], b                                       ; $55ec: $70
	db $ed                                           ; $55ed: $ed
	push af                                          ; $55ee: $f5
	jp c, $afaa                                      ; $55ef: $da $aa $af

	sub a                                            ; $55f2: $97
	ld d, [hl]                                       ; $55f3: $56
	ld c, [hl]                                       ; $55f4: $4e
	sbc $ce                                          ; $55f5: $de $ce
	rst SubAFromBC                                          ; $55f7: $e7
	rst FarCall                                          ; $55f8: $f7
	di                                               ; $55f9: $f3
	sbc $fb                                          ; $55fa: $de $fb
	add a                                            ; $55fc: $87
	ld l, h                                          ; $55fd: $6c
	sub $eb                                          ; $55fe: $d6 $eb
	ld [hl], l                                       ; $5600: $75
	inc sp                                           ; $5601: $33
	cp d                                             ; $5602: $ba
	sbc d                                            ; $5603: $9a
	ld e, d                                          ; $5604: $5a
	di                                               ; $5605: $f3
	add hl, sp                                       ; $5606: $39
	inc e                                            ; $5607: $1c
	adc [hl]                                         ; $5608: $8e

Call_05b_5609:
	rst GetHLinHL                                          ; $5609: $cf
	rst JumpTable                                          ; $560a: $c7
	rst SubAFromBC                                          ; $560b: $e7
	rst SubAFromBC                                          ; $560c: $e7
	add c                                            ; $560d: $81
	ld b, c                                          ; $560e: $41
	ld [hl], c                                       ; $560f: $71
	jr z, jr_05b_5626                                ; $5610: $28 $14

	sub d                                            ; $5612: $92
	ld c, c                                          ; $5613: $49
	ld l, b                                          ; $5614: $68
	sbc $ff                                          ; $5615: $de $ff
	sbc d                                            ; $5617: $9a
	rst AddAOntoHL                                          ; $5618: $ef
	rst FarCall                                          ; $5619: $f7
	di                                               ; $561a: $f3
	ld sp, hl                                        ; $561b: $f9
	ld hl, sp-$22                                    ; $561c: $f8 $de
	rst $38                                          ; $561e: $ff
	sbc l                                            ; $561f: $9d
	xor d                                            ; $5620: $aa
	call nc, $80de                                   ; $5621: $d4 $de $80
	ld [hl], a                                       ; $5624: $77
	dec b                                            ; $5625: $05

jr_05b_5626:
	db $dd                                           ; $5626: $dd
	add b                                            ; $5627: $80
	sbc e                                            ; $5628: $9b
	rst $38                                          ; $5629: $ff
	cp $55                                           ; $562a: $fe $55
	xor b                                            ; $562c: $a8
	push af                                          ; $562d: $f5
	ld [hl], a                                       ; $562e: $77
	ldh [$9e], a                                     ; $562f: $e0 $9e
	ld d, l                                          ; $5631: $55
	or $9b                                           ; $5632: $f6 $9b
	ld d, h                                          ; $5634: $54
	ld a, [$aaff]                                    ; $5635: $fa $ff $aa
	di                                               ; $5638: $f3
	sbc l                                            ; $5639: $9d
	pop de                                           ; $563a: $d1
	add sp, -$20                                     ; $563b: $e8 $e0
	db $d3                                           ; $563d: $d3
	sbc $01                                          ; $563e: $de $01
	sbc h                                            ; $5640: $9c
	inc bc                                           ; $5641: $03
	ld bc, $7302                                     ; $5642: $01 $02 $73
	ld hl, sp-$6d                                    ; $5645: $f8 $93
	ld bc, $0000                                     ; $5647: $01 $00 $00
	jp nc, $21da                                     ; $564a: $d2 $da $21

	inc h                                            ; $564d: $24
	ld e, d                                          ; $564e: $5a
	ld d, h                                          ; $564f: $54
	xor c                                            ; $5650: $a9
	xor e                                            ; $5651: $ab
	rst AddAOntoHL                                          ; $5652: $ef
	ld a, e                                          ; $5653: $7b
	ld d, c                                          ; $5654: $51
	adc [hl]                                         ; $5655: $8e
	or c                                             ; $5656: $b1
	cp c                                             ; $5657: $b9
	call c, $12dc                                    ; $5658: $dc $dc $12
	sub e                                            ; $565b: $93
	ld d, d                                          ; $565c: $52
	xor c                                            ; $565d: $a9
	reti                                             ; $565e: $d9


	ld h, c                                          ; $565f: $61
	ld d, b                                          ; $5660: $50
	jr z, jr_05b_5672                                ; $5661: $28 $0f

	rrca                                             ; $5663: $0f
	adc a                                            ; $5664: $8f
	rst JumpTable                                          ; $5665: $c7
	rst SubAFromBC                                          ; $5666: $e7
	sbc $ff                                          ; $5667: $de $ff
	add h                                            ; $5669: $84
	and [hl]                                         ; $566a: $a6
	db $d3                                           ; $566b: $d3
	cp c                                             ; $566c: $b9
	ld l, l                                          ; $566d: $6d

Jump_05b_566e:
	and b                                            ; $566e: $a0
	sbc b                                            ; $566f: $98
	sbc $c7                                          ; $5670: $de $c7

jr_05b_5672:
	rra                                              ; $5672: $1f
	rrca                                             ; $5673: $0f
	rst JumpTable                                          ; $5674: $c7
	db $d3                                           ; $5675: $d3
	ld a, a                                          ; $5676: $7f
	ccf                                              ; $5677: $3f
	add a                                            ; $5678: $87
	add c                                            ; $5679: $81
	inc h                                            ; $567a: $24
	ld h, [hl]                                       ; $567b: $66
	or e                                             ; $567c: $b3
	jp nz, Jump_05b_4cb1                             ; $567d: $c2 $b1 $4c

	dec sp                                           ; $5680: $3b
	cp [hl]                                          ; $5681: $be
	rra                                              ; $5682: $1f
	sbc a                                            ; $5683: $9f

jr_05b_5684:
	rst GetHLinHL                                          ; $5684: $cf
	sbc $ff                                          ; $5685: $de $ff
	add l                                            ; $5687: $85
	rst SubAFromBC                                          ; $5688: $e7
	pop af                                           ; $5689: $f1
	sub d                                            ; $568a: $92
	ld c, c                                          ; $568b: $49
	inc h                                            ; $568c: $24
	jp z, $ad33                                      ; $568d: $ca $33 $ad

	ld e, e                                          ; $5690: $5b
	db $ec                                           ; $5691: $ec
	rrca                                             ; $5692: $0f
	add a                                            ; $5693: $87
	jp $fcf1                                         ; $5694: $c3 $f1 $fc


	sbc $ef                                          ; $5697: $de $ef
	rst FarCall                                          ; $5699: $f7
	ld bc, $8402                                     ; $569a: $01 $02 $84
	ld c, b                                          ; $569d: $48
	jr nc, @-$6e                                     ; $569e: $30 $90

	add hl, bc                                       ; $56a0: $09
	or $6e                                           ; $56a1: $f6 $6e
	or b                                             ; $56a3: $b0
	rst SubAFromDE                                          ; $56a4: $df
	rst $38                                          ; $56a5: $ff
	rst SubAFromDE                                          ; $56a6: $df
	ld a, [hl+]                                      ; $56a7: $2a
	sbc c                                            ; $56a8: $99
	ld a, [hl-]                                      ; $56a9: $3a
	ld a, d                                          ; $56aa: $7a
	ld e, d                                          ; $56ab: $5a
	sbc d                                            ; $56ac: $9a
	ld [de], a                                       ; $56ad: $12
	ld [de], a                                       ; $56ae: $12
	db $db                                           ; $56af: $db
	rst FarCall                                          ; $56b0: $f7
	rst SubAFromDE                                          ; $56b1: $df
	rst $38                                          ; $56b2: $ff
	sbc d                                            ; $56b3: $9a
	sub l                                            ; $56b4: $95
	adc e                                            ; $56b5: $8b
	adc d                                            ; $56b6: $8a
	and l                                            ; $56b7: $a5
	ld b, l                                          ; $56b8: $45
	sbc $51                                          ; $56b9: $de $51
	sbc e                                            ; $56bb: $9b
	adc $c6                                          ; $56bc: $ce $c6
	rst JumpTable                                          ; $56be: $c7
	jp $e3dd                                         ; $56bf: $c3 $dd $e3


	add a                                            ; $56c2: $87
	add hl, hl                                       ; $56c3: $29
	jr z, jr_05b_5716                                ; $56c4: $28 $50

	call nc, $9a5a                                   ; $56c6: $d4 $5a $9a
	sbc [hl]                                         ; $56c9: $9e
	ld e, h                                          ; $56ca: $5c
	ld [hl], b                                       ; $56cb: $70
	ld [hl], b                                       ; $56cc: $70
	jr c, jr_05b_5707                                ; $56cd: $38 $38

	cp h                                             ; $56cf: $bc
	db $fc                                           ; $56d0: $fc
	db $fc                                           ; $56d1: $fc
	cp $4a                                           ; $56d2: $fe $4a
	ld c, d                                          ; $56d4: $4a
	ld e, d                                          ; $56d5: $5a
	ld e, d                                          ; $56d6: $5a
	or [hl]                                          ; $56d7: $b6
	and [hl]                                         ; $56d8: $a6
	ld h, $26                                        ; $56d9: $26 $26
	ld [hl], e                                       ; $56db: $73
	pop bc                                           ; $56dc: $c1
	sbc $7f                                          ; $56dd: $de $7f
	rst SubAFromDE                                          ; $56df: $df
	ld l, l                                          ; $56e0: $6d
	rst SubAFromDE                                          ; $56e1: $df
	ld d, l                                          ; $56e2: $55
	sbc d                                            ; $56e3: $9a
	ld e, c                                          ; $56e4: $59
	call $8d8d                                       ; $56e5: $cd $8d $8d
	di                                               ; $56e8: $f3
	ld a, d                                          ; $56e9: $7a
	or e                                             ; $56ea: $b3
	db $dd                                           ; $56eb: $dd
	rst $38                                          ; $56ec: $ff
	adc a                                            ; $56ed: $8f
	ld e, b                                          ; $56ee: $58
	ld c, b                                          ; $56ef: $48
	jr z, jr_05b_5712                                ; $56f0: $28 $20

	jr nz, jr_05b_5684                               ; $56f2: $20 $90

	sub b                                            ; $56f4: $90
	ld c, b                                          ; $56f5: $48
	ret c                                            ; $56f6: $d8

	ret z                                            ; $56f7: $c8

	add sp, -$20                                     ; $56f8: $e8 $e0
	ldh [$f0], a                                     ; $56fa: $e0 $f0
	ldh a, [$f8]                                     ; $56fc: $f0 $f8
	ld [hl], d                                       ; $56fe: $72
	add $72                                          ; $56ff: $c6 $72
	jp $d7e0                                         ; $5701: $c3 $e0 $d7


	sbc h                                            ; $5704: $9c
	inc e                                            ; $5705: $1c
	ld a, [hl+]                                      ; $5706: $2a

jr_05b_5707:
	ld d, a                                          ; $5707: $57
	ld l, [hl]                                       ; $5708: $6e
	cp h                                             ; $5709: $bc
	sbc l                                            ; $570a: $9d
	inc d                                            ; $570b: $14
	jr z, jr_05b_5764                                ; $570c: $28 $56

	and l                                            ; $570e: $a5
	ld a, [$0b91]                                    ; $570f: $fa $91 $0b

jr_05b_5712:
	dec d                                            ; $5712: $15
	ld a, [hl+]                                      ; $5713: $2a
	ld d, a                                          ; $5714: $57
	add d                                            ; $5715: $82

jr_05b_5716:
	ld b, b                                          ; $5716: $40
	nop                                              ; $5717: $00
	nop                                              ; $5718: $00
	inc b                                            ; $5719: $04
	ld a, [bc]                                       ; $571a: $0a
	dec d                                            ; $571b: $15
	jr z, @+$7f                                      ; $571c: $28 $7d

	cp a                                             ; $571e: $bf
	ld [hl], l                                       ; $571f: $75
	ld a, a                                          ; $5720: $7f
	sbc e                                            ; $5721: $9b
	and b                                            ; $5722: $a0
	ld d, b                                          ; $5723: $50
	inc c                                            ; $5724: $0c
	inc bc                                           ; $5725: $03
	db $fd                                           ; $5726: $fd
	sbc c                                            ; $5727: $99
	ld b, b                                          ; $5728: $40
	and b                                            ; $5729: $a0
	ldh a, [$fc]                                     ; $572a: $f0 $fc
	ld bc, $7a02                                     ; $572c: $01 $02 $7a
	push bc                                          ; $572f: $c5
	ld l, [hl]                                       ; $5730: $6e
	cp c                                             ; $5731: $b9
	ld [hl], e                                       ; $5732: $73
	db $ec                                           ; $5733: $ec
	rst SubAFromDE                                          ; $5734: $df
	ld b, h                                          ; $5735: $44
	add a                                            ; $5736: $87
	ld h, e                                          ; $5737: $63
	ldh [c], a                                       ; $5738: $e2
	pop de                                           ; $5739: $d1
	reti                                             ; $573a: $d9


	call c, Call_05b_7ff7                            ; $573b: $dc $f7 $7f
	ld a, a                                          ; $573e: $7f
	ccf                                              ; $573f: $3f
	ld a, $1f                                        ; $5740: $3e $1f
	rrca                                             ; $5742: $0f
	rlca                                             ; $5743: $07
	inc bc                                           ; $5744: $03
	ld [hl], $1d                                     ; $5745: $36 $1d
	rla                                              ; $5747: $17
	adc a                                            ; $5748: $8f
	ld c, e                                          ; $5749: $4b
	or a                                             ; $574a: $b7
	adc a                                            ; $574b: $8f
	adc a                                            ; $574c: $8f
	rst AddAOntoHL                                          ; $574d: $ef
	di                                               ; $574e: $f3
	ld a, c                                          ; $574f: $79
	sub d                                            ; $5750: $92
	adc a                                            ; $5751: $8f
	inc a                                            ; $5752: $3c
	adc [hl]                                         ; $5753: $8e
	push bc                                          ; $5754: $c5
	ld h, e                                          ; $5755: $63
	ret c                                            ; $5756: $d8

	and e                                            ; $5757: $a3
	db $db                                           ; $5758: $db
	rst AddAOntoHL                                          ; $5759: $ef
	cp a                                             ; $575a: $bf
	db $fc                                           ; $575b: $fc
	ld a, b                                          ; $575c: $78
	ret nz                                           ; $575d: $c0

	rst $38                                          ; $575e: $ff
	ld a, a                                          ; $575f: $7f
	ld a, h                                          ; $5760: $7c
	ld [hl], b                                       ; $5761: $70
	ld a, e                                          ; $5762: $7b
	xor d                                            ; $5763: $aa

jr_05b_5764:
	sbc e                                            ; $5764: $9b
	rst SubAFromDE                                          ; $5765: $df
	ccf                                              ; $5766: $3f
	rst $38                                          ; $5767: $ff
	db $e3                                           ; $5768: $e3
	ld a, e                                          ; $5769: $7b
	ld h, $9a                                        ; $576a: $26 $9a
	rra                                              ; $576c: $1f
	ld a, b                                          ; $576d: $78
	db $fc                                           ; $576e: $fc
	cp $1f                                           ; $576f: $fe $1f
	db $fd                                           ; $5771: $fd
	add b                                            ; $5772: $80
	cp h                                             ; $5773: $bc
	db $ed                                           ; $5774: $ed
	cp $fe                                           ; $5775: $fe $fe
	db $fc                                           ; $5777: $fc
	cp $ff                                           ; $5778: $fe $ff
	cp $77                                           ; $577a: $fe $77
	ld d, $04                                        ; $577c: $16 $04
	inc b                                            ; $577e: $04
	add [hl]                                         ; $577f: $86
	ld [bc], a                                       ; $5780: $02
	ld [bc], a                                       ; $5781: $02
	inc bc                                           ; $5782: $03
	xor [hl]                                         ; $5783: $ae
	rst SubAFromBC                                          ; $5784: $e7
	ld e, a                                          ; $5785: $5f
	rst FarCall                                          ; $5786: $f7
	xor e                                            ; $5787: $ab
	cpl                                              ; $5788: $2f
	ld a, d                                          ; $5789: $7a
	ld d, $ff                                        ; $578a: $16 $ff
	jp Jump_05b_5cc9                                 ; $578c: $c3 $c9 $5c


	halt                                             ; $578f: $76
	ld [hl], d                                       ; $5790: $72
	ccf                                              ; $5791: $3f
	sub [hl]                                         ; $5792: $96
	ccf                                              ; $5793: $3f
	ld a, [bc]                                       ; $5794: $0a
	add hl, bc                                       ; $5795: $09
	ret                                              ; $5796: $c9


	push hl                                          ; $5797: $e5
	ld b, a                                          ; $5798: $47
	jp $c3c1                                         ; $5799: $c3 $c1 $c3


	ld l, [hl]                                       ; $579c: $6e
	or b                                             ; $579d: $b0
	rst SubAFromDE                                          ; $579e: $df
	ld a, a                                          ; $579f: $7f
	sbc $29                                          ; $57a0: $de $29
	rst SubAFromDE                                          ; $57a2: $df
	dec d                                            ; $57a3: $15
	sbc h                                            ; $57a4: $9c
	sub l                                            ; $57a5: $95
	adc c                                            ; $57a6: $89
	adc c                                            ; $57a7: $89
	sbc $f3                                          ; $57a8: $de $f3
	sbc $fb                                          ; $57aa: $de $fb
	rst SubAFromDE                                          ; $57ac: $df
	rst $38                                          ; $57ad: $ff
	sub [hl]                                         ; $57ae: $96
	ld e, l                                          ; $57af: $5d
	ld [hl-], a                                      ; $57b0: $32
	ld [hl-], a                                      ; $57b1: $32
	ld [hl+], a                                      ; $57b2: $22
	dec h                                            ; $57b3: $25
	dec h                                            ; $57b4: $25
	ld c, c                                          ; $57b5: $49
	ld c, b                                          ; $57b6: $48
	cp $da                                           ; $57b7: $fe $da
	rst $38                                          ; $57b9: $ff
	sub a                                            ; $57ba: $97
	ld h, $22                                        ; $57bb: $26 $22
	and c                                            ; $57bd: $a1
	and c                                            ; $57be: $a1
	ld hl, $2223                                     ; $57bf: $21 $23 $22
	and [hl]                                         ; $57c2: $a6
	db $dd                                           ; $57c3: $dd
	ld a, a                                          ; $57c4: $7f
	ld a, a                                          ; $57c5: $7f
	xor d                                            ; $57c6: $aa
	ld a, a                                          ; $57c7: $7f
	and l                                            ; $57c8: $a5
	add [hl]                                         ; $57c9: $86
	adc e                                            ; $57ca: $8b

jr_05b_57cb:
	bit 1, c                                         ; $57cb: $cb $49
	call $fc6c                                       ; $57cd: $cd $6c $fc
	sbc h                                            ; $57d0: $9c
	sbc h                                            ; $57d1: $9c
	ei                                               ; $57d2: $fb
	ld sp, hl                                        ; $57d3: $f9
	ld sp, hl                                        ; $57d4: $f9
	ld a, c                                          ; $57d5: $79
	ld a, b                                          ; $57d6: $78
	jr jr_05b_57f1                                   ; $57d7: $18 $18

	inc c                                            ; $57d9: $0c
	ld a, h                                          ; $57da: $7c
	ld l, b                                          ; $57db: $68
	ld d, b                                          ; $57dc: $50
	ld [$0e35], a                                    ; $57dd: $ea $35 $0e
	inc bc                                           ; $57e0: $03
	nop                                              ; $57e1: $00
	cp h                                             ; $57e2: $bc
	ld l, l                                          ; $57e3: $6d
	adc h                                            ; $57e4: $8c
	cp $9a                                           ; $57e5: $fe $9a
	ld d, b                                          ; $57e7: $50
	and b                                            ; $57e8: $a0
	ld b, c                                          ; $57e9: $41
	xor d                                            ; $57ea: $aa
	push bc                                          ; $57eb: $c5
	ld sp, hl                                        ; $57ec: $f9
	sbc [hl]                                         ; $57ed: $9e
	db $10                                           ; $57ee: $10
	cp $9d                                           ; $57ef: $fe $9d

jr_05b_57f1:
	ld [bc], a                                       ; $57f1: $02
	ld d, l                                          ; $57f2: $55
	ld e, c                                          ; $57f3: $59
	adc [hl]                                         ; $57f4: $8e
	sbc e                                            ; $57f5: $9b
	dec l                                            ; $57f6: $2d
	ld a, d                                          ; $57f7: $7a
	push de                                          ; $57f8: $d5
	xor e                                            ; $57f9: $ab
	ld a, e                                          ; $57fa: $7b
	ldh a, [$80]                                     ; $57fb: $f0 $80
	ld [hl+], a                                      ; $57fd: $22
	ld [de], a                                       ; $57fe: $12
	dec b                                            ; $57ff: $05
	ld a, [hl+]                                      ; $5800: $2a
	ld d, h                                          ; $5801: $54
	xor d                                            ; $5802: $aa
	ld d, l                                          ; $5803: $55
	xor d                                            ; $5804: $aa
	db $dd                                           ; $5805: $dd
	dec b                                            ; $5806: $05
	add d                                            ; $5807: $82
	ld bc, $0180                                     ; $5808: $01 $80 $01
	add d                                            ; $580b: $82
	pop bc                                           ; $580c: $c1
	add d                                            ; $580d: $82
	ld a, [$fe7d]                                    ; $580e: $fa $7d $fe
	ld a, a                                          ; $5811: $7f
	cp $7d                                           ; $5812: $fe $7d
	ld a, $7d                                        ; $5814: $3e $7d
	ld b, [hl]                                       ; $5816: $46
	xor l                                            ; $5817: $ad
	ld d, b                                          ; $5818: $50
	xor b                                            ; $5819: $a8
	ld d, h                                          ; $581a: $54
	xor e                                            ; $581b: $ab
	sbc c                                            ; $581c: $99
	ld d, l                                          ; $581d: $55
	xor e                                            ; $581e: $ab
	add c                                            ; $581f: $81
	ld d, d                                          ; $5820: $52
	xor a                                            ; $5821: $af
	ld d, a                                          ; $5822: $57
	ld a, e                                          ; $5823: $7b
	ld sp, hl                                        ; $5824: $f9
	sub h                                            ; $5825: $94
	ld d, a                                          ; $5826: $57
	and b                                            ; $5827: $a0
	ld b, b                                          ; $5828: $40
	db $10                                           ; $5829: $10
	add hl, hl                                       ; $582a: $29
	ld c, e                                          ; $582b: $4b
	rst GetHLinHL                                          ; $582c: $cf
	rst AddAOntoHL                                          ; $582d: $ef
	ld [hl], b                                       ; $582e: $70
	ld e, a                                          ; $582f: $5f
	cp a                                             ; $5830: $bf
	db $dd                                           ; $5831: $dd
	rst $38                                          ; $5832: $ff
	rst SubAFromDE                                          ; $5833: $df
	cp a                                             ; $5834: $bf
	sbc e                                            ; $5835: $9b
	nop                                              ; $5836: $00
	rra                                              ; $5837: $1f
	ld a, a                                          ; $5838: $7f
	cp $7b                                           ; $5839: $fe $7b
	ld h, h                                          ; $583b: $64
	ld a, a                                          ; $583c: $7f
	ld a, [bc]                                       ; $583d: $0a
	ld a, a                                          ; $583e: $7f
	ld [hl], e                                       ; $583f: $73
	sbc [hl]                                         ; $5840: $9e
	db $fd                                           ; $5841: $fd
	db $dd                                           ; $5842: $dd
	rst $38                                          ; $5843: $ff
	add b                                            ; $5844: $80
	jp $aa55                                         ; $5845: $c3 $55 $aa


	ld d, c                                          ; $5848: $51
	jr nz, jr_05b_57cb                               ; $5849: $20 $80

	ldh [$f7], a                                     ; $584b: $e0 $f7
	nop                                              ; $584d: $00
	and d                                            ; $584e: $a2
	ld d, l                                          ; $584f: $55
	xor [hl]                                         ; $5850: $ae
	rst SubAFromDE                                          ; $5851: $df
	rst $38                                          ; $5852: $ff
	rst $38                                          ; $5853: $ff
	ld hl, sp+$09                                    ; $5854: $f8 $09
	adc h                                            ; $5856: $8c
	ldh [c], a                                       ; $5857: $e2
	ld b, h                                          ; $5858: $44
	jr z, jr_05b_589b                                ; $5859: $28 $40

	add b                                            ; $585b: $80
	nop                                              ; $585c: $00
	rst FarCall                                          ; $585d: $f7
	ld [hl], e                                       ; $585e: $73
	dec e                                            ; $585f: $1d
	cp e                                             ; $5860: $bb
	rst SubAFromHL                                          ; $5861: $d7
	cp a                                             ; $5862: $bf
	ld a, a                                          ; $5863: $7f
	ld a, h                                          ; $5864: $7c
	db $dd                                           ; $5865: $dd
	add b                                            ; $5866: $80
	res 4, a                                         ; $5867: $cb $a7
	ld d, l                                          ; $5869: $55
	xor d                                            ; $586a: $aa
	dec b                                            ; $586b: $05
	nop                                              ; $586c: $00
	ld [$76e4], sp                                   ; $586d: $08 $e4 $76
	ld e, [hl]                                       ; $5870: $5e
	xor e                                            ; $5871: $ab
	ld d, l                                          ; $5872: $55
	ld a, [$01ff]                                    ; $5873: $fa $ff $01
	jr nc, jr_05b_587a                               ; $5876: $30 $02

	inc bc                                           ; $5878: $03
	adc a                                            ; $5879: $8f

jr_05b_587a:
	call z, $71ee                                    ; $587a: $cc $ee $71
	dec de                                           ; $587d: $1b
	nop                                              ; $587e: $00
	ld bc, $0607                                     ; $587f: $01 $07 $06
	adc [hl]                                         ; $5882: $8e
	ld c, h                                          ; $5883: $4c
	ld [hl+], a                                      ; $5884: $22
	pop af                                           ; $5885: $f1
	adc a                                            ; $5886: $8f
	rlca                                             ; $5887: $07
	rst AddAOntoHL                                          ; $5888: $ef
	ei                                               ; $5889: $fb
	ld c, [hl]                                       ; $588a: $4e
	db $ed                                           ; $588b: $ed
	ld h, c                                          ; $588c: $61
	pop af                                           ; $588d: $f1
	pop de                                           ; $588e: $d1
	nop                                              ; $588f: $00
	ldh a, [$fc]                                     ; $5890: $f0 $fc
	ld a, a                                          ; $5892: $7f
	ld h, [hl]                                       ; $5893: $66
	db $e4                                           ; $5894: $e4
	ldh [$f0], a                                     ; $5895: $e0 $f0
	sbc $ff                                          ; $5897: $de $ff
	sbc d                                            ; $5899: $9a
	ei                                               ; $589a: $fb

jr_05b_589b:
	di                                               ; $589b: $f3
	di                                               ; $589c: $f3
	ld sp, hl                                        ; $589d: $f9
	db $fd                                           ; $589e: $fd
	sbc $01                                          ; $589f: $de $01
	sbc $04                                          ; $58a1: $de $04
	rst SubAFromDE                                          ; $58a3: $df
	ld [bc], a                                       ; $58a4: $02
	add a                                            ; $58a5: $87
	sbc d                                            ; $58a6: $9a
	dec a                                            ; $58a7: $3d
	or a                                             ; $58a8: $b7
	db $eb                                           ; $58a9: $eb
	xor l                                            ; $58aa: $ad
	set 5, [hl]                                      ; $58ab: $cb $ee
	db $ed                                           ; $58ad: $ed
	scf                                              ; $58ae: $37
	sub d                                            ; $58af: $92
	sbc d                                            ; $58b0: $9a
	sbc [hl]                                         ; $58b1: $9e
	sbc $7c                                          ; $58b2: $de $7c
	ld a, c                                          ; $58b4: $79
	dec sp                                           ; $58b5: $3b
	jp nz, Jump_05b_52e2                             ; $58b6: $c2 $e2 $52

	ld c, d                                          ; $58b9: $4a
	adc [hl]                                         ; $58ba: $8e
	or [hl]                                          ; $58bb: $b6
	or [hl]                                          ; $58bc: $b6
	ld a, [hl-]                                      ; $58bd: $3a
	ld a, d                                          ; $58be: $7a
	ldh a, [c]                                       ; $58bf: $f2
	rst SubAFromDE                                          ; $58c0: $df
	rst $38                                          ; $58c1: $ff
	rst SubAFromDE                                          ; $58c2: $df
	rst GetHLinHL                                          ; $58c3: $cf
	sub [hl]                                         ; $58c4: $96
	rst JumpTable                                          ; $58c5: $c7
	adc l                                            ; $58c6: $8d
	dec b                                            ; $58c7: $05
	inc bc                                           ; $58c8: $03
	inc bc                                           ; $58c9: $03
	ld b, c                                          ; $58ca: $41
	ld b, c                                          ; $58cb: $41
	and b                                            ; $58cc: $a0

jr_05b_58cd:
	and b                                            ; $58cd: $a0
	reti                                             ; $58ce: $d9


	rst $38                                          ; $58cf: $ff
	sbc l                                            ; $58d0: $9d
	ld c, b                                          ; $58d1: $48
	ld d, b                                          ; $58d2: $50
	sbc $90                                          ; $58d3: $de $90
	rst SubAFromDE                                          ; $58d5: $df
	sub c                                            ; $58d6: $91
	sbc [hl]                                         ; $58d7: $9e
	sub e                                            ; $58d8: $93
	jp c, $9aff                                      ; $58d9: $da $ff $9a

	cp $a7                                           ; $58dc: $fe $a7
	xor l                                            ; $58de: $ad
	ld a, l                                          ; $58df: $7d
	ld a, l                                          ; $58e0: $7d
	sbc $fd                                          ; $58e1: $de $fd
	add b                                            ; $58e3: $80
	rst $38                                          ; $58e4: $ff
	db $fc                                           ; $58e5: $fc
	ld hl, sp-$10                                    ; $58e6: $f8 $f0
	ldh [$e0], a                                     ; $58e8: $e0 $e0
	ld b, b                                          ; $58ea: $40
	ld b, b                                          ; $58eb: $40
	ld bc, $00ff                                     ; $58ec: $01 $ff $00
	inc b                                            ; $58ef: $04
	ld h, h                                          ; $58f0: $64
	and h                                            ; $58f1: $a4
	ld h, $07                                        ; $58f2: $26 $07
	rst $38                                          ; $58f4: $ff
	inc b                                            ; $58f5: $04
	rst AddAOntoHL                                          ; $58f6: $ef
	db $eb                                           ; $58f7: $eb
	adc e                                            ; $58f8: $8b
	dec bc                                           ; $58f9: $0b
	add hl, bc                                       ; $58fa: $09
	ld [$fff8], sp                                   ; $58fb: $08 $f8 $ff
	nop                                              ; $58fe: $00
	ld e, c                                          ; $58ff: $59
	ld d, c                                          ; $5900: $51
	ld d, c                                          ; $5901: $51
	ld b, c                                          ; $5902: $41
	sub [hl]                                         ; $5903: $96
	ld b, c                                          ; $5904: $41
	cp $00                                           ; $5905: $fe $00
	rst SubAFromDE                                          ; $5907: $df
	add [hl]                                         ; $5908: $86
	adc [hl]                                         ; $5909: $8e
	adc [hl]                                         ; $590a: $8e
	sbc [hl]                                         ; $590b: $9e
	sbc [hl]                                         ; $590c: $9e
	ld sp, hl                                        ; $590d: $f9
	sbc d                                            ; $590e: $9a
	inc bc                                           ; $590f: $03
	ldh a, [rOCPS]                                   ; $5910: $f0 $6a
	ld d, l                                          ; $5912: $55
	ld a, $de                                        ; $5913: $3e $de
	ld a, a                                          ; $5915: $7f
	sbc [hl]                                         ; $5916: $9e
	cpl                                              ; $5917: $2f
	db $fc                                           ; $5918: $fc
	sbc c                                            ; $5919: $99
	rlca                                             ; $591a: $07
	ld [hl], b                                       ; $591b: $70

jr_05b_591c:
	ret nz                                           ; $591c: $c0

	jr nz, jr_05b_58cd                               ; $591d: $20 $ae

	ld e, a                                          ; $591f: $5f
	sbc $ff                                          ; $5920: $de $ff
	ld a, l                                          ; $5922: $7d
	ld h, c                                          ; $5923: $61
	sbc e                                            ; $5924: $9b
	ld b, l                                          ; $5925: $45
	add d                                            ; $5926: $82
	ld bc, $7800                                     ; $5927: $01 $00 $78
	sbc c                                            ; $592a: $99
	sbc h                                            ; $592b: $9c
	nop                                              ; $592c: $00
	cp d                                             ; $592d: $ba
	ld a, l                                          ; $592e: $7d
	ld a, d                                          ; $592f: $7a
	dec de                                           ; $5930: $1b
	sbc $ff                                          ; $5931: $de $ff
	sbc e                                            ; $5933: $9b
	add l                                            ; $5934: $85
	add d                                            ; $5935: $82
	pop bc                                           ; $5936: $c1
	adc d                                            ; $5937: $8a
	ld a, d                                          ; $5938: $7a
	or b                                             ; $5939: $b0
	sbc d                                            ; $593a: $9a
	xor d                                            ; $593b: $aa
	ld a, d                                          ; $593c: $7a
	ld a, l                                          ; $593d: $7d
	ld a, $75                                        ; $593e: $3e $75
	ld a, e                                          ; $5940: $7b
	ld sp, hl                                        ; $5941: $f9
	add b                                            ; $5942: $80
	ld d, l                                          ; $5943: $55
	ld e, l                                          ; $5944: $5d
	or b                                             ; $5945: $b0
	ld a, [hl]                                       ; $5946: $7e
	cp c                                             ; $5947: $b9
	ld l, a                                          ; $5948: $6f
	cp c                                             ; $5949: $b9
	ld e, h                                          ; $594a: $5c
	ldh a, [c]                                       ; $594b: $f2
	xor a                                            ; $594c: $af
	ld a, a                                          ; $594d: $7f
	rst $38                                          ; $594e: $ff
	ld e, a                                          ; $594f: $5f
	or b                                             ; $5950: $b0
	ld h, [hl]                                       ; $5951: $66
	rst AddAOntoHL                                          ; $5952: $ef
	ld e, a                                          ; $5953: $5f
	xor h                                            ; $5954: $ac
	db $db                                           ; $5955: $db
	ld [hl], a                                       ; $5956: $77
	cp b                                             ; $5957: $b8
	ld e, [hl]                                       ; $5958: $5e
	xor l                                            ; $5959: $ad
	sbc $7b                                          ; $595a: $de $7b
	ld [hl], e                                       ; $595c: $73
	ld h, a                                          ; $595d: $67
	rst GetHLinHL                                          ; $595e: $cf
	rst JumpTable                                          ; $595f: $c7
	rst SubAFromBC                                          ; $5960: $e7
	ld [hl], e                                       ; $5961: $73
	ld [hl], d                                       ; $5962: $72
	call $097e                                       ; $5963: $cd $7e $09
	sbc h                                            ; $5966: $9c
	rst AddAOntoHL                                          ; $5967: $ef
	cp c                                             ; $5968: $b9
	xor $db                                          ; $5969: $ee $db
	rst $38                                          ; $596b: $ff
	sbc l                                            ; $596c: $9d
	rst JumpTable                                          ; $596d: $c7
	or c                                             ; $596e: $b1
	sbc $fc                                          ; $596f: $de $fc
	sbc $fe                                          ; $5971: $de $fe
	ld [hl], a                                       ; $5973: $77
	ld d, [hl]                                       ; $5974: $56
	ld l, a                                          ; $5975: $6f
	ld hl, sp-$79                                    ; $5976: $f8 $87
	ld a, $78                                        ; $5978: $3e $78
	sub b                                            ; $597a: $90
	ld [hl+], a                                      ; $597b: $22
	ld b, h                                          ; $597c: $44
	adc b                                            ; $597d: $88
	ld de, $0022                                     ; $597e: $11 $22 $00
	nop                                              ; $5981: $00
	ld h, b                                          ; $5982: $60
	pop bc                                           ; $5983: $c1
	add e                                            ; $5984: $83
	rlca                                             ; $5985: $07
	ld c, $1c                                        ; $5986: $0e $1c
	inc e                                            ; $5988: $1c
	jr c, jr_05b_591c                                ; $5989: $38 $91

	inc h                                            ; $598b: $24
	ld c, b                                          ; $598c: $48
	sub c                                            ; $598d: $91
	ld [hl+], a                                      ; $598e: $22
	ld b, h                                          ; $598f: $44
	ld a, e                                          ; $5990: $7b
	ldh a, [hDisp0_BGP]                                     ; $5991: $f0 $85
	jp $0e87                                         ; $5993: $c3 $87 $0e


	inc e                                            ; $5996: $1c
	jr c, jr_05b_59c2                                ; $5997: $38 $29

	ld a, b                                          ; $5999: $78
	db $ec                                           ; $599a: $ec
	ld b, h                                          ; $599b: $44
	adc h                                            ; $599c: $8c
	inc [hl]                                         ; $599d: $34
	ld c, b                                          ; $599e: $48
	adc b                                            ; $599f: $88
	add hl, de                                       ; $59a0: $19
	inc c                                            ; $59a1: $0c
	inc b                                            ; $59a2: $04
	add h                                            ; $59a3: $84
	inc b                                            ; $59a4: $04
	inc c                                            ; $59a5: $0c
	inc a                                            ; $59a6: $3c
	ld a, b                                          ; $59a7: $78
	or c                                             ; $59a8: $b1
	ld [hl], e                                       ; $59a9: $73
	jp nc, $383c                                     ; $59aa: $d2 $3c $38

	cp $9b                                           ; $59ad: $fe $9b
	ret nc                                           ; $59af: $d0

	sub b                                            ; $59b0: $90
	inc [hl]                                         ; $59b1: $34
	ld l, b                                          ; $59b2: $68
	halt                                             ; $59b3: $76
	inc de                                           ; $59b4: $13
	sbc h                                            ; $59b5: $9c
	ld sp, hl                                        ; $59b6: $f9
	ccf                                              ; $59b7: $3f
	ccf                                              ; $59b8: $3f
	sbc $7f                                          ; $59b9: $de $7f
	rst SubAFromDE                                          ; $59bb: $df
	ccf                                              ; $59bc: $3f
	sbc [hl]                                         ; $59bd: $9e
	ld b, $fa                                        ; $59be: $06 $fa
	sbc [hl]                                         ; $59c0: $9e
	rst $38                                          ; $59c1: $ff

jr_05b_59c2:
	call c, Call_05b_7afa                            ; $59c2: $dc $fa $7a
	ld c, a                                          ; $59c5: $4f
	rst SubAFromDE                                          ; $59c6: $df
	rra                                              ; $59c7: $1f
	sbc c                                            ; $59c8: $99
	rrca                                             ; $59c9: $0f
	dec c                                            ; $59ca: $0d
	dec c                                            ; $59cb: $0d
	inc b                                            ; $59cc: $04
	inc b                                            ; $59cd: $04
	dec a                                            ; $59ce: $3d
	sbc $7d                                          ; $59cf: $de $7d
	sbc d                                            ; $59d1: $9a
	db $fd                                           ; $59d2: $fd
	db $fc                                           ; $59d3: $fc
	db $fd                                           ; $59d4: $fd
	rst $38                                          ; $59d5: $ff
	jp $83de                                         ; $59d6: $c3 $de $83


	rst SubAFromDE                                          ; $59d9: $df
	inc bc                                           ; $59da: $03
	ld a, l                                          ; $59db: $7d
	inc b                                            ; $59dc: $04
	sbc c                                            ; $59dd: $99
	sub b                                            ; $59de: $90
	xor d                                            ; $59df: $aa
	ld l, e                                          ; $59e0: $6b
	or $f6                                           ; $59e1: $f6 $f6
	ld a, [$4e79]                                    ; $59e3: $fa $79 $4e
	sbc h                                            ; $59e6: $9c
	rst SubAFromDE                                          ; $59e7: $df
	sbc a                                            ; $59e8: $9f
	rrca                                             ; $59e9: $0f
	ld a, c                                          ; $59ea: $79
	ld de, $0196                                     ; $59eb: $11 $96 $01
	sub e                                            ; $59ee: $93
	sub l                                            ; $59ef: $95
	adc a                                            ; $59f0: $8f
	ld c, l                                          ; $59f1: $4d
	xor [hl]                                         ; $59f2: $ae
	ret c                                            ; $59f3: $d8

	ret nc                                           ; $59f4: $d0

	pop hl                                           ; $59f5: $e1
	ld a, c                                          ; $59f6: $79
	sub l                                            ; $59f7: $95
	ld a, a                                          ; $59f8: $7f
	ld e, b                                          ; $59f9: $58
	sbc $3f                                          ; $59fa: $de $3f
	sub l                                            ; $59fc: $95
	cp $f8                                           ; $59fd: $fe $f8
	ldh [$80], a                                     ; $59ff: $e0 $80
	ld [$8000], sp                                   ; $5a01: $08 $00 $80
	nop                                              ; $5a04: $00
	rlca                                             ; $5a05: $07
	rra                                              ; $5a06: $1f
	halt                                             ; $5a07: $76
	adc a                                            ; $5a08: $8f
	rst SubAFromDE                                          ; $5a09: $df
	rst $38                                          ; $5a0a: $ff
	ld a, a                                          ; $5a0b: $7f
	db $dd                                           ; $5a0c: $dd
	ld a, [hl]                                       ; $5a0d: $7e
	ccf                                              ; $5a0e: $3f
	db $fd                                           ; $5a0f: $fd
	ld a, e                                          ; $5a10: $7b
	ld d, d                                          ; $5a11: $52
	call c, $93ff                                    ; $5a12: $dc $ff $93
	nop                                              ; $5a15: $00
	add e                                            ; $5a16: $83
	rra                                              ; $5a17: $1f
	ld sp, hl                                        ; $5a18: $f9
	sbc a                                            ; $5a19: $9f
	ld c, a                                          ; $5a1a: $4f
	ld c, a                                          ; $5a1b: $4f
	ld b, d                                          ; $5a1c: $42
	rrca                                             ; $5a1d: $0f
	nop                                              ; $5a1e: $00
	rlca                                             ; $5a1f: $07
	cp $78                                           ; $5a20: $fe $78
	ld b, b                                          ; $5a22: $40
	adc l                                            ; $5a23: $8d
	db $fd                                           ; $5a24: $fd
	rrca                                             ; $5a25: $0f
	ld [hl], b                                       ; $5a26: $70
	nop                                              ; $5a27: $00
	add b                                            ; $5a28: $80
	add e                                            ; $5a29: $83
	pop bc                                           ; $5a2a: $c1
	nop                                              ; $5a2b: $00
	cpl                                              ; $5a2c: $2f
	rst $38                                          ; $5a2d: $ff
	ld a, a                                          ; $5a2e: $7f
	ld hl, sp+$7f                                    ; $5a2f: $f8 $7f
	ld a, h                                          ; $5a31: $7c
	ld a, $3f                                        ; $5a32: $3e $3f
	db $10                                           ; $5a34: $10
	rst $38                                          ; $5a35: $ff
	cp $93                                           ; $5a36: $fe $93
	ld a, a                                          ; $5a38: $7f
	ld a, [hl-]                                      ; $5a39: $3a
	ld c, l                                          ; $5a3a: $4d
	ld h, e                                          ; $5a3b: $63
	rst $38                                          ; $5a3c: $ff
	ld a, e                                          ; $5a3d: $7b
	nop                                              ; $5a3e: $00
	ld a, e                                          ; $5a3f: $7b
	add b                                            ; $5a40: $80
	push bc                                          ; $5a41: $c5
	or d                                             ; $5a42: $b2
	sbc h                                            ; $5a43: $9c
	ld a, b                                          ; $5a44: $78
	ld a, b                                          ; $5a45: $78
	ld a, [hl]                                       ; $5a46: $7e
	db $db                                           ; $5a47: $db
	ld a, e                                          ; $5a48: $7b
	ret                                              ; $5a49: $c9


	ld a, d                                          ; $5a4a: $7a
	add hl, de                                       ; $5a4b: $19
	ld a, [hl]                                       ; $5a4c: $7e
	jp nc, Jump_05b_617b                             ; $5a4d: $d2 $7b $61

	sbc h                                            ; $5a50: $9c
	ld d, l                                          ; $5a51: $55
	ld a, [hl+]                                      ; $5a52: $2a
	dec d                                            ; $5a53: $15
	ld [hl], e                                       ; $5a54: $73
	ldh a, [$9c]                                     ; $5a55: $f0 $9c
	xor d                                            ; $5a57: $aa
	push de                                          ; $5a58: $d5
	ld [$f073], a                                    ; $5a59: $ea $73 $f0
	sub h                                            ; $5a5c: $94
	ld h, e                                          ; $5a5d: $63
	and l                                            ; $5a5e: $a5
	ld c, l                                          ; $5a5f: $4d
	rst GetHLinHL                                          ; $5a60: $cf
	ld e, a                                          ; $5a61: $5f
	rst SubAFromDE                                          ; $5a62: $df
	rst $38                                          ; $5a63: $ff
	adc a                                            ; $5a64: $8f
	cp a                                             ; $5a65: $bf
	ld a, a                                          ; $5a66: $7f

jr_05b_5a67:
	rst $38                                          ; $5a67: $ff
	ld a, e                                          ; $5a68: $7b
	cp $80                                           ; $5a69: $fe $80
	ld l, a                                          ; $5a6b: $6f
	rst $38                                          ; $5a6c: $ff
	ccf                                              ; $5a6d: $3f
	cp e                                             ; $5a6e: $bb
	rst SubAFromBC                                          ; $5a6f: $e7
	cp a                                             ; $5a70: $bf
	cp a                                             ; $5a71: $bf
	db $ed                                           ; $5a72: $ed
	db $d3                                           ; $5a73: $d3
	ld h, a                                          ; $5a74: $67
	ld hl, sp-$04                                    ; $5a75: $f8 $fc
	db $fc                                           ; $5a77: $fc
	ldh [$c8], a                                     ; $5a78: $e0 $c8
	sbc e                                            ; $5a7a: $9b
	cp a                                             ; $5a7b: $bf
	cp a                                             ; $5a7c: $bf
	db $dd                                           ; $5a7d: $dd
	rst SubAFromBC                                          ; $5a7e: $e7
	ei                                               ; $5a7f: $fb
	rst SubAFromDE                                          ; $5a80: $df
	ld [hl], h                                       ; $5a81: $74
	ldh a, [$e8]                                     ; $5a82: $f0 $e8
	sub $3e                                          ; $5a84: $d6 $3e
	jr jr_05b_5a8f                                   ; $5a86: $18 $07

	inc a                                            ; $5a88: $3c
	ld hl, sp-$78                                    ; $5a89: $f8 $88
	ld hl, sp-$64                                    ; $5a8b: $f8 $9c
	adc a                                            ; $5a8d: $8f
	cp a                                             ; $5a8e: $bf

jr_05b_5a8f:
	cp [hl]                                          ; $5a8f: $be
	rst $38                                          ; $5a90: $ff
	db $dd                                           ; $5a91: $dd
	rst SubAFromBC                                          ; $5a92: $e7
	ld h, [hl]                                       ; $5a93: $66
	ld l, e                                          ; $5a94: $6b
	db $d3                                           ; $5a95: $d3
	ld a, a                                          ; $5a96: $7f
	ld a, l                                          ; $5a97: $7d
	db $fc                                           ; $5a98: $fc
	ld a, [hl]                                       ; $5a99: $7e
	ld a, [hl]                                       ; $5a9a: $7e
	rst $38                                          ; $5a9b: $ff
	rst FarCall                                          ; $5a9c: $f7
	rst SubAFromBC                                          ; $5a9d: $e7
	ld b, h                                          ; $5a9e: $44
	adc b                                            ; $5a9f: $88
	add b                                            ; $5aa0: $80
	rst $38                                          ; $5aa1: $ff
	db $dd                                           ; $5aa2: $dd
	add b                                            ; $5aa3: $80
	sbc [hl]                                         ; $5aa4: $9e
	cp b                                             ; $5aa5: $b8
	ld a, c                                          ; $5aa6: $79
	or [hl]                                          ; $5aa7: $b6
	sbc $80                                          ; $5aa8: $de $80
	add b                                            ; $5aaa: $80
	rst $38                                          ; $5aab: $ff
	ld b, b                                          ; $5aac: $40
	add l                                            ; $5aad: $85
	rlca                                             ; $5aae: $07
	db $db                                           ; $5aaf: $db
	rra                                              ; $5ab0: $1f
	ld e, $01                                        ; $5ab1: $1e $01
	nop                                              ; $5ab3: $00
	inc a                                            ; $5ab4: $3c
	ld [hl], a                                       ; $5ab5: $77
	ld a, [$32f6]                                    ; $5ab6: $fa $f6 $32
	inc de                                           ; $5ab9: $13
	ld e, $ff                                        ; $5aba: $1e $ff
	ld a, b                                          ; $5abc: $78
	ld a, a                                          ; $5abd: $7f
	dec sp                                           ; $5abe: $3b
	rrca                                             ; $5abf: $0f
	nop                                              ; $5ac0: $00
	ret nz                                           ; $5ac1: $c0

	ret nz                                           ; $5ac2: $c0

jr_05b_5ac3:
	nop                                              ; $5ac3: $00
	sub b                                            ; $5ac4: $90
	jr nz, jr_05b_5ac3                               ; $5ac5: $20 $fc

	ld b, a                                          ; $5ac7: $47
	ret nz                                           ; $5ac8: $c0

	jr nz, jr_05b_5a67                               ; $5ac9: $20 $9c

	jr nz, @+$01                                     ; $5acb: $20 $ff

	nop                                              ; $5acd: $00
	sbc $80                                          ; $5ace: $de $80
	sbc e                                            ; $5ad0: $9b
	ret nz                                           ; $5ad1: $c0

	ld b, c                                          ; $5ad2: $41

jr_05b_5ad3:
	ld h, h                                          ; $5ad3: $64
	and $fd                                          ; $5ad4: $e6 $fd
	sbc e                                            ; $5ad6: $9b
	add b                                            ; $5ad7: $80
	ld b, b                                          ; $5ad8: $40
	ld b, d                                          ; $5ad9: $42
	db $e4                                           ; $5ada: $e4
	ld a, d                                          ; $5adb: $7a
	reti                                             ; $5adc: $d9


	ld a, a                                          ; $5add: $7f
	dec e                                            ; $5ade: $1d
	sbc h                                            ; $5adf: $9c
	jp hl                                            ; $5ae0: $e9


	ld e, l                                          ; $5ae1: $5d
	sub h                                            ; $5ae2: $94
	db $fc                                           ; $5ae3: $fc
	sbc h                                            ; $5ae4: $9c
	ldh a, [$78]                                     ; $5ae5: $f0 $78
	db $ec                                           ; $5ae7: $ec
	reti                                             ; $5ae8: $d9


	rst $38                                          ; $5ae9: $ff
	ld sp, hl                                        ; $5aea: $f9
	call c, $9cff                                    ; $5aeb: $dc $ff $9c
	sbc a                                            ; $5aee: $9f
	adc a                                            ; $5aef: $8f
	rlca                                             ; $5af0: $07
	db $fc                                           ; $5af1: $fc
	sbc h                                            ; $5af2: $9c
	ld h, b                                          ; $5af3: $60
	ld [hl], b                                       ; $5af4: $70
	ld hl, sp+$76                                    ; $5af5: $f8 $76
	ld b, a                                          ; $5af7: $47
	adc e                                            ; $5af8: $8b
	db $fc                                           ; $5af9: $fc
	ld sp, hl                                        ; $5afa: $f9
	ld hl, sp-$10                                    ; $5afb: $f8 $f0
	nop                                              ; $5afd: $00
	ld bc, $0703                                     ; $5afe: $01 $03 $07
	rlca                                             ; $5b01: $07
	rrca                                             ; $5b02: $0f
	rrca                                             ; $5b03: $0f
	rra                                              ; $5b04: $1f
	ld b, h                                          ; $5b05: $44
	adc b                                            ; $5b06: $88
	jr nz, jr_05b_5b4c                               ; $5b07: $20 $43

	add h                                            ; $5b09: $84
	jr jr_05b_5b2c                                   ; $5b0a: $18 $20

	ld b, e                                          ; $5b0c: $43
	reti                                             ; $5b0d: $d9


	rst $38                                          ; $5b0e: $ff
	sbc e                                            ; $5b0f: $9b
	rlca                                             ; $5b10: $07
	jr c, jr_05b_5ad3                                ; $5b11: $38 $c0

	nop                                              ; $5b13: $00
	ld [hl], a                                       ; $5b14: $77
	db $fc                                           ; $5b15: $fc
	call c, Call_05b_7fff                            ; $5b16: $dc $ff $7f
	dec a                                            ; $5b19: $3d
	ld a, a                                          ; $5b1a: $7f
	ld l, a                                          ; $5b1b: $6f
	halt                                             ; $5b1c: $76
	call nz, $0f9e                                   ; $5b1d: $c4 $9e $0f
	ld a, b                                          ; $5b20: $78
	pop bc                                           ; $5b21: $c1
	db $dd                                           ; $5b22: $dd
	rst $38                                          ; $5b23: $ff
	ld a, d                                          ; $5b24: $7a
	or [hl]                                          ; $5b25: $b6
	sbc l                                            ; $5b26: $9d
	ldh a, [$0e]                                     ; $5b27: $f0 $0e
	ld a, c                                          ; $5b29: $79
	or d                                             ; $5b2a: $b2
	ld a, h                                          ; $5b2b: $7c

jr_05b_5b2c:
	ret nz                                           ; $5b2c: $c0

	ld a, e                                          ; $5b2d: $7b
	cp b                                             ; $5b2e: $b8
	ld [hl], c                                       ; $5b2f: $71
	and $91                                          ; $5b30: $e6 $91
	rra                                              ; $5b32: $1f
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	add e                                            ; $5b35: $83
	ld h, c                                          ; $5b36: $61
	db $10                                           ; $5b37: $10
	ld [$0106], sp                                   ; $5b38: $08 $06 $01
	add e                                            ; $5b3b: $83
	call nz, $e6c4                                   ; $5b3c: $c4 $c4 $e6
	rst $38                                          ; $5b3f: $ff
	ld a, c                                          ; $5b40: $79
	pop de                                           ; $5b41: $d1
	rst $38                                          ; $5b42: $ff
	sbc l                                            ; $5b43: $9d
	db $ed                                           ; $5b44: $ed
	or b                                             ; $5b45: $b0
	ld [hl], a                                       ; $5b46: $77
	ld h, l                                          ; $5b47: $65
	ld a, a                                          ; $5b48: $7f
	rst FarCall                                          ; $5b49: $f7
	sbc d                                            ; $5b4a: $9a
	ld [de], a                                       ; $5b4b: $12

jr_05b_5b4c:
	ld c, a                                          ; $5b4c: $4f
	ldh a, [$e7]                                     ; $5b4d: $f0 $e7
	ccf                                              ; $5b4f: $3f
	ld h, e                                          ; $5b50: $63
	ld a, b                                          ; $5b51: $78
	jp hl                                            ; $5b52: $e9


	sbc $0f                                          ; $5b53: $de $0f
	sbc h                                            ; $5b55: $9c
	dec c                                            ; $5b56: $0d
	inc c                                            ; $5b57: $0c
	inc b                                            ; $5b58: $04
	ld e, a                                          ; $5b59: $5f
	ld hl, sp-$80                                    ; $5b5a: $f8 $80
	ld l, e                                          ; $5b5c: $6b
	rst SubAFromHL                                          ; $5b5d: $d7
	db $e3                                           ; $5b5e: $e3
	db $e3                                           ; $5b5f: $e3
	rst FarCall                                          ; $5b60: $f7
	rst $38                                          ; $5b61: $ff
	jr nc, @+$1d                                     ; $5b62: $30 $1b

	sbc a                                            ; $5b64: $9f
	cp e                                             ; $5b65: $bb
	di                                               ; $5b66: $f3
	di                                               ; $5b67: $f3
	ei                                               ; $5b68: $fb
	rst $38                                          ; $5b69: $ff
	ccf                                              ; $5b6a: $3f
	inc e                                            ; $5b6b: $1c
	adc e                                            ; $5b6c: $8b
	and a                                            ; $5b6d: $a7
	sub h                                            ; $5b6e: $94
	adc e                                            ; $5b6f: $8b
	add $5d                                          ; $5b70: $c6 $5d
	and $ad                                          ; $5b72: $e6 $ad
	rst JumpTable                                          ; $5b74: $c7
	ldh [$fb], a                                     ; $5b75: $e0 $fb
	rst $38                                          ; $5b77: $ff
	cp c                                             ; $5b78: $b9
	or e                                             ; $5b79: $b3
	ccf                                              ; $5b7a: $3f
	adc l                                            ; $5b7b: $8d
	ld a, [hl]                                       ; $5b7c: $7e
	sub e                                            ; $5b7d: $93
	sla d                                            ; $5b7e: $cb $22
	ldh a, [c]                                       ; $5b80: $f2
	ld [hl], d                                       ; $5b81: $72
	or a                                             ; $5b82: $b7
	db $f4                                           ; $5b83: $f4
	db $f4                                           ; $5b84: $f4
	rst SubAFromBC                                          ; $5b85: $e7
	ccf                                              ; $5b86: $3f
	sbc $ce                                          ; $5b87: $de $ce
	adc [hl]                                         ; $5b89: $8e
	rst GetHLinHL                                          ; $5b8a: $cf
	ld c, l                                          ; $5b8b: $4d

jr_05b_5b8c:
	ld c, [hl]                                       ; $5b8c: $4e
	add b                                            ; $5b8d: $80
	db $fc                                           ; $5b8e: $fc
	ld a, [hl]                                       ; $5b8f: $7e
	or $6b                                           ; $5b90: $f6 $6b
	ld hl, sp-$64                                    ; $5b92: $f8 $9c
	ret nz                                           ; $5b94: $c0

	ld [bc], a                                       ; $5b95: $02
	ld [bc], a                                       ; $5b96: $02
	ei                                               ; $5b97: $fb
	sbc e                                            ; $5b98: $9b
	dec e                                            ; $5b99: $1d
	inc d                                            ; $5b9a: $14
	inc h                                            ; $5b9b: $24
	inc h                                            ; $5b9c: $24
	db $fd                                           ; $5b9d: $fd
	ld [hl], l                                       ; $5b9e: $75
	inc b                                            ; $5b9f: $04
	db $fd                                           ; $5ba0: $fd
	rst SubAFromDE                                          ; $5ba1: $df
	ret nz                                           ; $5ba2: $c0

	rst SubAFromDE                                          ; $5ba3: $df
	add b                                            ; $5ba4: $80
	db $fd                                           ; $5ba5: $fd
	add b                                            ; $5ba6: $80
	or a                                             ; $5ba7: $b7
	cp e                                             ; $5ba8: $bb
	or l                                             ; $5ba9: $b5
	and $7b                                          ; $5baa: $e6 $7b
	ld c, e                                          ; $5bac: $4b
	ld e, e                                          ; $5bad: $5b
	ld e, d                                          ; $5bae: $5a
	and e                                            ; $5baf: $a3
	sbc c                                            ; $5bb0: $99
	sbc h                                            ; $5bb1: $9c
	cp [hl]                                          ; $5bb2: $be
	ld e, a                                          ; $5bb3: $5f
	ld e, [hl]                                       ; $5bb4: $5e
	ld c, [hl]                                       ; $5bb5: $4e
	ld c, a                                          ; $5bb6: $4f
	or h                                             ; $5bb7: $b4
	ld hl, sp-$60                                    ; $5bb8: $f8 $a0
	ld h, b                                          ; $5bba: $60
	nop                                              ; $5bbb: $00
	ldh [$30], a                                     ; $5bbc: $e0 $30
	jr jr_05b_5b8c                                   ; $5bbe: $18 $cc

	sbc b                                            ; $5bc0: $98
	ldh a, [$c0]                                     ; $5bc1: $f0 $c0
	nop                                              ; $5bc3: $00
	ret nz                                           ; $5bc4: $c0

	ld h, b                                          ; $5bc5: $60
	sub h                                            ; $5bc6: $94
	jr nc, @+$01                                     ; $5bc7: $30 $ff

	cp $7e                                           ; $5bc9: $fe $7e
	ld a, h                                          ; $5bcb: $7c
	ld a, e                                          ; $5bcc: $7b
	ld [hl], h                                       ; $5bcd: $74
	ld l, b                                          ; $5bce: $68
	ld d, b                                          ; $5bcf: $50
	nop                                              ; $5bd0: $00
	ld bc, $df7a                                     ; $5bd1: $01 $7a $df
	sbc e                                            ; $5bd4: $9b
	inc c                                            ; $5bd5: $0c
	jr jr_05b_5c08                                   ; $5bd6: $18 $30

	rlca                                             ; $5bd8: $07
	ld a, c                                          ; $5bd9: $79
	adc e                                            ; $5bda: $8b
	sbc e                                            ; $5bdb: $9b
	jp $1e71                                         ; $5bdc: $c3 $71 $1e


	ld b, $7a                                        ; $5bdf: $06 $7a
	jr nc, @-$1f                                     ; $5be1: $30 $df

	db $fd                                           ; $5be3: $fd
	sub h                                            ; $5be4: $94
	ccf                                              ; $5be5: $3f
	rrca                                             ; $5be6: $0f
	inc bc                                           ; $5be7: $03
	jr nz, jr_05b_5c2a                               ; $5be8: $20 $40

	add c                                            ; $5bea: $81
	add c                                            ; $5beb: $81
	ld [bc], a                                       ; $5bec: $02
	ld [bc], a                                       ; $5bed: $02
	inc b                                            ; $5bee: $04
	dec b                                            ; $5bef: $05
	reti                                             ; $5bf0: $d9


	rst $38                                          ; $5bf1: $ff
	sub [hl]                                         ; $5bf2: $96
	adc h                                            ; $5bf3: $8c
	sub b                                            ; $5bf4: $90
	jr nz, @+$42                                     ; $5bf5: $20 $40

	ld b, b                                          ; $5bf7: $40
	add b                                            ; $5bf8: $80
	add c                                            ; $5bf9: $81
	inc bc                                           ; $5bfa: $03
	cp $78                                           ; $5bfb: $fe $78
	ld d, b                                          ; $5bfd: $50
	ld [hl], a                                       ; $5bfe: $77
	sbc l                                            ; $5bff: $9d
	ld a, a                                          ; $5c00: $7f
	res 3, l                                         ; $5c01: $cb $9d
	rra                                              ; $5c03: $1f
	ccf                                              ; $5c04: $3f
	ld [hl], l                                       ; $5c05: $75
	add [hl]                                         ; $5c06: $86
	ld e, d                                          ; $5c07: $5a

jr_05b_5c08:
	add b                                            ; $5c08: $80
	ld a, [hl]                                       ; $5c09: $7e
	adc a                                            ; $5c0a: $8f
	ld a, e                                          ; $5c0b: $7b
	push hl                                          ; $5c0c: $e5
	ld sp, hl                                        ; $5c0d: $f9
	sbc l                                            ; $5c0e: $9d
	cp $e1                                           ; $5c0f: $fe $e1
	ld l, a                                          ; $5c11: $6f
	ld d, [hl]                                       ; $5c12: $56
	ld a, a                                          ; $5c13: $7f
	xor b                                            ; $5c14: $a8
	ld a, [$457f]                                    ; $5c15: $fa $7f $45
	sbc d                                            ; $5c18: $9a
	jr nz, jr_05b_5c2b                               ; $5c19: $20 $10

	db $10                                           ; $5c1b: $10
	ld [$7608], sp                                   ; $5c1c: $08 $08 $76
	or e                                             ; $5c1f: $b3
	ld [hl], l                                       ; $5c20: $75
	inc c                                            ; $5c21: $0c
	sbc d                                            ; $5c22: $9a
	ld b, b                                          ; $5c23: $40
	inc hl                                           ; $5c24: $23
	jr jr_05b_5c2b                                   ; $5c25: $18 $04

	inc bc                                           ; $5c27: $03
	ld a, e                                          ; $5c28: $7b
	ld c, e                                          ; $5c29: $4b

jr_05b_5c2a:
	sbc h                                            ; $5c2a: $9c

jr_05b_5c2b:
	rst $38                                          ; $5c2b: $ff
	ldh a, [$f8]                                     ; $5c2c: $f0 $f8
	ld a, c                                          ; $5c2e: $79
	dec de                                           ; $5c2f: $1b
	ld e, a                                          ; $5c30: $5f
	cp b                                             ; $5c31: $b8
	db $e3                                           ; $5c32: $e3
	ld a, a                                          ; $5c33: $7f
	ld d, h                                          ; $5c34: $54
	ld h, a                                          ; $5c35: $67
	ld hl, sp-$75                                    ; $5c36: $f8 $8b
	inc e                                            ; $5c38: $1c
	ld c, $01                                        ; $5c39: $0e $01
	rrca                                             ; $5c3b: $0f
	dec a                                            ; $5c3c: $3d
	or $c6                                           ; $5c3d: $f6 $c6
	db $e4                                           ; $5c3f: $e4
	ld e, $0f                                        ; $5c40: $1e $0f
	inc bc                                           ; $5c42: $03
	rrca                                             ; $5c43: $0f
	ld [hl-], a                                      ; $5c44: $32
	ldh [$e0], a                                     ; $5c45: $e0 $e0
	ld b, b                                          ; $5c47: $40
	sub h                                            ; $5c48: $94
	ei                                               ; $5c49: $fb
	ld a, a                                          ; $5c4a: $7f
	rst JumpTable                                          ; $5c4b: $c7
	ld a, e                                          ; $5c4c: $7b
	and l                                            ; $5c4d: $a5
	sbc e                                            ; $5c4e: $9b
	rst $38                                          ; $5c4f: $ff
	ld l, a                                          ; $5c50: $6f
	rlca                                             ; $5c51: $07
	add b                                            ; $5c52: $80
	halt                                             ; $5c53: $76
	ld c, h                                          ; $5c54: $4c
	sbc d                                            ; $5c55: $9a
	ld a, a                                          ; $5c56: $7f
	and [hl]                                         ; $5c57: $a6
	ld l, [hl]                                       ; $5c58: $6e
	sbc $3e                                          ; $5c59: $de $3e
	db $dd                                           ; $5c5b: $dd
	rst $38                                          ; $5c5c: $ff
	sbc l                                            ; $5c5d: $9d

jr_05b_5c5e:
	sbc $9e                                          ; $5c5e: $de $9e
	ld l, [hl]                                       ; $5c60: $6e
	inc l                                            ; $5c61: $2c
	adc a                                            ; $5c62: $8f
	ld h, b                                          ; $5c63: $60
	jr c, jr_05b_5c6d                                ; $5c64: $38 $07

	inc c                                            ; $5c66: $0c
	add h                                            ; $5c67: $84
	add d                                            ; $5c68: $82
	add [hl]                                         ; $5c69: $86
	ld b, $20                                        ; $5c6a: $06 $20
	sbc b                                            ; $5c6c: $98

jr_05b_5c6d:
	adc a                                            ; $5c6d: $8f
	add h                                            ; $5c6e: $84
	inc b                                            ; $5c6f: $04
	ld b, $02                                        ; $5c70: $06 $02
	add d                                            ; $5c72: $82
	ld a, d                                          ; $5c73: $7a
	sub $9a                                          ; $5c74: $d6 $9a
	ld [hl], a                                       ; $5c76: $77
	ld a, $7f                                        ; $5c77: $3e $7f
	rst SubAFromBC                                          ; $5c79: $e7
	ld b, c                                          ; $5c7a: $41
	ld a, e                                          ; $5c7b: $7b
	ld hl, sp-$62                                    ; $5c7c: $f8 $9e
	jr c, jr_05b_5c5e                                ; $5c7e: $38 $de

	ld a, a                                          ; $5c80: $7f
	ld [hl], e                                       ; $5c81: $73
	add b                                            ; $5c82: $80
	sbc e                                            ; $5c83: $9b
	dec b                                            ; $5c84: $05
	and e                                            ; $5c85: $a3
	push de                                          ; $5c86: $d5
	add sp, -$03                                     ; $5c87: $e8 $fd
	add b                                            ; $5c89: $80
	ld sp, hl                                        ; $5c8a: $f9
	pop bc                                           ; $5c8b: $c1
	pop hl                                           ; $5c8c: $e1
	rst FarCall                                          ; $5c8d: $f7
	ld e, l                                          ; $5c8e: $5d
	call c, $dbde                                    ; $5c8f: $dc $de $db
	ld c, a                                          ; $5c92: $4f
	ld h, l                                          ; $5c93: $65
	ld h, $b3                                        ; $5c94: $26 $b3
	ld c, a                                          ; $5c96: $4f
	rst GetHLinHL                                          ; $5c97: $cf
	set 1, l                                         ; $5c98: $cb $cd
	push bc                                          ; $5c9a: $c5
	add $e3                                          ; $5c9b: $c6 $e3
	pop hl                                           ; $5c9d: $e1
	adc b                                            ; $5c9e: $88
	add a                                            ; $5c9f: $87
	ld b, c                                          ; $5ca0: $41
	ld h, c                                          ; $5ca1: $61
	ld hl, $ccbf                                     ; $5ca2: $21 $bf $cc
	jp nz, $8f1f                                     ; $5ca5: $c2 $1f $8f

	pop bc                                           ; $5ca8: $c1
	adc b                                            ; $5ca9: $88
	pop bc                                           ; $5caa: $c1
	cp $f0                                           ; $5cab: $fe $f0
	db $fc                                           ; $5cad: $fc
	cp $70                                           ; $5cae: $fe $70
	sub b                                            ; $5cb0: $90
	db $10                                           ; $5cb1: $10
	ld [$8f88], sp                                   ; $5cb2: $08 $88 $8f
	adc h                                            ; $5cb5: $8c
	call nz, $d0f0                                   ; $5cb6: $c4 $f0 $d0
	sub b                                            ; $5cb9: $90
	sbc b                                            ; $5cba: $98
	adc a                                            ; $5cbb: $8f
	adc b                                            ; $5cbc: $88
	ret z                                            ; $5cbd: $c8

	ld c, h                                          ; $5cbe: $4c
	ld b, $06                                        ; $5cbf: $06 $06
	sbc $04                                          ; $5cc1: $de $04
	sbc e                                            ; $5cc3: $9b
	db $fc                                           ; $5cc4: $fc
	inc b                                            ; $5cc5: $04
	inc b                                            ; $5cc6: $04
	inc bc                                           ; $5cc7: $03
	ld a, c                                          ; $5cc8: $79

Jump_05b_5cc9:
	sub c                                            ; $5cc9: $91
	ld a, l                                          ; $5cca: $7d
	and e                                            ; $5ccb: $a3
	rst SubAFromDE                                          ; $5ccc: $df
	rlca                                             ; $5ccd: $07
	sbc h                                            ; $5cce: $9c
	dec b                                            ; $5ccf: $05
	ld a, [bc]                                       ; $5cd0: $0a
	ld a, [bc]                                       ; $5cd1: $0a
	call c, $7e0c                                    ; $5cd2: $dc $0c $7e
	ld [$7879], a                                    ; $5cd5: $ea $79 $78
	sbc $fc                                          ; $5cd8: $de $fc
	ld [hl], c                                       ; $5cda: $71
	ld a, d                                          ; $5cdb: $7a
	sbc $0f                                          ; $5cdc: $de $0f
	ld e, [hl]                                       ; $5cde: $5e
	ret nc                                           ; $5cdf: $d0

	ld a, a                                          ; $5ce0: $7f
	add sp, $7e                                      ; $5ce1: $e8 $7e
	or l                                             ; $5ce3: $b5
	ld a, [hl]                                       ; $5ce4: $7e
	rst GetHLinHL                                          ; $5ce5: $cf
	ld sp, hl                                        ; $5ce6: $f9
	ld l, [hl]                                       ; $5ce7: $6e
	jp nc, $1453                                     ; $5ce8: $d2 $53 $14

	ld [hl], d                                       ; $5ceb: $72
	sbc [hl]                                         ; $5cec: $9e
	ld sp, hl                                        ; $5ced: $f9
	sbc [hl]                                         ; $5cee: $9e
	inc a                                            ; $5cef: $3c
	ld l, h                                          ; $5cf0: $6c
	add hl, hl                                       ; $5cf1: $29
	sbc e                                            ; $5cf2: $9b
	db $fc                                           ; $5cf3: $fc
	rlca                                             ; $5cf4: $07
	inc bc                                           ; $5cf5: $03
	ld bc, $1566                                     ; $5cf6: $01 $66 $15
	ld a, b                                          ; $5cf9: $78
	db $dd                                           ; $5cfa: $dd
	ld a, h                                          ; $5cfb: $7c
	sub $69                                          ; $5cfc: $d6 $69
	ld h, b                                          ; $5cfe: $60
	sbc [hl]                                         ; $5cff: $9e
	ld a, a                                          ; $5d00: $7f
	ld l, a                                          ; $5d01: $6f
	xor e                                            ; $5d02: $ab
	ld h, e                                          ; $5d03: $63
	and d                                            ; $5d04: $a2
	ld l, e                                          ; $5d05: $6b
	ld sp, hl                                        ; $5d06: $f9
	ld h, a                                          ; $5d07: $67
	call nc, $f77f                                   ; $5d08: $d4 $7f $f7
	sbc e                                            ; $5d0b: $9b
	inc b                                            ; $5d0c: $04
	inc c                                            ; $5d0d: $0c
	inc a                                            ; $5d0e: $3c
	ld a, [hl]                                       ; $5d0f: $7e
	ld [hl], h                                       ; $5d10: $74
	rst SubAFromDE                                          ; $5d11: $df
	sbc e                                            ; $5d12: $9b
	ld b, $08                                        ; $5d13: $06 $08
	jr c, jr_05b_5d93                                ; $5d15: $38 $7c

	ld [hl], a                                       ; $5d17: $77
	or l                                             ; $5d18: $b5
	sub l                                            ; $5d19: $95
	ld h, b                                          ; $5d1a: $60
	ld c, b                                          ; $5d1b: $48
	ld b, h                                          ; $5d1c: $44
	ld b, h                                          ; $5d1d: $44
	ld h, h                                          ; $5d1e: $64
	and $e4                                          ; $5d1f: $e6 $e4
	call nz, $4444                                   ; $5d21: $c4 $44 $44
	db $dd                                           ; $5d24: $dd
	ld c, b                                          ; $5d25: $48
	sbc e                                            ; $5d26: $9b
	jp z, $ffea                                      ; $5d27: $ca $ea $ff

	cp $de                                           ; $5d2a: $fe $de
	ld b, b                                          ; $5d2c: $40
	rst SubAFromDE                                          ; $5d2d: $df
	ld h, b                                          ; $5d2e: $60
	sbc [hl]                                         ; $5d2f: $9e
	ld [hl], b                                       ; $5d30: $70
	ld a, d                                          ; $5d31: $7a
	push af                                          ; $5d32: $f5
	ld l, b                                          ; $5d33: $68
	db $fc                                           ; $5d34: $fc
	sbc $03                                          ; $5d35: $de $03
	rst SubAFromDE                                          ; $5d37: $df
	rlca                                             ; $5d38: $07
	ld a, a                                          ; $5d39: $7f
	ld b, b                                          ; $5d3a: $40
	call c, $dfff                                    ; $5d3b: $dc $ff $df
	cp $94                                           ; $5d3e: $fe $94
	inc bc                                           ; $5d40: $03
	ld de, $1599                                     ; $5d41: $11 $99 $15
	dec d                                            ; $5d44: $15
	add l                                            ; $5d45: $85
	add l                                            ; $5d46: $85
	ret                                              ; $5d47: $c9


	add d                                            ; $5d48: $82
	add e                                            ; $5d49: $83
	inc bc                                           ; $5d4a: $03
	db $dd                                           ; $5d4b: $dd
	adc e                                            ; $5d4c: $8b
	sbc e                                            ; $5d4d: $9b
	add a                                            ; $5d4e: $87
	ret nz                                           ; $5d4f: $c0

	adc b                                            ; $5d50: $88
	adc d                                            ; $5d51: $8a
	ld a, e                                          ; $5d52: $7b
	rra                                              ; $5d53: $1f
	sbc l                                            ; $5d54: $9d
	ld [$d909], sp                                   ; $5d55: $08 $09 $d9
	rst $38                                          ; $5d58: $ff
	sub l                                            ; $5d59: $95
	ldh a, [c]                                       ; $5d5a: $f2
	ld a, b                                          ; $5d5b: $78
	jr c, jr_05b_5d9a                                ; $5d5c: $38 $3c

	ld [hl], h                                       ; $5d5e: $74
	ldh [c], a                                       ; $5d5f: $e2
	push hl                                          ; $5d60: $e5
	xor $fc                                          ; $5d61: $ee $fc
	ld hl, sp+$79                                    ; $5d63: $f8 $79
	cp [hl]                                          ; $5d65: $be
	add h                                            ; $5d66: $84
	ldh a, [c]                                       ; $5d67: $f2
	db $e3                                           ; $5d68: $e3
	and $51                                          ; $5d69: $e6 $51
	jr c, jr_05b_5d85                                ; $5d6b: $38 $18

	inc c                                            ; $5d6d: $0c
	ld [$0604], sp                                   ; $5d6e: $08 $04 $06
	add h                                            ; $5d71: $84
	ld [hl], b                                       ; $5d72: $70
	jr nc, jr_05b_5d8d                               ; $5d73: $30 $18

	ld [$040c], sp                                   ; $5d75: $08 $0c $04
	inc b                                            ; $5d78: $04
	add [hl]                                         ; $5d79: $86
	and c                                            ; $5d7a: $a1
	ld d, c                                          ; $5d7b: $51
	jr z, jr_05b_5db2                                ; $5d7c: $28 $34

	ld a, [de]                                       ; $5d7e: $1a
	dec e                                            ; $5d7f: $1d
	rrca                                             ; $5d80: $0f
	ld c, $7a                                        ; $5d81: $0e $7a
	inc bc                                           ; $5d83: $03
	ld a, b                                          ; $5d84: $78

jr_05b_5d85:
	scf                                              ; $5d85: $37
	rst SubAFromDE                                          ; $5d86: $df
	ld bc, $648f                                     ; $5d87: $01 $8f $64
	ld h, [hl]                                       ; $5d8a: $66
	ldh a, [c]                                       ; $5d8b: $f2
	di                                               ; $5d8c: $f3

jr_05b_5d8d:
	ld d, e                                          ; $5d8d: $53
	ld e, c                                          ; $5d8e: $59
	add hl, hl                                       ; $5d8f: $29
	xor c                                            ; $5d90: $a9
	ld b, h                                          ; $5d91: $44
	ld b, d                                          ; $5d92: $42

jr_05b_5d93:
	jp nz, $e1c2                                     ; $5d93: $c2 $c2 $e1

	pop hl                                           ; $5d96: $e1
	pop af                                           ; $5d97: $f1
	pop af                                           ; $5d98: $f1
	reti                                             ; $5d99: $d9


jr_05b_5d9a:
	inc b                                            ; $5d9a: $04
	ld a, a                                          ; $5d9b: $7f
	dec bc                                           ; $5d9c: $0b
	sbc l                                            ; $5d9d: $9d
	ld h, a                                          ; $5d9e: $67
	add a                                            ; $5d9f: $87
	db $dd                                           ; $5da0: $dd
	rlca                                             ; $5da1: $07
	sbc $04                                          ; $5da2: $de $04
	sbc $02                                          ; $5da4: $de $02
	rst SubAFromDE                                          ; $5da6: $df
	ld bc, $fcde                                     ; $5da7: $01 $de $fc
	sbc $fe                                          ; $5daa: $de $fe
	rst SubAFromDE                                          ; $5dac: $df
	rst $38                                          ; $5dad: $ff

jr_05b_5dae:
	sbc e                                            ; $5dae: $9b
	dec c                                            ; $5daf: $0d
	ld e, $1f                                        ; $5db0: $1e $1f

jr_05b_5db2:
	ccf                                              ; $5db2: $3f
	ld [hl], l                                       ; $5db3: $75
	adc a                                            ; $5db4: $8f
	ld a, a                                          ; $5db5: $7f
	db $ed                                           ; $5db6: $ed
	ei                                               ; $5db7: $fb
	ld a, l                                          ; $5db8: $7d
	sub [hl]                                         ; $5db9: $96
	sbc c                                            ; $5dba: $99
	ld b, b                                          ; $5dbb: $40
	nop                                              ; $5dbc: $00
	add b                                            ; $5dbd: $80
	and b                                            ; $5dbe: $a0
	ret nz                                           ; $5dbf: $c0

	ret nc                                           ; $5dc0: $d0

	ld [hl], h                                       ; $5dc1: $74
	db $f4                                           ; $5dc2: $f4
	rst SubAFromDE                                          ; $5dc3: $df
	ld b, b                                          ; $5dc4: $40
	rst SubAFromDE                                          ; $5dc5: $df
	jr nz, jr_05b_5e41                               ; $5dc6: $20 $79

	ld a, [hl-]                                      ; $5dc8: $3a
	rst SubAFromDE                                          ; $5dc9: $df
	rrca                                             ; $5dca: $0f
	rst SubAFromDE                                          ; $5dcb: $df
	rra                                              ; $5dcc: $1f
	sbc [hl]                                         ; $5dcd: $9e
	ccf                                              ; $5dce: $3f
	ld e, c                                          ; $5dcf: $59
	ld [hl], b                                       ; $5dd0: $70
	ld [hl], d                                       ; $5dd1: $72
	sbc [hl]                                         ; $5dd2: $9e
	ld sp, hl                                        ; $5dd3: $f9
	ld a, a                                          ; $5dd4: $7f
	or $61                                           ; $5dd5: $f6 $61
	ld h, l                                          ; $5dd7: $65
	db $fc                                           ; $5dd8: $fc
	ld a, c                                          ; $5dd9: $79
	ld [hl], l                                       ; $5dda: $75
	sbc h                                            ; $5ddb: $9c
	inc c                                            ; $5ddc: $0c
	ld c, $1e                                        ; $5ddd: $0e $1e
	sbc $3f                                          ; $5ddf: $de $3f
	ld [hl], a                                       ; $5de1: $77
	ld [hl], c                                       ; $5de2: $71
	ld a, c                                          ; $5de3: $79
	ld [hl], a                                       ; $5de4: $77
	sbc [hl]                                         ; $5de5: $9e
	ld d, d                                          ; $5de6: $52
	ld a, [$db96]                                    ; $5de7: $fa $96 $db
	nop                                              ; $5dea: $00
	rlca                                             ; $5deb: $07
	jr c, jr_05b_5dae                                ; $5dec: $38 $c0

	nop                                              ; $5dee: $00
	rlca                                             ; $5def: $07
	ccf                                              ; $5df0: $3f
	ld bc, $03da                                     ; $5df1: $01 $da $03
	sbc d                                            ; $5df4: $9a
	rst $38                                          ; $5df5: $ff
	rra                                              ; $5df6: $1f
	db $e3                                           ; $5df7: $e3
	inc bc                                           ; $5df8: $03
	inc bc                                           ; $5df9: $03
	ld a, e                                          ; $5dfa: $7b
	adc b                                            ; $5dfb: $88
	sub a                                            ; $5dfc: $97
	add a                                            ; $5dfd: $87
	ld b, e                                          ; $5dfe: $43
	ld hl, $0f11                                     ; $5dff: $21 $11 $0f
	inc h                                            ; $5e02: $24
	inc e                                            ; $5e03: $1c
	adc d                                            ; $5e04: $8a
	db $db                                           ; $5e05: $db
	rst $38                                          ; $5e06: $ff
	ld a, a                                          ; $5e07: $7f
	inc e                                            ; $5e08: $1c
	add b                                            ; $5e09: $80
	call nz, $efdf                                   ; $5e0a: $c4 $df $ef
	di                                               ; $5e0d: $f3
	reti                                             ; $5e0e: $d9


	sbc c                                            ; $5e0f: $99
	db $db                                           ; $5e10: $db
	ld d, d                                          ; $5e11: $52
	ld [$f9ee], a                                    ; $5e12: $ea $ee $f9
	sbc c                                            ; $5e15: $99
	sub e                                            ; $5e16: $93
	db $d3                                           ; $5e17: $d3
	ld d, e                                          ; $5e18: $53
	ld b, e                                          ; $5e19: $43
	cp h                                             ; $5e1a: $bc
	cp a                                             ; $5e1b: $bf
	rst AddAOntoHL                                          ; $5e1c: $ef
	rst GetHLinHL                                          ; $5e1d: $cf
	sbc e                                            ; $5e1e: $9b
	or c                                             ; $5e1f: $b1
	add hl, de                                       ; $5e20: $19
	ld h, d                                          ; $5e21: $62
	rst $38                                          ; $5e22: $ff
	rst $38                                          ; $5e23: $ff
	rst SubAFromDE                                          ; $5e24: $df
	sbc a                                            ; $5e25: $9f
	sbc a                                            ; $5e26: $9f
	dec de                                           ; $5e27: $1b
	inc sp                                           ; $5e28: $33
	sub l                                            ; $5e29: $95
	ld [hl], $1e                                     ; $5e2a: $36 $1e
	inc a                                            ; $5e2c: $3c
	db $fc                                           ; $5e2d: $fc
	ldh a, [$f8]                                     ; $5e2e: $f0 $f8
	ldh [$e0], a                                     ; $5e30: $e0 $e0
	pop de                                           ; $5e32: $d1
	db $fc                                           ; $5e33: $fc
	ld a, d                                          ; $5e34: $7a
	rst AddAOntoHL                                          ; $5e35: $ef
	ld a, d                                          ; $5e36: $7a
	add hl, de                                       ; $5e37: $19
	sub l                                            ; $5e38: $95
	ldh [$c9], a                                     ; $5e39: $e0 $c9
	rst JumpTable                                          ; $5e3b: $c7
	rst JumpTable                                          ; $5e3c: $c7
	rst SubAFromHL                                          ; $5e3d: $d7
	rst SubAFromHL                                          ; $5e3e: $d7
	push de                                          ; $5e3f: $d5
	db $d3                                           ; $5e40: $d3

jr_05b_5e41:
	add e                                            ; $5e41: $83
	add a                                            ; $5e42: $87
	call c, $9a83                                    ; $5e43: $dc $83 $9a
	add c                                            ; $5e46: $81
	pop de                                           ; $5e47: $d1
	dec bc                                           ; $5e48: $0b
	adc a                                            ; $5e49: $8f
	adc $da                                          ; $5e4a: $ce $da
	rst $38                                          ; $5e4c: $ff
	ld l, [hl]                                       ; $5e4d: $6e
	daa                                              ; $5e4e: $27
	add d                                            ; $5e4f: $82
	rst SubAFromBC                                          ; $5e50: $e7
	jp nc, $f528                                     ; $5e51: $d2 $28 $f5

	ld hl, sp-$07                                    ; $5e54: $f8 $f9
	ld sp, hl                                        ; $5e56: $f9
	rst $38                                          ; $5e57: $ff
	xor $24                                          ; $5e58: $ee $24
	ld de, $fa8f                                     ; $5e5a: $11 $8f $fa
	ei                                               ; $5e5d: $fb
	ei                                               ; $5e5e: $fb
	rst $38                                          ; $5e5f: $ff
	add $c2                                          ; $5e60: $c6 $c2
	ldh a, [c]                                       ; $5e62: $f2
	ld d, d                                          ; $5e63: $52
	ld sp, $fdf9                                     ; $5e64: $31 $f9 $fd
	rst $38                                          ; $5e67: $ff
	jp nz, $e262                                     ; $5e68: $c2 $62 $e2

	sub e                                            ; $5e6b: $93
	dec de                                           ; $5e6c: $1b
	sbc $ff                                          ; $5e6d: $de $ff
	rst SubAFromDE                                          ; $5e6f: $df
	rlca                                             ; $5e70: $07
	sbc $03                                          ; $5e71: $de $03
	rst SubAFromDE                                          ; $5e73: $df
	ld bc, $819e                                     ; $5e74: $01 $9e $81
	ld sp, hl                                        ; $5e77: $f9
	sub e                                            ; $5e78: $93
	sbc b                                            ; $5e79: $98
	ld e, c                                          ; $5e7a: $59
	ret nc                                           ; $5e7b: $d0

	or b                                             ; $5e7c: $b0
	ldh a, [$d9]                                     ; $5e7d: $f0 $d9
	cp $ff                                           ; $5e7f: $fe $ff
	pop af                                           ; $5e81: $f1
	ldh a, [$60]                                     ; $5e82: $f0 $60
	ld h, b                                          ; $5e84: $60
	ld a, e                                          ; $5e85: $7b
	ld [bc], a                                       ; $5e86: $02
	sbc [hl]                                         ; $5e87: $9e
	ld bc, $82de                                     ; $5e88: $01 $de $82
	ld a, a                                          ; $5e8b: $7f
	rst SubAFromHL                                          ; $5e8c: $d7
	ld a, [hl]                                       ; $5e8d: $7e
	ld l, c                                          ; $5e8e: $69
	ld a, a                                          ; $5e8f: $7f
	and b                                            ; $5e90: $a0
	sbc b                                            ; $5e91: $98
	add a                                            ; $5e92: $87
	rst JumpTable                                          ; $5e93: $c7
	rst FarCall                                          ; $5e94: $f7
	rst $38                                          ; $5e95: $ff
	rst $38                                          ; $5e96: $ff
	cp a                                             ; $5e97: $bf
	rra                                              ; $5e98: $1f
	ld h, l                                          ; $5e99: $65
	sbc $d6                                          ; $5e9a: $de $d6
	rst $38                                          ; $5e9c: $ff
	sbc d                                            ; $5e9d: $9a
	ld a, a                                          ; $5e9e: $7f
	ld a, [hl]                                       ; $5e9f: $7e
	inc a                                            ; $5ea0: $3c
	jr c, jr_05b_5ed3                                ; $5ea1: $38 $30

	sbc $80                                          ; $5ea3: $de $80
	rst SubAFromDE                                          ; $5ea5: $df
	ret nz                                           ; $5ea6: $c0

	rst SubAFromDE                                          ; $5ea7: $df
	ldh [hDisp1_OBP1], a                                     ; $5ea8: $e0 $94
	ldh a, [$d8]                                     ; $5eaa: $f0 $d8
	xor b                                            ; $5eac: $a8
	inc d                                            ; $5ead: $14
	ld d, $12                                        ; $5eae: $16 $12
	ld a, [bc]                                       ; $5eb0: $0a
	ld [$2009], sp                                   ; $5eb1: $08 $09 $20
	inc b                                            ; $5eb4: $04
	ld a, d                                          ; $5eb5: $7a
	sbc e                                            ; $5eb6: $9b
	ld a, c                                          ; $5eb7: $79
	reti                                             ; $5eb8: $d9


	ld [hl], d                                       ; $5eb9: $72
	ld [$637e], sp                                   ; $5eba: $08 $7e $63
	sbc [hl]                                         ; $5ebd: $9e
	ld e, $6f                                        ; $5ebe: $1e $6f
	ret                                              ; $5ec0: $c9


	ld a, a                                          ; $5ec1: $7f
	sbc $7b                                          ; $5ec2: $de $7b
	ld c, l                                          ; $5ec4: $4d
	rst SubAFromDE                                          ; $5ec5: $df
	ret nz                                           ; $5ec6: $c0

	ld d, c                                          ; $5ec7: $51
	ld l, e                                          ; $5ec8: $6b
	ld a, d                                          ; $5ec9: $7a
	xor $7e                                          ; $5eca: $ee $7e
	sbc l                                            ; $5ecc: $9d
	ld l, e                                          ; $5ecd: $6b
	xor b                                            ; $5ece: $a8
	rst $38                                          ; $5ecf: $ff
	ld [hl], c                                       ; $5ed0: $71
	reti                                             ; $5ed1: $d9


	ld a, c                                          ; $5ed2: $79

jr_05b_5ed3:
	inc h                                            ; $5ed3: $24
	pop af                                           ; $5ed4: $f1
	reti                                             ; $5ed5: $d9


	rst $38                                          ; $5ed6: $ff
	ld [hl], a                                       ; $5ed7: $77
	ld d, e                                          ; $5ed8: $53
	ld a, a                                          ; $5ed9: $7f
	adc $df                                          ; $5eda: $ce $df
	ld [bc], a                                       ; $5edc: $02
	ld l, [hl]                                       ; $5edd: $6e
	ld a, b                                          ; $5ede: $78
	rst SubAFromDE                                          ; $5edf: $df
	db $fd                                           ; $5ee0: $fd
	db $dd                                           ; $5ee1: $dd
	rst $38                                          ; $5ee2: $ff
	sbc e                                            ; $5ee3: $9b
	ld c, a                                          ; $5ee4: $4f
	ld e, e                                          ; $5ee5: $5b
	ld h, e                                          ; $5ee6: $63
	and $dd                                          ; $5ee7: $e6 $dd
	rst $38                                          ; $5ee9: $ff
	rst SubAFromDE                                          ; $5eea: $df
	ccf                                              ; $5eeb: $3f
	rst SubAFromDE                                          ; $5eec: $df
	rst $38                                          ; $5eed: $ff
	add b                                            ; $5eee: $80
	ret nz                                           ; $5eef: $c0

	ret z                                            ; $5ef0: $c8

	add $bb                                          ; $5ef1: $c6 $bb
	rst SubAFromDE                                          ; $5ef3: $df
	ld a, a                                          ; $5ef4: $7f
	sbc [hl]                                         ; $5ef5: $9e
	rlca                                             ; $5ef6: $07
	ld b, b                                          ; $5ef7: $40
	add b                                            ; $5ef8: $80
	adc h                                            ; $5ef9: $8c
	call nz, $b0e0                                   ; $5efa: $c4 $e0 $b0
	rrca                                             ; $5efd: $0f
	ld bc, $054c                                     ; $5efe: $01 $4c $05
	inc c                                            ; $5f01: $0c

jr_05b_5f02:
	sub l                                            ; $5f02: $95
	db $d3                                           ; $5f03: $d3
	rst $38                                          ; $5f04: $ff
	ld a, l                                          ; $5f05: $7d
	cp $64                                           ; $5f06: $fe $64
	inc c                                            ; $5f08: $0c
	add hl, de                                       ; $5f09: $19
	dec de                                           ; $5f0a: $1b
	ld a, $3d                                        ; $5f0b: $3e $3d
	db $fd                                           ; $5f0d: $fd
	sbc e                                            ; $5f0e: $9b
	cp $7b                                           ; $5f0f: $fe $7b
	ei                                               ; $5f11: $fb
	db $fd                                           ; $5f12: $fd
	ld [hl], d                                       ; $5f13: $72
	rst SubAFromBC                                          ; $5f14: $e7
	sbc e                                            ; $5f15: $9b
	ldh a, [$cc]                                     ; $5f16: $f0 $cc
	or [hl]                                          ; $5f18: $b6
	ld a, e                                          ; $5f19: $7b
	sbc $fd                                          ; $5f1a: $de $fd
	sub c                                            ; $5f1c: $91
	ei                                               ; $5f1d: $fb
	ret c                                            ; $5f1e: $d8

	sub c                                            ; $5f1f: $91
	sub c                                            ; $5f20: $91
	ret nc                                           ; $5f21: $d0

	ret nc                                           ; $5f22: $d0

	add h                                            ; $5f23: $84
	call nz, $81c4                                   ; $5f24: $c4 $c4 $81
	ret z                                            ; $5f27: $c8

	ret z                                            ; $5f28: $c8

	adc b                                            ; $5f29: $88
	adc b                                            ; $5f2a: $88
	sbc $c8                                          ; $5f2b: $de $c8
	rst SubAFromDE                                          ; $5f2d: $df
	rst $38                                          ; $5f2e: $ff
	sub l                                            ; $5f2f: $95
	ld sp, hl                                        ; $5f30: $f9
	ld hl, sp+$78                                    ; $5f31: $f8 $78
	ld hl, sp+$70                                    ; $5f33: $f8 $70
	ld [hl], b                                       ; $5f35: $70
	rst $38                                          ; $5f36: $ff
	ei                                               ; $5f37: $fb
	ld sp, hl                                        ; $5f38: $f9
	ld hl, sp+$7b                                    ; $5f39: $f8 $7b
	ld sp, hl                                        ; $5f3b: $f9
	ld a, a                                          ; $5f3c: $7f
	ld hl, sp+$6c                                    ; $5f3d: $f8 $6c
	ld sp, hl                                        ; $5f3f: $f9
	ld a, e                                          ; $5f40: $7b
	and [hl]                                         ; $5f41: $a6
	ld [hl], e                                       ; $5f42: $73
	ld sp, hl                                        ; $5f43: $f9
	ld [hl], e                                       ; $5f44: $73
	ld hl, sp-$2b                                    ; $5f45: $f8 $d5
	rst $38                                          ; $5f47: $ff
	ld a, e                                          ; $5f48: $7b
	inc l                                            ; $5f49: $2c
	sbc l                                            ; $5f4a: $9d
	add b                                            ; $5f4b: $80
	db $e3                                           ; $5f4c: $e3
	ld a, e                                          ; $5f4d: $7b
	rlca                                             ; $5f4e: $07
	ld l, e                                          ; $5f4f: $6b
	nop                                              ; $5f50: $00
	sbc e                                            ; $5f51: $9b
	ldh [rIE], a                                     ; $5f52: $e0 $ff
	rst $38                                          ; $5f54: $ff
	ld a, l                                          ; $5f55: $7d
	ld a, e                                          ; $5f56: $7b
	ld b, c                                          ; $5f57: $41
	sbc l                                            ; $5f58: $9d
	ld e, $0e                                        ; $5f59: $1e $0e

Jump_05b_5f5b:
	ld [hl], e                                       ; $5f5b: $73
	ld e, e                                          ; $5f5c: $5b
	sbc $02                                          ; $5f5d: $de $02
	ld a, e                                          ; $5f5f: $7b
	ld d, c                                          ; $5f60: $51
	sbc d                                            ; $5f61: $9a
	db $fd                                           ; $5f62: $fd
	dec b                                            ; $5f63: $05
	rlca                                             ; $5f64: $07
	inc bc                                           ; $5f65: $03
	rrca                                             ; $5f66: $0f
	ld [hl], l                                       ; $5f67: $75
	ldh a, [c]                                       ; $5f68: $f2
	ld a, a                                          ; $5f69: $7f
	xor $7c                                          ; $5f6a: $ee $7c
	inc sp                                           ; $5f6c: $33
	ld [hl], l                                       ; $5f6d: $75
	xor h                                            ; $5f6e: $ac
	sbc e                                            ; $5f6f: $9b
	jr nz, jr_05b_5f02                               ; $5f70: $20 $90

	sub b                                            ; $5f72: $90
	adc b                                            ; $5f73: $88
	reti                                             ; $5f74: $d9


	rst $38                                          ; $5f75: $ff
	sbc d                                            ; $5f76: $9a
	jr z, @+$26                                      ; $5f77: $28 $24

	inc d                                            ; $5f79: $14

Jump_05b_5f7a:
	ld e, $1f                                        ; $5f7a: $1e $1f
	sbc $0f                                          ; $5f7c: $de $0f
	sbc d                                            ; $5f7e: $9a
	add sp, -$1c                                     ; $5f7f: $e8 $e4
	db $f4                                           ; $5f81: $f4
	ldh a, [c]                                       ; $5f82: $f2
	pop af                                           ; $5f83: $f1
	ld a, e                                          ; $5f84: $7b
	adc l                                            ; $5f85: $8d
	sub a                                            ; $5f86: $97
	dec bc                                           ; $5f87: $0b
	dec de                                           ; $5f88: $1b
	dec sp                                           ; $5f89: $3b
	ld a, l                                          ; $5f8a: $7d
	db $fd                                           ; $5f8b: $fd
	db $fd                                           ; $5f8c: $fd
	cp $7e                                           ; $5f8d: $fe $7e
	ld l, l                                          ; $5f8f: $6d
	ld e, b                                          ; $5f90: $58
	sbc e                                            ; $5f91: $9b
	add c                                            ; $5f92: $81
	pop bc                                           ; $5f93: $c1
	ld e, $0c                                        ; $5f94: $1e $0c
	ld a, e                                          ; $5f96: $7b
	and a                                            ; $5f97: $a7
	sub [hl]                                         ; $5f98: $96
	call z, $cfde                                    ; $5f99: $cc $de $cf

Call_05b_5f9c:
	ldh [$f0], a                                     ; $5f9c: $e0 $f0
	ld a, b                                          ; $5f9e: $78
	ld a, h                                          ; $5f9f: $7c
	ld a, $33                                        ; $5fa0: $3e $33
	ld l, l                                          ; $5fa2: $6d
	ld e, e                                          ; $5fa3: $5b
	ld [hl], l                                       ; $5fa4: $75
	ld l, h                                          ; $5fa5: $6c
	ld h, [hl]                                       ; $5fa6: $66
	ld a, b                                          ; $5fa7: $78
	ld [hl], h                                       ; $5fa8: $74
	inc [hl]                                         ; $5fa9: $34
	ld [hl], e                                       ; $5faa: $73
	ld a, b                                          ; $5fab: $78
	ld a, [$6579]                                    ; $5fac: $fa $79 $65
	ld a, [hl]                                       ; $5faf: $7e
	sbc a                                            ; $5fb0: $9f
	rst SubAFromDE                                          ; $5fb1: $df
	add b                                            ; $5fb2: $80
	ld hl, sp+$56                                    ; $5fb3: $f8 $56
	nop                                              ; $5fb5: $00
	sbc $44                                          ; $5fb6: $de $44
	sbc [hl]                                         ; $5fb8: $9e
	ld [hl-], a                                      ; $5fb9: $32
	db $dd                                           ; $5fba: $dd
	ld [hl+], a                                      ; $5fbb: $22
	sbc [hl]                                         ; $5fbc: $9e
	inc hl                                           ; $5fbd: $23
	db $dd                                           ; $5fbe: $dd
	ld b, h                                          ; $5fbf: $44
	call c, $7f22                                    ; $5fc0: $dc $22 $7f
	or $df                                           ; $5fc3: $f6 $df
	ld b, l                                          ; $5fc5: $45
	sbc [hl]                                         ; $5fc6: $9e
	ld d, h                                          ; $5fc7: $54
	ld [hl], e                                       ; $5fc8: $73
	db $ec                                           ; $5fc9: $ec
	sbc l                                            ; $5fca: $9d
	inc [hl]                                         ; $5fcb: $34
	ld b, h                                          ; $5fcc: $44
	db $dd                                           ; $5fcd: $dd
	ld d, l                                          ; $5fce: $55
	ld [hl], e                                       ; $5fcf: $73
	db $ed                                           ; $5fd0: $ed
	ld a, e                                          ; $5fd1: $7b
	ld sp, hl                                        ; $5fd2: $f9
	ld a, a                                          ; $5fd3: $7f
	ei                                               ; $5fd4: $fb
	ld a, e                                          ; $5fd5: $7b
	db $eb                                           ; $5fd6: $eb
	sbc l                                            ; $5fd7: $9d
	halt                                             ; $5fd8: $76
	ld [hl], l                                       ; $5fd9: $75
	ld [hl], a                                       ; $5fda: $77
	rst AddAOntoHL                                          ; $5fdb: $ef
	sbc c                                            ; $5fdc: $99
	inc sp                                           ; $5fdd: $33
	ld [hl+], a                                      ; $5fde: $22
	ld [hl+], a                                      ; $5fdf: $22
	daa                                              ; $5fe0: $27
	ld [hl], a                                       ; $5fe1: $77
	ld h, [hl]                                       ; $5fe2: $66
	ld [hl], a                                       ; $5fe3: $77
	and $8d                                          ; $5fe4: $e6 $8d
	inc sp                                           ; $5fe6: $33
	ld [hl-], a                                      ; $5fe7: $32
	ld [hl+], a                                      ; $5fe8: $22
	daa                                              ; $5fe9: $27
	ld h, [hl]                                       ; $5fea: $66
	ld h, [hl]                                       ; $5feb: $66
	halt                                             ; $5fec: $76
	ld [hl-], a                                      ; $5fed: $32
	ld b, e                                          ; $5fee: $43
	ld [hl+], a                                      ; $5fef: $22
	ld b, h                                          ; $5ff0: $44
	ld d, d                                          ; $5ff1: $52
	inc sp                                           ; $5ff2: $33
	ld h, a                                          ; $5ff3: $67
	ld h, [hl]                                       ; $5ff4: $66
	ld h, [hl]                                       ; $5ff5: $66
	ld h, a                                          ; $5ff6: $67
	inc sp                                           ; $5ff7: $33
	sbc $44                                          ; $5ff8: $de $44
	sbc c                                            ; $5ffa: $99
	ld b, d                                          ; $5ffb: $42
	ld [hl+], a                                      ; $5ffc: $22
	ld h, a                                          ; $5ffd: $67
	ld b, h                                          ; $5ffe: $44
	ld b, h                                          ; $5fff: $44
	ld b, [hl]                                       ; $6000: $46
	ld [hl], a                                       ; $6001: $77
	or $7f                                           ; $6002: $f6 $7f
	jp hl                                            ; $6004: $e9


	sbc l                                            ; $6005: $9d
	ld d, a                                          ; $6006: $57
	ld h, h                                          ; $6007: $64
	ld d, a                                          ; $6008: $57
	or $6a                                           ; $6009: $f6 $6a
	adc c                                            ; $600b: $89
	rst $38                                          ; $600c: $ff
	sbc c                                            ; $600d: $99
	cp b                                             ; $600e: $b8
	reti                                             ; $600f: $d9


Jump_05b_6010:
	rst $38                                          ; $6010: $ff
	rst $38                                          ; $6011: $ff
	rst SubAFromDE                                          ; $6012: $df
	rst $38                                          ; $6013: $ff
	ei                                               ; $6014: $fb

jr_05b_6015:
	sbc [hl]                                         ; $6015: $9e
	jr nz, jr_05b_6015                               ; $6016: $20 $fd

	sbc d                                            ; $6018: $9a
	ld [hl], b                                       ; $6019: $70
	db $fc                                           ; $601a: $fc
	db $fc                                           ; $601b: $fc
	call c, $de58                                    ; $601c: $dc $58 $de
	inc bc                                           ; $601f: $03
	sub a                                            ; $6020: $97
	add e                                            ; $6021: $83
	inc bc                                           ; $6022: $03
	inc bc                                           ; $6023: $03
	inc hl                                           ; $6024: $23
	and a                                            ; $6025: $a7
	ld [hl], e                                       ; $6026: $73
	ld h, e                                          ; $6027: $63
	ld h, d                                          ; $6028: $62
	db $dd                                           ; $6029: $dd
	inc hl                                           ; $602a: $23
	add b                                            ; $602b: $80
	and c                                            ; $602c: $a1
	adc [hl]                                         ; $602d: $8e
	sbc [hl]                                         ; $602e: $9e
	sbc a                                            ; $602f: $9f
	rst SubAFromDE                                          ; $6030: $df
	rst SubAFromDE                                          ; $6031: $df
	sbc $de                                          ; $6032: $de $de
	ld e, a                                          ; $6034: $5f
	jr nz, @+$42                                     ; $6035: $20 $40

	ld b, b                                          ; $6037: $40
	ld b, c                                          ; $6038: $41
	ld h, e                                          ; $6039: $63
	db $e3                                           ; $603a: $e3
	ld a, c                                          ; $603b: $79
	dec h                                            ; $603c: $25
	ret nc                                           ; $603d: $d0

	or b                                             ; $603e: $b0
	or b                                             ; $603f: $b0
	or c                                             ; $6040: $b1
	sub e                                            ; $6041: $93
	sbc e                                            ; $6042: $9b
	ret                                              ; $6043: $c9


	db $fd                                           ; $6044: $fd
	ld b, $01                                        ; $6045: $06 $01
	ld [$0105], sp                                   ; $6047: $08 $05 $01
	ld b, $89                                        ; $604a: $06 $89
	sbc a                                            ; $604c: $9f
	rst $38                                          ; $604d: $ff
	rlca                                             ; $604e: $07
	rrca                                             ; $604f: $0f
	rst $38                                          ; $6050: $ff
	rst SubAFromDE                                          ; $6051: $df
	rst AddAOntoHL                                          ; $6052: $ef
	db $fc                                           ; $6053: $fc
	ldh a, [$c0]                                     ; $6054: $f0 $c0
	nop                                              ; $6056: $00
	nop                                              ; $6057: $00
	rst JumpTable                                          ; $6058: $c7
	ccf                                              ; $6059: $3f
	ld sp, hl                                        ; $605a: $f9
	ld b, $e7                                        ; $605b: $06 $e7
	pop bc                                           ; $605d: $c1
	rst SubAFromBC                                          ; $605e: $e7
	di                                               ; $605f: $f3

Jump_05b_6060:
	rst $38                                          ; $6060: $ff
	ld hl, sp+$7b                                    ; $6061: $f8 $7b
	di                                               ; $6063: $f3
	rst $38                                          ; $6064: $ff
	rst SubAFromDE                                          ; $6065: $df
	ret nz                                           ; $6066: $c0

	sub a                                            ; $6067: $97
	ldh a, [$ac]                                     ; $6068: $f0 $ac
	and [hl]                                         ; $606a: $a6
	xor a                                            ; $606b: $af
	db $fc                                           ; $606c: $fc
	ret nz                                           ; $606d: $c0

	ldh [$e0], a                                     ; $606e: $e0 $e0
	or $9d                                           ; $6070: $f6 $9d
	db $10                                           ; $6072: $10
	ld h, h                                          ; $6073: $64
	ei                                               ; $6074: $fb
	sbc l                                            ; $6075: $9d
	ldh [rAUD2LOW], a                                ; $6076: $e0 $18
	ei                                               ; $6078: $fb
	sbc l                                            ; $6079: $9d
	inc b                                            ; $607a: $04
	db $10                                           ; $607b: $10
	db $dd                                           ; $607c: $dd
	ld bc, $9efd                                     ; $607d: $01 $fd $9e
	ld a, a                                          ; $6080: $7f
	sbc $ff                                          ; $6081: $de $ff
	rst SubAFromDE                                          ; $6083: $df
	ld a, a                                          ; $6084: $7f
	rst SubAFromDE                                          ; $6085: $df
	ccf                                              ; $6086: $3f
	db $db                                           ; $6087: $db
	rst $38                                          ; $6088: $ff
	rst SubAFromDE                                          ; $6089: $df
	ld a, a                                          ; $608a: $7f
	adc a                                            ; $608b: $8f
	rst $38                                          ; $608c: $ff
	sbc a                                            ; $608d: $9f
	cp $97                                           ; $608e: $fe $97

Jump_05b_6090:
	sbc a                                            ; $6090: $9f
	sbc e                                            ; $6091: $9b
	ld c, a                                          ; $6092: $4f
	call z, rIE                                    ; $6093: $cc $ff $ff
	rrca                                             ; $6096: $0f
	ld l, [hl]                                       ; $6097: $6e
	ld h, [hl]                                       ; $6098: $66
	halt                                             ; $6099: $76
	or d                                             ; $609a: $b2
	cp e                                             ; $609b: $bb
	reti                                             ; $609c: $d9


	rst $38                                          ; $609d: $ff
	sbc [hl]                                         ; $609e: $9e
	add b                                            ; $609f: $80
	ld a, [$ffd9]                                    ; $60a0: $fa $d9 $ff
	ld sp, hl                                        ; $60a3: $f9
	sbc c                                            ; $60a4: $99
	rst $38                                          ; $60a5: $ff
	db $fc                                           ; $60a6: $fc
	ld hl, sp-$08                                    ; $60a7: $f8 $f8
	ldh a, [$f8]                                     ; $60a9: $f0 $f8
	ld a, e                                          ; $60ab: $7b
	ldh a, [$8d]                                     ; $60ac: $f0 $8d
	inc bc                                           ; $60ae: $03
	rlca                                             ; $60af: $07
	rlca                                             ; $60b0: $07
	rrca                                             ; $60b1: $0f
	rlca                                             ; $60b2: $07
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	ld [bc], a                                       ; $60b5: $02
	add d                                            ; $60b6: $82
	ld b, c                                          ; $60b7: $41
	ld hl, $4221                                     ; $60b8: $21 $21 $42
	ld [bc], a                                       ; $60bb: $02
	add d                                            ; $60bc: $82
	nop                                              ; $60bd: $00
	nop                                              ; $60be: $00
	add b                                            ; $60bf: $80
	ld a, e                                          ; $60c0: $7b
	ld a, l                                          ; $60c1: $7d
	ld [hl], e                                       ; $60c2: $73
	ld l, [hl]                                       ; $60c3: $6e
	ldh [$b4], a                                     ; $60c4: $e0 $b4
	add b                                            ; $60c6: $80
	rst $38                                          ; $60c7: $ff
	cp [hl]                                          ; $60c8: $be
	ld d, a                                          ; $60c9: $57
	ld b, $18                                        ; $60ca: $06 $18
	sub b                                            ; $60cc: $90
	nop                                              ; $60cd: $00
	ld bc, $4100                                     ; $60ce: $01 $00 $41
	xor b                                            ; $60d1: $a8
	ld sp, hl                                        ; $60d2: $f9
	rst SubAFromBC                                          ; $60d3: $e7

jr_05b_60d4:
	ld l, a                                          ; $60d4: $6f
	rst $38                                          ; $60d5: $ff
	cp $f8                                           ; $60d6: $fe $f8
	ld hl, sp-$04                                    ; $60d8: $f8 $fc
	cp h                                             ; $60da: $bc
	sub b                                            ; $60db: $90
	ld bc, $a50d                                     ; $60dc: $01 $0d $a5
	rlca                                             ; $60df: $07
	rlca                                             ; $60e0: $07
	inc bc                                           ; $60e1: $03
	ld b, e                                          ; $60e2: $43
	ld l, a                                          ; $60e3: $6f
	cp $f2                                           ; $60e4: $fe $f2
	sbc c                                            ; $60e6: $99
	ld e, d                                          ; $60e7: $5a
	add c                                            ; $60e8: $81
	ld bc, $1111                                     ; $60e9: $01 $11 $11
	db $10                                           ; $60ec: $10
	sbc $02                                          ; $60ed: $de $02
	sbc d                                            ; $60ef: $9a
	ld a, a                                          ; $60f0: $7f
	cp $ee                                           ; $60f1: $fe $ee
	xor $ef                                          ; $60f3: $ee $ef
	sbc $fd                                          ; $60f5: $de $fd
	sub a                                            ; $60f7: $97
	inc de                                           ; $60f8: $13
	adc [hl]                                         ; $60f9: $8e
	ret c                                            ; $60fa: $d8

	or l                                             ; $60fb: $b5
	xor e                                            ; $60fc: $ab
	sub $e5                                          ; $60fd: $d6 $e5
	xor l                                            ; $60ff: $ad
	ld a, e                                          ; $6100: $7b
	inc h                                            ; $6101: $24
	add b                                            ; $6102: $80
	ld a, d                                          ; $6103: $7a
	ld [hl], h                                       ; $6104: $74
	ld l, c                                          ; $6105: $69
	ld e, e                                          ; $6106: $5b
	db $d3                                           ; $6107: $d3
	ld e, $70                                        ; $6108: $1e $70
	rst JumpTable                                          ; $610a: $c7
	sbc [hl]                                         ; $610b: $9e
	ld a, c                                          ; $610c: $79
	di                                               ; $610d: $f3
	ld h, l                                          ; $610e: $65
	ret                                              ; $610f: $c9


	pop hl                                           ; $6110: $e1
	adc a                                            ; $6111: $8f
	jr c, @+$63                                      ; $6112: $38 $61

	rst JumpTable                                          ; $6114: $c7
	adc a                                            ; $6115: $8f
	sbc [hl]                                         ; $6116: $9e
	ld a, $1d                                        ; $6117: $3e $1d
	ldh a, [$b1]                                     ; $6119: $f0 $b1
	ld e, [hl]                                       ; $611b: $5e
	db $e4                                           ; $611c: $e4
	call nc, $edf9                                   ; $611d: $d4 $f9 $ed
	ldh [rIF], a                                     ; $6120: $e0 $0f
	add c                                            ; $6122: $81
	ld a, a                                          ; $6123: $7f
	db $e3                                           ; $6124: $e3
	sbc a                                            ; $6125: $9f
	cpl                                              ; $6126: $2f
	ld c, $1a                                        ; $6127: $0e $1a
	sbc $c1                                          ; $6129: $de $c1
	xor b                                            ; $612b: $a8
	inc h                                            ; $612c: $24
	halt                                             ; $612d: $76
	jp nc, $595b                                     ; $612e: $d2 $5b $59

	ld h, b                                          ; $6131: $60
	cp $d7                                           ; $6132: $fe $d7
	db $db                                           ; $6134: $db
	ret                                              ; $6135: $c9


	ld l, l                                          ; $6136: $6d
	db $e4                                           ; $6137: $e4

jr_05b_6138:
	and $0f                                          ; $6138: $e6 $0f
	di                                               ; $613a: $f3
	ld a, h                                          ; $613b: $7c
	rra                                              ; $613c: $1f
	ld c, e                                          ; $613d: $4b
	push de                                          ; $613e: $d5
	add e                                            ; $613f: $83
	dec hl                                           ; $6140: $2b
	ld a, e                                          ; $6141: $7b
	jr nc, jr_05b_60d4                               ; $6142: $30 $90

	ldh [$b1], a                                     ; $6144: $e0 $b1
	sbc b                                            ; $6146: $98
	call c, $32cc                                    ; $6147: $dc $cc $32
	pop bc                                           ; $614a: $c1
	ld l, h                                          ; $614b: $6c
	ld l, $de                                        ; $614c: $2e $de
	cp $fe                                           ; $614e: $fe $fe
	db $fc                                           ; $6150: $fc
	nop                                              ; $6151: $00
	ld c, $de                                        ; $6152: $0e $de
	rra                                              ; $6154: $1f
	rst SubAFromDE                                          ; $6155: $df
	sbc a                                            ; $6156: $9f
	sbc c                                            ; $6157: $99
	ld e, a                                          ; $6158: $5f
	cp a                                             ; $6159: $bf
	ld e, a                                          ; $615a: $5f
	rst $38                                          ; $615b: $ff
	ld a, a                                          ; $615c: $7f
	rra                                              ; $615d: $1f
	sbc $0f                                          ; $615e: $de $0f
	ld a, a                                          ; $6160: $7f
	db $fc                                           ; $6161: $fc
	adc l                                            ; $6162: $8d
	rlca                                             ; $6163: $07
	add e                                            ; $6164: $83
	pop hl                                           ; $6165: $e1
	jr nc, jr_05b_6138                               ; $6166: $30 $d0

	ldh a, [$b6]                                     ; $6168: $f0 $b6
	rst SubAFromDE                                          ; $616a: $df
	ei                                               ; $616b: $fb

jr_05b_616c:
	ld sp, hl                                        ; $616c: $f9
	ld hl, sp-$04                                    ; $616d: $f8 $fc
	ld a, h                                          ; $616f: $7c
	inc a                                            ; $6170: $3c
	ret                                              ; $6171: $c9


	ldh [$f4], a                                     ; $6172: $e0 $f4
	cp $76                                           ; $6174: $fe $76
	xor a                                            ; $6176: $af
	ld l, d                                          ; $6177: $6a
	xor c                                            ; $6178: $a9
	sbc [hl]                                         ; $6179: $9e
	daa                                              ; $617a: $27

Jump_05b_617b:
	db $fc                                           ; $617b: $fc
	ld a, [hl]                                       ; $617c: $7e
	db $ed                                           ; $617d: $ed
	ld a, d                                          ; $617e: $7a
	sub $4a                                          ; $617f: $d6 $4a
	ret nz                                           ; $6181: $c0

	sbc e                                            ; $6182: $9b
	db $fd                                           ; $6183: $fd
	ei                                               ; $6184: $fb
	ei                                               ; $6185: $fb
	db $fc                                           ; $6186: $fc
	ld [hl], a                                       ; $6187: $77
	ldh a, [$7a]                                     ; $6188: $f0 $7a
	ret nz                                           ; $618a: $c0

	db $fd                                           ; $618b: $fd
	sub e                                            ; $618c: $93
	add d                                            ; $618d: $82
	call nz, $0484                                   ; $618e: $c4 $84 $04
	ld [$1008], sp                                   ; $6191: $08 $08 $10
	ld de, $8200                                     ; $6194: $11 $00 $82
	jp Jump_05b_7a81                                 ; $6197: $c3 $81 $7a


	xor [hl]                                         ; $619a: $ae
	sub [hl]                                         ; $619b: $96
	ld c, $00                                        ; $619c: $0e $00
	xor e                                            ; $619e: $ab
	rst $38                                          ; $619f: $ff
	cp a                                             ; $61a0: $bf
	ld h, a                                          ; $61a1: $67
	ccf                                              ; $61a2: $3f
	xor a                                            ; $61a3: $af
	ld a, [bc]                                       ; $61a4: $0a
	cp $97                                           ; $61a5: $fe $97
	ld b, b                                          ; $61a7: $40
	sbc b                                            ; $61a8: $98
	ret nz                                           ; $61a9: $c0

	ld d, b                                          ; $61aa: $50
	push af                                          ; $61ab: $f5
	nop                                              ; $61ac: $00
	call nz, Call_05b_72ff                           ; $61ad: $c4 $ff $72
	ld d, h                                          ; $61b0: $54
	rst FarCall                                          ; $61b1: $f7
	sbc c                                            ; $61b2: $99
	inc a                                            ; $61b3: $3c
	ld a, a                                          ; $61b4: $7f
	rst SubAFromBC                                          ; $61b5: $e7
	rst $38                                          ; $61b6: $ff
	rst $38                                          ; $61b7: $ff
	rst FarCall                                          ; $61b8: $f7
	rst FarCall                                          ; $61b9: $f7
	sbc h                                            ; $61ba: $9c
	ld [hl], b                                       ; $61bb: $70
	rst FarCall                                          ; $61bc: $f7
	ld a, $53                                        ; $61bd: $3e $53
	ldh [$9c], a                                     ; $61bf: $e0 $9c
	nop                                              ; $61c1: $00
	ccf                                              ; $61c2: $3f
	cp b                                             ; $61c3: $b8
	ld d, a                                          ; $61c4: $57
	ldh a, [hDisp1_WX]                                     ; $61c5: $f0 $96
	and a                                            ; $61c7: $a7
	or a                                             ; $61c8: $b7
	nop                                              ; $61c9: $00
	nop                                              ; $61ca: $00
	rlca                                             ; $61cb: $07
	rst $38                                          ; $61cc: $ff
	pop af                                           ; $61cd: $f1
	rst $38                                          ; $61ce: $ff
	ld e, b                                          ; $61cf: $58
	ei                                               ; $61d0: $fb
	rst SubAFromDE                                          ; $61d1: $df
	ld bc, $f097                                     ; $61d2: $01 $97 $f0
	inc b                                            ; $61d5: $04
	ld a, h                                          ; $61d6: $7c
	ld hl, sp-$07                                    ; $61d7: $f8 $f9
	ld [$fefe], sp                                   ; $61d9: $08 $fe $fe
	sbc $03                                          ; $61dc: $de $03
	sbc l                                            ; $61de: $9d
	rlca                                             ; $61df: $07
	ld b, $7b                                        ; $61e0: $06 $7b
	cp b                                             ; $61e2: $b8
	sbc d                                            ; $61e3: $9a
	ld [$2929], sp                                   ; $61e4: $08 $29 $29
	ld [hl+], a                                      ; $61e7: $22
	inc b                                            ; $61e8: $04
	ld a, d                                          ; $61e9: $7a
	jr jr_05b_616c                                   ; $61ea: $18 $80

	rst FarCall                                          ; $61ec: $f7
	sub $d6                                          ; $61ed: $d6 $d6
	db $dd                                           ; $61ef: $dd
	ei                                               ; $61f0: $fb
	rst $38                                          ; $61f1: $ff
	ld [$dddb], a                                    ; $61f2: $ea $db $dd
	rst SubAFromHL                                          ; $61f5: $d7
	or a                                             ; $61f6: $b7
	or a                                             ; $61f7: $b7
	or $f6                                           ; $61f8: $f6 $f6
	sub a                                            ; $61fa: $97
	and [hl]                                         ; $61fb: $a6
	and [hl]                                         ; $61fc: $a6
	xor h                                            ; $61fd: $ac
	call z, $cdcc                                    ; $61fe: $cc $cc $cd
	call $92d3                                       ; $6201: $cd $d3 $92
	and h                                            ; $6204: $a4
	inc h                                            ; $6205: $24
	jr nz, jr_05b_6278                               ; $6206: $20 $70

	ld d, b                                          ; $6208: $50
	ld d, b                                          ; $6209: $50
	inc a                                            ; $620a: $3c
	sbc h                                            ; $620b: $9c
	ld a, l                                          ; $620c: $7d
	ld a, e                                          ; $620d: $7b
	ei                                               ; $620e: $fb
	db $dd                                           ; $620f: $dd
	rst $38                                          ; $6210: $ff
	adc h                                            ; $6211: $8c
	rst SubAFromBC                                          ; $6212: $e7
	db $db                                           ; $6213: $db
	db $db                                           ; $6214: $db
	sbc e                                            ; $6215: $9b
	sbc d                                            ; $6216: $9a
	xor d                                            ; $6217: $aa
	jr nz, jr_05b_6242                               ; $6218: $20 $28

	jr jr_05b_6250                                   ; $621a: $18 $34

	inc [hl]                                         ; $621c: $34
	ld [hl], h                                       ; $621d: $74
	ld [hl], l                                       ; $621e: $75
	ld [hl], l                                       ; $621f: $75
	rst $38                                          ; $6220: $ff
	rst $38                                          ; $6221: $ff
	ld c, c                                          ; $6222: $49
	ld c, c                                          ; $6223: $49
	adc c                                            ; $6224: $89
	sbc $8a                                          ; $6225: $de $8a
	rst SubAFromDE                                          ; $6227: $df
	ld bc, $f6de                                     ; $6228: $01 $de $f6
	sbc $f7                                          ; $622b: $de $f7
	rst SubAFromDE                                          ; $622d: $df
	rst $38                                          ; $622e: $ff
	sbc d                                            ; $622f: $9a

Call_05b_6230:
	pop de                                           ; $6230: $d1
	db $dd                                           ; $6231: $dd
	call z, $aaa8                                    ; $6232: $cc $a8 $aa
	sbc $a2                                          ; $6235: $de $a2
	ld a, l                                          ; $6237: $7d
	or e                                             ; $6238: $b3
	sbc $77                                          ; $6239: $de $77
	sbc $7f                                          ; $623b: $de $7f
	ld a, c                                          ; $623d: $79
	pop de                                           ; $623e: $d1
	ld a, l                                          ; $623f: $7d
	ld d, a                                          ; $6240: $57
	ld a, a                                          ; $6241: $7f

Call_05b_6242:
jr_05b_6242:
	db $fd                                           ; $6242: $fd
	sbc h                                            ; $6243: $9c
	db $fc                                           ; $6244: $fc
	ld c, a                                          ; $6245: $4f
	ld c, a                                          ; $6246: $4f
	db $dd                                           ; $6247: $dd
	cpl                                              ; $6248: $2f
	rst SubAFromDE                                          ; $6249: $df
	rra                                              ; $624a: $1f
	sub e                                            ; $624b: $93
	rrca                                             ; $624c: $0f
	ld e, $7e                                        ; $624d: $1e $7e
	rst $38                                          ; $624f: $ff

jr_05b_6250:
	ld h, e                                          ; $6250: $63
	ld b, e                                          ; $6251: $43
	rst SubAFromBC                                          ; $6252: $e7
	ld a, a                                          ; $6253: $7f
	ldh a, [$e0]                                     ; $6254: $f0 $e0
	ret nz                                           ; $6256: $c0

	pop af                                           ; $6257: $f1
	db $dd                                           ; $6258: $dd
	rst $38                                          ; $6259: $ff
	sbc l                                            ; $625a: $9d
	inc a                                            ; $625b: $3c
	ld a, h                                          ; $625c: $7c
	ld a, d                                          ; $625d: $7a
	ld l, $7f                                        ; $625e: $2e $7f
	dec c                                            ; $6260: $0d
	sbc [hl]                                         ; $6261: $9e
	rra                                              ; $6262: $1f
	ld l, c                                          ; $6263: $69
	ld l, a                                          ; $6264: $6f
	sub [hl]                                         ; $6265: $96
	rst $38                                          ; $6266: $ff
	dec e                                            ; $6267: $1d
	rrca                                             ; $6268: $0f
	rlca                                             ; $6269: $07
	inc bc                                           ; $626a: $03
	ld bc, $c000                                     ; $626b: $01 $00 $c0
	db $fc                                           ; $626e: $fc
	halt                                             ; $626f: $76
	or e                                             ; $6270: $b3
	call c, $96ff                                    ; $6271: $dc $ff $96
	sbc a                                            ; $6274: $9f
	ld sp, hl                                        ; $6275: $f9
	rst $38                                          ; $6276: $ff
	rst $38                                          ; $6277: $ff

jr_05b_6278:
	ccf                                              ; $6278: $3f
	inc bc                                           ; $6279: $03
	rrca                                             ; $627a: $0f
	nop                                              ; $627b: $00
	ldh [rPCM34], a                                  ; $627c: $e0 $77
	xor $7c                                          ; $627e: $ee $7c
	rst $38                                          ; $6280: $ff
	ld a, l                                          ; $6281: $7d
	cp $99                                           ; $6282: $fe $99
	db $fc                                           ; $6284: $fc
	add a                                            ; $6285: $87
	rst $38                                          ; $6286: $ff
	ei                                               ; $6287: $fb
	call $fefc                                       ; $6288: $cd $fc $fe
	ld a, a                                          ; $628b: $7f
	xor d                                            ; $628c: $aa
	sbc $1f                                          ; $628d: $de $1f
	sbc h                                            ; $628f: $9c
	db $10                                           ; $6290: $10
	jr nz, jr_05b_62d3                               ; $6291: $20 $40

	ld a, c                                          ; $6293: $79
	ld d, l                                          ; $6294: $55
	ld a, [hl]                                       ; $6295: $7e
	sub a                                            ; $6296: $97
	ld a, [hl]                                       ; $6297: $7e
	ld l, a                                          ; $6298: $6f
	sub [hl]                                         ; $6299: $96
	ccf                                              ; $629a: $3f
	ld a, a                                          ; $629b: $7f
	rst $38                                          ; $629c: $ff
	ret nz                                           ; $629d: $c0

	rst $38                                          ; $629e: $ff
	rst $38                                          ; $629f: $ff
	inc h                                            ; $62a0: $24
	ld c, d                                          ; $62a1: $4a
	ld h, $77                                        ; $62a2: $26 $77
	and $9a                                          ; $62a4: $e6 $9a
	rst $38                                          ; $62a6: $ff
	db $db                                           ; $62a7: $db
	or l                                             ; $62a8: $b5
	reti                                             ; $62a9: $d9


	rst $38                                          ; $62aa: $ff
	halt                                             ; $62ab: $76
	sbc a                                            ; $62ac: $9f
	ld a, [hl]                                       ; $62ad: $7e
	ld d, e                                          ; $62ae: $53
	add b                                            ; $62af: $80
	ld b, d                                          ; $62b0: $42
	ld [$0820], sp                                   ; $62b1: $08 $20 $08
	ld bc, $80c0                                     ; $62b4: $01 $c0 $80
	ldh [$bd], a                                     ; $62b7: $e0 $bd
	rst FarCall                                          ; $62b9: $f7
	rst SubAFromDE                                          ; $62ba: $df
	rst FarCall                                          ; $62bb: $f7
	ld a, $0f                                        ; $62bc: $3e $0f
	cp l                                             ; $62be: $bd
	rst $38                                          ; $62bf: $ff
	sbc a                                            ; $62c0: $9f
	ld e, $06                                        ; $62c1: $1e $06
	add b                                            ; $62c3: $80
	nop                                              ; $62c4: $00
	inc b                                            ; $62c5: $04
	nop                                              ; $62c6: $00
	nop                                              ; $62c7: $00
	ld h, b                                          ; $62c8: $60
	pop hl                                           ; $62c9: $e1
	ld sp, hl                                        ; $62ca: $f9
	ld a, a                                          ; $62cb: $7f
	rst $38                                          ; $62cc: $ff
	ei                                               ; $62cd: $fb
	ldh a, [c]                                       ; $62ce: $f2
	sbc e                                            ; $62cf: $9b
	ld a, a                                          ; $62d0: $7f
	adc a                                            ; $62d1: $8f
	add l                                            ; $62d2: $85

jr_05b_62d3:
	sub c                                            ; $62d3: $91
	db $fc                                           ; $62d4: $fc
	sbc h                                            ; $62d5: $9c
	ld d, b                                          ; $62d6: $50
	ld a, d                                          ; $62d7: $7a
	ld l, [hl]                                       ; $62d8: $6e
	halt                                             ; $62d9: $76
	ld b, l                                          ; $62da: $45
	sub a                                            ; $62db: $97
	pop af                                           ; $62dc: $f1
	ret nz                                           ; $62dd: $c0

	di                                               ; $62de: $f3
	pop hl                                           ; $62df: $e1
	ld bc, $0383                                     ; $62e0: $01 $83 $03
	nop                                              ; $62e3: $00
	sbc $0c                                          ; $62e4: $de $0c
	add b                                            ; $62e6: $80
	ld e, $fe                                        ; $62e7: $1e $fe
	ld a, h                                          ; $62e9: $7c
	db $fc                                           ; $62ea: $fc
	db $10                                           ; $62eb: $10
	ld [bc], a                                       ; $62ec: $02
	ld a, [hl-]                                      ; $62ed: $3a
	ld c, b                                          ; $62ee: $48
	and l                                            ; $62ef: $a5
	add h                                            ; $62f0: $84
	rra                                              ; $62f1: $1f

jr_05b_62f2:
	ld hl, $f00f                                     ; $62f2: $21 $0f $f0
	ld bc, $1806                                     ; $62f5: $01 $06 $18
	ld h, b                                          ; $62f8: $60
	nop                                              ; $62f9: $00
	ret nz                                           ; $62fa: $c0

	ld h, $8e                                        ; $62fb: $26 $8e
	ld d, c                                          ; $62fd: $51
	cp b                                             ; $62fe: $b8
	ld [hl], l                                       ; $62ff: $75
	ld l, c                                          ; $6300: $69
	ld a, [hl+]                                      ; $6301: $2a
	di                                               ; $6302: $f3
	add hl, de                                       ; $6303: $19
	ld h, c                                          ; $6304: $61
	add d                                            ; $6305: $82
	rst SubAFromDE                                          ; $6306: $df
	ld [bc], a                                       ; $6307: $02
	rst SubAFromDE                                          ; $6308: $df
	inc b                                            ; $6309: $04
	add d                                            ; $630a: $82
	ld [wInitialA], sp                                   ; $630b: $08 $00 $c1
	ld h, e                                          ; $630e: $63
	jr nz, jr_05b_62f2                               ; $630f: $20 $e1

	ld h, [hl]                                       ; $6311: $66
	and l                                            ; $6312: $a5
	daa                                              ; $6313: $27
	rst $38                                          ; $6314: $ff
	ld a, $08                                        ; $6315: $3e $08
	rrca                                             ; $6317: $0f
	ld [$090f], sp                                   ; $6318: $08 $0f $09
	ld [$f4f6], sp                                   ; $631b: $08 $f6 $f4
	ld d, h                                          ; $631e: $54
	ld h, h                                          ; $631f: $64
	cp d                                             ; $6320: $ba
	ld [de], a                                       ; $6321: $12
	db $eb                                           ; $6322: $eb
	ld [hl], l                                       ; $6323: $75
	call $efcf                                       ; $6324: $cd $cf $ef
	rst $38                                          ; $6327: $ff
	ld a, d                                          ; $6328: $7a
	pop af                                           ; $6329: $f1
	sbc [hl]                                         ; $632a: $9e
	cpl                                              ; $632b: $2f
	sbc $50                                          ; $632c: $de $50
	sbc d                                            ; $632e: $9a
	ld e, b                                          ; $632f: $58
	ld c, b                                          ; $6330: $48
	ret z                                            ; $6331: $c8

	ld l, h                                          ; $6332: $6c
	ld l, h                                          ; $6333: $6c
	ld l, l                                          ; $6334: $6d
	add sp, -$21                                     ; $6335: $e8 $df
	rst $38                                          ; $6337: $ff
	jp c, $9e29                                      ; $6338: $da $29 $9e

	dec d                                            ; $633b: $15
	reti                                             ; $633c: $d9


	rst $38                                          ; $633d: $ff
	db $dd                                           ; $633e: $dd

jr_05b_633f:
	ld de, $919e                                     ; $633f: $11 $9e $91
	sbc $92                                          ; $6342: $de $92
	reti                                             ; $6344: $d9


	rst $38                                          ; $6345: $ff
	call c, $df32                                    ; $6346: $dc $32 $df
	ld [hl+], a                                      ; $6349: $22
	sbc [hl]                                         ; $634a: $9e
	ld h, $d9                                        ; $634b: $26 $d9
	rst $38                                          ; $634d: $ff
	sbc d                                            ; $634e: $9a
	ld a, a                                          ; $634f: $7f
	ld d, a                                          ; $6350: $57
	ld d, a                                          ; $6351: $57
	rla                                              ; $6352: $17
	rla                                              ; $6353: $17
	sbc $3f                                          ; $6354: $de $3f
	sbc h                                            ; $6356: $9c
	sbc a                                            ; $6357: $9f
	cp a                                             ; $6358: $bf
	cp a                                             ; $6359: $bf
	call c, Call_05b_7fff                            ; $635a: $dc $ff $7f
	ld bc, $ae7e                                     ; $635d: $01 $7e $ae
	ld a, [hl]                                       ; $6360: $7e
	call nz, $e0df                                   ; $6361: $c4 $df $e0
	reti                                             ; $6364: $d9


	rst $38                                          ; $6365: $ff
	ld a, [hl]                                       ; $6366: $7e
	pop de                                           ; $6367: $d1
	ld a, d                                          ; $6368: $7a
	ret nc                                           ; $6369: $d0

	sbc h                                            ; $636a: $9c
	ld bc, $0702                                     ; $636b: $01 $02 $07
	db $db                                           ; $636e: $db
	rst $38                                          ; $636f: $ff
	sbc d                                            ; $6370: $9a
	db $fd                                           ; $6371: $fd
	ld hl, sp+$3f                                    ; $6372: $f8 $3f
	dec hl                                           ; $6374: $2b
	ld a, [hl+]                                      ; $6375: $2a
	sbc $aa                                          ; $6376: $de $aa
	sbc l                                            ; $6378: $9d
	ld [$d76a], a                                    ; $6379: $ea $6a $d7
	rst $38                                          ; $637c: $ff
	db $db                                           ; $637d: $db
	ld b, b                                          ; $637e: $40
	ld h, a                                          ; $637f: $67
	rst GetHLinHL                                          ; $6380: $cf
	ld a, a                                          ; $6381: $7f
	jp $9efb                                         ; $6382: $c3 $fb $9e


	rra                                              ; $6385: $1f
	jp c, $9aff                                      ; $6386: $da $ff $9a

	ret                                              ; $6389: $c9


	ld c, [hl]                                       ; $638a: $4e
	ld b, a                                          ; $638b: $47
	rst JumpTable                                          ; $638c: $c7
	rst FarCall                                          ; $638d: $f7
	sbc $f3                                          ; $638e: $de $f3
	sbc l                                            ; $6390: $9d
	or $f1                                           ; $6391: $f6 $f1
	sbc $f8                                          ; $6393: $de $f8
	sbc $fc                                          ; $6395: $de $fc
	add b                                            ; $6397: $80
	ccf                                              ; $6398: $3f
	rst SubAFromDE                                          ; $6399: $df
	ld h, e                                          ; $639a: $63
	or b                                             ; $639b: $b0
	ret c                                            ; $639c: $d8

	db $ec                                           ; $639d: $ec
	or $fb                                           ; $639e: $f6 $fb
	ret nz                                           ; $63a0: $c0

	jr nz, jr_05b_633f                               ; $63a1: $20 $9c

	ld c, a                                          ; $63a3: $4f
	daa                                              ; $63a4: $27
	inc de                                           ; $63a5: $13
	add hl, bc                                       ; $63a6: $09
	inc b                                            ; $63a7: $04
	db $f4                                           ; $63a8: $f4
	ld hl, sp-$04                                    ; $63a9: $f8 $fc
	ld e, $0f                                        ; $63ab: $1e $0f
	inc bc                                           ; $63ad: $03
	inc bc                                           ; $63ae: $03
	nop                                              ; $63af: $00
	inc bc                                           ; $63b0: $03
	inc bc                                           ; $63b1: $03
	ld bc, $f0e0                                     ; $63b2: $01 $e0 $f0
	db $fc                                           ; $63b5: $fc
	db $fc                                           ; $63b6: $fc
	sbc e                                            ; $63b7: $9b
	rst $38                                          ; $63b8: $ff
	pop bc                                           ; $63b9: $c1
	nop                                              ; $63ba: $00
	ld b, h                                          ; $63bb: $44

jr_05b_63bc:
	cp $9a                                           ; $63bc: $fe $9a
	add e                                            ; $63be: $83
	cp a                                             ; $63bf: $bf
	ld a, $ff                                        ; $63c0: $3e $ff
	cp e                                             ; $63c2: $bb
	ld a, c                                          ; $63c3: $79
	add hl, de                                       ; $63c4: $19
	sbc d                                            ; $63c5: $9a
	inc a                                            ; $63c6: $3c
	nop                                              ; $63c7: $00
	ld b, b                                          ; $63c8: $40
	add b                                            ; $63c9: $80
	rla                                              ; $63ca: $17
	ld a, d                                          ; $63cb: $7a
	add b                                            ; $63cc: $80
	ld a, [hl]                                       ; $63cd: $7e
	jp nc, $bf9c                                     ; $63ce: $d2 $9c $bf

	ld a, a                                          ; $63d1: $7f
	add sp, $75                                      ; $63d2: $e8 $75
	inc b                                            ; $63d4: $04
	sbc c                                            ; $63d5: $99
	di                                               ; $63d6: $f3
	add hl, bc                                       ; $63d7: $09
	add a                                            ; $63d8: $87
	ld b, a                                          ; $63d9: $47
	ld b, d                                          ; $63da: $42
	ld h, b                                          ; $63db: $60
	ld a, e                                          ; $63dc: $7b
	xor $9a                                          ; $63dd: $ee $9a
	db $f4                                           ; $63df: $f4
	ld a, b                                          ; $63e0: $78
	cp b                                             ; $63e1: $b8
	cp l                                             ; $63e2: $bd
	sbc a                                            ; $63e3: $9f

Jump_05b_63e4:
	ld a, e                                          ; $63e4: $7b
	xor $9d                                          ; $63e5: $ee $9d
	pop bc                                           ; $63e7: $c1
	ld [bc], a                                       ; $63e8: $02
	ei                                               ; $63e9: $fb
	sbc l                                            ; $63ea: $9d
	ld a, $01                                        ; $63eb: $3e $01
	ei                                               ; $63ed: $fb
	ld a, [hl]                                       ; $63ee: $7e
	db $db                                           ; $63ef: $db
	sbc [hl]                                         ; $63f0: $9e
	db $10                                           ; $63f1: $10
	ei                                               ; $63f2: $fb
	sbc l                                            ; $63f3: $9d
	ldh a, [rIF]                                     ; $63f4: $f0 $0f
	db $fc                                           ; $63f6: $fc
	sbc e                                            ; $63f7: $9b
	ldh [$6f], a                                     ; $63f8: $e0 $6f
	jr nc, jr_05b_63bc                               ; $63fa: $30 $c0

	db $fd                                           ; $63fc: $fd
	ld a, [hl]                                       ; $63fd: $7e
	or a                                             ; $63fe: $b7
	sbc l                                            ; $63ff: $9d
	ret nz                                           ; $6400: $c0

	ccf                                              ; $6401: $3f
	db $fd                                           ; $6402: $fd
	sbc e                                            ; $6403: $9b
	rst SubAFromBC                                          ; $6404: $e7
	dec bc                                           ; $6405: $0b
	adc b                                            ; $6406: $88
	ld b, b                                          ; $6407: $40
	db $fd                                           ; $6408: $fd
	sbc e                                            ; $6409: $9b
	dec sp                                           ; $640a: $3b
	dec e                                            ; $640b: $1d
	ld [hl], a                                       ; $640c: $77
	sub h                                            ; $640d: $94
	ld a, d                                          ; $640e: $7a
	ld e, e                                          ; $640f: $5b
	adc c                                            ; $6410: $89
	nop                                              ; $6411: $00
	xor $ff                                          ; $6412: $ee $ff
	cp a                                             ; $6414: $bf
	sbc a                                            ; $6415: $9f
	or a                                             ; $6416: $b7
	rst $38                                          ; $6417: $ff
	and a                                            ; $6418: $a7
	cp a                                             ; $6419: $bf
	ei                                               ; $641a: $fb
	reti                                             ; $641b: $d9


	adc b                                            ; $641c: $88
	and b                                            ; $641d: $a0
	cp b                                             ; $641e: $b8
	db $fc                                           ; $641f: $fc
	sbc b                                            ; $6420: $98
	add b                                            ; $6421: $80
	inc d                                            ; $6422: $14
	inc d                                            ; $6423: $14
	sbc [hl]                                         ; $6424: $9e
	call $6aef                                       ; $6425: $cd $ef $6a
	push hl                                          ; $6428: $e5
	sub l                                            ; $6429: $95
	add hl, sp                                       ; $642a: $39
	jr jr_05b_6431                                   ; $642b: $18 $04

	nop                                              ; $642d: $00
	jp nc, $fada                                     ; $642e: $d2 $da $fa

jr_05b_6431:
	ld a, d                                          ; $6431: $7a
	adc $f7                                          ; $6432: $ce $f7
	ld [hl], l                                       ; $6434: $75
	ld h, l                                          ; $6435: $65
	sub h                                            ; $6436: $94
	xor a                                            ; $6437: $af
	rst GetHLinHL                                          ; $6438: $cf
	rst FarCall                                          ; $6439: $f7
	dec sp                                           ; $643a: $3b
	dec c                                            ; $643b: $0d
	nop                                              ; $643c: $00
	ld h, $66                                        ; $643d: $26 $66
	ld h, a                                          ; $643f: $67
	ld h, [hl]                                       ; $6440: $66
	ld h, h                                          ; $6441: $64
	ld a, d                                          ; $6442: $7a
	sbc $d9                                          ; $6443: $de $d9
	rst $38                                          ; $6445: $ff
	sbc l                                            ; $6446: $9d
	ld a, b                                          ; $6447: $78
	ret nz                                           ; $6448: $c0

	ld [hl], a                                       ; $6449: $77
	ld h, c                                          ; $644a: $61
	ld a, b                                          ; $644b: $78
	adc b                                            ; $644c: $88
	jp c, $98ff                                      ; $644d: $da $ff $98

	ldh [rSVBK], a                                   ; $6450: $e0 $70
	ld [hl], b                                       ; $6452: $70
	jr nc, @+$32                                     ; $6453: $30 $30

	ld a, b                                          ; $6455: $78
	ld a, b                                          ; $6456: $78
	ld [hl], h                                       ; $6457: $74
	ld a, l                                          ; $6458: $7d
	call c, $ddff                                    ; $6459: $dc $ff $dd
	rlca                                             ; $645c: $07
	ld a, e                                          ; $645d: $7b
	inc h                                            ; $645e: $24
	sbc [hl]                                         ; $645f: $9e
	ld bc, $f8dd                                     ; $6460: $01 $dd $f8
	rst SubAFromDE                                          ; $6463: $df
	db $fc                                           ; $6464: $fc
	rst SubAFromDE                                          ; $6465: $df
	cp $95                                           ; $6466: $fe $95
	xor d                                            ; $6468: $aa
	jp c, $effe                                      ; $6469: $da $fe $ef

	rst FarCall                                          ; $646c: $f7
	ei                                               ; $646d: $fb
	db $fd                                           ; $646e: $fd
	rst $38                                          ; $646f: $ff
	ld a, a                                          ; $6470: $7f
	ccf                                              ; $6471: $3f
	ld a, c                                          ; $6472: $79
	ld d, h                                          ; $6473: $54
	ld a, d                                          ; $6474: $7a
	and l                                            ; $6475: $a5
	db $dd                                           ; $6476: $dd
	ld b, b                                          ; $6477: $40
	sbc h                                            ; $6478: $9c
	ld h, b                                          ; $6479: $60
	rst $38                                          ; $647a: $ff
	push af                                          ; $647b: $f5
	ret c                                            ; $647c: $d8

	rst $38                                          ; $647d: $ff
	ld a, b                                          ; $647e: $78
	cp a                                             ; $647f: $bf
	sbc d                                            ; $6480: $9a
	rlca                                             ; $6481: $07
	inc a                                            ; $6482: $3c
	jp z, $a461                                      ; $6483: $ca $61 $a4

	reti                                             ; $6486: $d9


	rst $38                                          ; $6487: $ff
	sub [hl]                                         ; $6488: $96
	pop af                                           ; $6489: $f1
	ld sp, hl                                        ; $648a: $f9
	ret c                                            ; $648b: $d8

	ld hl, sp-$28                                    ; $648c: $f8 $d8
	ld l, a                                          ; $648e: $6f
	ld c, $0f                                        ; $648f: $0e $0f
	cp $69                                           ; $6491: $fe $69
	ld c, a                                          ; $6493: $4f
	add e                                            ; $6494: $83
	db $fd                                           ; $6495: $fd
	cp $ff                                           ; $6496: $fe $ff
	ld hl, sp+$07                                    ; $6498: $f8 $07
	ld a, [hl]                                       ; $649a: $7e
	rst $38                                          ; $649b: $ff
	rst AddAOntoHL                                          ; $649c: $ef
	ld [bc], a                                       ; $649d: $02
	ld bc, $0700                                     ; $649e: $01 $00 $07
	ld hl, sp-$7f                                    ; $64a1: $f8 $81
	rst $38                                          ; $64a3: $ff
	sbc a                                            ; $64a4: $9f
	add b                                            ; $64a5: $80
	ret z                                            ; $64a6: $c8

	ld l, b                                          ; $64a7: $68
	add sp, -$64                                     ; $64a8: $e8 $9c
	db $f4                                           ; $64aa: $f4
	call nz, $7f84                                   ; $64ab: $c4 $84 $7f
	ccf                                              ; $64ae: $3f
	sbc a                                            ; $64af: $9f
	rra                                              ; $64b0: $1f
	halt                                             ; $64b1: $76
	rst SubAFromDE                                          ; $64b2: $df
	sub [hl]                                         ; $64b3: $96
	ld b, c                                          ; $64b4: $41
	jr nz, jr_05b_64e7                               ; $64b5: $20 $30

	jr nc, jr_05b_6511                               ; $64b7: $30 $58

	jr nc, jr_05b_64e7                               ; $64b9: $30 $2c

	call nz, $de80                                   ; $64bb: $c4 $80 $de
	ret nz                                           ; $64be: $c0

	sbc c                                            ; $64bf: $99
	and b                                            ; $64c0: $a0
	ret z                                            ; $64c1: $c8

	ret nc                                           ; $64c2: $d0

	cp b                                             ; $64c3: $b8
	rst $38                                          ; $64c4: $ff
	ld a, b                                          ; $64c5: $78
	ld l, d                                          ; $64c6: $6a
	rst SubAFromBC                                          ; $64c7: $e7
	ld a, [$1f7d]                                    ; $64c8: $fa $7d $1f
	ld l, h                                          ; $64cb: $6c
	dec h                                            ; $64cc: $25
	ld l, [hl]                                       ; $64cd: $6e
	ldh [c], a                                       ; $64ce: $e2
	ldh [$db], a                                     ; $64cf: $e0 $db
	ld a, c                                          ; $64d1: $79
	ld [hl], a                                       ; $64d2: $77
	sbc [hl]                                         ; $64d3: $9e
	ld [de], a                                       ; $64d4: $12
	ld [hl], b                                       ; $64d5: $70
	inc h                                            ; $64d6: $24
	sub h                                            ; $64d7: $94
	inc b                                            ; $64d8: $04
	jr jr_05b_64fb                                   ; $64d9: $18 $20

	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	db $10                                           ; $64dd: $10
	ld d, h                                          ; $64de: $54
	ld c, [hl]                                       ; $64df: $4e
	rla                                              ; $64e0: $17
	xor a                                            ; $64e1: $af

Jump_05b_64e2:
	rst $38                                          ; $64e2: $ff
	cp $9d                                           ; $64e3: $fe $9d
	xor e                                            ; $64e5: $ab
	add c                                            ; $64e6: $81

jr_05b_64e7:
	cp $df                                           ; $64e7: $fe $df
	or a                                             ; $64e9: $b7
	adc a                                            ; $64ea: $8f
	sbc e                                            ; $64eb: $9b
	db $db                                           ; $64ec: $db
	rst $38                                          ; $64ed: $ff
	rst SubAFromDE                                          ; $64ee: $df
	call c, $80ef                                    ; $64ef: $dc $ef $80
	adc b                                            ; $64f2: $88
	adc h                                            ; $64f3: $8c
	add h                                            ; $64f4: $84
	ret nz                                           ; $64f5: $c0

	ld h, h                                          ; $64f6: $64
	ld hl, $fd10                                     ; $64f7: $21 $10 $fd
	rst $38                                          ; $64fa: $ff

jr_05b_64fb:
	ld [hl], b                                       ; $64fb: $70
	add hl, sp                                       ; $64fc: $39
	sbc h                                            ; $64fd: $9c
	rst $38                                          ; $64fe: $ff
	ld b, $07                                        ; $64ff: $06 $07
	ld [hl], h                                       ; $6501: $74
	ldh [c], a                                       ; $6502: $e2
	ld a, [hl]                                       ; $6503: $7e
	db $e4                                           ; $6504: $e4
	ld a, a                                          ; $6505: $7f
	rla                                              ; $6506: $17
	sbc e                                            ; $6507: $9b
	rst AddAOntoHL                                          ; $6508: $ef
	cp $fa                                           ; $6509: $fe $fa
	rst $38                                          ; $650b: $ff
	ld a, e                                          ; $650c: $7b
	adc e                                            ; $650d: $8b
	sbc h                                            ; $650e: $9c
	add b                                            ; $650f: $80
	pop af                                           ; $6510: $f1

jr_05b_6511:
	inc bc                                           ; $6511: $03
	sbc $07                                          ; $6512: $de $07
	sub [hl]                                         ; $6514: $96
	rrca                                             ; $6515: $0f
	ld b, b                                          ; $6516: $40
	add b                                            ; $6517: $80
	jr jr_05b_6592                                   ; $6518: $18 $78

	ldh a, [$f0]                                     ; $651a: $f0 $f0
	ldh [$cf], a                                     ; $651c: $e0 $cf
	ld h, e                                          ; $651e: $63
	db $10                                           ; $651f: $10
	ei                                               ; $6520: $fb
	sbc [hl]                                         ; $6521: $9e
	add b                                            ; $6522: $80
	adc $ff                                          ; $6523: $ce $ff
	sbc [hl]                                         ; $6525: $9e
	db $fd                                           ; $6526: $fd
	ld a, b                                          ; $6527: $78
	inc h                                            ; $6528: $24
	sbc [hl]                                         ; $6529: $9e
	pop af                                           ; $652a: $f1
	ld [hl], a                                       ; $652b: $77
	db $e4                                           ; $652c: $e4
	sbc $80                                          ; $652d: $de $80
	ld a, h                                          ; $652f: $7c
	ld l, h                                          ; $6530: $6c
	jp c, $91ff                                      ; $6531: $da $ff $91

	cp $fd                                           ; $6534: $fe $fd
	ld a, [$0b75]                                    ; $6536: $fa $75 $0b
	ld [hl], $0f                                     ; $6539: $36 $0f
	db $fd                                           ; $653b: $fd
	ld bc, $0502                                     ; $653c: $01 $02 $05
	adc e                                            ; $653f: $8b
	rst FarCall                                          ; $6540: $f7
	rst GetHLinHL                                          ; $6541: $cf
	ld [hl], d                                       ; $6542: $72
	ld [$bf9b], a                                    ; $6543: $ea $9b $bf
	ld e, a                                          ; $6546: $5f
	rst SubAFromDE                                          ; $6547: $df
	xor a                                            ; $6548: $af
	ld [hl], a                                       ; $6549: $77
	dec b                                            ; $654a: $05
	ld a, a                                          ; $654b: $7f
	rst FarCall                                          ; $654c: $f7
	sbc e                                            ; $654d: $9b
	ccf                                              ; $654e: $3f
	ld e, a                                          ; $654f: $5f
	adc a                                            ; $6550: $8f
	and b                                            ; $6551: $a0
	ld a, [$4061]                                    ; $6552: $fa $61 $40
	ld a, c                                          ; $6555: $79
	ccf                                              ; $6556: $3f
	sbc $0f                                          ; $6557: $de $0f
	ld h, l                                          ; $6559: $65
	ld [hl], c                                       ; $655a: $71
	sbc d                                            ; $655b: $9a
	rst $38                                          ; $655c: $ff
	ld a, [hl]                                       ; $655d: $7e
	ld bc, $7f7e                                     ; $655e: $01 $7e $7f
	db $dd                                           ; $6561: $dd
	ccf                                              ; $6562: $3f
	sbc h                                            ; $6563: $9c
	add c                                            ; $6564: $81
	cp $81                                           ; $6565: $fe $81
	halt                                             ; $6567: $76
	db $dd                                           ; $6568: $dd
	sbc d                                            ; $6569: $9a
	ret nz                                           ; $656a: $c0

	push hl                                          ; $656b: $e5
	sbc $3b                                          ; $656c: $de $3b
	push bc                                          ; $656e: $c5
	sbc $fb                                          ; $656f: $de $fb
	ld a, [hl]                                       ; $6571: $7e
	ld a, a                                          ; $6572: $7f
	sbc h                                            ; $6573: $9c
	ccf                                              ; $6574: $3f
	rst JumpTable                                          ; $6575: $c7
	dec sp                                           ; $6576: $3b
	sbc $05                                          ; $6577: $de $05
	sbc d                                            ; $6579: $9a
	dec bc                                           ; $657a: $0b
	inc h                                            ; $657b: $24
	ld b, [hl]                                       ; $657c: $46
	add d                                            ; $657d: $82
	ld [bc], a                                       ; $657e: $02
	sbc $82                                          ; $657f: $de $82
	sbc [hl]                                         ; $6581: $9e
	inc b                                            ; $6582: $04
	ld [hl], c                                       ; $6583: $71
	ld d, e                                          ; $6584: $53
	ld a, b                                          ; $6585: $78
	db $f4                                           ; $6586: $f4
	db $fd                                           ; $6587: $fd
	sbc h                                            ; $6588: $9c
	inc bc                                           ; $6589: $03
	inc c                                            ; $658a: $0c
	ld [hl-], a                                      ; $658b: $32
	ld a, [$517e]                                    ; $658c: $fa $7e $51
	sbc b                                            ; $658f: $98
	inc bc                                           ; $6590: $03
	rrca                                             ; $6591: $0f

jr_05b_6592:
	ld a, $e2                                        ; $6592: $3e $e2
	ld de, $1f8f                                     ; $6594: $11 $8f $1f
	ld [hl], e                                       ; $6597: $73
	di                                               ; $6598: $f3
	sbc h                                            ; $6599: $9c
	ld c, $70                                        ; $659a: $0e $70
	ldh [$ea], a                                     ; $659c: $e0 $ea
	sbc [hl]                                         ; $659e: $9e
	ld b, $73                                        ; $659f: $06 $73
	ldh [$df], a                                     ; $65a1: $e0 $df

Jump_05b_65a3:
	ld [bc], a                                       ; $65a3: $02
	sub h                                            ; $65a4: $94
	nop                                              ; $65a5: $00
	inc b                                            ; $65a6: $04
	dec b                                            ; $65a7: $05
	ld b, a                                          ; $65a8: $47
	rrca                                             ; $65a9: $0f
	sbc a                                            ; $65aa: $9f
	cpl                                              ; $65ab: $2f
	ld e, a                                          ; $65ac: $5f
	cp a                                             ; $65ad: $bf
	ld a, a                                          ; $65ae: $7f
	ld h, b                                          ; $65af: $60
	ld a, d                                          ; $65b0: $7a
	db $f4                                           ; $65b1: $f4
	ld h, e                                          ; $65b2: $63
	ld l, b                                          ; $65b3: $68
	ld a, e                                          ; $65b4: $7b
	ld c, c                                          ; $65b5: $49
	ld l, a                                          ; $65b6: $6f
	or c                                             ; $65b7: $b1
	ld a, [hl]                                       ; $65b8: $7e
	ld h, h                                          ; $65b9: $64
	sub b                                            ; $65ba: $90
	db $e4                                           ; $65bb: $e4
	di                                               ; $65bc: $f3
	ei                                               ; $65bd: $fb
	db $fd                                           ; $65be: $fd
	cp $bc                                           ; $65bf: $fe $bc
	inc e                                            ; $65c1: $1c
	ld a, [bc]                                       ; $65c2: $0a
	dec de                                           ; $65c3: $1b
	inc c                                            ; $65c4: $0c
	ld b, $03                                        ; $65c5: $06 $03
	ld bc, $e343                                     ; $65c7: $01 $43 $e3
	ld [hl], c                                       ; $65ca: $71
	rst FarCall                                          ; $65cb: $f7
	ld a, l                                          ; $65cc: $7d

jr_05b_65cd:
	ld b, $6e                                        ; $65cd: $06 $6e
	add sp, -$68                                     ; $65cf: $e8 $98
	rst JumpTable                                          ; $65d1: $c7
	rst $38                                          ; $65d2: $ff
	ld h, b                                          ; $65d3: $60
	jr nz, jr_05b_65cd                               ; $65d4: $20 $f7

	rst $38                                          ; $65d6: $ff
	rst SubAFromDE                                          ; $65d7: $df
	ld [hl], e                                       ; $65d8: $73
	inc h                                            ; $65d9: $24
	rst SubAFromDE                                          ; $65da: $df
	rrca                                             ; $65db: $0f
	sub c                                            ; $65dc: $91
	ccf                                              ; $65dd: $3f
	rst $38                                          ; $65de: $ff
	rst FarCall                                          ; $65df: $f7
	rst FarCall                                          ; $65e0: $f7
	rst SubAFromBC                                          ; $65e1: $e7
	ld b, a                                          ; $65e2: $47
	ret nc                                           ; $65e3: $d0

	xor a                                            ; $65e4: $af
	ret nc                                           ; $65e5: $d0

	and b                                            ; $65e6: $a0
	and b                                            ; $65e7: $a0
	ld [hl], b                                       ; $65e8: $70
	ld hl, sp-$08                                    ; $65e9: $f8 $f8
	reti                                             ; $65eb: $d9


	rst $38                                          ; $65ec: $ff
	sub a                                            ; $65ed: $97
	ld h, b                                          ; $65ee: $60
	or b                                             ; $65ef: $b0
	ret nc                                           ; $65f0: $d0

	ld c, c                                          ; $65f1: $49
	ld l, c                                          ; $65f2: $69
	ld h, l                                          ; $65f3: $65
	push af                                          ; $65f4: $f5
	di                                               ; $65f5: $f3
	pop de                                           ; $65f6: $d1
	rst $38                                          ; $65f7: $ff
	sbc [hl]                                         ; $65f8: $9e
	pop hl                                           ; $65f9: $e1
	sbc $c3                                          ; $65fa: $de $c3
	ld a, l                                          ; $65fc: $7d
	ld h, l                                          ; $65fd: $65
	rst SubAFromDE                                          ; $65fe: $df
	add b                                            ; $65ff: $80
	ld a, b                                          ; $6600: $78
	ld c, l                                          ; $6601: $4d
	ld a, [hl]                                       ; $6602: $7e
	ld l, l                                          ; $6603: $6d
	ld a, [hl]                                       ; $6604: $7e
	or [hl]                                          ; $6605: $b6
	ld a, b                                          ; $6606: $78
	ld h, a                                          ; $6607: $67
	ld a, h                                          ; $6608: $7c
	ld sp, hl                                        ; $6609: $f9
	ld a, h                                          ; $660a: $7c
	sbc d                                            ; $660b: $9a
	rst $38                                          ; $660c: $ff
	adc h                                            ; $660d: $8c
	ei                                               ; $660e: $fb
	or $cd                                           ; $660f: $f6 $cd
	cp e                                             ; $6611: $bb
	rst SubAFromBC                                          ; $6612: $e7
	rst AddAOntoHL                                          ; $6613: $ef
	xor a                                            ; $6614: $af
	rst AddAOntoHL                                          ; $6615: $ef
	db $fc                                           ; $6616: $fc
	ld sp, hl                                        ; $6617: $f9
	ldh a, [c]                                       ; $6618: $f2
	call nz, $9098                                   ; $6619: $c4 $98 $90
	ret nc                                           ; $661c: $d0

	ret nc                                           ; $661d: $d0

	ld a, a                                          ; $661e: $7f

Jump_05b_661f:
	rst FarCall                                          ; $661f: $f7
	rst $38                                          ; $6620: $ff
	halt                                             ; $6621: $76
	ld c, [hl]                                       ; $6622: $4e
	sbc l                                            ; $6623: $9d
	db $fd                                           ; $6624: $fd
	adc a                                            ; $6625: $8f
	ld a, d                                          ; $6626: $7a
	ret c                                            ; $6627: $d8

	ld a, c                                          ; $6628: $79
	ld d, a                                          ; $6629: $57
	ld [hl], a                                       ; $662a: $77
	db $dd                                           ; $662b: $dd
	ld d, d                                          ; $662c: $52
	ld [hl], b                                       ; $662d: $70
	ld [hl], c                                       ; $662e: $71
	ld e, e                                          ; $662f: $5b
	ld a, e                                          ; $6630: $7b
	ld e, b                                          ; $6631: $58
	reti                                             ; $6632: $d9


	rst $38                                          ; $6633: $ff
	reti                                             ; $6634: $d9


	sbc a                                            ; $6635: $9f
	reti                                             ; $6636: $d9


	ldh [$8c], a                                     ; $6637: $e0 $8c
	rst FarCall                                          ; $6639: $f7
	rst AddAOntoHL                                          ; $663a: $ef
	ld [$dcec], a                                    ; $663b: $ea $ec $dc
	call nc, $aebc                                   ; $663e: $d4 $bc $ae
	dec bc                                           ; $6641: $0b
	inc de                                           ; $6642: $13
	rla                                              ; $6643: $17
	rla                                              ; $6644: $17
	daa                                              ; $6645: $27
	cpl                                              ; $6646: $2f
	ld c, a                                          ; $6647: $4f
	ld e, a                                          ; $6648: $5f
	inc b                                            ; $6649: $04
	ld [$dc08], sp                                   ; $664a: $08 $08 $dc
	jr jr_05b_66cb                                   ; $664d: $18 $7c

	db $dd                                           ; $664f: $dd
	ld a, [hl]                                       ; $6650: $7e
	dec de                                           ; $6651: $1b
	db $dd                                           ; $6652: $dd
	ldh [$f9], a                                     ; $6653: $e0 $f9
	sbc [hl]                                         ; $6655: $9e
	ld a, a                                          ; $6656: $7f
	ld a, [$209e]                                    ; $6657: $fa $9e $20
	ld [hl], b                                       ; $665a: $70
	add d                                            ; $665b: $82
	rst $38                                          ; $665c: $ff
	ld l, h                                          ; $665d: $6c
	ld [hl], d                                       ; $665e: $72
	ld [hl-], a                                      ; $665f: $32
	add $9e                                          ; $6660: $c6 $9e
	inc c                                            ; $6662: $0c
	ld a, d                                          ; $6663: $7a
	rst SubAFromBC                                          ; $6664: $e7
	ld a, h                                          ; $6665: $7c
	ld d, c                                          ; $6666: $51
	sbc h                                            ; $6667: $9c
	inc c                                            ; $6668: $0c
	inc b                                            ; $6669: $04
	nop                                              ; $666a: $00
	sbc $08                                          ; $666b: $de $08
	sbc [hl]                                         ; $666d: $9e
	nop                                              ; $666e: $00
	ld a, d                                          ; $666f: $7a
	push bc                                          ; $6670: $c5
	sbc [hl]                                         ; $6671: $9e
	cp a                                             ; $6672: $bf
	ld a, b                                          ; $6673: $78
	ld [hl], l                                       ; $6674: $75
	ld h, l                                          ; $6675: $65
	ret c                                            ; $6676: $d8

	ld h, e                                          ; $6677: $63
	ld a, b                                          ; $6678: $78
	ld sp, hl                                        ; $6679: $f9
	sub d                                            ; $667a: $92
	and h                                            ; $667b: $a4
	ld [bc], a                                       ; $667c: $02
	and l                                            ; $667d: $a5
	jp nc, $f8e8                                     ; $667e: $d2 $e8 $f8

	db $fc                                           ; $6681: $fc
	cp $5b                                           ; $6682: $fe $5b
	db $fd                                           ; $6684: $fd
	ld e, d                                          ; $6685: $5a
	dec l                                            ; $6686: $2d
	rla                                              ; $6687: $17
	ld a, e                                          ; $6688: $7b
	ld d, l                                          ; $6689: $55
	sub c                                            ; $668a: $91
	ld a, a                                          ; $668b: $7f
	ld a, [hl]                                       ; $668c: $7e
	inc a                                            ; $668d: $3c
	ld a, [hl-]                                      ; $668e: $3a
	ccf                                              ; $668f: $3f
	rra                                              ; $6690: $1f
	inc d                                            ; $6691: $14
	ld c, $91                                        ; $6692: $0e $91
	adc e                                            ; $6694: $8b
	rst JumpTable                                          ; $6695: $c7
	rst JumpTable                                          ; $6696: $c7
	jp $78e1                                         ; $6697: $c3 $e1 $78


	ld [hl], $96                                     ; $669a: $36 $96
	cp a                                             ; $669c: $bf
	ld c, a                                          ; $669d: $4f
	ccf                                              ; $669e: $3f
	rra                                              ; $669f: $1f
	sbc a                                            ; $66a0: $9f
	rst $38                                          ; $66a1: $ff
	rst $38                                          ; $66a2: $ff
	and a                                            ; $66a3: $a7
	rst SubAFromDE                                          ; $66a4: $df
	db $db                                           ; $66a5: $db

Call_05b_66a6:
	rst $38                                          ; $66a6: $ff
	ld a, e                                          ; $66a7: $7b
	ld l, b                                          ; $66a8: $68
	sbc [hl]                                         ; $66a9: $9e
	ldh a, [$7b]                                     ; $66aa: $f0 $7b
	pop de                                           ; $66ac: $d1
	ld l, b                                          ; $66ad: $68
	or d                                             ; $66ae: $b2
	rst SubAFromDE                                          ; $66af: $df
	rst $38                                          ; $66b0: $ff
	sbc d                                            ; $66b1: $9a
	ld a, e                                          ; $66b2: $7b
	dec sp                                           ; $66b3: $3b
	dec de                                           ; $66b4: $1b
	rrca                                             ; $66b5: $0f
	rlca                                             ; $66b6: $07
	ld [hl], b                                       ; $66b7: $70
	add $6e                                          ; $66b8: $c6 $6e
	jp z, $ffd9                                      ; $66ba: $ca $d9 $ff

	ld l, [hl]                                       ; $66bd: $6e
	ld d, d                                          ; $66be: $52
	ld a, e                                          ; $66bf: $7b
	sub b                                            ; $66c0: $90
	ld [hl], d                                       ; $66c1: $72
	ret nz                                           ; $66c2: $c0

	sbc l                                            ; $66c3: $9d
	ld sp, hl                                        ; $66c4: $f9
	rst $38                                          ; $66c5: $ff
	ld [hl], h                                       ; $66c6: $74
	cp d                                             ; $66c7: $ba
	halt                                             ; $66c8: $76
	rst FarCall                                          ; $66c9: $f7
	sub c                                            ; $66ca: $91

jr_05b_66cb:
	rst SubAFromHL                                          ; $66cb: $d7
	rst FarCall                                          ; $66cc: $f7
	db $eb                                           ; $66cd: $eb
	ei                                               ; $66ce: $fb
	push af                                          ; $66cf: $f5
	ld a, l                                          ; $66d0: $7d
	ld a, [hl-]                                      ; $66d1: $3a
	ld e, $e8                                        ; $66d2: $1e $e8
	add sp, -$0c                                     ; $66d4: $e8 $f4
	db $f4                                           ; $66d6: $f4
	ld a, [$defa]                                    ; $66d7: $fa $fa $de
	db $fd                                           ; $66da: $fd
	ld l, [hl]                                       ; $66db: $6e
	ld sp, $ff9e                                     ; $66dc: $31 $9e $ff
	ld [hl], a                                       ; $66df: $77
	db $e4                                           ; $66e0: $e4
	ld a, d                                          ; $66e1: $7a
	reti                                             ; $66e2: $d9


	ld [hl], c                                       ; $66e3: $71
	ld d, e                                          ; $66e4: $53
	db $dd                                           ; $66e5: $dd
	add b                                            ; $66e6: $80
	ld d, e                                          ; $66e7: $53
	ld e, b                                          ; $66e8: $58
	sbc $01                                          ; $66e9: $de $01
	ld e, d                                          ; $66eb: $5a
	ret nz                                           ; $66ec: $c0

	rst SubAFromDE                                          ; $66ed: $df
	sbc [hl]                                         ; $66ee: $9e
	rst SubAFromDE                                          ; $66ef: $df
	sbc l                                            ; $66f0: $9d
	sbc [hl]                                         ; $66f1: $9e
	sbc e                                            ; $66f2: $9b
	sbc $e0                                          ; $66f3: $de $e0
	rst SubAFromDE                                          ; $66f5: $df
	pop hl                                           ; $66f6: $e1
	rst SubAFromDE                                          ; $66f7: $df
	ldh [c], a                                       ; $66f8: $e2
	add l                                            ; $66f9: $85
	db $e4                                           ; $66fa: $e4
	ld a, d                                          ; $66fb: $7a
	ld e, e                                          ; $66fc: $5b
	ld a, c                                          ; $66fd: $79
	xor b                                            ; $66fe: $a8
	ret c                                            ; $66ff: $d8

	ret c                                            ; $6700: $d8

	ld a, h                                          ; $6701: $7c
	cp h                                             ; $6702: $bc
	sub a                                            ; $6703: $97
	or a                                             ; $6704: $b7
	or a                                             ; $6705: $b7
	ld [hl], a                                       ; $6706: $77
	ld h, a                                          ; $6707: $67
	ld h, a                                          ; $6708: $67
	rst JumpTable                                          ; $6709: $c7
	rst JumpTable                                          ; $670a: $c7
	jr jr_05b_6715                                   ; $670b: $18 $08

	ld [$4888], sp                                   ; $670d: $08 $88 $48
	jr nz, jr_05b_6732                               ; $6710: $20 $20

	db $10                                           ; $6712: $10
	ldh [$dd], a                                     ; $6713: $e0 $dd

jr_05b_6715:
	ldh a, [$9c]                                     ; $6715: $f0 $9c
	ld hl, sp-$28                                    ; $6717: $f8 $d8
	add sp, -$20                                     ; $6719: $e8 $e0
	pop de                                           ; $671b: $d1
	sbc h                                            ; $671c: $9c
	dec b                                            ; $671d: $05
	nop                                              ; $671e: $00
	dec b                                            ; $671f: $05
	ld a, e                                          ; $6720: $7b
	ld [hl], l                                       ; $6721: $75
	rst $38                                          ; $6722: $ff
	call c, Call_05b_7c08                            ; $6723: $dc $08 $7c
	ld d, h                                          ; $6726: $54
	ld a, [hl]                                       ; $6727: $7e
	adc b                                            ; $6728: $88
	ld a, [hl]                                       ; $6729: $7e
	call nz, $0673                                   ; $672a: $c4 $73 $06
	ld h, $c0                                        ; $672d: $26 $c0
	ld l, h                                          ; $672f: $6c
	xor h                                            ; $6730: $ac
	sbc l                                            ; $6731: $9d

jr_05b_6732:
	ld [$6d51], a                                    ; $6732: $ea $51 $6d
	ld c, a                                          ; $6735: $4f
	adc e                                            ; $6736: $8b
	dec d                                            ; $6737: $15
	xor [hl]                                         ; $6738: $ae
	ld [de], a                                       ; $6739: $12
	and e                                            ; $673a: $a3
	push hl                                          ; $673b: $e5
	db $db                                           ; $673c: $db
	cp a                                             ; $673d: $bf
	dec l                                            ; $673e: $2d
	ld e, c                                          ; $673f: $59
	ld [$7fff], sp                                   ; $6740: $08 $ff $7f
	ccf                                              ; $6743: $3f
	dec a                                            ; $6744: $3d
	ld e, e                                          ; $6745: $5b
	db $db                                           ; $6746: $db
	xor a                                            ; $6747: $af
	rst $38                                          ; $6748: $ff
	ld a, a                                          ; $6749: $7f
	ld a, a                                          ; $674a: $7f
	ld a, e                                          ; $674b: $7b
	pop hl                                           ; $674c: $e1
	ld a, [hl]                                       ; $674d: $7e
	dec de                                           ; $674e: $1b
	ld [hl], e                                       ; $674f: $73
	cp h                                             ; $6750: $bc
	sbc b                                            ; $6751: $98
	cp $f8                                           ; $6752: $fe $f8
	ldh a, [$e0]                                     ; $6754: $f0 $e0
	rst $38                                          ; $6756: $ff
	ldh [$9c], a                                     ; $6757: $e0 $9c
	ld l, d                                          ; $6759: $6a
	call nz, $e39e                                   ; $675a: $c4 $9e $e3
	halt                                             ; $675d: $76
	db $ed                                           ; $675e: $ed
	adc [hl]                                         ; $675f: $8e
	nop                                              ; $6760: $00
	ld a, d                                          ; $6761: $7a
	halt                                             ; $6762: $76
	ld c, l                                          ; $6763: $4d
	dec sp                                           ; $6764: $3b
	rlca                                             ; $6765: $07
	adc h                                            ; $6766: $8c
	jp $85e6                                         ; $6767: $c3 $e6 $85


	adc c                                            ; $676a: $89
	or d                                             ; $676b: $b2
	call nz, Call_05b_73f8                           ; $676c: $c4 $f8 $73
	inc a                                            ; $676f: $3c
	add hl, de                                       ; $6770: $19
	ld h, d                                          ; $6771: $62
	ret nz                                           ; $6772: $c0

	sbc e                                            ; $6773: $9b
	add b                                            ; $6774: $80
	ld b, b                                          ; $6775: $40
	ld b, c                                          ; $6776: $41

Call_05b_6777:
	and a                                            ; $6777: $a7
	ld a, b                                          ; $6778: $78
	ld [hl], b                                       ; $6779: $70
	ld a, d                                          ; $677a: $7a
	db $e3                                           ; $677b: $e3
	ld a, b                                          ; $677c: $78
	add hl, sp                                       ; $677d: $39
	rst SubAFromDE                                          ; $677e: $df
	ldh a, [$7c]                                     ; $677f: $f0 $7c
	ld a, e                                          ; $6781: $7b
	ld l, [hl]                                       ; $6782: $6e
	sbc h                                            ; $6783: $9c
	sbc h                                            ; $6784: $9c
	dec e                                            ; $6785: $1d
	rrca                                             ; $6786: $0f
	ld b, $71                                        ; $6787: $06 $71
	xor a                                            ; $6789: $af
	ld h, [hl]                                       ; $678a: $66
	ld a, [hl]                                       ; $678b: $7e
	rst SubAFromDE                                          ; $678c: $df
	ld a, a                                          ; $678d: $7f
	rst SubAFromDE                                          ; $678e: $df
	cp a                                             ; $678f: $bf
	ld a, h                                          ; $6790: $7c
	ld b, b                                          ; $6791: $40
	ld a, h                                          ; $6792: $7c
	ccf                                              ; $6793: $3f
	ld a, e                                          ; $6794: $7b
	ret nc                                           ; $6795: $d0

	sbc [hl]                                         ; $6796: $9e
	ld b, b                                          ; $6797: $40
	sbc $a0                                          ; $6798: $de $a0
	sbc [hl]                                         ; $679a: $9e
	ret nc                                           ; $679b: $d0

	call c, $de80                                    ; $679c: $dc $80 $de
	ret nz                                           ; $679f: $c0

	reti                                             ; $67a0: $d9


	rst $38                                          ; $67a1: $ff
	sbc h                                            ; $67a2: $9c
	ld bc, $0303                                     ; $67a3: $01 $03 $03
	call c, $d907                                    ; $67a6: $dc $07 $d9
	rst $38                                          ; $67a9: $ff
	adc [hl]                                         ; $67aa: $8e
	sbc d                                            ; $67ab: $9a
	sbc e                                            ; $67ac: $9b
	sub a                                            ; $67ad: $97
	or l                                             ; $67ae: $b5
	xor [hl]                                         ; $67af: $ae
	xor e                                            ; $67b0: $ab
	sbc l                                            ; $67b1: $9d
	sub a                                            ; $67b2: $97
	push hl                                          ; $67b3: $e5
	push hl                                          ; $67b4: $e5
	jp hl                                            ; $67b5: $e9


	set 2, e                                         ; $67b6: $cb $d3
	sub $e6                                          ; $67b8: $d6 $e6
	db $ec                                           ; $67ba: $ec
	cp $77                                           ; $67bb: $fe $77
	xor c                                            ; $67bd: $a9
	ld a, [hl]                                       ; $67be: $7e
	cpl                                              ; $67bf: $2f
	sbc h                                            ; $67c0: $9c
	db $fd                                           ; $67c1: $fd
	add a                                            ; $67c2: $87
	add a                                            ; $67c3: $87
	db $dd                                           ; $67c4: $dd
	rlca                                             ; $67c5: $07
	sub l                                            ; $67c6: $95
	inc bc                                           ; $67c7: $03
	ld [bc], a                                       ; $67c8: $02
	ld [$e68c], sp                                   ; $67c9: $08 $8c $e6
	ei                                               ; $67cc: $fb
	db $fd                                           ; $67cd: $fd
	rra                                              ; $67ce: $1f
	rst $38                                          ; $67cf: $ff
	cp $72                                           ; $67d0: $fe $72
	ld a, [de]                                       ; $67d2: $1a
	ld a, l                                          ; $67d3: $7d
	add d                                            ; $67d4: $82
	ld [hl], e                                       ; $67d5: $73
	ld e, h                                          ; $67d6: $5c
	ld a, a                                          ; $67d7: $7f
	or b                                             ; $67d8: $b0
	ld h, [hl]                                       ; $67d9: $66
	ld [hl-], a                                      ; $67da: $32
	sbc l                                            ; $67db: $9d
	ld b, b                                          ; $67dc: $40
	ret nz                                           ; $67dd: $c0

	pop hl                                           ; $67de: $e1
	sub [hl]                                         ; $67df: $96
	ld [bc], a                                       ; $67e0: $02
	ld bc, $0301                                     ; $67e1: $01 $01 $03
	add hl, bc                                       ; $67e4: $09
	ld a, [bc]                                       ; $67e5: $0a
	ld bc, $1802                                     ; $67e6: $01 $02 $18
	ld a, d                                          ; $67e9: $7a
	jp $10df                                         ; $67ea: $c3 $df $10


	adc c                                            ; $67ed: $89
	ld [$ff10], sp                                   ; $67ee: $08 $10 $ff
	rst FarCall                                          ; $67f1: $f7
	ld a, e                                          ; $67f2: $7b
	ld a, l                                          ; $67f3: $7d
	cp e                                             ; $67f4: $bb
	db $dd                                           ; $67f5: $dd
	adc $ec                                          ; $67f6: $ce $ec
	nop                                              ; $67f8: $00
	ld [$8284], sp                                   ; $67f9: $08 $84 $82
	ld b, h                                          ; $67fc: $44
	ld [hl+], a                                      ; $67fd: $22
	ld sp, $fe13                                     ; $67fe: $31 $13 $fe
	push af                                          ; $6801: $f5
	ldh a, [c]                                       ; $6802: $f2
	db $f4                                           ; $6803: $f4
	ld a, d                                          ; $6804: $7a
	ld b, l                                          ; $6805: $45
	ld a, a                                          ; $6806: $7f
	ld l, b                                          ; $6807: $68
	sub h                                            ; $6808: $94
	ld a, [bc]                                       ; $6809: $0a
	dec c                                            ; $680a: $0d
	dec bc                                           ; $680b: $0b
	rra                                              ; $680c: $1f
	rra                                              ; $680d: $1f
	ld e, $00                                        ; $680e: $1e $00
	xor d                                            ; $6810: $aa
	ld d, h                                          ; $6811: $54
	and b                                            ; $6812: $a0
	inc bc                                           ; $6813: $03
	ld a, e                                          ; $6814: $7b
	dec h                                            ; $6815: $25
	sub b                                            ; $6816: $90
	cp $55                                           ; $6817: $fe $55
	xor e                                            ; $6819: $ab
	ld e, a                                          ; $681a: $5f
	db $fc                                           ; $681b: $fc
	ldh a, [$80]                                     ; $681c: $f0 $80
	nop                                              ; $681e: $00
	ld bc, $068d                                     ; $681f: $01 $8d $06
	ld h, e                                          ; $6822: $63
	rst JumpTable                                          ; $6823: $c7
	rst SubAFromDE                                          ; $6824: $df
	cp a                                             ; $6825: $bf
	sbc $7f                                          ; $6826: $de $7f
	sub a                                            ; $6828: $97
	rst $38                                          ; $6829: $ff
	sbc h                                            ; $682a: $9c
	jr c, jr_05b_684d                                ; $682b: $38 $20

	ld b, b                                          ; $682d: $40
	add b                                            ; $682e: $80
	add b                                            ; $682f: $80
	ccf                                              ; $6830: $3f
	jp c, $67ff                                      ; $6831: $da $ff $67

	add a                                            ; $6834: $87
	ld b, [hl]                                       ; $6835: $46
	add b                                            ; $6836: $80
	sub b                                            ; $6837: $90
	pop hl                                           ; $6838: $e1
	db $e3                                           ; $6839: $e3
	pop af                                           ; $683a: $f1
	ldh a, [$f9]                                     ; $683b: $f0 $f9
	db $d3                                           ; $683d: $d3
	db $eb                                           ; $683e: $eb
	add a                                            ; $683f: $87
	ld e, $1c                                        ; $6840: $1e $1c
	ld c, $0f                                        ; $6842: $0e $0f
	rlca                                             ; $6844: $07
	cpl                                              ; $6845: $2f
	rla                                              ; $6846: $17
	ld [hl], a                                       ; $6847: $77
	ld [hl-], a                                      ; $6848: $32
	sbc b                                            ; $6849: $98
	ld a, a                                          ; $684a: $7f
	rst SubAFromBC                                          ; $684b: $e7
	rst JumpTable                                          ; $684c: $c7

jr_05b_684d:
	jp $0f83                                         ; $684d: $c3 $83 $0f


	rra                                              ; $6850: $1f
	ld l, a                                          ; $6851: $6f
	add $d9                                          ; $6852: $c6 $d9
	ldh [$5f], a                                     ; $6854: $e0 $5f
	ret z                                            ; $6856: $c8

	sbc c                                            ; $6857: $99
	jr nz, @+$32                                     ; $6858: $20 $30

	jr nc, jr_05b_68d4                               ; $685a: $30 $78

	ld a, b                                          ; $685c: $78
	ld hl, sp-$27                                    ; $685d: $f8 $d9
	rst $38                                          ; $685f: $ff
	sub l                                            ; $6860: $95
	rst AddAOntoHL                                          ; $6861: $ef
	ld l, a                                          ; $6862: $6f
	ld d, a                                          ; $6863: $57
	ld [hl], a                                       ; $6864: $77
	scf                                              ; $6865: $37
	scf                                              ; $6866: $37
	dec hl                                           ; $6867: $2b
	dec sp                                           ; $6868: $3b
	ret nc                                           ; $6869: $d0

	ret nc                                           ; $686a: $d0

	db $dd                                           ; $686b: $dd
	add sp, -$21                                     ; $686c: $e8 $df
	db $f4                                           ; $686e: $f4
	sbc $c0                                          ; $686f: $de $c0
	db $dd                                           ; $6871: $dd
	ldh [$9e], a                                     ; $6872: $e0 $9e
	ldh a, [$d9]                                     ; $6874: $f0 $d9
	rst $38                                          ; $6876: $ff
	ld [hl], c                                       ; $6877: $71
	ld l, b                                          ; $6878: $68
	ld a, [hl]                                       ; $6879: $7e
	cp l                                             ; $687a: $bd
	sbc [hl]                                         ; $687b: $9e
	rrca                                             ; $687c: $0f
	reti                                             ; $687d: $d9


	rst $38                                          ; $687e: $ff
	sub d                                            ; $687f: $92
	cp e                                             ; $6880: $bb
	xor e                                            ; $6881: $ab
	di                                               ; $6882: $f3
	db $d3                                           ; $6883: $d3
	pop hl                                           ; $6884: $e1
	ld hl, $4041                                     ; $6885: $21 $41 $40
	call z, $9cdc                                    ; $6888: $cc $dc $9c
	cp h                                             ; $688b: $bc
	cp [hl]                                          ; $688c: $be
	ld a, d                                          ; $688d: $7a
	ld a, e                                          ; $688e: $7b
	sbc $fd                                          ; $688f: $de $fd
	sbc $fc                                          ; $6891: $de $fc
	ld a, a                                          ; $6893: $7f
	ld hl, sp-$22                                    ; $6894: $f8 $de
	ld [bc], a                                       ; $6896: $02
	sbc $03                                          ; $6897: $de $03
	rst SubAFromDE                                          ; $6899: $df
	ld bc, $f897                                     ; $689a: $01 $97 $f8
	ldh [$80], a                                     ; $689d: $e0 $80
	ld bc, $3241                                     ; $689f: $01 $41 $32
	ld e, $4c                                        ; $68a2: $1e $4c
	ld l, h                                          ; $68a4: $6c
	db $ec                                           ; $68a5: $ec
	sbc h                                            ; $68a6: $9c
	cp $be                                           ; $68a7: $fe $be
	ld b, b                                          ; $68a9: $40
	ld a, e                                          ; $68aa: $7b
	inc a                                            ; $68ab: $3c
	ld [hl], b                                       ; $68ac: $70
	ld d, b                                          ; $68ad: $50
	rst SubAFromDE                                          ; $68ae: $df
	ret nz                                           ; $68af: $c0

	ld h, [hl]                                       ; $68b0: $66
	cp e                                             ; $68b1: $bb
	db $e4                                           ; $68b2: $e4
	sub l                                            ; $68b3: $95
	ld de, $0b02                                     ; $68b4: $11 $02 $0b
	dec b                                            ; $68b7: $05
	dec b                                            ; $68b8: $05
	ld bc, $0205                                     ; $68b9: $01 $05 $02
	nop                                              ; $68bc: $00
	ld [$7d79], sp                                   ; $68bd: $08 $79 $7d
	adc h                                            ; $68c0: $8c
	inc c                                            ; $68c1: $0c
	ld [$c408], sp                                   ; $68c2: $08 $08 $c4
	db $ec                                           ; $68c5: $ec
	jp z, $d4e4                                      ; $68c6: $ca $e4 $d4

	and d                                            ; $68c9: $a2
	pop de                                           ; $68ca: $d1
	and c                                            ; $68cb: $a1
	dec sp                                           ; $68cc: $3b
	dec de                                           ; $68cd: $1b
	dec a                                            ; $68ce: $3d
	rra                                              ; $68cf: $1f
	cpl                                              ; $68d0: $2f
	ld e, a                                          ; $68d1: $5f
	cpl                                              ; $68d2: $2f
	ld e, a                                          ; $68d3: $5f

jr_05b_68d4:
	ld [hl], l                                       ; $68d4: $75
	xor a                                            ; $68d5: $af
	ld [hl], a                                       ; $68d6: $77
	inc e                                            ; $68d7: $1c
	ld a, b                                          ; $68d8: $78
	rst SubAFromHL                                          ; $68d9: $d7
	ld [hl], d                                       ; $68da: $72
	ld h, l                                          ; $68db: $65
	adc a                                            ; $68dc: $8f
	db $fc                                           ; $68dd: $fc
	ld sp, hl                                        ; $68de: $f9
	ld sp, hl                                        ; $68df: $f9
	di                                               ; $68e0: $f3
	db $e3                                           ; $68e1: $e3
	rst SubAFromBC                                          ; $68e2: $e7
	rst JumpTable                                          ; $68e3: $c7
	add a                                            ; $68e4: $87
	inc bc                                           ; $68e5: $03
	ld b, $06                                        ; $68e6: $06 $06
	inc c                                            ; $68e8: $0c
	inc e                                            ; $68e9: $1c
	jr @+$3a                                         ; $68ea: $18 $38

	ld a, b                                          ; $68ec: $78
	dec [hl]                                         ; $68ed: $35
	ld h, b                                          ; $68ee: $60
	rst SubAFromDE                                          ; $68ef: $df
	rst $38                                          ; $68f0: $ff
	sbc l                                            ; $68f1: $9d
	db $fd                                           ; $68f2: $fd
	cp $66                                           ; $68f3: $fe $66
	ld h, d                                          ; $68f5: $62
	ld a, c                                          ; $68f6: $79
	or b                                             ; $68f7: $b0
	sbc d                                            ; $68f8: $9a
	db $fd                                           ; $68f9: $fd
	db $e4                                           ; $68fa: $e4
	jp c, $a924                                      ; $68fb: $da $24 $a9

	ld a, b                                          ; $68fe: $78
	xor h                                            ; $68ff: $ac
	sub [hl]                                         ; $6900: $96
	ld [bc], a                                       ; $6901: $02
	dec de                                           ; $6902: $1b
	dec h                                            ; $6903: $25
	db $db                                           ; $6904: $db
	ld d, a                                          ; $6905: $57
	ld b, a                                          ; $6906: $47
	adc a                                            ; $6907: $8f
	ld e, a                                          ; $6908: $5f
	ccf                                              ; $6909: $3f
	ld [hl], a                                       ; $690a: $77
	xor l                                            ; $690b: $ad
	ld a, [hl]                                       ; $690c: $7e
	adc l                                            ; $690d: $8d
	sbc [hl]                                         ; $690e: $9e
	cp a                                             ; $690f: $bf
	call c, $9eff                                    ; $6910: $dc $ff $9e
	add c                                            ; $6913: $81
	ld [hl], l                                       ; $6914: $75
	inc bc                                           ; $6915: $03
	ld e, d                                          ; $6916: $5a
	sbc b                                            ; $6917: $98
	ld a, [hl]                                       ; $6918: $7e
	or $df                                           ; $6919: $f6 $df
	pop af                                           ; $691b: $f1
	sbc h                                            ; $691c: $9c
	ld sp, hl                                        ; $691d: $f9
	ei                                               ; $691e: $fb
	ei                                               ; $691f: $fb
	ret c                                            ; $6920: $d8

	rst $38                                          ; $6921: $ff
	ld a, l                                          ; $6922: $7d
	ld [$d47d], a                                    ; $6923: $ea $7d $d4
	push de                                          ; $6926: $d5
	rst $38                                          ; $6927: $ff
	sbc d                                            ; $6928: $9a
	ld a, e                                          ; $6929: $7b
	push af                                          ; $692a: $f5
	db $fd                                           ; $692b: $fd
	db $fd                                           ; $692c: $fd
	ld a, [$ac7b]                                    ; $692d: $fa $7b $ac
	ld a, b                                          ; $6930: $78
	inc sp                                           ; $6931: $33
	ld [hl], h                                       ; $6932: $74
	ld [hl-], a                                      ; $6933: $32
	ld a, c                                          ; $6934: $79
	ret z                                            ; $6935: $c8

	sbc [hl]                                         ; $6936: $9e
	ld sp, hl                                        ; $6937: $f9
	ld [hl], e                                       ; $6938: $73
	reti                                             ; $6939: $d9


	reti                                             ; $693a: $d9


	rst $38                                          ; $693b: $ff
	ld a, a                                          ; $693c: $7f
	and e                                            ; $693d: $a3
	sbc h                                            ; $693e: $9c
	ei                                               ; $693f: $fb
	pop af                                           ; $6940: $f1
	pop bc                                           ; $6941: $c1
	ld a, e                                          ; $6942: $7b
	ld d, l                                          ; $6943: $55
	reti                                             ; $6944: $d9


	rst $38                                          ; $6945: $ff
	rst SubAFromDE                                          ; $6946: $df
	add c                                            ; $6947: $81
	rst SubAFromDE                                          ; $6948: $df
	add e                                            ; $6949: $83
	rst SubAFromDE                                          ; $694a: $df
	pop bc                                           ; $694b: $c1
	ld a, [hl]                                       ; $694c: $7e
	sbc h                                            ; $694d: $9c
	ld h, d                                          ; $694e: $62
	add b                                            ; $694f: $80
	add l                                            ; $6950: $85
	rst $38                                          ; $6951: $ff
	rst SubAFromDE                                          ; $6952: $df
	rst $38                                          ; $6953: $ff
	ccf                                              ; $6954: $3f
	rst AddAOntoHL                                          ; $6955: $ef
	rra                                              ; $6956: $1f
	ccf                                              ; $6957: $3f
	pop af                                           ; $6958: $f1
	sub c                                            ; $6959: $91
	pop hl                                           ; $695a: $e1
	ld h, c                                          ; $695b: $61
	pop af                                           ; $695c: $f1
	pop af                                           ; $695d: $f1
	pop hl                                           ; $695e: $e1
	pop bc                                           ; $695f: $c1
	inc [hl]                                         ; $6960: $34
	jr c, jr_05b_6981                                ; $6961: $38 $1e

	rrca                                             ; $6963: $0f
	adc a                                            ; $6964: $8f
	add a                                            ; $6965: $87
	add e                                            ; $6966: $83
	add e                                            ; $6967: $83
	call z, $e1c6                                    ; $6968: $cc $c6 $e1
	ld [hl], l                                       ; $696b: $75
	ld a, l                                          ; $696c: $7d
	sbc [hl]                                         ; $696d: $9e
	db $fc                                           ; $696e: $fc
	ld [hl], c                                       ; $696f: $71
	add c                                            ; $6970: $81
	ld a, b                                          ; $6971: $78
	inc sp                                           ; $6972: $33
	jp hl                                            ; $6973: $e9


	ld d, l                                          ; $6974: $55
	nop                                              ; $6975: $00
	rst SubAFromDE                                          ; $6976: $df
	ld [hl+], a                                      ; $6977: $22
	sbc c                                            ; $6978: $99
	ld [hl], a                                       ; $6979: $77
	ld [hl], d                                       ; $697a: $72
	dec h                                            ; $697b: $25
	ld d, l                                          ; $697c: $55
	ld d, l                                          ; $697d: $55
	ld d, d                                          ; $697e: $52
	db $db                                           ; $697f: $db
	ld [hl+], a                                      ; $6980: $22

jr_05b_6981:
	sbc e                                            ; $6981: $9b
	ld [hl], a                                       ; $6982: $77
	ld d, l                                          ; $6983: $55
	ld d, l                                          ; $6984: $55
	ld b, d                                          ; $6985: $42
	ld h, e                                          ; $6986: $63
	or $9e                                           ; $6987: $f6 $9e
	ld d, [hl]                                       ; $6989: $56
	db $db                                           ; $698a: $db
	ld [hl+], a                                      ; $698b: $22
	sbc d                                            ; $698c: $9a
	ld h, $63                                        ; $698d: $26 $63
	inc sp                                           ; $698f: $33
	ld h, [hl]                                       ; $6990: $66
	ld h, d                                          ; $6991: $62
	sbc $22                                          ; $6992: $de $22
	add a                                            ; $6994: $87
	ld b, h                                          ; $6995: $44
	ld b, [hl]                                       ; $6996: $46
	ld h, [hl]                                       ; $6997: $66
	ld h, [hl]                                       ; $6998: $66
	inc sp                                           ; $6999: $33
	ld h, [hl]                                       ; $699a: $66
	ld h, [hl]                                       ; $699b: $66
	ld [hl+], a                                      ; $699c: $22
	ld [hl+], a                                      ; $699d: $22
	inc sp                                           ; $699e: $33
	ld b, h                                          ; $699f: $44
	ld b, [hl]                                       ; $69a0: $46
	ld h, h                                          ; $69a1: $64
	ld h, [hl]                                       ; $69a2: $66
	ld h, e                                          ; $69a3: $63
	ld [hl], $66                                     ; $69a4: $36 $66
	ld [hl+], a                                      ; $69a6: $22
	inc hl                                           ; $69a7: $23
	inc sp                                           ; $69a8: $33
	inc [hl]                                         ; $69a9: $34
	ld b, [hl]                                       ; $69aa: $46
	ld h, h                                          ; $69ab: $64
	ld b, [hl]                                       ; $69ac: $46
	ld l, a                                          ; $69ad: $6f
	or $9c                                           ; $69ae: $f6 $9c
	inc sp                                           ; $69b0: $33
	ld [hl], $54                                     ; $69b1: $36 $54
	ld h, a                                          ; $69b3: $67
	or $7f                                           ; $69b4: $f6 $7f
	ld [$569e], a                                    ; $69b6: $ea $9e $56
	ld a, e                                          ; $69b9: $7b
	or $9e                                           ; $69ba: $f6 $9e
	ld h, [hl]                                       ; $69bc: $66
	ld [hl], a                                       ; $69bd: $77
	or $9e                                           ; $69be: $f6 $9e
	dec [hl]                                         ; $69c0: $35
	ld [hl], a                                       ; $69c1: $77
	ret c                                            ; $69c2: $d8

	ld [hl], e                                       ; $69c3: $73
	or $7f                                           ; $69c4: $f6 $7f
	ld sp, hl                                        ; $69c6: $f9
	ld [hl], a                                       ; $69c7: $77
	or $56                                           ; $69c8: $f6 $56
	adc d                                            ; $69ca: $8a
	db $ec                                           ; $69cb: $ec
	sbc h                                            ; $69cc: $9c
	inc bc                                           ; $69cd: $03
	ld [bc], a                                       ; $69ce: $02
	ld bc, $7bfb                                     ; $69cf: $01 $fb $7b
	ld sp, hl                                        ; $69d2: $f9
	sbc b                                            ; $69d3: $98
	ld bc, $3c07                                     ; $69d4: $01 $07 $3c
	db $e3                                           ; $69d7: $e3
	sbc [hl]                                         ; $69d8: $9e
	ld [hl], b                                       ; $69d9: $70
	adc b                                            ; $69da: $88
	ld [hl], a                                       ; $69db: $77
	ld [$1c86], a                                    ; $69dc: $ea $86 $1c
	ld h, c                                          ; $69df: $61
	adc a                                            ; $69e0: $8f
	halt                                             ; $69e1: $76
	inc sp                                           ; $69e2: $33
	call z, $c932                                    ; $69e3: $cc $32 $c9
	sub c                                            ; $69e6: $91
	ld a, [de]                                       ; $69e7: $1a
	inc h                                            ; $69e8: $24
	ld d, b                                          ; $69e9: $50
	inc c                                            ; $69ea: $0c
	inc sp                                           ; $69eb: $33
	call z, Call_05b_6230                            ; $69ec: $cc $30 $62
	push hl                                          ; $69ef: $e5
	ld e, d                                          ; $69f0: $5a
	xor h                                            ; $69f1: $ac
	add b                                            ; $69f2: $80
	nop                                              ; $69f3: $00
	db $10                                           ; $69f4: $10
	ret nz                                           ; $69f5: $c0

	add b                                            ; $69f6: $80
	ei                                               ; $69f7: $fb
	sbc l                                            ; $69f8: $9d
	jr nz, jr_05b_6a3b                               ; $69f9: $20 $40

	ld l, e                                          ; $69fb: $6b
	rst FarCall                                          ; $69fc: $f7
	pop af                                           ; $69fd: $f1
	sbc e                                            ; $69fe: $9b
	ld [$1010], sp                                   ; $69ff: $08 $10 $10
	jr nz, jr_05b_6a6b                               ; $6a02: $20 $67

	db $dd                                           ; $6a04: $dd
	ld l, e                                          ; $6a05: $6b
	xor b                                            ; $6a06: $a8
	sbc [hl]                                         ; $6a07: $9e
	ld [bc], a                                       ; $6a08: $02
	ld a, [$049e]                                    ; $6a09: $fa $9e $04
	db $fc                                           ; $6a0c: $fc
	sbc h                                            ; $6a0d: $9c
	ld b, e                                          ; $6a0e: $43
	add [hl]                                         ; $6a0f: $86
	inc e                                            ; $6a10: $1c
	ld l, a                                          ; $6a11: $6f
	jp hl                                            ; $6a12: $e9


	add b                                            ; $6a13: $80
	rlca                                             ; $6a14: $07
	rrca                                             ; $6a15: $0f
	ld bc, $1c07                                     ; $6a16: $01 $07 $1c
	jr nc, @-$3b                                     ; $6a19: $30 $c3

	rlca                                             ; $6a1b: $07
	rrca                                             ; $6a1c: $0f
	ld e, $00                                        ; $6a1d: $1e $00
	inc bc                                           ; $6a1f: $03
	rrca                                             ; $6a20: $0f
	ccf                                              ; $6a21: $3f
	db $fc                                           ; $6a22: $fc
	ld sp, hl                                        ; $6a23: $f9
	ldh a, [c]                                       ; $6a24: $f2
	ldh [c], a                                       ; $6a25: $e2
	ldh a, [$60]                                     ; $6a26: $f0 $60
	ret nz                                           ; $6a28: $c0

	add c                                            ; $6a29: $81
	add e                                            ; $6a2a: $83
	adc a                                            ; $6a2b: $8f
	ld c, $1f                                        ; $6a2c: $0e $1f
	ld hl, sp-$50                                    ; $6a2e: $f8 $b0
	ld h, c                                          ; $6a30: $61
	jp $8e87                                         ; $6a31: $c3 $87 $8e


	dec c                                            ; $6a34: $0d
	dec de                                           ; $6a35: $1b
	ld [hl-], a                                      ; $6a36: $32
	ld a, [de]                                       ; $6a37: $1a
	ld d, h                                          ; $6a38: $54
	ldh a, [$e8]                                     ; $6a39: $f0 $e8

jr_05b_6a3b:
	ldh [$d0], a                                     ; $6a3b: $e0 $d0
	ret nz                                           ; $6a3d: $c0

	and c                                            ; $6a3e: $a1
	ld h, h                                          ; $6a3f: $64
	add sp, -$38                                     ; $6a40: $e8 $c8
	sub b                                            ; $6a42: $90
	db $10                                           ; $6a43: $10
	jr nz, jr_05b_6ac1                               ; $6a44: $20 $7b

	or b                                             ; $6a46: $b0
	sbc b                                            ; $6a47: $98
	inc b                                            ; $6a48: $04
	inc h                                            ; $6a49: $24
	inc h                                            ; $6a4a: $24
	ld h, c                                          ; $6a4b: $61
	db $ed                                           ; $6a4c: $ed
	db $ed                                           ; $6a4d: $ed
	call z, $b373                                    ; $6a4e: $cc $73 $b3
	rst SubAFromDE                                          ; $6a51: $df
	inc h                                            ; $6a52: $24
	sbc [hl]                                         ; $6a53: $9e
	ld c, h                                          ; $6a54: $4c
	sbc $80                                          ; $6a55: $de $80
	sbc d                                            ; $6a57: $9a
	ld b, b                                          ; $6a58: $40
	ldh [$f0], a                                     ; $6a59: $e0 $f0
	ld hl, sp-$08                                    ; $6a5b: $f8 $f8
	sbc $80                                          ; $6a5d: $de $80
	sub d                                            ; $6a5f: $92
	ret nz                                           ; $6a60: $c0

	ld b, b                                          ; $6a61: $40
	ld b, b                                          ; $6a62: $40
	ld h, b                                          ; $6a63: $60
	ld h, b                                          ; $6a64: $60
	jr z, jr_05b_6a8f                                ; $6a65: $28 $28

	inc c                                            ; $6a67: $0c
	ld c, $0f                                        ; $6a68: $0e $0f
	rrca                                             ; $6a6a: $0f

jr_05b_6a6b:
	rla                                              ; $6a6b: $17
	rla                                              ; $6a6c: $17
	db $db                                           ; $6a6d: $db
	db $10                                           ; $6a6e: $10
	rst SubAFromDE                                          ; $6a6f: $df
	ld [$2673], sp                                   ; $6a70: $08 $73 $26
	ld a, a                                          ; $6a73: $7f
	push hl                                          ; $6a74: $e5
	sbc [hl]                                         ; $6a75: $9e
	ldh [rOCPD], a                                   ; $6a76: $e0 $6b
	rra                                              ; $6a78: $1f
	add b                                            ; $6a79: $80
	nop                                              ; $6a7a: $00
	xor l                                            ; $6a7b: $ad
	rst SubAFromHL                                          ; $6a7c: $d7
	db $ed                                           ; $6a7d: $ed
	dec sp                                           ; $6a7e: $3b
	halt                                             ; $6a7f: $76
	dec e                                            ; $6a80: $1d
	dec sp                                           ; $6a81: $3b
	ld d, $f7                                        ; $6a82: $16 $f7
	cp d                                             ; $6a84: $ba
	ld e, e                                          ; $6a85: $5b
	ld l, l                                          ; $6a86: $6d
	dec l                                            ; $6a87: $2d
	ld [hl], $16                                     ; $6a88: $36 $16
	dec de                                           ; $6a8a: $1b
	ld a, c                                          ; $6a8b: $79
	ld a, [hl-]                                      ; $6a8c: $3a
	sbc h                                            ; $6a8d: $9c
	ld c, h                                          ; $6a8e: $4c

jr_05b_6a8f:
	call z, Call_05b_66a6                            ; $6a8f: $cc $a6 $66
	sub $86                                          ; $6a92: $d6 $86
	pop bc                                           ; $6a94: $c1
	ld h, c                                          ; $6a95: $61
	or c                                             ; $6a96: $b1
	or b                                             ; $6a97: $b0
	ret c                                            ; $6a98: $d8

	sub [hl]                                         ; $6a99: $96
	ret c                                            ; $6a9a: $d8

	ld l, b                                          ; $6a9b: $68
	ld a, $36                                        ; $6a9c: $3e $36
	sbc e                                            ; $6a9e: $9b
	sbc c                                            ; $6a9f: $99
	add hl, bc                                       ; $6aa0: $09
	ld c, b                                          ; $6aa1: $48
	ld c, b                                          ; $6aa2: $48
	ld [hl], e                                       ; $6aa3: $73
	ld h, $77                                        ; $6aa4: $26 $77
	and h                                            ; $6aa6: $a4
	adc a                                            ; $6aa7: $8f
	ld h, b                                          ; $6aa8: $60
	db $10                                           ; $6aa9: $10
	jr jr_05b_6ab8                                   ; $6aaa: $18 $0c

	inc b                                            ; $6aac: $04
	ld h, $2a                                        ; $6aad: $26 $2a
	ld [hl+], a                                      ; $6aaf: $22
	add b                                            ; $6ab0: $80
	ld h, b                                          ; $6ab1: $60
	ld h, b                                          ; $6ab2: $60
	jr nc, jr_05b_6aed                               ; $6ab3: $30 $38

	jr @+$16                                         ; $6ab5: $18 $14

	inc c                                            ; $6ab7: $0c

jr_05b_6ab8:
	ld a, e                                          ; $6ab8: $7b
	ld c, l                                          ; $6ab9: $4d
	sbc d                                            ; $6aba: $9a
	ld a, $79                                        ; $6abb: $3e $79
	or $ec                                           ; $6abd: $f6 $ec
	ret nc                                           ; $6abf: $d0

	ld [hl], a                                       ; $6ac0: $77

jr_05b_6ac1:
	ld b, d                                          ; $6ac1: $42
	add b                                            ; $6ac2: $80
	ld b, $09                                        ; $6ac3: $06 $09
	ld [de], a                                       ; $6ac5: $12
	inc l                                            ; $6ac6: $2c
	add d                                            ; $6ac7: $82
	push bc                                          ; $6ac8: $c5
	inc sp                                           ; $6ac9: $33
	add $8c                                          ; $6aca: $c6 $8c
	jr jr_05b_6ade                                   ; $6acc: $18 $10

	jr nc, jr_05b_6ad1                               ; $6ace: $30 $01

	ld [hl-], a                                      ; $6ad0: $32

jr_05b_6ad1:
	call z, Call_05b_4331                            ; $6ad1: $cc $31 $43
	add a                                            ; $6ad4: $87
	ld c, $0c                                        ; $6ad5: $0e $0c
	ld [hl], b                                       ; $6ad7: $70
	pop bc                                           ; $6ad8: $c1
	ld bc, $0e03                                     ; $6ad9: $01 $03 $0e
	jr jr_05b_6b4e                                   ; $6adc: $18 $70

jr_05b_6ade:
	ldh [$8d], a                                     ; $6ade: $e0 $8d
	ld a, [hl-]                                      ; $6ae0: $3a
	ldh a, [c]                                       ; $6ae1: $f2
	adc a                                            ; $6ae2: $8f
	db $e4                                           ; $6ae3: $e4
	and c                                            ; $6ae4: $a1
	ld b, [hl]                                       ; $6ae5: $46
	adc b                                            ; $6ae6: $88
	db $10                                           ; $6ae7: $10
	or b                                             ; $6ae8: $b0
	ld h, b                                          ; $6ae9: $60
	add d                                            ; $6aea: $82
	inc b                                            ; $6aeb: $04
	inc b                                            ; $6aec: $04

jr_05b_6aed:
	ld [$7030], sp                                   ; $6aed: $08 $30 $70
	ld c, b                                          ; $6af0: $48
	sub b                                            ; $6af1: $90
	ld h, b                                          ; $6af2: $60
	ld d, [hl]                                       ; $6af3: $56
	jp nc, $069e                                     ; $6af4: $d2 $9e $06

	rst FarCall                                          ; $6af7: $f7
	sbc e                                            ; $6af8: $9b
	dec b                                            ; $6af9: $05
	ld a, [de]                                       ; $6afa: $1a
	inc [hl]                                         ; $6afb: $34
	jr z, jr_05b_6b70                                ; $6afc: $28 $72

	db $dd                                           ; $6afe: $dd
	ld a, a                                          ; $6aff: $7f
	reti                                             ; $6b00: $d9


	sbc h                                            ; $6b01: $9c
	stop                                             ; $6b02: $10 $00
	nop                                              ; $6b04: $00
	halt                                             ; $6b05: $76
	xor h                                            ; $6b06: $ac
	ld a, [hl]                                       ; $6b07: $7e
	db $db                                           ; $6b08: $db
	sbc l                                            ; $6b09: $9d
	ld hl, $7bc3                                     ; $6b0a: $21 $c3 $7b
	ld sp, hl                                        ; $6b0d: $f9
	ld a, a                                          ; $6b0e: $7f
	xor $9e                                          ; $6b0f: $ee $9e
	inc c                                            ; $6b11: $0c
	halt                                             ; $6b12: $76
	cp b                                             ; $6b13: $b8
	ld a, a                                          ; $6b14: $7f
	or c                                             ; $6b15: $b1
	sub c                                            ; $6b16: $91
	inc d                                            ; $6b17: $14
	ld l, b                                          ; $6b18: $68
	ret nc                                           ; $6b19: $d0

	jr nz, jr_05b_6b34                               ; $6b1a: $20 $18

	jr nc, @-$3d                                     ; $6b1c: $30 $c1

	add e                                            ; $6b1e: $83
	rrca                                             ; $6b1f: $0f
	rra                                              ; $6b20: $1f
	ccf                                              ; $6b21: $3f
	rst $38                                          ; $6b22: $ff
	ccf                                              ; $6b23: $3f
	ld c, a                                          ; $6b24: $4f
	ld l, a                                          ; $6b25: $6f
	cp c                                             ; $6b26: $b9
	sbc l                                            ; $6b27: $9d
	jr nc, jr_05b_6ba9                               ; $6b28: $30 $7f

	db $db                                           ; $6b2a: $db
	rst $38                                          ; $6b2b: $ff
	add b                                            ; $6b2c: $80
	cp h                                             ; $6b2d: $bc
	ld hl, sp-$18                                    ; $6b2e: $f8 $e8
	ld sp, $2311                                     ; $6b30: $31 $11 $23
	ld [hl+], a                                      ; $6b33: $22

jr_05b_6b34:
	dec h                                            ; $6b34: $25
	ld b, h                                          ; $6b35: $44
	ld [$f3d9], sp                                   ; $6b36: $08 $d9 $f3
	rst FarCall                                          ; $6b39: $f7
	and $ef                                          ; $6b3a: $e6 $ef
	rst AddAOntoHL                                          ; $6b3c: $ef
	dec l                                            ; $6b3d: $2d
	ld e, a                                          ; $6b3e: $5f
	cp a                                             ; $6b3f: $bf
	ld a, [hl]                                       ; $6b40: $7e
	ld a, [$fcfe]                                    ; $6b41: $fa $fe $fc
	ld a, l                                          ; $6b44: $7d
	halt                                             ; $6b45: $76
	db $e4                                           ; $6b46: $e4
	call nz, $0d85                                   ; $6b47: $c4 $85 $0d
	add hl, bc                                       ; $6b4a: $09
	dec bc                                           ; $6b4b: $0b
	sub [hl]                                         ; $6b4c: $96
	adc e                                            ; $6b4d: $8b

jr_05b_6b4e:
	ld b, c                                          ; $6b4e: $41
	ld b, e                                          ; $6b4f: $43
	ld b, e                                          ; $6b50: $43
	add a                                            ; $6b51: $87
	rst JumpTable                                          ; $6b52: $c7
	adc a                                            ; $6b53: $8f
	adc [hl]                                         ; $6b54: $8e
	ld e, $dd                                        ; $6b55: $1e $dd
	ret nz                                           ; $6b57: $c0

	rst SubAFromDE                                          ; $6b58: $df
	add b                                            ; $6b59: $80
	rst SubAFromDE                                          ; $6b5a: $df
	add c                                            ; $6b5b: $81
	rst SubAFromDE                                          ; $6b5c: $df

jr_05b_6b5d:
	adc $94                                          ; $6b5d: $ce $94
	jp c, $d3d2                                      ; $6b5f: $da $d2 $d3

	pop de                                           ; $6b62: $d1
	pop de                                           ; $6b63: $d1
	ret nc                                           ; $6b64: $d0

	ld c, h                                          ; $6b65: $4c
	ld c, h                                          ; $6b66: $4c
	ld c, [hl]                                       ; $6b67: $4e
	sbc [hl]                                         ; $6b68: $9e
	sbc [hl]                                         ; $6b69: $9e
	sbc $9f                                          ; $6b6a: $de $9f
	add b                                            ; $6b6c: $80
	db $fc                                           ; $6b6d: $fc
	sbc $ae                                          ; $6b6e: $de $ae

jr_05b_6b70:
	rst AddAOntoHL                                          ; $6b70: $ef
	rst AddAOntoHL                                          ; $6b71: $ef
	rst SubAFromHL                                          ; $6b72: $d7
	rst FarCall                                          ; $6b73: $f7
	di                                               ; $6b74: $f3
	ld h, b                                          ; $6b75: $60
	ld [hl], b                                       ; $6b76: $70
	ld a, b                                          ; $6b77: $78
	jr c, @+$3a                                      ; $6b78: $38 $38

	inc a                                            ; $6b7a: $3c
	inc e                                            ; $6b7b: $1c
	sbc [hl]                                         ; $6b7c: $9e
	rlca                                             ; $6b7d: $07
	dec bc                                           ; $6b7e: $0b
	rrca                                             ; $6b7f: $0f
	dec b                                            ; $6b80: $05
	add a                                            ; $6b81: $87
	jp $e3c2                                         ; $6b82: $c3 $c2 $e3


	ld [$0404], sp                                   ; $6b85: $08 $04 $04
	ld b, $02                                        ; $6b88: $06 $02
	ld [bc], a                                       ; $6b8a: $02
	inc bc                                           ; $6b8b: $03
	sbc d                                            ; $6b8c: $9a
	ld bc, $f8f0                                     ; $6b8d: $01 $f0 $f8
	db $fc                                           ; $6b90: $fc
	cp $dd                                           ; $6b91: $fe $dd
	rst $38                                          ; $6b93: $ff
	ld sp, hl                                        ; $6b94: $f9
	sub l                                            ; $6b95: $95
	dec c                                            ; $6b96: $0d
	rra                                              ; $6b97: $1f
	jr jr_05b_6ba2                                   ; $6b98: $18 $08

	inc b                                            ; $6b9a: $04
	call z, $f2e2                                    ; $6b9b: $cc $e2 $f2
	dec de                                           ; $6b9e: $1b
	add hl, bc                                       ; $6b9f: $09
	sbc $0f                                          ; $6ba0: $de $0f

jr_05b_6ba2:
	rst SubAFromDE                                          ; $6ba2: $df
	rlca                                             ; $6ba3: $07
	sbc e                                            ; $6ba4: $9b
	inc bc                                           ; $6ba5: $03
	or e                                             ; $6ba6: $b3
	inc sp                                           ; $6ba7: $33
	xor e                                            ; $6ba8: $ab

jr_05b_6ba9:
	sbc $99                                          ; $6ba9: $de $99
	sbc d                                            ; $6bab: $9a
	ld d, h                                          ; $6bac: $54
	ld c, h                                          ; $6bad: $4c
	ld l, h                                          ; $6bae: $6c
	db $ec                                           ; $6baf: $ec
	db $f4                                           ; $6bb0: $f4
	sbc $f6                                          ; $6bb1: $de $f6
	rst SubAFromDE                                          ; $6bb3: $df
	ei                                               ; $6bb4: $fb

jr_05b_6bb5:
	sub l                                            ; $6bb5: $95
	ld [bc], a                                       ; $6bb6: $02
	ld [hl+], a                                      ; $6bb7: $22
	ld b, d                                          ; $6bb8: $42
	add d                                            ; $6bb9: $82
	add e                                            ; $6bba: $83
	add c                                            ; $6bbb: $81
	add c                                            ; $6bbc: $81
	sub c                                            ; $6bbd: $91
	ld b, b                                          ; $6bbe: $40
	ld b, b                                          ; $6bbf: $40
	sbc $24                                          ; $6bc0: $de $24
	sbc $22                                          ; $6bc2: $de $22
	rst SubAFromDE                                          ; $6bc4: $df
	ld hl, $2096                                     ; $6bc5: $21 $96 $20
	inc h                                            ; $6bc8: $24
	jr nz, jr_05b_6c0b                               ; $6bc9: $20 $40

	ld b, b                                          ; $6bcb: $40
	ret nz                                           ; $6bcc: $c0

	ld c, $06                                        ; $6bcd: $0e $06
	rlca                                             ; $6bcf: $07
	call c, $9e03                                    ; $6bd0: $dc $03 $9e
	and b                                            ; $6bd3: $a0
	ld [hl], e                                       ; $6bd4: $73
	ld e, $ff                                        ; $6bd5: $1e $ff
	sbc l                                            ; $6bd7: $9d
	ld d, b                                          ; $6bd8: $50
	ldh [$6f], a                                     ; $6bd9: $e0 $6f
	jr c, jr_05b_6b5d                                ; $6bdb: $38 $80

	dec h                                            ; $6bdd: $25
	ld h, e                                          ; $6bde: $63
	ld b, e                                          ; $6bdf: $43
	ld b, [hl]                                       ; $6be0: $46
	ld b, h                                          ; $6be1: $44
	dec c                                            ; $6be2: $0d
	rrca                                             ; $6be3: $0f
	inc a                                            ; $6be4: $3c
	jr jr_05b_6bff                                   ; $6be5: $18 $18

	jr nc, jr_05b_6c1a                               ; $6be7: $30 $31

	inc sp                                           ; $6be9: $33
	ld [hl], d                                       ; $6bea: $72
	ld [hl], b                                       ; $6beb: $70
	ld b, e                                          ; $6bec: $43
	rst GetHLinHL                                          ; $6bed: $cf
	sbc a                                            ; $6bee: $9f
	ld a, $38                                        ; $6bef: $3e $38
	ldh [c], a                                       ; $6bf1: $e2
	add b                                            ; $6bf2: $80
	ld bc, $20e1                                     ; $6bf3: $01 $e1 $20
	ld b, b                                          ; $6bf6: $40
	add c                                            ; $6bf7: $81
	add a                                            ; $6bf8: $87
	inc e                                            ; $6bf9: $1c
	ld [hl], b                                       ; $6bfa: $70
	ldh [$9b], a                                     ; $6bfb: $e0 $9b
	nop                                              ; $6bfd: $00
	ret nz                                           ; $6bfe: $c0

jr_05b_6bff:
	and b                                            ; $6bff: $a0
	ld b, b                                          ; $6c00: $40
	ld a, c                                          ; $6c01: $79
	rst AddAOntoHL                                          ; $6c02: $ef
	ld a, [hl]                                       ; $6c03: $7e
	adc e                                            ; $6c04: $8b
	ld h, l                                          ; $6c05: $65
	sub e                                            ; $6c06: $93
	sub a                                            ; $6c07: $97
	rra                                              ; $6c08: $1f
	ld a, $7d                                        ; $6c09: $3e $7d

jr_05b_6c0b:
	ld a, [$f0f4]                                    ; $6c0b: $fa $f4 $f0
	jp hl                                            ; $6c0e: $e9


	rst SubAFromHL                                          ; $6c0f: $d7
	ld [hl], d                                       ; $6c10: $72
	ret nc                                           ; $6c11: $d0

	ld a, [hl]                                       ; $6c12: $7e
	rst GetHLinHL                                          ; $6c13: $cf
	sub l                                            ; $6c14: $95
	jr nz, jr_05b_6c58                               ; $6c15: $20 $41

	add a                                            ; $6c17: $87
	ld c, $3f                                        ; $6c18: $0e $3f

jr_05b_6c1a:
	ld a, l                                          ; $6c1a: $7d
	rst FarCall                                          ; $6c1b: $f7
	db $eb                                           ; $6c1c: $eb
	rst SubAFromDE                                          ; $6c1d: $df
	add b                                            ; $6c1e: $80
	ld a, e                                          ; $6c1f: $7b
	rst AddAOntoHL                                          ; $6c20: $ef
	sub d                                            ; $6c21: $92
	ld b, $0c                                        ; $6c22: $06 $0c
	inc e                                            ; $6c24: $1c
	jr z, jr_05b_6bb5                                ; $6c25: $28 $8e

	inc a                                            ; $6c27: $3c
	ld a, c                                          ; $6c28: $79
	ldh a, [c]                                       ; $6c29: $f2
	db $e4                                           ; $6c2a: $e4
	call nz, $1888                                   ; $6c2b: $c4 $88 $18
	ld b, c                                          ; $6c2e: $41
	ld a, e                                          ; $6c2f: $7b
	call z, $d17e                                    ; $6c30: $cc $7e $d1
	ld a, [hl]                                       ; $6c33: $7e
	db $db                                           ; $6c34: $db
	ld [hl], a                                       ; $6c35: $77
	ret                                              ; $6c36: $c9


	sbc e                                            ; $6c37: $9b
	ld b, e                                          ; $6c38: $43
	ccf                                              ; $6c39: $3f
	sbc [hl]                                         ; $6c3a: $9e
	ld a, e                                          ; $6c3b: $7b
	jp c, $96ff                                      ; $6c3c: $da $ff $96

	db $fc                                           ; $6c3f: $fc
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	ldh a, [$0e]                                     ; $6c42: $f0 $0e
	pop hl                                           ; $6c44: $e1
	db $fc                                           ; $6c45: $fc
	rra                                              ; $6c46: $1f
	di                                               ; $6c47: $f3
	jp c, $96ff                                      ; $6c48: $da $ff $96

	rrca                                             ; $6c4b: $0f
	ld b, h                                          ; $6c4c: $44
	ld c, b                                          ; $6c4d: $48
	ld c, b                                          ; $6c4e: $48
	ld d, b                                          ; $6c4f: $50
	ret nc                                           ; $6c50: $d0

	ld d, b                                          ; $6c51: $50
	ld [hl], b                                       ; $6c52: $70
	ld hl, sp-$27                                    ; $6c53: $f8 $d9
	rst $38                                          ; $6c55: $ff
	sbc h                                            ; $6c56: $9c
	cp l                                             ; $6c57: $bd

jr_05b_6c58:
	ld e, l                                          ; $6c58: $5d
	dec e                                            ; $6c59: $1d
	sbc $19                                          ; $6c5a: $de $19
	rst SubAFromDE                                          ; $6c5c: $df
	dec de                                           ; $6c5d: $1b
	sbc h                                            ; $6c5e: $9c
	set 5, e                                         ; $6c5f: $cb $eb
	db $eb                                           ; $6c61: $eb
	call c, $9def                                    ; $6c62: $dc $ef $9d
	sbc l                                            ; $6c65: $9d
	dec e                                            ; $6c66: $1d
	sbc $39                                          ; $6c67: $de $39
	sbc d                                            ; $6c69: $9a
	ld a, [hl-]                                      ; $6c6a: $3a
	ld [hl-], a                                      ; $6c6b: $32
	ld [hl], d                                       ; $6c6c: $72
	inc bc                                           ; $6c6d: $03
	inc bc                                           ; $6c6e: $03
	db $dd                                           ; $6c6f: $dd
	rlca                                             ; $6c70: $07
	rst SubAFromDE                                          ; $6c71: $df
	rrca                                             ; $6c72: $0f
	sub d                                            ; $6c73: $92
	pop de                                           ; $6c74: $d1
	ld d, c                                          ; $6c75: $51
	db $d3                                           ; $6c76: $d3
	db $d3                                           ; $6c77: $d3
	rst $38                                          ; $6c78: $ff
	rst $38                                          ; $6c79: $ff
	ldh a, [$f0]                                     ; $6c7a: $f0 $f0
	sbc [hl]                                         ; $6c7c: $9e
	sbc [hl]                                         ; $6c7d: $9e
	sbc h                                            ; $6c7e: $9c
	sbc h                                            ; $6c7f: $9c
	sub b                                            ; $6c80: $90
	sbc $9f                                          ; $6c81: $de $9f
	add l                                            ; $6c83: $85
	ld [$fbfb], a                                    ; $6c84: $ea $fb $fb
	rst FarCall                                          ; $6c87: $f7
	db $fc                                           ; $6c88: $fc
	ei                                               ; $6c89: $fb
	ld a, [de]                                       ; $6c8a: $1a
	add hl, bc                                       ; $6c8b: $09
	sbc a                                            ; $6c8c: $9f
	ld c, l                                          ; $6c8d: $4d
	ld c, h                                          ; $6c8e: $4c
	inc l                                            ; $6c8f: $2c
	daa                                              ; $6c90: $27
	rst FarCall                                          ; $6c91: $f7
	rst FarCall                                          ; $6c92: $f7
	rst $38                                          ; $6c93: $ff
	di                                               ; $6c94: $f3
	ld sp, hl                                        ; $6c95: $f9
	db $fd                                           ; $6c96: $fd
	cp $7f                                           ; $6c97: $fe $7f
	rst $38                                          ; $6c99: $ff
	rra                                              ; $6c9a: $1f
	rrca                                             ; $6c9b: $0f
	ld bc, $7901                                     ; $6c9c: $01 $01 $79
	ld l, a                                          ; $6c9f: $6f
	ld a, c                                          ; $6ca0: $79
	ld h, a                                          ; $6ca1: $67
	ld a, a                                          ; $6ca2: $7f
	db $f4                                           ; $6ca3: $f4
	sbc c                                            ; $6ca4: $99
	cp a                                             ; $6ca5: $bf
	rst SubAFromDE                                          ; $6ca6: $df
	rst AddAOntoHL                                          ; $6ca7: $ef
	rst SubAFromHL                                          ; $6ca8: $d7
	rst AddAOntoHL                                          ; $6ca9: $ef
	db $eb                                           ; $6caa: $eb
	ld [hl], a                                       ; $6cab: $77
	ldh a, [c]                                       ; $6cac: $f2
	ld a, d                                          ; $6cad: $7a
	sbc l                                            ; $6cae: $9d
	sbc l                                            ; $6caf: $9d
	inc a                                            ; $6cb0: $3c
	ld sp, hl                                        ; $6cb1: $f9
	jp c, $7eff                                      ; $6cb2: $da $ff $7e

	and [hl]                                         ; $6cb5: $a6
	ld l, l                                          ; $6cb6: $6d
	ld l, [hl]                                       ; $6cb7: $6e
	rst SubAFromDE                                          ; $6cb8: $df
	ld c, h                                          ; $6cb9: $4c
	sbc c                                            ; $6cba: $99
	inc l                                            ; $6cbb: $2c
	xor h                                            ; $6cbc: $ac
	xor d                                            ; $6cbd: $aa
	ld h, [hl]                                       ; $6cbe: $66
	and $e6                                          ; $6cbf: $e6 $e6
	db $dd                                           ; $6cc1: $dd
	ei                                               ; $6cc2: $fb
	rst SubAFromDE                                          ; $6cc3: $df
	db $fd                                           ; $6cc4: $fd
	rst SubAFromDE                                          ; $6cc5: $df
	ld a, l                                          ; $6cc6: $7d
	sbc h                                            ; $6cc7: $9c
	and c                                            ; $6cc8: $a1
	pop bc                                           ; $6cc9: $c1
	pop bc                                           ; $6cca: $c1
	db $dd                                           ; $6ccb: $dd
	ld b, l                                          ; $6ccc: $45
	sbc [hl]                                         ; $6ccd: $9e
	ld b, h                                          ; $6cce: $44
	sbc $12                                          ; $6ccf: $de $12
	db $dd                                           ; $6cd1: $dd
	sub d                                            ; $6cd2: $92
	sbc h                                            ; $6cd3: $9c
	sub e                                            ; $6cd4: $93
	ret nz                                           ; $6cd5: $c0

	ret nz                                           ; $6cd6: $c0

	ld l, b                                          ; $6cd7: $68
	ld e, l                                          ; $6cd8: $5d
	sbc [hl]                                         ; $6cd9: $9e
	inc bc                                           ; $6cda: $03

jr_05b_6cdb:
	call c, $9e83                                    ; $6cdb: $dc $83 $9e
	inc bc                                           ; $6cde: $03
	ld [hl], h                                       ; $6cdf: $74
	bit 7, a                                         ; $6ce0: $cb $7f
	jr @+$80                                         ; $6ce2: $18 $7e

	db $d3                                           ; $6ce4: $d3

jr_05b_6ce5:
	ld l, h                                          ; $6ce5: $6c
	xor d                                            ; $6ce6: $aa
	ld a, [hl]                                       ; $6ce7: $7e
	db $fd                                           ; $6ce8: $fd
	sbc d                                            ; $6ce9: $9a
	ld [hl], e                                       ; $6cea: $73
	jp Jump_05b_65a3                                 ; $6ceb: $c3 $a3 $65


	push hl                                          ; $6cee: $e5
	sbc $c5                                          ; $6cef: $de $c5
	sbc d                                            ; $6cf1: $9a
	inc c                                            ; $6cf2: $0c
	inc a                                            ; $6cf3: $3c
	ld e, h                                          ; $6cf4: $5c
	sbc d                                            ; $6cf5: $9a
	ld a, [de]                                       ; $6cf6: $1a
	sbc $3a                                          ; $6cf7: $de $3a
	rst SubAFromDE                                          ; $6cf9: $df
	and d                                            ; $6cfa: $a2
	sbc $a4                                          ; $6cfb: $de $a4
	sbc h                                            ; $6cfd: $9c
	xor b                                            ; $6cfe: $a8
	ret                                              ; $6cff: $c9


	db $d3                                           ; $6d00: $d3
	db $db                                           ; $6d01: $db
	ld b, b                                          ; $6d02: $40
	rst SubAFromDE                                          ; $6d03: $df
	jr nz, jr_05b_6ce5                               ; $6d04: $20 $df

	rra                                              ; $6d06: $1f
	ld a, [hl]                                       ; $6d07: $7e
	ei                                               ; $6d08: $fb
	ld a, l                                          ; $6d09: $7d
	pop af                                           ; $6d0a: $f1
	sbc l                                            ; $6d0b: $9d
	db $fd                                           ; $6d0c: $fd
	ld sp, hl                                        ; $6d0d: $f9
	ld [hl], e                                       ; $6d0e: $73
	ret nc                                           ; $6d0f: $d0

	sub h                                            ; $6d10: $94
	inc bc                                           ; $6d11: $03
	ld [bc], a                                       ; $6d12: $02
	ld b, $cf                                        ; $6d13: $06 $cf
	cp a                                             ; $6d15: $bf
	ld a, [hl]                                       ; $6d16: $7e
	ld a, h                                          ; $6d17: $7c
	ld sp, hl                                        ; $6d18: $f9
	ldh a, [c]                                       ; $6d19: $f2
	ldh [$c4], a                                     ; $6d1a: $e0 $c4
	ld a, d                                          ; $6d1c: $7a
	and b                                            ; $6d1d: $a0
	sbc [hl]                                         ; $6d1e: $9e

jr_05b_6d1f:
	add e                                            ; $6d1f: $83
	ld a, d                                          ; $6d20: $7a
	ret nc                                           ; $6d21: $d0

	add b                                            ; $6d22: $80
	jr c, jr_05b_6cdb                                ; $6d23: $38 $b6

	ld e, [hl]                                       ; $6d25: $5e
	xor h                                            ; $6d26: $ac
	jr c, jr_05b_6d82                                ; $6d27: $38 $59

	ld d, c                                          ; $6d29: $51
	ld [hl], d                                       ; $6d2a: $72
	ld h, e                                          ; $6d2b: $63
	ld e, c                                          ; $6d2c: $59
	sub c                                            ; $6d2d: $91
	inc sp                                           ; $6d2e: $33
	daa                                              ; $6d2f: $27
	ld h, a                                          ; $6d30: $67
	ld l, a                                          ; $6d31: $6f
	ld c, a                                          ; $6d32: $4f
	ld e, [hl]                                       ; $6d33: $5e
	dec hl                                           ; $6d34: $2b
	ld c, a                                          ; $6d35: $4f
	adc a                                            ; $6d36: $8f
	rst AddAOntoHL                                          ; $6d37: $ef
	ld l, h                                          ; $6d38: $6c
	db $ec                                           ; $6d39: $ec
	xor h                                            ; $6d3a: $ac
	xor h                                            ; $6d3b: $ac
	db $fc                                           ; $6d3c: $fc
	ld hl, sp-$08                                    ; $6d3d: $f8 $f8
	cp b                                             ; $6d3f: $b8
	ld hl, sp+$78                                    ; $6d40: $f8 $78
	ld a, a                                          ; $6d42: $7f
	db $fd                                           ; $6d43: $fd
	sub l                                            ; $6d44: $95
	or a                                             ; $6d45: $b7
	ret z                                            ; $6d46: $c8

	ret nc                                           ; $6d47: $d0

	ldh [$60], a                                     ; $6d48: $e0 $60
	ld [hl], b                                       ; $6d4a: $70
	jr nc, jr_05b_6d85                               ; $6d4b: $30 $38

	ld a, b                                          ; $6d4d: $78
	jr nc, jr_05b_6dc4                               ; $6d4e: $30 $74

	dec l                                            ; $6d50: $2d
	ld a, [hl]                                       ; $6d51: $7e
	dec b                                            ; $6d52: $05
	add b                                            ; $6d53: $80
	ei                                               ; $6d54: $fb
	ret nz                                           ; $6d55: $c0

	ld b, b                                          ; $6d56: $40
	dec [hl]                                         ; $6d57: $35
	adc a                                            ; $6d58: $8f
	adc l                                            ; $6d59: $8d
	ld d, h                                          ; $6d5a: $54
	ld a, [de]                                       ; $6d5b: $1a
	inc a                                            ; $6d5c: $3c
	ld h, c                                          ; $6d5d: $61
	add c                                            ; $6d5e: $81
	ld c, $fe                                        ; $6d5f: $0e $fe
	cp $ab                                           ; $6d61: $fe $ab
	ld b, c                                          ; $6d63: $41
	ld [hl], b                                       ; $6d64: $70
	jr nc, jr_05b_6d1f                               ; $6d65: $30 $b8

	or h                                             ; $6d67: $b4
	or [hl]                                          ; $6d68: $b6
	or b                                             ; $6d69: $b0
	sub c                                            ; $6d6a: $91
	sub a                                            ; $6d6b: $97
	rst $38                                          ; $6d6c: $ff
	ld a, a                                          ; $6d6d: $7f
	cp a                                             ; $6d6e: $bf
	ld a, a                                          ; $6d6f: $7f
	ld [hl], a                                       ; $6d70: $77
	ld [hl], a                                       ; $6d71: $77
	sub [hl]                                         ; $6d72: $96
	sbc d                                            ; $6d73: $9a
	sub b                                            ; $6d74: $90
	dec de                                           ; $6d75: $1b
	dec de                                           ; $6d76: $1b
	dec sp                                           ; $6d77: $3b
	dec sp                                           ; $6d78: $3b
	halt                                             ; $6d79: $76
	sub e                                            ; $6d7a: $93
	rst SubAFromDE                                          ; $6d7b: $df
	rst AddAOntoHL                                          ; $6d7c: $ef
	rst SubAFromDE                                          ; $6d7d: $df
	rst GetHLinHL                                          ; $6d7e: $cf
	sbc d                                            ; $6d7f: $9a
	adc a                                            ; $6d80: $8f
	rlca                                             ; $6d81: $07

jr_05b_6d82:
	dec b                                            ; $6d82: $05
	dec b                                            ; $6d83: $05
	ld [hl], d                                       ; $6d84: $72

jr_05b_6d85:
	db $db                                           ; $6d85: $db
	ld h, d                                          ; $6d86: $62
	sbc l                                            ; $6d87: $9d
	ld h, e                                          ; $6d88: $63
	rrca                                             ; $6d89: $0f
	db $db                                           ; $6d8a: $db
	rra                                              ; $6d8b: $1f
	sbc e                                            ; $6d8c: $9b
	ld e, $b0                                        ; $6d8d: $1e $b0
	ld [hl], b                                       ; $6d8f: $70
	ld a, b                                          ; $6d90: $78
	ld a, c                                          ; $6d91: $79
	sub a                                            ; $6d92: $97
	sbc c                                            ; $6d93: $99
	jr c, jr_05b_6db2                                ; $6d94: $38 $1c

	rst SubAFromDE                                          ; $6d96: $df
	rst SubAFromDE                                          ; $6d97: $df
	rst GetHLinHL                                          ; $6d98: $cf
	rst GetHLinHL                                          ; $6d99: $cf
	sbc $ef                                          ; $6d9a: $de $ef
	sbc e                                            ; $6d9c: $9b
	rst FarCall                                          ; $6d9d: $f7
	add hl, bc                                       ; $6d9e: $09
	inc b                                            ; $6d9f: $04
	inc b                                            ; $6da0: $04
	ld [hl], h                                       ; $6da1: $74
	ld e, l                                          ; $6da2: $5d
	ret c                                            ; $6da3: $d8

	rst $38                                          ; $6da4: $ff
	sub [hl]                                         ; $6da5: $96
	rlca                                             ; $6da6: $07
	add a                                            ; $6da7: $87
	add e                                            ; $6da8: $83
	ld b, c                                          ; $6da9: $41
	ld b, b                                          ; $6daa: $40
	and b                                            ; $6dab: $a0
	ld d, b                                          ; $6dac: $50
	add sp, -$04                                     ; $6dad: $e8 $fc
	ld l, l                                          ; $6daf: $6d
	adc c                                            ; $6db0: $89
	adc a                                            ; $6db1: $8f

jr_05b_6db2:
	rst $38                                          ; $6db2: $ff
	push af                                          ; $6db3: $f5
	ld a, [$fcf9]                                    ; $6db4: $fa $f9 $fc
	db $fc                                           ; $6db7: $fc
	ld a, [hl]                                       ; $6db8: $7e
	ld a, $19                                        ; $6db9: $3e $19
	ld e, $0f                                        ; $6dbb: $1e $0f
	rrca                                             ; $6dbd: $0f
	adc a                                            ; $6dbe: $8f
	rst JumpTable                                          ; $6dbf: $c7
	rst JumpTable                                          ; $6dc0: $c7
	db $e3                                           ; $6dc1: $e3
	ld a, d                                          ; $6dc2: $7a
	ld c, b                                          ; $6dc3: $48

jr_05b_6dc4:
	ld a, a                                          ; $6dc4: $7f
	sub a                                            ; $6dc5: $97
	sbc e                                            ; $6dc6: $9b
	ld e, a                                          ; $6dc7: $5f
	cpl                                              ; $6dc8: $2f
	rla                                              ; $6dc9: $17
	dec bc                                           ; $6dca: $0b
	ld [hl], b                                       ; $6dcb: $70
	dec hl                                           ; $6dcc: $2b
	ld a, c                                          ; $6dcd: $79
	ld h, e                                          ; $6dce: $63
	sbc $e6                                          ; $6dcf: $de $e6
	sbc d                                            ; $6dd1: $9a
	or $f4                                           ; $6dd2: $f6 $f4
	db $f4                                           ; $6dd4: $f4
	db $fc                                           ; $6dd5: $fc
	db $fc                                           ; $6dd6: $fc
	sbc $3d                                          ; $6dd7: $de $3d
	sbc c                                            ; $6dd9: $99
	dec e                                            ; $6dda: $1d
	rra                                              ; $6ddb: $1f
	rra                                              ; $6ddc: $1f
	rrca                                             ; $6ddd: $0f
	rrca                                             ; $6dde: $0f
	ld b, h                                          ; $6ddf: $44
	db $dd                                           ; $6de0: $dd
	ld c, h                                          ; $6de1: $4c
	rst SubAFromDE                                          ; $6de2: $df
	ld c, d                                          ; $6de3: $4a
	sbc [hl]                                         ; $6de4: $9e
	ld b, [hl]                                       ; $6de5: $46
	sbc $93                                          ; $6de6: $de $93
	rst SubAFromDE                                          ; $6de8: $df
	sub d                                            ; $6de9: $92
	rst SubAFromDE                                          ; $6dea: $df
	sub h                                            ; $6deb: $94
	sbc [hl]                                         ; $6dec: $9e
	sbc b                                            ; $6ded: $98
	ld [hl], a                                       ; $6dee: $77
	add hl, bc                                       ; $6def: $09
	ld a, a                                          ; $6df0: $7f
	and b                                            ; $6df1: $a0
	ld a, c                                          ; $6df2: $79
	ld [hl], $df                                     ; $6df3: $36 $df
	inc bc                                           ; $6df5: $03
	sbc $02                                          ; $6df6: $de $02
	rst $38                                          ; $6df8: $ff
	sbc h                                            ; $6df9: $9c
	ld [hl], b                                       ; $6dfa: $70
	ld h, b                                          ; $6dfb: $60
	ret nz                                           ; $6dfc: $c0

	ld [hl], c                                       ; $6dfd: $71
	or a                                             ; $6dfe: $b7
	ld a, c                                          ; $6dff: $79
	push bc                                          ; $6e00: $c5
	ld a, l                                          ; $6e01: $7d
	push hl                                          ; $6e02: $e5
	ld a, e                                          ; $6e03: $7b
	or $df                                           ; $6e04: $f6 $df
	add $9c                                          ; $6e06: $c6 $9c
	jp nz, $c3c3                                     ; $6e08: $c2 $c3 $c3

	sbc $c1                                          ; $6e0b: $de $c1
	rst SubAFromDE                                          ; $6e0d: $df
	add hl, hl                                       ; $6e0e: $29
	sbc [hl]                                         ; $6e0f: $9e
	dec h                                            ; $6e10: $25
	ld [hl], c                                       ; $6e11: $71
	ld d, b                                          ; $6e12: $50
	sbc h                                            ; $6e13: $9c
	db $d3                                           ; $6e14: $d3
	rst SubAFromBC                                          ; $6e15: $e7
	rst SubAFromBC                                          ; $6e16: $e7
	ld a, d                                          ; $6e17: $7a
	ld sp, hl                                        ; $6e18: $f9
	sbc l                                            ; $6e19: $9d
	adc a                                            ; $6e1a: $8f
	sbc a                                            ; $6e1b: $9f
	ld a, e                                          ; $6e1c: $7b
	ld [de], a                                       ; $6e1d: $12
	sbc $80                                          ; $6e1e: $de $80
	rst SubAFromDE                                          ; $6e20: $df
	ld b, b                                          ; $6e21: $40
	rst SubAFromDE                                          ; $6e22: $df
	di                                               ; $6e23: $f3
	rst SubAFromDE                                          ; $6e24: $df
	and $87                                          ; $6e25: $e6 $87
	call nz, $88c8                                   ; $6e27: $c4 $c8 $88
	add b                                            ; $6e2a: $80
	inc c                                            ; $6e2b: $0c
	inc c                                            ; $6e2c: $0c
	add hl, de                                       ; $6e2d: $19
	add hl, de                                       ; $6e2e: $19
	dec sp                                           ; $6e2f: $3b
	scf                                              ; $6e30: $37
	ld [hl], a                                       ; $6e31: $77
	ld a, a                                          ; $6e32: $7f
	adc b                                            ; $6e33: $88
	nop                                              ; $6e34: $00
	stop                                             ; $6e35: $10 $00
	jr nz, jr_05b_6e39                               ; $6e37: $20 $00

jr_05b_6e39:
	ld b, b                                          ; $6e39: $40
	nop                                              ; $6e3a: $00
	ld [hl], b                                       ; $6e3b: $70
	ldh a, [$e0]                                     ; $6e3c: $f0 $e0
	ldh [$74], a                                     ; $6e3e: $e0 $74
	xor [hl]                                         ; $6e40: $ae
	rst SubAFromDE                                          ; $6e41: $df
	and a                                            ; $6e42: $a7
	sub l                                            ; $6e43: $95
	add a                                            ; $6e44: $87
	adc l                                            ; $6e45: $8d
	adc h                                            ; $6e46: $8c
	adc h                                            ; $6e47: $8c
	adc [hl]                                         ; $6e48: $8e
	adc a                                            ; $6e49: $8f
	call c, $fddd                                    ; $6e4a: $dc $dd $fd
	db $fd                                           ; $6e4d: $fd
	sbc $fc                                          ; $6e4e: $de $fc
	add b                                            ; $6e50: $80
	ld a, [$ecac]                                    ; $6e51: $fa $ac $ec
	ld l, h                                          ; $6e54: $6c
	ld h, h                                          ; $6e55: $64
	and h                                            ; $6e56: $a4
	ld h, h                                          ; $6e57: $64
	inc [hl]                                         ; $6e58: $34
	jr nc, @-$06                                     ; $6e59: $30 $f8

	ld e, b                                          ; $6e5b: $58
	ld a, b                                          ; $6e5c: $78
	cp h                                             ; $6e5d: $bc
	db $fc                                           ; $6e5e: $fc
	ld a, h                                          ; $6e5f: $7c
	inc e                                            ; $6e60: $1c
	inc e                                            ; $6e61: $1c
	rra                                              ; $6e62: $1f
	ld c, $57                                        ; $6e63: $0e $57
	and c                                            ; $6e65: $a1
	ld d, b                                          ; $6e66: $50
	ld a, [hl+]                                      ; $6e67: $2a
	dec d                                            ; $6e68: $15
	ld a, [bc]                                       ; $6e69: $0a
	inc bc                                           ; $6e6a: $03
	ld bc, $5ea8                                     ; $6e6b: $01 $a8 $5e
	cpl                                              ; $6e6e: $2f
	dec d                                            ; $6e6f: $15
	ld a, a                                          ; $6e70: $7f
	rst FarCall                                          ; $6e71: $f7
	adc l                                            ; $6e72: $8d
	add hl, de                                       ; $6e73: $19
	ldh [$bd], a                                     ; $6e74: $e0 $bd
	pop af                                           ; $6e76: $f1
	ld a, a                                          ; $6e77: $7f
	rra                                              ; $6e78: $1f
	rlca                                             ; $6e79: $07
	cp a                                             ; $6e7a: $bf
	and e                                            ; $6e7b: $a3
	call c, $0e7e                                    ; $6e7c: $dc $7e $0e
	add b                                            ; $6e7f: $80
	ldh [$f8], a                                     ; $6e80: $e0 $f8
	ld b, b                                          ; $6e82: $40
	sub a                                            ; $6e83: $97
	rra                                              ; $6e84: $1f
	db $db                                           ; $6e85: $db
	rst $38                                          ; $6e86: $ff
	rst SubAFromDE                                          ; $6e87: $df
	db $10                                           ; $6e88: $10
	sbc [hl]                                         ; $6e89: $9e
	ld [$d9fc], sp                                   ; $6e8a: $08 $fc $d9
	rst $38                                          ; $6e8d: $ff
	rst SubAFromDE                                          ; $6e8e: $df
	dec b                                            ; $6e8f: $05
	sbc $04                                          ; $6e90: $de $04
	cp $db                                           ; $6e92: $fe $db
	jp $c1df                                         ; $6e94: $c3 $df $c1


	rst SubAFromDE                                          ; $6e97: $df
	ld a, $dd                                        ; $6e98: $3e $dd
	cp [hl]                                          ; $6e9a: $be
	ld a, [hl]                                       ; $6e9b: $7e
	sbc h                                            ; $6e9c: $9c
	sbc d                                            ; $6e9d: $9a
	rra                                              ; $6e9e: $1f
	adc a                                            ; $6e9f: $8f
	sbc [hl]                                         ; $6ea0: $9e
	rst SubAFromDE                                          ; $6ea1: $df
	and $de                                          ; $6ea2: $e6 $de
	ldh [$9a], a                                     ; $6ea4: $e0 $9a
	db $f4                                           ; $6ea6: $f4
	ld a, e                                          ; $6ea7: $7b
	ld a, e                                          ; $6ea8: $7b
	inc a                                            ; $6ea9: $3c
	ld [de], a                                       ; $6eaa: $12
	ld a, e                                          ; $6eab: $7b
	jr nc, @-$20                                     ; $6eac: $30 $de

	rst $38                                          ; $6eae: $ff
	add b                                            ; $6eaf: $80
	xor d                                            ; $6eb0: $aa
	ld h, e                                          ; $6eb1: $63
	call nc, $5ab8                                   ; $6eb2: $d4 $b8 $5a
	nop                                              ; $6eb5: $00
	rst $38                                          ; $6eb6: $ff
	rra                                              ; $6eb7: $1f
	ld [hl], a                                       ; $6eb8: $77
	pop bc                                           ; $6eb9: $c1
	adc e                                            ; $6eba: $8b
	rra                                              ; $6ebb: $1f
	cp h                                             ; $6ebc: $bc
	ret c                                            ; $6ebd: $d8

	call z, $defc                                    ; $6ebe: $cc $fc $de
	ld l, a                                          ; $6ec1: $6f
	or $1f                                           ; $6ec2: $f6 $1f
	adc e                                            ; $6ec4: $8b
	ccf                                              ; $6ec5: $3f
	rst $38                                          ; $6ec6: $ff
	rst $38                                          ; $6ec7: $ff
	ccf                                              ; $6ec8: $3f
	sbc a                                            ; $6ec9: $9f
	adc a                                            ; $6eca: $8f
	add a                                            ; $6ecb: $87
	rlca                                             ; $6ecc: $07
	rrca                                             ; $6ecd: $0f
	dec b                                            ; $6ece: $05
	ld a, d                                          ; $6ecf: $7a
	and c                                            ; $6ed0: $a1
	sbc e                                            ; $6ed1: $9b
	add b                                            ; $6ed2: $80
	ld d, b                                          ; $6ed3: $50
	ldh [$f8], a                                     ; $6ed4: $e0 $f8
	ld l, [hl]                                       ; $6ed6: $6e
	or c                                             ; $6ed7: $b1
	add b                                            ; $6ed8: $80
	rst $38                                          ; $6ed9: $ff
	call z, Call_05b_7dde                            ; $6eda: $cc $de $7d
	dec l                                            ; $6edd: $2d
	sbc l                                            ; $6ede: $9d
	add $b2                                          ; $6edf: $c6 $b2
	cp c                                             ; $6ee1: $b9
	or a                                             ; $6ee2: $b7
	ld h, e                                          ; $6ee3: $63
	db $e3                                           ; $6ee4: $e3
	ldh a, [c]                                       ; $6ee5: $f2
	ld a, [$bfff]                                    ; $6ee6: $fa $ff $bf
	adc a                                            ; $6ee9: $8f
	ld a, h                                          ; $6eea: $7c
	ld e, $86                                        ; $6eeb: $1e $86
	ld b, e                                          ; $6eed: $43
	and c                                            ; $6eee: $a1
	pop af                                           ; $6eef: $f1
	ld l, b                                          ; $6ef0: $68
	xor h                                            ; $6ef1: $ac
	add a                                            ; $6ef2: $87
	rst SubAFromBC                                          ; $6ef3: $e7
	ei                                               ; $6ef4: $fb
	rst $38                                          ; $6ef5: $ff
	ld a, a                                          ; $6ef6: $7f
	ccf                                              ; $6ef7: $3f
	adc l                                            ; $6ef8: $8d
	sbc a                                            ; $6ef9: $9f
	ld e, a                                          ; $6efa: $5f
	ld b, h                                          ; $6efb: $44
	ld h, b                                          ; $6efc: $60
	ld l, b                                          ; $6efd: $68
	ld l, b                                          ; $6efe: $68
	ld d, b                                          ; $6eff: $50
	ld b, b                                          ; $6f00: $40
	and b                                            ; $6f01: $a0
	ld b, b                                          ; $6f02: $40
	sbc b                                            ; $6f03: $98
	sbc b                                            ; $6f04: $98
	sub b                                            ; $6f05: $90
	sub b                                            ; $6f06: $90
	and b                                            ; $6f07: $a0
	and b                                            ; $6f08: $a0
	ret nz                                           ; $6f09: $c0

	ret nz                                           ; $6f0a: $c0

	ld a, e                                          ; $6f0b: $7b
	sbc l                                            ; $6f0c: $9d
	db $e4                                           ; $6f0d: $e4
	db $db                                           ; $6f0e: $db
	ret nz                                           ; $6f0f: $c0

	rst SubAFromDE                                          ; $6f10: $df
	ld b, b                                          ; $6f11: $40
	rst SubAFromDE                                          ; $6f12: $df
	ld hl, $20db                                     ; $6f13: $21 $db $20
	rst SubAFromDE                                          ; $6f16: $df
	rst SubAFromDE                                          ; $6f17: $df
	sbc c                                            ; $6f18: $99
	ld e, a                                          ; $6f19: $5f
	ld e, [hl]                                       ; $6f1a: $5e
	ld e, $1e                                        ; $6f1b: $1e $1e
	inc e                                            ; $6f1d: $1c
	inc e                                            ; $6f1e: $1c
	ld a, d                                          ; $6f1f: $7a
	pop bc                                           ; $6f20: $c1
	sbc e                                            ; $6f21: $9b
	add c                                            ; $6f22: $81
	ld b, c                                          ; $6f23: $41
	ld bc, $7503                                     ; $6f24: $01 $03 $75
	ld d, b                                          ; $6f27: $50
	ld a, [hl]                                       ; $6f28: $7e
	add d                                            ; $6f29: $82
	sbc l                                            ; $6f2a: $9d
	nop                                              ; $6f2b: $00
	inc b                                            ; $6f2c: $04
	ld a, e                                          ; $6f2d: $7b
	ld e, b                                          ; $6f2e: $58
	rst SubAFromDE                                          ; $6f2f: $df
	cp $df                                           ; $6f30: $fe $df
	db $fc                                           ; $6f32: $fc
	rst SubAFromDE                                          ; $6f33: $df
	ld hl, sp+$78                                    ; $6f34: $f8 $78
	ld e, b                                          ; $6f36: $58
	call c, $f901                                    ; $6f37: $dc $01 $f9
	sbc [hl]                                         ; $6f3a: $9e
	adc a                                            ; $6f3b: $8f
	sbc $88                                          ; $6f3c: $de $88
	sbc $4a                                          ; $6f3e: $de $4a
	sbc l                                            ; $6f40: $9d
	ld a, [hl+]                                      ; $6f41: $2a
	ld sp, hl                                        ; $6f42: $f9
	jp c, $9bf8                                      ; $6f43: $da $f8 $9b

	ld l, d                                          ; $6f46: $6a
	db $fd                                           ; $6f47: $fd
	ld a, $3d                                        ; $6f48: $3e $3d
	db $dd                                           ; $6f4a: $dd
	inc a                                            ; $6f4b: $3c
	sbc e                                            ; $6f4c: $9b
	adc h                                            ; $6f4d: $8c
	adc $0f                                          ; $6f4e: $ce $0f
	dec c                                            ; $6f50: $0d
	db $dd                                           ; $6f51: $dd
	inc c                                            ; $6f52: $0c
	rst SubAFromDE                                          ; $6f53: $df
	rrca                                             ; $6f54: $0f
	sbc c                                            ; $6f55: $99
	rst AddAOntoHL                                          ; $6f56: $ef
	ld a, a                                          ; $6f57: $7f
	rst GetHLinHL                                          ; $6f58: $cf
	inc a                                            ; $6f59: $3c
	rlca                                             ; $6f5a: $07
	rlca                                             ; $6f5b: $07
	cp $9c                                           ; $6f5c: $fe $9c
	add b                                            ; $6f5e: $80
	ldh a, [$3f]                                     ; $6f5f: $f0 $3f
	ld h, [hl]                                       ; $6f61: $66
	ldh [$9d], a                                     ; $6f62: $e0 $9d
	rlca                                             ; $6f64: $07
	ei                                               ; $6f65: $fb
	ei                                               ; $6f66: $fb
	sbc l                                            ; $6f67: $9d
	ld hl, sp+$04                                    ; $6f68: $f8 $04
	db $db                                           ; $6f6a: $db
	rst $38                                          ; $6f6b: $ff
	ld a, a                                          ; $6f6c: $7f
	and l                                            ; $6f6d: $a5
	ld sp, hl                                        ; $6f6e: $f9
	rst SubAFromDE                                          ; $6f6f: $df
	rst SubAFromBC                                          ; $6f70: $e7
	sbc h                                            ; $6f71: $9c
	rst SubAFromHL                                          ; $6f72: $d7
	rst JumpTable                                          ; $6f73: $c7
	rst JumpTable                                          ; $6f74: $c7
	sbc $03                                          ; $6f75: $de $03
	rst SubAFromDE                                          ; $6f77: $df
	db $10                                           ; $6f78: $10
	sbc $20                                          ; $6f79: $de $20
	rst SubAFromDE                                          ; $6f7b: $df
	ld b, b                                          ; $6f7c: $40
	sbc [hl]                                         ; $6f7d: $9e
	add b                                            ; $6f7e: $80

jr_05b_6f7f:
	sbc $c1                                          ; $6f7f: $de $c1
	sbc l                                            ; $6f81: $9d
	pop hl                                           ; $6f82: $e1
	ldh [$de], a                                     ; $6f83: $e0 $de
	ldh a, [$df]                                     ; $6f85: $f0 $df
	ld a, a                                          ; $6f87: $7f
	sbc $3f                                          ; $6f88: $de $3f
	sbc $1f                                          ; $6f8a: $de $1f
	rst SubAFromDE                                          ; $6f8c: $df
	ldh a, [$7d]                                     ; $6f8d: $f0 $7d
	call z, $fe9b                                    ; $6f8f: $cc $9b $fe
	rst GetHLinHL                                          ; $6f92: $cf
	ldh [$f0], a                                     ; $6f93: $e0 $f0
	cp $82                                           ; $6f95: $fe $82
	ld [bc], a                                       ; $6f97: $02
	add c                                            ; $6f98: $81
	or b                                             ; $6f99: $b0
	sbc a                                            ; $6f9a: $9f
	adc a                                            ; $6f9b: $8f
	db $d3                                           ; $6f9c: $d3
	db $e4                                           ; $6f9d: $e4
	jp $d87a                                         ; $6f9e: $c3 $7a $d8


	cp h                                             ; $6fa1: $bc

jr_05b_6fa2:
	rst $38                                          ; $6fa2: $ff
	rra                                              ; $6fa3: $1f
	cp h                                             ; $6fa4: $bc
	add e                                            ; $6fa5: $83
	ld b, c                                          ; $6fa6: $41
	inc e                                            ; $6fa7: $1c
	ldh [$7f], a                                     ; $6fa8: $e0 $7f
	nop                                              ; $6faa: $00
	ldh [rTAC], a                                    ; $6fab: $e0 $07
	add e                                            ; $6fad: $83
	rlca                                             ; $6fae: $07
	add hl, bc                                       ; $6faf: $09
	rra                                              ; $6fb0: $1f
	ld a, a                                          ; $6fb1: $7f
	add b                                            ; $6fb2: $80
	add b                                            ; $6fb3: $80
	ld a, b                                          ; $6fb4: $78
	sub l                                            ; $6fb5: $95
	sbc l                                            ; $6fb6: $9d
	ld b, $00                                        ; $6fb7: $06 $00
	ld a, c                                          ; $6fb9: $79
	ldh [$8a], a                                     ; $6fba: $e0 $8a
	add c                                            ; $6fbc: $81
	pop af                                           ; $6fbd: $f1
	ld b, d                                          ; $6fbe: $42
	and $e4                                          ; $6fbf: $e6 $e4
	db $fc                                           ; $6fc1: $fc
	ld sp, hl                                        ; $6fc2: $f9
	inc sp                                           ; $6fc3: $33
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	cp [hl]                                          ; $6fc6: $be
	inc e                                            ; $6fc7: $1c
	inc e                                            ; $6fc8: $1c
	ld [$2110], sp                                   ; $6fc9: $08 $10 $21
	daa                                              ; $6fcc: $27
	cpl                                              ; $6fcd: $2f
	ld b, l                                          ; $6fce: $45
	ld d, h                                          ; $6fcf: $54
	inc d                                            ; $6fd0: $14
	ld a, d                                          ; $6fd1: $7a
	inc d                                            ; $6fd2: $14
	add b                                            ; $6fd3: $80
	inc e                                            ; $6fd4: $1c
	ld e, $3f                                        ; $6fd5: $1e $3f
	cpl                                              ; $6fd7: $2f
	ld l, a                                          ; $6fd8: $6f
	ld h, [hl]                                       ; $6fd9: $66
	cp $8e                                           ; $6fda: $fe $8e
	xor [hl]                                         ; $6fdc: $ae
	rst GetHLinHL                                          ; $6fdd: $cf
	adc $ef                                          ; $6fde: $ce $ef
	ld a, l                                          ; $6fe0: $7d
	ld a, a                                          ; $6fe1: $7f
	cp [hl]                                          ; $6fe2: $be
	rst FarCall                                          ; $6fe3: $f7
	rst SubAFromHL                                          ; $6fe4: $d7
	ld [hl], e                                       ; $6fe5: $73
	ld [hl], e                                       ; $6fe6: $73
	or d                                             ; $6fe7: $b2
	or $dc                                           ; $6fe8: $f6 $dc
	call z, Call_05b_408c                            ; $6fea: $cc $8c $40
	jr nz, jr_05b_6f7f                               ; $6fed: $20 $90

	ret nc                                           ; $6fef: $d0

	cp b                                             ; $6ff0: $b8
	inc e                                            ; $6ff1: $1c
	ld c, $9e                                        ; $6ff2: $0e $9e
	inc bc                                           ; $6ff4: $03
	ld a, c                                          ; $6ff5: $79
	ld h, e                                          ; $6ff6: $63
	sbc e                                            ; $6ff7: $9b
	ld [hl], b                                       ; $6ff8: $70
	jr c, jr_05b_7007                                ; $6ff9: $38 $0c

	ld b, $7b                                        ; $6ffb: $06 $7b
	nop                                              ; $6ffd: $00
	db $e3                                           ; $6ffe: $e3
	rst SubAFromDE                                          ; $6fff: $df
	ld h, b                                          ; $7000: $60
	rst SubAFromDE                                          ; $7001: $df
	jr nz, jr_05b_6fa2                               ; $7002: $20 $9e

	jr nc, jr_05b_7080                               ; $7004: $30 $7a

	inc bc                                           ; $7006: $03

jr_05b_7007:
	db $dd                                           ; $7007: $dd
	db $10                                           ; $7008: $10
	sbc $08                                          ; $7009: $de $08
	sbc [hl]                                         ; $700b: $9e
	inc b                                            ; $700c: $04
	db $db                                           ; $700d: $db
	inc e                                            ; $700e: $1c
	rst SubAFromDE                                          ; $700f: $df
	inc c                                            ; $7010: $0c
	reti                                             ; $7011: $d9


	inc bc                                           ; $7012: $03
	ld a, c                                          ; $7013: $79
	ld [$10df], a                                    ; $7014: $ea $df $10
	sbc h                                            ; $7017: $9c
	jr jr_05b_7042                                   ; $7018: $18 $28

	inc c                                            ; $701a: $0c
	sbc $f0                                          ; $701b: $de $f0
	sbc $e0                                          ; $701d: $de $e0
	rst SubAFromDE                                          ; $701f: $df
	ret nc                                           ; $7020: $d0

	sbc $01                                          ; $7021: $de $01
	ld a, c                                          ; $7023: $79
	scf                                              ; $7024: $37
	sbc [hl]                                         ; $7025: $9e
	ld b, $75                                        ; $7026: $06 $75
	push hl                                          ; $7028: $e5
	halt                                             ; $7029: $76
	or [hl]                                          ; $702a: $b6
	adc [hl]                                         ; $702b: $8e
	ld [bc], a                                       ; $702c: $02
	inc l                                            ; $702d: $2c
	dec [hl]                                         ; $702e: $35
	dec e                                            ; $702f: $1d
	ld l, $4e                                        ; $7030: $2e $4e
	ld d, $27                                        ; $7032: $16 $27
	dec bc                                           ; $7034: $0b
	ld hl, sp-$24                                    ; $7035: $f8 $dc
	call c, $24cc                                    ; $7037: $dc $cc $24
	ld h, $13                                        ; $703a: $26 $13
	ld de, $3cde                                     ; $703c: $11 $de $3c
	sbc d                                            ; $703f: $9a
	ld a, [hl]                                       ; $7040: $7e
	db $fc                                           ; $7041: $fc

jr_05b_7042:
	jp nc, $be93                                     ; $7042: $d2 $93 $be

	db $dd                                           ; $7045: $dd
	inc c                                            ; $7046: $0c
	sbc e                                            ; $7047: $9b
	ld c, $1e                                        ; $7048: $0e $1e
	ld a, [de]                                       ; $704a: $1a
	inc hl                                           ; $704b: $23
	call c, $de07                                    ; $704c: $dc $07 $de
	inc bc                                           ; $704f: $03
	ld sp, hl                                        ; $7050: $f9
	reti                                             ; $7051: $d9


	rst $38                                          ; $7052: $ff
	ld sp, hl                                        ; $7053: $f9
	sbc l                                            ; $7054: $9d
	ld hl, sp-$07                                    ; $7055: $f8 $f9
	ld [hl], h                                       ; $7057: $74
	sub a                                            ; $7058: $97
	ld a, [hl]                                       ; $7059: $7e
	ld h, a                                          ; $705a: $67
	ld [hl], b                                       ; $705b: $70
	reti                                             ; $705c: $d9


	sub a                                            ; $705d: $97
	nop                                              ; $705e: $00
	inc bc                                           ; $705f: $03
	rlca                                             ; $7060: $07
	inc bc                                           ; $7061: $03
	add e                                            ; $7062: $83
	jp $4fa3                                         ; $7063: $c3 $a3 $4f


	ld a, c                                          ; $7066: $79
	call nz, $a278                                   ; $7067: $c4 $78 $a2
	ld [hl], h                                       ; $706a: $74
	rst SubAFromHL                                          ; $706b: $d7
	sbc h                                            ; $706c: $9c
	ret nz                                           ; $706d: $c0

	ld hl, sp-$08                                    ; $706e: $f8 $f8
	ld a, b                                          ; $7070: $78
	halt                                             ; $7071: $76
	ld a, e                                          ; $7072: $7b
	sbc $df                                          ; $7073: $de $df
	rrca                                             ; $7075: $0f
	ld [hl], a                                       ; $7076: $77
	cp c                                             ; $7077: $b9
	rst SubAFromDE                                          ; $7078: $df
	ld bc, $fa9c                                     ; $7079: $01 $9c $fa
	ld [hl], l                                       ; $707c: $75
	ld a, [hl]                                       ; $707d: $7e
	sbc $7f                                          ; $707e: $de $7f

jr_05b_7080:
	rst SubAFromDE                                          ; $7080: $df
	ccf                                              ; $7081: $3f
	sbc h                                            ; $7082: $9c
	add l                                            ; $7083: $85
	jp z, $dec1                                      ; $7084: $ca $c1 $de

	ret nz                                           ; $7087: $c0

	rst SubAFromDE                                          ; $7088: $df
	ldh [hDisp1_OBP1], a                                     ; $7089: $e0 $94
	add b                                            ; $708b: $80
	ld d, h                                          ; $708c: $54
	cp h                                             ; $708d: $bc
	ld hl, sp-$20                                    ; $708e: $f8 $e0
	pop bc                                           ; $7090: $c1
	add a                                            ; $7091: $87
	jr jr_05b_7113                                   ; $7092: $18 $7f

	xor e                                            ; $7094: $ab
	ld b, b                                          ; $7095: $40
	ld a, e                                          ; $7096: $7b
	cp l                                             ; $7097: $bd
	sub h                                            ; $7098: $94
	ld b, $18                                        ; $7099: $06 $18
	nop                                              ; $709b: $00
	ld bc, $1c07                                     ; $709c: $01 $07 $1c
	ld [hl], b                                       ; $709f: $70
	pop bc                                           ; $70a0: $c1
	ld c, $7d                                        ; $70a1: $0e $7d
	add b                                            ; $70a3: $80
	ld a, e                                          ; $70a4: $7b
	db $f4                                           ; $70a5: $f4
	sub [hl]                                         ; $70a6: $96
	ld h, b                                          ; $70a7: $60
	jp $3e07                                         ; $70a8: $c3 $07 $3e


	ld h, [hl]                                       ; $70ab: $66
	adc e                                            ; $70ac: $8b
	rra                                              ; $70ad: $1f
	dec de                                           ; $70ae: $1b
	ld h, [hl]                                       ; $70af: $66
	sbc $ff                                          ; $70b0: $de $ff
	sbc e                                            ; $70b2: $9b
	ld b, e                                          ; $70b3: $43
	add [hl]                                         ; $70b4: $86
	ld a, [de]                                       ; $70b5: $1a
	ld [hl], $77                                     ; $70b6: $36 $77
	adc d                                            ; $70b8: $8a
	add e                                            ; $70b9: $83
	ei                                               ; $70ba: $fb
	ld sp, hl                                        ; $70bb: $f9
	rst SubAFromDE                                          ; $70bc: $df
	ld a, $ff                                        ; $70bd: $3e $ff
	db $dd                                           ; $70bf: $dd
	cp e                                             ; $70c0: $bb
	cp $0d                                           ; $70c1: $fe $0d
	rra                                              ; $70c3: $1f
	inc sp                                           ; $70c4: $33
	rst SubAFromBC                                          ; $70c5: $e7
	adc $3e                                          ; $70c6: $ce $3e
	ld a, h                                          ; $70c8: $7c
	ld sp, hl                                        ; $70c9: $f9
	rst AddAOntoHL                                          ; $70ca: $ef
	ld l, l                                          ; $70cb: $6d
	ret c                                            ; $70cc: $d8

	sbc b                                            ; $70cd: $98
	or b                                             ; $70ce: $b0
	ld h, b                                          ; $70cf: $60
	ld b, b                                          ; $70d0: $40
	ret nz                                           ; $70d1: $c0

	sub e                                            ; $70d2: $93
	sub c                                            ; $70d3: $91
	jr nz, jr_05b_7136                               ; $70d4: $20 $60

	ld [hl], h                                       ; $70d6: $74
	ld l, a                                          ; $70d7: $6f
	ld h, l                                          ; $70d8: $65
	rst SubAFromBC                                          ; $70d9: $e7
	ld h, c                                          ; $70da: $61
	rst SubAFromDE                                          ; $70db: $df
	ld a, h                                          ; $70dc: $7c
	ld a, h                                          ; $70dd: $7c
	ld a, b                                          ; $70de: $78
	ld [hl], l                                       ; $70df: $75
	ld [hl], e                                       ; $70e0: $73
	ld hl, sp-$1c                                    ; $70e1: $f8 $e4
	ld [hl], d                                       ; $70e3: $72
	rst AddAOntoHL                                          ; $70e4: $ef
	ld [hl], a                                       ; $70e5: $77
	ld hl, sp+$77                                    ; $70e6: $f8 $77
	rst FarCall                                          ; $70e8: $f7
	ld a, c                                          ; $70e9: $79
	ld c, e                                          ; $70ea: $4b
	call c, $de03                                    ; $70eb: $dc $03 $de
	ld bc, $149c                                     ; $70ee: $01 $9c $14
	ld b, $03                                        ; $70f1: $06 $03
	ld [hl], e                                       ; $70f3: $73
	or l                                             ; $70f4: $b5
	rst SubAFromDE                                          ; $70f5: $df
	ret z                                            ; $70f6: $c8

	sbc l                                            ; $70f7: $9d
	call nz, $77c2                                   ; $70f8: $c4 $c2 $77
	ld c, [hl]                                       ; $70fb: $4e
	adc h                                            ; $70fc: $8c
	inc c                                            ; $70fd: $0c
	ld [$9010], sp                                   ; $70fe: $08 $10 $90
	ldh [rLCDC], a                                   ; $7101: $e0 $40
	db $10                                           ; $7103: $10
	ld e, b                                          ; $7104: $58
	ld [bc], a                                       ; $7105: $02
	inc b                                            ; $7106: $04
	ld [$1008], sp                                   ; $7107: $08 $08 $10
	and b                                            ; $710a: $a0
	ld h, b                                          ; $710b: $60
	jr nz, @+$17                                     ; $710c: $20 $15

	add hl, bc                                       ; $710e: $09
	dec b                                            ; $710f: $05
	ld a, e                                          ; $7110: $7b
	ldh [$7f], a                                     ; $7111: $e0 $7f

jr_05b_7113:
	res 3, [hl]                                      ; $7113: $cb $9e
	add hl, bc                                       ; $7115: $09
	ld a, e                                          ; $7116: $7b
	ret z                                            ; $7117: $c8

	ld a, [hl]                                       ; $7118: $7e
	or d                                             ; $7119: $b2
	ld a, a                                          ; $711a: $7f
	ld [$ab80], a                                    ; $711b: $ea $80 $ab
	jp hl                                            ; $711e: $e9


	ld l, e                                          ; $711f: $6b
	dec l                                            ; $7120: $2d
	dec e                                            ; $7121: $1d
	ld c, $06                                        ; $7122: $0e $06
	inc bc                                           ; $7124: $03
	and l                                            ; $7125: $a5
	push bc                                          ; $7126: $c5
	ld b, h                                          ; $7127: $44
	and d                                            ; $7128: $a2
	ld [de], a                                       ; $7129: $12
	add hl, bc                                       ; $712a: $09
	dec b                                            ; $712b: $05
	nop                                              ; $712c: $00
	add e                                            ; $712d: $83
	inc bc                                           ; $712e: $03
	pop bc                                           ; $712f: $c1
	add c                                            ; $7130: $81
	pop hl                                           ; $7131: $e1
	pop bc                                           ; $7132: $c1
	ld [hl], c                                       ; $7133: $71
	ld l, b                                          ; $7134: $68
	nop                                              ; $7135: $00

jr_05b_7136:
	add b                                            ; $7136: $80
	add b                                            ; $7137: $80
	ret nz                                           ; $7138: $c0

	ld b, b                                          ; $7139: $40
	ld h, b                                          ; $713a: $60
	and b                                            ; $713b: $a0
	sbc [hl]                                         ; $713c: $9e
	or b                                             ; $713d: $b0

jr_05b_713e:
	ld b, [hl]                                       ; $713e: $46
	ret nz                                           ; $713f: $c0

	sub h                                            ; $7140: $94
	or $ff                                           ; $7141: $f6 $ff
	rst SubAFromDE                                          ; $7143: $df
	cp a                                             ; $7144: $bf
	cp a                                             ; $7145: $bf
	db $d3                                           ; $7146: $d3
	ret nc                                           ; $7147: $d0

	db $ed                                           ; $7148: $ed
	inc c                                            ; $7149: $0c
	rra                                              ; $714a: $1f
	ccf                                              ; $714b: $3f
	halt                                             ; $714c: $76
	jp hl                                            ; $714d: $e9


	sbc h                                            ; $714e: $9c
	rra                                              ; $714f: $1f
	rst SubAFromDE                                          ; $7150: $df
	rst SubAFromDE                                          ; $7151: $df
	db $dd                                           ; $7152: $dd
	rst AddAOntoHL                                          ; $7153: $ef
	ld a, a                                          ; $7154: $7f
	db $ec                                           ; $7155: $ec
	sbc [hl]                                         ; $7156: $9e
	ld h, b                                          ; $7157: $60
	ld [hl], l                                       ; $7158: $75
	adc e                                            ; $7159: $8b
	ld a, [hl]                                       ; $715a: $7e
	ld c, l                                          ; $715b: $4d
	sbc [hl]                                         ; $715c: $9e
	ret nz                                           ; $715d: $c0

	ld b, a                                          ; $715e: $47
	ret nc                                           ; $715f: $d0

	add b                                            ; $7160: $80
	cp [hl]                                          ; $7161: $be
	db $dd                                           ; $7162: $dd
	rst SubAFromDE                                          ; $7163: $df
	cp $fd                                           ; $7164: $fe $fd
	ld sp, hl                                        ; $7166: $f9
	ld [$e0cc], a                                    ; $7167: $ea $cc $e0
	ld [hl], b                                       ; $716a: $70
	ld [hl], c                                       ; $716b: $71
	ld [hl], $1c                                     ; $716c: $36 $1c
	dec sp                                           ; $716e: $3b
	ld a, $6c                                        ; $716f: $3e $6c
	ld h, c                                          ; $7171: $61
	rst JumpTable                                          ; $7172: $c7
	sbc h                                            ; $7173: $9c
	ld [hl], b                                       ; $7174: $70
	pop bc                                           ; $7175: $c1
	inc bc                                           ; $7176: $03
	rlca                                             ; $7177: $07
	dec c                                            ; $7178: $0d
	ld h, b                                          ; $7179: $60
	add e                                            ; $717a: $83
	inc c                                            ; $717b: $0c
	jr nc, jr_05b_713e                               ; $717c: $30 $c0

	ld bc, $8002                                     ; $717e: $01 $02 $80
	ld b, $dd                                        ; $7181: $06 $dd
	ld a, $7f                                        ; $7183: $3e $7f
	cp $fd                                           ; $7185: $fe $fd
	ei                                               ; $7187: $fb
	push af                                          ; $7188: $f5
	ldh a, [c]                                       ; $7189: $f2
	adc $1f                                          ; $718a: $ce $1f
	dec sp                                           ; $718c: $3b
	ld d, c                                          ; $718d: $51
	and d                                            ; $718e: $a2
	ld b, h                                          ; $718f: $44
	ld c, b                                          ; $7190: $48
	adc b                                            ; $7191: $88
	db $fd                                           ; $7192: $fd
	rlca                                             ; $7193: $07
	db $fd                                           ; $7194: $fd
	ei                                               ; $7195: $fb
	rst SubAFromBC                                          ; $7196: $e7
	rst GetHLinHL                                          ; $7197: $cf
	rra                                              ; $7198: $1f
	inc e                                            ; $7199: $1c
	inc bc                                           ; $719a: $03
	cp $fa                                           ; $719b: $fe $fa
	inc b                                            ; $719d: $04
	jr jr_05b_71c1                                   ; $719e: $18 $21

	adc l                                            ; $71a0: $8d
	ld b, e                                          ; $71a1: $43
	add l                                            ; $71a2: $85
	ld [hl], a                                       ; $71a3: $77
	db $fc                                           ; $71a4: $fc
	add sp, -$2f                                     ; $71a5: $e8 $d1
	or b                                             ; $71a7: $b0
	ldh [c], a                                       ; $71a8: $e2
	ld b, [hl]                                       ; $71a9: $46
	call nz, $33b8                                   ; $71aa: $c4 $b8 $33
	ld [hl], l                                       ; $71ad: $75
	ld l, d                                          ; $71ae: $6a
	jp z, $a894                                      ; $71af: $ca $94 $a8

	ld [$687b], sp                                   ; $71b2: $08 $7b $68
	ld l, [hl]                                       ; $71b5: $6e
	pop hl                                           ; $71b6: $e1
	ldh [$cf], a                                     ; $71b7: $e0 $cf
	rst SubAFromDE                                          ; $71b9: $df
	add b                                            ; $71ba: $80
	rst SubAFromDE                                          ; $71bb: $df
	ld b, b                                          ; $71bc: $40
	ld l, [hl]                                       ; $71bd: $6e
	and h                                            ; $71be: $a4
	or $58                                           ; $71bf: $f6 $58

jr_05b_71c1:
	ld h, l                                          ; $71c1: $65
	ld h, a                                          ; $71c2: $67
	rst AddAOntoHL                                          ; $71c3: $ef
	sbc d                                            ; $71c4: $9a
	ld [hl+], a                                      ; $71c5: $22
	ld [bc], a                                       ; $71c6: $02
	add h                                            ; $71c7: $84
	ld [$de14], sp                                   ; $71c8: $08 $14 $de
	ret nz                                           ; $71cb: $c0

	ld a, h                                          ; $71cc: $7c
	or a                                             ; $71cd: $b7
	sbc e                                            ; $71ce: $9b
	ld h, d                                          ; $71cf: $62
	ld h, h                                          ; $71d0: $64
	ld l, b                                          ; $71d1: $68
	adc b                                            ; $71d2: $88
	ld l, [hl]                                       ; $71d3: $6e
	sub a                                            ; $71d4: $97
	sbc e                                            ; $71d5: $9b
	ld bc, $8850                                     ; $71d6: $01 $50 $88
	add h                                            ; $71d9: $84
	ei                                               ; $71da: $fb
	sbc h                                            ; $71db: $9c
	stop                                             ; $71dc: $10 $00
	nop                                              ; $71de: $00
	halt                                             ; $71df: $76
	ld h, [hl]                                       ; $71e0: $66
	ld a, d                                          ; $71e1: $7a
	or d                                             ; $71e2: $b2
	ld a, b                                          ; $71e3: $78
	sub b                                            ; $71e4: $90
	rst SubAFromDE                                          ; $71e5: $df
	add b                                            ; $71e6: $80
	ld l, [hl]                                       ; $71e7: $6e
	sub d                                            ; $71e8: $92
	rst FarCall                                          ; $71e9: $f7
	adc l                                            ; $71ea: $8d
	or b                                             ; $71eb: $b0
	call c, Call_05b_7ed8                            ; $71ec: $dc $d8 $7e
	dec sp                                           ; $71ef: $3b
	dec a                                            ; $71f0: $3d
	dec a                                            ; $71f1: $3d
	ld [hl], $58                                     ; $71f2: $36 $58
	jr c, jr_05b_7232                                ; $71f4: $38 $3c

	inc d                                            ; $71f6: $14
	ld d, $13                                        ; $71f7: $16 $13
	inc de                                           ; $71f9: $13
	ld hl, rIE                                     ; $71fa: $21 $ff $ff
	ld a, d                                          ; $71fd: $7a
	reti                                             ; $71fe: $d9


	sbc h                                            ; $71ff: $9c
	sbc a                                            ; $7200: $9f
	ld e, a                                          ; $7201: $5f
	xor a                                            ; $7202: $af
	ld l, e                                          ; $7203: $6b
	ld a, l                                          ; $7204: $7d
	ld a, l                                          ; $7205: $7d
	cp [hl]                                          ; $7206: $be
	sbc e                                            ; $7207: $9b
	pop af                                           ; $7208: $f1
	rst $38                                          ; $7209: $ff
	jp $dee3                                         ; $720a: $c3 $e3 $de


	rst $38                                          ; $720d: $ff
	sbc d                                            ; $720e: $9a
	rla                                              ; $720f: $17
	ld c, $00                                        ; $7210: $0e $00
	inc a                                            ; $7212: $3c
	inc e                                            ; $7213: $1c
	cp $9e                                           ; $7214: $fe $9e
	ld a, a                                          ; $7216: $7f
	jp c, $67ff                                      ; $7217: $da $ff $67

	jr nc, jr_05b_7290                               ; $721a: $30 $74

	inc hl                                           ; $721c: $23
	sbc e                                            ; $721d: $9b
	db $fd                                           ; $721e: $fd
	rst FarCall                                          ; $721f: $f7
	ld [$7b8e], a                                    ; $7220: $ea $8e $7b
	ld a, b                                          ; $7223: $78
	ld a, h                                          ; $7224: $7c
	ld l, a                                          ; $7225: $6f
	add b                                            ; $7226: $80
	dec b                                            ; $7227: $05
	ld c, $0a                                        ; $7228: $0e $0a
	cp [hl]                                          ; $722a: $be
	ld [hl], b                                       ; $722b: $70
	pop hl                                           ; $722c: $e1
	ret nz                                           ; $722d: $c0

	add d                                            ; $722e: $82
	dec bc                                           ; $722f: $0b
	dec l                                            ; $7230: $2d
	cp a                                             ; $7231: $bf

jr_05b_7232:
	call nc, Call_05b_40a2                           ; $7232: $d4 $a2 $40
	add b                                            ; $7235: $80
	add c                                            ; $7236: $81
	rlca                                             ; $7237: $07
	ld e, $7d                                        ; $7238: $1e $7d
	ld a, [de]                                       ; $723a: $1a
	scf                                              ; $723b: $37
	ld a, c                                          ; $723c: $79
	ld l, e                                          ; $723d: $6b
	or $e4                                           ; $723e: $f6 $e4
	ret z                                            ; $7240: $c8

	and c                                            ; $7241: $a1
	dec c                                            ; $7242: $0d
	add hl, de                                       ; $7243: $19
	inc sp                                           ; $7244: $33
	ldh a, [c]                                       ; $7245: $f2
	add b                                            ; $7246: $80
	db $e3                                           ; $7247: $e3
	rst SubAFromBC                                          ; $7248: $e7
	rst SubAFromBC                                          ; $7249: $e7
	adc $e0                                          ; $724a: $ce $e0
	ret nc                                           ; $724c: $d0

	call nz, Call_05b_5609                           ; $724d: $c4 $09 $56
	inc a                                            ; $7250: $3c
	ldh a, [$e0]                                     ; $7251: $f0 $e0
	sub c                                            ; $7253: $91
	jr nz, jr_05b_7276                               ; $7254: $20 $20

	ret nz                                           ; $7256: $c0

	add c                                            ; $7257: $81
	add d                                            ; $7258: $82
	inc c                                            ; $7259: $0c
	db $10                                           ; $725a: $10
	jr jr_05b_725e                                   ; $725b: $18 $01

	ld b, e                                          ; $725d: $43

jr_05b_725e:
	inc bc                                           ; $725e: $03
	ld b, $06                                        ; $725f: $06 $06
	inc b                                            ; $7261: $04
	inc c                                            ; $7262: $0c
	add hl, bc                                       ; $7263: $09
	ld [bc], a                                       ; $7264: $02
	inc b                                            ; $7265: $04
	ld a, a                                          ; $7266: $7f
	ld a, [hl-]                                      ; $7267: $3a
	ld a, e                                          ; $7268: $7b
	ld e, e                                          ; $7269: $5b
	rst SubAFromDE                                          ; $726a: $df
	adc b                                            ; $726b: $88
	sbc [hl]                                         ; $726c: $9e
	jr @+$7d                                         ; $726d: $18 $7b

	ld d, a                                          ; $726f: $57
	ld a, a                                          ; $7270: $7f
	ld d, [hl]                                       ; $7271: $56
	sbc [hl]                                         ; $7272: $9e
	ld d, b                                          ; $7273: $50
	ld [hl], a                                       ; $7274: $77
	ld d, c                                          ; $7275: $51

jr_05b_7276:
	rst SubAFromDE                                          ; $7276: $df
	ld b, b                                          ; $7277: $40
	ld h, a                                          ; $7278: $67
	sbc c                                            ; $7279: $99
	sbc [hl]                                         ; $727a: $9e
	ld a, a                                          ; $727b: $7f
	ldh a, [c]                                       ; $727c: $f2
	sbc [hl]                                         ; $727d: $9e
	db $fc                                           ; $727e: $fc
	pop hl                                           ; $727f: $e1
	ld a, h                                          ; $7280: $7c
	ld d, e                                          ; $7281: $53
	sbc l                                            ; $7282: $9d
	inc b                                            ; $7283: $04
	ld [bc], a                                       ; $7284: $02
	ld c, e                                          ; $7285: $4b
	dec d                                            ; $7286: $15
	ld [hl], a                                       ; $7287: $77
	ld sp, $b066                                     ; $7288: $31 $66 $b0
	ld e, a                                          ; $728b: $5f
	push hl                                          ; $728c: $e5
	sub e                                            ; $728d: $93

jr_05b_728e:
	ld c, b                                          ; $728e: $48
	ld b, b                                          ; $728f: $40

jr_05b_7290:
	ld h, b                                          ; $7290: $60
	adc b                                            ; $7291: $88
	ld d, b                                          ; $7292: $50
	ld b, b                                          ; $7293: $40
	ld b, b                                          ; $7294: $40
	ld a, b                                          ; $7295: $78
	jr nc, jr_05b_72c8                               ; $7296: $30 $30

	db $10                                           ; $7298: $10
	ld d, b                                          ; $7299: $50
	sbc $88                                          ; $729a: $de $88
	db $fc                                           ; $729c: $fc
	ld a, [hl]                                       ; $729d: $7e
	ld c, d                                          ; $729e: $4a
	sbc [hl]                                         ; $729f: $9e
	db $10                                           ; $72a0: $10
	ld [hl], l                                       ; $72a1: $75
	sub h                                            ; $72a2: $94
	rst SubAFromDE                                          ; $72a3: $df
	inc b                                            ; $72a4: $04
	rst SubAFromDE                                          ; $72a5: $df
	ld [$80e8], sp                                   ; $72a6: $08 $e8 $80
	inc bc                                           ; $72a9: $03
	inc b                                            ; $72aa: $04
	dec b                                            ; $72ab: $05
	ld [$0108], sp                                   ; $72ac: $08 $08 $01
	inc bc                                           ; $72af: $03
	ld l, $2f                                        ; $72b0: $2e $2f
	ld h, a                                          ; $72b2: $67
	rst JumpTable                                          ; $72b3: $c7
	rst JumpTable                                          ; $72b4: $c7
	ld h, a                                          ; $72b5: $67
	ccf                                              ; $72b6: $3f
	dec c                                            ; $72b7: $0d
	ld hl, $c0e0                                     ; $72b8: $21 $e0 $c0
	ret nz                                           ; $72bb: $c0

	add b                                            ; $72bc: $80
	ld b, b                                          ; $72bd: $40
	jr nc, jr_05b_728e                               ; $72be: $30 $ce

	ld e, a                                          ; $72c0: $5f
	cpl                                              ; $72c1: $2f
	rla                                              ; $72c2: $17
	adc e                                            ; $72c3: $8b
	push bc                                          ; $72c4: $c5
	ldh [c], a                                       ; $72c5: $e2
	pop af                                           ; $72c6: $f1
	db $fc                                           ; $72c7: $fc

jr_05b_72c8:
	ld a, l                                          ; $72c8: $7d
	and c                                            ; $72c9: $a1
	sbc c                                            ; $72ca: $99
	ld hl, sp+$7c                                    ; $72cb: $f8 $7c
	ld a, $1f                                        ; $72cd: $3e $1f
	rrca                                             ; $72cf: $0f
	inc bc                                           ; $72d0: $03
	call c, $9eff                                    ; $72d1: $dc $ff $9e
	ei                                               ; $72d4: $fb
	ld l, e                                          ; $72d5: $6b
	ld d, c                                          ; $72d6: $51
	sbc [hl]                                         ; $72d7: $9e
	rlca                                             ; $72d8: $07
	ld a, d                                          ; $72d9: $7a
	db $d3                                           ; $72da: $d3
	sbc b                                            ; $72db: $98
	ld hl, sp-$3a                                    ; $72dc: $f8 $c6
	di                                               ; $72de: $f3
	cp h                                             ; $72df: $bc
	ret nz                                           ; $72e0: $c0

jr_05b_72e1:
	ld bc, $7b0f                                     ; $72e1: $01 $0f $7b
	ld a, l                                          ; $72e4: $7d
	add b                                            ; $72e5: $80

Call_05b_72e6:
	rrca                                             ; $72e6: $0f
	ld a, a                                          ; $72e7: $7f
	rst $38                                          ; $72e8: $ff
	cp $f0                                           ; $72e9: $fe $f0
	ld d, $df                                        ; $72eb: $16 $df
	ld l, e                                          ; $72ed: $6b
	cp [hl]                                          ; $72ee: $be
	ld [hl], $3d                                     ; $72ef: $36 $3d
	cp b                                             ; $72f1: $b8
	pop hl                                           ; $72f2: $e1
	dec e                                            ; $72f3: $1d
	scf                                              ; $72f4: $37
	db $fc                                           ; $72f5: $fc
	add sp, -$08                                     ; $72f6: $e8 $f8
	ldh a, [$71]                                     ; $72f8: $f0 $71
	ld [hl], c                                       ; $72fa: $71
	rst AddAOntoHL                                          ; $72fb: $ef

Call_05b_72fc:
	cp l                                             ; $72fc: $bd
	rst SubAFromDE                                          ; $72fd: $df
	ld l, a                                          ; $72fe: $6f

Call_05b_72ff:
	cp a                                             ; $72ff: $bf
	cp e                                             ; $7300: $bb
	sbc a                                            ; $7301: $9f
	rst SubAFromDE                                          ; $7302: $df
	ld sp, hl                                        ; $7303: $f9
	ld l, e                                          ; $7304: $6b
	adc b                                            ; $7305: $88
	ld l, e                                          ; $7306: $6b
	db $db                                           ; $7307: $db
	db $d3                                           ; $7308: $d3
	rst SubAFromHL                                          ; $7309: $d7
	rst FarCall                                          ; $730a: $f7
	or a                                             ; $730b: $b7
	add e                                            ; $730c: $83
	jp $0c86                                         ; $730d: $c3 $86 $0c


	adc b                                            ; $7310: $88
	stop                                             ; $7311: $10 $00
	jr nz, jr_05b_72e1                               ; $7313: $20 $cc

	sbc h                                            ; $7315: $9c
	sbc c                                            ; $7316: $99
	or d                                             ; $7317: $b2
	inc [hl]                                         ; $7318: $34
	jr z, @+$72                                      ; $7319: $28 $70

	ld d, b                                          ; $731b: $50
	ret nz                                           ; $731c: $c0

	ld a, [$c27e]                                    ; $731d: $fa $7e $c2
	ei                                               ; $7320: $fb
	ld a, d                                          ; $7321: $7a
	call $108e                                       ; $7322: $cd $8e $10
	ld [de], a                                       ; $7325: $12
	ld [hl], $20                                     ; $7326: $36 $20
	jr nz, jr_05b_733a                               ; $7328: $20 $10

	db $10                                           ; $732a: $10
	jr nz, jr_05b_734e                               ; $732b: $20 $21

	ld hl, $4541                                     ; $732d: $21 $41 $45
	ld c, a                                          ; $7330: $4f
	ld b, e                                          ; $7331: $43
	ld e, h                                          ; $7332: $5c
	nop                                              ; $7333: $00
	sub b                                            ; $7334: $90
	sbc $80                                          ; $7335: $de $80
	sbc e                                            ; $7337: $9b
	ccf                                              ; $7338: $3f
	add b                                            ; $7339: $80

jr_05b_733a:
	add e                                            ; $733a: $83
	sbc h                                            ; $733b: $9c
	ld a, e                                          ; $733c: $7b
	inc d                                            ; $733d: $14
	sbc l                                            ; $733e: $9d
	ccf                                              ; $733f: $3f
	ld b, b                                          ; $7340: $40
	ld l, h                                          ; $7341: $6c
	ld l, c                                          ; $7342: $69
	sbc h                                            ; $7343: $9c
	inc c                                            ; $7344: $0c
	pop hl                                           ; $7345: $e1
	ld a, a                                          ; $7346: $7f
	ld [hl], d                                       ; $7347: $72
	or [hl]                                          ; $7348: $b6
	sbc l                                            ; $7349: $9d
	di                                               ; $734a: $f3
	nop                                              ; $734b: $00
	ld l, [hl]                                       ; $734c: $6e
	nop                                              ; $734d: $00

jr_05b_734e:
	sbc l                                            ; $734e: $9d
	ret nz                                           ; $734f: $c0

	ld a, [de]                                       ; $7350: $1a
	ld l, e                                          ; $7351: $6b
	ld l, [hl]                                       ; $7352: $6e
	sbc [hl]                                         ; $7353: $9e
	ldh [$74], a                                     ; $7354: $e0 $74
	ld b, b                                          ; $7356: $40
	ld a, c                                          ; $7357: $79
	db $dd                                           ; $7358: $dd
	ldh [$e0], a                                     ; $7359: $e0 $e0
	ld b, a                                          ; $735b: $47
	call c, $01d9                                    ; $735c: $dc $d9 $01
	ld a, a                                          ; $735f: $7f
	dec bc                                           ; $7360: $0b
	db $db                                           ; $7361: $db
	add b                                            ; $7362: $80
	ld h, e                                          ; $7363: $63
	ret c                                            ; $7364: $d8

	ld l, e                                          ; $7365: $6b
	rst SubAFromHL                                          ; $7366: $d7
	call c, $e608                                    ; $7367: $dc $08 $e6
	ld a, h                                          ; $736a: $7c
	xor l                                            ; $736b: $ad
	rst SubAFromDE                                          ; $736c: $df
	rlca                                             ; $736d: $07
	rst SubAFromDE                                          ; $736e: $df
	ld c, a                                          ; $736f: $4f
	rst SubAFromDE                                          ; $7370: $df
	sbc a                                            ; $7371: $9f
	sbc [hl]                                         ; $7372: $9e
	inc bc                                           ; $7373: $03
	ld a, [$f39d]                                    ; $7374: $fa $9d $f3
	db $fc                                           ; $7377: $fc
	reti                                             ; $7378: $d9


	rst $38                                          ; $7379: $ff
	sbc l                                            ; $737a: $9d
	rra                                              ; $737b: $1f
	inc bc                                           ; $737c: $03
	halt                                             ; $737d: $76
	add l                                            ; $737e: $85
	ld a, a                                          ; $737f: $7f
	ld h, [hl]                                       ; $7380: $66
	sbc h                                            ; $7381: $9c
	ld e, $e1                                        ; $7382: $1e $e1
	cp $da                                           ; $7384: $fe $da
	rst $38                                          ; $7386: $ff
	sbc [hl]                                         ; $7387: $9e
	ld l, c                                          ; $7388: $69
	ld a, c                                          ; $7389: $79
	or $fe                                           ; $738a: $f6 $fe
	sbc h                                            ; $738c: $9c
	cp $27                                           ; $738d: $fe $27
	ldh [$4c], a                                     ; $738f: $e0 $4c
	ld d, e                                          ; $7391: $53
	ld a, a                                          ; $7392: $7f
	ld hl, sp-$21                                    ; $7393: $f8 $df
	rst $38                                          ; $7395: $ff
	sbc d                                            ; $7396: $9a
	di                                               ; $7397: $f3
	db $e3                                           ; $7398: $e3
	db $e3                                           ; $7399: $e3

jr_05b_739a:
	rst AddAOntoHL                                          ; $739a: $ef
	cp $de                                           ; $739b: $fe $de
	ld b, b                                          ; $739d: $40
	adc [hl]                                         ; $739e: $8e
	ld h, c                                          ; $739f: $61
	ld h, e                                          ; $73a0: $63
	ld h, e                                          ; $73a1: $63
	ld b, a                                          ; $73a2: $47
	db $fc                                           ; $73a3: $fc
	ld b, e                                          ; $73a4: $43
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	ld d, a                                          ; $73a7: $57
	sub a                                            ; $73a8: $97
	rst SubAFromDE                                          ; $73a9: $df
	ld e, a                                          ; $73aa: $5f
	ld a, a                                          ; $73ab: $7f
	ld h, e                                          ; $73ac: $63
	ccf                                              ; $73ad: $3f
	inc hl                                           ; $73ae: $23
	cp a                                             ; $73af: $bf

jr_05b_73b0:
	ld a, c                                          ; $73b0: $79
	jr c, jr_05b_7430                                ; $73b1: $38 $7d

	scf                                              ; $73b3: $37
	rst SubAFromDE                                          ; $73b4: $df
	ld a, a                                          ; $73b5: $7f
	ld [hl], a                                       ; $73b6: $77
	rst JumpTable                                          ; $73b7: $c7
	sbc e                                            ; $73b8: $9b
	ld [hl], c                                       ; $73b9: $71
	jr nc, jr_05b_741b                               ; $73ba: $30 $5f

	jr nc, jr_05b_7435                               ; $73bc: $30 $77

	cp l                                             ; $73be: $bd
	sub l                                            ; $73bf: $95
	ld h, b                                          ; $73c0: $60
	ld a, a                                          ; $73c1: $7f
	ld [hl], b                                       ; $73c2: $70
	ld a, a                                          ; $73c3: $7f
	nop                                              ; $73c4: $00
	ld bc, $2708                                     ; $73c5: $01 $08 $27
	ld e, $e0                                        ; $73c8: $1e $e0
	ld [hl], d                                       ; $73ca: $72
	ld [hl], e                                       ; $73cb: $73
	adc d                                            ; $73cc: $8a
	jr jr_05b_73b0                                   ; $73cd: $18 $e1

	rra                                              ; $73cf: $1f
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	ld h, [hl]                                       ; $73d2: $66
	ld l, $ec                                        ; $73d3: $2e $ec
	ldh [rAUD4ENV], a                                ; $73d5: $e0 $21
	cpl                                              ; $73d7: $2f
	jr nz, jr_05b_73ea                               ; $73d8: $20 $10

	add hl, bc                                       ; $73da: $09
	pop bc                                           ; $73db: $c1
	inc bc                                           ; $73dc: $03
	rrca                                             ; $73dd: $0f
	adc $c0                                          ; $73de: $ce $c0
	rst JumpTable                                          ; $73e0: $c7
	rst SubAFromBC                                          ; $73e1: $e7
	ld [hl], l                                       ; $73e2: $75
	sub a                                            ; $73e3: $97
	ld a, c                                          ; $73e4: $79
	inc hl                                           ; $73e5: $23
	sbc [hl]                                         ; $73e6: $9e
	rra                                              ; $73e7: $1f
	ld [hl], l                                       ; $73e8: $75
	rla                                              ; $73e9: $17

jr_05b_73ea:
	ld a, e                                          ; $73ea: $7b

jr_05b_73eb:
	db $fc                                           ; $73eb: $fc
	add b                                            ; $73ec: $80
	ldh [$fc], a                                     ; $73ed: $e0 $fc
	nop                                              ; $73ef: $00
	inc bc                                           ; $73f0: $03
	nop                                              ; $73f1: $00
	db $fc                                           ; $73f2: $fc
	ld a, a                                          ; $73f3: $7f
	rlca                                             ; $73f4: $07
	ld sp, hl                                        ; $73f5: $f9
	nop                                              ; $73f6: $00
	rst $38                                          ; $73f7: $ff

Call_05b_73f8:
	db $fc                                           ; $73f8: $fc
	rst $38                                          ; $73f9: $ff
	inc bc                                           ; $73fa: $03
	add b                                            ; $73fb: $80
	ld hl, sp+$06                                    ; $73fc: $f8 $06
	ld [bc], a                                       ; $73fe: $02
	ld h, c                                          ; $73ff: $61
	add d                                            ; $7400: $82
	ld b, c                                          ; $7401: $41
	jr jr_05b_73eb                                   ; $7402: $18 $e7

	ld sp, hl                                        ; $7404: $f9
	cp $01                                           ; $7405: $fe $01
	add b                                            ; $7407: $80
	ld bc, $e080                                     ; $7408: $01 $80 $e0
	jr jr_05b_739a                                   ; $740b: $18 $8d

	ld b, $01                                        ; $740d: $06 $01
	add b                                            ; $740f: $80
	jr nz, jr_05b_7422                               ; $7410: $20 $10

	call nz, $3972                                   ; $7412: $c4 $72 $39
	call c, $007e                                    ; $7415: $dc $7e $00
	ret nz                                           ; $7418: $c0

	ldh [$38], a                                     ; $7419: $e0 $38

jr_05b_741b:
	inc c                                            ; $741b: $0c
	ld b, $03                                        ; $741c: $06 $03
	add c                                            ; $741e: $81
	ld b, l                                          ; $741f: $45
	nop                                              ; $7420: $00
	db $dd                                           ; $7421: $dd

jr_05b_7422:
	inc sp                                           ; $7422: $33
	sbc l                                            ; $7423: $9d
	ld [hl+], a                                      ; $7424: $22
	inc hl                                           ; $7425: $23
	jp c, $9b33                                      ; $7426: $da $33 $9b

	ld [hl], $62                                     ; $7429: $36 $62
	inc hl                                           ; $742b: $23
	ld h, [hl]                                       ; $742c: $66
	db $db                                           ; $742d: $db
	inc sp                                           ; $742e: $33
	sbc e                                            ; $742f: $9b

jr_05b_7430:
	ld h, d                                          ; $7430: $62
	ld [hl+], a                                      ; $7431: $22
	ld h, $22                                        ; $7432: $26 $22
	ld l, a                                          ; $7434: $6f

jr_05b_7435:
	push af                                          ; $7435: $f5
	sbc c                                            ; $7436: $99
	ld [hl+], a                                      ; $7437: $22
	ld [hl-], a                                      ; $7438: $32
	ld h, $66                                        ; $7439: $26 $66
	ld h, [hl]                                       ; $743b: $66
	ld h, e                                          ; $743c: $63
	db $dd                                           ; $743d: $dd
	inc sp                                           ; $743e: $33
	sbc c                                            ; $743f: $99
	ld b, d                                          ; $7440: $42
	ld [hl+], a                                      ; $7441: $22
	ld [hl+], a                                      ; $7442: $22
	inc hl                                           ; $7443: $23
	ld h, $43                                        ; $7444: $26 $43
	db $dd                                           ; $7446: $dd
	inc sp                                           ; $7447: $33
	sbc [hl]                                         ; $7448: $9e
	ld [hl-], a                                      ; $7449: $32
	db $dd                                           ; $744a: $dd
	ld [hl+], a                                      ; $744b: $22
	ld h, e                                          ; $744c: $63
	or $9e                                           ; $744d: $f6 $9e
	inc [hl]                                         ; $744f: $34
	ld h, e                                          ; $7450: $63
	or $9e                                           ; $7451: $f6 $9e
	ld [hl], $dc                                     ; $7453: $36 $dc
	inc sp                                           ; $7455: $33
	ld a, e                                          ; $7456: $7b
	or $6b                                           ; $7457: $f6 $6b
	xor a                                            ; $7459: $af
	sbc h                                            ; $745a: $9c
	ld d, d                                          ; $745b: $52
	ld [hl+], a                                      ; $745c: $22
	ld [hl+], a                                      ; $745d: $22
	jp c, $de33                                      ; $745e: $da $33 $de

	ld d, l                                          ; $7461: $55
	db $dd                                           ; $7462: $dd
	inc sp                                           ; $7463: $33
	ld [hl-], a                                      ; $7464: $32
	adc d                                            ; $7465: $8a
	rst $38                                          ; $7466: $ff
	add l                                            ; $7467: $85
	sbc h                                            ; $7468: $9c
	cp h                                             ; $7469: $bc
	dec a                                            ; $746a: $3d
	ld a, [hl-]                                      ; $746b: $3a
	inc a                                            ; $746c: $3c
	cp a                                             ; $746d: $bf
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	ld h, e                                          ; $7470: $63
	ld b, e                                          ; $7471: $43
	jp $c7c7                                         ; $7472: $c3 $c7 $c7


	ld c, e                                          ; $7475: $4b
	dec e                                            ; $7476: $1d
	daa                                              ; $7477: $27
	ld c, [hl]                                       ; $7478: $4e
	sbc [hl]                                         ; $7479: $9e
	inc [hl]                                         ; $747a: $34
	ld [hl], d                                       ; $747b: $72
	and e                                            ; $747c: $a3
	ld b, e                                          ; $747d: $43
	cp $fc                                           ; $747e: $fe $fc
	db $fd                                           ; $7480: $fd
	db $fd                                           ; $7481: $fd
	db $dd                                           ; $7482: $dd
	rst $38                                          ; $7483: $ff
	rst SubAFromDE                                          ; $7484: $df
	ld l, e                                          ; $7485: $6b
	adc [hl]                                         ; $7486: $8e
	sub a                                            ; $7487: $97
	or l                                             ; $7488: $b5
	cp l                                             ; $7489: $bd
	rst FarCall                                          ; $748a: $f7
	rst SubAFromDE                                          ; $748b: $df
	ldh a, [c]                                       ; $748c: $f2
	db $dd                                           ; $748d: $dd
	db $dd                                           ; $748e: $dd
	db $fd                                           ; $748f: $fd
	rst $38                                          ; $7490: $ff
	rst FarCall                                          ; $7491: $f7
	cp $fa                                           ; $7492: $fe $fa
	rst GetHLinHL                                          ; $7494: $cf
	ld a, [hl]                                       ; $7495: $7e
	ld a, [hl]                                       ; $7496: $7e
	ld a, a                                          ; $7497: $7f
	sbc $df                                          ; $7498: $de $df
	sbc d                                            ; $749a: $9a
	rst $38                                          ; $749b: $ff
	sbc $d3                                          ; $749c: $de $d3
	db $d3                                           ; $749e: $d3
	pop de                                           ; $749f: $d1
	sbc $71                                          ; $74a0: $de $71

Call_05b_74a2:
	rst SubAFromDE                                          ; $74a2: $df
	ld sp, $9adf                                     ; $74a3: $31 $df $9a
	sbc c                                            ; $74a6: $99
	ld d, a                                          ; $74a7: $57
	ld [hl], l                                       ; $74a8: $75
	ld l, l                                          ; $74a9: $6d
	xor d                                            ; $74aa: $aa
	ld a, [hl]                                       ; $74ab: $7e
	rst AddAOntoHL                                          ; $74ac: $ef
	sbc $fd                                          ; $74ad: $de $fd
	sbc $ff                                          ; $74af: $de $ff
	sub l                                            ; $74b1: $95
	adc a                                            ; $74b2: $8f
	dec e                                            ; $74b3: $1d
	xor c                                            ; $74b4: $a9
	and l                                            ; $74b5: $a5
	rst FarCall                                          ; $74b6: $f7
	ld [hl], a                                       ; $74b7: $77
	ld d, l                                          ; $74b8: $55
	push de                                          ; $74b9: $d5
	xor h                                            ; $74ba: $ac
	xor a                                            ; $74bb: $af
	sbc $5f                                          ; $74bc: $de $5f
	ld a, a                                          ; $74be: $7f
	jp c, $ffdf                                      ; $74bf: $da $df $ff

	sbc h                                            ; $74c2: $9c
	cp $fb                                           ; $74c3: $fe $fb
	nop                                              ; $74c5: $00
	sbc $fb                                          ; $74c6: $de $fb
	sbc d                                            ; $74c8: $9a
	add b                                            ; $74c9: $80
	ei                                               ; $74ca: $fb
	ret nz                                           ; $74cb: $c0

	inc b                                            ; $74cc: $04
	rst $38                                          ; $74cd: $ff
	sbc $84                                          ; $74ce: $de $84
	adc d                                            ; $74d0: $8a
	rst $38                                          ; $74d1: $ff
	call nz, rIE                                   ; $74d2: $c4 $ff $ff
	nop                                              ; $74d5: $00
	cp $fe                                           ; $74d6: $fe $fe
	db $fd                                           ; $74d8: $fd
	nop                                              ; $74d9: $00
	ei                                               ; $74da: $fb
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	rst $38                                          ; $74dd: $ff
	ld bc, $0201                                     ; $74de: $01 $01 $02
	rst $38                                          ; $74e1: $ff
	inc b                                            ; $74e2: $04
	rst $38                                          ; $74e3: $ff
	ld a, a                                          ; $74e4: $7f
	nop                                              ; $74e5: $00
	sbc $ff                                          ; $74e6: $de $ff
	sbc d                                            ; $74e8: $9a
	nop                                              ; $74e9: $00
	db $fd                                           ; $74ea: $fd
	nop                                              ; $74eb: $00
	add b                                            ; $74ec: $80
	rst $38                                          ; $74ed: $ff
	cp $8d                                           ; $74ee: $fe $8d
	rst $38                                          ; $74f0: $ff
	ld [bc], a                                       ; $74f1: $02
	rst $38                                          ; $74f2: $ff
	di                                               ; $74f3: $f3
	nop                                              ; $74f4: $00
	rst GetHLinHL                                          ; $74f5: $cf
	cp a                                             ; $74f6: $bf
	ld a, a                                          ; $74f7: $7f
	nop                                              ; $74f8: $00
	cp $00                                           ; $74f9: $fe $00
	inc c                                            ; $74fb: $0c
	rst $38                                          ; $74fc: $ff
	jr nc, jr_05b_753f                               ; $74fd: $30 $40

	add b                                            ; $74ff: $80

jr_05b_7500:
	rst $38                                          ; $7500: $ff
	ld bc, $e47b                                     ; $7501: $01 $7b $e4
	sbc d                                            ; $7504: $9a
	db $fc                                           ; $7505: $fc
	di                                               ; $7506: $f3
	rst GetHLinHL                                          ; $7507: $cf
	nop                                              ; $7508: $00
	ld a, a                                          ; $7509: $7f
	ld a, e                                          ; $750a: $7b
	db $e4                                           ; $750b: $e4
	sbc b                                            ; $750c: $98
	inc bc                                           ; $750d: $03
	inc c                                            ; $750e: $0c
	jr nc, @+$01                                     ; $750f: $30 $ff

	add b                                            ; $7511: $80
	rst $38                                          ; $7512: $ff
	sbc a                                            ; $7513: $9f
	ld a, e                                          ; $7514: $7b
	ret nc                                           ; $7515: $d0

	sbc d                                            ; $7516: $9a
	db $fc                                           ; $7517: $fc
	nop                                              ; $7518: $00
	rst JumpTable                                          ; $7519: $c7
	nop                                              ; $751a: $00
	ld h, b                                          ; $751b: $60
	ld a, e                                          ; $751c: $7b
	ret nc                                           ; $751d: $d0

	sub a                                            ; $751e: $97
	inc bc                                           ; $751f: $03
	rst $38                                          ; $7520: $ff
	jr c, @+$01                                      ; $7521: $38 $ff

	cp $00                                           ; $7523: $fe $00
	pop af                                           ; $7525: $f1
	adc a                                            ; $7526: $8f
	ld [hl], a                                       ; $7527: $77
	ret nc                                           ; $7528: $d0

	ld a, a                                          ; $7529: $7f
	sub $9d                                          ; $752a: $d6 $9d
	ld c, $70                                        ; $752c: $0e $70
	ld [hl], a                                       ; $752e: $77
	ret nc                                           ; $752f: $d0

Call_05b_7530:
	sbc [hl]                                         ; $7530: $9e
	rra                                              ; $7531: $1f
	ld a, e                                          ; $7532: $7b
	ldh [$9a], a                                     ; $7533: $e0 $9a
	ldh a, [rP1]                                     ; $7535: $f0 $00
	ccf                                              ; $7537: $3f
	nop                                              ; $7538: $00
	ldh [$7b], a                                     ; $7539: $e0 $7b
	ldh [$9c], a                                     ; $753b: $e0 $9c
	rrca                                             ; $753d: $0f
	rst $38                                          ; $753e: $ff

jr_05b_753f:
	ret nz                                           ; $753f: $c0

	ld a, e                                          ; $7540: $7b
	ret nz                                           ; $7541: $c0

	sbc e                                            ; $7542: $9b
	ldh a, [rIF]                                     ; $7543: $f0 $0f
	rst $38                                          ; $7545: $ff
	nop                                              ; $7546: $00
	ld a, e                                          ; $7547: $7b
	di                                               ; $7548: $f3
	sbc h                                            ; $7549: $9c
	rst $38                                          ; $754a: $ff
	rrca                                             ; $754b: $0f
	ldh a, [$7b]                                     ; $754c: $f0 $7b
	ld sp, hl                                        ; $754e: $f9
	sbc d                                            ; $754f: $9a
	rst $38                                          ; $7550: $ff
	add [hl]                                         ; $7551: $86
	ld [bc], a                                       ; $7552: $02
	cp $fe                                           ; $7553: $fe $fe
	ld a, e                                          ; $7555: $7b
	sbc c                                            ; $7556: $99
	sbc h                                            ; $7557: $9c
	ld bc, $fe7a                                     ; $7558: $01 $7a $fe
	sbc $02                                          ; $755b: $de $02
	ld a, e                                          ; $755d: $7b
	ret nc                                           ; $755e: $d0

	cp $de                                           ; $755f: $fe $de
	jr nz, jr_05b_7500                               ; $7561: $20 $9d

	ld h, b                                          ; $7563: $60
	ldh [$f9], a                                     ; $7564: $e0 $f9
	sbc [hl]                                         ; $7566: $9e
	ld bc, $dff2                                     ; $7567: $01 $f2 $df
	rst $38                                          ; $756a: $ff
	sbc d                                            ; $756b: $9a
	ld a, a                                          ; $756c: $7f
	ccf                                              ; $756d: $3f
	rrca                                             ; $756e: $0f
	rrca                                             ; $756f: $0f
	rra                                              ; $7570: $1f
	ld a, e                                          ; $7571: $7b
	ld a, a                                          ; $7572: $7f
	ld h, a                                          ; $7573: $67
	ldh a, [$db]                                     ; $7574: $f0 $db
	rst $38                                          ; $7576: $ff
	ld sp, hl                                        ; $7577: $f9
	add b                                            ; $7578: $80
	sub l                                            ; $7579: $95
	xor c                                            ; $757a: $a9
	push de                                          ; $757b: $d5
	sbc $9e                                          ; $757c: $de $9e
	adc [hl]                                         ; $757e: $8e
	call z, Call_05b_72e6                            ; $757f: $cc $e6 $72
	ld h, [hl]                                       ; $7582: $66
	ld l, [hl]                                       ; $7583: $6e
	ld l, l                                          ; $7584: $6d
	db $ed                                           ; $7585: $ed
	db $fd                                           ; $7586: $fd
	rst $38                                          ; $7587: $ff
	ld a, a                                          ; $7588: $7f
	ld [hl], l                                       ; $7589: $75
	ld d, [hl]                                       ; $758a: $56
	adc l                                            ; $758b: $8d
	call $b7a6                                       ; $758c: $cd $a6 $b7
	rst SubAFromHL                                          ; $758f: $d7
	rst $38                                          ; $7590: $ff
	rst GetHLinHL                                          ; $7591: $cf
	call $8ccc                                       ; $7592: $cd $cc $8c
	call z, $efce                                    ; $7595: $cc $ce $ef
	add h                                            ; $7598: $84
	rst $38                                          ; $7599: $ff
	rst SubAFromDE                                          ; $759a: $df
	or e                                             ; $759b: $b3
	pop de                                           ; $759c: $d1
	sbc e                                            ; $759d: $9b
	sbc [hl]                                         ; $759e: $9e
	ret nz                                           ; $759f: $c0

	sbc e                                            ; $75a0: $9b
	ret nz                                           ; $75a1: $c0

	cp a                                             ; $75a2: $bf
	ld sp, hl                                        ; $75a3: $f9
	or e                                             ; $75a4: $b3
	sub a                                            ; $75a5: $97
	adc a                                            ; $75a6: $8f
	adc [hl]                                         ; $75a7: $8e
	call nz, Call_05b_7fc0                           ; $75a8: $c4 $c0 $7f
	rst $38                                          ; $75ab: $ff
	rst GetHLinHL                                          ; $75ac: $cf
	rlca                                             ; $75ad: $07
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	ld [$800c], sp                                   ; $75b0: $08 $0c $80
	add b                                            ; $75b3: $80
	db $fc                                           ; $75b4: $fc
	add [hl]                                         ; $75b5: $86
	db $10                                           ; $75b6: $10
	db $fd                                           ; $75b7: $fd
	halt                                             ; $75b8: $76
	adc a                                            ; $75b9: $8f
	ld e, l                                          ; $75ba: $5d
	ld d, l                                          ; $75bb: $55
	add hl, hl                                       ; $75bc: $29
	ld h, $0f                                        ; $75bd: $26 $0f
	ld a, a                                          ; $75bf: $7f
	rst AddAOntoHL                                          ; $75c0: $ef
	ld b, a                                          ; $75c1: $47
	ld c, [hl]                                       ; $75c2: $4e
	ld a, h                                          ; $75c3: $7c
	inc a                                            ; $75c4: $3c
	add hl, de                                       ; $75c5: $19
	ld bc, $7f7e                                     ; $75c6: $01 $7e $7f
	bit 5, e                                         ; $75c9: $cb $6b
	ld a, [hl+]                                      ; $75cb: $2a
	db $fd                                           ; $75cc: $fd
	ld a, a                                          ; $75cd: $7f
	jp c, $887b                                      ; $75ce: $da $7b $88

	rst SubAFromDE                                          ; $75d1: $df
	db $dd                                           ; $75d2: $dd
	adc h                                            ; $75d3: $8c
	sbc [hl]                                         ; $75d4: $9e
	cp [hl]                                          ; $75d5: $be
	rst $38                                          ; $75d6: $ff
	ret nz                                           ; $75d7: $c0

	ldh [$60], a                                     ; $75d8: $e0 $60
	ret nc                                           ; $75da: $d0

	or b                                             ; $75db: $b0
	add sp, $78                                      ; $75dc: $e8 $78
	ret c                                            ; $75de: $d8

	ld a, a                                          ; $75df: $7f
	ld a, a                                          ; $75e0: $7f
	cp a                                             ; $75e1: $bf
	cp a                                             ; $75e2: $bf
	rst SubAFromDE                                          ; $75e3: $df
	rst SubAFromDE                                          ; $75e4: $df
	rst GetHLinHL                                          ; $75e5: $cf
	ld l, a                                          ; $75e6: $6f
	cp $9a                                           ; $75e7: $fe $9a
	rlca                                             ; $75e9: $07
	inc e                                            ; $75ea: $1c
	ld de, $556a                                     ; $75eb: $11 $6a $55
	call c, $94ff                                    ; $75ee: $dc $ff $94
	rst AddAOntoHL                                          ; $75f1: $ef
	rst JumpTable                                          ; $75f2: $c7
	jp z, $0000                                     ; $75f3: $ca $00 $00

	ld a, b                                          ; $75f6: $78
	add [hl]                                         ; $75f7: $86
	dec bc                                           ; $75f8: $0b
	sbc h                                            ; $75f9: $9c
	ld [hl], $d9                                     ; $75fa: $36 $d9
	db $dd                                           ; $75fc: $dd
	rst $38                                          ; $75fd: $ff
	sbc d                                            ; $75fe: $9a
	rst FarCall                                          ; $75ff: $f7
	db $e3                                           ; $7600: $e3
	db $db                                           ; $7601: $db
	cpl                                              ; $7602: $2f
	nop                                              ; $7603: $00
	sbc $03                                          ; $7604: $de $03
	sbc d                                            ; $7606: $9a
	jp $4083                                         ; $7607: $c3 $83 $40


	ld b, b                                          ; $760a: $40
	rst $38                                          ; $760b: $ff
	call c, Call_05b_72fc                            ; $760c: $dc $fc $72
	sub c                                            ; $760f: $91

Call_05b_7610:
	sbc $fe                                          ; $7610: $de $fe
	ld [hl], d                                       ; $7612: $72
	sub c                                            ; $7613: $91
	sbc $01                                          ; $7614: $de $01
	ld e, a                                          ; $7616: $5f
	ld c, b                                          ; $7617: $48
	ld d, e                                          ; $7618: $53
	jr c, @+$81                                      ; $7619: $38 $7f

	dec bc                                           ; $761b: $0b
	ld a, e                                          ; $761c: $7b
	and $db                                          ; $761d: $e6 $db
	rst $38                                          ; $761f: $ff
	sub a                                            ; $7620: $97
	ld a, [hl+]                                      ; $7621: $2a
	sub l                                            ; $7622: $95
	ld a, [hl+]                                      ; $7623: $2a
	sub l                                            ; $7624: $95
	dec bc                                           ; $7625: $0b
	ld d, l                                          ; $7626: $55
	dec bc                                           ; $7627: $0b
	ld d, [hl]                                       ; $7628: $56
	db $db                                           ; $7629: $db
	rst $38                                          ; $762a: $ff
	ld a, [hl]                                       ; $762b: $7e
	push de                                          ; $762c: $d5
	sub a                                            ; $762d: $97
	xor d                                            ; $762e: $aa
	ld d, l                                          ; $762f: $55
	xor a                                            ; $7630: $af
	ld [hl], h                                       ; $7631: $74
	db $eb                                           ; $7632: $eb
	ld d, [hl]                                       ; $7633: $56
	ld c, e                                          ; $7634: $4b
	cp h                                             ; $7635: $bc
	db $dd                                           ; $7636: $dd
	rst $38                                          ; $7637: $ff
	sub e                                            ; $7638: $93
	call c, $37b9                                    ; $7639: $dc $b9 $37
	ld a, h                                          ; $763c: $7c
	xor e                                            ; $763d: $ab
	ld d, l                                          ; $763e: $55
	ld [$da75], a                                    ; $763f: $ea $75 $da
	ld l, l                                          ; $7642: $6d
	sub a                                            ; $7643: $97
	db $e3                                           ; $7644: $e3
	db $dd                                           ; $7645: $dd
	rst $38                                          ; $7646: $ff
	sub d                                            ; $7647: $92
	ccf                                              ; $7648: $3f
	sbc a                                            ; $7649: $9f
	rst AddAOntoHL                                          ; $764a: $ef
	ld a, a                                          ; $764b: $7f
	ldh [rLCDC], a                                   ; $764c: $e0 $40
	ret nz                                           ; $764e: $c0

	ret nz                                           ; $764f: $c0

	add c                                            ; $7650: $81
	add a                                            ; $7651: $87
	rrca                                             ; $7652: $0f
	ccf                                              ; $7653: $3f
	nop                                              ; $7654: $00
	db $dd                                           ; $7655: $dd
	add b                                            ; $7656: $80
	db $fd                                           ; $7657: $fd
	sbc b                                            ; $7658: $98
	inc bc                                           ; $7659: $03
	rrca                                             ; $765a: $0f
	ccf                                              ; $765b: $3f
	rst $38                                          ; $765c: $ff
	db $fc                                           ; $765d: $fc
	rst GetHLinHL                                          ; $765e: $cf
	or b                                             ; $765f: $b0
	db $fc                                           ; $7660: $fc
	sbc h                                            ; $7661: $9c
	inc bc                                           ; $7662: $03
	ccf                                              ; $7663: $3f
	ld a, a                                          ; $7664: $7f
	db $dd                                           ; $7665: $dd
	rst $38                                          ; $7666: $ff
	sbc l                                            ; $7667: $9d
	ldh [$7f], a                                     ; $7668: $e0 $7f
	ld l, a                                          ; $766a: $6f
	sbc c                                            ; $766b: $99
	sbc [hl]                                         ; $766c: $9e
	rra                                              ; $766d: $1f
	ld a, e                                          ; $766e: $7b
	ld [hl], b                                       ; $766f: $70
	ld a, d                                          ; $7670: $7a
	ld h, d                                          ; $7671: $62
	sbc [hl]                                         ; $7672: $9e
	inc bc                                           ; $7673: $03
	ld a, e                                          ; $7674: $7b
	db $eb                                           ; $7675: $eb
	sbc [hl]                                         ; $7676: $9e
	rrca                                             ; $7677: $0f
	ld a, d                                          ; $7678: $7a
	ld h, d                                          ; $7679: $62
	sub [hl]                                         ; $767a: $96
	db $fc                                           ; $767b: $fc
	add b                                            ; $767c: $80
	nop                                              ; $767d: $00
	ldh a, [$fe]                                     ; $767e: $f0 $fe
	cp a                                             ; $7680: $bf
	or h                                             ; $7681: $b4
	ldh a, [$c0]                                     ; $7682: $f0 $c0
	ld [hl], a                                       ; $7684: $77
	ret z                                            ; $7685: $c8

	sbc h                                            ; $7686: $9c
	ld a, a                                          ; $7687: $7f
	ld a, b                                          ; $7688: $78
	ld b, b                                          ; $7689: $40
	ld [hl], e                                       ; $768a: $73
	pop bc                                           ; $768b: $c1
	sbc h                                            ; $768c: $9c
	cp a                                             ; $768d: $bf
	dec hl                                           ; $768e: $2b
	ld [de], a                                       ; $768f: $12
	sbc $0a                                          ; $7690: $de $0a
	sbc d                                            ; $7692: $9a
	ld a, [de]                                       ; $7693: $1a
	ld a, d                                          ; $7694: $7a
	ld a, a                                          ; $7695: $7f
	rra                                              ; $7696: $1f
	rrca                                             ; $7697: $0f
	call c, $df07                                    ; $7698: $dc $07 $df
	ld h, b                                          ; $769b: $60
	add l                                            ; $769c: $85
	jr nc, jr_05b_76d7                               ; $769d: $30 $38

	inc a                                            ; $769f: $3c
	ld a, $3f                                        ; $76a0: $3e $3f
	ccf                                              ; $76a2: $3f
	ret nz                                           ; $76a3: $c0

	ldh [$e0], a                                     ; $76a4: $e0 $e0
	or b                                             ; $76a6: $b0
	xor b                                            ; $76a7: $a8
	and h                                            ; $76a8: $a4
	and a                                            ; $76a9: $a7
	and e                                            ; $76aa: $a3
	jr jr_05b_76ad                                   ; $76ab: $18 $00

jr_05b_76ad:
	jr @+$0a                                         ; $76ad: $18 $08

	ld [$8100], sp                                   ; $76af: $08 $00 $81
	and e                                            ; $76b2: $a3
	stop                                             ; $76b3: $10 $00
	db $10                                           ; $76b5: $10

jr_05b_76b6:
	jr jr_05b_76b6                                   ; $76b6: $18 $fe

	sbc c                                            ; $76b8: $99
	pop bc                                           ; $76b9: $c1
	rrca                                             ; $76ba: $0f
	rra                                              ; $76bb: $1f
	ccf                                              ; $76bc: $3f
	ccf                                              ; $76bd: $3f
	ld a, c                                          ; $76be: $79
	sbc $f1                                          ; $76bf: $de $f1
	sub a                                            ; $76c1: $97
	ld bc, $0703                                     ; $76c2: $01 $03 $07
	rlca                                             ; $76c5: $07
	rrca                                             ; $76c6: $0f
	rla                                              ; $76c7: $17
	ld [hl], a                                       ; $76c8: $77
	rst SubAFromHL                                          ; $76c9: $d7
	db $dd                                           ; $76ca: $dd
	rst $38                                          ; $76cb: $ff
	sbc [hl]                                         ; $76cc: $9e
	ld sp, hl                                        ; $76cd: $f9
	sbc $f8                                          ; $76ce: $de $f8
	sbc h                                            ; $76d0: $9c
	db $db                                           ; $76d1: $db
	sbc l                                            ; $76d2: $9d
	sbc l                                            ; $76d3: $9d
	call c, $dc9f                                    ; $76d4: $dc $9f $dc

jr_05b_76d7:
	rst $38                                          ; $76d7: $ff
	ld a, [hl]                                       ; $76d8: $7e
	dec a                                            ; $76d9: $3d
	adc l                                            ; $76da: $8d
	rra                                              ; $76db: $1f
	ld l, a                                          ; $76dc: $6f
	daa                                              ; $76dd: $27
	and a                                            ; $76de: $a7
	or a                                             ; $76df: $b7
	or a                                             ; $76e0: $b7
	rst FarCall                                          ; $76e1: $f7
	rst FarCall                                          ; $76e2: $f7
	rst $38                                          ; $76e3: $ff
	and d                                            ; $76e4: $a2
	ret z                                            ; $76e5: $c8

	rst SubAFromDE                                          ; $76e6: $df
	rst $38                                          ; $76e7: $ff
	ld a, [hl]                                       ; $76e8: $7e
	cp a                                             ; $76e9: $bf
	cp e                                             ; $76ea: $bb
	cp l                                             ; $76eb: $bd
	ret z                                            ; $76ec: $c8

	sbc $aa                                          ; $76ed: $de $aa
	adc c                                            ; $76ef: $89
	xor e                                            ; $76f0: $ab
	ld l, e                                          ; $76f1: $6b
	ld l, [hl]                                       ; $76f2: $6e
	ld l, [hl]                                       ; $76f3: $6e
	or l                                             ; $76f4: $b5
	ld d, a                                          ; $76f5: $57
	ld d, a                                          ; $76f6: $57
	ld e, l                                          ; $76f7: $5d
	rst $38                                          ; $76f8: $ff
	rst $38                                          ; $76f9: $ff
	cp a                                             ; $76fa: $bf
	ei                                               ; $76fb: $fb
	ld l, a                                          ; $76fc: $6f
	rst $38                                          ; $76fd: $ff
	ld sp, hl                                        ; $76fe: $f9
	or $a6                                           ; $76ff: $f6 $a6
	ld b, h                                          ; $7701: $44
	ret nz                                           ; $7702: $c0

	call nz, Call_05b_407f                           ; $7703: $c4 $7f $40
	db $db                                           ; $7706: $db
	rst $38                                          ; $7707: $ff
	ld a, c                                          ; $7708: $79
	add $db                                          ; $7709: $c6 $db
	rst $38                                          ; $770b: $ff
	sbc b                                            ; $770c: $98
	inc bc                                           ; $770d: $03
	cp $fd                                           ; $770e: $fe $fd
	rst $38                                          ; $7710: $ff
	ei                                               ; $7711: $fb
	ld a, [$7afe]                                    ; $7712: $fa $fe $7a
	rst SubAFromDE                                          ; $7715: $df
	ld a, a                                          ; $7716: $7f
	rst FarCall                                          ; $7717: $f7
	ld a, [hl]                                       ; $7718: $7e
	pop af                                           ; $7719: $f1
	rst SubAFromDE                                          ; $771a: $df
	rst $38                                          ; $771b: $ff
	sub a                                            ; $771c: $97
	ld d, b                                          ; $771d: $50
	ld a, a                                          ; $771e: $7f
	ld [$0ba5], sp                                   ; $771f: $08 $a5 $0b
	ld d, [hl]                                       ; $7722: $56
	cp a                                             ; $7723: $bf
	ldh [$78], a                                     ; $7724: $e0 $78
	adc $93                                          ; $7726: $ce $93
	ld e, e                                          ; $7728: $5b
	and l                                            ; $7729: $a5
	xor l                                            ; $772a: $ad
	cp $ff                                           ; $772b: $fe $ff
	ld e, $ff                                        ; $772d: $1e $ff
	rst SubAFromDE                                          ; $772f: $df
	ld h, e                                          ; $7730: $63
	ld [hl], e                                       ; $7731: $73
	or e                                             ; $7732: $b3
	or l                                             ; $7733: $b5
	ld a, d                                          ; $7734: $7a
	xor a                                            ; $7735: $af
	sbc [hl]                                         ; $7736: $9e
	rst SubAFromBC                                          ; $7737: $e7
	ld [hl], d                                       ; $7738: $72
	adc $85                                          ; $7739: $ce $85
	rst SubAFromBC                                          ; $773b: $e7

jr_05b_773c:
	rst JumpTable                                          ; $773c: $c7
	pop bc                                           ; $773d: $c1
	sub l                                            ; $773e: $95
	adc e                                            ; $773f: $8b
	db $e4                                           ; $7740: $e4
	adc [hl]                                         ; $7741: $8e
	ld a, a                                          ; $7742: $7f
	ld b, e                                          ; $7743: $43
	ret nz                                           ; $7744: $c0

	ret nz                                           ; $7745: $c0

	set 6, a                                         ; $7746: $cb $f7
	rst $38                                          ; $7748: $ff
	rst $38                                          ; $7749: $ff
	ld [hl], c                                       ; $774a: $71
	ret nz                                           ; $774b: $c0

	call nz, $ff6f                                   ; $774c: $c4 $6f $ff
	ret                                              ; $774f: $c9


	ld d, c                                          ; $7750: $51
	ld a, [$e0f0]                                    ; $7751: $fa $f0 $e0
	jp Jump_05b_5f7a                                 ; $7754: $c3 $7a $5f


	sub e                                            ; $7757: $93
	ldh [$61], a                                     ; $7758: $e0 $61
	ld d, d                                          ; $775a: $52
	xor d                                            ; $775b: $aa
	ld h, [hl]                                       ; $775c: $66
	cp $12                                           ; $775d: $fe $12
	ret                                              ; $775f: $c9


	ld l, l                                          ; $7760: $6d
	and h                                            ; $7761: $a4
	cp $7e                                           ; $7762: $fe $7e
	ld a, e                                          ; $7764: $7b
	cp a                                             ; $7765: $bf
	ld a, e                                          ; $7766: $7b
	ld h, [hl]                                       ; $7767: $66
	sub l                                            ; $7768: $95
	ld a, [hl]                                       ; $7769: $7e
	ld sp, hl                                        ; $776a: $f9
	or $e8                                           ; $776b: $f6 $e8
	or b                                             ; $776d: $b0
	ld b, b                                          ; $776e: $40
	add b                                            ; $776f: $80
	add b                                            ; $7770: $80
	ld bc, $7907                                     ; $7771: $01 $07 $79
	sbc e                                            ; $7774: $9b
	ld [hl], a                                       ; $7775: $77
	adc b                                            ; $7776: $88

Call_05b_7777:
	add hl, hl                                       ; $7777: $29
	sbc b                                            ; $7778: $98
	reti                                             ; $7779: $d9


	rst $38                                          ; $777a: $ff
	ld h, l                                          ; $777b: $65
	ld h, b                                          ; $777c: $60
	reti                                             ; $777d: $d9


Jump_05b_777e:
	rst $38                                          ; $777e: $ff
	add b                                            ; $777f: $80
	ld [bc], a                                       ; $7780: $02
	add hl, bc                                       ; $7781: $09
	inc bc                                           ; $7782: $03
	inc bc                                           ; $7783: $03
	rla                                              ; $7784: $17
	rla                                              ; $7785: $17
	ld e, $1e                                        ; $7786: $1e $1e
	ld bc, $0c06                                     ; $7788: $01 $06 $0c
	inc c                                            ; $778b: $0c
	ld [$0108], sp                                   ; $778c: $08 $08 $01
	ld bc, $f93a                                     ; $778f: $01 $3a $f9
	db $fd                                           ; $7792: $fd
	ld l, h                                          ; $7793: $6c
	ld c, h                                          ; $7794: $4c
	ld c, [hl]                                       ; $7795: $4e
	halt                                             ; $7796: $76
	rst FarCall                                          ; $7797: $f7
	rst JumpTable                                          ; $7798: $c7
	rlca                                             ; $7799: $07
	inc bc                                           ; $779a: $03
	sub e                                            ; $779b: $93
	or e                                             ; $779c: $b3
	or c                                             ; $779d: $b1
	xor c                                            ; $779e: $a9
	adc a                                            ; $779f: $8f
	jr z, @+$21                                      ; $77a0: $28 $1f

	rra                                              ; $77a2: $1f
	rrca                                             ; $77a3: $0f
	adc a                                            ; $77a4: $8f
	add a                                            ; $77a5: $87
	add e                                            ; $77a6: $83
	ld b, b                                          ; $77a7: $40
	jr nz, jr_05b_773c                               ; $77a8: $20 $92

	jp nc, $e8c8                                     ; $77aa: $d2 $c8 $e8

	db $e4                                           ; $77ad: $e4
	di                                               ; $77ae: $f3
	ld hl, sp+$77                                    ; $77af: $f8 $77
	ld a, $77                                        ; $77b1: $3e $77
	ld e, d                                          ; $77b3: $5a
	sbc h                                            ; $77b4: $9c
	nop                                              ; $77b5: $00
	ld h, a                                          ; $77b6: $67
	inc e                                            ; $77b7: $1c
	halt                                             ; $77b8: $76
	ld [$c278], sp                                   ; $77b9: $08 $78 $c2
	sub b                                            ; $77bc: $90
	pop af                                           ; $77bd: $f1
	pop hl                                           ; $77be: $e1
	db $e3                                           ; $77bf: $e3
	jp $0787                                         ; $77c0: $c3 $87 $07


	ld c, $17                                        ; $77c3: $0e $17
	rla                                              ; $77c5: $17
	daa                                              ; $77c6: $27
	cpl                                              ; $77c7: $2f
	ld c, a                                          ; $77c8: $4f
	sbc [hl]                                         ; $77c9: $9e
	dec a                                            ; $77ca: $3d
	rst $38                                          ; $77cb: $ff
	sbc $f0                                          ; $77cc: $de $f0
	rst SubAFromDE                                          ; $77ce: $df
	ldh [$7a], a                                     ; $77cf: $e0 $7a
	ld l, [hl]                                       ; $77d1: $6e
	sbc $1f                                          ; $77d2: $de $1f
	rst SubAFromDE                                          ; $77d4: $df
	ccf                                              ; $77d5: $3f
	ld a, e                                          ; $77d6: $7b
	ld l, a                                          ; $77d7: $6f
	sub l                                            ; $77d8: $95
	rra                                              ; $77d9: $1f
	cpl                                              ; $77da: $2f
	ld a, a                                          ; $77db: $7f
	ld a, a                                          ; $77dc: $7f
	ld [hl], a                                       ; $77dd: $77
	rst $38                                          ; $77de: $ff
	db $db                                           ; $77df: $db
	rst SubAFromDE                                          ; $77e0: $df
	rst $38                                          ; $77e1: $ff
	rst SubAFromDE                                          ; $77e2: $df
	sbc $8f                                          ; $77e3: $de $8f
	sbc c                                            ; $77e5: $99
	rlca                                             ; $77e6: $07
	daa                                              ; $77e7: $27
	inc hl                                           ; $77e8: $23
	rst $38                                          ; $77e9: $ff

Jump_05b_77ea:
	rst $38                                          ; $77ea: $ff
	ld hl, sp+$77                                    ; $77eb: $f8 $77

Jump_05b_77ed:
	sbc $99                                          ; $77ed: $de $99
	ldh [$5e], a                                     ; $77ef: $e0 $5e
	ld e, a                                          ; $77f1: $5f
	ld e, h                                          ; $77f2: $5c
	ret c                                            ; $77f3: $d8

	ret nc                                           ; $77f4: $d0

	ld a, e                                          ; $77f5: $7b
	rst FarCall                                          ; $77f6: $f7
	rst SubAFromDE                                          ; $77f7: $df

Jump_05b_77f8:
	rst $38                                          ; $77f8: $ff
	sub h                                            ; $77f9: $94
	ld a, $0e                                        ; $77fa: $3e $0e
	ld [bc], a                                       ; $77fc: $02
	ld bc, $0402                                     ; $77fd: $01 $02 $04
	ld bc, $33c5                                     ; $7800: $01 $c5 $33
	rrca                                             ; $7803: $0f
	inc bc                                           ; $7804: $03
	ld a, d                                          ; $7805: $7a
	ld a, e                                          ; $7806: $7b
	adc a                                            ; $7807: $8f
	rst $38                                          ; $7808: $ff
	cpl                                              ; $7809: $2f
	sub a                                            ; $780a: $97
	inc de                                           ; $780b: $13
	inc e                                            ; $780c: $1c
	adc h                                            ; $780d: $8c
	ld b, a                                          ; $780e: $47
	pop hl                                           ; $780f: $e1
	rst $38                                          ; $7810: $ff
	rst SubAFromDE                                          ; $7811: $df
	inc bc                                           ; $7812: $03
	ld bc, $870b                                     ; $7813: $01 $0b $87
	jp $7be1                                         ; $7816: $c3 $e1 $7b


	adc a                                            ; $7819: $8f
	sbc e                                            ; $781a: $9b
	rst GetHLinHL                                          ; $781b: $cf
	add a                                            ; $781c: $87
	ld b, e                                          ; $781d: $43
	di                                               ; $781e: $f3
	jp c, $96ff                                      ; $781f: $da $ff $96

	cp a                                             ; $7822: $bf
	rrca                                             ; $7823: $0f
	cp l                                             ; $7824: $bd
	rst FarCall                                          ; $7825: $f7
	reti                                             ; $7826: $d9


	push de                                          ; $7827: $d5
	jp $dfee                                         ; $7828: $c3 $ee $df


	ld a, d                                          ; $782b: $7a
	ld e, e                                          ; $782c: $5b
	adc l                                            ; $782d: $8d
	pop af                                           ; $782e: $f1
	ldh [$e4], a                                     ; $782f: $e0 $e4
	pop af                                           ; $7831: $f1
	ei                                               ; $7832: $fb
	db $fc                                           ; $7833: $fc
	push af                                          ; $7834: $f5
	or $77                                           ; $7835: $f6 $77
	sbc $3f                                          ; $7837: $de $3f
	cp [hl]                                          ; $7839: $be
	cp $5a                                           ; $783a: $fe $5a
	rst $38                                          ; $783c: $ff
	rst $38                                          ; $783d: $ff
	sbc $7e                                          ; $783e: $de $7e
	ld a, e                                          ; $7840: $7b

Call_05b_7841:
	call nc, $e780                                   ; $7841: $d4 $80 $e7
	ld d, e                                          ; $7844: $53
	daa                                              ; $7845: $27
	sub [hl]                                         ; $7846: $96
	inc c                                            ; $7847: $0c
	ld c, c                                          ; $7848: $49
	ld e, l                                          ; $7849: $5d
	ld [hl], a                                       ; $784a: $77
	ld a, l                                          ; $784b: $7d
	xor a                                            ; $784c: $af
	ld c, a                                          ; $784d: $4f
	ld c, a                                          ; $784e: $4f
	rst SubAFromDE                                          ; $784f: $df
	sbc [hl]                                         ; $7850: $9e
	sbc d                                            ; $7851: $9a
	sbc b                                            ; $7852: $98
	sub d                                            ; $7853: $92
	and $cd                                          ; $7854: $e6 $cd
	sub [hl]                                         ; $7856: $96
	or e                                             ; $7857: $b3
	dec [hl]                                         ; $7858: $35
	db $dd                                           ; $7859: $dd
	sub $aa                                          ; $785a: $d6 $aa
	ld sp, hl                                        ; $785c: $f9
	cp $ef                                           ; $785d: $fe $ef
	rst SubAFromBC                                          ; $785f: $e7
	db $e3                                           ; $7860: $e3
	sub e                                            ; $7861: $93
	sub l                                            ; $7862: $95
	sbc c                                            ; $7863: $99
	db $dd                                           ; $7864: $dd
	ld d, h                                          ; $7865: $54
	dec c                                            ; $7866: $0d
	add a                                            ; $7867: $87
	ld c, e                                          ; $7868: $4b
	dec h                                            ; $7869: $25
	inc de                                           ; $786a: $13
	adc c                                            ; $786b: $89
	ld b, l                                          ; $786c: $45
	ld [hl], d                                       ; $786d: $72
	jp nz, $ffde                                     ; $786e: $c2 $de $ff

	ld l, c                                          ; $7871: $69
	adc d                                            ; $7872: $8a
	ld [hl+], a                                      ; $7873: $22
	ret nc                                           ; $7874: $d0

	rlca                                             ; $7875: $07
	ldh a, [$9a]                                     ; $7876: $f0 $9a
	call c, $187c                                    ; $7878: $dc $7c $18
	inc b                                            ; $787b: $04
	inc bc                                           ; $787c: $03
	sbc $01                                          ; $787d: $de $01
	sbc [hl]                                         ; $787f: $9e
	add e                                            ; $7880: $83

jr_05b_7881:
	ld [hl], c                                       ; $7881: $71
	ld l, $77                                        ; $7882: $2e $77
	ld e, l                                          ; $7884: $5d
	sub h                                            ; $7885: $94
	rst SubAFromDE                                          ; $7886: $df
	ld a, a                                          ; $7887: $7f
	cp a                                             ; $7888: $bf
	ld a, a                                          ; $7889: $7f
	ld a, a                                          ; $788a: $7f
	rst $38                                          ; $788b: $ff
	jr nc, jr_05b_78ee                               ; $788c: $30 $60

	ld h, b                                          ; $788e: $60
	ret nz                                           ; $788f: $c0

	ret nz                                           ; $7890: $c0

	ld a, e                                          ; $7891: $7b
	and h                                            ; $7892: $a4
	sbc e                                            ; $7893: $9b
	ld hl, sp-$0a                                    ; $7894: $f8 $f6
	ld sp, hl                                        ; $7896: $f9
	db $fc                                           ; $7897: $fc
	ld a, e                                          ; $7898: $7b
	ld l, b                                          ; $7899: $68
	sbc [hl]                                         ; $789a: $9e
	rst JumpTable                                          ; $789b: $c7
	ld a, c                                          ; $789c: $79
	ld [hl], c                                       ; $789d: $71
	ld a, a                                          ; $789e: $7f
	reti                                             ; $789f: $d9


	rst $38                                          ; $78a0: $ff
	sbc [hl]                                         ; $78a1: $9e
	jr c, jr_05b_791b                                ; $78a2: $38 $77

	add $9d                                          ; $78a4: $c6 $9d
	ld a, l                                          ; $78a6: $7d
	sbc e                                            ; $78a7: $9b
	ld [hl], d                                       ; $78a8: $72
	dec d                                            ; $78a9: $15
	sbc b                                            ; $78aa: $98
	nop                                              ; $78ab: $00
	add d                                            ; $78ac: $82
	ld h, h                                          ; $78ad: $64
	jr jr_05b_78b0                                   ; $78ae: $18 $00

jr_05b_78b0:
	jr nc, jr_05b_7881                               ; $78b0: $30 $cf

	jp c, $9eff                                      ; $78b2: $da $ff $9e

	ldh a, [$fb]                                     ; $78b5: $f0 $fb
	sbc h                                            ; $78b7: $9c
	add hl, bc                                       ; $78b8: $09
	dec bc                                           ; $78b9: $0b
	add e                                            ; $78ba: $83
	sbc $cf                                          ; $78bb: $de $cf
	rst SubAFromDE                                          ; $78bd: $df
	adc e                                            ; $78be: $8b
	sbc h                                            ; $78bf: $9c
	or $f4                                           ; $78c0: $f6 $f4
	ld a, h                                          ; $78c2: $7c
	sbc $38                                          ; $78c3: $de $38
	sbc l                                            ; $78c5: $9d
	ld a, h                                          ; $78c6: $7c
	ld a, a                                          ; $78c7: $7f
	ld a, e                                          ; $78c8: $7b
	ld c, d                                          ; $78c9: $4a
	ld a, [hl]                                       ; $78ca: $7e
	sbc a                                            ; $78cb: $9f
	add b                                            ; $78cc: $80
	ldh a, [c]                                       ; $78cd: $f2
	di                                               ; $78ce: $f3
	rst $38                                          ; $78cf: $ff
	ld de, $1d19                                     ; $78d0: $11 $19 $1d
	rra                                              ; $78d3: $1f
	ld e, $0e                                        ; $78d4: $1e $0e
	ld c, $fe                                        ; $78d6: $0e $fe
	ldh [$e0], a                                     ; $78d8: $e0 $e0
	db $10                                           ; $78da: $10
	db $10                                           ; $78db: $10
	jr @+$0a                                         ; $78dc: $18 $08

	dec c                                            ; $78de: $0d
	dec c                                            ; $78df: $0d
	ldh [$f0], a                                     ; $78e0: $e0 $f0
	or b                                             ; $78e2: $b0
	add hl, de                                       ; $78e3: $19
	ld [$050d], sp                                   ; $78e4: $08 $0d $05
	rlca                                             ; $78e7: $07
	dec b                                            ; $78e8: $05
	add hl, bc                                       ; $78e9: $09
	ld a, [bc]                                       ; $78ea: $0a
	ld a, [$7f92]                                    ; $78eb: $fa $92 $7f

jr_05b_78ee:
	rst JumpTable                                          ; $78ee: $c7
	adc a                                            ; $78ef: $8f
	sbc a                                            ; $78f0: $9f
	rlca                                             ; $78f1: $07
	rrca                                             ; $78f2: $0f
	ld e, $fe                                        ; $78f3: $1e $fe
	rst AddAOntoHL                                          ; $78f5: $ef
	add c                                            ; $78f6: $81
	nop                                              ; $78f7: $00
	inc bc                                           ; $78f8: $03
	cp a                                             ; $78f9: $bf
	sbc $0f                                          ; $78fa: $de $0f
	ld a, c                                          ; $78fc: $79
	ld c, e                                          ; $78fd: $4b
	sbc h                                            ; $78fe: $9c
	ret nz                                           ; $78ff: $c0

	rra                                              ; $7900: $1f
	inc bc                                           ; $7901: $03
	cp $9d                                           ; $7902: $fe $9d
	ret nz                                           ; $7904: $c0

	ccf                                              ; $7905: $3f
	reti                                             ; $7906: $d9


	rst $38                                          ; $7907: $ff
	sub d                                            ; $7908: $92
	ccf                                              ; $7909: $3f
	db $e3                                           ; $790a: $e3
	ld bc, $33c1                                     ; $790b: $01 $c1 $33
	inc c                                            ; $790e: $0c
	nop                                              ; $790f: $00
	ret nz                                           ; $7910: $c0

	db $fc                                           ; $7911: $fc
	ei                                               ; $7912: $fb
	sub b                                            ; $7913: $90
	ld c, $f1                                        ; $7914: $0e $f1
	db $dd                                           ; $7916: $dd
	ret nz                                           ; $7917: $c0

	ld a, a                                          ; $7918: $7f
	ld h, [hl]                                       ; $7919: $66
	sbc h                                            ; $791a: $9c

jr_05b_791b:
	ld c, $ff                                        ; $791b: $0e $ff
	ret nz                                           ; $791d: $c0

	sbc $40                                          ; $791e: $de $40
	add b                                            ; $7920: $80
	jp $0783                                         ; $7921: $c3 $83 $07


	sub a                                            ; $7924: $97
	ld [hl], a                                       ; $7925: $77
	ld l, a                                          ; $7926: $6f
	cpl                                              ; $7927: $2f
	rra                                              ; $7928: $1f
	add e                                            ; $7929: $83
	ld bc, $9101                                     ; $792a: $01 $01 $91
	pop hl                                           ; $792d: $e1
	ld h, c                                          ; $792e: $61
	ld h, c                                          ; $792f: $61
	inc sp                                           ; $7930: $33
	dec [hl]                                         ; $7931: $35
	or [hl]                                          ; $7932: $b6
	xor d                                            ; $7933: $aa
	db $eb                                           ; $7934: $eb
	rst AddAOntoHL                                          ; $7935: $ef
	adc $5d                                          ; $7936: $ce $5d
	ld e, a                                          ; $7938: $5f
	jp c, Jump_05b_5f5b                              ; $7939: $da $5b $5f

	ld e, a                                          ; $793c: $5f
	ld e, [hl]                                       ; $793d: $5e
	ld a, a                                          ; $793e: $7f
	cp $86                                           ; $793f: $fe $86
	ei                                               ; $7941: $fb
	push bc                                          ; $7942: $c5
	and $57                                          ; $7943: $e6 $57
	ld e, a                                          ; $7945: $5f
	xor a                                            ; $7946: $af
	rst $38                                          ; $7947: $ff
	rst SubAFromDE                                          ; $7948: $df
	cp a                                             ; $7949: $bf
	cp $ff                                           ; $794a: $fe $ff
	db $fd                                           ; $794c: $fd
	db $fc                                           ; $794d: $fc
	or $d9                                           ; $794e: $f6 $d9
	ld hl, $23c0                                     ; $7950: $21 $c0 $23
	add hl, de                                       ; $7953: $19
	rrca                                             ; $7954: $0f
	jp $9ff1                                         ; $7955: $c3 $f1 $9f


	rst SubAFromDE                                          ; $7958: $df
	push af                                          ; $7959: $f5
	call c, $9bff                                    ; $795a: $dc $ff $9b
	sbc a                                            ; $795d: $9f
	cp d                                             ; $795e: $ba
	ld a, d                                          ; $795f: $7a
	nop                                              ; $7960: $00
	ld [hl], b                                       ; $7961: $70
	ld b, a                                          ; $7962: $47
	rst SubAFromDE                                          ; $7963: $df
	add b                                            ; $7964: $80
	ld [bc], a                                       ; $7965: $02
	ret nc                                           ; $7966: $d0

	dec hl                                           ; $7967: $2b
	ldh a, [$97]                                     ; $7968: $f0 $97
	add d                                            ; $796a: $82
	add $ec                                          ; $796b: $c6 $ec
	ld hl, sp-$04                                    ; $796d: $f8 $fc
	ld sp, hl                                        ; $796f: $f9
	ldh a, [$f0]                                     ; $7970: $f0 $f0
	ld [hl], h                                       ; $7972: $74
	sbc h                                            ; $7973: $9c
	sbc e                                            ; $7974: $9b
	dec de                                           ; $7975: $1b
	db $10                                           ; $7976: $10
	jr nc, jr_05b_79a9                               ; $7977: $30 $30

	ld a, c                                          ; $7979: $79
	dec l                                            ; $797a: $2d
	ld a, e                                          ; $797b: $7b
	or $9d                                           ; $797c: $f6 $9d
	rrca                                             ; $797e: $0f
	add c                                            ; $797f: $81
	ld [hl], a                                       ; $7980: $77
	xor b                                            ; $7981: $a8
	ld a, h                                          ; $7982: $7c
	ld c, h                                          ; $7983: $4c
	sbc e                                            ; $7984: $9b
	ldh a, [$7e]                                     ; $7985: $f0 $7e
	ldh a, [$fc]                                     ; $7987: $f0 $fc
	db $dd                                           ; $7989: $dd
	rst $38                                          ; $798a: $ff
	sbc h                                            ; $798b: $9c
	ld hl, sp-$20                                    ; $798c: $f8 $e0
	rrca                                             ; $798e: $0f
	ld [hl], a                                       ; $798f: $77
	jr nc, @-$65                                     ; $7990: $30 $99

	nop                                              ; $7992: $00
	rlca                                             ; $7993: $07
	rra                                              ; $7994: $1f
	ccf                                              ; $7995: $3f
	nop                                              ; $7996: $00
	add a                                            ; $7997: $87
	sbc $ff                                          ; $7998: $de $ff
	sbc d                                            ; $799a: $9a
	rrca                                             ; $799b: $0f
	ld bc, $ffc0                                     ; $799c: $01 $c0 $ff
	ld a, b                                          ; $799f: $78
	cp $99                                           ; $79a0: $fe $99
	ldh a, [$fe]                                     ; $79a2: $f0 $fe
	rst $38                                          ; $79a4: $ff
	ld a, $f8                                        ; $79a5: $3e $f8
	pop af                                           ; $79a7: $f1
	ld a, c                                          ; $79a8: $79

jr_05b_79a9:
	ld [hl], b                                       ; $79a9: $70
	sbc d                                            ; $79aa: $9a
	ld hl, sp+$00                                    ; $79ab: $f8 $00
	pop bc                                           ; $79ad: $c1
	rlca                                             ; $79ae: $07
	ld c, $79                                        ; $79af: $0e $79
	ld l, a                                          ; $79b1: $6f
	sbc [hl]                                         ; $79b2: $9e
	rlca                                             ; $79b3: $07
	ld a, c                                          ; $79b4: $79
	dec sp                                           ; $79b5: $3b
	sbc e                                            ; $79b6: $9b
	ld [$3310], sp                                   ; $79b7: $08 $10 $33
	ld [hl], a                                       ; $79ba: $77
	jp c, $9dff                                      ; $79bb: $da $ff $9d

	db $fc                                           ; $79be: $fc
	ret c                                            ; $79bf: $d8

	ld [hl], l                                       ; $79c0: $75
	db $10                                           ; $79c1: $10
	sbc e                                            ; $79c2: $9b
	ld a, h                                          ; $79c3: $7c
	cp $8f                                           ; $79c4: $fe $8f
	rlca                                             ; $79c6: $07
	call c, $89ff                                    ; $79c7: $dc $ff $89
	add a                                            ; $79ca: $87
	inc bc                                           ; $79cb: $03

jr_05b_79cc:
	ld bc, $fcbf                                     ; $79cc: $01 $bf $fc
	adc h                                            ; $79cf: $8c
	add h                                            ; $79d0: $84
	db $e4                                           ; $79d1: $e4
	cp h                                             ; $79d2: $bc
	inc e                                            ; $79d3: $1c
	dec c                                            ; $79d4: $0d
	inc bc                                           ; $79d5: $03
	rst $38                                          ; $79d6: $ff
	add a                                            ; $79d7: $87
	add a                                            ; $79d8: $87
	rst $38                                          ; $79d9: $ff
	rst SubAFromDE                                          ; $79da: $df
	rlca                                             ; $79db: $07
	rrca                                             ; $79dc: $0f
	db $fc                                           ; $79dd: $fc
	rst $38                                          ; $79de: $ff
	ld l, a                                          ; $79df: $6f
	ld a, c                                          ; $79e0: $79
	sub $9b                                          ; $79e1: $d6 $9b
	sbc a                                            ; $79e3: $9f
	cp a                                             ; $79e4: $bf
	rra                                              ; $79e5: $1f
	rst $38                                          ; $79e6: $ff
	halt                                             ; $79e7: $76
	db $eb                                           ; $79e8: $eb
	ld a, [hl]                                       ; $79e9: $7e
	ld [$0f9d], a                                    ; $79ea: $ea $9d $0f
	rst $38                                          ; $79ed: $ff
	ld a, d                                          ; $79ee: $7a
	ld d, d                                          ; $79ef: $52
	rst SubAFromDE                                          ; $79f0: $df
	cp $df                                           ; $79f1: $fe $df
	rst $38                                          ; $79f3: $ff
	sbc h                                            ; $79f4: $9c
	di                                               ; $79f5: $f3
	inc bc                                           ; $79f6: $03
	inc bc                                           ; $79f7: $03
	sbc $04                                          ; $79f8: $de $04
	adc [hl]                                         ; $79fa: $8e
	ld b, [hl]                                       ; $79fb: $46
	rst $38                                          ; $79fc: $ff
	db $fc                                           ; $79fd: $fc
	ld a, b                                          ; $79fe: $78
	db $10                                           ; $79ff: $10
	and b                                            ; $7a00: $a0
	ldh [rSVBK], a                                   ; $7a01: $e0 $70
	jr c, jr_05b_79cc                                ; $7a03: $38 $c7

	add h                                            ; $7a05: $84
	ret z                                            ; $7a06: $c8

	ldh a, [$e0]                                     ; $7a07: $f0 $e0
	ld h, b                                          ; $7a09: $60
	jr nc, jr_05b_7a2a                               ; $7a0a: $30 $1e

	ld a, b                                          ; $7a0c: $78
	and b                                            ; $7a0d: $a0
	sbc d                                            ; $7a0e: $9a
	ld [bc], a                                       ; $7a0f: $02
	ld b, d                                          ; $7a10: $42
	ld [hl+], a                                      ; $7a11: $22
	ld [de], a                                       ; $7a12: $12
	dec bc                                           ; $7a13: $0b
	ld l, l                                          ; $7a14: $6d
	jp z, $8fff                                      ; $7a15: $ca $ff $8f

	cpl                                              ; $7a18: $2f
	scf                                              ; $7a19: $37
	rla                                              ; $7a1a: $17
	rra                                              ; $7a1b: $1f
	rrca                                             ; $7a1c: $0f
	ld l, a                                          ; $7a1d: $6f
	ld a, a                                          ; $7a1e: $7f
	ld a, a                                          ; $7a1f: $7f
	rra                                              ; $7a20: $1f
	rrca                                             ; $7a21: $0f
	rrca                                             ; $7a22: $0f
	ld b, $06                                        ; $7a23: $06 $06
	inc b                                            ; $7a25: $04
	inc b                                            ; $7a26: $04
	dec b                                            ; $7a27: $05
	ld a, e                                          ; $7a28: $7b
	push bc                                          ; $7a29: $c5

jr_05b_7a2a:
	adc c                                            ; $7a2a: $89
	db $fd                                           ; $7a2b: $fd
	cp [hl]                                          ; $7a2c: $be
	cp a                                             ; $7a2d: $bf
	sbc a                                            ; $7a2e: $9f
	rra                                              ; $7a2f: $1f
	ldh a, [c]                                       ; $7a30: $f2
	rst SubAFromHL                                          ; $7a31: $d7
	adc c                                            ; $7a32: $89
	adc h                                            ; $7a33: $8c
	adc d                                            ; $7a34: $8a
	adc d                                            ; $7a35: $8a
	add l                                            ; $7a36: $85
	rlca                                             ; $7a37: $07
	ld h, [hl]                                       ; $7a38: $66
	ldh [$a0], a                                     ; $7a39: $e0 $a0
	db $fc                                           ; $7a3b: $fc
	ret c                                            ; $7a3c: $d8

	nop                                              ; $7a3d: $00
	ld b, $86                                        ; $7a3e: $06 $86
	ld b, b                                          ; $7a40: $40
	sbc $c0                                          ; $7a41: $de $c0
	sbc b                                            ; $7a43: $98
	ld [$0600], sp                                   ; $7a44: $08 $00 $06
	ld [bc], a                                       ; $7a47: $02
	scf                                              ; $7a48: $37
	rrca                                             ; $7a49: $0f
	rlca                                             ; $7a4a: $07
	sbc $0f                                          ; $7a4b: $de $0f
	rst SubAFromDE                                          ; $7a4d: $df
	rra                                              ; $7a4e: $1f
	adc a                                            ; $7a4f: $8f
	ld a, b                                          ; $7a50: $78
	ld sp, $0101                                     ; $7a51: $31 $01 $01
	inc bc                                           ; $7a54: $03
	inc bc                                           ; $7a55: $03
	rlca                                             ; $7a56: $07
	rrca                                             ; $7a57: $0f
	ret nz                                           ; $7a58: $c0

	ret nz                                           ; $7a59: $c0

	ldh [$b0], a                                     ; $7a5a: $e0 $b0
	sub b                                            ; $7a5c: $90
	sbc b                                            ; $7a5d: $98
	adc h                                            ; $7a5e: $8c
	add [hl]                                         ; $7a5f: $86
	ld a, d                                          ; $7a60: $7a
	ld e, l                                          ; $7a61: $5d
	ld a, b                                          ; $7a62: $78
	sub l                                            ; $7a63: $95
	ld a, l                                          ; $7a64: $7d
	call c, $c002                                    ; $7a65: $dc $02 $c0
	ld c, e                                          ; $7a68: $4b
	ldh a, [hDisp1_BGP]                                     ; $7a69: $f0 $92
	db $f4                                           ; $7a6b: $f4
	ld hl, sp+$69                                    ; $7a6c: $f8 $69
	call nz, $fee0                                   ; $7a6e: $c4 $e0 $fe
	add e                                            ; $7a71: $83
	nop                                              ; $7a72: $00
	ld [hl], e                                       ; $7a73: $73
	ld [hl], a                                       ; $7a74: $77
	ret nc                                           ; $7a75: $d0

	ret z                                            ; $7a76: $c8

	ret nz                                           ; $7a77: $c0

	ld a, d                                          ; $7a78: $7a
	call nc, $e08a                                   ; $7a79: $d4 $8a $e0
	ld a, b                                          ; $7a7c: $78
	ccf                                              ; $7a7d: $3f
	add [hl]                                         ; $7a7e: $86
	db $10                                           ; $7a7f: $10
	rlca                                             ; $7a80: $07

Jump_05b_7a81:
	and c                                            ; $7a81: $a1
	ld a, l                                          ; $7a82: $7d
	rra                                              ; $7a83: $1f
	add a                                            ; $7a84: $87
	ret nz                                           ; $7a85: $c0

	ld a, c                                          ; $7a86: $79
	rrca                                             ; $7a87: $0f
	nop                                              ; $7a88: $00
	ret nz                                           ; $7a89: $c0

	cp $07                                           ; $7a8a: $fe $07
	rra                                              ; $7a8c: $1f
	ldh [rP1], a                                     ; $7a8d: $e0 $00
	pop bc                                           ; $7a8f: $c1
	ld a, d                                          ; $7a90: $7a
	cp e                                             ; $7a91: $bb
	ld a, [hl]                                       ; $7a92: $7e
	cp [hl]                                          ; $7a93: $be
	ld a, a                                          ; $7a94: $7f
	ld e, $9e                                        ; $7a95: $1e $9e
	ld a, $7a                                        ; $7a97: $3e $7a
	cp e                                             ; $7a99: $bb
	ld a, a                                          ; $7a9a: $7f
	inc e                                            ; $7a9b: $1c
	add l                                            ; $7a9c: $85
	rra                                              ; $7a9d: $1f
	ld a, a                                          ; $7a9e: $7f
	rst $38                                          ; $7a9f: $ff
	inc a                                            ; $7aa0: $3c
	ld bc, $3ff6                                     ; $7aa1: $01 $f6 $3f
	ld a, a                                          ; $7aa4: $7f
	ldh [$80], a                                     ; $7aa5: $e0 $80
	nop                                              ; $7aa7: $00
	jp $0fff                                         ; $7aa8: $c3 $ff $0f


	nop                                              ; $7aab: $00
	rlca                                             ; $7aac: $07
	cp $ff                                           ; $7aad: $fe $ff
	db $d3                                           ; $7aaf: $d3
	ld h, e                                          ; $7ab0: $63
	add a                                            ; $7ab1: $87
	dec e                                            ; $7ab2: $1d
	rst $38                                          ; $7ab3: $ff
	ld hl, sp+$01                                    ; $7ab4: $f8 $01
	rrca                                             ; $7ab6: $0f
	ld [hl], l                                       ; $7ab7: $75
	jp nc, Jump_05b_7edf                             ; $7ab8: $d2 $df $7e

	sbc b                                            ; $7abb: $98
	call z, $848c                                    ; $7abc: $cc $8c $84
	add [hl]                                         ; $7abf: $86
	add $cf                                          ; $7ac0: $c6 $cf
	ret z                                            ; $7ac2: $c8

	sbc $f8                                          ; $7ac3: $de $f8
	sbc $fc                                          ; $7ac5: $de $fc
	ld a, a                                          ; $7ac7: $7f
	ret nz                                           ; $7ac8: $c0

	rst SubAFromDE                                          ; $7ac9: $df
	rlca                                             ; $7aca: $07
	db $dd                                           ; $7acb: $dd
	inc bc                                           ; $7acc: $03
	db $db                                           ; $7acd: $db
	ld bc, $8dfe                                     ; $7ace: $01 $fe $8d
	ld e, $1d                                        ; $7ad1: $1e $1d
	rl [hl]                                          ; $7ad3: $cb $16
	sbc $ae                                          ; $7ad5: $de $ae
	rst AddAOntoHL                                          ; $7ad7: $ef
	rst AddAOntoHL                                          ; $7ad8: $ef
	rrca                                             ; $7ad9: $0f
	ld c, $3c                                        ; $7ada: $0e $3c
	ld sp, hl                                        ; $7adc: $f9
	or c                                             ; $7add: $b1
	or c                                             ; $7ade: $b1
	or b                                             ; $7adf: $b0
	rst $38                                          ; $7ae0: $ff
	rst $38                                          ; $7ae1: $ff
	rra                                              ; $7ae2: $1f
	ld [hl], a                                       ; $7ae3: $77
	ld [$537e], a                                    ; $7ae4: $ea $7e $53
	ld a, a                                          ; $7ae7: $7f
	ld a, h                                          ; $7ae8: $7c
	db $db                                           ; $7ae9: $db
	rst $38                                          ; $7aea: $ff
	sbc e                                            ; $7aeb: $9b
	ld sp, hl                                        ; $7aec: $f9
	ld hl, sp-$18                                    ; $7aed: $f8 $e8
	ld [$10dd], sp                                   ; $7aef: $08 $dd $10
	ld a, a                                          ; $7af2: $7f
	dec e                                            ; $7af3: $1d
	db $db                                           ; $7af4: $db
	rst $38                                          ; $7af5: $ff
	adc e                                            ; $7af6: $8b
	sbc [hl]                                         ; $7af7: $9e
	rst $38                                          ; $7af8: $ff
	ld a, e                                          ; $7af9: $7b

Call_05b_7afa:
	or e                                             ; $7afa: $b3
	adc e                                            ; $7afb: $8b
	sbc e                                            ; $7afc: $9b
	sbc e                                            ; $7afd: $9b
	db $db                                           ; $7afe: $db
	rlca                                             ; $7aff: $07
	add a                                            ; $7b00: $87
	rst GetHLinHL                                          ; $7b01: $cf
	ld a, a                                          ; $7b02: $7f
	ld [hl], a                                       ; $7b03: $77
	ld h, a                                          ; $7b04: $67
	ld h, a                                          ; $7b05: $67
	daa                                              ; $7b06: $27
	ret                                              ; $7b07: $c9


	or l                                             ; $7b08: $b5
	rst SubAFromHL                                          ; $7b09: $d7
	rst $38                                          ; $7b0a: $ff
	sbc $d2                                          ; $7b0b: $de $d2
	sbc e                                            ; $7b0d: $9b
	cp $00                                           ; $7b0e: $fe $00
	ret nz                                           ; $7b10: $c0

	rst SubAFromBC                                          ; $7b11: $e7
	ld a, d                                          ; $7b12: $7a
	ld d, $92                                        ; $7b13: $16 $92
	ld a, a                                          ; $7b15: $7f
	ld d, e                                          ; $7b16: $53
	ld a, a                                          ; $7b17: $7f
	ld e, [hl]                                       ; $7b18: $5e
	ld e, [hl]                                       ; $7b19: $5e
	rst $38                                          ; $7b1a: $ff
	ld c, h                                          ; $7b1b: $4c
	ld c, h                                          ; $7b1c: $4c
	ld c, [hl]                                       ; $7b1d: $4e
	xor [hl]                                         ; $7b1e: $ae
	dec b                                            ; $7b1f: $05
	ld c, $be                                        ; $7b20: $0e $be
	db $dd                                           ; $7b22: $dd
	rst $38                                          ; $7b23: $ff
	ld a, [hl]                                       ; $7b24: $7e
	cp b                                             ; $7b25: $b8
	ld a, [hl]                                       ; $7b26: $7e
	ld e, $94                                        ; $7b27: $1e $94
	ld hl, sp+$30                                    ; $7b29: $f8 $30
	jr nz, jr_05b_7b8d                               ; $7b2b: $20 $60

	ld h, b                                          ; $7b2d: $60
	inc bc                                           ; $7b2e: $03
	ld b, $08                                        ; $7b2f: $06 $08
	ldh a, [$e0]                                     ; $7b31: $f0 $e0
	ldh [$de], a                                     ; $7b33: $e0 $de
	ret nz                                           ; $7b35: $c0

	ld a, l                                          ; $7b36: $7d
	and $90                                          ; $7b37: $e6 $90
	rst SubAFromDE                                          ; $7b39: $df
	ld e, a                                          ; $7b3a: $5f
	ld e, a                                          ; $7b3b: $5f
	db $d3                                           ; $7b3c: $d3
	or b                                             ; $7b3d: $b0
	add b                                            ; $7b3e: $80
	ld h, b                                          ; $7b3f: $60
	ld e, [hl]                                       ; $7b40: $5e
	ld d, c                                          ; $7b41: $51
	ld e, b                                          ; $7b42: $58
	ld d, [hl]                                       ; $7b43: $56
	ld d, c                                          ; $7b44: $51
	and b                                            ; $7b45: $a0
	ccf                                              ; $7b46: $3f
	ld a, a                                          ; $7b47: $7f
	db $dd                                           ; $7b48: $dd
	rst $38                                          ; $7b49: $ff
	sub e                                            ; $7b4a: $93
	ei                                               ; $7b4b: $fb
	di                                               ; $7b4c: $f3
	rra                                              ; $7b4d: $1f
	dec a                                            ; $7b4e: $3d
	ld b, c                                          ; $7b4f: $41
	add c                                            ; $7b50: $81
	ld bc, $8907                                     ; $7b51: $01 $07 $89
	ld b, c                                          ; $7b54: $41
	add e                                            ; $7b55: $83
	add c                                            ; $7b56: $81
	db $db                                           ; $7b57: $db
	add b                                            ; $7b58: $80
	ld [hl], e                                       ; $7b59: $73

jr_05b_7b5a:
	ld a, d                                          ; $7b5a: $7a
	ld [hl], e                                       ; $7b5b: $73
	halt                                             ; $7b5c: $76
	sbc c                                            ; $7b5d: $99
	ret nz                                           ; $7b5e: $c0

	ld h, b                                          ; $7b5f: $60
	jr jr_05b_7b70                                   ; $7b60: $18 $0e

	inc bc                                           ; $7b62: $03
	ld bc, $b57b                                     ; $7b63: $01 $7b $b5
	ld a, [hl]                                       ; $7b66: $7e
	xor a                                            ; $7b67: $af
	sbc [hl]                                         ; $7b68: $9e
	rlca                                             ; $7b69: $07
	ld h, a                                          ; $7b6a: $67
	ld [$809d], a                                    ; $7b6b: $ea $9d $80
	ldh a, [$da]                                     ; $7b6e: $f0 $da

jr_05b_7b70:
	rst $38                                          ; $7b70: $ff
	sbc [hl]                                         ; $7b71: $9e
	ld a, a                                          ; $7b72: $7f
	ld a, [$f06d]                                    ; $7b73: $fa $6d $f0
	ld [hl], l                                       ; $7b76: $75
	or [hl]                                          ; $7b77: $b6
	sbc l                                            ; $7b78: $9d
	ccf                                              ; $7b79: $3f
	ld h, b                                          ; $7b7a: $60
	ld [hl], d                                       ; $7b7b: $72
	dec [hl]                                         ; $7b7c: $35
	ld a, h                                          ; $7b7d: $7c
	add b                                            ; $7b7e: $80
	ld a, b                                          ; $7b7f: $78
	db $ed                                           ; $7b80: $ed
	cp $9b                                           ; $7b81: $fe $9b
	jp $3cf8                                         ; $7b83: $c3 $f8 $3c


	ld b, $74                                        ; $7b86: $06 $74
	ld d, a                                          ; $7b88: $57
	ld a, [hl]                                       ; $7b89: $7e
	ld [hl], c                                       ; $7b8a: $71
	ld [hl], b                                       ; $7b8b: $70
	ld d, b                                          ; $7b8c: $50

jr_05b_7b8d:
	ld a, b                                          ; $7b8d: $78
	cp l                                             ; $7b8e: $bd
	rst $38                                          ; $7b8f: $ff
	ld a, d                                          ; $7b90: $7a
	or h                                             ; $7b91: $b4
	sbc [hl]                                         ; $7b92: $9e
	ldh [rOCPD], a                                   ; $7b93: $e0 $6b
	pop bc                                           ; $7b95: $c1
	sbc b                                            ; $7b96: $98
	ccf                                              ; $7b97: $3f
	jr c, jr_05b_7b5a                                ; $7b98: $38 $c0

	nop                                              ; $7b9a: $00
	ld bc, rIF                                     ; $7b9b: $01 $0f $ff
	ld l, a                                          ; $7b9e: $6f
	ld a, d                                          ; $7b9f: $7a
	sbc d                                            ; $7ba0: $9a
	cp $fc                                           ; $7ba1: $fe $fc
	ld hl, sp-$20                                    ; $7ba3: $f8 $e0
	ld bc, $b17a                                     ; $7ba5: $01 $7a $b1
	db $db                                           ; $7ba8: $db
	rst $38                                          ; $7ba9: $ff
	sbc [hl]                                         ; $7baa: $9e
	pop hl                                           ; $7bab: $e1
	ld l, a                                          ; $7bac: $6f
	cp b                                             ; $7bad: $b8
	ld [hl], a                                       ; $7bae: $77
	jp hl                                            ; $7baf: $e9


	ld a, a                                          ; $7bb0: $7f
	add sp, -$6b                                     ; $7bb1: $e8 $95
	ld hl, sp-$0e                                    ; $7bb3: $f8 $f2
	jp nz, Jump_05b_64e2                             ; $7bb5: $c2 $e2 $64

	inc h                                            ; $7bb8: $24
	jr jr_05b_7bcb                                   ; $7bb9: $18 $10

	db $10                                           ; $7bbb: $10
	add c                                            ; $7bbc: $81
	ld a, c                                          ; $7bbd: $79
	ld [hl], $7f                                     ; $7bbe: $36 $7f
	adc $7e                                          ; $7bc0: $ce $7e
	dec d                                            ; $7bc2: $15
	ld e, [hl]                                       ; $7bc3: $5e
	ld c, b                                          ; $7bc4: $48
	ld a, h                                          ; $7bc5: $7c
	cpl                                              ; $7bc6: $2f
	sbc [hl]                                         ; $7bc7: $9e
	db $e3                                           ; $7bc8: $e3
	sbc $c1                                          ; $7bc9: $de $c1

jr_05b_7bcb:
	sbc l                                            ; $7bcb: $9d
	ldh a, [$60]                                     ; $7bcc: $f0 $60
	db $dd                                           ; $7bce: $dd
	ld b, b                                          ; $7bcf: $40
	ld [hl], c                                       ; $7bd0: $71
	inc e                                            ; $7bd1: $1c
	sbc l                                            ; $7bd2: $9d
	ld sp, hl                                        ; $7bd3: $f9
	ei                                               ; $7bd4: $fb
	ld [hl], e                                       ; $7bd5: $73
	and [hl]                                         ; $7bd6: $a6
	rst SubAFromDE                                          ; $7bd7: $df
	rra                                              ; $7bd8: $1f
	sbc [hl]                                         ; $7bd9: $9e
	ld c, $79                                        ; $7bda: $0e $79
	ld b, e                                          ; $7bdc: $43
	sbc l                                            ; $7bdd: $9d
	jr nc, @+$72                                     ; $7bde: $30 $70

	sbc $f0                                          ; $7be0: $de $f0
	sbc $f8                                          ; $7be2: $de $f8
	ld a, b                                          ; $7be4: $78
	and e                                            ; $7be5: $a3
	ld a, c                                          ; $7be6: $79
	ldh a, [$df]                                     ; $7be7: $f0 $df
	rrca                                             ; $7be9: $0f
	sbc l                                            ; $7bea: $9d
	jp z, $ddcb                                      ; $7beb: $ca $cb $dd

	ld l, e                                          ; $7bee: $6b
	rst SubAFromDE                                          ; $7bef: $df
	ld h, a                                          ; $7bf0: $67
	sbc l                                            ; $7bf1: $9d
	scf                                              ; $7bf2: $37
	ld [hl], $dd                                     ; $7bf3: $36 $dd
	sub [hl]                                         ; $7bf5: $96
	rst SubAFromDE                                          ; $7bf6: $df
	sbc h                                            ; $7bf7: $9c
	sub a                                            ; $7bf8: $97
	cp $f6                                           ; $7bf9: $fe $f6
	or $b6                                           ; $7bfb: $f6 $b6
	or $e6                                           ; $7bfd: $f6 $e6
	and $e2                                          ; $7bff: $e6 $e2
	sbc $53                                          ; $7c01: $de $53
	sub l                                            ; $7c03: $95
	db $d3                                           ; $7c04: $d3
	sub e                                            ; $7c05: $93
	or e                                             ; $7c06: $b3
	or e                                             ; $7c07: $b3

Call_05b_7c08:
	or a                                             ; $7c08: $b7
	xor a                                            ; $7c09: $af
	and a                                            ; $7c0a: $a7
	and [hl]                                         ; $7c0b: $a6
	and [hl]                                         ; $7c0c: $a6
	and $de                                          ; $7c0d: $e6 $de
	rst SubAFromBC                                          ; $7c0f: $e7
	sbc [hl]                                         ; $7c10: $9e
	ld a, a                                          ; $7c11: $7f
	sbc $7e                                          ; $7c12: $de $7e
	sbc [hl]                                         ; $7c14: $9e
	ld a, $de                                        ; $7c15: $3e $de
	ccf                                              ; $7c17: $3f
	ld a, l                                          ; $7c18: $7d
	sbc b                                            ; $7c19: $98
	sbc h                                            ; $7c1a: $9c
	ldh [$ef], a                                     ; $7c1b: $e0 $ef
	ldh a, [$7a]                                     ; $7c1d: $f0 $7a
	dec h                                            ; $7c1f: $25
	rst SubAFromDE                                          ; $7c20: $df
	ret nz                                           ; $7c21: $c0

	sub h                                            ; $7c22: $94
	ld b, b                                          ; $7c23: $40
	ld c, a                                          ; $7c24: $4f
	ld [hl], b                                       ; $7c25: $70
	ld h, b                                          ; $7c26: $60
	ret c                                            ; $7c27: $d8

	ldh a, [$a0]                                     ; $7c28: $f0 $a0
	and e                                            ; $7c2a: $a3
	and a                                            ; $7c2b: $a7
	rst SubAFromBC                                          ; $7c2c: $e7
	db $e3                                           ; $7c2d: $e3
	ld a, e                                          ; $7c2e: $7b
	inc a                                            ; $7c2f: $3c
	db $dd                                           ; $7c30: $dd
	and b                                            ; $7c31: $a0
	sub l                                            ; $7c32: $95
	ldh [$7f], a                                     ; $7c33: $e0 $7f

jr_05b_7c35:
	ld e, $07                                        ; $7c35: $1e $07
	ld b, e                                          ; $7c37: $43
	inc bc                                           ; $7c38: $03
	jp $f987                                         ; $7c39: $c3 $87 $f9


	add c                                            ; $7c3c: $81
	call c, $9a01                                    ; $7c3d: $dc $01 $9a
	rlca                                             ; $7c40: $07
	ld a, a                                          ; $7c41: $7f
	db $e3                                           ; $7c42: $e3
	inc bc                                           ; $7c43: $03
	inc bc                                           ; $7c44: $03
	reti                                             ; $7c45: $d9


	add b                                            ; $7c46: $80
	ld sp, hl                                        ; $7c47: $f9
	sbc h                                            ; $7c48: $9c
	inc bc                                           ; $7c49: $03
	ld b, a                                          ; $7c4a: $47
	ld [$546f], sp                                   ; $7c4b: $08 $6f $54
	sbc l                                            ; $7c4e: $9d
	jr c, jr_05b_7c58                                ; $7c4f: $38 $07

	ld l, a                                          ; $7c51: $6f
	ld d, b                                          ; $7c52: $50
	sbc l                                            ; $7c53: $9d
	ld hl, sp+$03                                    ; $7c54: $f8 $03
	ld [hl], l                                       ; $7c56: $75
	ld h, l                                          ; $7c57: $65

jr_05b_7c58:
	rst SubAFromDE                                          ; $7c58: $df
	rrca                                             ; $7c59: $0f
	sbc l                                            ; $7c5a: $9d
	rlca                                             ; $7c5b: $07
	db $fc                                           ; $7c5c: $fc
	db $fc                                           ; $7c5d: $fc
	sbc [hl]                                         ; $7c5e: $9e
	cp $75                                           ; $7c5f: $fe $75
	db $db                                           ; $7c61: $db
	db $dd                                           ; $7c62: $dd
	rst $38                                          ; $7c63: $ff
	ld a, b                                          ; $7c64: $78
	rst FarCall                                          ; $7c65: $f7
	ldh [$dd], a                                     ; $7c66: $e0 $dd
	sbc h                                            ; $7c68: $9c
	ld a, b                                          ; $7c69: $78
	ld a, a                                          ; $7c6a: $7f
	ccf                                              ; $7c6b: $3f
	ld a, e                                          ; $7c6c: $7b
	jp nz, Jump_05b_777e                             ; $7c6d: $c2 $7e $77

	ld [hl], a                                       ; $7c70: $77
	cp [hl]                                          ; $7c71: $be
	ld [hl], d                                       ; $7c72: $72
	xor b                                            ; $7c73: $a8
	ld h, a                                          ; $7c74: $67
	pop bc                                           ; $7c75: $c1
	ld [hl], e                                       ; $7c76: $73
	adc l                                            ; $7c77: $8d
	sbc l                                            ; $7c78: $9d
	add b                                            ; $7c79: $80
	ld b, b                                          ; $7c7a: $40
	ld [hl], b                                       ; $7c7b: $70
	inc hl                                           ; $7c7c: $23
	ld a, a                                          ; $7c7d: $7f
	di                                               ; $7c7e: $f3
	ld h, d                                          ; $7c7f: $62
	ld b, c                                          ; $7c80: $41
	rst SubAFromDE                                          ; $7c81: $df
	ldh a, [$72]                                     ; $7c82: $f0 $72
	ld a, [bc]                                       ; $7c84: $0a
	sbc [hl]                                         ; $7c85: $9e
	add b                                            ; $7c86: $80
	sbc $20                                          ; $7c87: $de $20
	ld [hl], d                                       ; $7c89: $72
	ldh [$7c], a                                     ; $7c8a: $e0 $7c
	sbc $99                                          ; $7c8c: $de $99
	ld c, $1e                                        ; $7c8e: $0e $1e
	inc a                                            ; $7c90: $3c
	ld a, b                                          ; $7c91: $78
	ld a, b                                          ; $7c92: $78
	rst $38                                          ; $7c93: $ff
	ld l, h                                          ; $7c94: $6c
	jp nc, $aa7d                                     ; $7c95: $d2 $7d $aa

	ld a, e                                          ; $7c98: $7b
	jr z, jr_05b_7c35                                ; $7c99: $28 $9a

	ld b, b                                          ; $7c9b: $40
	ld h, b                                          ; $7c9c: $60
	jr nz, jr_05b_7cbf                               ; $7c9d: $20 $20

	ldh a, [$7a]                                     ; $7c9f: $f0 $7a
	add $78                                          ; $7ca1: $c6 $78
	push bc                                          ; $7ca3: $c5
	rst SubAFromDE                                          ; $7ca4: $df
	ldh [$de], a                                     ; $7ca5: $e0 $de
	rst $38                                          ; $7ca7: $ff
	sbc [hl]                                         ; $7ca8: $9e
	ld a, e                                          ; $7ca9: $7b
	db $dd                                           ; $7caa: $dd
	ld a, c                                          ; $7cab: $79
	reti                                             ; $7cac: $d9


	ld [$fcdf], sp                                   ; $7cad: $08 $df $fc
	db $db                                           ; $7cb0: $db
	rst $38                                          ; $7cb1: $ff
	sbc $07                                          ; $7cb2: $de $07
	ld a, h                                          ; $7cb4: $7c
	sub e                                            ; $7cb5: $93
	sbc $02                                          ; $7cb6: $de $02
	sub h                                            ; $7cb8: $94
	dec b                                            ; $7cb9: $05
	ld a, l                                          ; $7cba: $7d
	db $fd                                           ; $7cbb: $fd
	db $fd                                           ; $7cbc: $fd
	sbc l                                            ; $7cbd: $9d
	dec e                                            ; $7cbe: $1d

jr_05b_7cbf:
	ld e, $1e                                        ; $7cbf: $1e $1e
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	add a                                            ; $7cc3: $87
	ld [hl], c                                       ; $7cc4: $71
	dec [hl]                                         ; $7cc5: $35
	call c, $9c22                                    ; $7cc6: $dc $22 $9c
	ldh [c], a                                       ; $7cc9: $e2
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	call c, $dff7                                    ; $7ccc: $dc $f7 $df
	rst $38                                          ; $7ccf: $ff
	add [hl]                                         ; $7cd0: $86
	adc b                                            ; $7cd1: $88
	db $ec                                           ; $7cd2: $ec
	or $e8                                           ; $7cd3: $f6 $e8
	add sp, -$19                                     ; $7cd5: $e8 $e7
	ret nz                                           ; $7cd7: $c0

	rst JumpTable                                          ; $7cd8: $c7
	ret nz                                           ; $7cd9: $c0

	ccf                                              ; $7cda: $3f
	jr c, jr_05b_7d0d                                ; $7cdb: $38 $30

	jr nc, @+$3a                                     ; $7cdd: $30 $38

	ld a, a                                          ; $7cdf: $7f
	ld hl, sp-$80                                    ; $7ce0: $f8 $80
	ld h, b                                          ; $7ce2: $60
	nop                                              ; $7ce3: $00
	ld bc, $fc3f                                     ; $7ce4: $01 $3f $fc
	ld bc, $0080                                     ; $7ce7: $01 $80 $00
	ld [hl], a                                       ; $7cea: $77
	ld h, d                                          ; $7ceb: $62
	sbc l                                            ; $7cec: $9d
	inc bc                                           ; $7ced: $03
	cp $7a                                           ; $7cee: $fe $7a
	ld b, l                                          ; $7cf0: $45
	sbc h                                            ; $7cf1: $9c
	jr c, @-$1c                                      ; $7cf2: $38 $e2

	ldh a, [$fb]                                     ; $7cf4: $f0 $fb
	sbc l                                            ; $7cf6: $9d
	inc e                                            ; $7cf7: $1c
	rrca                                             ; $7cf8: $0f
	ld [hl], h                                       ; $7cf9: $74
	add e                                            ; $7cfa: $83
	sbc c                                            ; $7cfb: $99
	push bc                                          ; $7cfc: $c5
	ld c, l                                          ; $7cfd: $4d
	ld de, $0884                                     ; $7cfe: $11 $84 $08
	ld [de], a                                       ; $7d01: $12
	ld a, e                                          ; $7d02: $7b
	db $e4                                           ; $7d03: $e4
	sbc d                                            ; $7d04: $9a
	inc sp                                           ; $7d05: $33
	rrca                                             ; $7d06: $0f
	inc bc                                           ; $7d07: $03
	ldh a, [$0c]                                     ; $7d08: $f0 $0c
	ld [hl], l                                       ; $7d0a: $75
	sub c                                            ; $7d0b: $91
	ld [hl], a                                       ; $7d0c: $77

jr_05b_7d0d:
	ld a, d                                          ; $7d0d: $7a
	sbc l                                            ; $7d0e: $9d
	ldh [rSVBK], a                                   ; $7d0f: $e0 $70
	ld [hl], a                                       ; $7d11: $77
	inc sp                                           ; $7d12: $33
	sbc $80                                          ; $7d13: $de $80
	ld b, d                                          ; $7d15: $42
	ld [$0a7f], a                                    ; $7d16: $ea $7f $0a

jr_05b_7d19:
	ld l, h                                          ; $7d19: $6c
	cp [hl]                                          ; $7d1a: $be
	inc h                                            ; $7d1b: $24
	jr c, jr_05b_7d91                                ; $7d1c: $38 $73

	ret                                              ; $7d1e: $c9


	ld a, c                                          ; $7d1f: $79
	ei                                               ; $7d20: $fb
	ldh [$d9], a                                     ; $7d21: $e0 $d9
	sbc [hl]                                         ; $7d23: $9e
	ld a, [hl]                                       ; $7d24: $7e
	db $dd                                           ; $7d25: $dd
	inc a                                            ; $7d26: $3c
	sbc c                                            ; $7d27: $99
	ld a, $7f                                        ; $7d28: $3e $7f
	ld a, a                                          ; $7d2a: $7f
	ld b, b                                          ; $7d2b: $40
	jr nz, @+$22                                     ; $7d2c: $20 $20

	call c, Call_05b_7610                            ; $7d2e: $dc $10 $76
	add sp, -$65                                     ; $7d31: $e8 $9b
	ld [bc], a                                       ; $7d33: $02
	ld b, $06                                        ; $7d34: $06 $06
	inc b                                            ; $7d36: $04
	sbc $01                                          ; $7d37: $de $01
	sbc $02                                          ; $7d39: $de $02
	rst SubAFromDE                                          ; $7d3b: $df
	inc b                                            ; $7d3c: $04

jr_05b_7d3d:
	rst SubAFromDE                                          ; $7d3d: $df
	add c                                            ; $7d3e: $81

jr_05b_7d3f:
	ld a, [hl]                                       ; $7d3f: $7e
	reti                                             ; $7d40: $d9


	ld a, d                                          ; $7d41: $7a
	ret c                                            ; $7d42: $d8

	sbc [hl]                                         ; $7d43: $9e
	ld e, $fc                                        ; $7d44: $1e $fc
	ld a, e                                          ; $7d46: $7b
	db $e3                                           ; $7d47: $e3
	rst SubAFromDE                                          ; $7d48: $df
	ld sp, hl                                        ; $7d49: $f9
	sub l                                            ; $7d4a: $95
	reti                                             ; $7d4b: $d9


	call z, $0c8c                                    ; $7d4c: $cc $8c $0c
	inc c                                            ; $7d4f: $0c
	ld [$3030], sp                                   ; $7d50: $08 $30 $30
	ld [hl], b                                       ; $7d53: $70
	ld a, b                                          ; $7d54: $78
	db $dd                                           ; $7d55: $dd
	ld hl, sp+$75                                    ; $7d56: $f8 $75
	and e                                            ; $7d58: $a3
	sbc $e8                                          ; $7d59: $de $e8
	sbc l                                            ; $7d5b: $9d
	ret c                                            ; $7d5c: $d8

	jr nz, jr_05b_7d3d                               ; $7d5d: $20 $de

	jr nc, jr_05b_7d3f                               ; $7d5f: $30 $de

	jr c, @-$62                                      ; $7d61: $38 $9c

	ld [hl], b                                       ; $7d63: $70
	ld a, l                                          ; $7d64: $7d
	ld a, l                                          ; $7d65: $7d
	db $db                                           ; $7d66: $db
	ld a, a                                          ; $7d67: $7f
	sbc d                                            ; $7d68: $9a
	ld [$0c0c], sp                                   ; $7d69: $08 $0c $0c
	ld c, $0e                                        ; $7d6c: $0e $0e
	ld a, e                                          ; $7d6e: $7b
	ret z                                            ; $7d6f: $c8

	reti                                             ; $7d70: $d9


	rst $38                                          ; $7d71: $ff
	reti                                             ; $7d72: $d9


	ld bc, $1c9c                                     ; $7d73: $01 $9c $1c
	inc a                                            ; $7d76: $3c
	inc a                                            ; $7d77: $3c
	db $dd                                           ; $7d78: $dd
	jr c, jr_05b_7d19                                ; $7d79: $38 $9e

	inc a                                            ; $7d7b: $3c
	sbc $07                                          ; $7d7c: $de $07
	db $dd                                           ; $7d7e: $dd
	rrca                                             ; $7d7f: $0f
	ld l, b                                          ; $7d80: $68
	ret z                                            ; $7d81: $c8

	rst SubAFromDE                                          ; $7d82: $df
	ld a, a                                          ; $7d83: $7f
	db $db                                           ; $7d84: $db
	adc b                                            ; $7d85: $88
	rst SubAFromDE                                          ; $7d86: $df
	ret z                                            ; $7d87: $c8

	db $db                                           ; $7d88: $db
	add b                                            ; $7d89: $80
	sbc l                                            ; $7d8a: $9d
	ret nz                                           ; $7d8b: $c0

	jp nc, $80da                                     ; $7d8c: $d2 $da $80

	sub e                                            ; $7d8f: $93
	pop hl                                           ; $7d90: $e1

jr_05b_7d91:
	nop                                              ; $7d91: $00
	ld b, b                                          ; $7d92: $40
	ld hl, $0108                                     ; $7d93: $21 $08 $01
	nop                                              ; $7d96: $00
	pop bc                                           ; $7d97: $c1
	inc bc                                           ; $7d98: $03
	nop                                              ; $7d99: $00
	ccf                                              ; $7d9a: $3f
	ld e, $71                                        ; $7d9b: $1e $71
	cp a                                             ; $7d9d: $bf
	ld a, a                                          ; $7d9e: $7f
	rla                                              ; $7d9f: $17
	sbc h                                            ; $7da0: $9c
	ldh a, [$7f]                                     ; $7da1: $f0 $7f
	sbc a                                            ; $7da3: $9f
	ld [hl], a                                       ; $7da4: $77
	ld de, $967c                                     ; $7da5: $11 $7c $96
	ld a, d                                          ; $7da8: $7a
	and h                                            ; $7da9: $a4
	ld a, a                                          ; $7daa: $7f
	ld a, [$c092]                                    ; $7dab: $fa $92 $c0
	ld a, a                                          ; $7dae: $7f
	rlca                                             ; $7daf: $07
	add b                                            ; $7db0: $80
	ld hl, sp-$02                                    ; $7db1: $f8 $fe
	cp $fc                                           ; $7db3: $fe $fc
	nop                                              ; $7db5: $00
	add b                                            ; $7db6: $80
	ld hl, sp+$7f                                    ; $7db7: $f8 $7f
	rlca                                             ; $7db9: $07
	ld a, e                                          ; $7dba: $7b
	ld h, b                                          ; $7dbb: $60
	sbc $70                                          ; $7dbc: $de $70
	ld [hl], e                                       ; $7dbe: $73
	halt                                             ; $7dbf: $76
	ld l, [hl]                                       ; $7dc0: $6e
	ld [hl-], a                                      ; $7dc1: $32
	rst SubAFromDE                                          ; $7dc2: $df
	ldh [$f1], a                                     ; $7dc3: $e0 $f1
	rst SubAFromDE                                          ; $7dc5: $df
	inc bc                                           ; $7dc6: $03
	db $dd                                           ; $7dc7: $dd
	ld bc, $46f7                                     ; $7dc8: $01 $f7 $46
	ret nz                                           ; $7dcb: $c0

	ld l, d                                          ; $7dcc: $6a
	ld de, $a87f                                     ; $7dcd: $11 $7f $a8
	ld a, a                                          ; $7dd0: $7f
	xor e                                            ; $7dd1: $ab
	ld a, b                                          ; $7dd2: $78
	dec a                                            ; $7dd3: $3d
	ld a, l                                          ; $7dd4: $7d

jr_05b_7dd5:
	ret z                                            ; $7dd5: $c8

	sbc h                                            ; $7dd6: $9c
	jr jr_05b_7dd5                                   ; $7dd7: $18 $fc

	cp $67                                           ; $7dd9: $fe $67
	ldh [$6d], a                                     ; $7ddb: $e0 $6d
	inc l                                            ; $7ddd: $2c

Call_05b_7dde:
	sbc l                                            ; $7dde: $9d
	inc bc                                           ; $7ddf: $03
	rrca                                             ; $7de0: $0f
	ld e, e                                          ; $7de1: $5b
	ret nc                                           ; $7de2: $d0

	ld a, [hl]                                       ; $7de3: $7e
	call c, $ffd9                                    ; $7de4: $dc $d9 $ff
	sbc d                                            ; $7de7: $9a
	db $10                                           ; $7de8: $10
	jr nz, @+$62                                     ; $7de9: $20 $60

	ld b, b                                          ; $7deb: $40
	ret nz                                           ; $7dec: $c0

	ld a, e                                          ; $7ded: $7b
	sbc $9d                                          ; $7dee: $de $9d
	adc h                                            ; $7df0: $8c
	call z, $eb76                                    ; $7df1: $cc $76 $eb
	sub c                                            ; $7df4: $91
	pop hl                                           ; $7df5: $e1
	pop bc                                           ; $7df6: $c1
	inc b                                            ; $7df7: $04
	ld [$1808], sp                                   ; $7df8: $08 $08 $18
	db $10                                           ; $7dfb: $10
	jr nz, jr_05b_7e3e                               ; $7dfc: $20 $40

	add b                                            ; $7dfe: $80

Jump_05b_7dff:
	ld a, $3c                                        ; $7dff: $3e $3c
	ld a, b                                          ; $7e01: $78
	ld [hl], b                                       ; $7e02: $70
	ld a, c                                          ; $7e03: $79
	ld a, l                                          ; $7e04: $7d
	sbc [hl]                                         ; $7e05: $9e
	ldh [$79], a                                     ; $7e06: $e0 $79
	sub e                                            ; $7e08: $93
	rst SubAFromDE                                          ; $7e09: $df
	rra                                              ; $7e0a: $1f
	sbc $3f                                          ; $7e0b: $de $3f
	ld a, a                                          ; $7e0d: $7f
	db $eb                                           ; $7e0e: $eb
	sbc c                                            ; $7e0f: $99
	jr nc, jr_05b_7e43                               ; $7e10: $30 $31

	ld sp, $2121                                     ; $7e12: $31 $21 $21
	inc hl                                           ; $7e15: $23
	ld [hl], l                                       ; $7e16: $75
	ld l, b                                          ; $7e17: $68
	db $dd                                           ; $7e18: $dd
	ldh [$9a], a                                     ; $7e19: $e0 $9a
	ret c                                            ; $7e1b: $d8

	ret nc                                           ; $7e1c: $d0

	ret nc                                           ; $7e1d: $d0

	or c                                             ; $7e1e: $b1
	or c                                             ; $7e1f: $b1

Call_05b_7e20:
	ld a, b                                          ; $7e20: $78
	adc b                                            ; $7e21: $88
	sbc $70                                          ; $7e22: $de $70
	call c, $d9e0                                    ; $7e24: $dc $e0 $d9
	rst $38                                          ; $7e27: $ff
	sbc e                                            ; $7e28: $9b
	inc e                                            ; $7e29: $1c
	jr jr_05b_7e3c                                   ; $7e2a: $18 $10

	db $10                                           ; $7e2c: $10
	db $dd                                           ; $7e2d: $dd
	jr nz, @-$22                                     ; $7e2e: $20 $dc

	rst $38                                          ; $7e30: $ff
	sub d                                            ; $7e31: $92
	rst FarCall                                          ; $7e32: $f7
	rst SubAFromBC                                          ; $7e33: $e7
	jp $0303                                         ; $7e34: $c3 $03 $03


	dec b                                            ; $7e37: $05
	ld [$1c18], sp                                   ; $7e38: $08 $18 $1c
	inc a                                            ; $7e3b: $3c

jr_05b_7e3c:
	ld a, [hl]                                       ; $7e3c: $7e
	ld a, h                                          ; $7e3d: $7c

jr_05b_7e3e:
	db $fc                                           ; $7e3e: $fc
	db $db                                           ; $7e3f: $db
	cp $79                                           ; $7e40: $fe $79
	ei                                               ; $7e42: $fb

jr_05b_7e43:
	sbc $83                                          ; $7e43: $de $83
	rst SubAFromDE                                          ; $7e45: $df
	ld b, e                                          ; $7e46: $43
	sbc $7f                                          ; $7e47: $de $7f
	call c, $de3f                                    ; $7e49: $dc $3f $de
	ret z                                            ; $7e4c: $c8

	call c, $92e8                                    ; $7e4d: $dc $e8 $92
	pop hl                                           ; $7e50: $e1
	ldh [c], a                                       ; $7e51: $e2
	db $ec                                           ; $7e52: $ec
	ret nc                                           ; $7e53: $d0

	or b                                             ; $7e54: $b0
	add b                                            ; $7e55: $80
	rst JumpTable                                          ; $7e56: $c7
	cp $f6                                           ; $7e57: $fe $f6
	db $fc                                           ; $7e59: $fc
	ldh a, [$e0]                                     ; $7e5a: $f0 $e0
	ret nz                                           ; $7e5c: $c0

	ld a, b                                          ; $7e5d: $78
	push af                                          ; $7e5e: $f5
	sbc d                                            ; $7e5f: $9a
	ld [$0064], sp                                   ; $7e60: $08 $64 $00
	inc b                                            ; $7e63: $04
	ld a, h                                          ; $7e64: $7c
	ld a, d                                          ; $7e65: $7a

jr_05b_7e66:
	ld a, [$079d]                                    ; $7e66: $fa $9d $07
	jr jr_05b_7e66                                   ; $7e69: $18 $fb

	sbc [hl]                                         ; $7e6b: $9e
	add e                                            ; $7e6c: $83
	ld [hl], a                                       ; $7e6d: $77
	ld c, d                                          ; $7e6e: $4a
	rst SubAFromDE                                          ; $7e6f: $df
	inc bc                                           ; $7e70: $03
	sbc [hl]                                         ; $7e71: $9e
	ld c, $fa                                        ; $7e72: $0e $fa
	ld a, [hl]                                       ; $7e74: $7e
	or $90                                           ; $7e75: $f6 $90
	db $10                                           ; $7e77: $10
	inc hl                                           ; $7e78: $23
	rst GetHLinHL                                          ; $7e79: $cf
	sbc $be                                          ; $7e7a: $de $be
	ld a, h                                          ; $7e7c: $7c
	db $fc                                           ; $7e7d: $fc
	rst $38                                          ; $7e7e: $ff
	rrca                                             ; $7e7f: $0f
	inc e                                            ; $7e80: $1c
	jr nc, jr_05b_7ea4                               ; $7e81: $30 $21

	ld b, c                                          ; $7e83: $41
	add e                                            ; $7e84: $83
	inc bc                                           ; $7e85: $03
	db $dd                                           ; $7e86: $dd
	jr @-$1f                                         ; $7e87: $18 $df

	ld [$0cdf], sp                                   ; $7e89: $08 $df $0c
	db $dd                                           ; $7e8c: $dd
	ldh a, [$dd]                                     ; $7e8d: $f0 $dd
	ld hl, sp-$1f                                    ; $7e8f: $f8 $e1
	halt                                             ; $7e91: $76
	ld b, h                                          ; $7e92: $44
	db $dd                                           ; $7e93: $dd
	ld a, a                                          ; $7e94: $7f
	ld sp, hl                                        ; $7e95: $f9
	ld b, b                                          ; $7e96: $40
	nop                                              ; $7e97: $00
	sbc h                                            ; $7e98: $9c
	ld h, h                                          ; $7e99: $64
	ld b, h                                          ; $7e9a: $44
	ld b, h                                          ; $7e9b: $44
	call c, $df66                                    ; $7e9c: $dc $66 $df
	ld [hl+], a                                      ; $7e9f: $22
	reti                                             ; $7ea0: $d9


	ld b, h                                          ; $7ea1: $44
	sbc $22                                          ; $7ea2: $de $22

jr_05b_7ea4:
	sbc h                                            ; $7ea4: $9c
	inc [hl]                                         ; $7ea5: $34
	inc sp                                           ; $7ea6: $33
	inc [hl]                                         ; $7ea7: $34
	ld l, e                                          ; $7ea8: $6b
	or $df                                           ; $7ea9: $f6 $df
	inc sp                                           ; $7eab: $33
	sbc l                                            ; $7eac: $9d
	inc hl                                           ; $7ead: $23
	ld [hl-], a                                      ; $7eae: $32
	ld l, a                                          ; $7eaf: $6f
	or $df                                           ; $7eb0: $f6 $df
	ld [hl+], a                                      ; $7eb2: $22
	sbc l                                            ; $7eb3: $9d
	inc hl                                           ; $7eb4: $23
	inc sp                                           ; $7eb5: $33
	ld a, e                                          ; $7eb6: $7b
	jp hl                                            ; $7eb7: $e9


	rst SubAFromDE                                          ; $7eb8: $df
	inc sp                                           ; $7eb9: $33
	ld a, e                                          ; $7eba: $7b
	rst FarCall                                          ; $7ebb: $f7
	sbc h                                            ; $7ebc: $9c
	ld [hl-], a                                      ; $7ebd: $32
	inc sp                                           ; $7ebe: $33
	ld [hl-], a                                      ; $7ebf: $32
	ld a, e                                          ; $7ec0: $7b
	di                                               ; $7ec1: $f3
	ld l, a                                          ; $7ec2: $6f
	or $77                                           ; $7ec3: $f6 $77
	jp hl                                            ; $7ec5: $e9


	db $db                                           ; $7ec6: $db
	inc sp                                           ; $7ec7: $33
	ld a, e                                          ; $7ec8: $7b
	or $77                                           ; $7ec9: $f6 $77
	ldh [$73], a                                     ; $7ecb: $e0 $73
	push af                                          ; $7ecd: $f5
	ld a, a                                          ; $7ece: $7f
	rst JumpTable                                          ; $7ecf: $c7
	ld e, a                                          ; $7ed0: $5f
	or $67                                           ; $7ed1: $f6 $67
	pop hl                                           ; $7ed3: $e1
	ld a, e                                          ; $7ed4: $7b
	or $15                                           ; $7ed5: $f6 $15
	adc d                                            ; $7ed7: $8a

Call_05b_7ed8:
	add a                                            ; $7ed8: $87
	ld [bc], a                                       ; $7ed9: $02
	dec b                                            ; $7eda: $05
	dec bc                                           ; $7edb: $0b
	rla                                              ; $7edc: $17
	cpl                                              ; $7edd: $2f
	ld e, e                                          ; $7ede: $5b

Jump_05b_7edf:
	cp [hl]                                          ; $7edf: $be
	ld a, a                                          ; $7ee0: $7f
	ld bc, $0402                                     ; $7ee1: $01 $02 $04
	ld [$2010], sp                                   ; $7ee4: $08 $10 $20
	ld b, b                                          ; $7ee7: $40
	add b                                            ; $7ee8: $80
	rst $38                                          ; $7ee9: $ff
	db $fc                                           ; $7eea: $fc
	xor b                                            ; $7eeb: $a8
	ldh a, [$50]                                     ; $7eec: $f0 $50
	and b                                            ; $7eee: $a0
	ld b, c                                          ; $7eef: $41
	and d                                            ; $7ef0: $a2
	ei                                               ; $7ef1: $fb
	sbc l                                            ; $7ef2: $9d
	ld bc, $7b03                                     ; $7ef3: $01 $03 $7b
	db $fc                                           ; $7ef6: $fc
	sbc d                                            ; $7ef7: $9a
	ld c, $30                                        ; $7ef8: $0e $30
	jp Jump_05b_661f                                 ; $7efa: $c3 $1f $66


	ld a, e                                          ; $7efd: $7b
	ld hl, sp-$6d                                    ; $7efe: $f8 $93
	rrca                                             ; $7f00: $0f
	ccf                                              ; $7f01: $3f
	rst $38                                          ; $7f02: $ff
	rst $38                                          ; $7f03: $ff
	ld sp, hl                                        ; $7f04: $f9
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	rst $38                                          ; $7f07: $ff
	ld bc, $c03f                                     ; $7f08: $01 $3f $c0
	rst $38                                          ; $7f0b: $ff
	cp $db                                           ; $7f0c: $fe $db
	rst $38                                          ; $7f0e: $ff
	rst $38                                          ; $7f0f: $ff
	sbc d                                            ; $7f10: $9a
	add b                                            ; $7f11: $80
	ld hl, sp-$01                                    ; $7f12: $f8 $ff
	rra                                              ; $7f14: $1f
	ld bc, $f86f                                     ; $7f15: $01 $6f $f8
	sbc $ff                                          ; $7f18: $de $ff
	sub a                                            ; $7f1a: $97
	dec d                                            ; $7f1b: $15
	ld a, [hl+]                                      ; $7f1c: $2a
	ld d, l                                          ; $7f1d: $55
	ld a, [hl+]                                      ; $7f1e: $2a
	rla                                              ; $7f1f: $17
	ld a, [$f0ed]                                    ; $7f20: $fa $ed $f0
	db $fc                                           ; $7f23: $fc
	sub [hl]                                         ; $7f24: $96
	ret nz                                           ; $7f25: $c0

	ldh a, [$f8]                                     ; $7f26: $f0 $f8
	ld c, b                                          ; $7f28: $48
	and b                                            ; $7f29: $a0
	ld c, b                                          ; $7f2a: $48
	and b                                            ; $7f2b: $a0
	nop                                              ; $7f2c: $00
	add b                                            ; $7f2d: $80
	rst FarCall                                          ; $7f2e: $f7
	rst SubAFromDE                                          ; $7f2f: $df
	ld [bc], a                                       ; $7f30: $02
	sbc $05                                          ; $7f31: $de $05
	rst SubAFromDE                                          ; $7f33: $df
	dec bc                                           ; $7f34: $0b
	sbc h                                            ; $7f35: $9c
	rrca                                             ; $7f36: $0f
	inc bc                                           ; $7f37: $03
	inc bc                                           ; $7f38: $03
	sbc $07                                          ; $7f39: $de $07
	rst SubAFromDE                                          ; $7f3b: $df
	rrca                                             ; $7f3c: $0f
	sub [hl]                                         ; $7f3d: $96
	dec bc                                           ; $7f3e: $0b
	ret nz                                           ; $7f3f: $c0

	ret nz                                           ; $7f40: $c0

	add b                                            ; $7f41: $80
	add c                                            ; $7f42: $81
	adc a                                            ; $7f43: $8f
	ld a, [hl]                                       ; $7f44: $7e
	push af                                          ; $7f45: $f5
	xor d                                            ; $7f46: $aa
	sbc $ff                                          ; $7f47: $de $ff
	sbc l                                            ; $7f49: $9d
	cp $f0                                           ; $7f4a: $fe $f0
	ld a, e                                          ; $7f4c: $7b
	ret c                                            ; $7f4d: $d8

	rst SubAFromDE                                          ; $7f4e: $df
	ld [$3096], sp                                   ; $7f4f: $08 $96 $30
	ldh a, [$f0]                                     ; $7f52: $f0 $f0
	or b                                             ; $7f54: $b0
	ld d, b                                          ; $7f55: $50
	db $10                                           ; $7f56: $10
	rst $38                                          ; $7f57: $ff
	rst $38                                          ; $7f58: $ff
	rst SubAFromDE                                          ; $7f59: $df
	call c, $9e1f                                    ; $7f5a: $dc $1f $9e
	ld bc, $d9fa                                     ; $7f5d: $01 $fa $d9
	rst $38                                          ; $7f60: $ff
	add a                                            ; $7f61: $87
	ret nz                                           ; $7f62: $c0

	ldh [rSVBK], a                                   ; $7f63: $e0 $70
	jr c, jr_05b_7f7f                                ; $7f65: $38 $18

	inc c                                            ; $7f67: $0c
	ld c, $06                                        ; $7f68: $0e $06
	ret nz                                           ; $7f6a: $c0

	ldh [$f0], a                                     ; $7f6b: $e0 $f0
	ld hl, sp-$08                                    ; $7f6d: $f8 $f8
	db $fc                                           ; $7f6f: $fc
	cp $fe                                           ; $7f70: $fe $fe
	dec [hl]                                         ; $7f72: $35
	rra                                              ; $7f73: $1f
	ld a, [hl-]                                      ; $7f74: $3a
	dec c                                            ; $7f75: $0d
	ld e, d                                          ; $7f76: $5a
	cpl                                              ; $7f77: $2f
	dec e                                            ; $7f78: $1d
	ld d, [hl]                                       ; $7f79: $56
	ld sp, hl                                        ; $7f7a: $f9
	adc l                                            ; $7f7b: $8d
	rst JumpTable                                          ; $7f7c: $c7
	ld h, a                                          ; $7f7d: $67
	inc sp                                           ; $7f7e: $33

jr_05b_7f7f:
	ld de, $0818                                     ; $7f7f: $11 $18 $08
	inc c                                            ; $7f82: $0c
	ld b, $80                                        ; $7f83: $06 $80
	ld b, b                                          ; $7f85: $40
	jr nz, jr_05b_7f98                               ; $7f86: $20 $10

	db $10                                           ; $7f88: $10
	ld [$0408], sp                                   ; $7f89: $08 $08 $04
	rst $38                                          ; $7f8c: $ff
	cp $dd                                           ; $7f8d: $fe $dd
	rst $38                                          ; $7f8f: $ff
	sbc l                                            ; $7f90: $9d
	ld a, a                                          ; $7f91: $7f
	ccf                                              ; $7f92: $3f
	ld sp, hl                                        ; $7f93: $f9
	ld a, e                                          ; $7f94: $7b
	db $f4                                           ; $7f95: $f4
	ld l, e                                          ; $7f96: $6b
	ld c, b                                          ; $7f97: $48

jr_05b_7f98:
	ld c, a                                          ; $7f98: $4f
	xor b                                            ; $7f99: $a8
	daa                                              ; $7f9a: $27
	ldh a, [$7f]                                     ; $7f9b: $f0 $7f
	sbc b                                            ; $7f9d: $98
	sbc c                                            ; $7f9e: $99
	di                                               ; $7f9f: $f3
	rst $38                                          ; $7fa0: $ff
	rst AddAOntoHL                                          ; $7fa1: $ef
	rst FarCall                                          ; $7fa2: $f7
	db $fc                                           ; $7fa3: $fc
	ld a, [$b077]                                    ; $7fa4: $fa $77 $b0
	sub l                                            ; $7fa7: $95
	jr @+$11                                         ; $7fa8: $18 $0f

	inc b                                            ; $7faa: $04
	ld b, $7f                                        ; $7fab: $06 $7f
	rst $38                                          ; $7fad: $ff
	db $fd                                           ; $7fae: $fd
	or $b8                                           ; $7faf: $f6 $b8
	ret nz                                           ; $7fb1: $c0

	db $fd                                           ; $7fb2: $fd
	sbc h                                            ; $7fb3: $9c
	inc bc                                           ; $7fb4: $03
	ld c, $78                                        ; $7fb5: $0e $78
	ld a, e                                          ; $7fb7: $7b
	ld hl, sp-$69                                    ; $7fb8: $f8 $97
	or l                                             ; $7fba: $b5
	ld e, d                                          ; $7fbb: $5a
	inc [hl]                                         ; $7fbc: $34
	ld e, d                                          ; $7fbd: $5a
	inc l                                            ; $7fbe: $2c
	ld d, h                                          ; $7fbf: $54

Call_05b_7fc0:
	inc a                                            ; $7fc0: $3c
	ld e, d                                          ; $7fc1: $5a
	ld sp, hl                                        ; $7fc2: $f9
	ld a, [hl]                                       ; $7fc3: $7e
	cp d                                             ; $7fc4: $ba
	add b                                            ; $7fc5: $80
	dec c                                            ; $7fc6: $0d
	ld d, $10                                        ; $7fc7: $16 $10
	dec d                                            ; $7fc9: $15
	ld [de], a                                       ; $7fca: $12
	add hl, de                                       ; $7fcb: $19
	rlca                                             ; $7fcc: $07
	rrca                                             ; $7fcd: $0f
	ld a, [bc]                                       ; $7fce: $0a
	add hl, de                                       ; $7fcf: $19
	dec de                                           ; $7fd0: $1b
	ld [de], a                                       ; $7fd1: $12
	db $10                                           ; $7fd2: $10
	db $10                                           ; $7fd3: $10
	ccf                                              ; $7fd4: $3f
	ldh [$9f], a                                     ; $7fd5: $e0 $9f
	ld a, a                                          ; $7fd7: $7f
	ret nz                                           ; $7fd8: $c0

	cp a                                             ; $7fd9: $bf
	ldh [rAUD3HIGH], a                               ; $7fda: $e0 $1e
	ret nz                                           ; $7fdc: $c0

	rra                                              ; $7fdd: $1f
	ld h, b                                          ; $7fde: $60
	add b                                            ; $7fdf: $80
	ccf                                              ; $7fe0: $3f
	ld b, b                                          ; $7fe1: $40
	rra                                              ; $7fe2: $1f
	pop hl                                           ; $7fe3: $e1
	ret nz                                           ; $7fe4: $c0

	adc c                                            ; $7fe5: $89
	ccf                                              ; $7fe6: $3f
	cp $00                                           ; $7fe7: $fe $00
	ld a, a                                          ; $7fe9: $7f
	ret nz                                           ; $7fea: $c0

	ld a, a                                          ; $7feb: $7f
	ld a, a                                          ; $7fec: $7f
	ccf                                              ; $7fed: $3f
	rst $38                                          ; $7fee: $ff
	ld bc, rIE                                     ; $7fef: $01 $ff $ff
	ccf                                              ; $7ff2: $3f
	add b                                            ; $7ff3: $80
	rst $38                                          ; $7ff4: $ff
	inc a                                            ; $7ff5: $3c
	db $e3                                           ; $7ff6: $e3

Call_05b_7ff7:
	rrca                                             ; $7ff7: $0f
	ld a, e                                          ; $7ff8: $7b
	and $1f                                          ; $7ff9: $e6 $1f
	ld [hl], l                                       ; $7ffb: $75
	ld [hl], e                                       ; $7ffc: $73
	ld e, d                                          ; $7ffd: $5a
	db $dd                                           ; $7ffe: $dd

Call_05b_7fff:
	rst $38                                          ; $7fff: $ff
