; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

	ld a, [hl]                                       ; $4000: $7e
	ld e, [hl]                                       ; $4001: $5e
	ld e, l                                          ; $4002: $5d
	ld a, a                                          ; $4003: $7f
	ld a, a                                          ; $4004: $7f
	sbc $b4                                          ; $4005: $de $b4
	ret z                                            ; $4007: $c8

	ld d, h                                          ; $4008: $54
	xor e                                            ; $4009: $ab
	ld c, l                                          ; $400a: $4d
	or a                                             ; $400b: $b7
	rst SubAFromDE                                          ; $400c: $df
	or a                                             ; $400d: $b7
	ld l, a                                          ; $400e: $6f
	ld a, a                                          ; $400f: $7f
	ei                                               ; $4010: $fb
	rst FarCall                                          ; $4011: $f7
	cp $f9                                           ; $4012: $fe $f9
	sub [hl]                                         ; $4014: $96
	and $4d                                          ; $4015: $e6 $4d
	dec de                                           ; $4017: $1b
	ld h, a                                          ; $4018: $67
	bit 2, a                                         ; $4019: $cb $57
	rst FarCall                                          ; $401b: $f7
	rst $38                                          ; $401c: $ff
	xor a                                            ; $401d: $af
	ld a, c                                          ; $401e: $79
	sbc d                                            ; $401f: $9a
	adc d                                            ; $4020: $8a
	cp $bc                                           ; $4021: $fe $bc
	ld l, l                                          ; $4023: $6d
	sbc c                                            ; $4024: $99
	ld a, d                                          ; $4025: $7a
	adc [hl]                                         ; $4026: $8e
	call c, $9cfc                                    ; $4027: $dc $fc $9c
	cp b                                             ; $402a: $b8
	jr c, @+$3a                                      ; $402b: $38 $38

	ld [hl], b                                       ; $402d: $70
	jp c, Jump_05f_7474                              ; $402e: $da $74 $74

	db $f4                                           ; $4031: $f4
	add sp, -$58                                     ; $4032: $e8 $a8
	ld l, b                                          ; $4034: $68
	ld e, b                                          ; $4035: $58
	ldh [$e0], a                                     ; $4036: $e0 $e0
	ld a, [hl]                                       ; $4038: $7e
	ld sp, hl                                        ; $4039: $f9
	rst SubAFromDE                                          ; $403a: $df
	ccf                                              ; $403b: $3f
	rst SubAFromDE                                          ; $403c: $df
	ld a, a                                          ; $403d: $7f
	sbc [hl]                                         ; $403e: $9e
	rst $38                                          ; $403f: $ff
	ei                                               ; $4040: $fb
	sub a                                            ; $4041: $97
	inc bc                                           ; $4042: $03
	inc c                                            ; $4043: $0c
	cp $7c                                           ; $4044: $fe $7c
	ld hl, sp-$10                                    ; $4046: $f8 $f0
	db $e3                                           ; $4048: $e3
	adc a                                            ; $4049: $8f
	ld a, c                                          ; $404a: $79
	adc d                                            ; $404b: $8a

jr_05f_404c:
	add b                                            ; $404c: $80
	ld a, $0c                                        ; $404d: $3e $0c
	jr c, jr_05f_40c4                                ; $404f: $38 $73

	call z, $c030                                    ; $4051: $cc $30 $c0
	inc bc                                           ; $4054: $03
	inc c                                            ; $4055: $0c
	ccf                                              ; $4056: $3f
	ld sp, hl                                        ; $4057: $f9
	rst $38                                          ; $4058: $ff
	db $fd                                           ; $4059: $fd
	cp c                                             ; $405a: $b9
	cp e                                             ; $405b: $bb
	rlca                                             ; $405c: $07
	rrca                                             ; $405d: $0f
	scf                                              ; $405e: $37
	rst GetHLinHL                                          ; $405f: $cf
	rrca                                             ; $4060: $0f
	dec c                                            ; $4061: $0d
	dec bc                                           ; $4062: $0b
	rrca                                             ; $4063: $0f
	ld e, $7c                                        ; $4064: $1e $7c
	db $fc                                           ; $4066: $fc
	db $fd                                           ; $4067: $fd
	ld sp, hl                                        ; $4068: $f9
	ld a, [$f4fa]                                    ; $4069: $fa $fa $f4
	adc d                                            ; $406c: $8a
	ldh a, [c]                                       ; $406d: $f2
	and $87                                          ; $406e: $e6 $87
	rlca                                             ; $4070: $07
	rrca                                             ; $4071: $0f
	rrca                                             ; $4072: $0f
	ld c, $1e                                        ; $4073: $0e $1e
	call z, $98d8                                    ; $4075: $cc $d8 $98
	or b                                             ; $4078: $b0
	jr nc, @+$62                                     ; $4079: $30 $60

	ld h, c                                          ; $407b: $61

Jump_05f_407c:
	ld h, c                                          ; $407c: $61
	adc b                                            ; $407d: $88
	sub b                                            ; $407e: $90
	sub b                                            ; $407f: $90
	jr nz, jr_05f_40a2                               ; $4080: $20 $20

	sbc $40                                          ; $4082: $de $40
	ld [hl], a                                       ; $4084: $77
	or h                                             ; $4085: $b4
	db $dd                                           ; $4086: $dd
	rst $38                                          ; $4087: $ff
	ld sp, hl                                        ; $4088: $f9
	sub h                                            ; $4089: $94
	ld c, d                                          ; $408a: $4a
	ld d, h                                          ; $408b: $54
	ld d, h                                          ; $408c: $54
	ld e, b                                          ; $408d: $58
	sbc b                                            ; $408e: $98
	or b                                             ; $408f: $b0
	or b                                             ; $4090: $b0
	and b                                            ; $4091: $a0
	adc $dc                                          ; $4092: $ce $dc
	call c, $d67b                                    ; $4094: $dc $7b $d6
	ld a, a                                          ; $4097: $7f
	ld hl, sp-$20                                    ; $4098: $f8 $e0
	xor e                                            ; $409a: $ab
	sbc l                                            ; $409b: $9d
	rlca                                             ; $409c: $07
	jr jr_05f_410a                                   ; $409d: $18 $6b

	ld hl, sp-$62                                    ; $409f: $f8 $9e
	rra                                              ; $40a1: $1f

jr_05f_40a2:
	ld a, b                                          ; $40a2: $78
	db $dd                                           ; $40a3: $dd
	add b                                            ; $40a4: $80
	ld b, $0f                                        ; $40a5: $06 $0f
	ld a, e                                          ; $40a7: $7b
	db $fd                                           ; $40a8: $fd
	cp $00                                           ; $40a9: $fe $00
	ld bc, $0402                                     ; $40ab: $01 $02 $04
	ld a, [bc]                                       ; $40ae: $0a
	ld a, c                                          ; $40af: $79
	adc b                                            ; $40b0: $88
	db $fc                                           ; $40b1: $fc
	rst FarCall                                          ; $40b2: $f7
	cp a                                             ; $40b3: $bf
	rst SubAFromDE                                          ; $40b4: $df
	rst AddAOntoHL                                          ; $40b5: $ef
	ld [hl], a                                       ; $40b6: $77
	cp a                                             ; $40b7: $bf
	sbc $fd                                          ; $40b8: $de $fd
	cp a                                             ; $40ba: $bf
	jr jr_05f_404c                                   ; $40bb: $18 $8f

	ld b, h                                          ; $40bd: $44
	inc hl                                           ; $40be: $23

Call_05f_40bf:
	ld de, $4789                                     ; $40bf: $11 $89 $47
	ld e, $ff                                        ; $40c2: $1e $ff

jr_05f_40c4:
	adc h                                            ; $40c4: $8c
	dec sp                                           ; $40c5: $3b
	rst $38                                          ; $40c6: $ff
	ccf                                              ; $40c7: $3f
	db $ed                                           ; $40c8: $ed
	sbc a                                            ; $40c9: $9f
	ld h, d                                          ; $40ca: $62
	ld sp, hl                                        ; $40cb: $f9
	rst SubAFromBC                                          ; $40cc: $e7
	call c, $dce3                                    ; $40cd: $dc $e3 $dc
	di                                               ; $40d0: $f3
	rst $38                                          ; $40d1: $ff
	ld a, a                                          ; $40d2: $7f
	db $db                                           ; $40d3: $db
	scf                                              ; $40d4: $37
	or $ee                                           ; $40d5: $f6 $ee
	xor $de                                          ; $40d7: $ee $de
	call c, $d87d                                    ; $40d9: $dc $7d $d8
	sbc e                                            ; $40dc: $9b
	call c, Call_05f_78b8                            ; $40dd: $dc $b8 $78
	ldh a, [$dc]                                     ; $40e0: $f0 $dc
	ld [hl], b                                       ; $40e2: $70

Call_05f_40e3:
	call c, $dee0                                    ; $40e3: $dc $e0 $de
	ld d, b                                          ; $40e6: $50
	ld a, a                                          ; $40e7: $7f
	ld d, e                                          ; $40e8: $53
	sbc $a0                                          ; $40e9: $de $a0
	ldh a, [$7c]                                     ; $40eb: $f0 $7c
	ld e, d                                          ; $40ed: $5a
	sbc [hl]                                         ; $40ee: $9e
	rra                                              ; $40ef: $1f
	sbc $03                                          ; $40f0: $de $03
	sbc [hl]                                         ; $40f2: $9e
	rlca                                             ; $40f3: $07
	ld a, d                                          ; $40f4: $7a
	call nc, $0e9e                                   ; $40f5: $d4 $9e $0e
	db $fd                                           ; $40f8: $fd
	ld a, a                                          ; $40f9: $7f
	cp l                                             ; $40fa: $bd
	db $db                                           ; $40fb: $db
	rst $38                                          ; $40fc: $ff
	sbc l                                            ; $40fd: $9d
	ccf                                              ; $40fe: $3f
	db $fc                                           ; $40ff: $fc

Jump_05f_4100:
	ld [hl], b                                       ; $4100: $70
	ld e, a                                          ; $4101: $5f
	ld a, h                                          ; $4102: $7c
	jr nc, jr_05f_417f                               ; $4103: $30 $7a

	ld a, b                                          ; $4105: $78
	ld d, a                                          ; $4106: $57
	nop                                              ; $4107: $00
	sbc [hl]                                         ; $4108: $9e
	dec a                                            ; $4109: $3d

jr_05f_410a:
	sbc $38                                          ; $410a: $de $38
	sbc d                                            ; $410c: $9a
	inc a                                            ; $410d: $3c
	db $fc                                           ; $410e: $fc
	db $fc                                           ; $410f: $fc
	cp $0d                                           ; $4110: $fe $0d
	sbc $08                                          ; $4112: $de $08
	sbc $04                                          ; $4114: $de $04
	sbc h                                            ; $4116: $9c
	ld [bc], a                                       ; $4117: $02
	db $f4                                           ; $4118: $f4
	ld hl, sp+$79                                    ; $4119: $f8 $79
	ld [hl], b                                       ; $411b: $70
	ld a, b                                          ; $411c: $78
	inc a                                            ; $411d: $3c
	sub [hl]                                         ; $411e: $96
	inc e                                            ; $411f: $1c
	sbc h                                            ; $4120: $9c
	sbc c                                            ; $4121: $99
	cp c                                             ; $4122: $b9
	or c                                             ; $4123: $b1
	or e                                             ; $4124: $b3
	db $e3                                           ; $4125: $e3
	rst SubAFromBC                                          ; $4126: $e7
	pop bc                                           ; $4127: $c1
	sbc $c3                                          ; $4128: $de $c3
	db $dd                                           ; $412a: $dd
	rst JumpTable                                          ; $412b: $c7
	reti                                             ; $412c: $d9


	add b                                            ; $412d: $80
	db $db                                           ; $412e: $db
	rst $38                                          ; $412f: $ff
	rst SubAFromDE                                          ; $4130: $df
	cp $7f                                           ; $4131: $fe $7f
	sbc b                                            ; $4133: $98
	db $dd                                           ; $4134: $dd
	ld bc, $02df                                     ; $4135: $01 $df $02
	sbc h                                            ; $4138: $9c
	and b                                            ; $4139: $a0
	ld b, b                                          ; $413a: $40
	ld b, b                                          ; $413b: $40
	ld l, l                                          ; $413c: $6d
	nop                                              ; $413d: $00
	ld l, e                                          ; $413e: $6b
	ld hl, sp-$20                                    ; $413f: $f8 $e0
	jp z, $e074                                      ; $4141: $ca $74 $e0

	ld l, a                                          ; $4144: $6f
	ld hl, sp-$66                                    ; $4145: $f8 $9a
	ld bc, $1b06                                     ; $4147: $01 $06 $1b
	inc a                                            ; $414a: $3c
	ld [hl], b                                       ; $414b: $70
	ld a, e                                          ; $414c: $7b
	ld d, h                                          ; $414d: $54
	ld a, e                                          ; $414e: $7b
	jr c, jr_05f_41c8                                ; $414f: $38 $77

	ld hl, sp-$80                                    ; $4151: $f8 $80
	ld h, a                                          ; $4153: $67
	cp c                                             ; $4154: $b9
	add $08                                          ; $4155: $c6 $08
	inc d                                            ; $4157: $14
	jr z, jr_05f_419b                                ; $4158: $28 $41

	add a                                            ; $415a: $87
	ld a, a                                          ; $415b: $7f
	ld sp, hl                                        ; $415c: $f9
	rst JumpTable                                          ; $415d: $c7
	ld c, $19                                        ; $415e: $0e $19
	ld [hl-], a                                      ; $4160: $32
	ld h, h                                          ; $4161: $64
	ret nz                                           ; $4162: $c0

	ld h, [hl]                                       ; $4163: $66
	sbc a                                            ; $4164: $9f
	ld sp, $1e2d                                     ; $4165: $31 $2d $1e
	ld a, [hl-]                                      ; $4168: $3a
	ld e, h                                          ; $4169: $5c
	scf                                              ; $416a: $37
	ld a, a                                          ; $416b: $7f
	rst AddAOntoHL                                          ; $416c: $ef
	rst SubAFromDE                                          ; $416d: $df
	or e                                             ; $416e: $b3
	ld h, e                                          ; $416f: $63
	rst JumpTable                                          ; $4170: $c7
	add a                                            ; $4171: $87
	sub e                                            ; $4172: $93
	dec c                                            ; $4173: $0d
	ld a, d                                          ; $4174: $7a
	or e                                             ; $4175: $b3
	xor $4c                                          ; $4176: $ee $4c
	cp b                                             ; $4178: $b8
	or b                                             ; $4179: $b0
	and c                                            ; $417a: $a1
	rst JumpTable                                          ; $417b: $c7
	ld h, $1f                                        ; $417c: $26 $1f
	sbc a                                            ; $417e: $9f

jr_05f_417f:
	ld [hl], a                                       ; $417f: $77
	ld l, b                                          ; $4180: $68
	sbc h                                            ; $4181: $9c
	ld a, b                                          ; $4182: $78
	sbc h                                            ; $4183: $9c
	ld [$9b78], sp                                   ; $4184: $08 $78 $9b
	ld a, l                                          ; $4187: $7d
	db $ed                                           ; $4188: $ed
	adc [hl]                                         ; $4189: $8e
	jp nz, $fcfe                                     ; $418a: $c2 $fe $fc

	db $fc                                           ; $418d: $fc
	rst $38                                          ; $418e: $ff
	rst $38                                          ; $418f: $ff
	pop bc                                           ; $4190: $c1
	ld bc, $bd02                                     ; $4191: $01 $02 $bd
	cp c                                             ; $4194: $b9
	cp c                                             ; $4195: $b9
	ld a, c                                          ; $4196: $79
	ld [hl], c                                       ; $4197: $71
	ld h, c                                          ; $4198: $61
	ld [hl], c                                       ; $4199: $71
	sbc c                                            ; $419a: $99

jr_05f_419b:
	sbc $e1                                          ; $419b: $de $e1
	sbc $c1                                          ; $419d: $de $c1
	sbc h                                            ; $419f: $9c
	pop hl                                           ; $41a0: $e1
	sub c                                            ; $41a1: $91
	ld h, c                                          ; $41a2: $61
	db $dd                                           ; $41a3: $dd

Jump_05f_41a4:
	ld b, c                                          ; $41a4: $41
	sbc $40                                          ; $41a5: $de $40
	reti                                             ; $41a7: $d9


	ret nz                                           ; $41a8: $c0

	ld a, b                                          ; $41a9: $78
	rst SubAFromHL                                          ; $41aa: $d7
	sbc d                                            ; $41ab: $9a
	ret nz                                           ; $41ac: $c0

	ldh [$f0], a                                     ; $41ad: $e0 $f0
	ld hl, sp-$04                                    ; $41af: $f8 $fc
	ld h, d                                          ; $41b1: $62
	ld d, [hl]                                       ; $41b2: $56
	sbc $07                                          ; $41b3: $de $07
	db $dd                                           ; $41b5: $dd
	rrca                                             ; $41b6: $0f
	ld sp, hl                                        ; $41b7: $f9
	ld [hl], e                                       ; $41b8: $73
	ld [de], a                                       ; $41b9: $12
	ld a, e                                          ; $41ba: $7b
	db $fd                                           ; $41bb: $fd
	rst $38                                          ; $41bc: $ff
	sbc h                                            ; $41bd: $9c
	inc b                                            ; $41be: $04
	inc bc                                           ; $41bf: $03
	ld [bc], a                                       ; $41c0: $02
	ld a, e                                          ; $41c1: $7b
	ld e, d                                          ; $41c2: $5a
	call c, $9cff                                    ; $41c3: $dc $ff $9c
	ld a, $9e                                        ; $41c6: $3e $9e

jr_05f_41c8:
	ldh [$7b], a                                     ; $41c8: $e0 $7b
	ld e, a                                          ; $41ca: $5f
	add [hl]                                         ; $41cb: $86
	ld bc, $32c1                                     ; $41cc: $01 $c1 $32
	sbc $60                                          ; $41cf: $de $60
	rst $38                                          ; $41d1: $ff
	rst $38                                          ; $41d2: $ff
	db $fd                                           ; $41d3: $fd
	pop hl                                           ; $41d4: $e1
	inc bc                                           ; $41d5: $03
	ld [bc], a                                       ; $41d6: $02
	ld b, $04                                        ; $41d7: $06 $04
	inc bc                                           ; $41d9: $03
	ld h, e                                          ; $41da: $63
	sbc l                                            ; $41db: $9d
	pop hl                                           ; $41dc: $e1
	ld [bc], a                                       ; $41dd: $02
	ld [bc], a                                       ; $41de: $02
	inc b                                            ; $41df: $04
	inc b                                            ; $41e0: $04
	add c                                            ; $41e1: $81
	add c                                            ; $41e2: $81
	inc bc                                           ; $41e3: $03
	rlca                                             ; $41e4: $07
	ld a, c                                          ; $41e5: $79
	ld c, l                                          ; $41e6: $4d
	sub h                                            ; $41e7: $94
	ld a, a                                          ; $41e8: $7f
	rst JumpTable                                          ; $41e9: $c7
	adc a                                            ; $41ea: $8f
	adc d                                            ; $41eb: $8a
	inc d                                            ; $41ec: $14
	jr z, jr_05f_41ff                                ; $41ed: $28 $10

	jr nz, jr_05f_4261                               ; $41ef: $20 $70

	rst GetHLinHL                                          ; $41f1: $cf
	rst GetHLinHL                                          ; $41f2: $cf
	sbc $ef                                          ; $41f3: $de $ef
	sbc $ff                                          ; $41f5: $de $ff
	rst SubAFromDE                                          ; $41f7: $df
	add b                                            ; $41f8: $80
	rst SubAFromDE                                          ; $41f9: $df
	ld b, b                                          ; $41fa: $40
	rst SubAFromDE                                          ; $41fb: $df
	jr nz, @+$01                                     ; $41fc: $20 $ff

	rst SubAFromDE                                          ; $41fe: $df

jr_05f_41ff:
	cp $db                                           ; $41ff: $fe $db
	db $fc                                           ; $4201: $fc
	ld [hl], a                                       ; $4202: $77
	call nc, $04dd                                   ; $4203: $d4 $dd $04
	ldh [$c1], a                                     ; $4206: $e0 $c1
	ld a, a                                          ; $4208: $7f
	cp c                                             ; $4209: $b9
	sbc l                                            ; $420a: $9d
	ld [$7b10], sp                                   ; $420b: $08 $10 $7b
	xor c                                            ; $420e: $a9
	ld h, e                                          ; $420f: $63
	ld hl, sp+$79                                    ; $4210: $f8 $79
	xor c                                            ; $4212: $a9
	sbc d                                            ; $4213: $9a
	dec bc                                           ; $4214: $0b
	rla                                              ; $4215: $17
	cpl                                              ; $4216: $2f
	ld e, [hl]                                       ; $4217: $5e
	cp l                                             ; $4218: $bd
	ld a, c                                          ; $4219: $79
	sbc c                                            ; $421a: $99
	add b                                            ; $421b: $80
	dec c                                            ; $421c: $0d
	ld a, [de]                                       ; $421d: $1a
	inc [hl]                                         ; $421e: $34
	ld l, c                                          ; $421f: $69
	db $d3                                           ; $4220: $d3
	ld [$e974], sp                                   ; $4221: $08 $74 $e9
	jp nc, Jump_05f_41a4                             ; $4224: $d2 $a4 $41

	and e                                            ; $4227: $a3
	ld l, [hl]                                       ; $4228: $6e
	add [hl]                                         ; $4229: $86
	ld c, h                                          ; $422a: $4c
	sbc b                                            ; $422b: $98
	add hl, sp                                       ; $422c: $39
	ld [hl], e                                       ; $422d: $73
	rst SubAFromBC                                          ; $422e: $e7
	rst GetHLinHL                                          ; $422f: $cf
	sbc a                                            ; $4230: $9f
	ld l, l                                          ; $4231: $6d
	jp c, Jump_05f_6ab5                              ; $4232: $da $b5 $6a

	call nc, $c038                                   ; $4235: $d4 $38 $c0
	nop                                              ; $4238: $00
	dec de                                           ; $4239: $1b
	scf                                              ; $423a: $37
	sub l                                            ; $423b: $95
	ld l, a                                          ; $423c: $6f
	rst SubAFromDE                                          ; $423d: $df
	cp a                                             ; $423e: $bf
	db $fd                                           ; $423f: $fd
	ldh [rP1], a                                     ; $4240: $e0 $00
	sbc $b8                                          ; $4242: $de $b8
	ld h, b                                          ; $4244: $60
	ret nz                                           ; $4245: $c0

	ld [hl], a                                       ; $4246: $77
	ld h, h                                          ; $4247: $64
	ld a, e                                          ; $4248: $7b
	ld a, [$7ffe]                                    ; $4249: $fa $fe $7f
	db $fc                                           ; $424c: $fc
	db $dd                                           ; $424d: $dd
	ld [bc], a                                       ; $424e: $02
	db $dd                                           ; $424f: $dd
	dec b                                            ; $4250: $05
	ld l, e                                          ; $4251: $6b
	ld hl, sp-$72                                    ; $4252: $f8 $8e
	dec c                                            ; $4254: $0d
	adc c                                            ; $4255: $89
	add [hl]                                         ; $4256: $86
	sbc d                                            ; $4257: $9a
	cp [hl]                                          ; $4258: $be
	ld a, [hl]                                       ; $4259: $7e
	cp $f2                                           ; $425a: $fe $f2
	ldh [c], a                                       ; $425c: $e2
	adc c                                            ; $425d: $89
	add [hl]                                         ; $425e: $86
	add d                                            ; $425f: $82
	add d                                            ; $4260: $82

jr_05f_4261:
	ld [bc], a                                       ; $4261: $02
	ld [bc], a                                       ; $4262: $02
	ld c, $1e                                        ; $4263: $0e $1e
	halt                                             ; $4265: $76
	rst JumpTable                                          ; $4266: $c7
	sbc d                                            ; $4267: $9a
	ldh [$a0], a                                     ; $4268: $e0 $a0
	or b                                             ; $426a: $b0
	adc b                                            ; $426b: $88
	ld b, b                                          ; $426c: $40
	sbc $80                                          ; $426d: $de $80

jr_05f_426f:
	ld a, a                                          ; $426f: $7f
	rst FarCall                                          ; $4270: $f7
	sbc l                                            ; $4271: $9d
	or b                                             ; $4272: $b0
	ret c                                            ; $4273: $d8

	ld [hl], c                                       ; $4274: $71
	or e                                             ; $4275: $b3
	ld [hl], c                                       ; $4276: $71
	or b                                             ; $4277: $b0
	sbc e                                            ; $4278: $9b
	db $10                                           ; $4279: $10
	ld [$060c], sp                                   ; $427a: $08 $0c $06
	halt                                             ; $427d: $76
	call nz, $8f9e                                   ; $427e: $c4 $9e $8f
	ld d, h                                          ; $4281: $54
	and b                                            ; $4282: $a0
	ld l, c                                          ; $4283: $69
	ret nc                                           ; $4284: $d0

	halt                                             ; $4285: $76
	ret nz                                           ; $4286: $c0

	halt                                             ; $4287: $76
	inc h                                            ; $4288: $24
	ld a, [hl]                                       ; $4289: $7e
	sub $9c                                          ; $428a: $d6 $9c
	ld h, b                                          ; $428c: $60
	jr nz, jr_05f_426f                               ; $428d: $20 $e0

	ld [hl], e                                       ; $428f: $73
	sub [hl]                                         ; $4290: $96
	ld a, a                                          ; $4291: $7f
	ld d, h                                          ; $4292: $54
	sbc [hl]                                         ; $4293: $9e
	jr nz, jr_05f_4309                               ; $4294: $20 $73

	ld hl, sp-$76                                    ; $4296: $f8 $8a
	dec c                                            ; $4298: $0d
	ld [de], a                                       ; $4299: $12
	dec d                                            ; $429a: $15
	ld a, [hl-]                                      ; $429b: $3a
	inc [hl]                                         ; $429c: $34
	ld l, b                                          ; $429d: $68
	ldh a, [$e0]                                     ; $429e: $f0 $e0
	ld [$1319], sp                                   ; $42a0: $08 $19 $13
	ld h, $2c                                        ; $42a3: $26 $2c
	ld e, b                                          ; $42a5: $58
	sub b                                            ; $42a6: $90
	and b                                            ; $42a7: $a0
	rst SubAFromDE                                          ; $42a8: $df
	adc a                                            ; $42a9: $8f
	rlca                                             ; $42aa: $07
	inc bc                                           ; $42ab: $03
	ld bc, $987a                                     ; $42ac: $01 $7a $98
	sbc e                                            ; $42af: $9b
	ret nc                                           ; $42b0: $d0

	adc b                                            ; $42b1: $88
	inc b                                            ; $42b2: $04
	ld [bc], a                                       ; $42b3: $02
	ld [hl], a                                       ; $42b4: $77
	ld hl, sp+$6b                                    ; $42b5: $f8 $6b
	pop bc                                           ; $42b7: $c1
	sbc [hl]                                         ; $42b8: $9e
	ld hl, sp+$6d                                    ; $42b9: $f8 $6d
	ldh [c], a                                       ; $42bb: $e2
	sbc l                                            ; $42bc: $9d
	add a                                            ; $42bd: $87
	sbc a                                            ; $42be: $9f
	ld a, e                                          ; $42bf: $7b
	sub b                                            ; $42c0: $90
	sbc l                                            ; $42c1: $9d
	db $fc                                           ; $42c2: $fc
	ldh [$7b], a                                     ; $42c3: $e0 $7b
	rst JumpTable                                          ; $42c5: $c7
	sbc e                                            ; $42c6: $9b
	ld [bc], a                                       ; $42c7: $02
	inc bc                                           ; $42c8: $03
	inc bc                                           ; $42c9: $03
	rra                                              ; $42ca: $1f
	ld [hl], h                                       ; $42cb: $74
	ld [hl], $8f                                     ; $42cc: $36 $8f
	nop                                              ; $42ce: $00
	ldh a, [$08]                                     ; $42cf: $f0 $08
	add sp, -$0c                                     ; $42d1: $e8 $f4
	ld [hl], h                                       ; $42d3: $74
	ld a, h                                          ; $42d4: $7c
	ld a, [hl-]                                      ; $42d5: $3a
	nop                                              ; $42d6: $00
	ldh a, [$f8]                                     ; $42d7: $f0 $f8
	jr jr_05f_42e7                                   ; $42d9: $18 $0c

	adc h                                            ; $42db: $8c
	add h                                            ; $42dc: $84
	add $e0                                          ; $42dd: $c6 $e0
	pop de                                           ; $42df: $d1
	ld a, d                                          ; $42e0: $7a
	ret c                                            ; $42e1: $d8

	rst SubAFromDE                                          ; $42e2: $df
	ld a, [bc]                                       ; $42e3: $0a
	sbc e                                            ; $42e4: $9b
	inc de                                           ; $42e5: $13
	inc d                                            ; $42e6: $14

jr_05f_42e7:
	jr z, jr_05f_42ea                                ; $42e7: $28 $01

	ld a, d                                          ; $42e9: $7a

jr_05f_42ea:
	ld c, c                                          ; $42ea: $49
	ld a, [hl]                                       ; $42eb: $7e
	ld c, b                                          ; $42ec: $48
	ld a, l                                          ; $42ed: $7d
	adc l                                            ; $42ee: $8d
	sbc e                                            ; $42ef: $9b
	ld a, d                                          ; $42f0: $7a
	push af                                          ; $42f1: $f5
	xor $5f                                          ; $42f2: $ee $5f
	ld a, d                                          ; $42f4: $7a
	inc hl                                           ; $42f5: $23
	sbc c                                            ; $42f6: $99
	nop                                              ; $42f7: $00
	and a                                            ; $42f8: $a7
	cpl                                              ; $42f9: $2f
	ld e, a                                          ; $42fa: $5f
	rst $38                                          ; $42fb: $ff
	rst $38                                          ; $42fc: $ff
	ld a, c                                          ; $42fd: $79
	ld a, c                                          ; $42fe: $79
	sub l                                            ; $42ff: $95
	ld [hl], b                                       ; $4300: $70
	add b                                            ; $4301: $80
	nop                                              ; $4302: $00
	db $fc                                           ; $4303: $fc
	inc bc                                           ; $4304: $03
	db $10                                           ; $4305: $10
	ld a, [hl]                                       ; $4306: $7e
	rst $38                                          ; $4307: $ff
	ld a, b                                          ; $4308: $78

jr_05f_4309:
	ret nz                                           ; $4309: $c0

	ld a, e                                          ; $430a: $7b
	ld [hl], l                                       ; $430b: $75
	sbc [hl]                                         ; $430c: $9e
	rrca                                             ; $430d: $0f

jr_05f_430e:
	ld [hl], c                                       ; $430e: $71
	ld e, c                                          ; $430f: $59
	sbc d                                            ; $4310: $9a
	ldh [$cf], a                                     ; $4311: $e0 $cf
	add hl, sp                                       ; $4313: $39
	ld b, $81                                        ; $4314: $06 $81
	db $fd                                           ; $4316: $fd
	sub d                                            ; $4317: $92
	ldh a, [$fe]                                     ; $4318: $f0 $fe
	rst $38                                          ; $431a: $ff
	ld a, a                                          ; $431b: $7f
	nop                                              ; $431c: $00
	ld hl, $f317                                     ; $431d: $21 $17 $f3
	ld sp, hl                                        ; $4320: $f9
	db $fc                                           ; $4321: $fc
	ld a, $80                                        ; $4322: $3e $80
	jr nz, jr_05f_439d                               ; $4324: $20 $77

	ld bc, $039b                                     ; $4326: $01 $9b $03
	pop bc                                           ; $4329: $c1
	rst $38                                          ; $432a: $ff
	dec a                                            ; $432b: $3d
	sbc $fd                                          ; $432c: $de $fd
	sbc e                                            ; $432e: $9b
	push af                                          ; $432f: $f5
	push bc                                          ; $4330: $c5
	add l                                            ; $4331: $85
	ld b, l                                          ; $4332: $45
	db $dd                                           ; $4333: $dd
	dec b                                            ; $4334: $05
	sbc [hl]                                         ; $4335: $9e
	dec c                                            ; $4336: $0d
	ld a, e                                          ; $4337: $7b
	di                                               ; $4338: $f3
	sbc [hl]                                         ; $4339: $9e
	jp nz, $ca7a                                     ; $433a: $c2 $7a $ca

	db $dd                                           ; $433d: $dd
	ld [bc], a                                       ; $433e: $02
	sbc l                                            ; $433f: $9d
	ld a, $7e                                        ; $4340: $3e $7e
	db $db                                           ; $4342: $db
	cp $9c                                           ; $4343: $fe $9c
	add [hl]                                         ; $4345: $86
	add e                                            ; $4346: $83
	add c                                            ; $4347: $81
	call c, $9b80                                    ; $4348: $dc $80 $9b
	db $ec                                           ; $434b: $ec
	or $fb                                           ; $434c: $f6 $fb
	db $fd                                           ; $434e: $fd
	reti                                             ; $434f: $d9


	rst $38                                          ; $4350: $ff
	sbc e                                            ; $4351: $9b
	ld a, [hl]                                       ; $4352: $7e
	dec e                                            ; $4353: $1d
	dec d                                            ; $4354: $15
	add hl, hl                                       ; $4355: $29
	sbc $03                                          ; $4356: $de $03
	sbc l                                            ; $4358: $9d
	add e                                            ; $4359: $83
	and $dc                                          ; $435a: $e6 $dc
	rst $38                                          ; $435c: $ff
	sbc h                                            ; $435d: $9c
	cp a                                             ; $435e: $bf
	rrca                                             ; $435f: $0f
	inc bc                                           ; $4360: $03
	cp $7a                                           ; $4361: $fe $7a
	and h                                            ; $4363: $a4
	sbc [hl]                                         ; $4364: $9e
	inc c                                            ; $4365: $0c
	ld [hl], a                                       ; $4366: $77
	ld hl, sp-$21                                    ; $4367: $f8 $df
	db $fc                                           ; $4369: $fc
	ld [hl], h                                       ; $436a: $74
	ld l, a                                          ; $436b: $6f
	ld a, c                                          ; $436c: $79
	add d                                            ; $436d: $82
	ld a, [hl]                                       ; $436e: $7e
	jr nz, jr_05f_430e                               ; $436f: $20 $9d

	jr jr_05f_43a3                                   ; $4371: $18 $30

	ld [hl], l                                       ; $4373: $75
	adc d                                            ; $4374: $8a
	rst SubAFromDE                                          ; $4375: $df
	inc bc                                           ; $4376: $03
	sbc l                                            ; $4377: $9d
	ld b, $0c                                        ; $4378: $06 $0c
	ld a, d                                          ; $437a: $7a
	dec d                                            ; $437b: $15
	ld a, [hl]                                       ; $437c: $7e
	jr @+$71                                         ; $437d: $18 $6f

	ld hl, sp+$72                                    ; $437f: $f8 $72
	cp e                                             ; $4381: $bb
	cp $7e                                           ; $4382: $fe $7e

jr_05f_4384:
	ld [hl], b                                       ; $4384: $70
	ld h, a                                          ; $4385: $67
	cpl                                              ; $4386: $2f
	sbc c                                            ; $4387: $99
	ld b, $39                                        ; $4388: $06 $39
	rst SubAFromBC                                          ; $438a: $e7
	sbc a                                            ; $438b: $9f
	cp a                                             ; $438c: $bf
	cp [hl]                                          ; $438d: $be
	ld a, b                                          ; $438e: $78
	ret nz                                           ; $438f: $c0

	sub [hl]                                         ; $4390: $96
	ld a, $f8                                        ; $4391: $3e $f8
	ldh [$c0], a                                     ; $4393: $e0 $c0
	pop bc                                           ; $4395: $c1
	rst SubAFromBC                                          ; $4396: $e7
	sbc a                                            ; $4397: $9f
	ld a, a                                          ; $4398: $7f
	rst $38                                          ; $4399: $ff
	db $dd                                           ; $439a: $dd
	ld a, a                                          ; $439b: $7f
	ld a, a                                          ; $439c: $7f

jr_05f_439d:
	db $f4                                           ; $439d: $f4
	ld a, a                                          ; $439e: $7f
	rst SubAFromDE                                          ; $439f: $df
	db $dd                                           ; $43a0: $dd
	add b                                            ; $43a1: $80
	ld [hl], d                                       ; $43a2: $72

jr_05f_43a3:
	ld l, e                                          ; $43a3: $6b
	ld l, b                                          ; $43a4: $68
	jr c, jr_05f_4384                                ; $43a5: $38 $dd

	ld a, a                                          ; $43a7: $7f
	sub e                                            ; $43a8: $93
	ld a, [de]                                       ; $43a9: $1a
	ld e, $0d                                        ; $43aa: $1e $0d
	dec c                                            ; $43ac: $0d
	rlca                                             ; $43ad: $07
	ld b, $06                                        ; $43ae: $06 $06
	ld [bc], a                                       ; $43b0: $02
	and $e2                                          ; $43b1: $e6 $e2
	di                                               ; $43b3: $f3
	di                                               ; $43b4: $f3
	sbc $f9                                          ; $43b5: $de $f9
	sbc [hl]                                         ; $43b7: $9e
	db $fd                                           ; $43b8: $fd
	ld l, [hl]                                       ; $43b9: $6e
	ld c, d                                          ; $43ba: $4a
	ld l, a                                          ; $43bb: $6f
	ret c                                            ; $43bc: $d8

	ld h, e                                          ; $43bd: $63
	ld hl, sp+$42                                    ; $43be: $f8 $42
	call z, $9b7d                                    ; $43c0: $cc $7d $9b
	ld l, a                                          ; $43c3: $6f
	ld hl, sp+$7e                                    ; $43c4: $f8 $7e
	res 0, a                                         ; $43c6: $cb $87
	jr nc, jr_05f_4433                               ; $43c8: $30 $69

	sub $a9                                          ; $43ca: $d6 $a9
	ld [hl], d                                       ; $43cc: $72
	ld h, [hl]                                       ; $43cd: $66
	call nz, $388c                                   ; $43ce: $c4 $8c $38
	ld [hl], b                                       ; $43d1: $70
	pop hl                                           ; $43d2: $e1
	add $8c                                          ; $43d3: $c6 $8c
	sbc b                                            ; $43d5: $98
	jr c, jr_05f_4448                                ; $43d6: $38 $70

	ld bc, $87c3                                     ; $43d8: $01 $c3 $87
	ld c, $1c                                        ; $43db: $0e $1c

jr_05f_43dd:
	jr c, jr_05f_4457                                ; $43dd: $38 $78

	ldh a, [$73]                                     ; $43df: $f0 $73
	pop hl                                           ; $43e1: $e1
	ld a, c                                          ; $43e2: $79
	pop af                                           ; $43e3: $f1
	ld l, a                                          ; $43e4: $6f
	sbc d                                            ; $43e5: $9a
	sbc l                                            ; $43e6: $9d
	ld a, a                                          ; $43e7: $7f
	ccf                                              ; $43e8: $3f
	ld l, a                                          ; $43e9: $6f
	adc d                                            ; $43ea: $8a
	ld a, l                                          ; $43eb: $7d
	call $c480                                       ; $43ec: $cd $80 $c4
	db $e3                                           ; $43ef: $e3
	pop hl                                           ; $43f0: $e1
	ldh a, [$f0]                                     ; $43f1: $f0 $f0
	ld hl, sp-$08                                    ; $43f3: $f8 $f8
	db $fc                                           ; $43f5: $fc
	dec sp                                           ; $43f6: $3b
	inc e                                            ; $43f7: $1c
	ld e, $0f                                        ; $43f8: $1e $0f
	rrca                                             ; $43fa: $0f
	rlca                                             ; $43fb: $07
	rlca                                             ; $43fc: $07
	inc bc                                           ; $43fd: $03

Jump_05f_43fe:
	ld h, b                                          ; $43fe: $60
	jr @-$38                                         ; $43ff: $18 $c6

	db $e3                                           ; $4401: $e3
	ld a, b                                          ; $4402: $78
	inc a                                            ; $4403: $3c
	ld a, $1f                                        ; $4404: $3e $1f
	rst $38                                          ; $4406: $ff
	rst $38                                          ; $4407: $ff
	ccf                                              ; $4408: $3f
	rra                                              ; $4409: $1f
	add a                                            ; $440a: $87
	jp $96c1                                         ; $440b: $c3 $c1 $96


	ldh [rAUDTERM], a                                ; $440e: $e0 $25
	dec d                                            ; $4410: $15
	dec c                                            ; $4411: $0d
	dec b                                            ; $4412: $05
	add l                                            ; $4413: $85
	ld b, l                                          ; $4414: $45
	dec h                                            ; $4415: $25
	dec d                                            ; $4416: $15
	reti                                             ; $4417: $d9


	db $fd                                           ; $4418: $fd
	call c, $9c02                                    ; $4419: $dc $02 $9c
	add d                                            ; $441c: $82
	jp nz, $d962                                     ; $441d: $c2 $62 $d9

	cp $dc                                           ; $4420: $fe $dc
	add b                                            ; $4422: $80
	rst SubAFromDE                                          ; $4423: $df
	add c                                            ; $4424: $81
	sbc [hl]                                         ; $4425: $9e
	add d                                            ; $4426: $82
	reti                                             ; $4427: $d9


	rst $38                                          ; $4428: $ff
	sub a                                            ; $4429: $97
	ld a, [hl+]                                      ; $442a: $2a
	ld d, d                                          ; $442b: $52
	ld d, h                                          ; $442c: $54
	and [hl]                                         ; $442d: $a6
	xor c                                            ; $442e: $a9
	ld e, a                                          ; $442f: $5f
	ld e, e                                          ; $4430: $5b
	xor b                                            ; $4431: $a8
	ld a, b                                          ; $4432: $78

jr_05f_4433:
	xor b                                            ; $4433: $a8
	ld a, [hl]                                       ; $4434: $7e
	ld [hl], d                                       ; $4435: $72
	ld a, a                                          ; $4436: $7f
	xor c                                            ; $4437: $a9
	sbc [hl]                                         ; $4438: $9e
	rst AddAOntoHL                                          ; $4439: $ef
	ld [hl], e                                       ; $443a: $73
	ld c, c                                          ; $443b: $49
	sbc l                                            ; $443c: $9d
	ld h, b                                          ; $443d: $60
	ret nc                                           ; $443e: $d0

	ld [hl], b                                       ; $443f: $70
	jr nc, jr_05f_43dd                               ; $4440: $30 $9b

	add b                                            ; $4442: $80
	ldh [$30], a                                     ; $4443: $e0 $30
	inc c                                            ; $4445: $0c
	ldh [$d1], a                                     ; $4446: $e0 $d1

jr_05f_4448:
	sbc h                                            ; $4448: $9c
	cp [hl]                                          ; $4449: $be
	cp $fc                                           ; $444a: $fe $fc
	sbc $5c                                          ; $444c: $de $5c
	sbc d                                            ; $444e: $9a
	ld a, b                                          ; $444f: $78
	ld l, b                                          ; $4450: $68
	pop bc                                           ; $4451: $c1
	pop bc                                           ; $4452: $c1
	jp Jump_05f_63de                                 ; $4453: $c3 $de $63


	sbc l                                            ; $4456: $9d

jr_05f_4457:
	ld h, a                                          ; $4457: $67
	ld [hl], a                                       ; $4458: $77
	ld l, a                                          ; $4459: $6f
	ld b, d                                          ; $445a: $42
	rst SubAFromDE                                          ; $445b: $df
	ccf                                              ; $445c: $3f
	ld l, a                                          ; $445d: $6f
	ld b, d                                          ; $445e: $42
	rst SubAFromDE                                          ; $445f: $df
	ret nz                                           ; $4460: $c0

	ld [hl], e                                       ; $4461: $73
	ei                                               ; $4462: $fb
	sbc $c0                                          ; $4463: $de $c0
	ld [hl], e                                       ; $4465: $73
	db $eb                                           ; $4466: $eb
	sbc $3f                                          ; $4467: $de $3f
	rst SubAFromDE                                          ; $4469: $df
	inc bc                                           ; $446a: $03
	sbc $01                                          ; $446b: $de $01
	ld [hl], d                                       ; $446d: $72
	ld e, b                                          ; $446e: $58
	sbc $fe                                          ; $446f: $de $fe
	sbc $ff                                          ; $4471: $de $ff
	ld a, b                                          ; $4473: $78

Call_05f_4474:
	or l                                             ; $4474: $b5
	sbc d                                            ; $4475: $9a
	ret nz                                           ; $4476: $c0

	and b                                            ; $4477: $a0
	and b                                            ; $4478: $a0
	ldh [$50], a                                     ; $4479: $e0 $50
	ld a, e                                          ; $447b: $7b
	reti                                             ; $447c: $d9


	ld a, h                                          ; $447d: $7c
	xor h                                            ; $447e: $ac
	ld a, l                                          ; $447f: $7d
	inc de                                           ; $4480: $13
	sbc [hl]                                         ; $4481: $9e
	or b                                             ; $4482: $b0
	pop af                                           ; $4483: $f1
	ld a, [hl]                                       ; $4484: $7e
	add hl, sp                                       ; $4485: $39
	ld a, [hl]                                       ; $4486: $7e
	ld c, e                                          ; $4487: $4b
	rst SubAFromDE                                          ; $4488: $df
	db $10                                           ; $4489: $10
	rst SubAFromDE                                          ; $448a: $df
	jr nz, @+$73                                     ; $448b: $20 $71

	sub d                                            ; $448d: $92
	sub d                                            ; $448e: $92
	rra                                              ; $448f: $1f
	ccf                                              ; $4490: $3f
	ccf                                              ; $4491: $3f
	jr jr_05f_44a5                                   ; $4492: $18 $11

	ld sp, $6323                                     ; $4494: $31 $23 $63
	ld b, a                                          ; $4497: $47
	rst JumpTable                                          ; $4498: $c7
	adc a                                            ; $4499: $8f
	ldh [$e0], a                                     ; $449a: $e0 $e0
	ld [hl], a                                       ; $449c: $77
	and h                                            ; $449d: $a4
	ld a, c                                          ; $449e: $79
	xor h                                            ; $449f: $ac
	ld l, e                                          ; $44a0: $6b
	rst FarCall                                          ; $44a1: $f7
	ld a, e                                          ; $44a2: $7b
	ldh [c], a                                       ; $44a3: $e2
	rst SubAFromDE                                          ; $44a4: $df

jr_05f_44a5:
	ccf                                              ; $44a5: $3f
	rst SubAFromDE                                          ; $44a6: $df
	ld a, a                                          ; $44a7: $7f
	ld a, [hl]                                       ; $44a8: $7e
	ld [$3fdf], a                                    ; $44a9: $ea $df $3f
	sbc $1f                                          ; $44ac: $de $1f
	rst SubAFromDE                                          ; $44ae: $df
	rrca                                             ; $44af: $0f
	ld [hl], h                                       ; $44b0: $74
	adc c                                            ; $44b1: $89
	rst SubAFromDE                                          ; $44b2: $df
	ldh [$df], a                                     ; $44b3: $e0 $df
	ldh a, [$67]                                     ; $44b5: $f0 $67
	sbc b                                            ; $44b7: $98
	ld h, a                                          ; $44b8: $67
	adc b                                            ; $44b9: $88
	ld a, e                                          ; $44ba: $7b
	push hl                                          ; $44bb: $e5
	halt                                             ; $44bc: $76
	cp c                                             ; $44bd: $b9
	sbc [hl]                                         ; $44be: $9e
	inc bc                                           ; $44bf: $03
	ld a, e                                          ; $44c0: $7b
	push hl                                          ; $44c1: $e5
	halt                                             ; $44c2: $76
	xor c                                            ; $44c3: $a9
	sbc l                                            ; $44c4: $9d
	db $fc                                           ; $44c5: $fc
	dec c                                            ; $44c6: $0d
	ld [hl], b                                       ; $44c7: $70
	ld b, [hl]                                       ; $44c8: $46
	rst SubAFromDE                                          ; $44c9: $df
	ld bc, $fddf                                     ; $44ca: $01 $df $fd
	db $dd                                           ; $44cd: $dd
	cp $df                                           ; $44ce: $fe $df
	rst $38                                          ; $44d0: $ff
	sbc h                                            ; $44d1: $9c
	ld de, $870d                                     ; $44d2: $11 $0d $87
	ld a, c                                          ; $44d5: $79
	adc a                                            ; $44d6: $8f
	rst SubAFromDE                                          ; $44d7: $df
	ld b, b                                          ; $44d8: $40
	db $db                                           ; $44d9: $db
	rst $38                                          ; $44da: $ff
	rst SubAFromDE                                          ; $44db: $df
	ld a, a                                          ; $44dc: $7f
	sub a                                            ; $44dd: $97
	ld b, d                                          ; $44de: $42
	ld b, l                                          ; $44df: $45
	ld b, l                                          ; $44e0: $45
	ld l, d                                          ; $44e1: $6a
	cp a                                             ; $44e2: $bf
	and l                                            ; $44e3: $a5
	and l                                            ; $44e4: $a5
	ld d, d                                          ; $44e5: $52
	db $dd                                           ; $44e6: $dd
	ld a, a                                          ; $44e7: $7f
	sbc $bf                                          ; $44e8: $de $bf
	sbc d                                            ; $44ea: $9a
	rst SubAFromDE                                          ; $44eb: $df
	xor b                                            ; $44ec: $a8
	ld l, b                                          ; $44ed: $68
	ld l, b                                          ; $44ee: $68
	xor b                                            ; $44ef: $a8
	sbc $28                                          ; $44f0: $de $28
	sbc [hl]                                         ; $44f2: $9e
	xor b                                            ; $44f3: $a8
	reti                                             ; $44f4: $d9


	rst AddAOntoHL                                          ; $44f5: $ef
	sub b                                            ; $44f6: $90
	ld a, [hl-]                                      ; $44f7: $3a
	dec c                                            ; $44f8: $0d
	ld l, $2f                                        ; $44f9: $2e $2f

jr_05f_44fb:
	scf                                              ; $44fb: $37
	rla                                              ; $44fc: $17
	ld e, $0a                                        ; $44fd: $1e $0a
	add $f3                                          ; $44ff: $c6 $f3
	pop af                                           ; $4501: $f1
	ldh a, [$f8]                                     ; $4502: $f0 $f8
	db $fc                                           ; $4504: $fc
	db $fd                                           ; $4505: $fd
	ld a, c                                          ; $4506: $79
	ldh a, [$7f]                                     ; $4507: $f0 $7f
	jp $a09b                                         ; $4509: $c3 $9b $a0


	ret nc                                           ; $450c: $d0

	add sp, -$1c                                     ; $450d: $e8 $e4
	ld a, e                                          ; $450f: $7b
	ld hl, sp-$66                                    ; $4510: $f8 $9a
	ret nz                                           ; $4512: $c0

	ld h, b                                          ; $4513: $60
	jr nc, jr_05f_452e                               ; $4514: $30 $18

	inc e                                            ; $4516: $1c
	pop hl                                           ; $4517: $e1
	sbc $28                                          ; $4518: $de $28
	rst SubAFromDE                                          ; $451a: $df
	jr c, jr_05f_44fb                                ; $451b: $38 $de

	db $10                                           ; $451d: $10
	call c, Call_05f_7337                            ; $451e: $dc $37 $73
	ld e, $77                                        ; $4521: $1e $77
	ld b, b                                          ; $4523: $40
	rst SubAFromDE                                          ; $4524: $df
	rra                                              ; $4525: $1f
	ld l, a                                          ; $4526: $6f
	ld b, b                                          ; $4527: $40
	rst SubAFromHL                                          ; $4528: $d7
	ldh [$d9], a                                     ; $4529: $e0 $d9
	rra                                              ; $452b: $1f
	ld sp, hl                                        ; $452c: $f9
	reti                                             ; $452d: $d9


jr_05f_452e:
	rst $38                                          ; $452e: $ff
	adc a                                            ; $452f: $8f
	ld d, b                                          ; $4530: $50
	ld [hl], b                                       ; $4531: $70
	jr nc, jr_05f_455c                               ; $4532: $30 $28

	jr c, jr_05f_454e                                ; $4534: $38 $18

	inc d                                            ; $4536: $14
	inc c                                            ; $4537: $0c
	or b                                             ; $4538: $b0
	sub b                                            ; $4539: $90
	ret nc                                           ; $453a: $d0

	ret c                                            ; $453b: $d8

	ret z                                            ; $453c: $c8

	add sp, -$14                                     ; $453d: $e8 $ec
	db $f4                                           ; $453f: $f4
	pop af                                           ; $4540: $f1
	ld e, b                                          ; $4541: $58
	nop                                              ; $4542: $00
	rst SubAFromDE                                          ; $4543: $df
	inc sp                                           ; $4544: $33
	sbc [hl]                                         ; $4545: $9e
	inc [hl]                                         ; $4546: $34
	db $db                                           ; $4547: $db
	ld b, h                                          ; $4548: $44
	sbc [hl]                                         ; $4549: $9e
	ld b, e                                          ; $454a: $43
	ld [hl], e                                       ; $454b: $73
	or $9b                                           ; $454c: $f6 $9b

jr_05f_454e:
	ld b, a                                          ; $454e: $47
	ld [hl], a                                       ; $454f: $77
	ld [hl], a                                       ; $4550: $77
	ld [hl], e                                       ; $4551: $73
	ld [hl], e                                       ; $4552: $73
	or $9a                                           ; $4553: $f6 $9a
	inc [hl]                                         ; $4555: $34
	inc sp                                           ; $4556: $33
	ld d, a                                          ; $4557: $57
	ld [hl], h                                       ; $4558: $74
	ld [hl], a                                       ; $4559: $77
	sbc $33                                          ; $455a: $de $33

jr_05f_455c:
	ld a, a                                          ; $455c: $7f
	or $7f                                           ; $455d: $f6 $7f
	pop af                                           ; $455f: $f1
	sbc [hl]                                         ; $4560: $9e
	ld d, a                                          ; $4561: $57
	ld a, e                                          ; $4562: $7b
	ldh a, [c]                                       ; $4563: $f2
	ld l, a                                          ; $4564: $6f
	or $7f                                           ; $4565: $f6 $7f
	db $e3                                           ; $4567: $e3
	ld a, e                                          ; $4568: $7b
	or $7f                                           ; $4569: $f6 $7f
	db $fd                                           ; $456b: $fd
	sbc d                                            ; $456c: $9a
	ld b, l                                          ; $456d: $45
	ld b, e                                          ; $456e: $43
	scf                                              ; $456f: $37
	inc sp                                           ; $4570: $33
	ld [hl], e                                       ; $4571: $73
	sbc $33                                          ; $4572: $de $33
	sbc d                                            ; $4574: $9a
	ld b, h                                          ; $4575: $44
	ld b, [hl]                                       ; $4576: $46
	ld h, l                                          ; $4577: $65
	ld d, e                                          ; $4578: $53
	inc sp                                           ; $4579: $33
	ld [hl], a                                       ; $457a: $77
	or $7f                                           ; $457b: $f6 $7f
	db $e4                                           ; $457d: $e4
	sbc l                                            ; $457e: $9d
	ld b, [hl]                                       ; $457f: $46
	ld [hl], $77                                     ; $4580: $36 $77
	rst SubAFromBC                                          ; $4582: $e7
	sbc c                                            ; $4583: $99
	ld [hl], $63                                     ; $4584: $36 $63
	inc [hl]                                         ; $4586: $34
	ld b, [hl]                                       ; $4587: $46
	ld h, [hl]                                       ; $4588: $66
	ld h, [hl]                                       ; $4589: $66
	ld a, e                                          ; $458a: $7b
	rst SubAFromBC                                          ; $458b: $e7
	rst SubAFromDE                                          ; $458c: $df
	ld h, [hl]                                       ; $458d: $66
	sbc l                                            ; $458e: $9d
	ld h, e                                          ; $458f: $63
	ld [hl], $7b                                     ; $4590: $36 $7b
	rst FarCall                                          ; $4592: $f7
	ld a, a                                          ; $4593: $7f
	db $fc                                           ; $4594: $fc
	sbc [hl]                                         ; $4595: $9e
	inc sp                                           ; $4596: $33
	ld d, e                                          ; $4597: $53
	or $8c                                           ; $4598: $f6 $8c
	ld [$6a9b], sp                                   ; $459a: $08 $9b $6a
	sub h                                            ; $459d: $94
	ld b, h                                          ; $459e: $44
	cp d                                             ; $459f: $ba
	ld d, a                                          ; $45a0: $57
	db $fc                                           ; $45a1: $fc
	sbc c                                            ; $45a2: $99
	nop                                              ; $45a3: $00
	dec d                                            ; $45a4: $15
	nop                                              ; $45a5: $00
	ld a, [bc]                                       ; $45a6: $0a
	nop                                              ; $45a7: $00
	ld bc, $9cf6                                     ; $45a8: $01 $f6 $9c
	ld d, l                                          ; $45ab: $55
	nop                                              ; $45ac: $00
	xor d                                            ; $45ad: $aa
	ld a, e                                          ; $45ae: $7b
	db $fc                                           ; $45af: $fc
	sbc [hl]                                         ; $45b0: $9e
	ld a, [hl+]                                      ; $45b1: $2a
	ld h, e                                          ; $45b2: $63
	db $ec                                           ; $45b3: $ec
	ld l, a                                          ; $45b4: $6f
	ldh a, [rPCM34]                                  ; $45b5: $f0 $77
	db $fc                                           ; $45b7: $fc
	dec sp                                           ; $45b8: $3b
	ldh a, [$9d]                                     ; $45b9: $f0 $9d
	inc [hl]                                         ; $45bb: $34
	ld a, [bc]                                       ; $45bc: $0a
	ld e, e                                          ; $45bd: $5b
	ldh a, [$7f]                                     ; $45be: $f0 $7f
	db $f4                                           ; $45c0: $f4
	ld c, a                                          ; $45c1: $4f
	ldh [$7f], a                                     ; $45c2: $e0 $7f
	db $fc                                           ; $45c4: $fc
	ld b, a                                          ; $45c5: $47
	ldh a, [$7f]                                     ; $45c6: $f0 $7f
	sub h                                            ; $45c8: $94
	ld c, a                                          ; $45c9: $4f
	ldh a, [$7f]                                     ; $45ca: $f0 $7f
	db $fc                                           ; $45cc: $fc
	sbc [hl]                                         ; $45cd: $9e
	ld [bc], a                                       ; $45ce: $02
	ld c, a                                          ; $45cf: $4f
	ldh a, [$9d]                                     ; $45d0: $f0 $9d
	ld bc, $4fab                                     ; $45d2: $01 $ab $4f
	ldh a, [$9d]                                     ; $45d5: $f0 $9d
	ld a, [hl]                                       ; $45d7: $7e
	cp $4f                                           ; $45d8: $fe $4f
	ldh a, [$9e]                                     ; $45da: $f0 $9e
	and b                                            ; $45dc: $a0
	ld d, a                                          ; $45dd: $57
	call nz, $fc03                                   ; $45de: $c4 $03 $fc
	ld a, e                                          ; $45e1: $7b
	db $fc                                           ; $45e2: $fc
	sbc [hl]                                         ; $45e3: $9e
	and b                                            ; $45e4: $a0
	ld c, e                                          ; $45e5: $4b
	ldh a, [rBGP]                                    ; $45e6: $f0 $47
	add b                                            ; $45e8: $80
	ld c, a                                          ; $45e9: $4f
	ldh a, [$9e]                                     ; $45ea: $f0 $9e
	ld d, h                                          ; $45ec: $54
	inc de                                           ; $45ed: $13
	ld b, b                                          ; $45ee: $40
	ld a, a                                          ; $45ef: $7f
	or h                                             ; $45f0: $b4
	cp $42                                           ; $45f1: $fe $42
	ret nz                                           ; $45f3: $c0

	ld hl, sp-$67                                    ; $45f4: $f8 $99
	jr nc, jr_05f_45f8                               ; $45f6: $30 $00

jr_05f_45f8:
	jr nc, jr_05f_4602                               ; $45f8: $30 $08

	jr c, jr_05f_4600                                ; $45fa: $38 $04

	rst SubAFromBC                                          ; $45fc: $e7
	sbc [hl]                                         ; $45fd: $9e
	rrca                                             ; $45fe: $0f
	ld a, e                                          ; $45ff: $7b

jr_05f_4600:
	cp $8e                                           ; $4600: $fe $8e

jr_05f_4602:
	dec bc                                           ; $4602: $0b
	inc b                                            ; $4603: $04
	ld a, [hl+]                                      ; $4604: $2a
	inc d                                            ; $4605: $14
	inc a                                            ; $4606: $3c
	ld [bc], a                                       ; $4607: $02
	ld [hl-], a                                      ; $4608: $32
	inc b                                            ; $4609: $04
	rla                                              ; $460a: $17
	ld [$000f], sp                                   ; $460b: $08 $0f $00
	rst $38                                          ; $460e: $ff
	nop                                              ; $460f: $00
	cp $01                                           ; $4610: $fe $01
	rst $38                                          ; $4612: $ff
	ld a, [$f09e]                                    ; $4613: $fa $9e $f0
	ld [hl], a                                       ; $4616: $77
	cp $9a                                           ; $4617: $fe $9a
	ld [$04f8], sp                                   ; $4619: $08 $f8 $04
	ld d, h                                          ; $461c: $54
	adc b                                            ; $461d: $88
	pop hl                                           ; $461e: $e1
	ld a, [hl]                                       ; $461f: $7e
	ld l, c                                          ; $4620: $69
	ld a, a                                          ; $4621: $7f
	add $80                                          ; $4622: $c6 $80
	rra                                              ; $4624: $1f
	ld bc, $03bd                                     ; $4625: $01 $bd $03
	ld a, a                                          ; $4628: $7f
	ld [$00bd], sp                                   ; $4629: $08 $bd $00
	ld a, e                                          ; $462c: $7b
	nop                                              ; $462d: $00
	xor [hl]                                         ; $462e: $ae
	ld bc, $074f                                     ; $462f: $01 $4f $07
	rst $38                                          ; $4632: $ff
	inc c                                            ; $4633: $0c
	rst $38                                          ; $4634: $ff
	nop                                              ; $4635: $00
	db $eb                                           ; $4636: $eb
	ret nz                                           ; $4637: $c0

	ld a, a                                          ; $4638: $7f
	ret z                                            ; $4639: $c8

	rst $38                                          ; $463a: $ff
	ld b, c                                          ; $463b: $41
	rst SubAFromDE                                          ; $463c: $df
	inc bc                                           ; $463d: $03
	rst $38                                          ; $463e: $ff
	nop                                              ; $463f: $00
	rst $38                                          ; $4640: $ff
	sub e                                            ; $4641: $93
	rst $38                                          ; $4642: $ff
	add d                                            ; $4643: $82
	ld a, e                                          ; $4644: $7b
	rst $38                                          ; $4645: $ff
	ccf                                              ; $4646: $3f
	rst $38                                          ; $4647: $ff
	rrca                                             ; $4648: $0f
	rst $38                                          ; $4649: $ff
	rra                                              ; $464a: $1f
	rst $38                                          ; $464b: $ff
	rst $38                                          ; $464c: $ff
	cp a                                             ; $464d: $bf
	ldh [c], a                                       ; $464e: $e2
	rst $38                                          ; $464f: $ff
	pop af                                           ; $4650: $f1
	call z, Call_05f_40e3                            ; $4651: $cc $e3 $40
	cp $ed                                           ; $4654: $fe $ed
	cp $ff                                           ; $4656: $fe $ff
	db $fd                                           ; $4658: $fd
	rst $38                                          ; $4659: $ff
	ld sp, hl                                        ; $465a: $f9
	rst $38                                          ; $465b: $ff
	db $e4                                           ; $465c: $e4
	rst $38                                          ; $465d: $ff
	ld b, l                                          ; $465e: $45
	rst $38                                          ; $465f: $ff
	add b                                            ; $4660: $80
	db $fd                                           ; $4661: $fd
	sub e                                            ; $4662: $93
	call z, $fe00                                    ; $4663: $cc $00 $fe
	nop                                              ; $4666: $00
	rst FarCall                                          ; $4667: $f7
	ld [$1eff], sp                                   ; $4668: $08 $ff $1e
	rst SubAFromDE                                          ; $466b: $df
	ld a, $8b                                        ; $466c: $3e $8b
	ld a, h                                          ; $466e: $7c
	push af                                          ; $466f: $f5
	sbc e                                            ; $4670: $9b
	and b                                            ; $4671: $a0
	sub b                                            ; $4672: $90
	ldh a, [$f8]                                     ; $4673: $f0 $f8
	ldh [$b2], a                                     ; $4675: $e0 $b2
	ld d, l                                          ; $4677: $55
	and [hl]                                         ; $4678: $a6
	ld a, e                                          ; $4679: $7b
	adc d                                            ; $467a: $8a
	ld a, a                                          ; $467b: $7f
	cp $46                                           ; $467c: $fe $46
	ret nz                                           ; $467e: $c0

	ld a, l                                          ; $467f: $7d
	cp [hl]                                          ; $4680: $be
	sbc b                                            ; $4681: $98
	ld a, [hl-]                                      ; $4682: $3a
	dec b                                            ; $4683: $05
	inc [hl]                                         ; $4684: $34
	ld [$0439], sp                                   ; $4685: $08 $39 $04
	dec [hl]                                         ; $4688: $35
	ld l, e                                          ; $4689: $6b
	db $fc                                           ; $468a: $fc
	db $fd                                           ; $468b: $fd
	adc a                                            ; $468c: $8f
	db $10                                           ; $468d: $10
	jr nz, jr_05f_46b0                               ; $468e: $20 $20

	sub b                                            ; $4690: $90
	or b                                             ; $4691: $b0
	ld [$813a], sp                                   ; $4692: $08 $3a $81
	or e                                             ; $4695: $b3
	ld [$8132], sp                                   ; $4696: $08 $32 $81
	dec c                                            ; $4699: $0d
	ld [bc], a                                       ; $469a: $02
	dec bc                                           ; $469b: $0b
	inc b                                            ; $469c: $04
	halt                                             ; $469d: $76
	add $7b                                          ; $469e: $c6 $7b
	cp $95                                           ; $46a0: $fe $95
	ldh a, [$0d]                                     ; $46a2: $f0 $0d
	ldh a, [c]                                       ; $46a4: $f2
	dec bc                                           ; $46a5: $0b
	db $f4                                           ; $46a6: $f4
	cp $01                                           ; $46a7: $fe $01
	ld d, l                                          ; $46a9: $55
	xor d                                            ; $46aa: $aa
	ret z                                            ; $46ab: $c8

	ld a, d                                          ; $46ac: $7a
	call nz, $8087                                   ; $46ad: $c4 $87 $80

jr_05f_46b0:
	ld a, [hl+]                                      ; $46b0: $2a
	add b                                            ; $46b1: $80
	ld d, l                                          ; $46b2: $55
	ld hl, sp+$00                                    ; $46b3: $f8 $00
	cp b                                             ; $46b5: $b8
	nop                                              ; $46b6: $00
	ldh a, [$0c]                                     ; $46b7: $f0 $0c
	ld d, h                                          ; $46b9: $54
	xor d                                            ; $46ba: $aa
	sub d                                            ; $46bb: $92
	ld bc, $02fd                                     ; $46bc: $01 $fd $02
	ld b, d                                          ; $46bf: $42
	and c                                            ; $46c0: $a1
	ld de, $9342                                     ; $46c1: $11 $42 $93
	nop                                              ; $46c4: $00
	ld bc, $fd02                                     ; $46c5: $01 $02 $fd
	ld a, a                                          ; $46c8: $7f
	dec de                                           ; $46c9: $1b
	ld a, a                                          ; $46ca: $7f
	cp $9e                                           ; $46cb: $fe $9e
	ret nz                                           ; $46cd: $c0

	ld l, e                                          ; $46ce: $6b
	cp $9e                                           ; $46cf: $fe $9e
	dec b                                            ; $46d1: $05
	ld a, c                                          ; $46d2: $79
	ld l, c                                          ; $46d3: $69
	halt                                             ; $46d4: $76
	ld b, c                                          ; $46d5: $41
	adc b                                            ; $46d6: $88
	db $d3                                           ; $46d7: $d3
	inc c                                            ; $46d8: $0c
	ld [hl+], a                                      ; $46d9: $22
	sbc b                                            ; $46da: $98
	ld b, l                                          ; $46db: $45
	jr jr_05f_4708                                   ; $46dc: $18 $2a

	nop                                              ; $46de: $00
	ld e, l                                          ; $46df: $5d
	add a                                            ; $46e0: $87
	ld a, e                                          ; $46e1: $7b
	adc h                                            ; $46e2: $8c
	rst SubAFromHL                                          ; $46e3: $d7
	inc c                                            ; $46e4: $0c
	xor d                                            ; $46e5: $aa
	rra                                              ; $46e6: $1f
	dec d                                            ; $46e7: $15
	ld a, a                                          ; $46e8: $7f
	scf                                              ; $46e9: $37
	bit 3, a                                         ; $46ea: $cb $5f
	add c                                            ; $46ec: $81
	cp a                                             ; $46ed: $bf
	ld a, d                                          ; $46ee: $7a
	ld a, [hl]                                       ; $46ef: $7e
	add c                                            ; $46f0: $81
	rst $38                                          ; $46f1: $ff
	inc bc                                           ; $46f2: $03
	rst $38                                          ; $46f3: $ff
	ld a, e                                          ; $46f4: $7b
	sbc a                                            ; $46f5: $9f
	ccf                                              ; $46f6: $3f
	ld [hl], l                                       ; $46f7: $75
	cp $bd                                           ; $46f8: $fe $bd
	or $eb                                           ; $46fa: $f6 $eb
	call z, $e0f9                                    ; $46fc: $cc $f9 $e0
	cp $21                                           ; $46ff: $fe $21
	push af                                          ; $4701: $f5
	ld l, $eb                                        ; $4702: $2e $eb
	ld a, h                                          ; $4704: $7c
	cp [hl]                                          ; $4705: $be
	ld sp, hl                                        ; $4706: $f9
	rst $38                                          ; $4707: $ff

jr_05f_4708:
	jr @-$05                                         ; $4708: $18 $f9

	ld d, $fe                                        ; $470a: $16 $fe
	inc bc                                           ; $470c: $03
	cp $0f                                           ; $470d: $fe $0f
	ld a, e                                          ; $470f: $7b
	ldh [$9a], a                                     ; $4710: $e0 $9a
	ld bc, $61bf                                     ; $4712: $01 $bf $61
	rst $38                                          ; $4715: $ff
	rst FarCall                                          ; $4716: $f7
	ld a, d                                          ; $4717: $7a
	xor h                                            ; $4718: $ac
	add b                                            ; $4719: $80

jr_05f_471a:
	ld a, a                                          ; $471a: $7f
	ld hl, sp-$31                                    ; $471b: $f8 $cf
	db $d3                                           ; $471d: $d3
	db $ed                                           ; $471e: $ed
	and e                                            ; $471f: $a3
	ld e, h                                          ; $4720: $5c
	ld a, l                                          ; $4721: $7d
	cp d                                             ; $4722: $ba
	ld h, a                                          ; $4723: $67
	sbc e                                            ; $4724: $9b
	add h                                            ; $4725: $84
	ei                                               ; $4726: $fb
	adc b                                            ; $4727: $88
	rst $38                                          ; $4728: $ff

jr_05f_4729:
	ld a, a                                          ; $4729: $7f
	rst GetHLinHL                                          ; $472a: $cf
	dec c                                            ; $472b: $0d
	rst $38                                          ; $472c: $ff
	ret c                                            ; $472d: $d8

	rst AddAOntoHL                                          ; $472e: $ef
	ld hl, sp+$00                                    ; $472f: $f8 $00
	sbc b                                            ; $4731: $98

jr_05f_4732:
	ld [hl], b                                       ; $4732: $70
	db $10                                           ; $4733: $10
	ldh [hDisp1_LCDC], a                                     ; $4734: $e0 $8f
	ldh a, [$9f]                                     ; $4736: $f0 $9f
	ldh [hDisp0_WX], a                                     ; $4738: $e0 $89
	cp a                                             ; $473a: $bf
	ret nz                                           ; $473b: $c0

	ld d, l                                          ; $473c: $55
	xor d                                            ; $473d: $aa
	ld a, [hl+]                                      ; $473e: $2a
	push de                                          ; $473f: $d5
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	jr nz, jr_05f_4744                               ; $4742: $20 $00

jr_05f_4744:
	ld h, b                                          ; $4744: $60
	nop                                              ; $4745: $00
	ldh [rP1], a                                     ; $4746: $e0 $00
	ld hl, sp+$00                                    ; $4748: $f8 $00
	inc a                                            ; $474a: $3c
	ret nz                                           ; $474b: $c0

	db $10                                           ; $474c: $10
	add sp, $20                                      ; $474d: $e8 $20
	ldh a, [$eb]                                     ; $474f: $f0 $eb
	sbc e                                            ; $4751: $9b
	ld [bc], a                                       ; $4752: $02
	inc bc                                           ; $4753: $03
	ld b, $07                                        ; $4754: $06 $07
	ld l, a                                          ; $4756: $6f
	cp $fa                                           ; $4757: $fe $fa
	sub d                                            ; $4759: $92
	rst $38                                          ; $475a: $ff
	ld [$183f], sp                                   ; $475b: $08 $3f $18
	db $fd                                           ; $475e: $fd
	add hl, de                                       ; $475f: $19
	dec sp                                           ; $4760: $3b
	jr jr_05f_4780                                   ; $4761: $18 $1d

	ld bc, $0202                                     ; $4763: $01 $02 $02
	ld bc, $fc7b                                     ; $4766: $01 $7b $fc
	sbc [hl]                                         ; $4769: $9e
	add c                                            ; $476a: $81
	ld a, e                                          ; $476b: $7b
	dec e                                            ; $476c: $1d
	sbc d                                            ; $476d: $9a
	ld d, a                                          ; $476e: $57
	db $10                                           ; $476f: $10
	cp e                                             ; $4770: $bb
	adc e                                            ; $4771: $8b
	rst SubAFromDE                                          ; $4772: $df
	ld [hl], a                                       ; $4773: $77
	inc [hl]                                         ; $4774: $34
	ld a, a                                          ; $4775: $7f
	di                                               ; $4776: $f3
	sbc b                                            ; $4777: $98
	and d                                            ; $4778: $a2
	inc sp                                           ; $4779: $33
	ld de, $22b3                                     ; $477a: $11 $b3 $22
	or e                                             ; $477d: $b3
	inc sp                                           ; $477e: $33
	ld a, e                                          ; $477f: $7b

jr_05f_4780:
	di                                               ; $4780: $f3
	ld b, [hl]                                       ; $4781: $46
	ret nz                                           ; $4782: $c0

	ld h, [hl]                                       ; $4783: $66
	ret z                                            ; $4784: $c8

	ld a, a                                          ; $4785: $7f
	db $fc                                           ; $4786: $fc
	sbc l                                            ; $4787: $9d
	add hl, hl                                       ; $4788: $29
	inc d                                            ; $4789: $14
	ld [hl], a                                       ; $478a: $77
	db $fc                                           ; $478b: $fc
	halt                                             ; $478c: $76
	call z, $b091                                    ; $478d: $cc $91 $b0
	rrca                                             ; $4790: $0f
	jr nc, jr_05f_471a                               ; $4791: $30 $87

	ldh a, [rIF]                                     ; $4793: $f0 $0f
	ld [hl], b                                       ; $4795: $70
	add a                                            ; $4796: $87
	ret nc                                           ; $4797: $d0

	rrca                                             ; $4798: $0f
	jr z, jr_05f_4732                                ; $4799: $28 $97

	rrca                                             ; $479b: $0f
	ldh a, [$67]                                     ; $479c: $f0 $67
	cp $7e                                           ; $479e: $fe $7e
	call nz, $c07e                                   ; $47a0: $c4 $7e $c0
	ld a, a                                          ; $47a3: $7f
	ld a, [$df94]                                    ; $47a4: $fa $94 $df
	jr nz, jr_05f_4729                               ; $47a7: $20 $80

	ld d, l                                          ; $47a9: $55
	rst JumpTable                                          ; $47aa: $c7
	nop                                              ; $47ab: $00
	adc [hl]                                         ; $47ac: $8e

jr_05f_47ad:
	nop                                              ; $47ad: $00
	cp e                                             ; $47ae: $bb
	nop                                              ; $47af: $00
	ret nz                                           ; $47b0: $c0

	ld a, d                                          ; $47b1: $7a
	cp [hl]                                          ; $47b2: $be
	ld a, a                                          ; $47b3: $7f
	sbc e                                            ; $47b4: $9b
	sub b                                            ; $47b5: $90
	pop af                                           ; $47b6: $f1
	ld [bc], a                                       ; $47b7: $02
	pop af                                           ; $47b8: $f1
	ld [bc], a                                       ; $47b9: $02
	inc de                                           ; $47ba: $13
	nop                                              ; $47bb: $00
	ld de, $7302                                     ; $47bc: $11 $02 $73
	nop                                              ; $47bf: $00
	di                                               ; $47c0: $f3
	nop                                              ; $47c1: $00
	rst FarCall                                          ; $47c2: $f7
	nop                                              ; $47c3: $00
	ld [hl], a                                       ; $47c4: $77
	ld a, d                                          ; $47c5: $7a
	ld c, a                                          ; $47c6: $4f
	ld a, [hl]                                       ; $47c7: $7e
	ld a, l                                          ; $47c8: $7d
	add b                                            ; $47c9: $80
	dec hl                                           ; $47ca: $2b
	nop                                              ; $47cb: $00
	db $10                                           ; $47cc: $10
	rlca                                             ; $47cd: $07
	inc a                                            ; $47ce: $3c
	ld [bc], a                                       ; $47cf: $02
	ld c, l                                          ; $47d0: $4d
	nop                                              ; $47d1: $00
	ld a, [hl-]                                      ; $47d2: $3a
	nop                                              ; $47d3: $00
	push af                                          ; $47d4: $f5
	nop                                              ; $47d5: $00
	ld d, h                                          ; $47d6: $54
	inc hl                                           ; $47d7: $23
	xor c                                            ; $47d8: $a9
	rlca                                             ; $47d9: $07
	ld [de], a                                       ; $47da: $12
	rrca                                             ; $47db: $0f
	or l                                             ; $47dc: $b5
	ld c, $c8                                        ; $47dd: $0e $c8
	ld b, $75                                        ; $47df: $06 $75
	nop                                              ; $47e1: $00
	cp a                                             ; $47e2: $bf
	nop                                              ; $47e3: $00
	rla                                              ; $47e4: $17
	ret nz                                           ; $47e5: $c0

	ccf                                              ; $47e6: $3f
	ldh [$7e], a                                     ; $47e7: $e0 $7e
	sub a                                            ; $47e9: $97
	ret nz                                           ; $47ea: $c0

	push af                                          ; $47eb: $f5
	nop                                              ; $47ec: $00
	ld l, d                                          ; $47ed: $6a
	nop                                              ; $47ee: $00
	db $dd                                           ; $47ef: $dd
	nop                                              ; $47f0: $00
	cp d                                             ; $47f1: $ba
	ld a, e                                          ; $47f2: $7b
	ld e, l                                          ; $47f3: $5d
	sub d                                            ; $47f4: $92
	rst $38                                          ; $47f5: $ff
	ld [bc], a                                       ; $47f6: $02
	rst $38                                          ; $47f7: $ff
	db $10                                           ; $47f8: $10
	ei                                               ; $47f9: $fb
	inc c                                            ; $47fa: $0c
	ld b, a                                          ; $47fb: $47
	jr jr_05f_47ad                                   ; $47fc: $18 $af

	ld bc, $04ff                                     ; $47fe: $01 $ff $04
	db $eb                                           ; $4801: $eb
	ld a, e                                          ; $4802: $7b
	jp nz, $ff97                                     ; $4803: $c2 $97 $ff

	jr nz, @+$01                                     ; $4806: $20 $ff

	rrca                                             ; $4808: $0f
	ld a, a                                          ; $4809: $7f
	inc sp                                           ; $480a: $33
	rst $38                                          ; $480b: $ff
	dec sp                                           ; $480c: $3b
	ld a, c                                          ; $480d: $79
	add d                                            ; $480e: $82
	ld a, a                                          ; $480f: $7f
	cp $96                                           ; $4810: $fe $96
	ld [hl], e                                       ; $4812: $73
	rst $38                                          ; $4813: $ff
	ldh a, [rIE]                                     ; $4814: $f0 $ff
	rst $38                                          ; $4816: $ff
	ld a, b                                          ; $4817: $78
	adc a                                            ; $4818: $8f
	ldh [c], a                                       ; $4819: $e2
	rra                                              ; $481a: $1f
	ld a, e                                          ; $481b: $7b
	ret c                                            ; $481c: $d8

	ld [hl], e                                       ; $481d: $73
	cp $80                                           ; $481e: $fe $80
	db $fd                                           ; $4820: $fd
	inc bc                                           ; $4821: $03
	xor $13                                          ; $4822: $ee $13
	ld e, l                                          ; $4824: $5d
	xor $fe                                          ; $4825: $ee $fe
	add hl, bc                                       ; $4827: $09
	rst FarCall                                          ; $4828: $f7
	jr jr_05f_4899                                   ; $4829: $18 $6e

	pop af                                           ; $482b: $f1
	rst $38                                          ; $482c: $ff
	ld h, b                                          ; $482d: $60
	or $09                                           ; $482e: $f6 $09
	rst FarCall                                          ; $4830: $f7
	ld [$55aa], sp                                   ; $4831: $08 $aa $55
	ld [hl], c                                       ; $4834: $71
	adc a                                            ; $4835: $8f
	ld hl, sp+$07                                    ; $4836: $f8 $07
	ld e, c                                          ; $4838: $59
	and [hl]                                         ; $4839: $a6
	xor b                                            ; $483a: $a8
	ld d, a                                          ; $483b: $57
	ld de, $e1ee                                     ; $483c: $11 $ee $e1
	adc d                                            ; $483f: $8a
	ld a, a                                          ; $4840: $7f
	inc hl                                           ; $4841: $23
	rst $38                                          ; $4842: $ff
	cp a                                             ; $4843: $bf
	rst $38                                          ; $4844: $ff
	ret nc                                           ; $4845: $d0

	ldh [$38], a                                     ; $4846: $e0 $38
	ret nz                                           ; $4848: $c0

	ld [hl], h                                       ; $4849: $74
	sbc b                                            ; $484a: $98
	adc e                                            ; $484b: $8b
	ld [hl], h                                       ; $484c: $74
	ld [hl], a                                       ; $484d: $77
	adc b                                            ; $484e: $88
	cp a                                             ; $484f: $bf
	ld b, b                                          ; $4850: $40
	ld a, a                                          ; $4851: $7f
	call nz, $c7f8                                   ; $4852: $c4 $f8 $c7
	db $fd                                           ; $4855: $fd
	sbc b                                            ; $4856: $98

jr_05f_4857:
	ld b, b                                          ; $4857: $40
	nop                                              ; $4858: $00
	ld [hl], b                                       ; $4859: $70
	add b                                            ; $485a: $80
	cp b                                             ; $485b: $b8
	ld b, b                                          ; $485c: $40
	ld hl, sp+$78                                    ; $485d: $f8 $78
	call c, $a09d                                    ; $485f: $dc $9d $a0
	ret nc                                           ; $4862: $d0

	ld h, [hl]                                       ; $4863: $66
	ret z                                            ; $4864: $c8

	ld a, a                                          ; $4865: $7f
	cp $80                                           ; $4866: $fe $80
	jr nc, @+$11                                     ; $4868: $30 $0f

	ret nz                                           ; $486a: $c0

	ccf                                              ; $486b: $3f
	nop                                              ; $486c: $00
	rst $38                                          ; $486d: $ff
	jr jr_05f_48aa                                   ; $486e: $18 $3a

	jr jr_05f_48cf                                   ; $4870: $18 $5d

	jr jr_05f_48ae                                   ; $4872: $18 $3a

	dec e                                            ; $4874: $1d
	ld e, a                                          ; $4875: $5f

jr_05f_4876:
	ld a, [de]                                       ; $4876: $1a
	ccf                                              ; $4877: $3f
	jr jr_05f_4857                                   ; $4878: $18 $dd

	jr jr_05f_4876                                   ; $487a: $18 $fa

	ld [$03fd], sp                                   ; $487c: $08 $fd $03
	xor e                                            ; $487f: $ab
	inc bc                                           ; $4880: $03
	ld d, a                                          ; $4881: $57
	inc bc                                           ; $4882: $03
	xor e                                            ; $4883: $ab
	ld d, a                                          ; $4884: $57
	rst $38                                          ; $4885: $ff
	xor e                                            ; $4886: $ab
	sbc l                                            ; $4887: $9d
	rst $38                                          ; $4888: $ff
	dec bc                                           ; $4889: $0b
	ld a, e                                          ; $488a: $7b
	ld hl, sp+$7f                                    ; $488b: $f8 $7f
	db $f4                                           ; $488d: $f4
	ld a, [hl]                                       ; $488e: $7e
	call z, $219a                                    ; $488f: $cc $9a $21
	or e                                             ; $4892: $b3
	ld [de], a                                       ; $4893: $12
	or e                                             ; $4894: $b3
	ld hl, $c472                                     ; $4895: $21 $72 $c4
	ld a, a                                          ; $4898: $7f

jr_05f_4899:
	db $fc                                           ; $4899: $fc
	ld a, [hl]                                       ; $489a: $7e
	cp d                                             ; $489b: $ba
	ld b, [hl]                                       ; $489c: $46
	ret nz                                           ; $489d: $c0

	adc d                                            ; $489e: $8a
	ld [hl+], a                                      ; $489f: $22
	add hl, bc                                       ; $48a0: $09
	ld [$f714], a                                    ; $48a1: $ea $14 $f7
	ld [$15ea], sp                                   ; $48a4: $08 $ea $15
	pop de                                           ; $48a7: $d1
	ld a, [hl+]                                      ; $48a8: $2a
	adc e                                            ; $48a9: $8b

jr_05f_48aa:
	ld d, h                                          ; $48aa: $54
	add [hl]                                         ; $48ab: $86
	cpl                                              ; $48ac: $2f
	adc [hl]                                         ; $48ad: $8e

jr_05f_48ae:
	ld e, a                                          ; $48ae: $5f
	ld d, l                                          ; $48af: $55
	xor d                                            ; $48b0: $aa
	ld a, a                                          ; $48b1: $7f
	rst $38                                          ; $48b2: $ff
	ld a, a                                          ; $48b3: $7f
	sbc $ff                                          ; $48b4: $de $ff
	sbc h                                            ; $48b6: $9c
	ld e, a                                          ; $48b7: $5f
	cp a                                             ; $48b8: $bf
	and b                                            ; $48b9: $a0
	ld a, e                                          ; $48ba: $7b
	db $f4                                           ; $48bb: $f4
	ld a, l                                          ; $48bc: $7d
	and [hl]                                         ; $48bd: $a6
	ld a, d                                          ; $48be: $7a
	ld h, l                                          ; $48bf: $65
	sbc [hl]                                         ; $48c0: $9e
	rst $38                                          ; $48c1: $ff
	db $dd                                           ; $48c2: $dd
	cp $df                                           ; $48c3: $fe $df
	db $fc                                           ; $48c5: $fc
	rst SubAFromDE                                          ; $48c6: $df
	rlca                                             ; $48c7: $07
	ld a, h                                          ; $48c8: $7c
	ld c, e                                          ; $48c9: $4b
	sbc h                                            ; $48ca: $9c
	add b                                            ; $48cb: $80
	rst GetHLinHL                                          ; $48cc: $cf
	cp a                                             ; $48cd: $bf
	ld a, d                                          ; $48ce: $7a

jr_05f_48cf:
	ld a, [$367f]                                    ; $48cf: $fa $7f $36
	sbc l                                            ; $48d2: $9d
	ld a, a                                          ; $48d3: $7f
	add b                                            ; $48d4: $80
	reti                                             ; $48d5: $d9


	rst $38                                          ; $48d6: $ff
	ld a, [hl]                                       ; $48d7: $7e
	call z, $fe7f                                    ; $48d8: $cc $7f $fe
	sbc d                                            ; $48db: $9a
	ld a, [$fd01]                                    ; $48dc: $fa $01 $fd
	rlca                                             ; $48df: $07
	cp $d9                                           ; $48e0: $fe $d9
	rst $38                                          ; $48e2: $ff
	adc e                                            ; $48e3: $8b
	jr nz, @-$20                                     ; $48e4: $20 $de

	ld h, c                                          ; $48e6: $61
	sub a                                            ; $48e7: $97
	ldh [$ef], a                                     ; $48e8: $e0 $ef
	ld [bc], a                                       ; $48ea: $02
	ld a, [$7d0f]                                    ; $48eb: $fa $0f $7d
	sbc a                                            ; $48ee: $9f
	xor d                                            ; $48ef: $aa
	rst $38                                          ; $48f0: $ff
	ld d, l                                          ; $48f1: $55
	rst $38                                          ; $48f2: $ff
	xor d                                            ; $48f3: $aa
	nop                                              ; $48f4: $00
	push af                                          ; $48f5: $f5
	ld [$78fc], sp                                   ; $48f6: $08 $fc $78
	ld l, b                                          ; $48f9: $68
	add a                                            ; $48fa: $87
	rst AddAOntoHL                                          ; $48fb: $ef
	jr jr_05f_495d                                   ; $48fc: $18 $5f

	ld hl, sp-$01                                    ; $48fe: $f8 $ff
	jp $1ffb                                         ; $4900: $c3 $fb $1f


	db $fd                                           ; $4903: $fd
	rrca                                             ; $4904: $0f
	ei                                               ; $4905: $fb
	rrca                                             ; $4906: $0f
	rst $38                                          ; $4907: $ff
	ld b, $ff                                        ; $4908: $06 $ff
	nop                                              ; $490a: $00
	rst SubAFromDE                                          ; $490b: $df
	ld [hl], e                                       ; $490c: $73
	xor e                                            ; $490d: $ab
	cp $d7                                           ; $490e: $fe $d7
	db $fc                                           ; $4910: $fc
	cp e                                             ; $4911: $bb
	cp $66                                           ; $4912: $fe $66
	db $e4                                           ; $4914: $e4
	ld a, l                                          ; $4915: $7d
	jr z, @+$75                                      ; $4916: $28 $73

	ld hl, sp+$79                                    ; $4918: $f8 $79
	ld [hl], $9d                                     ; $491a: $36 $9d
	ei                                               ; $491c: $fb
	inc b                                            ; $491d: $04
	ld a, b                                          ; $491e: $78
	ld b, d                                          ; $491f: $42
	sbc h                                            ; $4920: $9c
	ld c, a                                          ; $4921: $4f
	rst $38                                          ; $4922: $ff
	adc $7b                                          ; $4923: $ce $7b
	ldh a, [c]                                       ; $4925: $f2
	ld a, a                                          ; $4926: $7f
	or $98                                           ; $4927: $f6 $98
	sbc h                                            ; $4929: $9c
	or $0f                                           ; $492a: $f6 $0f
	xor l                                            ; $492c: $ad
	ld d, d                                          ; $492d: $52
	sub $3f                                          ; $492e: $d6 $3f
	halt                                             ; $4930: $76
	or b                                             ; $4931: $b0
	add b                                            ; $4932: $80
	rst SubAFromDE                                          ; $4933: $df
	inc h                                            ; $4934: $24
	rst $38                                          ; $4935: $ff
	nop                                              ; $4936: $00
	cp a                                             ; $4937: $bf
	ld b, b                                          ; $4938: $40
	ld e, h                                          ; $4939: $5c
	cp e                                             ; $493a: $bb
	inc e                                            ; $493b: $1c
	rst $38                                          ; $493c: $ff
	rst SubAFromDE                                          ; $493d: $df
	ld hl, sp-$05                                    ; $493e: $f8 $fb
	db $fc                                           ; $4940: $fc
	db $fc                                           ; $4941: $fc
	ei                                               ; $4942: $fb
	xor $31                                          ; $4943: $ee $31
	ld [hl], l                                       ; $4945: $75
	sbc [hl]                                         ; $4946: $9e
	cp $17                                           ; $4947: $fe $17
	rra                                              ; $4949: $1f
	cp $3c                                           ; $494a: $fe $3c
	rst SubAFromDE                                          ; $494c: $df
	ei                                               ; $494d: $fb
	rlca                                             ; $494e: $07
	db $fc                                           ; $494f: $fc
	rlca                                             ; $4950: $07
	ld sp, hl                                        ; $4951: $f9
	add l                                            ; $4952: $85
	ld b, $fd                                        ; $4953: $06 $fd
	inc sp                                           ; $4955: $33
	rst $38                                          ; $4956: $ff
	ld bc, $27ff                                     ; $4957: $01 $ff $27
	add hl, sp                                       ; $495a: $39
	rst JumpTable                                          ; $495b: $c7
	ld d, a                                          ; $495c: $57

jr_05f_495d:
	xor a                                            ; $495d: $af
	dec hl                                           ; $495e: $2b
	rst SubAFromHL                                          ; $495f: $d7
	ld [bc], a                                       ; $4960: $02
	db $fd                                           ; $4961: $fd
	add hl, de                                       ; $4962: $19
	cp $2e                                           ; $4963: $fe $2e
	db $dd                                           ; $4965: $dd
	dec b                                            ; $4966: $05
	ld a, [$f50a]                                    ; $4967: $fa $0a $f5
	adc a                                            ; $496a: $8f
	ld a, a                                          ; $496b: $7f
	ld [$c37b], sp                                   ; $496c: $08 $7b $c3
	sbc h                                            ; $496f: $9c
	ld [hl], b                                       ; $4970: $70
	rst $38                                          ; $4971: $ff
	ld b, b                                          ; $4972: $40
	ld a, e                                          ; $4973: $7b
	xor e                                            ; $4974: $ab
	ld a, a                                          ; $4975: $7f
	xor a                                            ; $4976: $af
	ld a, a                                          ; $4977: $7f
	db $fc                                           ; $4978: $fc
	rst SubAFromDE                                          ; $4979: $df
	rst $38                                          ; $497a: $ff
	ld a, e                                          ; $497b: $7b
	cpl                                              ; $497c: $2f
	sbc l                                            ; $497d: $9d
	rst $38                                          ; $497e: $ff
	dec d                                            ; $497f: $15
	ld a, d                                          ; $4980: $7a
	ld b, a                                          ; $4981: $47
	ld l, a                                          ; $4982: $6f
	or $df                                           ; $4983: $f6 $df
	rst $38                                          ; $4985: $ff
	ld a, [hl]                                       ; $4986: $7e
	sub $67                                          ; $4987: $d6 $67
	ld a, [$ea7f]                                    ; $4989: $fa $7f $ea
	rst SubAFromDE                                          ; $498c: $df
	rst $38                                          ; $498d: $ff
	sub a                                            ; $498e: $97
	rst SubAFromBC                                          ; $498f: $e7
	ei                                               ; $4990: $fb
	di                                               ; $4991: $f3
	rst $38                                          ; $4992: $ff
	ei                                               ; $4993: $fb
	rst $38                                          ; $4994: $ff
	db $fd                                           ; $4995: $fd
	rst $38                                          ; $4996: $ff
	ld h, a                                          ; $4997: $67
	jr nc, jr_05f_4a17                               ; $4998: $30 $7d

	adc d                                            ; $499a: $8a
	ld a, [hl]                                       ; $499b: $7e
	call z, $c87e                                    ; $499c: $cc $7e $c8
	db $dd                                           ; $499f: $dd
	rst $38                                          ; $49a0: $ff
	ld a, [hl]                                       ; $49a1: $7e
	ld [$627e], a                                    ; $49a2: $ea $7e $62
	ld a, a                                          ; $49a5: $7f
	cp $46                                           ; $49a6: $fe $46
	ret nz                                           ; $49a8: $c0

	ld a, h                                          ; $49a9: $7c
	add $9e                                          ; $49aa: $c6 $9e
	cp a                                             ; $49ac: $bf
	ld a, b                                          ; $49ad: $78
	and $80                                          ; $49ae: $e6 $80
	jp hl                                            ; $49b0: $e9


	ld d, a                                          ; $49b1: $57
	rst JumpTable                                          ; $49b2: $c7
	rrca                                             ; $49b3: $0f
	xor a                                            ; $49b4: $af
	rra                                              ; $49b5: $1f
	pop af                                           ; $49b6: $f1
	ccf                                              ; $49b7: $3f
	xor a                                            ; $49b8: $af
	ld e, a                                          ; $49b9: $5f
	ld a, [$af00]                                    ; $49ba: $fa $00 $af
	ld hl, sp+$53                                    ; $49bd: $f8 $53
	ld hl, sp-$53                                    ; $49bf: $f8 $ad
	ret nz                                           ; $49c1: $c0

	ld e, a                                          ; $49c2: $5f
	add l                                            ; $49c3: $85
	dec hl                                           ; $49c4: $2b
	add [hl]                                         ; $49c5: $86
	ld d, l                                          ; $49c6: $55
	inc a                                            ; $49c7: $3c
	ld a, [hl+]                                      ; $49c8: $2a
	cp b                                             ; $49c9: $b8
	ld [$6537], a                                    ; $49ca: $ea $37 $65
	rra                                              ; $49cd: $1f
	ld a, [$0787]                                    ; $49ce: $fa $87 $07
	db $ed                                           ; $49d1: $ed
	or e                                             ; $49d2: $b3
	ld a, [hl]                                       ; $49d3: $7e
	jp $01ff                                         ; $49d4: $c3 $ff $01


	ld a, a                                          ; $49d7: $7f
	ld [hl+], a                                      ; $49d8: $22
	cp a                                             ; $49d9: $bf
	dec d                                            ; $49da: $15
	rlca                                             ; $49db: $07
	rst $38                                          ; $49dc: $ff
	sub b                                            ; $49dd: $90
	rst $38                                          ; $49de: $ff
	ld a, b                                          ; $49df: $78
	rst $38                                          ; $49e0: $ff
	ld hl, sp-$01                                    ; $49e1: $f8 $ff
	jr nc, @+$01                                     ; $49e3: $30 $ff

	ld d, d                                          ; $49e5: $52
	rst $38                                          ; $49e6: $ff
	ld h, b                                          ; $49e7: $60
	ld a, e                                          ; $49e8: $7b
	ld a, [hl]                                       ; $49e9: $7e
	sbc [hl]                                         ; $49ea: $9e
	db $fc                                           ; $49eb: $fc
	ld a, e                                          ; $49ec: $7b
	cp $df                                           ; $49ed: $fe $df
	rst $38                                          ; $49ef: $ff
	adc c                                            ; $49f0: $89
	ld a, [hl]                                       ; $49f1: $7e
	cp $3e                                           ; $49f2: $fe $3e
	cp $fc                                           ; $49f4: $fe $fc
	db $fd                                           ; $49f6: $fd
	halt                                             ; $49f7: $76
	rst FarCall                                          ; $49f8: $f7
	ld de, $faf2                                     ; $49f9: $11 $f2 $fa
	rst AddAOntoHL                                          ; $49fc: $ef
	ld e, l                                          ; $49fd: $5d
	rst $38                                          ; $49fe: $ff
	ld c, a                                          ; $49ff: $4f
	rst SubAFromBC                                          ; $4a00: $e7
	ld a, a                                          ; $4a01: $7f
	add e                                            ; $4a02: $83
	rst FarCall                                          ; $4a03: $f7
	rra                                              ; $4a04: $1f
	rst $38                                          ; $4a05: $ff
	dec de                                           ; $4a06: $1b
	ld [hl], a                                       ; $4a07: $77
	adc [hl]                                         ; $4a08: $8e
	ld a, a                                          ; $4a09: $7f
	db $dd                                           ; $4a0a: $dd
	sbc l                                            ; $4a0b: $9d
	ld a, [hl]                                       ; $4a0c: $7e
	add c                                            ; $4a0d: $81
	halt                                             ; $4a0e: $76
	and $7e                                          ; $4a0f: $e6 $7e
	adc [hl]                                         ; $4a11: $8e
	sub l                                            ; $4a12: $95
	cp [hl]                                          ; $4a13: $be
	ld b, c                                          ; $4a14: $41
	ld a, [hl]                                       ; $4a15: $7e
	add c                                            ; $4a16: $81

jr_05f_4a17:
	sbc l                                            ; $4a17: $9d
	ld h, e                                          ; $4a18: $63
	and a                                            ; $4a19: $a7
	ret c                                            ; $4a1a: $d8

	ccf                                              ; $4a1b: $3f
	ret nz                                           ; $4a1c: $c0

	ld [hl], l                                       ; $4a1d: $75
	or [hl]                                          ; $4a1e: $b6
	adc e                                            ; $4a1f: $8b
	ei                                               ; $4a20: $fb
	dec b                                            ; $4a21: $05
	cp h                                             ; $4a22: $bc
	ld b, e                                          ; $4a23: $43
	ld a, d                                          ; $4a24: $7a
	add a                                            ; $4a25: $87
	halt                                             ; $4a26: $76
	adc a                                            ; $4a27: $8f
	rst FarCall                                          ; $4a28: $f7
	rrca                                             ; $4a29: $0f
	rst FarCall                                          ; $4a2a: $f7
	rrca                                             ; $4a2b: $0f
	di                                               ; $4a2c: $f3
	rrca                                             ; $4a2d: $0f
	rlca                                             ; $4a2e: $07
	rst $38                                          ; $4a2f: $ff
	scf                                              ; $4a30: $37
	call z, Call_05f_40bf                            ; $4a31: $cc $bf $40
	ld a, d                                          ; $4a34: $7a
	xor d                                            ; $4a35: $aa
	sbc b                                            ; $4a36: $98
	ldh [$fd], a                                     ; $4a37: $e0 $fd
	rst $38                                          ; $4a39: $ff
	rst $38                                          ; $4a3a: $ff
	db $dd                                           ; $4a3b: $dd
	cp $bd                                           ; $4a3c: $fe $bd
	ld [hl], a                                       ; $4a3e: $77
	ld d, c                                          ; $4a3f: $51
	add b                                            ; $4a40: $80
	rst JumpTable                                          ; $4a41: $c7
	ld sp, hl                                        ; $4a42: $f9
	cp a                                             ; $4a43: $bf
	ld [hl], e                                       ; $4a44: $73
	ld l, a                                          ; $4a45: $6f
	cp $ff                                           ; $4a46: $fe $ff
	add b                                            ; $4a48: $80
	inc sp                                           ; $4a49: $33
	call z, $fcb3                                    ; $4a4a: $cc $b3 $fc
	dec sp                                           ; $4a4d: $3b
	cp $3f                                           ; $4a4e: $fe $3f
	rst $38                                          ; $4a50: $ff
	ld sp, hl                                        ; $4a51: $f9
	cp $dc                                           ; $4a52: $fe $dc
	rst $38                                          ; $4a54: $ff
	cp [hl]                                          ; $4a55: $be
	ld a, a                                          ; $4a56: $7f
	rst $38                                          ; $4a57: $ff
	dec b                                            ; $4a58: $05
	db $fc                                           ; $4a59: $fc
	ld h, e                                          ; $4a5a: $63
	adc $f3                                          ; $4a5b: $ce $f3
	ldh a, [c]                                       ; $4a5d: $f2
	ccf                                              ; $4a5e: $3f
	or b                                             ; $4a5f: $b0
	sub a                                            ; $4a60: $97
	ld a, a                                          ; $4a61: $7f
	ld h, $ff                                        ; $4a62: $26 $ff
	xor a                                            ; $4a64: $af
	ld e, a                                          ; $4a65: $5f
	daa                                              ; $4a66: $27
	rst SubAFromDE                                          ; $4a67: $df
	rst $38                                          ; $4a68: $ff
	ld a, b                                          ; $4a69: $78
	daa                                              ; $4a6a: $27
	ld a, a                                          ; $4a6b: $7f
	db $f4                                           ; $4a6c: $f4
	adc c                                            ; $4a6d: $89
	ld b, c                                          ; $4a6e: $41
	cp a                                             ; $4a6f: $bf
	ld d, a                                          ; $4a70: $57
	xor e                                            ; $4a71: $ab
	db $10                                           ; $4a72: $10
	rst AddAOntoHL                                          ; $4a73: $ef
	ld c, [hl]                                       ; $4a74: $4e
	db $fc                                           ; $4a75: $fc
	add hl, de                                       ; $4a76: $19
	cp $c1                                           ; $4a77: $fe $c1
	cp $c2                                           ; $4a79: $fe $c2
	db $fd                                           ; $4a7b: $fd
	ret                                              ; $4a7c: $c9


	cp $8a                                           ; $4a7d: $fe $8a
	db $f4                                           ; $4a7f: $f4
	ld d, l                                          ; $4a80: $55
	and d                                            ; $4a81: $a2

jr_05f_4a82:
	pop de                                           ; $4a82: $d1
	jr nz, jr_05f_4a82                               ; $4a83: $20 $fd

	add b                                            ; $4a85: $80
	db $e3                                           ; $4a86: $e3
	db $fc                                           ; $4a87: $fc
	pop hl                                           ; $4a88: $e1
	ldh [$80], a                                     ; $4a89: $e0 $80
	ld b, b                                          ; $4a8b: $40
	add b                                            ; $4a8c: $80
	nop                                              ; $4a8d: $00
	nop                                              ; $4a8e: $00
	ld bc, $810a                                     ; $4a8f: $01 $0a $81
	dec d                                            ; $4a92: $15
	ld a, [bc]                                       ; $4a93: $0a
	add hl, sp                                       ; $4a94: $39
	nop                                              ; $4a95: $00
	ld h, b                                          ; $4a96: $60
	sbc a                                            ; $4a97: $9f
	sbc [hl]                                         ; $4a98: $9e
	ld bc, $001c                                     ; $4a99: $01 $1c $00
	ld l, b                                          ; $4a9c: $68
	inc d                                            ; $4a9d: $14
	ei                                               ; $4a9e: $fb
	nop                                              ; $4a9f: $00
	and h                                            ; $4aa0: $a4
	ld b, b                                          ; $4aa1: $40
	ld e, e                                          ; $4aa2: $5b
	and b                                            ; $4aa3: $a0
	and [hl]                                         ; $4aa4: $a6
	adc [hl]                                         ; $4aa5: $8e
	ld b, c                                          ; $4aa6: $41
	nop                                              ; $4aa7: $00
	rst $38                                          ; $4aa8: $ff
	xor d                                            ; $4aa9: $aa
	ld d, l                                          ; $4aaa: $55
	ld l, l                                          ; $4aab: $6d
	nop                                              ; $4aac: $00
	ld c, $10                                        ; $4aad: $0e $10
	jp c, Jump_05f_4100                              ; $4aaf: $da $00 $41

	ld bc, $08f3                                     ; $4ab2: $01 $f3 $08
	ld l, l                                          ; $4ab5: $6d
	sub d                                            ; $4ab6: $92
	ld [hl], a                                       ; $4ab7: $77
	ldh a, [$9c]                                     ; $4ab8: $f0 $9c
	ld d, l                                          ; $4aba: $55
	nop                                              ; $4abb: $00
	xor d                                            ; $4abc: $aa
	ld [hl], h                                       ; $4abd: $74
	dec l                                            ; $4abe: $2d
	ld a, a                                          ; $4abf: $7f
	add l                                            ; $4ac0: $85
	sbc h                                            ; $4ac1: $9c
	ld a, a                                          ; $4ac2: $7f
	ld b, b                                          ; $4ac3: $40
	cp a                                             ; $4ac4: $bf
	ld [hl], l                                       ; $4ac5: $75
	or d                                             ; $4ac6: $b2
	ld a, a                                          ; $4ac7: $7f
	ld hl, sp-$6b                                    ; $4ac8: $f8 $95
	dec de                                           ; $4aca: $1b
	ld h, b                                          ; $4acb: $60
	or l                                             ; $4acc: $b5
	ld b, d                                          ; $4acd: $42
	add b                                            ; $4ace: $80
	ld b, l                                          ; $4acf: $45
	add b                                            ; $4ad0: $80
	ld b, d                                          ; $4ad1: $42
	ld b, b                                          ; $4ad2: $40
	push af                                          ; $4ad3: $f5
	ld c, [hl]                                       ; $4ad4: $4e
	ret nz                                           ; $4ad5: $c0

	sbc b                                            ; $4ad6: $98
	ld d, h                                          ; $4ad7: $54
	xor d                                            ; $4ad8: $aa
	db $d3                                           ; $4ad9: $d3
	ccf                                              ; $4ada: $3f
	xor a                                            ; $4adb: $af
	ld a, a                                          ; $4adc: $7f
	rst SubAFromHL                                          ; $4add: $d7
	ld a, e                                          ; $4ade: $7b
	db $fc                                           ; $4adf: $fc
	add b                                            ; $4ae0: $80
	pop de                                           ; $4ae1: $d1
	ccf                                              ; $4ae2: $3f
	xor d                                            ; $4ae3: $aa
	ld a, a                                          ; $4ae4: $7f
	push de                                          ; $4ae5: $d5
	ld a, a                                          ; $4ae6: $7f
	xor d                                            ; $4ae7: $aa
	ld a, a                                          ; $4ae8: $7f
	rst SubAFromHL                                          ; $4ae9: $d7
	ld hl, sp-$55                                    ; $4aea: $f8 $ab
	ld bc, $0a5e                                     ; $4aec: $01 $5e $0a
	cp h                                             ; $4aef: $bc
	rla                                              ; $4af0: $17
	ld c, h                                          ; $4af1: $4c
	dec sp                                           ; $4af2: $3b
	xor $04                                          ; $4af3: $ee $04
	db $fc                                           ; $4af5: $fc
	xor e                                            ; $4af6: $ab
	ld a, c                                          ; $4af7: $79
	ld d, d                                          ; $4af8: $52
	ld a, a                                          ; $4af9: $7f
	ld a, [hl+]                                      ; $4afa: $2a
	and e                                            ; $4afb: $a3
	dec e                                            ; $4afc: $1d
	rst JumpTable                                          ; $4afd: $c7
	cp e                                             ; $4afe: $bb
	ld [$647a], sp                                   ; $4aff: $08 $7a $64
	sub [hl]                                         ; $4b02: $96
	ld a, [bc]                                       ; $4b03: $0a
	rst $38                                          ; $4b04: $ff
	ld de, $88ff                                     ; $4b05: $11 $ff $88
	ld a, a                                          ; $4b08: $7f
	nop                                              ; $4b09: $00
	rst $38                                          ; $4b0a: $ff
	ld b, e                                          ; $4b0b: $43
	ld a, c                                          ; $4b0c: $79
	jp hl                                            ; $4b0d: $e9


	ld a, a                                          ; $4b0e: $7f
	db $10                                           ; $4b0f: $10
	ld a, a                                          ; $4b10: $7f
	cp $89                                           ; $4b11: $fe $89
	add hl, bc                                       ; $4b13: $09
	rst $38                                          ; $4b14: $ff
	rst GetHLinHL                                          ; $4b15: $cf
	rst $38                                          ; $4b16: $ff
	rst SubAFromBC                                          ; $4b17: $e7
	rst SubAFromBC                                          ; $4b18: $e7
	nop                                              ; $4b19: $00
	rst $38                                          ; $4b1a: $ff
	add b                                            ; $4b1b: $80
	rst $38                                          ; $4b1c: $ff
	sub h                                            ; $4b1d: $94
	rst AddAOntoHL                                          ; $4b1e: $ef
	ret nz                                           ; $4b1f: $c0

	rst $38                                          ; $4b20: $ff
	add sp, -$11                                     ; $4b21: $e8 $ef
	jr @+$21                                         ; $4b23: $18 $1f

	inc e                                            ; $4b25: $1c
	rra                                              ; $4b26: $1f
	ld [bc], a                                       ; $4b27: $02
	ld [bc], a                                       ; $4b28: $02
	ld a, e                                          ; $4b29: $7b
	ldh a, [$80]                                     ; $4b2a: $f0 $80
	ld a, a                                          ; $4b2c: $7f
	sub h                                            ; $4b2d: $94
	ld a, e                                          ; $4b2e: $7b
	ret nz                                           ; $4b2f: $c0

	ccf                                              ; $4b30: $3f
	add sp, $07                                      ; $4b31: $e8 $07
	jr jr_05f_4b3c                                   ; $4b33: $18 $07

	inc e                                            ; $4b35: $1c
	inc bc                                           ; $4b36: $03
	ld [bc], a                                       ; $4b37: $02
	nop                                              ; $4b38: $00
	ld h, b                                          ; $4b39: $60
	rst $38                                          ; $4b3a: $ff
	add a                                            ; $4b3b: $87

jr_05f_4b3c:
	ld a, b                                          ; $4b3c: $78
	add a                                            ; $4b3d: $87
	ld a, b                                          ; $4b3e: $78
	adc e                                            ; $4b3f: $8b
	ld [hl], h                                       ; $4b40: $74
	ld d, [hl]                                       ; $4b41: $56
	xor c                                            ; $4b42: $a9
	ld [$b515], a                                    ; $4b43: $ea $15 $b5
	ld a, [bc]                                       ; $4b46: $0a
	ccf                                              ; $4b47: $3f
	nop                                              ; $4b48: $00
	ld l, a                                          ; $4b49: $6f
	sbc l                                            ; $4b4a: $9d
	ld a, a                                          ; $4b4b: $7f
	rst SubAFromHL                                          ; $4b4c: $d7
	ld a, l                                          ; $4b4d: $7d
	db $10                                           ; $4b4e: $10
	sub b                                            ; $4b4f: $90
	rst JumpTable                                          ; $4b50: $c7
	ccf                                              ; $4b51: $3f
	jp $0abf                                         ; $4b52: $c3 $bf $0a


	rst FarCall                                          ; $4b55: $f7
	ld d, c                                          ; $4b56: $51
	cp [hl]                                          ; $4b57: $be
	and b                                            ; $4b58: $a0
	ld e, a                                          ; $4b59: $5f
	rst $38                                          ; $4b5a: $ff
	pop bc                                           ; $4b5b: $c1
	rst AddAOntoHL                                          ; $4b5c: $ef
	inc de                                           ; $4b5d: $13
	ld [hl], e                                       ; $4b5e: $73
	ld a, d                                          ; $4b5f: $7a
	ld [hl], b                                       ; $4b60: $70
	sub e                                            ; $4b61: $93
	and $ff                                          ; $4b62: $e6 $ff
	db $eb                                           ; $4b64: $eb
	push de                                          ; $4b65: $d5
	ld d, l                                          ; $4b66: $55
	xor d                                            ; $4b67: $aa

jr_05f_4b68:
	add $00                                          ; $4b68: $c6 $00
	rst SubAFromHL                                          ; $4b6a: $d7
	db $ec                                           ; $4b6b: $ec
	rst $38                                          ; $4b6c: $ff
	db $dd                                           ; $4b6d: $dd
	ld a, d                                          ; $4b6e: $7a
	adc c                                            ; $4b6f: $89
	rst SubAFromDE                                          ; $4b70: $df
	ld a, a                                          ; $4b71: $7f
	add b                                            ; $4b72: $80
	rst $38                                          ; $4b73: $ff
	ld [hl], a                                       ; $4b74: $77
	cp a                                             ; $4b75: $bf
	rra                                              ; $4b76: $1f
	rst $38                                          ; $4b77: $ff
	jr jr_05f_4bf9                                   ; $4b78: $18 $7f

	or $ff                                           ; $4b7a: $f6 $ff
	xor $ff                                          ; $4b7c: $ee $ff
	call z, $10ff                                    ; $4b7e: $cc $ff $10
	rst $38                                          ; $4b81: $ff
	ld h, a                                          ; $4b82: $67
	rst $38                                          ; $4b83: $ff
	and h                                            ; $4b84: $a4
	rst SubAFromDE                                          ; $4b85: $df
	ld [hl], l                                       ; $4b86: $75
	adc d                                            ; $4b87: $8a
	xor c                                            ; $4b88: $a9
	db $10                                           ; $4b89: $10
	ld [$f8f7], sp                                   ; $4b8a: $08 $f7 $f8
	rst $38                                          ; $4b8d: $ff
	inc a                                            ; $4b8e: $3c
	rst $38                                          ; $4b8f: $ff
	ld a, $fd                                        ; $4b90: $3e $fd
	add b                                            ; $4b92: $80
	sbc c                                            ; $4b93: $99
	cp $40                                           ; $4b94: $fe $40
	rst $38                                          ; $4b96: $ff
	jr nc, jr_05f_4b68                               ; $4b97: $30 $cf

	reti                                             ; $4b99: $d9


	ld b, $21                                        ; $4b9a: $06 $21
	cp $02                                           ; $4b9c: $fe $02
	db $fd                                           ; $4b9e: $fd
	rra                                              ; $4b9f: $1f
	ld hl, sp+$60                                    ; $4ba0: $f8 $60
	ldh a, [rP1]                                     ; $4ba2: $f0 $00
	ldh a, [$d0]                                     ; $4ba4: $f0 $d0
	nop                                              ; $4ba6: $00
	ld b, b                                          ; $4ba7: $40
	add b                                            ; $4ba8: $80
	ld h, b                                          ; $4ba9: $60
	add b                                            ; $4baa: $80
	ld h, b                                          ; $4bab: $60
	sub b                                            ; $4bac: $90
	add b                                            ; $4bad: $80
	ldh [rP1], a                                     ; $4bae: $e0 $00
	ret nz                                           ; $4bb0: $c0

	add l                                            ; $4bb1: $85
	sbc c                                            ; $4bb2: $99
	nop                                              ; $4bb3: $00
	ld b, $01                                        ; $4bb4: $06 $01
	rlca                                             ; $4bb6: $07
	nop                                              ; $4bb7: $00
	jr jr_05f_4c32                                   ; $4bb8: $18 $78

	jp nz, $fd7b                                     ; $4bba: $c2 $7b $fd

	cp $9c                                           ; $4bbd: $fe $9c
	adc e                                            ; $4bbf: $8b
	inc b                                            ; $4bc0: $04
	rst FarCall                                          ; $4bc1: $f7
	ld a, b                                          ; $4bc2: $78
	inc a                                            ; $4bc3: $3c
	ld a, a                                          ; $4bc4: $7f
	sbc $80                                          ; $4bc5: $de $80
	sub c                                            ; $4bc7: $91
	nop                                              ; $4bc8: $00
	dec l                                            ; $4bc9: $2d
	ld [bc], a                                       ; $4bca: $02
	ld a, [hl-]                                      ; $4bcb: $3a
	dec b                                            ; $4bcc: $05
	sub e                                            ; $4bcd: $93
	ld [$0118], sp                                   ; $4bce: $08 $18 $01
	ld bc, $0c00                                     ; $4bd1: $01 $00 $0c
	nop                                              ; $4bd4: $00
	jp z, $f505                                      ; $4bd5: $ca $05 $f5

	ld a, [bc]                                       ; $4bd8: $0a
	db $dd                                           ; $4bd9: $dd
	ld [hl+], a                                      ; $4bda: $22
	xor e                                            ; $4bdb: $ab
	ld b, h                                          ; $4bdc: $44
	ld l, l                                          ; $4bdd: $6d
	add d                                            ; $4bde: $82
	inc sp                                           ; $4bdf: $33
	ret z                                            ; $4be0: $c8

	ld l, $d1                                        ; $4be1: $2e $d1
	dec d                                            ; $4be3: $15
	db $eb                                           ; $4be4: $eb
	cp e                                             ; $4be5: $bb
	add b                                            ; $4be6: $80
	ld b, a                                          ; $4be7: $47
	rst SubAFromHL                                          ; $4be8: $d7

jr_05f_4be9:
	cpl                                              ; $4be9: $2f
	ld bc, $8023                                     ; $4bea: $01 $23 $80
	ld b, l                                          ; $4bed: $45
	ldh [rP1], a                                     ; $4bee: $e0 $00
	cp l                                             ; $4bf0: $bd
	ld [bc], a                                       ; $4bf1: $02
	cp [hl]                                          ; $4bf2: $be
	ld b, c                                          ; $4bf3: $41
	ld e, l                                          ; $4bf4: $5d
	ldh [c], a                                       ; $4bf5: $e2
	ld [$50d5], a                                    ; $4bf6: $ea $d5 $50

jr_05f_4bf9:
	xor [hl]                                         ; $4bf9: $ae
	ld [hl], b                                       ; $4bfa: $70
	ld hl, sp+$64                                    ; $4bfb: $f8 $64
	ldh a, [$f4]                                     ; $4bfd: $f0 $f4
	ld [hl-], a                                      ; $4bff: $32
	or d                                             ; $4c00: $b2
	dec a                                            ; $4c01: $3d
	or l                                             ; $4c02: $b5
	ld a, d                                          ; $4c03: $7a
	ld [bc], a                                       ; $4c04: $02
	xor l                                            ; $4c05: $ad
	sbc e                                            ; $4c06: $9b
	xor d                                            ; $4c07: $aa
	ld d, b                                          ; $4c08: $50
	ld l, [hl]                                       ; $4c09: $6e
	add c                                            ; $4c0a: $81
	halt                                             ; $4c0b: $76
	call z, $fc7f                                    ; $4c0c: $cc $7f $fc
	sbc l                                            ; $4c0f: $9d
	ld [hl], h                                       ; $4c10: $74
	adc d                                            ; $4c11: $8a
	ld h, a                                          ; $4c12: $67
	db $fc                                           ; $4c13: $fc
	di                                               ; $4c14: $f3
	ld a, c                                          ; $4c15: $79
	pop de                                           ; $4c16: $d1
	ld c, e                                          ; $4c17: $4b
	ldh a, [hDisp1_WX]                                     ; $4c18: $f0 $96
	ld a, l                                          ; $4c1a: $7d
	ld a, a                                          ; $4c1b: $7f
	ccf                                              ; $4c1c: $3f
	ccf                                              ; $4c1d: $3f
	inc c                                            ; $4c1e: $0c
	ld c, $06                                        ; $4c1f: $0e $06
	ld b, $04                                        ; $4c21: $06 $04
	sbc $06                                          ; $4c23: $de $06
	ld a, a                                          ; $4c25: $7f
	db $fc                                           ; $4c26: $fc
	rst SubAFromDE                                          ; $4c27: $df
	cp $df                                           ; $4c28: $fe $df
	ld h, b                                          ; $4c2a: $60
	push af                                          ; $4c2b: $f5
	rst SubAFromDE                                          ; $4c2c: $df
	ccf                                              ; $4c2d: $3f
	rlca                                             ; $4c2e: $07
	ret nz                                           ; $4c2f: $c0

	ld a, e                                          ; $4c30: $7b
	ld d, a                                          ; $4c31: $57

jr_05f_4c32:
	ld l, a                                          ; $4c32: $6f
	dec a                                            ; $4c33: $3d
	ld h, a                                          ; $4c34: $67
	ldh [$98], a                                     ; $4c35: $e0 $98
	cp $32                                           ; $4c37: $fe $32
	cp $18                                           ; $4c39: $fe $18
	jr jr_05f_4c45                                   ; $4c3b: $18 $08

	ld [$d027], sp                                   ; $4c3d: $08 $27 $d0
	adc l                                            ; $4c40: $8d
	ld a, d                                          ; $4c41: $7a
	ld b, l                                          ; $4c42: $45
	dec d                                            ; $4c43: $15
	ld a, [hl+]                                      ; $4c44: $2a

jr_05f_4c45:
	ld a, [hl+]                                      ; $4c45: $2a
	dec d                                            ; $4c46: $15
	dec h                                            ; $4c47: $25
	ld a, [hl-]                                      ; $4c48: $3a
	ld [bc], a                                       ; $4c49: $02
	dec e                                            ; $4c4a: $1d
	add hl, sp                                       ; $4c4b: $39
	ld a, $3c                                        ; $4c4c: $3e $3c
	ccf                                              ; $4c4e: $3f
	rst $38                                          ; $4c4f: $ff
	cp $91                                           ; $4c50: $fe $91
	sub c                                            ; $4c52: $91
	push de                                          ; $4c53: $d5
	add b                                            ; $4c54: $80
	rst SubAFromDE                                          ; $4c55: $df
	rst $38                                          ; $4c56: $ff
	sbc l                                            ; $4c57: $9d
	jp z, Jump_05f_4fce                              ; $4c58: $ca $ce $4f

	ret nc                                           ; $4c5b: $d0

	sbc d                                            ; $4c5c: $9a
	ld b, e                                          ; $4c5d: $43
	ldh [$30], a                                     ; $4c5e: $e0 $30
	ld b, b                                          ; $4c60: $40
	db $10                                           ; $4c61: $10
	ld a, d                                          ; $4c62: $7a
	db $e4                                           ; $4c63: $e4
	sub a                                            ; $4c64: $97
	ld c, b                                          ; $4c65: $48
	db $10                                           ; $4c66: $10
	jr nc, jr_05f_4be9                               ; $4c67: $30 $80

	ld [$1754], sp                                   ; $4c69: $08 $54 $17
	xor b                                            ; $4c6c: $a8
	db $fd                                           ; $4c6d: $fd
	ld a, a                                          ; $4c6e: $7f
	ld e, l                                          ; $4c6f: $5d
	add b                                            ; $4c70: $80
	push hl                                          ; $4c71: $e5
	ld [bc], a                                       ; $4c72: $02
	sub a                                            ; $4c73: $97
	ld c, b                                          ; $4c74: $48
	rla                                              ; $4c75: $17
	ld [$053a], sp                                   ; $4c76: $08 $3a $05
	ld sp, hl                                        ; $4c79: $f9
	ld b, $3e                                        ; $4c7a: $06 $3e
	ld bc, $0a75                                     ; $4c7c: $01 $75 $0a
	add sp, $11                                      ; $4c7f: $e8 $11
	ld d, a                                          ; $4c81: $57
	cp b                                             ; $4c82: $b8
	ld [$d57f], a                                    ; $4c83: $ea $7f $d5
	ld l, $bc                                        ; $4c86: $2e $bc
	ld e, a                                          ; $4c88: $5f
	ld e, [hl]                                       ; $4c89: $5e
	xor a                                            ; $4c8a: $af
	xor d                                            ; $4c8b: $aa
	ld d, h                                          ; $4c8c: $54
	ld b, h                                          ; $4c8d: $44
	cp e                                             ; $4c8e: $bb
	sub d                                            ; $4c8f: $92
	add b                                            ; $4c90: $80
	db $fd                                           ; $4c91: $fd
	db $ed                                           ; $4c92: $ed
	ldh a, [c]                                       ; $4c93: $f2
	or $e9                                           ; $4c94: $f6 $e9
	pop bc                                           ; $4c96: $c1
	rst $38                                          ; $4c97: $ff
	cp $ef                                           ; $4c98: $fe $ef
	ld c, l                                          ; $4c9a: $4d
	or $47                                           ; $4c9b: $f6 $47
	and b                                            ; $4c9d: $a0
	cp e                                             ; $4c9e: $bb
	ld b, h                                          ; $4c9f: $44
	ld d, [hl]                                       ; $4ca0: $56
	xor c                                            ; $4ca1: $a9
	ld a, [hl+]                                      ; $4ca2: $2a
	push de                                          ; $4ca3: $d5
	ld sp, $4ace                                     ; $4ca4: $31 $ce $4a
	or l                                             ; $4ca7: $b5
	pop af                                           ; $4ca8: $f1
	ld l, [hl]                                       ; $4ca9: $6e
	jp z, $77fd                                      ; $4caa: $ca $fd $77

	adc b                                            ; $4cad: $88
	xor [hl]                                         ; $4cae: $ae

jr_05f_4caf:
	ld d, c                                          ; $4caf: $51
	sbc e                                            ; $4cb0: $9b
	push hl                                          ; $4cb1: $e5
	ld a, [de]                                       ; $4cb2: $1a
	db $10                                           ; $4cb3: $10
	rst AddAOntoHL                                          ; $4cb4: $ef
	ld a, c                                          ; $4cb5: $79
	ld a, d                                          ; $4cb6: $7a
	add a                                            ; $4cb7: $87
	xor d                                            ; $4cb8: $aa
	cp b                                             ; $4cb9: $b8
	ld e, l                                          ; $4cba: $5d
	ld c, h                                          ; $4cbb: $4c
	cp [hl]                                          ; $4cbc: $be
	ld b, c                                          ; $4cbd: $41
	and b                                            ; $4cbe: $a0
	pop de                                           ; $4cbf: $d1
	jr nz, jr_05f_4d1e                               ; $4cc0: $20 $5c

	and b                                            ; $4cc2: $a0
	dec [hl]                                         ; $4cc3: $35
	jp nz, $05ca                                     ; $4cc4: $c2 $ca $05

	ld a, l                                          ; $4cc7: $7d
	add d                                            ; $4cc8: $82
	ld e, $41                                        ; $4cc9: $1e $41
	add hl, bc                                       ; $4ccb: $09
	and d                                            ; $4ccc: $a2
	ld l, d                                          ; $4ccd: $6a
	sub h                                            ; $4cce: $94
	db $f4                                           ; $4ccf: $f4
	ld h, d                                          ; $4cd0: $62
	call nz, $fc77                                   ; $4cd1: $c4 $77 $fc
	ld a, a                                          ; $4cd4: $7f
	ccf                                              ; $4cd5: $3f
	sbc [hl]                                         ; $4cd6: $9e
	ld a, l                                          ; $4cd7: $7d
	ld a, c                                          ; $4cd8: $79
	ld d, d                                          ; $4cd9: $52
	sbc b                                            ; $4cda: $98
	dec d                                            ; $4cdb: $15
	nop                                              ; $4cdc: $00
	add d                                            ; $4cdd: $82
	nop                                              ; $4cde: $00
	ld d, b                                          ; $4cdf: $50
	nop                                              ; $4ce0: $00
	and b                                            ; $4ce1: $a0
	ld a, e                                          ; $4ce2: $7b
	db $fc                                           ; $4ce3: $fc
	ld a, a                                          ; $4ce4: $7f
	db $f4                                           ; $4ce5: $f4
	ld a, a                                          ; $4ce6: $7f
	db $fc                                           ; $4ce7: $fc
	ld a, a                                          ; $4ce8: $7f
	ld a, e                                          ; $4ce9: $7b
	ld [hl], a                                       ; $4cea: $77
	ld hl, sp-$62                                    ; $4ceb: $f8 $9e
	ld d, h                                          ; $4ced: $54
	db $fc                                           ; $4cee: $fc
	sbc [hl]                                         ; $4cef: $9e
	inc bc                                           ; $4cf0: $03
	ldh a, [c]                                       ; $4cf1: $f2
	ld c, e                                          ; $4cf2: $4b
	rrca                                             ; $4cf3: $0f

jr_05f_4cf4:
	dec sp                                           ; $4cf4: $3b
	ldh a, [$9c]                                     ; $4cf5: $f0 $9c
	dec l                                            ; $4cf7: $2d
	nop                                              ; $4cf8: $00
	ld [bc], a                                       ; $4cf9: $02
	ld e, d                                          ; $4cfa: $5a
	call Call_05f_4474                               ; $4cfb: $cd $74 $44
	sbc d                                            ; $4cfe: $9a
	xor a                                            ; $4cff: $af
	nop                                              ; $4d00: $00
	ld d, l                                          ; $4d01: $55
	nop                                              ; $4d02: $00
	ld a, [hl+]                                      ; $4d03: $2a
	ld e, e                                          ; $4d04: $5b
	ldh a, [rPCM34]                                  ; $4d05: $f0 $77
	cp $7f                                           ; $4d07: $fe $7f
	and b                                            ; $4d09: $a0
	ld a, a                                          ; $4d0a: $7f
	db $ec                                           ; $4d0b: $ec
	ld h, a                                          ; $4d0c: $67
	ldh a, [$9b]                                     ; $4d0d: $f0 $9b
	ld a, [$5400]                                    ; $4d0f: $fa $00 $54
	ld bc, $8877                                     ; $4d12: $01 $77 $88
	db $fd                                           ; $4d15: $fd
	sub h                                            ; $4d16: $94
	adc c                                            ; $4d17: $89
	scf                                              ; $4d18: $37
	ld b, c                                          ; $4d19: $41
	scf                                              ; $4d1a: $37
	adc c                                            ; $4d1b: $89
	scf                                              ; $4d1c: $37
	nop                                              ; $4d1d: $00

jr_05f_4d1e:
	rst FarCall                                          ; $4d1e: $f7
	ld e, h                                          ; $4d1f: $5c
	inc hl                                           ; $4d20: $23
	rlca                                             ; $4d21: $07
	db $fc                                           ; $4d22: $fc
	sub l                                            ; $4d23: $95
	ld d, l                                          ; $4d24: $55
	add b                                            ; $4d25: $80
	jr z, jr_05f_4caf                                ; $4d26: $28 $87

	ld b, b                                          ; $4d28: $40
	cp a                                             ; $4d29: $bf
	nop                                              ; $4d2a: $00
	rst $38                                          ; $4d2b: $ff
	ccf                                              ; $4d2c: $3f
	ret nz                                           ; $4d2d: $c0

	ld [hl], a                                       ; $4d2e: $77
	call z, $94ff                                    ; $4d2f: $cc $ff $94
	ld hl, sp+$07                                    ; $4d32: $f8 $07
	nop                                              ; $4d34: $00
	rst $38                                          ; $4d35: $ff
	rrca                                             ; $4d36: $0f
	ldh a, [rIE]                                     ; $4d37: $f0 $ff
	nop                                              ; $4d39: $00

jr_05f_4d3a:
	rst GetHLinHL                                          ; $4d3a: $cf
	jr nc, jr_05f_4d3a                               ; $4d3b: $30 $fd

	ld [hl], e                                       ; $4d3d: $73
	ldh a, [hDisp1_OBP1]                                     ; $4d3e: $f0 $94
	ld a, c                                          ; $4d40: $79
	nop                                              ; $4d41: $00
	rlca                                             ; $4d42: $07
	ld hl, sp-$20                                    ; $4d43: $f8 $e0
	rra                                              ; $4d45: $1f
	db $fd                                           ; $4d46: $fd
	nop                                              ; $4d47: $00
	add sp, $00                                      ; $4d48: $e8 $00
	ld b, b                                          ; $4d4a: $40
	ld h, e                                          ; $4d4b: $63
	sbc a                                            ; $4d4c: $9f
	ld a, a                                          ; $4d4d: $7f
	pop hl                                           ; $4d4e: $e1
	sbc d                                            ; $4d4f: $9a
	cp [hl]                                          ; $4d50: $be
	pop bc                                           ; $4d51: $c1
	ld l, d                                          ; $4d52: $6a
	ld bc, $6f05                                     ; $4d53: $01 $05 $6f
	ld b, b                                          ; $4d56: $40
	ld a, h                                          ; $4d57: $7c
	ret c                                            ; $4d58: $d8

	ld a, l                                          ; $4d59: $7d
	ld de, $f79c                                     ; $4d5a: $11 $9c $f7
	rra                                              ; $4d5d: $1f
	ldh [$67], a                                     ; $4d5e: $e0 $67
	jr nc, jr_05f_4cf4                               ; $4d60: $30 $92

	ld c, h                                          ; $4d62: $4c
	rst FarCall                                          ; $4d63: $f7
	xor c                                            ; $4d64: $a9
	rst GetHLinHL                                          ; $4d65: $cf
	cp $df                                           ; $4d66: $fe $df
	ei                                               ; $4d68: $fb
	db $fc                                           ; $4d69: $fc
	ld e, a                                          ; $4d6a: $5f
	ldh a, [rAUDTERM]                                ; $4d6b: $f0 $25
	ldh a, [$5a]                                     ; $4d6d: $f0 $5a
	ld a, e                                          ; $4d6f: $7b
	db $fc                                           ; $4d70: $fc
	ld a, [hl]                                       ; $4d71: $7e
	ld l, l                                          ; $4d72: $6d
	ld a, a                                          ; $4d73: $7f
	and d                                            ; $4d74: $a2
	sbc c                                            ; $4d75: $99
	ld bc, $8afe                                     ; $4d76: $01 $fe $8a
	ld [hl], l                                       ; $4d79: $75
	cp a                                             ; $4d7a: $bf
	ld b, b                                          ; $4d7b: $40
	ld l, a                                          ; $4d7c: $6f
	ld e, b                                          ; $4d7d: $58
	ld a, a                                          ; $4d7e: $7f
	db $f4                                           ; $4d7f: $f4
	sbc e                                            ; $4d80: $9b
	and a                                            ; $4d81: $a7
	ld e, b                                          ; $4d82: $58
	ld a, a                                          ; $4d83: $7f
	add b                                            ; $4d84: $80
	ld l, a                                          ; $4d85: $6f
	ld e, h                                          ; $4d86: $5c
	ld a, a                                          ; $4d87: $7f
	ld l, b                                          ; $4d88: $68
	ld a, a                                          ; $4d89: $7f
	ldh a, [$7f]                                     ; $4d8a: $f0 $7f
	and h                                            ; $4d8c: $a4
	sbc l                                            ; $4d8d: $9d
	db $fc                                           ; $4d8e: $fc
	inc bc                                           ; $4d8f: $03
	ld l, a                                          ; $4d90: $6f
	ldh a, [c]                                       ; $4d91: $f2
	sbc [hl]                                         ; $4d92: $9e
	db $f4                                           ; $4d93: $f4
	ld [hl], d                                       ; $4d94: $72
	db $ec                                           ; $4d95: $ec
	sub l                                            ; $4d96: $95
	ld l, d                                          ; $4d97: $6a
	sub l                                            ; $4d98: $95
	db $fd                                           ; $4d99: $fd
	add d                                            ; $4d9a: $82
	rst $38                                          ; $4d9b: $ff
	add b                                            ; $4d9c: $80
	push de                                          ; $4d9d: $d5
	xor d                                            ; $4d9e: $aa
	xor d                                            ; $4d9f: $aa
	ld d, l                                          ; $4da0: $55
	ld a, e                                          ; $4da1: $7b
	db $ec                                           ; $4da2: $ec
	db $db                                           ; $4da3: $db
	rst $38                                          ; $4da4: $ff
	ld a, e                                          ; $4da5: $7b
	db $e4                                           ; $4da6: $e4
	ld a, [hl]                                       ; $4da7: $7e
	sub h                                            ; $4da8: $94
	rla                                              ; $4da9: $17
	ldh a, [$9b]                                     ; $4daa: $f0 $9b
	ld a, [$4005]                                    ; $4dac: $fa $05 $40
	cp a                                             ; $4daf: $bf
	ld d, a                                          ; $4db0: $57
	ldh a, [$7f]                                     ; $4db1: $f0 $7f
	db $f4                                           ; $4db3: $f4
	ld a, a                                          ; $4db4: $7f
	push af                                          ; $4db5: $f5
	ld e, a                                          ; $4db6: $5f
	ldh a, [$7c]                                     ; $4db7: $f0 $7c
	db $fc                                           ; $4db9: $fc
	ld c, a                                          ; $4dba: $4f
	ldh a, [rPCM34]                                  ; $4dbb: $f0 $77
	call nz, $019e                                   ; $4dbd: $c4 $9e $01
	ld d, e                                          ; $4dc0: $53
	ldh a, [$7c]                                     ; $4dc1: $f0 $7c
	ld e, d                                          ; $4dc3: $5a
	sbc [hl]                                         ; $4dc4: $9e
	ld d, a                                          ; $4dc5: $57
	ld d, e                                          ; $4dc6: $53
	ldh a, [$9e]                                     ; $4dc7: $f0 $9e
	ld a, [hl+]                                      ; $4dc9: $2a
	sbc $ff                                          ; $4dca: $de $ff
	ld d, a                                          ; $4dcc: $57
	ldh a, [$dd]                                     ; $4dcd: $f0 $dd
	rst $38                                          ; $4dcf: $ff
	ld e, a                                          ; $4dd0: $5f
	ldh a, [$9d]                                     ; $4dd1: $f0 $9d
	ld c, d                                          ; $4dd3: $4a
	cp a                                             ; $4dd4: $bf
	ld c, a                                          ; $4dd5: $4f
	ldh a, [$9e]                                     ; $4dd6: $f0 $9e
	xor e                                            ; $4dd8: $ab
	ld [hl], e                                       ; $4dd9: $73
	adc l                                            ; $4dda: $8d
	ld e, a                                          ; $4ddb: $5f
	ldh a, [$9b]                                     ; $4ddc: $f0 $9b
	cp $ff                                           ; $4dde: $fe $ff
	ld d, a                                          ; $4de0: $57
	ld d, a                                          ; $4de1: $57
	ld d, a                                          ; $4de2: $57
	ldh a, [$73]                                     ; $4de3: $f0 $73
	pop bc                                           ; $4de5: $c1
	ld e, e                                          ; $4de6: $5b
	ret nc                                           ; $4de7: $d0

	ld a, a                                          ; $4de8: $7f
	ld sp, hl                                        ; $4de9: $f9
	ld a, a                                          ; $4dea: $7f
	push af                                          ; $4deb: $f5
	ld d, a                                          ; $4dec: $57
	ldh a, [$7d]                                     ; $4ded: $f0 $7d
	and h                                            ; $4def: $a4
	ld a, [hl]                                       ; $4df0: $7e
	push hl                                          ; $4df1: $e5
	rst SubAFromDE                                          ; $4df2: $df
	rst $38                                          ; $4df3: $ff
	ld a, a                                          ; $4df4: $7f
	ld a, h                                          ; $4df5: $7c
	ld h, e                                          ; $4df6: $63
	ret nc                                           ; $4df7: $d0

	sbc e                                            ; $4df8: $9b
	ld d, l                                          ; $4df9: $55
	dec d                                            ; $4dfa: $15
	ld [$77fa], a                                    ; $4dfb: $ea $fa $77
	di                                               ; $4dfe: $f3
	ld h, a                                          ; $4dff: $67
	and b                                            ; $4e00: $a0
	sbc [hl]                                         ; $4e01: $9e
	ld d, h                                          ; $4e02: $54
	ld a, e                                          ; $4e03: $7b
	ld e, [hl]                                       ; $4e04: $5e
	ld e, e                                          ; $4e05: $5b
	ldh a, [$6f]                                     ; $4e06: $f0 $6f
	ld [bc], a                                       ; $4e08: $02
	ld l, a                                          ; $4e09: $6f
	ldh a, [$df]                                     ; $4e0a: $f0 $df
	cp e                                             ; $4e0c: $bb
	ld c, a                                          ; $4e0d: $4f
	ldh a, [$df]                                     ; $4e0e: $f0 $df
	xor e                                            ; $4e10: $ab
	pop bc                                           ; $4e11: $c1
	rst $38                                          ; $4e12: $ff
	inc bc                                           ; $4e13: $03
	rst $38                                          ; $4e14: $ff
	inc bc                                           ; $4e15: $03
	rst $38                                          ; $4e16: $ff
	inc bc                                           ; $4e17: $03
	rst $38                                          ; $4e18: $ff
	inc bc                                           ; $4e19: $03
	rst $38                                          ; $4e1a: $ff
	inc bc                                           ; $4e1b: $03
	rst $38                                          ; $4e1c: $ff
	inc bc                                           ; $4e1d: $03
	rst $38                                          ; $4e1e: $ff
	inc bc                                           ; $4e1f: $03
	rst $38                                          ; $4e20: $ff
	inc bc                                           ; $4e21: $03
	rst $38                                          ; $4e22: $ff
	ret                                              ; $4e23: $c9


	rst $38                                          ; $4e24: $ff
	ld c, d                                          ; $4e25: $4a
	nop                                              ; $4e26: $00
	sbc [hl]                                         ; $4e27: $9e
	ld [hl], e                                       ; $4e28: $73
	ret c                                            ; $4e29: $d8

	inc sp                                           ; $4e2a: $33
	ld [hl], a                                       ; $4e2b: $77
	or $df                                           ; $4e2c: $f6 $df
	ld d, l                                          ; $4e2e: $55
	sbc [hl]                                         ; $4e2f: $9e
	ld b, e                                          ; $4e30: $43
	ld l, a                                          ; $4e31: $6f
	or $9b                                           ; $4e32: $f6 $9b
	dec [hl]                                         ; $4e34: $35
	ld d, l                                          ; $4e35: $55
	ld b, h                                          ; $4e36: $44
	ld b, h                                          ; $4e37: $44
	ld a, e                                          ; $4e38: $7b
	push af                                          ; $4e39: $f5
	ld a, e                                          ; $4e3a: $7b
	or $df                                           ; $4e3b: $f6 $df
	ld d, l                                          ; $4e3d: $55
	sbc h                                            ; $4e3e: $9c
	ld d, h                                          ; $4e3f: $54
	ld b, h                                          ; $4e40: $44
	ld b, h                                          ; $4e41: $44
	ld a, e                                          ; $4e42: $7b
	or $9d                                           ; $4e43: $f6 $9d
	scf                                              ; $4e45: $37
	inc sp                                           ; $4e46: $33
	ld [hl], a                                       ; $4e47: $77
	rst FarCall                                          ; $4e48: $f7
	sbc c                                            ; $4e49: $99
	ld b, a                                          ; $4e4a: $47
	ld [hl], a                                       ; $4e4b: $77
	inc sp                                           ; $4e4c: $33
	ld [hl], e                                       ; $4e4d: $73
	ld d, l                                          ; $4e4e: $55
	ld [hl], a                                       ; $4e4f: $77
	ld a, e                                          ; $4e50: $7b
	rst FarCall                                          ; $4e51: $f7
	ld [hl], e                                       ; $4e52: $73
	ldh [c], a                                       ; $4e53: $e2
	ld a, a                                          ; $4e54: $7f
	or $9e                                           ; $4e55: $f6 $9e
	ld [hl], h                                       ; $4e57: $74
	sbc $44                                          ; $4e58: $de $44
	sbc $33                                          ; $4e5a: $de $33
	db $db                                           ; $4e5c: $db
	ld [hl], a                                       ; $4e5d: $77
	ld [hl], a                                       ; $4e5e: $77
	cp [hl]                                          ; $4e5f: $be
	sbc c                                            ; $4e60: $99
	halt                                             ; $4e61: $76
	ld h, l                                          ; $4e62: $65
	ld d, l                                          ; $4e63: $55
	ld h, [hl]                                       ; $4e64: $66
	ld h, [hl]                                       ; $4e65: $66
	ld d, l                                          ; $4e66: $55
	ld a, e                                          ; $4e67: $7b
	db $fc                                           ; $4e68: $fc
	sbc [hl]                                         ; $4e69: $9e
	ld h, [hl]                                       ; $4e6a: $66
	rst SubAFromHL                                          ; $4e6b: $d7
	ld [hl], a                                       ; $4e6c: $77
	rst SubAFromHL                                          ; $4e6d: $d7
	ld h, [hl]                                       ; $4e6e: $66
	cp d                                             ; $4e6f: $ba
	add a                                            ; $4e70: $87
	sub a                                            ; $4e71: $97
	ld e, l                                          ; $4e72: $5d
	xor b                                            ; $4e73: $a8
	inc d                                            ; $4e74: $14
	xor b                                            ; $4e75: $a8
	ld d, l                                          ; $4e76: $55
	xor d                                            ; $4e77: $aa
	ld d, l                                          ; $4e78: $55
	xor e                                            ; $4e79: $ab
	reti                                             ; $4e7a: $d9


	rst $38                                          ; $4e7b: $ff
	ld a, a                                          ; $4e7c: $7f

Jump_05f_4e7d:
	db $f4                                           ; $4e7d: $f4
	sbc [hl]                                         ; $4e7e: $9e
	ld [hl], l                                       ; $4e7f: $75
	ld a, e                                          ; $4e80: $7b
	ldh a, [c]                                       ; $4e81: $f2
	sbc l                                            ; $4e82: $9d
	push de                                          ; $4e83: $d5
	add e                                            ; $4e84: $83
	reti                                             ; $4e85: $d9


	rst $38                                          ; $4e86: $ff
	sbc l                                            ; $4e87: $9d
	rst SubAFromBC                                          ; $4e88: $e7
	xor $73                                          ; $4e89: $ee $73
	cp $9e                                           ; $4e8b: $fe $9e
	ld [$ffd6], a                                    ; $4e8d: $ea $d6 $ff
	call c, $d2bf                                    ; $4e90: $dc $bf $d2
	rst $38                                          ; $4e93: $ff
	sbc [hl]                                         ; $4e94: $9e
	ld a, [hl]                                       ; $4e95: $7e
	db $d3                                           ; $4e96: $d3
	rst $38                                          ; $4e97: $ff
	sbc l                                            ; $4e98: $9d
	ld a, a                                          ; $4e99: $7f
	rst FarCall                                          ; $4e9a: $f7
	ret                                              ; $4e9b: $c9


	rst $38                                          ; $4e9c: $ff
	sbc l                                            ; $4e9d: $9d
	ld a, [$77f6]                                    ; $4e9e: $fa $f6 $77
	cp $9d                                           ; $4ea1: $fe $9d
	cp $f6                                           ; $4ea3: $fe $f6
	ret                                              ; $4ea5: $c9


	rst $38                                          ; $4ea6: $ff
	sbc h                                            ; $4ea7: $9c
	cp [hl]                                          ; $4ea8: $be
	rst SubAFromDE                                          ; $4ea9: $df
	cp $dd                                           ; $4eaa: $fe $dd
	rst $38                                          ; $4eac: $ff
	ld h, e                                          ; $4ead: $63
	ret nz                                           ; $4eae: $c0

	sub a                                            ; $4eaf: $97
	cp $5f                                           ; $4eb0: $fe $5f
	ldh a, [c]                                       ; $4eb2: $f2
	db $fd                                           ; $4eb3: $fd
	or [hl]                                          ; $4eb4: $b6
	ld e, a                                          ; $4eb5: $5f
	xor a                                            ; $4eb6: $af
	call nc, $ffd9                                   ; $4eb7: $d4 $d9 $ff
	ld a, a                                          ; $4eba: $7f
	ld h, e                                          ; $4ebb: $63
	ld a, a                                          ; $4ebc: $7f
	cp $9b                                           ; $4ebd: $fe $9b
	or e                                             ; $4ebf: $b3
	ld e, a                                          ; $4ec0: $5f
	db $e4                                           ; $4ec1: $e4
	ld d, l                                          ; $4ec2: $55
	reti                                             ; $4ec3: $d9


	rst $38                                          ; $4ec4: $ff
	sbc d                                            ; $4ec5: $9a
	ld a, [hl+]                                      ; $4ec6: $2a
	ld d, l                                          ; $4ec7: $55
	xor e                                            ; $4ec8: $ab
	ld d, h                                          ; $4ec9: $54
	and d                                            ; $4eca: $a2
	ld a, e                                          ; $4ecb: $7b
	db $ec                                           ; $4ecc: $ec
	reti                                             ; $4ecd: $d9


	rst $38                                          ; $4ece: $ff
	sub a                                            ; $4ecf: $97
	adc d                                            ; $4ed0: $8a
	dec d                                            ; $4ed1: $15
	ld a, [hl+]                                      ; $4ed2: $2a
	ld d, l                                          ; $4ed3: $55
	xor d                                            ; $4ed4: $aa
	ld d, [hl]                                       ; $4ed5: $56
	adc b                                            ; $4ed6: $88
	ld [$f063], sp                                   ; $4ed7: $08 $63 $f0
	sbc b                                            ; $4eda: $98
	ld b, l                                          ; $4edb: $45
	xor d                                            ; $4edc: $aa
	ld d, l                                          ; $4edd: $55
	ld a, [hl+]                                      ; $4ede: $2a
	ld d, l                                          ; $4edf: $55
	ld a, [hl+]                                      ; $4ee0: $2a
	inc d                                            ; $4ee1: $14
	ld e, e                                          ; $4ee2: $5b
	ret nz                                           ; $4ee3: $c0

	sbc d                                            ; $4ee4: $9a
	rla                                              ; $4ee5: $17
	adc b                                            ; $4ee6: $88
	ld h, b                                          ; $4ee7: $60
	ld bc, $ded3                                     ; $4ee8: $01 $d3 $de
	rst $38                                          ; $4eeb: $ff
	sbc [hl]                                         ; $4eec: $9e
	ld sp, hl                                        ; $4eed: $f9
	ld [hl], a                                       ; $4eee: $77
	ld c, b                                          ; $4eef: $48
	ld [hl], a                                       ; $4ef0: $77
	or b                                             ; $4ef1: $b0
	sbc e                                            ; $4ef2: $9b
	ld a, [hl+]                                      ; $4ef3: $2a
	ld d, b                                          ; $4ef4: $50
	ld [hl+], a                                      ; $4ef5: $22
	ld d, a                                          ; $4ef6: $57
	jp c, $99ff                                      ; $4ef7: $da $ff $99

	ld sp, hl                                        ; $4efa: $f9
	adc e                                            ; $4efb: $8b
	dec d                                            ; $4efc: $15
	adc d                                            ; $4efd: $8a
	ld d, c                                          ; $4efe: $51
	cp e                                             ; $4eff: $bb
	ld a, e                                          ; $4f00: $7b
	adc $9a                                          ; $4f01: $ce $9a
	db $fd                                           ; $4f03: $fd
	ei                                               ; $4f04: $fb
	rst $38                                          ; $4f05: $ff
	cp $cd                                           ; $4f06: $fe $cd
	ld a, e                                          ; $4f08: $7b
	ld [hl], l                                       ; $4f09: $75

jr_05f_4f0a:
	adc [hl]                                         ; $4f0a: $8e
	ld d, b                                          ; $4f0b: $50
	and b                                            ; $4f0c: $a0
	inc bc                                           ; $4f0d: $03
	inc bc                                           ; $4f0e: $03
	rra                                              ; $4f0f: $1f
	rlca                                             ; $4f10: $07
	inc bc                                           ; $4f11: $03
	rlca                                             ; $4f12: $07
	rst $38                                          ; $4f13: $ff
	rst $38                                          ; $4f14: $ff
	db $fc                                           ; $4f15: $fc
	db $fc                                           ; $4f16: $fc
	ldh [$f8], a                                     ; $4f17: $e0 $f8
	db $fc                                           ; $4f19: $fc
	ld hl, sp+$7f                                    ; $4f1a: $f8 $7f
	jp c, $9eff                                      ; $4f1c: $da $ff $9e

	add b                                            ; $4f1f: $80
	ld a, [$d57f]                                    ; $4f20: $fa $7f $d5
	ld [hl], a                                       ; $4f23: $77
	adc a                                            ; $4f24: $8f
	sbc l                                            ; $4f25: $9d
	push de                                          ; $4f26: $d5
	xor d                                            ; $4f27: $aa
	reti                                             ; $4f28: $d9


	rst $38                                          ; $4f29: $ff
	sbc b                                            ; $4f2a: $98
	dec b                                            ; $4f2b: $05
	xor d                                            ; $4f2c: $aa
	ld b, l                                          ; $4f2d: $45
	xor d                                            ; $4f2e: $aa
	ld e, l                                          ; $4f2f: $5d
	cp [hl]                                          ; $4f30: $be
	ld e, a                                          ; $4f31: $5f
	ld [hl], e                                       ; $4f32: $73
	dec sp                                           ; $4f33: $3b
	ld [hl], d                                       ; $4f34: $72
	ret nz                                           ; $4f35: $c0

	sbc e                                            ; $4f36: $9b
	db $e3                                           ; $4f37: $e3
	rst SubAFromBC                                          ; $4f38: $e7
	ld [$7beb], a                                    ; $4f39: $ea $eb $7b
	cp $62                                           ; $4f3c: $fe $62
	jp $bd98                                         ; $4f3e: $c3 $98 $bd


	ccf                                              ; $4f41: $3f
	dec a                                            ; $4f42: $3d
	dec sp                                           ; $4f43: $3b
	dec a                                            ; $4f44: $3d
	add hl, sp                                       ; $4f45: $39
	dec a                                            ; $4f46: $3d
	ret c                                            ; $4f47: $d8

	rst $38                                          ; $4f48: $ff
	ld a, a                                          ; $4f49: $7f
	sub $9c                                          ; $4f4a: $d6 $9c
	ld a, [hl]                                       ; $4f4c: $7e
	db $fd                                           ; $4f4d: $fd
	cp $7b                                           ; $4f4e: $fe $7b
	ld a, [$c666]                                    ; $4f50: $fa $66 $c6
	ld l, a                                          ; $4f53: $6f
	cp $9e                                           ; $4f54: $fe $9e
	sbc a                                            ; $4f56: $9f
	ret                                              ; $4f57: $c9


	rst $38                                          ; $4f58: $ff
	ld a, [hl]                                       ; $4f59: $7e
	add $df                                          ; $4f5a: $c6 $df
	db $fc                                           ; $4f5c: $fc
	sbc e                                            ; $4f5d: $9b
	ld hl, sp-$18                                    ; $4f5e: $f8 $e8
	ret z                                            ; $4f60: $c8

	ret z                                            ; $4f61: $c8

	ld e, e                                          ; $4f62: $5b
	xor $77                                          ; $4f63: $ee $77
	jp $f59e                                         ; $4f65: $c3 $9e $f5


	reti                                             ; $4f68: $d9


	rst $38                                          ; $4f69: $ff
	sbc [hl]                                         ; $4f6a: $9e
	xor e                                            ; $4f6b: $ab
	ld a, e                                          ; $4f6c: $7b
	jr nc, jr_05f_4f0a                               ; $4f6d: $30 $9b

	xor [hl]                                         ; $4f6f: $ae
	ld e, l                                          ; $4f70: $5d
	xor d                                            ; $4f71: $aa
	push de                                          ; $4f72: $d5
	ld l, a                                          ; $4f73: $6f
	push hl                                          ; $4f74: $e5
	sub [hl]                                         ; $4f75: $96
	rst SubAFromDE                                          ; $4f76: $df
	rst AddAOntoHL                                          ; $4f77: $ef
	db $eb                                           ; $4f78: $eb
	push de                                          ; $4f79: $d5
	xor h                                            ; $4f7a: $ac
	ld d, [hl]                                       ; $4f7b: $56
	cp a                                             ; $4f7c: $bf
	rst SubAFromDE                                          ; $4f7d: $df
	cp [hl]                                          ; $4f7e: $be
	ld [hl], a                                       ; $4f7f: $77
	inc d                                            ; $4f80: $14
	ld [hl], a                                       ; $4f81: $77
	and e                                            ; $4f82: $a3
	sub a                                            ; $4f83: $97
	cp $aa                                           ; $4f84: $fe $aa
	db $dd                                           ; $4f86: $dd
	cp $dd                                           ; $4f87: $fe $dd
	db $ec                                           ; $4f89: $ec
	rst SubAFromHL                                          ; $4f8a: $d7
	xor [hl]                                         ; $4f8b: $ae
	ld [hl], d                                       ; $4f8c: $72
	ret nc                                           ; $4f8d: $d0

	sub e                                            ; $4f8e: $93
	ei                                               ; $4f8f: $fb
	ld sp, hl                                        ; $4f90: $f9
	db $fd                                           ; $4f91: $fd
	rst $38                                          ; $4f92: $ff
	xor d                                            ; $4f93: $aa
	ld d, c                                          ; $4f94: $51
	xor b                                            ; $4f95: $a8
	ld d, b                                          ; $4f96: $50
	and b                                            ; $4f97: $a0
	jr @+$40                                         ; $4f98: $18 $3e

	ld e, a                                          ; $4f9a: $5f
	call c, $94ff                                    ; $4f9b: $dc $ff $94
	rst AddAOntoHL                                          ; $4f9e: $ef
	db $e3                                           ; $4f9f: $e3
	db $e3                                           ; $4fa0: $e3
	add b                                            ; $4fa1: $80
	ld bc, $0702                                     ; $4fa2: $01 $02 $07
	rl l                                             ; $4fa5: $cb $15
	ld c, a                                          ; $4fa7: $4f
	dec b                                            ; $4fa8: $05
	sbc $ff                                          ; $4fa9: $de $ff
	ld a, e                                          ; $4fab: $7b
	ld l, c                                          ; $4fac: $69
	add b                                            ; $4fad: $80
	ld a, [$0bff]                                    ; $4fae: $fa $ff $0b
	ld d, c                                          ; $4fb1: $51
	cp b                                             ; $4fb2: $b8
	ld b, c                                          ; $4fb3: $41
	xor b                                            ; $4fb4: $a8
	ld a, a                                          ; $4fb5: $7f
	xor a                                            ; $4fb6: $af
	ld a, a                                          ; $4fb7: $7f
	cp $ff                                           ; $4fb8: $fe $ff
	rst AddAOntoHL                                          ; $4fba: $ef
	rst $38                                          ; $4fbb: $ff
	rst $38                                          ; $4fbc: $ff
	db $dd                                           ; $4fbd: $dd
	ld [hl], d                                       ; $4fbe: $72
	push de                                          ; $4fbf: $d5
	db $e3                                           ; $4fc0: $e3
	ld d, c                                          ; $4fc1: $51
	and c                                            ; $4fc2: $a1
	ld d, e                                          ; $4fc3: $53
	xor d                                            ; $4fc4: $aa
	sub h                                            ; $4fc5: $94
	or h                                             ; $4fc6: $b4
	ld e, a                                          ; $4fc7: $5f
	ld a, $ff                                        ; $4fc8: $3e $ff
	cp $fe                                           ; $4fca: $fe $fe
	rst $38                                          ; $4fcc: $ff
	sub h                                            ; $4fcd: $94

Jump_05f_4fce:
	ld a, a                                          ; $4fce: $7f
	rst GetHLinHL                                          ; $4fcf: $cf
	rst $38                                          ; $4fd0: $ff
	ld h, b                                          ; $4fd1: $60
	ld b, h                                          ; $4fd2: $44
	jr z, @+$06                                      ; $4fd3: $28 $04

	add b                                            ; $4fd5: $80
	nop                                              ; $4fd6: $00
	ld sp, $db33                                     ; $4fd7: $31 $33 $db
	rst $38                                          ; $4fda: $ff
	sub l                                            ; $4fdb: $95
	adc $cc                                          ; $4fdc: $ce $cc
	scf                                              ; $4fde: $37
	ld d, $36                                        ; $4fdf: $16 $36
	db $10                                           ; $4fe1: $10
	ld bc, $c983                                     ; $4fe2: $01 $83 $c9
	rst SubAFromBC                                          ; $4fe5: $e7
	ld [hl], e                                       ; $4fe6: $73
	add c                                            ; $4fe7: $81
	sbc c                                            ; $4fe8: $99
	ld a, h                                          ; $4fe9: $7c
	ld [hl], $18                                     ; $4fea: $36 $18
	rrca                                             ; $4fec: $0f
	ld a, a                                          ; $4fed: $7f
	ccf                                              ; $4fee: $3f
	ld [hl], d                                       ; $4fef: $72
	call $f09c                                       ; $4ff0: $cd $9c $f0
	add b                                            ; $4ff3: $80
	ret nz                                           ; $4ff4: $c0

	ld [hl], d                                       ; $4ff5: $72
	call $ffd9                                       ; $4ff6: $cd $d9 $ff
	ld sp, hl                                        ; $4ff9: $f9
	sbc c                                            ; $4ffa: $99
	push bc                                          ; $4ffb: $c5
	cp e                                             ; $4ffc: $bb
	ld [hl], l                                       ; $4ffd: $75
	xor d                                            ; $4ffe: $aa
	ld e, a                                          ; $4fff: $5f
	rst AddAOntoHL                                          ; $5000: $ef
	ld a, e                                          ; $5001: $7b
	ld h, [hl]                                       ; $5002: $66
	call c, $9dff                                    ; $5003: $dc $ff $9d
	rst FarCall                                          ; $5006: $f7
	db $e3                                           ; $5007: $e3
	halt                                             ; $5008: $76
	db $f4                                           ; $5009: $f4
	sbc h                                            ; $500a: $9c
	ld e, h                                          ; $500b: $5c
	or a                                             ; $500c: $b7
	db $eb                                           ; $500d: $eb
	ld h, d                                          ; $500e: $62
	nop                                              ; $500f: $00
	sub a                                            ; $5010: $97
	rst AddAOntoHL                                          ; $5011: $ef
	xor $cd                                          ; $5012: $ee $cd
	adc $cc                                          ; $5014: $ce $cc
	adc $cc                                          ; $5016: $ce $cc
	adc [hl]                                         ; $5018: $8e
	reti                                             ; $5019: $d9


	rst $38                                          ; $501a: $ff
	rst SubAFromDE                                          ; $501b: $df
	add hl, sp                                       ; $501c: $39
	sbc c                                            ; $501d: $99
	jr c, jr_05f_5059                                ; $501e: $38 $39

	jr c, jr_05f_509b                                ; $5020: $38 $79

	ld a, b                                          ; $5022: $78
	ld a, c                                          ; $5023: $79
	reti                                             ; $5024: $d9


	rst $38                                          ; $5025: $ff
	sub a                                            ; $5026: $97
	ld a, l                                          ; $5027: $7d
	db $ec                                           ; $5028: $ec
	ld a, l                                          ; $5029: $7d
	db $ec                                           ; $502a: $ec
	ld a, a                                          ; $502b: $7f
	ld l, $7f                                        ; $502c: $2e $7f
	xor $4a                                          ; $502e: $ee $4a
	ret nz                                           ; $5030: $c0

	sbc [hl]                                         ; $5031: $9e
	rst SubAFromDE                                          ; $5032: $df
	ret                                              ; $5033: $c9


	rst $38                                          ; $5034: $ff
	sub a                                            ; $5035: $97
	ret z                                            ; $5036: $c8

	ret c                                            ; $5037: $d8

	sbc $9e                                          ; $5038: $de $9e
	ret c                                            ; $503a: $d8

	sbc [hl]                                         ; $503b: $9e
	ret c                                            ; $503c: $d8

	sbc b                                            ; $503d: $98
	reti                                             ; $503e: $d9


	rst $38                                          ; $503f: $ff
	sub a                                            ; $5040: $97
	cp e                                             ; $5041: $bb
	push af                                          ; $5042: $f5
	cp e                                             ; $5043: $bb
	db $fd                                           ; $5044: $fd
	xor e                                            ; $5045: $ab
	push de                                          ; $5046: $d5
	xor [hl]                                         ; $5047: $ae
	reti                                             ; $5048: $d9


	ld [hl], c                                       ; $5049: $71
	adc h                                            ; $504a: $8c
	adc a                                            ; $504b: $8f
	ei                                               ; $504c: $fb
	di                                               ; $504d: $f3
	and $2a                                          ; $504e: $e6 $2a
	ld e, l                                          ; $5050: $5d
	xor [hl]                                         ; $5051: $ae
	sub $2f                                          ; $5052: $d6 $2f
	ret nc                                           ; $5054: $d0

	sub b                                            ; $5055: $90
	sub b                                            ; $5056: $90
	rst FarCall                                          ; $5057: $f7
	db $e3                                           ; $5058: $e3

jr_05f_5059:
	pop af                                           ; $5059: $f1
	jp hl                                            ; $505a: $e9


	ldh a, [$de]                                     ; $505b: $f0 $de
	ld h, h                                          ; $505d: $64
	sbc e                                            ; $505e: $9b
	db $ed                                           ; $505f: $ed
	ld e, l                                          ; $5060: $5d
	ld d, l                                          ; $5061: $55
	sbc a                                            ; $5062: $9f
	ld [hl], a                                       ; $5063: $77
	ld d, e                                          ; $5064: $53
	sbc e                                            ; $5065: $9b
	ld a, [$eee6]                                    ; $5066: $fa $e6 $ee
	ld h, b                                          ; $5069: $60
	db $fd                                           ; $506a: $fd
	sbc h                                            ; $506b: $9c
	ld l, e                                          ; $506c: $6b
	or $fb                                           ; $506d: $f6 $fb
	ld [hl], e                                       ; $506f: $73
	ld b, e                                          ; $5070: $43
	sbc h                                            ; $5071: $9c
	rst SubAFromDE                                          ; $5072: $df
	rrca                                             ; $5073: $0f
	ld b, $fc                                        ; $5074: $06 $fc
	sbc d                                            ; $5076: $9a
	ld l, l                                          ; $5077: $6d
	inc sp                                           ; $5078: $33
	or e                                             ; $5079: $b3
	cp $ff                                           ; $507a: $fe $ff
	sbc $04                                          ; $507c: $de $04
	sbc d                                            ; $507e: $9a
	sbc a                                            ; $507f: $9f
	call z, $014c                     ; $5080: $cc $4c $01
	nop                                              ; $5083: $00
	sbc $04                                          ; $5084: $de $04
	sbc b                                            ; $5086: $98
	ld [$8506], sp                                   ; $5087: $08 $06 $85
	jp z, $ecf5                                      ; $508a: $ca $f5 $ec

	db $fd                                           ; $508d: $fd
	ld a, d                                          ; $508e: $7a
	and e                                            ; $508f: $a3
	sub h                                            ; $5090: $94
	rst $38                                          ; $5091: $ff
	ccf                                              ; $5092: $3f
	rra                                              ; $5093: $1f
	inc de                                           ; $5094: $13
	sub e                                            ; $5095: $93
	jp $bdea                                         ; $5096: $c3 $ea $bd


	add sp, -$04                                     ; $5099: $e8 $fc

jr_05f_509b:
	ld e, $78                                        ; $509b: $1e $78
	pop de                                           ; $509d: $d1
	sub [hl]                                         ; $509e: $96
	sbc a                                            ; $509f: $9f
	di                                               ; $50a0: $f3
	ld d, a                                          ; $50a1: $57
	db $d3                                           ; $50a2: $d3
	di                                               ; $50a3: $f3
	rst FarCall                                          ; $50a4: $f7
	rst SubAFromBC                                          ; $50a5: $e7
	ld l, d                                          ; $50a6: $6a
	xor $7a                                          ; $50a7: $ee $7a
	ldh a, [$de]                                     ; $50a9: $f0 $de
	ld a, a                                          ; $50ab: $7f
	sbc l                                            ; $50ac: $9d
	rst $38                                          ; $50ad: $ff
	ld de, $f07a                                     ; $50ae: $11 $7a $f0
	sbc $80                                          ; $50b1: $de $80
	sbc l                                            ; $50b3: $9d
	nop                                              ; $50b4: $00
	ld a, e                                          ; $50b5: $7b
	jp c, $9eff                                      ; $50b6: $da $ff $9e

	add h                                            ; $50b9: $84
	ld a, [$e046]                                    ; $50ba: $fa $46 $e0
	rlca                                             ; $50bd: $07
	ldh a, [$7f]                                     ; $50be: $f0 $7f
	and [hl]                                         ; $50c0: $a6
	sbc [hl]                                         ; $50c1: $9e
	ld [$5579], a                                    ; $50c2: $ea $79 $55
	ld a, a                                          ; $50c5: $7f
	cp $95                                           ; $50c6: $fe $95
	db $e3                                           ; $50c8: $e3
	ld [hl], a                                       ; $50c9: $77
	ccf                                              ; $50ca: $3f
	rra                                              ; $50cb: $1f
	cpl                                              ; $50cc: $2f
	ld b, $0e                                        ; $50cd: $06 $0e
	inc b                                            ; $50cf: $04
	or d                                             ; $50d0: $b2
	ld [hl], a                                       ; $50d1: $77
	halt                                             ; $50d2: $76
	ld b, [hl]                                       ; $50d3: $46
	sbc $ff                                          ; $50d4: $de $ff
	sub c                                            ; $50d6: $91
	rst SubAFromDE                                          ; $50d7: $df
	adc a                                            ; $50d8: $8f
	ld c, h                                          ; $50d9: $4c
	ld [bc], a                                       ; $50da: $02
	rlca                                             ; $50db: $07
	ld a, [bc]                                       ; $50dc: $0a
	dec b                                            ; $50dd: $05
	adc h                                            ; $50de: $8c
	sbc [hl]                                         ; $50df: $9e
	inc e                                            ; $50e0: $1c
	sbc [hl]                                         ; $50e1: $9e
	sbc h                                            ; $50e2: $9c
	sbc [hl]                                         ; $50e3: $9e
	inc e                                            ; $50e4: $1c
	ld h, c                                          ; $50e5: $61
	ld h, b                                          ; $50e6: $60
	sbc l                                            ; $50e7: $9d
	ld hl, sp-$07                                    ; $50e8: $f8 $f9
	ld a, e                                          ; $50ea: $7b
	cp $de                                           ; $50eb: $fe $de
	ld hl, sp-$27                                    ; $50ed: $f8 $d9
	rst $38                                          ; $50ef: $ff
	sub a                                            ; $50f0: $97
	ld a, h                                          ; $50f1: $7c
	db $ec                                           ; $50f2: $ec
	ld a, h                                          ; $50f3: $7c
	xor $6c                                          ; $50f4: $ee $6c
	ld l, d                                          ; $50f6: $6a
	ld l, l                                          ; $50f7: $6d
	ld l, d                                          ; $50f8: $6a
	ld h, d                                          ; $50f9: $62
	ret nz                                           ; $50fa: $c0

	sbc b                                            ; $50fb: $98
	ccf                                              ; $50fc: $3f

jr_05f_50fd:
	ld e, a                                          ; $50fd: $5f
	cp a                                             ; $50fe: $bf
	ld a, a                                          ; $50ff: $7f
	cp a                                             ; $5100: $bf
	ld a, a                                          ; $5101: $7f
	ccf                                              ; $5102: $3f
	ret                                              ; $5103: $c9


	rst $38                                          ; $5104: $ff
	sbc c                                            ; $5105: $99
	jp c, $9ade                                      ; $5106: $da $de $9a

	sbc [hl]                                         ; $5109: $9e
	sbc [hl]                                         ; $510a: $9e
	sbc $d7                                          ; $510b: $de $d7
	rst $38                                          ; $510d: $ff
	sub d                                            ; $510e: $92
	cp c                                             ; $510f: $b9
	db $db                                           ; $5110: $db
	rst $38                                          ; $5111: $ff
	cp a                                             ; $5112: $bf
	rst SubAFromDE                                          ; $5113: $df
	cp a                                             ; $5114: $bf
	ld e, a                                          ; $5115: $5f
	ccf                                              ; $5116: $3f
	and $e4                                          ; $5117: $e6 $e4
	ldh [$c0], a                                     ; $5119: $e0 $c0
	and b                                            ; $511b: $a0
	ld a, e                                          ; $511c: $7b
	cp $7e                                           ; $511d: $fe $7e
	jr jr_05f_50fd                                   ; $511f: $18 $dc

	add b                                            ; $5121: $80
	sbc [hl]                                         ; $5122: $9e
	xor d                                            ; $5123: $aa
	reti                                             ; $5124: $d9


	inc b                                            ; $5125: $04
	ld a, [$aa9e]                                    ; $5126: $fa $9e $aa
	jp hl                                            ; $5129: $e9


	ld h, a                                          ; $512a: $67
	reti                                             ; $512b: $d9


	ld h, a                                          ; $512c: $67
	ld hl, sp-$27                                    ; $512d: $f8 $d9
	sbc a                                            ; $512f: $9f
	rst SubAFromDE                                          ; $5130: $df
	add b                                            ; $5131: $80
	db $dd                                           ; $5132: $dd
	sub b                                            ; $5133: $90
	rst SubAFromDE                                          ; $5134: $df
	sbc b                                            ; $5135: $98
	ld [bc], a                                       ; $5136: $02
	ldh a, [$03]                                     ; $5137: $f0 $03
	ldh a, [rTAC]                                    ; $5139: $f0 $07
	ldh a, [$7f]                                     ; $513b: $f0 $7f
	ld [de], a                                       ; $513d: $12
	sub e                                            ; $513e: $93
	ld e, a                                          ; $513f: $5f
	cpl                                              ; $5140: $2f
	rla                                              ; $5141: $17
	dec bc                                           ; $5142: $0b
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	add b                                            ; $5145: $80
	ret nz                                           ; $5146: $c0

	ldh [$f0], a                                     ; $5147: $e0 $f0
	ld hl, sp-$04                                    ; $5149: $f8 $fc
	reti                                             ; $514b: $d9


	rst $38                                          ; $514c: $ff
	sbc l                                            ; $514d: $9d
	ld d, $24                                        ; $514e: $16 $24
	ei                                               ; $5150: $fb
	sub a                                            ; $5151: $97
	inc e                                            ; $5152: $1c
	ld [$080c], sp                                   ; $5153: $08 $0c $08
	ld a, [bc]                                       ; $5156: $0a
	ld [$0d08], sp                                   ; $5157: $08 $08 $0d
	reti                                             ; $515a: $d9


	rst $38                                          ; $515b: $ff
	sbc b                                            ; $515c: $98
	ccf                                              ; $515d: $3f
	ld e, e                                          ; $515e: $5b
	ei                                               ; $515f: $fb
	ld a, e                                          ; $5160: $7b
	dec sp                                           ; $5161: $3b
	dec sp                                           ; $5162: $3b
	ld e, e                                          ; $5163: $5b
	ld l, h                                          ; $5164: $6c
	ret nc                                           ; $5165: $d0

	sbc $ff                                          ; $5166: $de $ff
	sbc e                                            ; $5168: $9b
	inc h                                            ; $5169: $24
	ld a, [bc]                                       ; $516a: $0a
	add e                                            ; $516b: $83
	set 3, [hl]                                      ; $516c: $cb $de
	jp $c79b                                         ; $516e: $c3 $9b $c7


	rst $38                                          ; $5171: $ff
	db $fd                                           ; $5172: $fd
	ld a, h                                          ; $5173: $7c
	db $dd                                           ; $5174: $dd
	inc a                                            ; $5175: $3c
	sbc l                                            ; $5176: $9d
	jr c, @+$41                                      ; $5177: $38 $3f

	sbc $3e                                          ; $5179: $de $3e
	sbc e                                            ; $517b: $9b
	ld e, $5c                                        ; $517c: $1e $5c
	ld e, h                                          ; $517e: $5c
	ld e, l                                          ; $517f: $5d
	call c, $dfff                                    ; $5180: $dc $ff $df
	cp a                                             ; $5183: $bf
	sbc [hl]                                         ; $5184: $9e
	cp [hl]                                          ; $5185: $be
	db $db                                           ; $5186: $db
	rst $38                                          ; $5187: $ff
	sbc [hl]                                         ; $5188: $9e
	ld e, a                                          ; $5189: $5f
	ld h, c                                          ; $518a: $61
	ld [hl], b                                       ; $518b: $70
	ld [hl], b                                       ; $518c: $70
	ld d, d                                          ; $518d: $52
	ld [hl], e                                       ; $518e: $73
	db $fc                                           ; $518f: $fc
	db $db                                           ; $5190: $db
	rst $38                                          ; $5191: $ff
	sbc l                                            ; $5192: $9d
	ld e, [hl]                                       ; $5193: $5e
	cp [hl]                                          ; $5194: $be
	ld [hl], e                                       ; $5195: $73
	cp $9c                                           ; $5196: $fe $9c
	sbc [hl]                                         ; $5198: $9e
	and b                                            ; $5199: $a0
	ld b, b                                          ; $519a: $40
	ld [hl], e                                       ; $519b: $73
	cp $99                                           ; $519c: $fe $99
	ld h, b                                          ; $519e: $60
	add b                                            ; $519f: $80
	add b                                            ; $51a0: $80
	adc h                                            ; $51a1: $8c
	add h                                            ; $51a2: $84
	add b                                            ; $51a3: $80
	ld a, e                                          ; $51a4: $7b
	cp $7f                                           ; $51a5: $fe $7f
	add a                                            ; $51a7: $87
	db $db                                           ; $51a8: $db
	db $10                                           ; $51a9: $10
	rst $38                                          ; $51aa: $ff
	sbc $30                                          ; $51ab: $de $30
	sbc d                                            ; $51ad: $9a
	db $10                                           ; $51ae: $10
	jr nz, jr_05f_51c1                               ; $51af: $20 $10

	nop                                              ; $51b1: $00
	ld [hl], b                                       ; $51b2: $70
	db $db                                           ; $51b3: $db
	ld b, b                                          ; $51b4: $40
	sbc [hl]                                         ; $51b5: $9e
	nop                                              ; $51b6: $00
	jp c, Jump_05f_7fe1                              ; $51b7: $da $e1 $7f

	ld hl, sp-$25                                    ; $51ba: $f8 $db
	add c                                            ; $51bc: $81
	sbc e                                            ; $51bd: $9b
	nop                                              ; $51be: $00
	rst GetHLinHL                                          ; $51bf: $cf
	inc c                                            ; $51c0: $0c

jr_05f_51c1:
	inc c                                            ; $51c1: $0c
	db $dd                                           ; $51c2: $dd
	adc h                                            ; $51c3: $8c
	sbc [hl]                                         ; $51c4: $9e
	nop                                              ; $51c5: $00
	sbc $c7                                          ; $51c6: $de $c7
	db $dd                                           ; $51c8: $dd
	ld b, a                                          ; $51c9: $47
	reti                                             ; $51ca: $d9


	rra                                              ; $51cb: $1f
	sbc $18                                          ; $51cc: $de $18
	db $dd                                           ; $51ce: $dd
	inc e                                            ; $51cf: $1c
	sbc [hl]                                         ; $51d0: $9e
	ld e, $03                                        ; $51d1: $1e $03
	nop                                              ; $51d3: $00
	inc bc                                           ; $51d4: $03
	ldh a, [rIF]                                     ; $51d5: $f0 $0f
	ldh a, [$9a]                                     ; $51d7: $f0 $9a
	dec b                                            ; $51d9: $05
	inc bc                                           ; $51da: $03
	nop                                              ; $51db: $00
	ld [bc], a                                       ; $51dc: $02
	ld [bc], a                                       ; $51dd: $02
	cp $9a                                           ; $51de: $fe $9a
	cp $fc                                           ; $51e0: $fe $fc
	rst $38                                          ; $51e2: $ff
	db $fd                                           ; $51e3: $fd
	db $fd                                           ; $51e4: $fd
	ld [hl], e                                       ; $51e5: $73
	ldh [$7e], a                                     ; $51e6: $e0 $7e
	inc d                                            ; $51e8: $14
	ld l, [hl]                                       ; $51e9: $6e
	inc de                                           ; $51ea: $13
	sbc h                                            ; $51eb: $9c
	rst $38                                          ; $51ec: $ff
	ld d, l                                          ; $51ed: $55
	ld d, l                                          ; $51ee: $55
	cp $97                                           ; $51ef: $fe $97
	adc l                                            ; $51f1: $8d
	adc c                                            ; $51f2: $89
	add c                                            ; $51f3: $81
	add c                                            ; $51f4: $81
	add e                                            ; $51f5: $83
	add e                                            ; $51f6: $83
	add a                                            ; $51f7: $87
	and l                                            ; $51f8: $a5
	reti                                             ; $51f9: $d9


	ld a, a                                          ; $51fa: $7f
	reti                                             ; $51fb: $d9


	ld e, a                                          ; $51fc: $5f
	sbc $ff                                          ; $51fd: $de $ff
	db $dd                                           ; $51ff: $dd
	di                                               ; $5200: $f3
	sbc [hl]                                         ; $5201: $9e
	db $e3                                           ; $5202: $e3
	sbc $c7                                          ; $5203: $de $c7
	sbc d                                            ; $5205: $9a
	rst SubAFromHL                                          ; $5206: $d7
	rst JumpTable                                          ; $5207: $c7
	rst SubAFromHL                                          ; $5208: $d7
	rst SubAFromDE                                          ; $5209: $df
	sub a                                            ; $520a: $97
	jp c, $9438                                      ; $520b: $da $38 $94

	ld a, b                                          ; $520e: $78
	sbc l                                            ; $520f: $9d
	ld a, l                                          ; $5210: $7d
	db $fc                                           ; $5211: $fc
	cp b                                             ; $5212: $b8
	cp h                                             ; $5213: $bc
	cp c                                             ; $5214: $b9
	ld sp, hl                                        ; $5215: $f9
	ei                                               ; $5216: $fb
	ld a, [hl]                                       ; $5217: $7e
	cp [hl]                                          ; $5218: $be
	ld [hl], h                                       ; $5219: $74
	ret c                                            ; $521a: $d8

	sbc l                                            ; $521b: $9d
	ccf                                              ; $521c: $3f
	dec a                                            ; $521d: $3d
	call c, $9cdf                                    ; $521e: $dc $df $9c
	sbc a                                            ; $5221: $9f
	rst SubAFromDE                                          ; $5222: $df
	adc a                                            ; $5223: $8f
	ld d, [hl]                                       ; $5224: $56
	ret nz                                           ; $5225: $c0

	ld a, a                                          ; $5226: $7f
	sub h                                            ; $5227: $94
	ld a, e                                          ; $5228: $7b
	sub d                                            ; $5229: $92
	ld h, [hl]                                       ; $522a: $66
	ret nz                                           ; $522b: $c0

	sub b                                            ; $522c: $90
	adc [hl]                                         ; $522d: $8e
	ld b, b                                          ; $522e: $40
	adc d                                            ; $522f: $8a
	ld a, [bc]                                       ; $5230: $0a
	ld b, b                                          ; $5231: $40
	nop                                              ; $5232: $00
	ld b, b                                          ; $5233: $40
	and b                                            ; $5234: $a0
	ld [hl], b                                       ; $5235: $70
	cp [hl]                                          ; $5236: $be
	ld [hl], h                                       ; $5237: $74
	db $f4                                           ; $5238: $f4
	and b                                            ; $5239: $a0
	ldh [$a0], a                                     ; $523a: $e0 $a0
	halt                                             ; $523c: $76
	call nz, $fe77                                   ; $523d: $c4 $77 $fe
	reti                                             ; $5240: $d9


	db $10                                           ; $5241: $10
	ld a, [hl]                                       ; $5242: $7e
	add $7a                                          ; $5243: $c6 $7a
	call nz, $fe7b                                   ; $5245: $c4 $7b $fe
	reti                                             ; $5248: $d9


	ld b, b                                          ; $5249: $40
	reti                                             ; $524a: $d9


	pop hl                                           ; $524b: $e1
	reti                                             ; $524c: $d9


	add c                                            ; $524d: $81
	reti                                             ; $524e: $d9


	adc h                                            ; $524f: $8c
	reti                                             ; $5250: $d9


	ld b, a                                          ; $5251: $47
	rst SubAFromDE                                          ; $5252: $df
	ld e, $9c                                        ; $5253: $1e $9c
	rra                                              ; $5255: $1f
	ld e, $1e                                        ; $5256: $1e $1e
	sbc $18                                          ; $5258: $de $18
	reti                                             ; $525a: $d9


	rra                                              ; $525b: $1f
	call c, $9cff                                    ; $525c: $dc $ff $9c
	add b                                            ; $525f: $80
	rst $38                                          ; $5260: $ff
	ldh a, [$7b]                                     ; $5261: $f0 $7b
	jr nc, jr_05f_52d8                               ; $5263: $30 $73

	jr z, jr_05f_52d6                                ; $5265: $28 $6f

	inc bc                                           ; $5267: $03
	ld [hl], a                                       ; $5268: $77
	ld bc, $f003                                     ; $5269: $01 $03 $f0
	inc bc                                           ; $526c: $03
	ldh a, [rOCPS]                                   ; $526d: $f0 $6a
	ret c                                            ; $526f: $d8

	sbc l                                            ; $5270: $9d
	nop                                              ; $5271: $00
	rst SubAFromDE                                          ; $5272: $df
	sbc $d7                                          ; $5273: $de $d7
	ld [hl], a                                       ; $5275: $77
	and $9e                                          ; $5276: $e6 $9e
	rst SubAFromDE                                          ; $5278: $df
	sbc $18                                          ; $5279: $de $18
	ld [hl], a                                       ; $527b: $77
	ldh a, [$dd]                                     ; $527c: $f0 $dd
	cp a                                             ; $527e: $bf

Jump_05f_527f:
	ld [hl], a                                       ; $527f: $77
	ldh a, [$9e]                                     ; $5280: $f0 $9e
	cp a                                             ; $5282: $bf
	sbc $20                                          ; $5283: $de $20
	sub l                                            ; $5285: $95
	and l                                            ; $5286: $a5
	or c                                             ; $5287: $b1
	pop af                                           ; $5288: $f1
	ldh a, [c]                                       ; $5289: $f2
	ld a, [$fa7a]                                    ; $528a: $fa $7a $fa
	sbc d                                            ; $528d: $9a
	ld a, a                                          ; $528e: $7f
	ld a, a                                          ; $528f: $7f
	ld l, c                                          ; $5290: $69
	or [hl]                                          ; $5291: $b6
	rst SubAFromDE                                          ; $5292: $df
	ld e, a                                          ; $5293: $5f
	call c, $9ddf                                    ; $5294: $dc $df $9d
	db $e3                                           ; $5297: $e3
	rst SubAFromBC                                          ; $5298: $e7
	sbc $f3                                          ; $5299: $de $f3
	sbc $73                                          ; $529b: $de $73
	ld a, [hl]                                       ; $529d: $7e
	push hl                                          ; $529e: $e5
	adc [hl]                                         ; $529f: $8e
	rst SubAFromDE                                          ; $52a0: $df
	rst FarCall                                          ; $52a1: $f7
	rst $38                                          ; $52a2: $ff
	rst SubAFromDE                                          ; $52a3: $df
	rst SubAFromHL                                          ; $52a4: $d7
	rst FarCall                                          ; $52a5: $f7
	ld a, b                                          ; $52a6: $78
	jr c, @+$3a                                      ; $52a7: $38 $38

	jr jr_05f_52bb                                   ; $52a9: $18 $10

	jr nc, @+$3a                                     ; $52ab: $30 $38

	jr @-$03                                         ; $52ad: $18 $fb

	ld a, e                                          ; $52af: $7b
	ld a, e                                          ; $52b0: $7b
	call c, $92fc                                    ; $52b1: $dc $fc $92
	ld a, l                                          ; $52b4: $7d
	db $fd                                           ; $52b5: $fd
	db $fd                                           ; $52b6: $fd
	rst $38                                          ; $52b7: $ff
	db $db                                           ; $52b8: $db
	cp a                                             ; $52b9: $bf
	rst SubAFromDE                                          ; $52ba: $df

jr_05f_52bb:
	ccf                                              ; $52bb: $3f
	rst SubAFromDE                                          ; $52bc: $df
	rst GetHLinHL                                          ; $52bd: $cf
	rst $38                                          ; $52be: $ff
	adc a                                            ; $52bf: $8f
	cp a                                             ; $52c0: $bf
	sbc $8f                                          ; $52c1: $de $8f
	reti                                             ; $52c3: $d9


	rst $38                                          ; $52c4: $ff
	sbc l                                            ; $52c5: $9d
	ld a, [$79fd]                                    ; $52c6: $fa $fd $79
	add h                                            ; $52c9: $84
	sbc [hl]                                         ; $52ca: $9e
	ld sp, hl                                        ; $52cb: $f9
	ld e, l                                          ; $52cc: $5d
	ld a, a                                          ; $52cd: $7f
	sbc l                                            ; $52ce: $9d
	nop                                              ; $52cf: $00
	ld e, [hl]                                       ; $52d0: $5e
	ld a, e                                          ; $52d1: $7b
	cp $7a                                           ; $52d2: $fe $7a
	ret nz                                           ; $52d4: $c0

	sbc [hl]                                         ; $52d5: $9e

jr_05f_52d6:
	ldh [$da], a                                     ; $52d6: $e0 $da

jr_05f_52d8:
	cp $46                                           ; $52d8: $fe $46
	ret nz                                           ; $52da: $c0

	ld a, [hl]                                       ; $52db: $7e
	add $76                                          ; $52dc: $c6 $76
	cp [hl]                                          ; $52de: $be
	ld a, a                                          ; $52df: $7f
	cp $02                                           ; $52e0: $fe $02
	ret nz                                           ; $52e2: $c0

	jp c, $9e47                                      ; $52e3: $da $47 $9e

	jr @-$24                                         ; $52e6: $18 $da

	add hl, de                                       ; $52e8: $19
	reti                                             ; $52e9: $d9


	rra                                              ; $52ea: $1f
	ld a, a                                          ; $52eb: $7f
	sub a                                            ; $52ec: $97
	sbc c                                            ; $52ed: $99
	nop                                              ; $52ee: $00
	ld a, a                                          ; $52ef: $7f
	ld a, c                                          ; $52f0: $79
	ld h, c                                          ; $52f1: $61
	ld b, c                                          ; $52f2: $41
	ld a, a                                          ; $52f3: $7f
	ld a, e                                          ; $52f4: $7b
	ld sp, $fedc                                     ; $52f5: $31 $dc $fe
	ld a, e                                          ; $52f8: $7b
	ld hl, $fddd                                     ; $52f9: $21 $dd $fd
	sbc [hl]                                         ; $52fc: $9e
	ld bc, $f07b                                     ; $52fd: $01 $7b $f0
	sbc [hl]                                         ; $5300: $9e
	db $fd                                           ; $5301: $fd
	sbc $81                                          ; $5302: $de $81
	ld a, l                                          ; $5304: $7d
	call $f07f                                       ; $5305: $cd $7f $f0
	db $dd                                           ; $5308: $dd
	ei                                               ; $5309: $fb
	ld a, l                                          ; $530a: $7d
	cp l                                             ; $530b: $bd
	rst SubAFromDE                                          ; $530c: $df
	rst $38                                          ; $530d: $ff
	ld a, a                                          ; $530e: $7f
	ei                                               ; $530f: $fb
	rst SubAFromDE                                          ; $5310: $df
	ld [bc], a                                       ; $5311: $02
	sbc [hl]                                         ; $5312: $9e
	ei                                               ; $5313: $fb
	ld a, e                                          ; $5314: $7b
	ldh a, [$de]                                     ; $5315: $f0 $de
	rst FarCall                                          ; $5317: $f7
	sbc l                                            ; $5318: $9d
	and h                                            ; $5319: $a4
	inc b                                            ; $531a: $04
	ld a, e                                          ; $531b: $7b
	ldh a, [$9a]                                     ; $531c: $f0 $9a
	rst FarCall                                          ; $531e: $f7
	inc b                                            ; $531f: $04
	inc b                                            ; $5320: $04
	ld d, a                                          ; $5321: $57
	rst FarCall                                          ; $5322: $f7
	ld a, e                                          ; $5323: $7b
	ldh a, [$9a]                                     ; $5324: $f0 $9a
	rst AddAOntoHL                                          ; $5326: $ef
	xor [hl]                                         ; $5327: $ae
	ld c, l                                          ; $5328: $4d
	ld a, [bc]                                       ; $5329: $0a
	ld [$f07b], sp                                   ; $532a: $08 $7b $f0
	sbc d                                            ; $532d: $9a
	rst AddAOntoHL                                          ; $532e: $ef
	ld c, c                                          ; $532f: $49
	xor d                                            ; $5330: $aa
	db $ed                                           ; $5331: $ed
	rst AddAOntoHL                                          ; $5332: $ef
	halt                                             ; $5333: $76
	pop de                                           ; $5334: $d1
	sbc e                                            ; $5335: $9b
	sbc d                                            ; $5336: $9a
	ld d, h                                          ; $5337: $54
	jr jr_05f_534a                                   ; $5338: $18 $10

	halt                                             ; $533a: $76
	pop de                                           ; $533b: $d1
	sbc c                                            ; $533c: $99
	ld d, l                                          ; $533d: $55
	sbc e                                            ; $533e: $9b
	rst SubAFromHL                                          ; $533f: $d7
	rst SubAFromDE                                          ; $5340: $df
	stop                                             ; $5341: $10 $00
	ld a, e                                          ; $5343: $7b
	db $fd                                           ; $5344: $fd
	sub b                                            ; $5345: $90
	ld a, a                                          ; $5346: $7f
	add b                                            ; $5347: $80
	ret nz                                           ; $5348: $c0

	rst SubAFromDE                                          ; $5349: $df

jr_05f_534a:
	nop                                              ; $534a: $00
	rst SubAFromDE                                          ; $534b: $df
	rst SubAFromDE                                          ; $534c: $df
	nop                                              ; $534d: $00
	add b                                            ; $534e: $80
	nop                                              ; $534f: $00
	nop                                              ; $5350: $00
	jr nz, jr_05f_5353                               ; $5351: $20 $00

jr_05f_5353:
	cp a                                             ; $5353: $bf
	jr nz, jr_05f_53cc                               ; $5354: $20 $76

	and c                                            ; $5356: $a1
	ld a, [hl]                                       ; $5357: $7e
	cp a                                             ; $5358: $bf
	halt                                             ; $5359: $76
	cp h                                             ; $535a: $bc
	rst $38                                          ; $535b: $ff
	sub [hl]                                         ; $535c: $96
	sbc e                                            ; $535d: $9b
	ld e, e                                          ; $535e: $5b
	ld e, e                                          ; $535f: $5b
	ld a, e                                          ; $5360: $7b
	ld a, e                                          ; $5361: $7b
	ei                                               ; $5362: $fb
	rst $38                                          ; $5363: $ff
	rst $38                                          ; $5364: $ff
	xor $6d                                          ; $5365: $ee $6d
	add $7f                                          ; $5367: $c6 $7f
	set 3, [hl]                                      ; $5369: $cb $de
	rst SubAFromDE                                          ; $536b: $df
	db $dd                                           ; $536c: $dd
	rst $38                                          ; $536d: $ff
	sbc $73                                          ; $536e: $de $73
	ld a, [hl]                                       ; $5370: $7e
	pop bc                                           ; $5371: $c1
	sub a                                            ; $5372: $97
	ldh [$60], a                                     ; $5373: $e0 $60
	pop hl                                           ; $5375: $e1
	rst FarCall                                          ; $5376: $f7
	rst SubAFromDE                                          ; $5377: $df
	rst SubAFromDE                                          ; $5378: $df
	rst AddAOntoHL                                          ; $5379: $ef
	rst AddAOntoHL                                          ; $537a: $ef
	sbc $ff                                          ; $537b: $de $ff
	sbc [hl]                                         ; $537d: $9e
	jr jr_05f_53f8                                   ; $537e: $18 $78

	sbc d                                            ; $5380: $9a
	ld a, b                                          ; $5381: $78
	sub e                                            ; $5382: $93
	sub [hl]                                         ; $5383: $96
	nop                                              ; $5384: $00
	call c, $ecfc                                    ; $5385: $dc $fc $ec
	db $fc                                           ; $5388: $fc
	call c, sCurrOffsetIntoScript                                    ; $5389: $dc $bc $bd
	cp a                                             ; $538c: $bf
	sbc $3f                                          ; $538d: $de $3f
	rst SubAFromDE                                          ; $538f: $df
	ld l, a                                          ; $5390: $6f
	sbc $4f                                          ; $5391: $de $4f
	rst SubAFromDE                                          ; $5393: $df
	rst GetHLinHL                                          ; $5394: $cf
	sbc d                                            ; $5395: $9a
	adc a                                            ; $5396: $8f
	xor a                                            ; $5397: $af
	xor a                                            ; $5398: $af
	cp a                                             ; $5399: $bf
	sbc a                                            ; $539a: $9f
	ld d, l                                          ; $539b: $55
	add b                                            ; $539c: $80
	halt                                             ; $539d: $76
	call nz, $a37e                                   ; $539e: $c4 $7e $a3
	ld h, [hl]                                       ; $53a1: $66
	ret nz                                           ; $53a2: $c0

	sbc b                                            ; $53a3: $98
	ld e, $00                                        ; $53a4: $1e $00
	nop                                              ; $53a6: $00
	add b                                            ; $53a7: $80
	sbc [hl]                                         ; $53a8: $9e
	add b                                            ; $53a9: $80
	add b                                            ; $53aa: $80
	halt                                             ; $53ab: $76
	ret nz                                           ; $53ac: $c0

	db $dd                                           ; $53ad: $dd
	ldh [$de], a                                     ; $53ae: $e0 $de
	add h                                            ; $53b0: $84
	call c, $d98c                                    ; $53b1: $dc $8c $d9
	db $10                                           ; $53b4: $10
	ld a, a                                          ; $53b5: $7f
	xor d                                            ; $53b6: $aa
	db $db                                           ; $53b7: $db
	jr nc, @+$04                                     ; $53b8: $30 $02

	ret nz                                           ; $53ba: $c0

	jp c, $dd47                                      ; $53bb: $da $47 $dd

	add hl, de                                       ; $53be: $19
	ld a, l                                          ; $53bf: $7d
	add e                                            ; $53c0: $83
	ld e, l                                          ; $53c1: $5d
	add b                                            ; $53c2: $80
	sbc $7f                                          ; $53c3: $de $7f
	sbc [hl]                                         ; $53c5: $9e
	ld [hl], c                                       ; $53c6: $71
	ld a, c                                          ; $53c7: $79
	ret nc                                           ; $53c8: $d0

	ld a, l                                          ; $53c9: $7d
	ld a, l                                          ; $53ca: $7d
	ld l, [hl]                                       ; $53cb: $6e

jr_05f_53cc:
	call nz, Call_05f_7aff                           ; $53cc: $c4 $ff $7a
	jp z, $f86f                                      ; $53cf: $ca $6f $f8

	ld [hl], b                                       ; $53d2: $70
	sub c                                            ; $53d3: $91
	rst $38                                          ; $53d4: $ff
	ld a, d                                          ; $53d5: $7a
	jp z, $f073                                      ; $53d6: $ca $73 $f0

	sbc $fb                                          ; $53d9: $de $fb
	db $fc                                           ; $53db: $fc
	ld a, d                                          ; $53dc: $7a
	jp z, $f073                                      ; $53dd: $ca $73 $f0

	sbc $f7                                          ; $53e0: $de $f7
	db $fc                                           ; $53e2: $fc
	sbc l                                            ; $53e3: $9d
	rst AddAOntoHL                                          ; $53e4: $ef
	ld [$c47a], sp                                   ; $53e5: $08 $7a $c4
	ld [hl], a                                       ; $53e8: $77
	ld hl, sp-$21                                    ; $53e9: $f8 $df
	rst AddAOntoHL                                          ; $53eb: $ef
	db $fc                                           ; $53ec: $fc
	ld a, [hl]                                       ; $53ed: $7e
	pop de                                           ; $53ee: $d1
	ld a, d                                          ; $53ef: $7a
	call nz, $f877                                   ; $53f0: $c4 $77 $f8
	ld a, d                                          ; $53f3: $7a
	ret nc                                           ; $53f4: $d0

	cp $9d                                           ; $53f5: $fe $9d
	ret nz                                           ; $53f7: $c0

jr_05f_53f8:
	ldh [$7b], a                                     ; $53f8: $e0 $7b
	and d                                            ; $53fa: $a2
	rst SubAFromDE                                          ; $53fb: $df
	rst FarCall                                          ; $53fc: $f7
	sbc [hl]                                         ; $53fd: $9e
	di                                               ; $53fe: $f3
	ld [hl], c                                       ; $53ff: $71
	add b                                            ; $5400: $80
	rst SubAFromDE                                          ; $5401: $df
	ret c                                            ; $5402: $d8

	sbc [hl]                                         ; $5403: $9e
	call c, $8049                                    ; $5404: $dc $49 $80
	sub a                                            ; $5407: $97
	ld hl, $5bfd                                     ; $5408: $21 $fd $5b
	sbc l                                            ; $540b: $9d
	ld e, l                                          ; $540c: $5d
	rst SubAFromDE                                          ; $540d: $df
	db $dd                                           ; $540e: $dd
	rst SubAFromDE                                          ; $540f: $df
	ld a, e                                          ; $5410: $7b
	db $dd                                           ; $5411: $dd
	sbc [hl]                                         ; $5412: $9e
	rst FarCall                                          ; $5413: $f7
	sbc $e6                                          ; $5414: $de $e6
	sbc d                                            ; $5416: $9a
	db $e4                                           ; $5417: $e4
	ld l, h                                          ; $5418: $6c
	ld e, a                                          ; $5419: $5f
	cp a                                             ; $541a: $bf
	ld a, a                                          ; $541b: $7f
	sbc $bf                                          ; $541c: $de $bf
	rst SubAFromDE                                          ; $541e: $df
	cp $dc                                           ; $541f: $fe $dc
	pop hl                                           ; $5421: $e1
	sub h                                            ; $5422: $94
	pop bc                                           ; $5423: $c1
	jp Jump_05f_7fc3                                 ; $5424: $c3 $c3 $7f


	ld e, a                                          ; $5427: $5f
	ld c, a                                          ; $5428: $4f
	ld c, a                                          ; $5429: $4f
	jp $c343                                         ; $542a: $c3 $43 $c3


	jp $80d9                                         ; $542d: $c3 $d9 $80


	sub a                                            ; $5430: $97
	rst AddAOntoHL                                          ; $5431: $ef
	ei                                               ; $5432: $fb
	ei                                               ; $5433: $fb
	cp e                                             ; $5434: $bb
	cp [hl]                                          ; $5435: $be
	cp a                                             ; $5436: $bf
	xor [hl]                                         ; $5437: $ae
	xor [hl]                                         ; $5438: $ae
	db $dd                                           ; $5439: $dd
	dec e                                            ; $543a: $1d
	db $dd                                           ; $543b: $dd
	add hl, de                                       ; $543c: $19
	sbc $af                                          ; $543d: $de $af
	sbc e                                            ; $543f: $9b
	rst AddAOntoHL                                          ; $5440: $ef
	cp a                                             ; $5441: $bf
	cp a                                             ; $5442: $bf
	ccf                                              ; $5443: $3f
	ret c                                            ; $5444: $d8

	rst $38                                          ; $5445: $ff
	ld h, b                                          ; $5446: $60
	ld b, a                                          ; $5447: $47
	jp c, Jump_05f_7aff                              ; $5448: $da $ff $7a

	call nz, $fe7f                                   ; $544b: $c4 $7f $fe
	sbc $c0                                          ; $544e: $de $c0
	ld h, l                                          ; $5450: $65
	add b                                            ; $5451: $80
	reti                                             ; $5452: $d9


	adc h                                            ; $5453: $8c
	ld h, d                                          ; $5454: $62
	ret nz                                           ; $5455: $c0

	jp c, $0230                                      ; $5456: $da $30 $02

	ret nz                                           ; $5459: $c0

	add hl, hl                                       ; $545a: $29
	add b                                            ; $545b: $80
	ld a, d                                          ; $545c: $7a
	ld e, [hl]                                       ; $545d: $5e
	dec [hl]                                         ; $545e: $35
	add b                                            ; $545f: $80
	ld a, d                                          ; $5460: $7a
	cp h                                             ; $5461: $bc
	ld e, c                                          ; $5462: $59
	add b                                            ; $5463: $80
	sbc l                                            ; $5464: $9d
	di                                               ; $5465: $f3
	and d                                            ; $5466: $a2
	ld l, l                                          ; $5467: $6d
	add b                                            ; $5468: $80
	sbc l                                            ; $5469: $9d
	ld a, [bc]                                       ; $546a: $0a
	ld e, e                                          ; $546b: $5b
	ld [hl], c                                       ; $546c: $71
	add b                                            ; $546d: $80
	sbc l                                            ; $546e: $9d
	push hl                                          ; $546f: $e5
	ld d, h                                          ; $5470: $54
	halt                                             ; $5471: $76
	cp h                                             ; $5472: $bc
	ld a, a                                          ; $5473: $7f
	dec c                                            ; $5474: $0d
	sbc l                                            ; $5475: $9d
	ld d, $a7                                        ; $5476: $16 $a7
	ld a, d                                          ; $5478: $7a
	cp h                                             ; $5479: $bc
	ld a, c                                          ; $547a: $79
	add b                                            ; $547b: $80
	sbc [hl]                                         ; $547c: $9e
	ld c, l                                          ; $547d: $4d
	sbc $08                                          ; $547e: $de $08
	ld [hl], l                                       ; $5480: $75
	add b                                            ; $5481: $80
	sbc [hl]                                         ; $5482: $9e
	xor d                                            ; $5483: $aa
	halt                                             ; $5484: $76
	cp h                                             ; $5485: $bc
	ld a, c                                          ; $5486: $79
	add b                                            ; $5487: $80
	sbc [hl]                                         ; $5488: $9e
	ld d, b                                          ; $5489: $50
	ld [hl], h                                       ; $548a: $74
	add sp, $7a                                      ; $548b: $e8 $7a
	pop de                                           ; $548d: $d1
	ld a, b                                          ; $548e: $78
	add h                                            ; $548f: $84
	sbc e                                            ; $5490: $9b
	rst SubAFromDE                                          ; $5491: $df
	di                                               ; $5492: $f3
	pop af                                           ; $5493: $f1
	pop af                                           ; $5494: $f1
	ld [hl], c                                       ; $5495: $71
	ld sp, hl                                        ; $5496: $f9
	sbc h                                            ; $5497: $9c
	call c, $dede                                    ; $5498: $dc $de $de
	ld [hl], l                                       ; $549b: $75
	ld a, [hl]                                       ; $549c: $7e
	ld a, [hl]                                       ; $549d: $7e
	call z, $bfdf                                    ; $549e: $cc $df $bf
	sbc d                                            ; $54a1: $9a
	ld bc, $a1bf                                     ; $54a2: $01 $bf $a1
	add c                                            ; $54a5: $81
	ld a, a                                          ; $54a6: $7f
	sbc $21                                          ; $54a7: $de $21
	ld a, a                                          ; $54a9: $7f
	ld hl, sp+$7f                                    ; $54aa: $f8 $7f
	push af                                          ; $54ac: $f5
	sbc [hl]                                         ; $54ad: $9e
	add c                                            ; $54ae: $81
	sbc $ff                                          ; $54af: $de $ff
	ld a, [hl]                                       ; $54b1: $7e
	adc $94                                          ; $54b2: $ce $94
	rst $38                                          ; $54b4: $ff
	ld a, a                                          ; $54b5: $7f
	rst $38                                          ; $54b6: $ff
	call z, $ccec                                    ; $54b7: $cc $ec $cc
	call z, $d0d8                                    ; $54ba: $cc $d8 $d0
	ret nc                                           ; $54bd: $d0

	pop de                                           ; $54be: $d1
	call c, $defe                                    ; $54bf: $dc $fe $de
	db $fd                                           ; $54c2: $fd
	rst SubAFromDE                                          ; $54c3: $df
	jp $83df                                         ; $54c4: $c3 $df $83


	sub c                                            ; $54c7: $91
	ld bc, $8202                                     ; $54c8: $01 $02 $82
	add [hl]                                         ; $54cb: $86
	add c                                            ; $54cc: $81
	add c                                            ; $54cd: $81
	sub b                                            ; $54ce: $90
	sub d                                            ; $54cf: $92
	sub d                                            ; $54d0: $92
	sub e                                            ; $54d1: $93
	sub e                                            ; $54d2: $93
	add e                                            ; $54d3: $83
	add b                                            ; $54d4: $80
	add b                                            ; $54d5: $80
	sbc $81                                          ; $54d6: $de $81
	sbc $01                                          ; $54d8: $de $01
	sbc e                                            ; $54da: $9b
	xor h                                            ; $54db: $ac
	add l                                            ; $54dc: $85
	push bc                                          ; $54dd: $c5
	db $dd                                           ; $54de: $dd
	db $dd                                           ; $54df: $dd
	db $fd                                           ; $54e0: $fd
	sbc e                                            ; $54e1: $9b
	dec de                                           ; $54e2: $1b
	dec sp                                           ; $54e3: $3b
	dec sp                                           ; $54e4: $3b
	inc hl                                           ; $54e5: $23
	db $dd                                           ; $54e6: $dd
	inc bc                                           ; $54e7: $03
	sbc l                                            ; $54e8: $9d
	ld a, a                                          ; $54e9: $7f
	rst SubAFromDE                                          ; $54ea: $df
	ld a, e                                          ; $54eb: $7b
	dec a                                            ; $54ec: $3d
	ld a, a                                          ; $54ed: $7f
	sub [hl]                                         ; $54ee: $96
	sbc [hl]                                         ; $54ef: $9e
	add a                                            ; $54f0: $87
	ret                                              ; $54f1: $c9


	rst $38                                          ; $54f2: $ff
	sbc c                                            ; $54f3: $99
	ret nz                                           ; $54f4: $c0

	sbc $c0                                          ; $54f5: $de $c0
	ret nz                                           ; $54f7: $c0

	and b                                            ; $54f8: $a0
	cp [hl]                                          ; $54f9: $be
	ld e, l                                          ; $54fa: $5d
	add b                                            ; $54fb: $80
	ld [bc], a                                       ; $54fc: $02
	ret nz                                           ; $54fd: $c0

	ld c, d                                          ; $54fe: $4a
	ret nz                                           ; $54ff: $c0

	sbc l                                            ; $5500: $9d
	adc l                                            ; $5501: $8d
	adc a                                            ; $5502: $8f
	ld l, a                                          ; $5503: $6f
	cp $9d                                           ; $5504: $fe $9d
	ld b, [hl]                                       ; $5506: $46
	ld b, h                                          ; $5507: $44
	ld a, e                                          ; $5508: $7b
	cp $de                                           ; $5509: $fe $de
	ld b, [hl]                                       ; $550b: $46
	add hl, hl                                       ; $550c: $29
	add b                                            ; $550d: $80
	sbc [hl]                                         ; $550e: $9e
	db $fd                                           ; $550f: $fd
	ld l, c                                          ; $5510: $69
	add b                                            ; $5511: $80
	ld a, [hl]                                       ; $5512: $7e
	ret c                                            ; $5513: $d8

	ld sp, $7a80                                     ; $5514: $31 $80 $7a
	ldh a, [$71]                                     ; $5517: $f0 $71
	add b                                            ; $5519: $80
	sbc l                                            ; $551a: $9d
	ld [$2918], sp                                   ; $551b: $08 $18 $29
	add b                                            ; $551e: $80
	ld a, h                                          ; $551f: $7c
	ld h, [hl]                                       ; $5520: $66
	ld [hl], c                                       ; $5521: $71
	add b                                            ; $5522: $80
	rst SubAFromDE                                          ; $5523: $df
	ld b, b                                          ; $5524: $40
	ld b, l                                          ; $5525: $45
	add b                                            ; $5526: $80
	ld [hl], d                                       ; $5527: $72
	jp $fc77                                         ; $5528: $c3 $77 $fc


	ld [hl], c                                       ; $552b: $71
	ld a, a                                          ; $552c: $7f
	rst SubAFromDE                                          ; $552d: $df
	rst SubAFromDE                                          ; $552e: $df
	sub h                                            ; $552f: $94
	pop bc                                           ; $5530: $c1
	db $e3                                           ; $5531: $e3
	db $e3                                           ; $5532: $e3
	rst $38                                          ; $5533: $ff
	inc bc                                           ; $5534: $03
	rst $38                                          ; $5535: $ff
	ei                                               ; $5536: $fb
	ei                                               ; $5537: $fb
	ld bc, $0303                                     ; $5538: $01 $03 $03
	ld a, d                                          ; $553b: $7a
	add $df                                          ; $553c: $c6 $df
	cp a                                             ; $553e: $bf
	call c, $937f                                    ; $553f: $dc $7f $93
	rst $38                                          ; $5542: $ff
	sbc a                                            ; $5543: $9f
	sbc a                                            ; $5544: $9f
	pop af                                           ; $5545: $f1
	pop de                                           ; $5546: $d1
	pop bc                                           ; $5547: $c1
	add c                                            ; $5548: $81
	add c                                            ; $5549: $81
	rst SubAFromBC                                          ; $554a: $e7
	rst AddAOntoHL                                          ; $554b: $ef
	rst AddAOntoHL                                          ; $554c: $ef
	db $fd                                           ; $554d: $fd
	db $dd                                           ; $554e: $dd
	db $fc                                           ; $554f: $fc
	sbc d                                            ; $5550: $9a
	ld hl, sp-$07                                    ; $5551: $f8 $f9
	ld sp, hl                                        ; $5553: $f9
	add d                                            ; $5554: $82
	add a                                            ; $5555: $87
	db $db                                           ; $5556: $db
	rlca                                             ; $5557: $07
	add b                                            ; $5558: $80
	adc [hl]                                         ; $5559: $8e

jr_05f_555a:
	ld a, [bc]                                       ; $555a: $0a
	dec bc                                           ; $555b: $0b
	add hl, bc                                       ; $555c: $09
	ld c, $0a                                        ; $555d: $0e $0a
	ld l, e                                          ; $555f: $6b
	ei                                               ; $5560: $fb
	ld bc, $0405                                     ; $5561: $01 $05 $04
	ld b, $07                                        ; $5564: $06 $07
	rlca                                             ; $5566: $07
	ld b, $06                                        ; $5567: $06 $06
	db $fd                                           ; $5569: $fd
	ld a, l                                          ; $556a: $7d
	ld [hl], e                                       ; $556b: $73
	ld a, e                                          ; $556c: $7b
	ld l, a                                          ; $556d: $6f
	cpl                                              ; $556e: $2f
	xor a                                            ; $556f: $af
	adc a                                            ; $5570: $8f
	inc bc                                           ; $5571: $03
	inc bc                                           ; $5572: $03
	dec c                                            ; $5573: $0d
	dec c                                            ; $5574: $0d
	add hl, de                                       ; $5575: $19
	ld e, b                                          ; $5576: $58
	ld e, b                                          ; $5577: $58
	sbc [hl]                                         ; $5578: $9e
	ld hl, sp-$22                                    ; $5579: $f8 $de
	rst FarCall                                          ; $557b: $f7
	sbc d                                            ; $557c: $9a
	rst SubAFromBC                                          ; $557d: $e7
	xor a                                            ; $557e: $af
	or a                                             ; $557f: $b7
	adc a                                            ; $5580: $8f
	sbc a                                            ; $5581: $9f
	push de                                          ; $5582: $d5
	rst $38                                          ; $5583: $ff
	sbc $fd                                          ; $5584: $de $fd
	ld [hl], h                                       ; $5586: $74
	inc a                                            ; $5587: $3c
	ld l, l                                          ; $5588: $6d
	add b                                            ; $5589: $80
	sbc $80                                          ; $558a: $de $80
	sbc e                                            ; $558c: $9b
	rst GetHLinHL                                          ; $558d: $cf
	ld [$cad5], a                                    ; $558e: $ea $d5 $ca
	db $dd                                           ; $5591: $dd
	ldh [$9e], a                                     ; $5592: $e0 $9e
	ldh a, [$de]                                     ; $5594: $f0 $de
	rst $38                                          ; $5596: $ff
	rst SubAFromDE                                          ; $5597: $df
	adc h                                            ; $5598: $8c
	ld a, e                                          ; $5599: $7b
	ld [hl], a                                       ; $559a: $77
	sbc h                                            ; $559b: $9c
	xor d                                            ; $559c: $aa
	ld d, l                                          ; $559d: $55
	xor d                                            ; $559e: $aa
	ld a, e                                          ; $559f: $7b
	ld e, d                                          ; $55a0: $5a
	ld [hl], e                                       ; $55a1: $73
	ld h, e                                          ; $55a2: $63
	rst SubAFromDE                                          ; $55a3: $df
	jr nc, jr_05f_5619                               ; $55a4: $30 $73

	ldh a, [$9e]                                     ; $55a6: $f0 $9e
	and b                                            ; $55a8: $a0
	ld a, e                                          ; $55a9: $7b
	ld b, [hl]                                       ; $55aa: $46
	ld [hl], e                                       ; $55ab: $73
	ldh a, [$df]                                     ; $55ac: $f0 $df
	ld h, b                                          ; $55ae: $60
	ld [hl], e                                       ; $55af: $73
	ldh a, [$9e]                                     ; $55b0: $f0 $9e
	nop                                              ; $55b2: $00
	ld a, d                                          ; $55b3: $7a
	ld a, [$f073]                                    ; $55b4: $fa $73 $f0
	sbc l                                            ; $55b7: $9d
	adc e                                            ; $55b8: $8b
	adc c                                            ; $55b9: $89
	ld l, a                                          ; $55ba: $6f
	ret nc                                           ; $55bb: $d0

	ld a, [hl]                                       ; $55bc: $7e
	jp $f06f                                         ; $55bd: $c3 $6f $f0


	sbc $07                                          ; $55c0: $de $07
	sbc d                                            ; $55c2: $9a
	add a                                            ; $55c3: $87
	ld b, a                                          ; $55c4: $47
	and a                                            ; $55c5: $a7
	ld b, a                                          ; $55c6: $47
	and a                                            ; $55c7: $a7
	db $dd                                           ; $55c8: $dd
	jr jr_05f_555a                                   ; $55c9: $18 $8f

	sbc c                                            ; $55cb: $99
	reti                                             ; $55cc: $d9


	ld sp, hl                                        ; $55cd: $f9
	ld sp, hl                                        ; $55ce: $f9
	db $fd                                           ; $55cf: $fd
	db $fc                                           ; $55d0: $fc
	ld hl, sp-$08                                    ; $55d1: $f8 $f8
	ldh a, [rSB]                                     ; $55d3: $f0 $01
	ld [hl], b                                       ; $55d5: $70
	ld [hl], c                                       ; $55d6: $71
	ld [bc], a                                       ; $55d7: $02
	inc bc                                           ; $55d8: $03
	rlca                                             ; $55d9: $07
	rlca                                             ; $55da: $07
	ld [hl], e                                       ; $55db: $73
	inc d                                            ; $55dc: $14
	sbc b                                            ; $55dd: $98
	nop                                              ; $55de: $00

Jump_05f_55df:
	inc c                                            ; $55df: $0c
	inc b                                            ; $55e0: $04
	rst $38                                          ; $55e1: $ff
	ld b, h                                          ; $55e2: $44
	or a                                             ; $55e3: $b7
	ld l, a                                          ; $55e4: $6f
	cp $92                                           ; $55e5: $fe $92
	adc b                                            ; $55e7: $88
	rst $38                                          ; $55e8: $ff
	rst $38                                          ; $55e9: $ff
	call $149d                                       ; $55ea: $cd $9d $14
	inc b                                            ; $55ed: $04
	inc l                                            ; $55ee: $2c
	inc l                                            ; $55ef: $2c
	push de                                          ; $55f0: $d5
	dec bc                                           ; $55f1: $0b
	inc d                                            ; $55f2: $14
	rrca                                             ; $55f3: $0f
	db $dd                                           ; $55f4: $dd
	jr @-$60                                         ; $55f5: $18 $9e

	cp a                                             ; $55f7: $bf
	ld a, c                                          ; $55f8: $79
	ld e, h                                          ; $55f9: $5c
	sub e                                            ; $55fa: $93
	jr nz, jr_05f_562d                               ; $55fb: $20 $30

	ld de, $fe11                                     ; $55fd: $11 $11 $fe
	nop                                              ; $5600: $00
	db $f4                                           ; $5601: $f4
	ld h, l                                          ; $5602: $65
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	jr nz, jr_05f_5627                               ; $5605: $20 $20

	ld a, c                                          ; $5607: $79
	ld a, l                                          ; $5608: $7d
	sub b                                            ; $5609: $90
	or $84                                           ; $560a: $f6 $84
	ld h, $a2                                        ; $560c: $26 $a2
	or b                                             ; $560e: $b0
	rlca                                             ; $560f: $07
	inc b                                            ; $5610: $04
	ld b, a                                          ; $5611: $47
	and a                                            ; $5612: $a7
	ld b, b                                          ; $5613: $40
	ret nc                                           ; $5614: $d0

	ld [hl], h                                       ; $5615: $74
	ld l, [hl]                                       ; $5616: $6e
	ei                                               ; $5617: $fb
	ei                                               ; $5618: $fb

jr_05f_5619:
	ld [hl], d                                       ; $5619: $72
	ret c                                            ; $561a: $d8

	sub d                                            ; $561b: $92
	nop                                              ; $561c: $00
	inc b                                            ; $561d: $04
	ld [$0028], sp                                   ; $561e: $08 $28 $00
	nop                                              ; $5621: $00
	ld bc, $0301                                     ; $5622: $01 $01 $03
	ei                                               ; $5625: $fb
	rst FarCall                                          ; $5626: $f7

jr_05f_5627:
	rst SubAFromHL                                          ; $5627: $d7
	rst SubAFromDE                                          ; $5628: $df
	dec de                                           ; $5629: $1b
	nop                                              ; $562a: $00
	sbc [hl]                                         ; $562b: $9e
	inc sp                                           ; $562c: $33

jr_05f_562d:
	sbc $44                                          ; $562d: $de $44
	jp c, $1f33                                      ; $562f: $da $33 $1f

	or $de                                           ; $5632: $f6 $de
	ld [hl], a                                       ; $5634: $77
	ld [hl], e                                       ; $5635: $73
	or $9d                                           ; $5636: $f6 $9d
	scf                                              ; $5638: $37
	ld [hl], e                                       ; $5639: $73
	scf                                              ; $563a: $37
	or $67                                           ; $563b: $f6 $67
	ret c                                            ; $563d: $d8

	rrca                                             ; $563e: $0f
	or $dd                                           ; $563f: $f6 $dd
	inc sp                                           ; $5641: $33
	sbc [hl]                                         ; $5642: $9e
	ld [hl], $b1                                     ; $5643: $36 $b1
	inc b                                            ; $5645: $04
	sbc l                                            ; $5646: $9d
	rst $38                                          ; $5647: $ff
	nop                                              ; $5648: $00
	ld [hl], a                                       ; $5649: $77
	cp $99                                           ; $564a: $fe $99
	ld d, l                                          ; $564c: $55
	xor d                                            ; $564d: $aa
	xor d                                            ; $564e: $aa
	ld d, l                                          ; $564f: $55
	ld d, l                                          ; $5650: $55
	xor d                                            ; $5651: $aa

Jump_05f_5652:
	ld [hl], a                                       ; $5652: $77
	push af                                          ; $5653: $f5
	inc bc                                           ; $5654: $03
	ldh a, [$03]                                     ; $5655: $f0 $03
	ldh a, [$03]                                     ; $5657: $f0 $03
	ldh a, [$03]                                     ; $5659: $f0 $03
	ldh a, [$03]                                     ; $565b: $f0 $03
	ldh a, [$03]                                     ; $565d: $f0 $03
	ldh a, [$03]                                     ; $565f: $f0 $03
	ldh a, [$03]                                     ; $5661: $f0 $03
	ldh a, [$03]                                     ; $5663: $f0 $03
	ldh a, [rOCPD]                                   ; $5665: $f0 $6b
	ldh a, [$6f]                                     ; $5667: $f0 $6f
	cp $de                                           ; $5669: $fe $de
	rst $38                                          ; $566b: $ff
	ld sp, hl                                        ; $566c: $f9
	inc bc                                           ; $566d: $03
	ldh a, [$03]                                     ; $566e: $f0 $03
	ldh a, [$03]                                     ; $5670: $f0 $03
	ldh a, [$03]                                     ; $5672: $f0 $03
	ldh a, [$dd]                                     ; $5674: $f0 $dd
	rst $38                                          ; $5676: $ff
	sbc l                                            ; $5677: $9d
	ld bc, $7307                                     ; $5678: $01 $07 $73
	cp $5f                                           ; $567b: $fe $5f
	ldh [$99], a                                     ; $567d: $e0 $99
	rst $38                                          ; $567f: $ff
	ld a, a                                          ; $5680: $7f
	ret nz                                           ; $5681: $c0

	ld b, b                                          ; $5682: $40
	jp c, Jump_05f_5b7b                              ; $5683: $da $7b $5b

	ldh a, [$9a]                                     ; $5686: $f0 $9a
	rst $38                                          ; $5688: $ff
	ld b, e                                          ; $5689: $43
	add b                                            ; $568a: $80
	and d                                            ; $568b: $a2
	rst JumpTable                                          ; $568c: $c7
	ld d, a                                          ; $568d: $57
	ldh a, [$9b]                                     ; $568e: $f0 $9b
	ldh [rP1], a                                     ; $5690: $e0 $00
	ld c, c                                          ; $5692: $49
	di                                               ; $5693: $f3
	ld d, a                                          ; $5694: $57
	ldh a, [$9b]                                     ; $5695: $f0 $9b
	ld bc, $d59d                                     ; $5697: $01 $9d $d5
	db $fd                                           ; $569a: $fd
	ld h, e                                          ; $569b: $63
	ldh a, [$9d]                                     ; $569c: $f0 $9d
	ld b, b                                          ; $569e: $40
	ldh a, [$73]                                     ; $569f: $f0 $73
	cp $03                                           ; $56a1: $fe $03
	add b                                            ; $56a3: $80
	inc bc                                           ; $56a4: $03
	ldh a, [rWX]                                     ; $56a5: $f0 $4b
	ldh a, [$f6]                                     ; $56a7: $f0 $f6
	ld a, a                                          ; $56a9: $7f
	ld d, e                                          ; $56aa: $53
	ld a, a                                          ; $56ab: $7f
	cp $f5                                           ; $56ac: $fe $f5
	ld [hl], d                                       ; $56ae: $72
	sub c                                            ; $56af: $91
	ld hl, sp-$21                                    ; $56b0: $f8 $df
	inc bc                                           ; $56b2: $03
	sbc e                                            ; $56b3: $9b
	db $fc                                           ; $56b4: $fc
	rst $38                                          ; $56b5: $ff
	inc bc                                           ; $56b6: $03
	db $fc                                           ; $56b7: $fc
	rst FarCall                                          ; $56b8: $f7
	rst SubAFromDE                                          ; $56b9: $df
	db $fc                                           ; $56ba: $fc
	ld a, e                                          ; $56bb: $7b
	rst AddAOntoHL                                          ; $56bc: $ef
	sbc [hl]                                         ; $56bd: $9e
	rlca                                             ; $56be: $07
	push af                                          ; $56bf: $f5
	sbc e                                            ; $56c0: $9b
	ret nz                                           ; $56c1: $c0

	nop                                              ; $56c2: $00
	ret nz                                           ; $56c3: $c0

	add b                                            ; $56c4: $80
	ld e, a                                          ; $56c5: $5f
	or h                                             ; $56c6: $b4
	sbc [hl]                                         ; $56c7: $9e
	inc bc                                           ; $56c8: $03
	ld [hl], e                                       ; $56c9: $73
	cp $6b                                           ; $56ca: $fe $6b
	or [hl]                                          ; $56cc: $b6
	db $dd                                           ; $56cd: $dd
	rst $38                                          ; $56ce: $ff
	sbc d                                            ; $56cf: $9a
	ldh [rIE], a                                     ; $56d0: $e0 $ff
	rst SubAFromDE                                          ; $56d2: $df
	ldh a, [$df]                                     ; $56d3: $f0 $df
	ld e, e                                          ; $56d5: $5b
	ldh a, [$6e]                                     ; $56d6: $f0 $6e
	inc sp                                           ; $56d8: $33
	ld c, e                                          ; $56d9: $4b
	ldh a, [$6e]                                     ; $56da: $f0 $6e
	jp z, $ffdc                                      ; $56dc: $ca $dc $ff

	ld a, e                                          ; $56df: $7b
	ld a, [$fd7f]                                    ; $56e0: $fa $7f $fd
	add l                                            ; $56e3: $85
	ret                                              ; $56e4: $c9


	ld e, e                                          ; $56e5: $5b
	adc $5b                                          ; $56e6: $ce $5b
	db $fd                                           ; $56e8: $fd
	ld e, e                                          ; $56e9: $5b
	jp hl                                            ; $56ea: $e9


	ld e, a                                          ; $56eb: $5f
	ld [$cd5f], a                                    ; $56ec: $ea $5f $cd
	ld e, d                                          ; $56ef: $5a
	call z, $c478                                    ; $56f0: $cc $78 $c4
	ld c, b                                          ; $56f3: $48
	and a                                            ; $56f4: $a7
	rst JumpTable                                          ; $56f5: $c7
	and e                                            ; $56f6: $a3
	rst JumpTable                                          ; $56f7: $c7
	and b                                            ; $56f8: $a0
	jp $c7a0                                         ; $56f9: $c3 $a0 $c7


	and a                                            ; $56fc: $a7
	rst GetHLinHL                                          ; $56fd: $cf
	ld a, e                                          ; $56fe: $7b
	db $fc                                           ; $56ff: $fc
	sub l                                            ; $5700: $95
	pop bc                                           ; $5701: $c1
	nop                                              ; $5702: $00
	add b                                            ; $5703: $80
	ld sp, hl                                        ; $5704: $f9
	pop af                                           ; $5705: $f1
	pop hl                                           ; $5706: $e1
	pop de                                           ; $5707: $d1
	and c                                            ; $5708: $a1
	jp $de81                                         ; $5709: $c3 $81 $de


	pop af                                           ; $570c: $f1
	ld a, a                                          ; $570d: $7f
	db $fc                                           ; $570e: $fc
	adc e                                            ; $570f: $8b
	ld [hl], c                                       ; $5710: $71
	add c                                            ; $5711: $81
	nop                                              ; $5712: $00
	add c                                            ; $5713: $81
	ld d, l                                          ; $5714: $55
	db $fd                                           ; $5715: $fd
	ld e, c                                          ; $5716: $59
	db $fd                                           ; $5717: $fd
	push af                                          ; $5718: $f5
	db $fd                                           ; $5719: $fd
	push de                                          ; $571a: $d5
	db $fd                                           ; $571b: $fd
	ld d, l                                          ; $571c: $55
	db $fd                                           ; $571d: $fd
	ld e, l                                          ; $571e: $5d
	db $fd                                           ; $571f: $fd
	db $dd                                           ; $5720: $dd
	pop af                                           ; $5721: $f1
	ld h, c                                          ; $5722: $61
	sub c                                            ; $5723: $91
	ld l, [hl]                                       ; $5724: $6e
	jp z, $847e                                      ; $5725: $ca $7e $84

	ld a, e                                          ; $5728: $7b
	cp $7b                                           ; $5729: $fe $7b
	ld a, [$c09d]                                    ; $572b: $fa $9d $c0
	ld a, a                                          ; $572e: $7f
	rlca                                             ; $572f: $07
	add b                                            ; $5730: $80
	ld e, e                                          ; $5731: $5b
	ldh a, [$9a]                                     ; $5732: $f0 $9a
	inc bc                                           ; $5734: $03
	rst $38                                          ; $5735: $ff
	db $fd                                           ; $5736: $fd
	rlca                                             ; $5737: $07
	db $fd                                           ; $5738: $fd
	ld sp, hl                                        ; $5739: $f9
	ld a, a                                          ; $573a: $7f
	daa                                              ; $573b: $27
	ld a, e                                          ; $573c: $7b
	ld [hl+], a                                      ; $573d: $22
	ld a, e                                          ; $573e: $7b
	cp $36                                           ; $573f: $fe $36
	call z, $fe57                                    ; $5741: $cc $57 $fe
	sbc e                                            ; $5744: $9b
	ret nz                                           ; $5745: $c0

	rst $38                                          ; $5746: $ff
	rst $38                                          ; $5747: $ff
	ret nz                                           ; $5748: $c0

	ld d, e                                          ; $5749: $53
	cp $5d                                           ; $574a: $fe $5d
	ld e, e                                          ; $574c: $5b
	ld l, a                                          ; $574d: $6f
	cp $9e                                           ; $574e: $fe $9e
	rlca                                             ; $5750: $07
	ld c, a                                          ; $5751: $4f
	cp $7e                                           ; $5752: $fe $7e
	adc $4f                                          ; $5754: $ce $4f
	cp $6e                                           ; $5756: $fe $6e
	jp z, $fe5f                                      ; $5758: $ca $5f $fe

	sbc d                                            ; $575b: $9a
	rst FarCall                                          ; $575c: $f7
	ret c                                            ; $575d: $d8

	db $f4                                           ; $575e: $f4
	db $db                                           ; $575f: $db
	push af                                          ; $5760: $f5
	ld e, e                                          ; $5761: $5b
	cp $7b                                           ; $5762: $fe $7b
	ld e, a                                          ; $5764: $5f
	db $dd                                           ; $5765: $dd
	rst $38                                          ; $5766: $ff
	sbc e                                            ; $5767: $9b
	ld h, b                                          ; $5768: $60
	rst $38                                          ; $5769: $ff
	sub b                                            ; $576a: $90
	cp a                                             ; $576b: $bf
	ld [hl], e                                       ; $576c: $73
	cp $6b                                           ; $576d: $fe $6b
	ldh a, [$6f]                                     ; $576f: $f0 $6f
	and h                                            ; $5771: $a4
	ld a, [hl]                                       ; $5772: $7e
	pop de                                           ; $5773: $d1
	sbc h                                            ; $5774: $9c
	ld a, d                                          ; $5775: $7a
	rst $38                                          ; $5776: $ff
	ld bc, $c372                                     ; $5777: $01 $72 $c3
	sbc e                                            ; $577a: $9b
	ld h, [hl]                                       ; $577b: $66
	rst $38                                          ; $577c: $ff
	sbc c                                            ; $577d: $99
	db $dd                                           ; $577e: $dd
	ld a, e                                          ; $577f: $7b
	cp $9e                                           ; $5780: $fe $9e
	sbc c                                            ; $5782: $99
	ld a, c                                          ; $5783: $79
	adc d                                            ; $5784: $8a

jr_05f_5785:
	ld [hl], d                                       ; $5785: $72
	ld de, $a196                                     ; $5786: $11 $96 $a1
	rst $38                                          ; $5789: $ff
	ld d, d                                          ; $578a: $52
	ld e, a                                          ; $578b: $5f
	ld d, d                                          ; $578c: $52
	cp a                                             ; $578d: $bf
	pop hl                                           ; $578e: $e1
	rst $38                                          ; $578f: $ff
	ld e, [hl]                                       ; $5790: $5e
	ld l, a                                          ; $5791: $6f
	jr jr_05f_5802                                   ; $5792: $18 $6e

	nop                                              ; $5794: $00
	sbc e                                            ; $5795: $9b
	cp $fc                                           ; $5796: $fe $fc
	db $fd                                           ; $5798: $fd
	ld c, b                                          ; $5799: $48
	ld l, e                                          ; $579a: $6b
	ldh a, [$7f]                                     ; $579b: $f0 $7f
	res 3, [hl]                                      ; $579d: $cb $9e
	add d                                            ; $579f: $82
	ld [hl], e                                       ; $57a0: $73
	cp $9e                                           ; $57a1: $fe $9e
	ld a, [$f06b]                                    ; $57a3: $fa $6b $f0
	sbc e                                            ; $57a6: $9b
	add b                                            ; $57a7: $80
	rst $38                                          ; $57a8: $ff
	ld b, b                                          ; $57a9: $40
	ld a, a                                          ; $57aa: $7f
	ld [hl], a                                       ; $57ab: $77
	cp $7f                                           ; $57ac: $fe $7f
	sbc b                                            ; $57ae: $98
	sbc h                                            ; $57af: $9c
	ld b, b                                          ; $57b0: $40
	ret nz                                           ; $57b1: $c0

	ld a, a                                          ; $57b2: $7f
	sbc $ff                                          ; $57b3: $de $ff
	sub [hl]                                         ; $57b5: $96
	ld [hl], b                                       ; $57b6: $70
	rst $38                                          ; $57b7: $ff
	adc b                                            ; $57b8: $88
	rst GetHLinHL                                          ; $57b9: $cf
	add h                                            ; $57ba: $84
	rst FarCall                                          ; $57bb: $f7
	push hl                                          ; $57bc: $e5
	rst $38                                          ; $57bd: $ff
	ld sp, hl                                        ; $57be: $f9
	ld e, e                                          ; $57bf: $5b
	sub b                                            ; $57c0: $90
	ld a, a                                          ; $57c1: $7f
	inc h                                            ; $57c2: $24
	sbc h                                            ; $57c3: $9c
	jr nz, jr_05f_5785                               ; $57c4: $20 $bf

	jr nz, jr_05f_581b                               ; $57c6: $20 $53

	add b                                            ; $57c8: $80
	ld a, a                                          ; $57c9: $7f
	cp $96                                           ; $57ca: $fe $96
	ld e, $f7                                        ; $57cc: $1e $f7
	dec c                                            ; $57ce: $0d
	rla                                              ; $57cf: $17
	db $ed                                           ; $57d0: $ed
	rst SubAFromHL                                          ; $57d1: $d7
	db $ed                                           ; $57d2: $ed
	rst SubAFromHL                                          ; $57d3: $d7
	ld l, l                                          ; $57d4: $6d
	ld h, a                                          ; $57d5: $67
	cp $6e                                           ; $57d6: $fe $6e
	jp z, $fe5f                                      ; $57d8: $ca $5f $fe

	ld b, $c0                                        ; $57db: $06 $c0
	ld a, e                                          ; $57dd: $7b
	xor d                                            ; $57de: $aa
	sbc l                                            ; $57df: $9d
	rst GetHLinHL                                          ; $57e0: $cf
	ld hl, sp+$67                                    ; $57e1: $f8 $67
	cp $86                                           ; $57e3: $fe $86
	adc $f8                                          ; $57e5: $ce $f8
	call z, $1fff                                    ; $57e7: $cc $ff $1f
	ldh [$f1], a                                     ; $57ea: $e0 $f1
	nop                                              ; $57ec: $00
	ldh [c], a                                       ; $57ed: $e2
	nop                                              ; $57ee: $00
	push bc                                          ; $57ef: $c5
	nop                                              ; $57f0: $00
	adc e                                            ; $57f1: $8b
	nop                                              ; $57f2: $00
	rla                                              ; $57f3: $17
	nop                                              ; $57f4: $00
	ld l, $00                                        ; $57f5: $2e $00
	ld e, h                                          ; $57f7: $5c
	rst $38                                          ; $57f8: $ff
	rst JumpTable                                          ; $57f9: $c7
	ccf                                              ; $57fa: $3f
	ld h, a                                          ; $57fb: $67
	ccf                                              ; $57fc: $3f
	rst SubAFromBC                                          ; $57fd: $e7
	ld a, e                                          ; $57fe: $7b

Call_05f_57ff:
	cp $9c                                           ; $57ff: $fe $9c
	and a                                            ; $5801: $a7

jr_05f_5802:
	ccf                                              ; $5802: $3f
	daa                                              ; $5803: $27
	ld [hl], a                                       ; $5804: $77
	cp $06                                           ; $5805: $fe $06
	ret nz                                           ; $5807: $c0

	ld d, [hl]                                       ; $5808: $56
	call nz, $fe77                                   ; $5809: $c4 $77 $fe
	ld a, d                                          ; $580c: $7a
	call z, $978c                                    ; $580d: $cc $8c $97
	cp a                                             ; $5810: $bf
	sub h                                            ; $5811: $94
	cp h                                             ; $5812: $bc
	sub h                                            ; $5813: $94
	cp l                                             ; $5814: $bd
	sbc b                                            ; $5815: $98
	cp c                                             ; $5816: $b9
	sbc c                                            ; $5817: $99
	cp e                                             ; $5818: $bb
	sub c                                            ; $5819: $91
	add a                                            ; $581a: $87

jr_05f_581b:
	add d                                            ; $581b: $82
	rst $38                                          ; $581c: $ff
	add [hl]                                         ; $581d: $86
	add a                                            ; $581e: $87
	add a                                            ; $581f: $87
	rst $38                                          ; $5820: $ff
	ld hl, sp+$7b                                    ; $5821: $f8 $7b
	db $10                                           ; $5823: $10
	ld a, a                                          ; $5824: $7f
	cp $73                                           ; $5825: $fe $73
	ld a, $ff                                        ; $5827: $3e $ff
	ld a, [hl]                                       ; $5829: $7e
	jp z, $fd8d                                      ; $582a: $ca $8d $fd

	sbc c                                            ; $582d: $99
	db $fd                                           ; $582e: $fd
	ld l, c                                          ; $582f: $69
	db $fd                                           ; $5830: $fd
	add hl, bc                                       ; $5831: $09
	db $fd                                           ; $5832: $fd
	add hl, bc                                       ; $5833: $09
	ei                                               ; $5834: $fb
	ld sp, $42f7                                     ; $5835: $31 $f7 $42
	ld a, a                                          ; $5838: $7f
	ld h, c                                          ; $5839: $61
	pop af                                           ; $583a: $f1
	and c                                            ; $583b: $a1
	rst $38                                          ; $583c: $ff
	ld e, $62                                        ; $583d: $1e $62
	and b                                            ; $583f: $a0
	adc d                                            ; $5840: $8a
	ld [bc], a                                       ; $5841: $02
	db $e3                                           ; $5842: $e3
	ld b, c                                          ; $5843: $41
	rst SubAFromBC                                          ; $5844: $e7
	ld b, d                                          ; $5845: $42
	rst AddAOntoHL                                          ; $5846: $ef
	ld c, h                                          ; $5847: $4c
	rst AddAOntoHL                                          ; $5848: $ef
	ld c, b                                          ; $5849: $48
	rst AddAOntoHL                                          ; $584a: $ef
	ld c, b                                          ; $584b: $48
	rst SubAFromDE                                          ; $584c: $df
	adc b                                            ; $584d: $88
	rst SubAFromDE                                          ; $584e: $df
	sub b                                            ; $584f: $90
	cp a                                             ; $5850: $bf
	db $10                                           ; $5851: $10
	rst $38                                          ; $5852: $ff
	add [hl]                                         ; $5853: $86
	rst JumpTable                                          ; $5854: $c7
	add [hl]                                         ; $5855: $86
	ld a, d                                          ; $5856: $7a
	adc d                                            ; $5857: $8a
	sbc [hl]                                         ; $5858: $9e
	ld [bc], a                                       ; $5859: $02
	ld h, a                                          ; $585a: $67
	cp $95                                           ; $585b: $fe $95
	ld a, a                                          ; $585d: $7f
	jr @+$21                                         ; $585e: $18 $1f

	ld b, $67                                        ; $5860: $06 $67
	ld h, c                                          ; $5862: $61
	ld a, c                                          ; $5863: $79
	ld e, c                                          ; $5864: $59
	ld a, a                                          ; $5865: $7f
	ld b, [hl]                                       ; $5866: $46
	ld [hl], d                                       ; $5867: $72
	ret nz                                           ; $5868: $c0

	ld a, l                                          ; $5869: $7d
	adc h                                            ; $586a: $8c
	add b                                            ; $586b: $80
	adc c                                            ; $586c: $89
	rst GetHLinHL                                          ; $586d: $cf
	add l                                            ; $586e: $85
	rst SubAFromBC                                          ; $586f: $e7
	ld h, [hl]                                       ; $5870: $66
	cp $1e                                           ; $5871: $fe $1e

jr_05f_5873:
	cp $04                                           ; $5873: $fe $04
	db $fd                                           ; $5875: $fd
	jr jr_05f_5873                                   ; $5876: $18 $fb

	ld h, c                                          ; $5878: $61
	rst SubAFromBC                                          ; $5879: $e7
	add d                                            ; $587a: $82
	cp a                                             ; $587b: $bf
	cpl                                              ; $587c: $2f
	cp a                                             ; $587d: $bf
	jr nc, jr_05f_58f8                               ; $587e: $30 $78

	jr nc, jr_05f_5901                               ; $5880: $30 $7f

	ld c, [hl]                                       ; $5882: $4e
	cp $50                                           ; $5883: $fe $50
	ld hl, sp-$70                                    ; $5885: $f8 $90
	rst $38                                          ; $5887: $ff
	ld c, $fe                                        ; $5888: $0e $fe
	db $10                                           ; $588a: $10
	ld a, [hl]                                       ; $588b: $7e
	ld h, [hl]                                       ; $588c: $66
	sbc e                                            ; $588d: $9b
	pop af                                           ; $588e: $f1
	ld hl, $5e7f                                     ; $588f: $21 $7f $5e
	ld l, a                                          ; $5892: $6f
	call nc, $fe77                                   ; $5893: $d4 $77 $fe
	ld e, [hl]                                       ; $5896: $5e
	add $02                                          ; $5897: $c6 $02
	ret nz                                           ; $5899: $c0

	ld [hl-], a                                      ; $589a: $32
	ret nz                                           ; $589b: $c0

	sub l                                            ; $589c: $95
	ld hl, sp-$38                                    ; $589d: $f8 $c8
	ld hl, sp-$37                                    ; $589f: $f8 $c9
	ld hl, sp-$36                                    ; $58a1: $f8 $ca
	ld hl, sp-$31                                    ; $58a3: $f8 $cf
	rst $38                                          ; $58a5: $ff
	rst GetHLinHL                                          ; $58a6: $cf
	ld l, l                                          ; $58a7: $6d
	add b                                            ; $58a8: $80
	sub e                                            ; $58a9: $93
	nop                                              ; $58aa: $00
	cp b                                             ; $58ab: $b8
	nop                                              ; $58ac: $00
	ld [hl], b                                       ; $58ad: $70
	nop                                              ; $58ae: $00
	pop hl                                           ; $58af: $e1
	nop                                              ; $58b0: $00
	db $e3                                           ; $58b1: $e3
	ldh [rIE], a                                     ; $58b2: $e0 $ff
	rst $38                                          ; $58b4: $ff
	rra                                              ; $58b5: $1f
	ld [hl], a                                       ; $58b6: $77
	inc a                                            ; $58b7: $3c
	ld [hl], d                                       ; $58b8: $72
	jp nz, $c476                                     ; $58b9: $c2 $76 $c4

	sbc h                                            ; $58bc: $9c
	rst SubAFromBC                                          ; $58bd: $e7
	rst $38                                          ; $58be: $ff
	rst JumpTable                                          ; $58bf: $c7
	ld bc, $6280                                     ; $58c0: $01 $80 $62
	ret nz                                           ; $58c3: $c0

	ld a, l                                          ; $58c4: $7d
	ld a, h                                          ; $58c5: $7c
	ld a, l                                          ; $58c6: $7d
	ld a, b                                          ; $58c7: $78
	ld a, h                                          ; $58c8: $7c
	ld b, h                                          ; $58c9: $44
	ld [hl], h                                       ; $58ca: $74
	ld b, b                                          ; $58cb: $40
	ld a, l                                          ; $58cc: $7d
	ld a, [$ff9d]                                    ; $58cd: $fa $9d $ff
	ld a, b                                          ; $58d0: $78
	ld l, h                                          ; $58d1: $6c
	push de                                          ; $58d2: $d5
	halt                                             ; $58d3: $76
	ld [$cd6c], sp                                   ; $58d4: $08 $6c $cd
	ld d, a                                          ; $58d7: $57
	ldh a, [$9b]                                     ; $58d8: $f0 $9b
	rst AddAOntoHL                                          ; $58da: $ef
	ld b, h                                          ; $58db: $44
	rst $38                                          ; $58dc: $ff
	jr c, jr_05f_5932                                ; $58dd: $38 $53

	ldh [$7e], a                                     ; $58df: $e0 $7e
	db $ec                                           ; $58e1: $ec
	ld a, c                                          ; $58e2: $79
	ld l, a                                          ; $58e3: $6f
	ld e, a                                          ; $58e4: $5f
	ldh a, [$9d]                                     ; $58e5: $f0 $9d
	ld a, a                                          ; $58e7: $7f
	jr nz, @+$7d                                     ; $58e8: $20 $7b

	ld l, d                                          ; $58ea: $6a
	rla                                              ; $58eb: $17
	ldh [$7e], a                                     ; $58ec: $e0 $7e
	adc $7e                                          ; $58ee: $ce $7e
	halt                                             ; $58f0: $76
	ld e, e                                          ; $58f1: $5b
	ldh a, [$9d]                                     ; $58f2: $f0 $9d
	rst SubAFromDE                                          ; $58f4: $df
	adc h                                            ; $58f5: $8c
	ld a, c                                          ; $58f6: $79
	add h                                            ; $58f7: $84

jr_05f_58f8:
	ld e, e                                          ; $58f8: $5b
	ldh a, [$9b]                                     ; $58f9: $f0 $9b
	ld hl, sp+$10                                    ; $58fb: $f8 $10
	rst $38                                          ; $58fd: $ff
	rrca                                             ; $58fe: $0f
	rla                                              ; $58ff: $17
	ret nc                                           ; $5900: $d0

jr_05f_5901:
	ld [hl], d                                       ; $5901: $72
	jp z, $ed98                                      ; $5902: $ca $98 $ed

	rla                                              ; $5905: $17
	db $ed                                           ; $5906: $ed
	rst FarCall                                          ; $5907: $f7
	dec c                                            ; $5908: $0d
	rlca                                             ; $5909: $07
	db $fd                                           ; $590a: $fd
	ld [hl], h                                       ; $590b: $74
	ld b, b                                          ; $590c: $40
	ld [bc], a                                       ; $590d: $02
	ret nz                                           ; $590e: $c0

	dec a                                            ; $590f: $3d
	add b                                            ; $5910: $80
	nop                                              ; $5911: $00
	ld b, b                                          ; $5912: $40
	ld [hl], e                                       ; $5913: $73
	cp $98                                           ; $5914: $fe $98
	ld h, a                                          ; $5916: $67
	rst $38                                          ; $5917: $ff
	sub a                                            ; $5918: $97
	sbc a                                            ; $5919: $9f
	sub a                                            ; $591a: $97
	rst $38                                          ; $591b: $ff
	sub a                                            ; $591c: $97
	ld b, $c0                                        ; $591d: $06 $c0
	ld a, [hl]                                       ; $591f: $7e
	adc $4f                                          ; $5920: $ce $4f
	cp $47                                           ; $5922: $fe $47
	or c                                             ; $5924: $b1
	inc bc                                           ; $5925: $03
	cp $03                                           ; $5926: $fe $03
	cp $03                                           ; $5928: $fe $03
	cp $03                                           ; $592a: $fe $03
	cp $53                                           ; $592c: $fe $53
	ld hl, $cc7a                                     ; $592e: $21 $7a $cc
	ld d, a                                          ; $5931: $57

jr_05f_5932:
	cp $02                                           ; $5932: $fe $02
	ret nz                                           ; $5934: $c0

	ld [bc], a                                       ; $5935: $02
	ret nz                                           ; $5936: $c0

	ld c, e                                          ; $5937: $4b
	cp $7e                                           ; $5938: $fe $7e
	ret z                                            ; $593a: $c8

	ld h, [hl]                                       ; $593b: $66
	cp [hl]                                          ; $593c: $be
	ld [hl], e                                       ; $593d: $73
	cp $0e                                           ; $593e: $fe $0e
	ret nz                                           ; $5940: $c0

	rst $38                                          ; $5941: $ff
	ld [hl], l                                       ; $5942: $75
	adc d                                            ; $5943: $8a
	sbc [hl]                                         ; $5944: $9e
	rst $38                                          ; $5945: $ff
	ld a, c                                          ; $5946: $79
	ld b, e                                          ; $5947: $43
	ld [hl], d                                       ; $5948: $72
	inc hl                                           ; $5949: $23
	db $fd                                           ; $594a: $fd
	ld l, a                                          ; $594b: $6f
	or $03                                           ; $594c: $f6 $03
	ldh a, [$de]                                     ; $594e: $f0 $de
	rst $38                                          ; $5950: $ff
	sbc d                                            ; $5951: $9a
	inc bc                                           ; $5952: $03
	db $fc                                           ; $5953: $fc
	rrca                                             ; $5954: $0f
	rst SubAFromHL                                          ; $5955: $d7

jr_05f_5956:
	ret c                                            ; $5956: $d8

	ld e, e                                          ; $5957: $5b
	ldh a, [$9a]                                     ; $5958: $f0 $9a
	ret nz                                           ; $595a: $c0

	ccf                                              ; $595b: $3f
	ldh a, [$eb]                                     ; $595c: $f0 $eb
	dec de                                           ; $595e: $1b
	inc bc                                           ; $595f: $03
	ret nz                                           ; $5960: $c0

	inc bc                                           ; $5961: $03
	ldh a, [rIF]                                     ; $5962: $f0 $0f
	ldh a, [$75]                                     ; $5964: $f0 $75
	adc d                                            ; $5966: $8a
	ld a, a                                          ; $5967: $7f
	add [hl]                                         ; $5968: $86
	ld e, a                                          ; $5969: $5f
	ldh a, [$0e]                                     ; $596a: $f0 $0e
	jp nz, $c002                                     ; $596c: $c2 $02 $c0

	dec e                                            ; $596f: $1d
	add b                                            ; $5970: $80
	ld a, [hl+]                                      ; $5971: $2a
	ret nz                                           ; $5972: $c0

	ldh [$d1], a                                     ; $5973: $e0 $d1
	db $dd                                           ; $5975: $dd
	ld bc, $0280                                     ; $5976: $01 $80 $02
	inc bc                                           ; $5979: $03
	ld e, $1d                                        ; $597a: $1e $1d
	ld [de], a                                       ; $597c: $12
	rra                                              ; $597d: $1f
	dec e                                            ; $597e: $1d
	inc de                                           ; $597f: $13
	rra                                              ; $5980: $1f
	ld de, $191e                                     ; $5981: $11 $1e $19
	ld l, a                                          ; $5984: $6f
	rst FarCall                                          ; $5985: $f7
	jp c, Jump_05f_6b6c                              ; $5986: $da $6c $6b

	ld c, e                                          ; $5989: $4b
	ld c, d                                          ; $598a: $4a
	ld l, d                                          ; $598b: $6a
	ld l, d                                          ; $598c: $6a
	ld c, d                                          ; $598d: $4a
	bit 5, e                                         ; $598e: $cb $6b
	ld l, d                                          ; $5990: $6a
	call z, $efd7                                    ; $5991: $cc $d7 $ef
	or $ef                                           ; $5994: $f6 $ef
	ld d, e                                          ; $5996: $53
	sub d                                            ; $5997: $92
	ld [hl], $d6                                     ; $5998: $36 $d6
	jp nc, Jump_05f_5652                             ; $599a: $d2 $52 $56

	ld d, [hl]                                       ; $599d: $56
	ld d, d                                          ; $599e: $52
	db $d3                                           ; $599f: $d3
	sub $56                                          ; $59a0: $d6 $56
	inc sp                                           ; $59a2: $33
	db $eb                                           ; $59a3: $eb
	rst FarCall                                          ; $59a4: $f7
	db $dd                                           ; $59a5: $dd
	add b                                            ; $59a6: $80
	sub e                                            ; $59a7: $93
	ld b, b                                          ; $59a8: $40
	ret nz                                           ; $59a9: $c0

	ld a, b                                          ; $59aa: $78
	cp b                                             ; $59ab: $b8
	ld c, b                                          ; $59ac: $48
	ld hl, sp-$48                                    ; $59ad: $f8 $b8
	ret z                                            ; $59af: $c8

	ld hl, sp-$78                                    ; $59b0: $f8 $88
	ld a, b                                          ; $59b2: $78
	sbc b                                            ; $59b3: $98
	pop hl                                           ; $59b4: $e1
	rst SubAFromDE                                          ; $59b5: $df
	rra                                              ; $59b6: $1f
	add c                                            ; $59b7: $81
	ld a, $21                                        ; $59b8: $3e $21
	ld [hl], c                                       ; $59ba: $71
	ld b, b                                          ; $59bb: $40
	ld b, b                                          ; $59bc: $40
	ld a, a                                          ; $59bd: $7f
	ld d, c                                          ; $59be: $51
	ld h, [hl]                                       ; $59bf: $66
	ld d, b                                          ; $59c0: $50
	ld h, h                                          ; $59c1: $64
	ld d, c                                          ; $59c2: $51
	ld h, [hl]                                       ; $59c3: $66
	ccf                                              ; $59c4: $3f
	ccf                                              ; $59c5: $3f
	nop                                              ; $59c6: $00
	nop                                              ; $59c7: $00
	ldh [$e0], a                                     ; $59c8: $e0 $e0
	ldh a, [rAUD1SWEEP]                              ; $59ca: $f0 $10
	jr jr_05f_5956                                   ; $59cc: $18 $88

	adc b                                            ; $59ce: $88
	ld a, b                                          ; $59cf: $78
	ld c, h                                          ; $59d0: $4c
	inc a                                            ; $59d1: $3c
	ld a, [hl+]                                      ; $59d2: $2a
	ld a, [de]                                       ; $59d3: $1a
	pop af                                           ; $59d4: $f1
	pop af                                           ; $59d5: $f1
	ldh [$c1], a                                     ; $59d6: $e0 $c1
	ld l, d                                          ; $59d8: $6a
	jp z, $fe77                                      ; $59d9: $ca $77 $fe

	db $db                                           ; $59dc: $db
	rst $38                                          ; $59dd: $ff
	ld l, d                                          ; $59de: $6a
	ret z                                            ; $59df: $c8

	ld a, a                                          ; $59e0: $7f
	db $fd                                           ; $59e1: $fd
	jp c, Jump_05f_62ff                              ; $59e2: $da $ff $62

	add $7d                                          ; $59e5: $c6 $7d
	pop af                                           ; $59e7: $f1
	sbc [hl]                                         ; $59e8: $9e
	db $fc                                           ; $59e9: $fc
	db $dd                                           ; $59ea: $dd
	rst $38                                          ; $59eb: $ff
	ld h, d                                          ; $59ec: $62
	add $99                                          ; $59ed: $c6 $99
	db $fc                                           ; $59ef: $fc
	inc b                                            ; $59f0: $04
	inc b                                            ; $59f1: $04
	db $fc                                           ; $59f2: $fc
	cp $fe                                           ; $59f3: $fe $fe
	ld l, [hl]                                       ; $59f5: $6e
	jp z, $ff9e                                      ; $59f6: $ca $9e $ff

	ld [hl], a                                       ; $59f9: $77
	cp $9c                                           ; $59fa: $fe $9c
	rst $38                                          ; $59fc: $ff
	ld a, a                                          ; $59fd: $7f
	ld a, a                                          ; $59fe: $7f
	ld sp, hl                                        ; $59ff: $f9
	ld h, a                                          ; $5a00: $67
	or b                                             ; $5a01: $b0
	inc bc                                           ; $5a02: $03
	ldh a, [hDisp0_SCY]                                     ; $5a03: $f0 $83
	nop                                              ; $5a05: $00
	rla                                              ; $5a06: $17
	inc e                                            ; $5a07: $1c
	inc de                                           ; $5a08: $13
	ld e, $11                                        ; $5a09: $1e $11
	rra                                              ; $5a0b: $1f
	ldh a, [$1f]                                     ; $5a0c: $f0 $1f
	rst $38                                          ; $5a0e: $ff
	rra                                              ; $5a0f: $1f
	ldh a, [rIE]                                     ; $5a10: $f0 $ff
	rst FarCall                                          ; $5a12: $f7
	ld hl, sp+$14                                    ; $5a13: $f8 $14
	dec de                                           ; $5a15: $1b
	ld l, a                                          ; $5a16: $6f
	ldh a, [$99]                                     ; $5a17: $f0 $99
	ld a, [hl]                                       ; $5a19: $7e

jr_05f_5a1a:
	rst $38                                          ; $5a1a: $ff
	ccf                                              ; $5a1b: $3f

jr_05f_5a1c:
	cp $e9                                           ; $5a1c: $fe $e9
	rst $38                                          ; $5a1e: $ff
	ldh [$3f], a                                     ; $5a1f: $e0 $3f
	ld [hl], a                                       ; $5a21: $77
	pop hl                                           ; $5a22: $e1
	sbc h                                            ; $5a23: $9c
	rst $38                                          ; $5a24: $ff
	or $0f                                           ; $5a25: $f6 $0f
	ld a, e                                          ; $5a27: $7b
	ldh a, [$9c]                                     ; $5a28: $f0 $9c
	db $fc                                           ; $5a2a: $fc
	cp a                                             ; $5a2b: $bf
	rla                                              ; $5a2c: $17
	ld a, e                                          ; $5a2d: $7b
	sub b                                            ; $5a2e: $90
	ld a, e                                          ; $5a2f: $7b
	ldh a, [$8d]                                     ; $5a30: $f0 $8d
	add b                                            ; $5a32: $80
	ld a, a                                          ; $5a33: $7f
	add sp, $38                                      ; $5a34: $e8 $38
	ret z                                            ; $5a36: $c8

	ld a, b                                          ; $5a37: $78
	adc b                                            ; $5a38: $88
	ld hl, sp+$0f                                    ; $5a39: $f8 $0f
	ld hl, sp-$01                                    ; $5a3b: $f8 $ff
	ld hl, sp+$0f                                    ; $5a3d: $f8 $0f
	rst $38                                          ; $5a3f: $ff
	rst AddAOntoHL                                          ; $5a40: $ef
	rra                                              ; $5a41: $1f
	jr z, jr_05f_5a1c                                ; $5a42: $28 $d8

	ld b, a                                          ; $5a44: $47
	or b                                             ; $5a45: $b0
	rst SubAFromDE                                          ; $5a46: $df
	ld bc, $0797                                     ; $5a47: $01 $97 $07
	ld b, $1c                                        ; $5a4a: $06 $1c
	ld a, [de]                                       ; $5a4c: $1a
	ldh a, [rOCPD]                                   ; $5a4d: $f0 $6b
	jp Jump_05f_717c                                 ; $5a4f: $c3 $7c $71


	ld c, [hl]                                       ; $5a52: $4e
	sbc e                                            ; $5a53: $9b
	jr nz, jr_05f_5a1a                               ; $5a54: $20 $c4

	db $fc                                           ; $5a56: $fc
	rst GetHLinHL                                          ; $5a57: $cf
	ld a, d                                          ; $5a58: $7a
	jp nz, $5f9b                                     ; $5a59: $c2 $9b $5f

	ldh [$d0], a                                     ; $5a5c: $e0 $d0
	ld h, d                                          ; $5a5e: $62
	ld l, a                                          ; $5a5f: $6f
	inc [hl]                                         ; $5a60: $34
	sub l                                            ; $5a61: $95
	ld c, c                                          ; $5a62: $49
	ld a, c                                          ; $5a63: $79
	jp hl                                            ; $5a64: $e9


	add hl, bc                                       ; $5a65: $09
	add hl, bc                                       ; $5a66: $09
	ld sp, hl                                        ; $5a67: $f9
	ei                                               ; $5a68: $fb
	ld a, [bc]                                       ; $5a69: $0a
	dec e                                            ; $5a6a: $1d
	ld c, l                                          ; $5a6b: $4d
	sbc $f8                                          ; $5a6c: $de $f8
	sbc h                                            ; $5a6e: $9c
	ld [$0cfc], sp                                   ; $5a6f: $08 $fc $0c
	ld c, a                                          ; $5a72: $4f
	ret nz                                           ; $5a73: $c0

	ld h, a                                          ; $5a74: $67
	ld a, $5e                                        ; $5a75: $3e $5e
	ldh a, [rTAC]                                    ; $5a77: $f0 $07
	ldh a, [$9c]                                     ; $5a79: $f0 $9c
	ld d, l                                          ; $5a7b: $55
	rst $38                                          ; $5a7c: $ff
	xor d                                            ; $5a7d: $aa
	ld a, e                                          ; $5a7e: $7b
	db $fc                                           ; $5a7f: $fc
	ld e, l                                          ; $5a80: $5d
	and c                                            ; $5a81: $a1
	rlca                                             ; $5a82: $07
	ldh a, [$9e]                                     ; $5a83: $f0 $9e
	ld d, a                                          ; $5a85: $57
	ld c, e                                          ; $5a86: $4b
	ldh a, [$74]                                     ; $5a87: $f0 $74
	rst $38                                          ; $5a89: $ff
	inc bc                                           ; $5a8a: $03
	ldh a, [rAUD3LEN]                                ; $5a8b: $f0 $1b
	ldh a, [hDisp1_WX]                                     ; $5a8d: $f0 $96
	dec d                                            ; $5a8f: $15
	ld a, [de]                                       ; $5a90: $1a
	db $f4                                           ; $5a91: $f4
	ei                                               ; $5a92: $fb
	ld d, a                                          ; $5a93: $57
	ld hl, sp+$10                                    ; $5a94: $f8 $10
	rst $38                                          ; $5a96: $ff
	rra                                              ; $5a97: $1f
	ld l, e                                          ; $5a98: $6b
	ldh a, [$9e]                                     ; $5a99: $f0 $9e
	cp $7a                                           ; $5a9b: $fe $7a
	inc sp                                           ; $5a9d: $33
	ld [hl], e                                       ; $5a9e: $73
	db $db                                           ; $5a9f: $db
	ld l, e                                          ; $5aa0: $6b
	ldh a, [$9b]                                     ; $5aa1: $f0 $9b
	xor e                                            ; $5aa3: $ab
	ld d, h                                          ; $5aa4: $54
	add b                                            ; $5aa5: $80
	ld a, a                                          ; $5aa6: $7f
	ld d, a                                          ; $5aa7: $57
	ldh a, [hDisp1_WX]                                     ; $5aa8: $f0 $96
	xor b                                            ; $5aaa: $a8
	ld e, b                                          ; $5aab: $58
	cpl                                              ; $5aac: $2f
	rst SubAFromDE                                          ; $5aad: $df
	db $ed                                           ; $5aae: $ed
	rra                                              ; $5aaf: $1f
	ld [$f8ff], sp                                   ; $5ab0: $08 $ff $f8
	dec hl                                           ; $5ab3: $2b
	or b                                             ; $5ab4: $b0
	rst SubAFromDE                                          ; $5ab5: $df
	rra                                              ; $5ab6: $1f
	sbc [hl]                                         ; $5ab7: $9e
	ldh [$78], a                                     ; $5ab8: $e0 $78
	add c                                            ; $5aba: $81
	ld a, [hl]                                       ; $5abb: $7e
	sub e                                            ; $5abc: $93
	ld a, [hl]                                       ; $5abd: $7e
	sbc [hl]                                         ; $5abe: $9e
	ld a, [hl]                                       ; $5abf: $7e
	and b                                            ; $5ac0: $a0
	ld [hl], h                                       ; $5ac1: $74
	db $d3                                           ; $5ac2: $d3
	sbc e                                            ; $5ac3: $9b
	rst $38                                          ; $5ac4: $ff
	ldh a, [rIF]                                     ; $5ac5: $f0 $0f
	cp $78                                           ; $5ac7: $fe $78
	ld l, [hl]                                       ; $5ac9: $6e
	sbc [hl]                                         ; $5aca: $9e
	ld bc, $eb7b                                     ; $5acb: $01 $7b $eb
	sub d                                            ; $5ace: $92
	cp $0f                                           ; $5acf: $fe $0f
	db $fc                                           ; $5ad1: $fc
	rst $38                                          ; $5ad2: $ff
	ldh a, [$fa]                                     ; $5ad3: $f0 $fa
	ld a, [bc]                                       ; $5ad5: $0a
	ld a, [$fb0a]                                    ; $5ad6: $fa $0a $fb
	dec bc                                           ; $5ad9: $0b
	ei                                               ; $5ada: $fb
	dec bc                                           ; $5adb: $0b
	ld [hl], a                                       ; $5adc: $77
	rst SubAFromDE                                          ; $5add: $df
	ld [hl], a                                       ; $5ade: $77
	cp $97                                           ; $5adf: $fe $97
	ld [hl], l                                       ; $5ae1: $75
	ld a, a                                          ; $5ae2: $7f
	ld a, [hl-]                                      ; $5ae3: $3a
	ccf                                              ; $5ae4: $3f
	dec [hl]                                         ; $5ae5: $35
	ccf                                              ; $5ae6: $3f
	rra                                              ; $5ae7: $1f
	rra                                              ; $5ae8: $1f
	ld [hl], l                                       ; $5ae9: $75
	ld a, [hl+]                                      ; $5aea: $2a
	ld a, [hl]                                       ; $5aeb: $7e
	ld c, [hl]                                       ; $5aec: $4e
	ld h, a                                          ; $5aed: $67
	db $10                                           ; $5aee: $10
	ld l, [hl]                                       ; $5aef: $6e
	ret c                                            ; $5af0: $d8

	ld [hl], a                                       ; $5af1: $77
	adc h                                            ; $5af2: $8c
	rlca                                             ; $5af3: $07
	ldh a, [$38]                                     ; $5af4: $f0 $38
	nop                                              ; $5af6: $00
	jp nc, $df22                                     ; $5af7: $d2 $22 $df

	inc sp                                           ; $5afa: $33
	db $dd                                           ; $5afb: $dd
	ld [hl+], a                                      ; $5afc: $22
	sbc [hl]                                         ; $5afd: $9e
	ld h, [hl]                                       ; $5afe: $66
	ld h, a                                          ; $5aff: $67
	or $9b                                           ; $5b00: $f6 $9b
	ld h, $66                                        ; $5b02: $26 $66
	ld [hl+], a                                      ; $5b04: $22
	inc hl                                           ; $5b05: $23
	call c, $9c33                                    ; $5b06: $dc $33 $9c
	ld [hl+], a                                      ; $5b09: $22
	dec h                                            ; $5b0a: $25
	ld d, l                                          ; $5b0b: $55
	ld a, e                                          ; $5b0c: $7b
	xor $4b                                          ; $5b0d: $ee $4b
	or $9c                                           ; $5b0f: $f6 $9c
	ld h, $65                                        ; $5b11: $26 $65
	ld [hl+], a                                      ; $5b13: $22
	db $db                                           ; $5b14: $db
	ld b, h                                          ; $5b15: $44
	ld [hl], a                                       ; $5b16: $77
	ret c                                            ; $5b17: $d8

	rst SubAFromDE                                          ; $5b18: $df
	ld [hl+], a                                      ; $5b19: $22
	sbc [hl]                                         ; $5b1a: $9e
	ld [hl-], a                                      ; $5b1b: $32
	db $dd                                           ; $5b1c: $dd
	ld [hl+], a                                      ; $5b1d: $22
	ld [hl], a                                       ; $5b1e: $77
	or $9b                                           ; $5b1f: $f6 $9b
	inc hl                                           ; $5b21: $23
	ld [hl-], a                                      ; $5b22: $32
	ld [hl+], a                                      ; $5b23: $22
	ld [hl], a                                       ; $5b24: $77
	ld h, a                                          ; $5b25: $67
	or $73                                           ; $5b26: $f6 $73
	and $dc                                          ; $5b28: $e6 $dc
	ld [hl+], a                                      ; $5b2a: $22
	ld [hl], a                                       ; $5b2b: $77
	or $f8                                           ; $5b2c: $f6 $f8
	dec b                                            ; $5b2e: $05
	sbc l                                            ; $5b2f: $9d
	rst $38                                          ; $5b30: $ff
	nop                                              ; $5b31: $00
	ld [hl], a                                       ; $5b32: $77
	cp $99                                           ; $5b33: $fe $99
	ld d, l                                          ; $5b35: $55
	xor d                                            ; $5b36: $aa
	xor d                                            ; $5b37: $aa
	ld d, l                                          ; $5b38: $55
	ld d, l                                          ; $5b39: $55
	xor d                                            ; $5b3a: $aa
	ld [hl], a                                       ; $5b3b: $77
	push af                                          ; $5b3c: $f5
	inc bc                                           ; $5b3d: $03
	ldh a, [$03]                                     ; $5b3e: $f0 $03
	ldh a, [$03]                                     ; $5b40: $f0 $03
	ldh a, [$03]                                     ; $5b42: $f0 $03
	ldh a, [$03]                                     ; $5b44: $f0 $03
	ldh a, [$03]                                     ; $5b46: $f0 $03
	ldh a, [$03]                                     ; $5b48: $f0 $03
	ldh a, [$03]                                     ; $5b4a: $f0 $03
	ldh a, [$03]                                     ; $5b4c: $f0 $03
	ldh a, [rOCPD]                                   ; $5b4e: $f0 $6b
	ldh a, [$6f]                                     ; $5b50: $f0 $6f
	cp $de                                           ; $5b52: $fe $de
	rst $38                                          ; $5b54: $ff
	ld sp, hl                                        ; $5b55: $f9
	inc bc                                           ; $5b56: $03
	ldh a, [$03]                                     ; $5b57: $f0 $03
	ldh a, [$03]                                     ; $5b59: $f0 $03
	ldh a, [$03]                                     ; $5b5b: $f0 $03
	ldh a, [$dd]                                     ; $5b5d: $f0 $dd
	rst $38                                          ; $5b5f: $ff
	sbc l                                            ; $5b60: $9d
	ld bc, $7307                                     ; $5b61: $01 $07 $73
	cp $5f                                           ; $5b64: $fe $5f
	ldh [$99], a                                     ; $5b66: $e0 $99
	rst $38                                          ; $5b68: $ff
	ld a, a                                          ; $5b69: $7f
	ret nz                                           ; $5b6a: $c0

	ld b, b                                          ; $5b6b: $40
	jp c, Jump_05f_5b7b                              ; $5b6c: $da $7b $5b

	ldh a, [$9a]                                     ; $5b6f: $f0 $9a
	rst $38                                          ; $5b71: $ff
	ld b, e                                          ; $5b72: $43
	add b                                            ; $5b73: $80
	and d                                            ; $5b74: $a2
	rst JumpTable                                          ; $5b75: $c7
	ld d, a                                          ; $5b76: $57
	ldh a, [$9b]                                     ; $5b77: $f0 $9b
	ldh [rP1], a                                     ; $5b79: $e0 $00

Jump_05f_5b7b:
	ld c, c                                          ; $5b7b: $49
	di                                               ; $5b7c: $f3
	ld d, a                                          ; $5b7d: $57

Jump_05f_5b7e:
	ldh a, [$9b]                                     ; $5b7e: $f0 $9b
	ld bc, $d59d                                     ; $5b80: $01 $9d $d5
	db $fd                                           ; $5b83: $fd
	ld h, e                                          ; $5b84: $63
	ldh a, [$9d]                                     ; $5b85: $f0 $9d
	ld b, b                                          ; $5b87: $40
	ldh a, [$73]                                     ; $5b88: $f0 $73
	cp $03                                           ; $5b8a: $fe $03
	add b                                            ; $5b8c: $80
	inc bc                                           ; $5b8d: $03
	ldh a, [rWX]                                     ; $5b8e: $f0 $4b
	ldh a, [$f6]                                     ; $5b90: $f0 $f6
	ld a, a                                          ; $5b92: $7f
	ld d, e                                          ; $5b93: $53
	ld a, a                                          ; $5b94: $7f
	cp $f5                                           ; $5b95: $fe $f5
	ld [hl], d                                       ; $5b97: $72
	sub c                                            ; $5b98: $91
	inc bc                                           ; $5b99: $03
	ldh a, [$f7]                                     ; $5b9a: $f0 $f7
	sbc e                                            ; $5b9c: $9b
	ret nz                                           ; $5b9d: $c0

	nop                                              ; $5b9e: $00
	ret nz                                           ; $5b9f: $c0

	add b                                            ; $5ba0: $80
	ld e, a                                          ; $5ba1: $5f
	or h                                             ; $5ba2: $b4
	sbc [hl]                                         ; $5ba3: $9e
	inc bc                                           ; $5ba4: $03
	ld [hl], e                                       ; $5ba5: $73
	cp $6b                                           ; $5ba6: $fe $6b
	sub $dd                                          ; $5ba8: $d6 $dd
	rst $38                                          ; $5baa: $ff
	sbc d                                            ; $5bab: $9a
	ldh [rIE], a                                     ; $5bac: $e0 $ff
	rst SubAFromDE                                          ; $5bae: $df
	ldh a, [$df]                                     ; $5baf: $f0 $df
	ld e, e                                          ; $5bb1: $5b
	ldh a, [rPCM34]                                  ; $5bb2: $f0 $77
	ld e, $6b                                        ; $5bb4: $1e $6b
	ret nz                                           ; $5bb6: $c0

	ld h, a                                          ; $5bb7: $67
	ldh a, [$7f]                                     ; $5bb8: $f0 $7f
	db $fd                                           ; $5bba: $fd
	ld l, [hl]                                       ; $5bbb: $6e
	jp z, $ffdc                                      ; $5bbc: $ca $dc $ff

	ld a, e                                          ; $5bbf: $7b
	ld a, [$fd7f]                                    ; $5bc0: $fa $7f $fd
	add l                                            ; $5bc3: $85
	ret                                              ; $5bc4: $c9


	ld e, e                                          ; $5bc5: $5b
	adc $5b                                          ; $5bc6: $ce $5b
	db $fd                                           ; $5bc8: $fd
	ld e, e                                          ; $5bc9: $5b
	jp hl                                            ; $5bca: $e9


	ld e, a                                          ; $5bcb: $5f
	ld [$cd5f], a                                    ; $5bcc: $ea $5f $cd
	ld e, d                                          ; $5bcf: $5a
	call z, $c478                                    ; $5bd0: $cc $78 $c4
	ld c, b                                          ; $5bd3: $48
	and a                                            ; $5bd4: $a7
	rst JumpTable                                          ; $5bd5: $c7
	and e                                            ; $5bd6: $a3
	rst JumpTable                                          ; $5bd7: $c7
	and b                                            ; $5bd8: $a0
	jp $c7a0                                         ; $5bd9: $c3 $a0 $c7


	and a                                            ; $5bdc: $a7
	rst GetHLinHL                                          ; $5bdd: $cf
	ld a, e                                          ; $5bde: $7b
	db $fc                                           ; $5bdf: $fc
	sub l                                            ; $5be0: $95
	pop bc                                           ; $5be1: $c1
	nop                                              ; $5be2: $00
	add b                                            ; $5be3: $80
	ld sp, hl                                        ; $5be4: $f9
	pop af                                           ; $5be5: $f1
	pop hl                                           ; $5be6: $e1
	pop de                                           ; $5be7: $d1
	and c                                            ; $5be8: $a1
	jp $de81                                         ; $5be9: $c3 $81 $de


	pop af                                           ; $5bec: $f1
	ld a, a                                          ; $5bed: $7f
	db $fc                                           ; $5bee: $fc
	adc e                                            ; $5bef: $8b
	ld [hl], c                                       ; $5bf0: $71
	add c                                            ; $5bf1: $81
	nop                                              ; $5bf2: $00
	add c                                            ; $5bf3: $81
	ld d, l                                          ; $5bf4: $55
	db $fd                                           ; $5bf5: $fd
	ld e, c                                          ; $5bf6: $59
	db $fd                                           ; $5bf7: $fd
	push af                                          ; $5bf8: $f5
	db $fd                                           ; $5bf9: $fd
	push de                                          ; $5bfa: $d5
	db $fd                                           ; $5bfb: $fd
	ld d, l                                          ; $5bfc: $55
	db $fd                                           ; $5bfd: $fd
	ld e, l                                          ; $5bfe: $5d
	db $fd                                           ; $5bff: $fd
	db $dd                                           ; $5c00: $dd
	pop af                                           ; $5c01: $f1
	ld h, c                                          ; $5c02: $61
	sub c                                            ; $5c03: $91
	ld l, [hl]                                       ; $5c04: $6e
	jp z, $847e                                      ; $5c05: $ca $7e $84

	ld a, e                                          ; $5c08: $7b
	cp $7b                                           ; $5c09: $fe $7b
	ld a, [$c09d]                                    ; $5c0b: $fa $9d $c0
	ld a, a                                          ; $5c0e: $7f

jr_05f_5c0f:
	ld b, a                                          ; $5c0f: $47
	sub b                                            ; $5c10: $90
	ld c, a                                          ; $5c11: $4f
	ldh a, [$9e]                                     ; $5c12: $f0 $9e
	ld [bc], a                                       ; $5c14: $02
	ld d, a                                          ; $5c15: $57
	ldh a, [$9a]                                     ; $5c16: $f0 $9a
	inc bc                                           ; $5c18: $03
	rst $38                                          ; $5c19: $ff
	db $fd                                           ; $5c1a: $fd
	rlca                                             ; $5c1b: $07
	db $fd                                           ; $5c1c: $fd
	ld sp, hl                                        ; $5c1d: $f9
	ld a, a                                          ; $5c1e: $7f
	daa                                              ; $5c1f: $27
	ld a, e                                          ; $5c20: $7b
	ld [hl+], a                                      ; $5c21: $22
	ld a, e                                          ; $5c22: $7b
	cp $36                                           ; $5c23: $fe $36
	call z, $fe57                                    ; $5c25: $cc $57 $fe
	sbc e                                            ; $5c28: $9b
	ret nz                                           ; $5c29: $c0

	rst $38                                          ; $5c2a: $ff
	rst $38                                          ; $5c2b: $ff
	ret nz                                           ; $5c2c: $c0

	ld d, a                                          ; $5c2d: $57
	cp $65                                           ; $5c2e: $fe $65
	ld c, [hl]                                       ; $5c30: $4e
	ld h, a                                          ; $5c31: $67
	cp $7f                                           ; $5c32: $fe $7f
	db $fd                                           ; $5c34: $fd
	sbc l                                            ; $5c35: $9d
	cp $01                                           ; $5c36: $fe $01
	ld d, a                                          ; $5c38: $57
	cp $7e                                           ; $5c39: $fe $7e
	adc $4f                                          ; $5c3b: $ce $4f
	cp $6e                                           ; $5c3d: $fe $6e
	jp z, $fe5f                                      ; $5c3f: $ca $5f $fe

	ld a, [hl]                                       ; $5c42: $7e
	adc $4f                                          ; $5c43: $ce $4f
	cp $7e                                           ; $5c45: $fe $7e
	xor $4f                                          ; $5c47: $ee $4f
	cp $8d                                           ; $5c49: $fe $8d
	ld a, a                                          ; $5c4b: $7f
	add b                                            ; $5c4c: $80
	ld b, b                                          ; $5c4d: $40
	cp a                                             ; $5c4e: $bf
	ld e, a                                          ; $5c4f: $5f
	cp a                                             ; $5c50: $bf
	ld e, a                                          ; $5c51: $5f
	or c                                             ; $5c52: $b1
	ld e, a                                          ; $5c53: $5f
	or [hl]                                          ; $5c54: $b6
	ld e, [hl]                                       ; $5c55: $5e
	cp d                                             ; $5c56: $ba
	ld e, b                                          ; $5c57: $58
	cp b                                             ; $5c58: $b8
	ld e, d                                          ; $5c59: $5a
	cp d                                             ; $5c5a: $ba
	rst $38                                          ; $5c5b: $ff
	ld bc, $c372                                     ; $5c5c: $01 $72 $c3
	ld a, a                                          ; $5c5f: $7f
	inc d                                            ; $5c60: $14
	sbc b                                            ; $5c61: $98
	cp h                                             ; $5c62: $bc
	add e                                            ; $5c63: $83
	add c                                            ; $5c64: $81
	inc hl                                           ; $5c65: $23
	ld [hl-], a                                      ; $5c66: $32
	add e                                            ; $5c67: $83
	xor e                                            ; $5c68: $ab
	ld a, e                                          ; $5c69: $7b
	ld [$3277], sp                                   ; $5c6a: $08 $77 $32
	sub [hl]                                         ; $5c6d: $96
	ld l, h                                          ; $5c6e: $6c
	dec de                                           ; $5c6f: $1b
	sub d                                            ; $5c70: $92
	ld [hl], a                                       ; $5c71: $77
	dec h                                            ; $5c72: $25
	inc bc                                           ; $5c73: $03
	ld [bc], a                                       ; $5c74: $02
	ld a, e                                          ; $5c75: $7b
	ld a, e                                          ; $5c76: $7b
	ld l, a                                          ; $5c77: $6f
	jr jr_05f_5c0f                                   ; $5c78: $18 $95

	rst $38                                          ; $5c7a: $ff
	jr nc, @+$01                                     ; $5c7b: $30 $ff

	rst SubAFromHL                                          ; $5c7d: $d7
	adc l                                            ; $5c7e: $8d
	ld [$dfdf], sp                                   ; $5c7f: $08 $df $df
	inc c                                            ; $5c82: $0c
	ld [$f06f], sp                                   ; $5c83: $08 $6f $f0
	sub l                                            ; $5c86: $95
	db $fd                                           ; $5c87: $fd
	ld b, $fa                                        ; $5c88: $06 $fa
	ld l, e                                          ; $5c8a: $6b
	cp l                                             ; $5c8b: $bd
	sub l                                            ; $5c8c: $95
	ret c                                            ; $5c8d: $d8

	ld c, b                                          ; $5c8e: $48
	cp $76                                           ; $5c8f: $fe $76
	ld l, e                                          ; $5c91: $6b
	ldh [hDisp1_BGP], a                                     ; $5c92: $e0 $92
	ld b, b                                          ; $5c94: $40
	ccf                                              ; $5c95: $3f
	and a                                            ; $5c96: $a7
	ld e, b                                          ; $5c97: $58
	ld l, b                                          ; $5c98: $68
	dec sp                                           ; $5c99: $3b
	dec hl                                           ; $5c9a: $2b
	call c, $ffec                                    ; $5c9b: $dc $ec $ff
	ld b, b                                          ; $5c9e: $40
	ret nz                                           ; $5c9f: $c0

	ld a, a                                          ; $5ca0: $7f
	sbc $ff                                          ; $5ca1: $de $ff
	sub [hl]                                         ; $5ca3: $96
	ld h, b                                          ; $5ca4: $60
	cp a                                             ; $5ca5: $bf
	cp h                                             ; $5ca6: $bc
	inc bc                                           ; $5ca7: $03
	inc bc                                           ; $5ca8: $03
	cp e                                             ; $5ca9: $bb
	cp e                                             ; $5caa: $bb
	rlca                                             ; $5cab: $07
	dec b                                            ; $5cac: $05
	ld [hl], a                                       ; $5cad: $77
	ld a, $de                                        ; $5cae: $3e $de
	rst $38                                          ; $5cb0: $ff
	adc [hl]                                         ; $5cb1: $8e
	ld b, $f1                                        ; $5cb2: $06 $f1
	ld sp, hl                                        ; $5cb4: $f9
	nop                                              ; $5cb5: $00
	ld d, $60                                        ; $5cb6: $16 $60
	ld l, c                                          ; $5cb8: $69
	dec e                                            ; $5cb9: $1d
	dec e                                            ; $5cba: $1d
	ld a, [$0a07]                                    ; $5cbb: $fa $07 $0a
	rst FarCall                                          ; $5cbe: $f7
	ld [$eaf7], a                                    ; $5cbf: $ea $f7 $ea
	scf                                              ; $5cc2: $37
	ld a, e                                          ; $5cc3: $7b
	cp $99                                           ; $5cc4: $fe $99
	or a                                             ; $5cc6: $b7
	ld l, d                                          ; $5cc7: $6a
	ld [hl], a                                       ; $5cc8: $77
	ld [$07f7], a                                    ; $5cc9: $ea $f7 $07
	ld a, d                                          ; $5ccc: $7a
	call z, $fe57                                    ; $5ccd: $cc $57 $fe
	ld l, [hl]                                       ; $5cd0: $6e
	jp z, $fe5f                                      ; $5cd1: $ca $5f $fe

	ld b, $c0                                        ; $5cd4: $06 $c0
	ld a, d                                          ; $5cd6: $7a
	call z, $c79d                                    ; $5cd7: $cc $9d $c7
	db $fc                                           ; $5cda: $fc
	ld [hl], a                                       ; $5cdb: $77
	cp $9e                                           ; $5cdc: $fe $9e
	add $73                                          ; $5cde: $c6 $73
	cp $9e                                           ; $5ce0: $fe $9e
	rst JumpTable                                          ; $5ce2: $c7
	ld l, d                                          ; $5ce3: $6a
	ld e, d                                          ; $5ce4: $5a
	add [hl]                                         ; $5ce5: $86
	inc d                                            ; $5ce6: $14
	nop                                              ; $5ce7: $00
	jr z, jr_05f_5cea                                ; $5ce8: $28 $00

jr_05f_5cea:
	ld d, c                                          ; $5cea: $51
	nop                                              ; $5ceb: $00
	and e                                            ; $5cec: $a3
	nop                                              ; $5ced: $00
	ld b, a                                          ; $5cee: $47
	cp $01                                           ; $5cef: $fe $01
	rst $38                                          ; $5cf1: $ff
	ld sp, hl                                        ; $5cf2: $f9
	rrca                                             ; $5cf3: $0f
	ld a, [$7f0c]                                    ; $5cf4: $fa $0c $7f
	inc c                                            ; $5cf7: $0c
	rst $38                                          ; $5cf8: $ff
	ld c, $eb                                        ; $5cf9: $0e $eb
	rrca                                             ; $5cfb: $0f
	ret                                              ; $5cfc: $c9


	ld c, $9b                                        ; $5cfd: $0e $9b
	halt                                             ; $5cff: $76
	call z, Call_05f_5d7f                            ; $5d00: $cc $7f $5d
	sbc c                                            ; $5d03: $99
	and b                                            ; $5d04: $a0
	ld h, b                                          ; $5d05: $60
	and b                                            ; $5d06: $a0
	ld h, b                                          ; $5d07: $60
	ld b, b                                          ; $5d08: $40
	ret nz                                           ; $5d09: $c0

	db $dd                                           ; $5d0a: $dd
	add b                                            ; $5d0b: $80
	ld a, d                                          ; $5d0c: $7a
	call z, $0192                                    ; $5d0d: $cc $92 $01
	inc bc                                           ; $5d10: $03
	ld [bc], a                                       ; $5d11: $02
	inc b                                            ; $5d12: $04
	rlca                                             ; $5d13: $07
	inc b                                            ; $5d14: $04
	rlca                                             ; $5d15: $07
	ld [bc], a                                       ; $5d16: $02
	inc bc                                           ; $5d17: $03
	ld bc, $0201                                     ; $5d18: $01 $01 $02
	inc bc                                           ; $5d1b: $03
	halt                                             ; $5d1c: $76
	call z, $7098                                    ; $5d1d: $cc $98 $70
	rst SubAFromDE                                          ; $5d20: $df
	or b                                             ; $5d21: $b0
	ld a, a                                          ; $5d22: $7f
	or b                                             ; $5d23: $b0
	ld a, a                                          ; $5d24: $7f
	ld [hl], b                                       ; $5d25: $70
	ld [hl-], a                                      ; $5d26: $32
	ret nz                                           ; $5d27: $c0

	ld a, [hl]                                       ; $5d28: $7e
	adc $9b                                          ; $5d29: $ce $9b
	ld e, [hl]                                       ; $5d2b: $5e
	or h                                             ; $5d2c: $b4
	ld e, [hl]                                       ; $5d2d: $5e
	or d                                             ; $5d2e: $b2

jr_05f_5d2f:
	ld l, a                                          ; $5d2f: $6f
	cp $87                                           ; $5d30: $fe $87
	ld e, a                                          ; $5d32: $5f
	or d                                             ; $5d33: $b2
	ld e, a                                          ; $5d34: $5f
	or c                                             ; $5d35: $b1
	add e                                            ; $5d36: $83
	xor e                                            ; $5d37: $ab
	inc bc                                           ; $5d38: $03
	inc de                                           ; $5d39: $13
	db $d3                                           ; $5d3a: $d3
	db $d3                                           ; $5d3b: $d3
	db $e3                                           ; $5d3c: $e3
	xor e                                            ; $5d3d: $ab
	db $eb                                           ; $5d3e: $eb
	xor e                                            ; $5d3f: $ab
	ei                                               ; $5d40: $fb
	sub d                                            ; $5d41: $92
	rst FarCall                                          ; $5d42: $f7
	and l                                            ; $5d43: $a5
	rst $38                                          ; $5d44: $ff
	sbc b                                            ; $5d45: $98
	inc bc                                           ; $5d46: $03
	inc bc                                           ; $5d47: $03
	ld a, e                                          ; $5d48: $7b
	ld a, e                                          ; $5d49: $7b
	ld a, e                                          ; $5d4a: $7b
	db $fc                                           ; $5d4b: $fc
	add b                                            ; $5d4c: $80
	ld a, d                                          ; $5d4d: $7a
	inc bc                                           ; $5d4e: $03
	inc bc                                           ; $5d4f: $03
	or a                                             ; $5d50: $b7
	or h                                             ; $5d51: $b4
	ld l, e                                          ; $5d52: $6b
	ld [hl-], a                                      ; $5d53: $32
	cp l                                             ; $5d54: $bd
	adc $4c                                          ; $5d55: $ce $4c
	ld l, l                                          ; $5d57: $6d
	ld l, c                                          ; $5d58: $69
	dec c                                            ; $5d59: $0d
	dec c                                            ; $5d5a: $0d
	add hl, bc                                       ; $5d5b: $09
	ret nc                                           ; $5d5c: $d0

	jp z, $0880                                      ; $5d5d: $ca $80 $08

	rst SubAFromHL                                          ; $5d60: $d7
	jp nc, Jump_05f_55df                             ; $5d61: $d2 $df $55

	rst $38                                          ; $5d64: $ff
	jr c, jr_05f_5d2f                                ; $5d65: $38 $c8

	ret z                                            ; $5d67: $c8

	xor $ce                                          ; $5d68: $ee $ce
	db $ec                                           ; $5d6a: $ec
	ld h, $80                                        ; $5d6b: $26 $80
	add sp, -$5c                                     ; $5d6d: $e8 $a4
	ld l, c                                          ; $5d6f: $69
	xor c                                            ; $5d70: $a9
	ld b, [hl]                                       ; $5d71: $46
	ld b, a                                          ; $5d72: $47
	ld e, b                                          ; $5d73: $58
	ld e, b                                          ; $5d74: $58
	ld sp, hl                                        ; $5d75: $f9
	and a                                            ; $5d76: $a7
	dec sp                                           ; $5d77: $3b
	daa                                              ; $5d78: $27
	db $dd                                           ; $5d79: $dd
	db $e3                                           ; $5d7a: $e3
	cp [hl]                                          ; $5d7b: $be
	jp Jump_05f_4e7d                                 ; $5d7c: $c3 $7d $4e


Call_05f_5d7f:
	dec d                                            ; $5d7f: $15
	ld l, $ea                                        ; $5d80: $2e $ea
	rst FarCall                                          ; $5d82: $f7
	dec de                                           ; $5d83: $1b
	dec de                                           ; $5d84: $1b
	rst $38                                          ; $5d85: $ff
	xor $bf                                          ; $5d86: $ee $bf
	cp c                                             ; $5d88: $b9
	adc a                                            ; $5d89: $8f
	adc c                                            ; $5d8a: $89
	rst $38                                          ; $5d8b: $ff
	add e                                            ; $5d8c: $83
	ld a, c                                          ; $5d8d: $79
	inc hl                                           ; $5d8e: $23
	db $e3                                           ; $5d8f: $e3
	ld a, $ff                                        ; $5d90: $3e $ff
	ld c, h                                          ; $5d92: $4c
	adc $f3                                          ; $5d93: $ce $f3
	di                                               ; $5d95: $f3
	ld a, a                                          ; $5d96: $7f
	call z, $7060                                    ; $5d97: $cc $60 $70
	dec d                                            ; $5d9a: $15
	dec d                                            ; $5d9b: $15
	ld [hl], d                                       ; $5d9c: $72
	ld [hl], e                                       ; $5d9d: $73
	dec d                                            ; $5d9e: $15
	ld e, $d5                                        ; $5d9f: $1e $d5
	sbc $9a                                          ; $5da1: $de $9a
	dec de                                           ; $5da3: $1b
	sub e                                            ; $5da4: $93
	db $d3                                           ; $5da5: $d3
	rst $38                                          ; $5da6: $ff
	ld l, [hl]                                       ; $5da7: $6e
	ld l, d                                          ; $5da8: $6a
	halt                                             ; $5da9: $76
	jp nz, Jump_05f_779a                             ; $5daa: $c2 $9a $77

	ld a, [hl+]                                      ; $5dad: $2a
	rst FarCall                                          ; $5dae: $f7
	ld a, [hl+]                                      ; $5daf: $2a
	rst FarCall                                          ; $5db0: $f7
	ld [hl], a                                       ; $5db1: $77
	or $7f                                           ; $5db2: $f6 $7f
	db $fc                                           ; $5db4: $fc
	ld [bc], a                                       ; $5db5: $02
	ret nz                                           ; $5db6: $c0

	ld a, [bc]                                       ; $5db7: $0a
	ret nz                                           ; $5db8: $c0

	halt                                             ; $5db9: $76
	call z, $c676                                    ; $5dba: $cc $76 $c6
	ld a, [hl]                                       ; $5dbd: $7e
	cp d                                             ; $5dbe: $ba
	ld l, c                                          ; $5dbf: $69
	add b                                            ; $5dc0: $80
	sbc b                                            ; $5dc1: $98
	adc a                                            ; $5dc2: $8f
	nop                                              ; $5dc3: $00
	ld e, $00                                        ; $5dc4: $1e $00
	inc a                                            ; $5dc6: $3c
	nop                                              ; $5dc7: $00
	ld a, c                                          ; $5dc8: $79
	ld [hl], d                                       ; $5dc9: $72
	jr z, jr_05f_5e4b                                ; $5dca: $28 $7f

	cp $80                                           ; $5dcc: $fe $80
	ld bc, $2b0e                                     ; $5dce: $01 $0e $2b
	ld c, $5b                                        ; $5dd1: $0e $5b
	ld c, $ab                                        ; $5dd3: $0e $ab
	ld c, $4b                                        ; $5dd5: $0e $4b
	rst $38                                          ; $5dd7: $ff
	ei                                               ; $5dd8: $fb
	cp $1f                                           ; $5dd9: $fe $1f
	rst SubAFromBC                                          ; $5ddb: $e7
	ld hl, sp+$0f                                    ; $5ddc: $f8 $0f
	rst $38                                          ; $5dde: $ff
	ret nz                                           ; $5ddf: $c0

	ld b, b                                          ; $5de0: $40
	ret nz                                           ; $5de1: $c0

	ld b, b                                          ; $5de2: $40
	rst JumpTable                                          ; $5de3: $c7
	ld b, a                                          ; $5de4: $47
	ld c, l                                          ; $5de5: $4d
	adc $ff                                          ; $5de6: $ce $ff
	rst $38                                          ; $5de8: $ff
	db $eb                                           ; $5de9: $eb
	inc e                                            ; $5dea: $1c
	ld a, l                                          ; $5deb: $7d
	ei                                               ; $5dec: $fb
	adc e                                            ; $5ded: $8b
	cp $8b                                           ; $5dee: $fe $8b
	ld [bc], a                                       ; $5df0: $02
	inc bc                                           ; $5df1: $03
	ld [bc], a                                       ; $5df2: $02
	inc bc                                           ; $5df3: $03
	ldh [c], a                                       ; $5df4: $e2
	db $e3                                           ; $5df5: $e3
	or d                                             ; $5df6: $b2
	ld [hl], e                                       ; $5df7: $73
	rst $38                                          ; $5df8: $ff
	rst $38                                          ; $5df9: $ff
	rst SubAFromHL                                          ; $5dfa: $d7
	jr c, @-$40                                      ; $5dfb: $38 $be

	rst SubAFromDE                                          ; $5dfd: $df
	ld a, a                                          ; $5dfe: $7f
	pop de                                           ; $5dff: $d1
	ldh a, [$5f]                                     ; $5e00: $f0 $5f
	ld [hl], a                                       ; $5e02: $77
	cp $76                                           ; $5e03: $fe $76
	call nz, Call_05f_789a                           ; $5e05: $c4 $9a $78
	rst $38                                          ; $5e08: $ff
	rst JumpTable                                          ; $5e09: $c7
	ccf                                              ; $5e0a: $3f
	ldh a, [$5a]                                     ; $5e0b: $f0 $5a
	add $77                                          ; $5e0d: $c6 $77
	or c                                             ; $5e0f: $b1
	sub a                                            ; $5e10: $97
	add b                                            ; $5e11: $80
	rst $38                                          ; $5e12: $ff
	ld e, a                                          ; $5e13: $5f
	cp a                                             ; $5e14: $bf
	ld b, b                                          ; $5e15: $40
	cp a                                             ; $5e16: $bf
	ld a, a                                          ; $5e17: $7f
	add b                                            ; $5e18: $80
	ld [hl], l                                       ; $5e19: $75
	db $ec                                           ; $5e1a: $ec
	ld l, l                                          ; $5e1b: $6d
	rra                                              ; $5e1c: $1f
	ld l, h                                          ; $5e1d: $6c
	xor c                                            ; $5e1e: $a9
	inc bc                                           ; $5e1f: $03
	ldh a, [$2b]                                     ; $5e20: $f0 $2b
	ldh a, [$79]                                     ; $5e22: $f0 $79
	ld b, h                                          ; $5e24: $44
	sbc c                                            ; $5e25: $99
	cp $03                                           ; $5e26: $fe $03
	cp $ff                                           ; $5e28: $fe $ff
	ld [bc], a                                       ; $5e2a: $02
	ld [bc], a                                       ; $5e2b: $02
	sbc $ff                                          ; $5e2c: $de $ff
	sbc d                                            ; $5e2e: $9a
	ld e, $ff                                        ; $5e2f: $1e $ff
	db $e3                                           ; $5e31: $e3
	db $fc                                           ; $5e32: $fc
	rrca                                             ; $5e33: $0f
	ld l, h                                          ; $5e34: $6c
	ld c, c                                          ; $5e35: $49
	sbc l                                            ; $5e36: $9d
	rst JumpTable                                          ; $5e37: $c7
	ld c, h                                          ; $5e38: $4c
	sbc $ff                                          ; $5e39: $de $ff
	ld a, a                                          ; $5e3b: $7f
	ld h, b                                          ; $5e3c: $60
	sbc [hl]                                         ; $5e3d: $9e
	ld a, a                                          ; $5e3e: $7f
	ld a, e                                          ; $5e3f: $7b
	ld h, b                                          ; $5e40: $60
	ld [hl], e                                       ; $5e41: $73
	ldh [$9d], a                                     ; $5e42: $e0 $9d
	ldh [c], a                                       ; $5e44: $e2
	ld [hl-], a                                      ; $5e45: $32
	sbc $ff                                          ; $5e46: $de $ff
	ld l, a                                          ; $5e48: $6f
	ld h, b                                          ; $5e49: $60
	ld a, [hl]                                       ; $5e4a: $7e

jr_05f_5e4b:
	adc $7f                                          ; $5e4b: $ce $7f
	cp $99                                           ; $5e4d: $fe $99
	ld a, d                                          ; $5e4f: $7a
	rst SubAFromBC                                          ; $5e50: $e7
	ld h, d                                          ; $5e51: $62
	rst $38                                          ; $5e52: $ff
	cp $ff                                           ; $5e53: $fe $ff
	ld l, a                                          ; $5e55: $6f
	ld h, b                                          ; $5e56: $60
	ld c, [hl]                                       ; $5e57: $4e
	jp nz, $879e                                     ; $5e58: $c2 $9e $87

	ld [bc], a                                       ; $5e5b: $02
	ret nz                                           ; $5e5c: $c0

	add hl, sp                                       ; $5e5d: $39
	add b                                            ; $5e5e: $80
	ld c, a                                          ; $5e5f: $4f
	cp $77                                           ; $5e60: $fe $77
	rla                                              ; $5e62: $17
	sbc h                                            ; $5e63: $9c
	inc bc                                           ; $5e64: $03
	db $fc                                           ; $5e65: $fc
	rlca                                             ; $5e66: $07
	ld a, d                                          ; $5e67: $7a
	push de                                          ; $5e68: $d5
	add d                                            ; $5e69: $82
	rrca                                             ; $5e6a: $0f
	db $fc                                           ; $5e6b: $fc
	rlca                                             ; $5e6c: $07
	ld sp, hl                                        ; $5e6d: $f9
	ld c, $f7                                        ; $5e6e: $0e $f7
	ld hl, sp-$71                                    ; $5e70: $f8 $8f
	rst FarCall                                          ; $5e72: $f7
	ei                                               ; $5e73: $fb
	db $fc                                           ; $5e74: $fc
	rra                                              ; $5e75: $1f
	ldh [$73], a                                     ; $5e76: $e0 $73
	adc a                                            ; $5e78: $8f
	db $fd                                           ; $5e79: $fd
	cp $3f                                           ; $5e7a: $fe $3f
	pop bc                                           ; $5e7c: $c1
	ld sp, hl                                        ; $5e7d: $f9
	rlca                                             ; $5e7e: $07
	adc a                                            ; $5e7f: $8f
	ld a, e                                          ; $5e80: $7b
	cp $fb                                           ; $5e81: $fe $fb
	ei                                               ; $5e83: $fb
	ld c, $8d                                        ; $5e84: $0e $8d
	ld a, [hl]                                       ; $5e86: $7e
	sbc $ff                                          ; $5e87: $de $ff
	sub e                                            ; $5e89: $93
	ld a, a                                          ; $5e8a: $7f
	ret z                                            ; $5e8b: $c8

	ldh a, [$3f]                                     ; $5e8c: $f0 $3f
	rst $38                                          ; $5e8e: $ff
	pop af                                           ; $5e8f: $f1
	sbc $7f                                          ; $5e90: $de $7f
	rst SubAFromDE                                          ; $5e92: $df
	rst SubAFromDE                                          ; $5e93: $df
	ld [hl], b                                       ; $5e94: $70
	or c                                             ; $5e95: $b1
	ld [hl], a                                       ; $5e96: $77
	ldh a, [hDisp0_WX]                                     ; $5e97: $f0 $89
	cp $13                                           ; $5e99: $fe $13
	rrca                                             ; $5e9b: $0f
	db $fc                                           ; $5e9c: $fc
	rst $38                                          ; $5e9d: $ff
	rst AddAOntoHL                                          ; $5e9e: $ef
	rra                                              ; $5e9f: $1f
	pop af                                           ; $5ea0: $f1
	rst AddAOntoHL                                          ; $5ea1: $ef
	rst SubAFromDE                                          ; $5ea2: $df
	ccf                                              ; $5ea3: $3f
	cp $01                                           ; $5ea4: $fe $01
	adc $f1                                          ; $5ea6: $ce $f1
	cp a                                             ; $5ea8: $bf
	ld a, a                                          ; $5ea9: $7f
	db $fc                                           ; $5eaa: $fc
	add e                                            ; $5eab: $83
	sbc a                                            ; $5eac: $9f
	ldh [$80], a                                     ; $5ead: $e0 $80
	ld a, e                                          ; $5eaf: $7b
	or c                                             ; $5eb0: $b1
	ld a, a                                          ; $5eb1: $7f
	xor e                                            ; $5eb2: $ab
	sbc d                                            ; $5eb3: $9a
	jr nz, @+$01                                     ; $5eb4: $20 $ff

	db $10                                           ; $5eb6: $10
	rst $38                                          ; $5eb7: $ff
	ldh a, [$7b]                                     ; $5eb8: $f0 $7b
	ld a, [$909d]                                    ; $5eba: $fa $9d $90
	ld a, a                                          ; $5ebd: $7f
	ld l, [hl]                                       ; $5ebe: $6e
	ld a, [$fe03]                                    ; $5ebf: $fa $03 $fe
	inc hl                                           ; $5ec2: $23
	cp $73                                           ; $5ec3: $fe $73
	ld h, c                                          ; $5ec5: $61
	sbc c                                            ; $5ec6: $99
	rst $38                                          ; $5ec7: $ff
	inc b                                            ; $5ec8: $04
	rst $38                                          ; $5ec9: $ff
	ld [$0fff], sp                                   ; $5eca: $08 $ff $0f
	ld a, e                                          ; $5ecd: $7b
	ld a, [$099d]                                    ; $5ece: $fa $9d $09
	cp $67                                           ; $5ed1: $fe $67
	ld h, b                                          ; $5ed3: $60
	sbc l                                            ; $5ed4: $9d
	di                                               ; $5ed5: $f3

jr_05f_5ed6:
	rrca                                             ; $5ed6: $0f
	ld e, e                                          ; $5ed7: $5b
	ld h, b                                          ; $5ed8: $60
	sbc [hl]                                         ; $5ed9: $9e
	rrca                                             ; $5eda: $0f
	ld e, a                                          ; $5edb: $5f
	ld h, b                                          ; $5edc: $60
	sbc [hl]                                         ; $5edd: $9e
	or c                                             ; $5ede: $b1
	ld a, e                                          ; $5edf: $7b
	ld h, b                                          ; $5ee0: $60
	sbc l                                            ; $5ee1: $9d
	sbc a                                            ; $5ee2: $9f
	ldh a, [rBGP]                                    ; $5ee3: $f0 $47
	ld h, b                                          ; $5ee5: $60
	sbc e                                            ; $5ee6: $9b
	ldh a, [rIF]                                     ; $5ee7: $f0 $0f
	call z, $6ff3                                    ; $5ee9: $cc $f3 $6f
	ld h, b                                          ; $5eec: $60
	ld a, [hl]                                       ; $5eed: $7e
	adc $7e                                          ; $5eee: $ce $7e
	jp z, $c798                                      ; $5ef0: $ca $98 $c7

	db $fd                                           ; $5ef3: $fd
	daa                                              ; $5ef4: $27
	db $fd                                           ; $5ef5: $fd
	rla                                              ; $5ef6: $17
	db $fd                                           ; $5ef7: $fd
	rst FarCall                                          ; $5ef8: $f7
	ld a, e                                          ; $5ef9: $7b
	ld a, [$979d]                                    ; $5efa: $fa $9d $97
	ld a, l                                          ; $5efd: $7d
	ld [bc], a                                       ; $5efe: $02
	ret nz                                           ; $5eff: $c0

jr_05f_5f00:
	ld b, $c0                                        ; $5f00: $06 $c0
	adc h                                            ; $5f02: $8c
	rrca                                             ; $5f03: $0f
	ei                                               ; $5f04: $fb
	inc c                                            ; $5f05: $0c
	rst $38                                          ; $5f06: $ff
	rra                                              ; $5f07: $1f
	db $e3                                           ; $5f08: $e3
	inc a                                            ; $5f09: $3c
	rst $38                                          ; $5f0a: $ff
	ccf                                              ; $5f0b: $3f
	rst FarCall                                          ; $5f0c: $f7
	jr jr_05f_5f00                                   ; $5f0d: $18 $f1

	rra                                              ; $5f0f: $1f
	rst $38                                          ; $5f10: $ff
	rra                                              ; $5f11: $1f
	rst $38                                          ; $5f12: $ff
	rst $38                                          ; $5f13: $ff
	db $fd                                           ; $5f14: $fd
	inc bc                                           ; $5f15: $03
	ld e, a                                          ; $5f16: $5f
	db $fc                                           ; $5f17: $fc
	rst SubAFromDE                                          ; $5f18: $df
	ld d, l                                          ; $5f19: $55
	sbc e                                            ; $5f1a: $9b
	rst SubAFromDE                                          ; $5f1b: $df
	ld h, b                                          ; $5f1c: $60
	ld h, h                                          ; $5f1d: $64
	ld b, b                                          ; $5f1e: $40
	ld h, a                                          ; $5f1f: $67
	cp $97                                           ; $5f20: $fe $97
	db $e4                                           ; $5f22: $e4
	ld b, b                                          ; $5f23: $40
	ld h, h                                          ; $5f24: $64
	ret nz                                           ; $5f25: $c0

	ei                                               ; $5f26: $fb
	ld b, $26                                        ; $5f27: $06 $26
	ld [bc], a                                       ; $5f29: $02
	ld h, a                                          ; $5f2a: $67
	cp $9c                                           ; $5f2b: $fe $9c
	daa                                              ; $5f2d: $27
	ld [bc], a                                       ; $5f2e: $02
	ld h, $7b                                        ; $5f2f: $26 $7b
	call c, $bf9d                                    ; $5f31: $dc $9d $bf
	ret nz                                           ; $5f34: $c0

	ld e, a                                          ; $5f35: $5f
	db $fc                                           ; $5f36: $fc
	rst SubAFromDE                                          ; $5f37: $df
	xor d                                            ; $5f38: $aa
	ld a, [hl]                                       ; $5f39: $7e
	jp z, Jump_05f_527f                              ; $5f3a: $ca $7f $52

	sub [hl]                                         ; $5f3d: $96
	rst $38                                          ; $5f3e: $ff
	ld hl, sp-$39                                    ; $5f3f: $f8 $c7
	ccf                                              ; $5f41: $3f
	rst $38                                          ; $5f42: $ff
	rst $38                                          ; $5f43: $ff
	rst AddAOntoHL                                          ; $5f44: $ef
	jr jr_05f_5ed6                                   ; $5f45: $18 $8f

	sbc $f8                                          ; $5f47: $de $f8
	ld [hl], l                                       ; $5f49: $75
	add $71                                          ; $5f4a: $c6 $71
	cp c                                             ; $5f4c: $b9
	ld [hl], c                                       ; $5f4d: $71
	cp a                                             ; $5f4e: $bf
	cp $03                                           ; $5f4f: $fe $03
	ldh a, [rVBK]                                    ; $5f51: $f0 $4f
	ldh a, [$7e]                                     ; $5f53: $f0 $7e
	jp z, $d27e                                      ; $5f55: $ca $7e $d2

	ld a, e                                          ; $5f58: $7b
	ld h, b                                          ; $5f59: $60
	ld a, a                                          ; $5f5a: $7f
	db $fc                                           ; $5f5b: $fc
	sbc [hl]                                         ; $5f5c: $9e
	rst $38                                          ; $5f5d: $ff
	ld [hl], a                                       ; $5f5e: $77
	ld h, b                                          ; $5f5f: $60
	rst SubAFromDE                                          ; $5f60: $df
	rra                                              ; $5f61: $1f
	inc bc                                           ; $5f62: $03
	ld h, b                                          ; $5f63: $60
	dec bc                                           ; $5f64: $0b
	ld h, b                                          ; $5f65: $60
	ld a, [hl]                                       ; $5f66: $7e
	jp z, $d79b                                      ; $5f67: $ca $9b $d7

	dec a                                            ; $5f6a: $3d
	rst $38                                          ; $5f6b: $ff
	ld sp, hl                                        ; $5f6c: $f9
	ld e, a                                          ; $5f6d: $5f
	ld h, b                                          ; $5f6e: $60
	ld c, $c2                                        ; $5f6f: $0e $c2
	ld [bc], a                                       ; $5f71: $02
	ret nz                                           ; $5f72: $c0

	sub b                                            ; $5f73: $90
	ret nz                                           ; $5f74: $c0

	db $ed                                           ; $5f75: $ed
	inc sp                                           ; $5f76: $33
	rst $38                                          ; $5f77: $ff
	ccf                                              ; $5f78: $3f
	di                                               ; $5f79: $f3
	inc e                                            ; $5f7a: $1c
	rst $38                                          ; $5f7b: $ff
	rra                                              ; $5f7c: $1f
	rst SubAFromBC                                          ; $5f7d: $e7
	jr c, @+$01                                      ; $5f7e: $38 $ff

	ccf                                              ; $5f80: $3f
	ld hl, sp+$0f                                    ; $5f81: $f8 $0f
	ld a, c                                          ; $5f83: $79
	ld a, d                                          ; $5f84: $7a
	halt                                             ; $5f85: $76
	ld b, a                                          ; $5f86: $47
	ld [hl], h                                       ; $5f87: $74
	reti                                             ; $5f88: $d9


	ld a, e                                          ; $5f89: $7b
	db $fc                                           ; $5f8a: $fc
	ld a, a                                          ; $5f8b: $7f
	db $d3                                           ; $5f8c: $d3
	sub [hl]                                         ; $5f8d: $96
	ld a, [hl]                                       ; $5f8e: $7e
	add c                                            ; $5f8f: $81
	call nz, $c480                                   ; $5f90: $c4 $80 $c4
	add b                                            ; $5f93: $80
	rst $38                                          ; $5f94: $ff
	rst $38                                          ; $5f95: $ff
	or b                                             ; $5f96: $b0
	ld [hl], e                                       ; $5f97: $73
	add b                                            ; $5f98: $80
	ld a, a                                          ; $5f99: $7f
	or $9a                                           ; $5f9a: $f6 $9a
	add h                                            ; $5f9c: $84
	ret nz                                           ; $5f9d: $c0

	inc hl                                           ; $5f9e: $23
	ld bc, $7b23                                     ; $5f9f: $01 $23 $7b
	and $9e                                          ; $5fa2: $e6 $9e
	dec c                                            ; $5fa4: $0d
	ld [hl], e                                       ; $5fa5: $73
	ld b, b                                          ; $5fa6: $40
	ld a, a                                          ; $5fa7: $7f
	or $9e                                           ; $5fa8: $f6 $9e
	ld hl, $f87b                                     ; $5faa: $21 $7b $f8
	ld a, d                                          ; $5fad: $7a
	rlca                                             ; $5fae: $07
	ld a, e                                          ; $5faf: $7b
	sbc $77                                          ; $5fb0: $de $77
	db $fc                                           ; $5fb2: $fc
	ld [hl], a                                       ; $5fb3: $77
	ret nc                                           ; $5fb4: $d0

jr_05f_5fb5:
	adc a                                            ; $5fb5: $8f
	or h                                             ; $5fb6: $b4
	call z, $fcfc                                    ; $5fb7: $cc $fc $fc
	ret z                                            ; $5fba: $c8

	jr c, jr_05f_5fb5                                ; $5fbb: $38 $f8

	ld hl, sp-$1c                                    ; $5fbd: $f8 $e4
	inc e                                            ; $5fbf: $1c
	db $fc                                           ; $5fc0: $fc
	db $fc                                           ; $5fc1: $fc
	db $10                                           ; $5fc2: $10
	ldh a, [rAUD1SWEEP]                              ; $5fc3: $f0 $10
	ldh a, [$e0]                                     ; $5fc5: $f0 $e0
	pop bc                                           ; $5fc7: $c1
	sub b                                            ; $5fc8: $90
	dec l                                            ; $5fc9: $2d
	inc sp                                           ; $5fca: $33
	ccf                                              ; $5fcb: $3f
	ccf                                              ; $5fcc: $3f
	rla                                              ; $5fcd: $17
	jr @+$21                                         ; $5fce: $18 $1f

	rra                                              ; $5fd0: $1f
	inc hl                                           ; $5fd1: $23
	inc a                                            ; $5fd2: $3c
	ccf                                              ; $5fd3: $3f
	ccf                                              ; $5fd4: $3f
	ld [$080f], sp                                   ; $5fd5: $08 $0f $08
	inc bc                                           ; $5fd8: $03
	ld h, b                                          ; $5fd9: $60
	inc bc                                           ; $5fda: $03
	ld h, b                                          ; $5fdb: $60
	ld a, e                                          ; $5fdc: $7b
	ld h, b                                          ; $5fdd: $60
	sbc c                                            ; $5fde: $99
	add sp, $18                                      ; $5fdf: $e8 $18
	ld hl, sp-$08                                    ; $5fe1: $f8 $f8
	call nz, $033c                                   ; $5fe3: $c4 $3c $03
	ld h, b                                          ; $5fe6: $60
	ld e, d                                          ; $5fe7: $5a
	ret nz                                           ; $5fe8: $c0

	ld [hl], b                                       ; $5fe9: $70
	push af                                          ; $5fea: $f5
	db $db                                           ; $5feb: $db
	rst $38                                          ; $5fec: $ff
	ld [hl], d                                       ; $5fed: $72
	jp z, $917b                                      ; $5fee: $ca $7b $91

	jp c, $92ff                                      ; $5ff1: $da $ff $92

	db $fd                                           ; $5ff4: $fd
	ld b, $ff                                        ; $5ff5: $06 $ff
	rlca                                             ; $5ff7: $07
	rst $38                                          ; $5ff8: $ff
	rlca                                             ; $5ff9: $07
	add hl, bc                                       ; $5ffa: $09
	rst $38                                          ; $5ffb: $ff
	cp $ff                                           ; $5ffc: $fe $ff
	db $fd                                           ; $5ffe: $fd

Jump_05f_5fff:
	rst $38                                          ; $5fff: $ff
	db $fc                                           ; $6000: $fc
	ld a, e                                          ; $6001: $7b
	cp $9e                                           ; $6002: $fe $9e
	rst GetHLinHL                                          ; $6004: $cf
	ld a, d                                          ; $6005: $7a
	ld h, [hl]                                       ; $6006: $66
	rst SubAFromDE                                          ; $6007: $df
	ld d, l                                          ; $6008: $55
	ld a, e                                          ; $6009: $7b
	sub b                                            ; $600a: $90
	sub l                                            ; $600b: $95
	add c                                            ; $600c: $81
	pop af                                           ; $600d: $f1
	rst $38                                          ; $600e: $ff
	xor a                                            ; $600f: $af
	rra                                              ; $6010: $1f
	add l                                            ; $6011: $85
	inc bc                                           ; $6012: $03
	db $e4                                           ; $6013: $e4
	ret nz                                           ; $6014: $c0

	ld h, h                                          ; $6015: $64
	ld a, e                                          ; $6016: $7b
	cp $7f                                           ; $6017: $fe $7f
	pop af                                           ; $6019: $f1
	sbc [hl]                                         ; $601a: $9e
	ld b, b                                          ; $601b: $40
	db $dd                                           ; $601c: $dd
	ld a, a                                          ; $601d: $7f
	sbc c                                            ; $601e: $99
	ld b, b                                          ; $601f: $40
	ret nc                                           ; $6020: $d0

	ld h, b                                          ; $6021: $60
	daa                                              ; $6022: $27
	inc bc                                           ; $6023: $03
	ld h, $7b                                        ; $6024: $26 $7b
	cp $7f                                           ; $6026: $fe $7f
	pop de                                           ; $6028: $d1
	sbc [hl]                                         ; $6029: $9e
	ld [bc], a                                       ; $602a: $02
	db $dd                                           ; $602b: $dd
	cp $9b                                           ; $602c: $fe $9b
	ld [bc], a                                       ; $602e: $02
	dec bc                                           ; $602f: $0b
	ld b, $f3                                        ; $6030: $06 $f3
	ld a, c                                          ; $6032: $79
	and $df                                          ; $6033: $e6 $df
	xor d                                            ; $6035: $aa
	ld a, e                                          ; $6036: $7b
	jr nc, @-$68                                     ; $6037: $30 $96

	add c                                            ; $6039: $81
	adc a                                            ; $603a: $8f
	rst $38                                          ; $603b: $ff
	push af                                          ; $603c: $f5
	ld hl, sp-$5f                                    ; $603d: $f8 $a1
	ret nz                                           ; $603f: $c0

	and b                                            ; $6040: $a0
	ld h, b                                          ; $6041: $60
	db $dd                                           ; $6042: $dd
	ldh [$7c], a                                     ; $6043: $e0 $7c
	cp [hl]                                          ; $6045: $be
	sbc b                                            ; $6046: $98
	ld a, a                                          ; $6047: $7f
	ldh a, [$bf]                                     ; $6048: $f0 $bf
	rst $38                                          ; $604a: $ff
	ld a, [hl+]                                      ; $604b: $2a
	pop af                                           ; $604c: $f1
	ccf                                              ; $604d: $3f
	ld [hl], c                                       ; $604e: $71
	xor l                                            ; $604f: $ad
	ld a, c                                          ; $6050: $79
	xor e                                            ; $6051: $ab
	ld h, a                                          ; $6052: $67
	add b                                            ; $6053: $80
	sbc [hl]                                         ; $6054: $9e
	ccf                                              ; $6055: $3f
	ld c, e                                          ; $6056: $4b
	ldh a, [rBGP]                                    ; $6057: $f0 $47
	ldh [rSCX], a                                    ; $6059: $e0 $43
	ldh a, [$9d]                                     ; $605b: $f0 $9d
	dec b                                            ; $605d: $05
	ld b, $dd                                        ; $605e: $06 $dd
	rlca                                             ; $6060: $07
	sbc e                                            ; $6061: $9b
	ld sp, hl                                        ; $6062: $f9
	rrca                                             ; $6063: $0f
	cp $0f                                           ; $6064: $fe $0f
	inc bc                                           ; $6066: $03
	ld h, b                                          ; $6067: $60
	inc bc                                           ; $6068: $03
	ld h, b                                          ; $6069: $60
	ld b, a                                          ; $606a: $47
	ld h, b                                          ; $606b: $60
	ld a, a                                          ; $606c: $7f
	or l                                             ; $606d: $b5
	sbc l                                            ; $606e: $9d
	dec hl                                           ; $606f: $2b
	rst SubAFromBC                                          ; $6070: $e7
	ld c, a                                          ; $6071: $4f
	sub b                                            ; $6072: $90
	sbc l                                            ; $6073: $9d
	ld a, [$57fc]                                    ; $6074: $fa $fc $57
	ldh a, [hDisp1_WX]                                     ; $6077: $f0 $96
	sub d                                            ; $6079: $92
	pop hl                                           ; $607a: $e1
	cp a                                             ; $607b: $bf
	ld a, a                                          ; $607c: $7f
	ld d, l                                          ; $607d: $55
	rst $38                                          ; $607e: $ff
	xor d                                            ; $607f: $aa
	rst $38                                          ; $6080: $ff
	ld d, l                                          ; $6081: $55
	ld [hl], e                                       ; $6082: $73
	pop af                                           ; $6083: $f1
	ld l, a                                          ; $6084: $6f
	cp $47                                           ; $6085: $fe $47
	ldh a, [$9c]                                     ; $6087: $f0 $9c
	ld d, [hl]                                       ; $6089: $56
	rst $38                                          ; $608a: $ff
	xor e                                            ; $608b: $ab
	ld d, e                                          ; $608c: $53
	ldh a, [$9a]                                     ; $608d: $f0 $9a
	push bc                                          ; $608f: $c5
	inc bc                                           ; $6090: $03
	add l                                            ; $6091: $85
	jp Jump_05f_5b7e                                 ; $6092: $c3 $7e $5b


	ldh a, [$98]                                     ; $6095: $f0 $98
	ld l, a                                          ; $6097: $6f
	or b                                             ; $6098: $b0
	ccf                                              ; $6099: $3f
	rst SubAFromDE                                          ; $609a: $df
	sub b                                            ; $609b: $90
	ldh [$7f], a                                     ; $609c: $e0 $7f
	ld h, e                                          ; $609e: $63
	ldh a, [$98]                                     ; $609f: $f0 $98
	or $0d                                           ; $60a1: $f6 $0d
	db $fc                                           ; $60a3: $fc
	ei                                               ; $60a4: $fb
	add hl, bc                                       ; $60a5: $09
	rlca                                             ; $60a6: $07
	cp $63                                           ; $60a7: $fe $63
	ldh a, [$9b]                                     ; $60a9: $f0 $9b
	and b                                            ; $60ab: $a0
	pop bc                                           ; $60ac: $c1
	and c                                            ; $60ad: $a1
	jp $e25f                                         ; $60ae: $c3 $5f $e2


	ld a, a                                          ; $60b1: $7f
	cp $98                                           ; $60b2: $fe $98
	ld a, l                                          ; $60b4: $7d
	rst $38                                          ; $60b5: $ff
	rst GetHLinHL                                          ; $60b6: $cf
	add a                                            ; $60b7: $87
	ld a, d                                          ; $60b8: $7a
	db $fc                                           ; $60b9: $fc
	rlca                                             ; $60ba: $07
	ld h, e                                          ; $60bb: $63
	ldh a, [$98]                                     ; $60bc: $f0 $98
	push af                                          ; $60be: $f5
	adc $bb                                          ; $60bf: $ce $bb
	pop af                                           ; $60c1: $f1
	cpl                                              ; $60c2: $2f
	rra                                              ; $60c3: $1f
	ld hl, sp+$63                                    ; $60c4: $f8 $63
	ldh a, [$9e]                                     ; $60c6: $f0 $9e
	jp $687b                                         ; $60c8: $c3 $7b $68


	sbc e                                            ; $60cb: $9b
	ld d, a                                          ; $60cc: $57
	adc a                                            ; $60cd: $8f
	ld sp, hl                                        ; $60ce: $f9
	cp $67                                           ; $60cf: $fe $67
	sbc $7f                                          ; $60d1: $de $7f
	call nz, $b69a                                   ; $60d3: $c4 $9a $b6
	pop bc                                           ; $60d6: $c1
	rst $38                                          ; $60d7: $ff
	rst $38                                          ; $60d8: $ff
	call z, $d879                                    ; $60d9: $cc $79 $d8
	ld a, l                                          ; $60dc: $7d
	ret                                              ; $60dd: $c9


	ld l, e                                          ; $60de: $6b
	dec sp                                           ; $60df: $3b
	sub [hl]                                         ; $60e0: $96
	cp $6d                                           ; $60e1: $fe $6d
	add e                                            ; $60e3: $83
	rst $38                                          ; $60e4: $ff
	rst $38                                          ; $60e5: $ff
	db $fc                                           ; $60e6: $fc
	ld hl, sp+$57                                    ; $60e7: $f8 $57
	adc a                                            ; $60e9: $8f
	ld [hl], a                                       ; $60ea: $77
	jp z, $de96                                      ; $60eb: $ca $96 $de

	cp a                                             ; $60ee: $bf
	ei                                               ; $60ef: $fb
	ld [hl], a                                       ; $60f0: $77
	rst SubAFromDE                                          ; $60f1: $df
	adc a                                            ; $60f2: $8f
	ldh a, [rIE]                                     ; $60f3: $f0 $ff
	ret nz                                           ; $60f5: $c0

	ld a, c                                          ; $60f6: $79
	cp a                                             ; $60f7: $bf
	ld [hl], a                                       ; $60f8: $77
	ldh [$7e], a                                     ; $60f9: $e0 $7e
	adc $03                                          ; $60fb: $ce $03
	ld h, b                                          ; $60fd: $60
	ld d, e                                          ; $60fe: $53
	ld h, b                                          ; $60ff: $60
	ld a, [hl]                                       ; $6100: $7e
	adc $7f                                          ; $6101: $ce $7f
	ld h, b                                          ; $6103: $60
	ld d, a                                          ; $6104: $57
	ret nc                                           ; $6105: $d0

	sub [hl]                                         ; $6106: $96
	ld a, e                                          ; $6107: $7b
	db $fc                                           ; $6108: $fc
	rst AddAOntoHL                                          ; $6109: $ef
	rst $38                                          ; $610a: $ff
	cp [hl]                                          ; $610b: $be
	inc e                                            ; $610c: $1c
	rst FarCall                                          ; $610d: $f7
	db $e3                                           ; $610e: $e3
	inc e                                            ; $610f: $1c
	ld l, e                                          ; $6110: $6b
	ldh a, [$98]                                     ; $6111: $f0 $98
	ld e, e                                          ; $6113: $5b
	rst SubAFromBC                                          ; $6114: $e7
	xor a                                            ; $6115: $af
	rst SubAFromDE                                          ; $6116: $df
	db $f4                                           ; $6117: $f4
	ld a, b                                          ; $6118: $78
	adc a                                            ; $6119: $8f
	ld e, a                                          ; $611a: $5f
	ld d, b                                          ; $611b: $50
	sbc c                                            ; $611c: $99
	ld hl, sp-$79                                    ; $611d: $f8 $87
	rst GetHLinHL                                          ; $611f: $cf
	ld e, l                                          ; $6120: $5d
	ccf                                              ; $6121: $3f
	ldh [$63], a                                     ; $6122: $e0 $63
	ldh a, [$30]                                     ; $6124: $f0 $30
	nop                                              ; $6126: $00
	jp nc, $df22                                     ; $6127: $d2 $22 $df

	inc sp                                           ; $612a: $33
	ld d, e                                          ; $612b: $53
	or $9b                                           ; $612c: $f6 $9b
	daa                                              ; $612e: $27
	ld [hl], a                                       ; $612f: $77
	ld [hl+], a                                      ; $6130: $22
	ld b, h                                          ; $6131: $44
	db $dd                                           ; $6132: $dd
	inc sp                                           ; $6133: $33
	sbc e                                            ; $6134: $9b
	ld b, h                                          ; $6135: $44
	ld [hl+], a                                      ; $6136: $22
	ld h, $66                                        ; $6137: $26 $66
	ld d, a                                          ; $6139: $57
	or $df                                           ; $613a: $f6 $df
	ld b, h                                          ; $613c: $44
	sub a                                            ; $613d: $97
	ld b, e                                          ; $613e: $43
	inc sp                                           ; $613f: $33
	inc [hl]                                         ; $6140: $34
	ld [hl+], a                                      ; $6141: $22
	daa                                              ; $6142: $27
	ld h, e                                          ; $6143: $63
	inc sp                                           ; $6144: $33
	inc [hl]                                         ; $6145: $34
	ld h, e                                          ; $6146: $63
	or $9b                                           ; $6147: $f6 $9b
	ld [hl-], a                                      ; $6149: $32
	ld [hl+], a                                      ; $614a: $22
	ld [hl+], a                                      ; $614b: $22
	inc hl                                           ; $614c: $23
	ld a, e                                          ; $614d: $7b
	ei                                               ; $614e: $fb
	scf                                              ; $614f: $37
	or $7b                                           ; $6150: $f6 $7b
	ei                                               ; $6152: $fb
	jp c, $2a33                                      ; $6153: $da $33 $2a

	ld b, $df                                        ; $6156: $06 $df
	rst $38                                          ; $6158: $ff
	sbc d                                            ; $6159: $9a
	di                                               ; $615a: $f3
	rst $38                                          ; $615b: $ff
	pop hl                                           ; $615c: $e1
	rst $38                                          ; $615d: $ff
	ret nz                                           ; $615e: $c0

	ld a, e                                          ; $615f: $7b
	cp $98                                           ; $6160: $fe $98
	add h                                            ; $6162: $84
	ei                                               ; $6163: $fb
	add h                                            ; $6164: $84
	ei                                               ; $6165: $fb
	adc h                                            ; $6166: $8c
	di                                               ; $6167: $f3
	rst $38                                          ; $6168: $ff
	ld d, e                                          ; $6169: $53
	ldh a, [c]                                       ; $616a: $f2
	daa                                              ; $616b: $27
	ldh a, [$9c]                                     ; $616c: $f0 $9c
	call nz, $c4fb                                   ; $616e: $c4 $fb $c4
	ld [hl], e                                       ; $6171: $73
	ldh a, [c]                                       ; $6172: $f2
	ld [hl], a                                       ; $6173: $77
	ldh a, [$9e]                                     ; $6174: $f0 $9e
	pop bc                                           ; $6176: $c1
	ld a, e                                          ; $6177: $7b
	ldh a, [c]                                       ; $6178: $f2
	ld l, a                                          ; $6179: $6f
	db $f4                                           ; $617a: $f4
	sbc e                                            ; $617b: $9b
	sbc h                                            ; $617c: $9c
	db $e3                                           ; $617d: $e3
	sbc h                                            ; $617e: $9c
	db $e3                                           ; $617f: $e3
	ld l, a                                          ; $6180: $6f
	ldh a, [$6f]                                     ; $6181: $f0 $6f
	call nc, $ee77                                   ; $6183: $d4 $77 $ee
	rla                                              ; $6186: $17
	ldh a, [$5f]                                     ; $6187: $f0 $5f
	ret nc                                           ; $6189: $d0

	ld h, a                                          ; $618a: $67
	ldh a, [c]                                       ; $618b: $f2
	ld l, a                                          ; $618c: $6f
	ldh a, [$7f]                                     ; $618d: $f0 $7f
	and b                                            ; $618f: $a0
	sbc l                                            ; $6190: $9d
	adc b                                            ; $6191: $88
	rst FarCall                                          ; $6192: $f7
	ld l, a                                          ; $6193: $6f
	xor $8d                                          ; $6194: $ee $8d
	sbc [hl]                                         ; $6196: $9e
	pop hl                                           ; $6197: $e1
	rst $38                                          ; $6198: $ff
	rst $38                                          ; $6199: $ff
	add e                                            ; $619a: $83
	rst $38                                          ; $619b: $ff
	inc bc                                           ; $619c: $03
	rst $38                                          ; $619d: $ff
	ld de, $39ef                                     ; $619e: $11 $ef $39

jr_05f_61a1:
	rst JumpTable                                          ; $61a1: $c7
	ld sp, $39cf                                     ; $61a2: $31 $cf $39
	rst JumpTable                                          ; $61a5: $c7
	add hl, sp                                       ; $61a6: $39
	rst JumpTable                                          ; $61a7: $c7
	ld [hl], a                                       ; $61a8: $77
	ldh a, [$9b]                                     ; $61a9: $f0 $9b
	inc hl                                           ; $61ab: $23
	rst SubAFromDE                                          ; $61ac: $df
	ld sp, $6fcf                                     ; $61ad: $31 $cf $6f
	ldh a, [c]                                       ; $61b0: $f2
	ld h, a                                          ; $61b1: $67
	ldh a, [$9e]                                     ; $61b2: $f0 $9e
	ld hl, $ee63                                     ; $61b4: $21 $63 $ee
	ld d, a                                          ; $61b7: $57
	ldh a, [rPCM34]                                  ; $61b8: $f0 $77
	xor $03                                          ; $61ba: $ee $03
	ldh a, [$9d]                                     ; $61bc: $f0 $9d
	rst $38                                          ; $61be: $ff
	add a                                            ; $61bf: $87
	ld a, e                                          ; $61c0: $7b
	and b                                            ; $61c1: $a0
	ld a, a                                          ; $61c2: $7f
	xor $6f                                          ; $61c3: $ee $6f
	xor h                                            ; $61c5: $ac
	ld a, a                                          ; $61c6: $7f
	cp $6f                                           ; $61c7: $fe $6f
	ldh a, [$7f]                                     ; $61c9: $f0 $7f
	cp $7f                                           ; $61cb: $fe $7f
	sbc $6f                                          ; $61cd: $de $6f
	call c, $f03f                                    ; $61cf: $dc $3f $f0
	ld a, a                                          ; $61d2: $7f
	db $fd                                           ; $61d3: $fd
	ld d, a                                          ; $61d4: $57
	xor $9d                                          ; $61d5: $ee $9d
	inc c                                            ; $61d7: $0c
	di                                               ; $61d8: $f3
	ld [hl], a                                       ; $61d9: $77
	cp $95                                           ; $61da: $fe $95
	and l                                            ; $61dc: $a5
	jr jr_05f_61a1                                   ; $61dd: $18 $c2

	ld bc, $f30c                                     ; $61df: $01 $0c $f3
	sub b                                            ; $61e2: $90
	rst AddAOntoHL                                          ; $61e3: $ef
	pop bc                                           ; $61e4: $c1
	rst $38                                          ; $61e5: $ff
	ld h, a                                          ; $61e6: $67
	ldh a, [$99]                                     ; $61e7: $f0 $99
	ld b, d                                          ; $61e9: $42

jr_05f_61ea:
	add c                                            ; $61ea: $81
	inc c                                            ; $61eb: $0c
	di                                               ; $61ec: $f3
	jr @-$17                                         ; $61ed: $18 $e7

	ld e, a                                          ; $61ef: $5f
	ldh a, [rPCM34]                                  ; $61f0: $f0 $77
	ldh [$3f], a                                     ; $61f2: $e0 $3f
	ldh a, [$9b]                                     ; $61f4: $f0 $9b
	add c                                            ; $61f6: $81
	rst $38                                          ; $61f7: $ff
	inc e                                            ; $61f8: $1c
	db $e3                                           ; $61f9: $e3
	ld l, a                                          ; $61fa: $6f
	ldh a, [$9d]                                     ; $61fb: $f0 $9d
	ld b, e                                          ; $61fd: $43
	add b                                            ; $61fe: $80

jr_05f_61ff:
	ld h, a                                          ; $61ff: $67

jr_05f_6200:
	ldh a, [rPCM34]                                  ; $6200: $f0 $77
	xor $03                                          ; $6202: $ee $03
	ldh a, [$73]                                     ; $6204: $f0 $73
	ldh a, [$7f]                                     ; $6206: $f0 $7f
	or $5f                                           ; $6208: $f6 $5f
	ret nz                                           ; $620a: $c0

	ld a, a                                          ; $620b: $7f
	sub b                                            ; $620c: $90
	sub e                                            ; $620d: $93
	ld c, $f1                                        ; $620e: $0e $f1
	inc e                                            ; $6210: $1c
	db $e3                                           ; $6211: $e3
	pop bc                                           ; $6212: $c1
	rst $38                                          ; $6213: $ff
	ld e, $e1                                        ; $6214: $1e $e1
	ld c, $f1                                        ; $6216: $0e $f1
	ld c, $f1                                        ; $6218: $0e $f1
	ld h, a                                          ; $621a: $67
	ldh a, [$7f]                                     ; $621b: $f0 $7f
	ldh [hDisp1_WY], a                                     ; $621d: $e0 $95
	jr c, @-$37                                      ; $621f: $38 $c7

	jr c, jr_05f_61ea                                ; $6221: $38 $c7

	inc a                                            ; $6223: $3c
	jp $0099                                         ; $6224: $c3 $99 $00


	ld [hl+], a                                      ; $6227: $22
	pop bc                                           ; $6228: $c1
	ld [hl], a                                       ; $6229: $77
	or $77                                           ; $622a: $f6 $77
	ldh a, [$9b]                                     ; $622c: $f0 $9b
	jr nc, jr_05f_61ff                               ; $622e: $30 $cf

	jr nc, @-$2f                                     ; $6230: $30 $cf

	ld [hl], a                                       ; $6232: $77
	add b                                            ; $6233: $80
	sbc d                                            ; $6234: $9a
	ld [hl], b                                       ; $6235: $70
	adc a                                            ; $6236: $8f
	jr c, jr_05f_6200                                ; $6237: $38 $c7

	add e                                            ; $6239: $83
	ld [hl], e                                       ; $623a: $73
	ldh [$6f], a                                     ; $623b: $e0 $6f
	ldh a, [$7f]                                     ; $623d: $f0 $7f
	ld a, [$e06f]                                    ; $623f: $fa $6f $e0
	ld e, a                                          ; $6242: $5f
	ldh a, [rPCM34]                                  ; $6243: $f0 $77
	sub b                                            ; $6245: $90
	ld c, a                                          ; $6246: $4f
	ldh a, [$9e]                                     ; $6247: $f0 $9e
	nop                                              ; $6249: $00
	ld b, e                                          ; $624a: $43
	ldh [rPCM34], a                                  ; $624b: $e0 $77
	or d                                             ; $624d: $b2
	ld [hl], a                                       ; $624e: $77
	ldh a, [$7f]                                     ; $624f: $f0 $7f
	ld [hl], b                                       ; $6251: $70
	scf                                              ; $6252: $37
	ldh a, [$7f]                                     ; $6253: $f0 $7f
	and b                                            ; $6255: $a0
	ld h, a                                          ; $6256: $67
	ldh a, [$7f]                                     ; $6257: $f0 $7f
	ld [hl], b                                       ; $6259: $70
	ld c, a                                          ; $625a: $4f
	ldh a, [rPCM34]                                  ; $625b: $f0 $77
	ldh [$9c], a                                     ; $625d: $e0 $9c
	add hl, bc                                       ; $625f: $09

jr_05f_6260:
	rst FarCall                                          ; $6260: $f7
	add e                                            ; $6261: $83
	ld a, d                                          ; $6262: $7a
	ld [hl], d                                       ; $6263: $72
	db $dd                                           ; $6264: $dd
	rst $38                                          ; $6265: $ff
	sbc d                                            ; $6266: $9a
	or a                                             ; $6267: $b7
	rst $38                                          ; $6268: $ff
	sub a                                            ; $6269: $97
	rst $38                                          ; $626a: $ff
	sub e                                            ; $626b: $93
	ld a, e                                          ; $626c: $7b
	cp $9c                                           ; $626d: $fe $9c
	inc de                                           ; $626f: $13
	rst $38                                          ; $6270: $ff
	ld a, a                                          ; $6271: $7f
	ld [hl], e                                       ; $6272: $73
	cp $9c                                           ; $6273: $fe $9c
	ld a, l                                          ; $6275: $7d
	rst $38                                          ; $6276: $ff
	ld a, c                                          ; $6277: $79
	ld a, e                                          ; $6278: $7b
	cp $9e                                           ; $6279: $fe $9e
	ld [hl], c                                       ; $627b: $71
	ld a, e                                          ; $627c: $7b
	cp $db                                           ; $627d: $fe $db
	rst $38                                          ; $627f: $ff
	sbc h                                            ; $6280: $9c
	db $fd                                           ; $6281: $fd
	rst $38                                          ; $6282: $ff
	ld sp, hl                                        ; $6283: $f9
	ld a, e                                          ; $6284: $7b
	cp $9e                                           ; $6285: $fe $9e
	pop af                                           ; $6287: $f1
	ld a, e                                          ; $6288: $7b
	cp $67                                           ; $6289: $fe $67
	ldh a, [$9c]                                     ; $628b: $f0 $9c
	ld hl, sp-$01                                    ; $628d: $f8 $ff
	ret c                                            ; $628f: $d8

	ld [hl], e                                       ; $6290: $73
	cp $d9                                           ; $6291: $fe $d9
	rst $38                                          ; $6293: $ff
	ld l, a                                          ; $6294: $6f
	sbc $7f                                          ; $6295: $de $7f
	cp $8c                                           ; $6297: $fe $8c
	add b                                            ; $6299: $80
	ld a, a                                          ; $629a: $7f
	ld a, a                                          ; $629b: $7f
	add b                                            ; $629c: $80
	ld b, b                                          ; $629d: $40
	nop                                              ; $629e: $00
	ld b, c                                          ; $629f: $41
	ld bc, $1f4f                                     ; $62a0: $01 $4f $1f
	ld b, d                                          ; $62a3: $42
	ld b, $42                                        ; $62a4: $06 $42
	inc bc                                           ; $62a6: $03
	ld b, c                                          ; $62a7: $41
	inc bc                                           ; $62a8: $03
	nop                                              ; $62a9: $00
	rst $38                                          ; $62aa: $ff
	rst $38                                          ; $62ab: $ff
	cp $95                                           ; $62ac: $fe $95
	ld bc, $f381                                     ; $62ae: $01 $81 $f3
	rst $38                                          ; $62b1: $ff
	ld b, b                                          ; $62b2: $40
	ld h, c                                          ; $62b3: $61
	ld b, a                                          ; $62b4: $47
	ld b, a                                          ; $62b5: $47
	add b                                            ; $62b6: $80
	ret nz                                           ; $62b7: $c0

	ld l, a                                          ; $62b8: $6f
	ldh a, [$df]                                     ; $62b9: $f0 $df
	db $10                                           ; $62bb: $10
	rst SubAFromDE                                          ; $62bc: $df
	ld sp, hl                                        ; $62bd: $f9
	sbc e                                            ; $62be: $9b
	sub b                                            ; $62bf: $90
	or b                                             ; $62c0: $b0
	pop af                                           ; $62c1: $f1
	pop af                                           ; $62c2: $f1
	cp $73                                           ; $62c3: $fe $73
	ldh a, [$df]                                     ; $62c5: $f0 $df
	jr nz, jr_05f_6260                               ; $62c7: $20 $97

	ld a, [$95ff]                                    ; $62c9: $fa $ff $95
	push de                                          ; $62cc: $d5
	or $ff                                           ; $62cd: $f6 $ff
	dec b                                            ; $62cf: $05
	dec b                                            ; $62d0: $05
	ld l, a                                          ; $62d1: $6f
	ldh a, [$f6]                                     ; $62d2: $f0 $f6
	ld [hl], e                                       ; $62d4: $73
	ldh a, [$df]                                     ; $62d5: $f0 $df
	inc c                                            ; $62d7: $0c
	sub a                                            ; $62d8: $97
	ld de, $3e19                                     ; $62d9: $11 $19 $3e
	ccf                                              ; $62dc: $3f
	ld [bc], a                                       ; $62dd: $02
	ld [bc], a                                       ; $62de: $02
	ld c, d                                          ; $62df: $4a
	ld c, d                                          ; $62e0: $4a
	ld l, e                                          ; $62e1: $6b

jr_05f_62e2:
	ret nz                                           ; $62e2: $c0

	sub [hl]                                         ; $62e3: $96
	jr @+$3e                                         ; $62e4: $18 $3c

	dec a                                            ; $62e6: $3d
	inc de                                           ; $62e7: $13
	sbc e                                            ; $62e8: $9b
	add hl, bc                                       ; $62e9: $09
	dec e                                            ; $62ea: $1d
	ld d, h                                          ; $62eb: $54
	ld e, h                                          ; $62ec: $5c
	ld l, a                                          ; $62ed: $6f
	ldh a, [$df]                                     ; $62ee: $f0 $df
	ld b, b                                          ; $62f0: $40
	sbc d                                            ; $62f1: $9a
	and b                                            ; $62f2: $a0
	ldh [rAUD1SWEEP], a                              ; $62f3: $e0 $10
	jr nc, jr_05f_62e2                               ; $62f5: $30 $eb

	ld [hl], a                                       ; $62f7: $77
	push af                                          ; $62f8: $f5
	ld l, e                                          ; $62f9: $6b
	ldh a, [$df]                                     ; $62fa: $f0 $df
	ld b, b                                          ; $62fc: $40
	sbc c                                            ; $62fd: $99
	ld b, c                                          ; $62fe: $41

Jump_05f_62ff:
	ld c, c                                          ; $62ff: $49
	ld a, [$40ff]                                    ; $6300: $fa $ff $40
	ldh [rPCM34], a                                  ; $6303: $e0 $77
	ldh a, [hDisp1_OBP1]                                     ; $6305: $f0 $94
	ld [bc], a                                       ; $6307: $02
	nop                                              ; $6308: $00
	ld b, d                                          ; $6309: $42
	ld h, b                                          ; $630a: $60
	and d                                            ; $630b: $a2
	ldh a, [rAUD1ENV]                                ; $630c: $f0 $12
	sbc b                                            ; $630e: $98
	ld [$02ec], a                                    ; $630f: $ea $ec $02
	ld a, e                                          ; $6312: $7b
	pop af                                           ; $6313: $f1
	db $db                                           ; $6314: $db
	rst $38                                          ; $6315: $ff
	sbc h                                            ; $6316: $9c
	rst SubAFromDE                                          ; $6317: $df
	rst $38                                          ; $6318: $ff
	sbc a                                            ; $6319: $9f
	ld a, e                                          ; $631a: $7b
	cp $9e                                           ; $631b: $fe $9e
	adc a                                            ; $631d: $8f
	ret c                                            ; $631e: $d8

	rst $38                                          ; $631f: $ff
	ld a, a                                          ; $6320: $7f
	ldh a, [$7f]                                     ; $6321: $f0 $7f
	db $f4                                           ; $6323: $f4
	ld a, l                                          ; $6324: $7d
	xor b                                            ; $6325: $a8
	sbc l                                            ; $6326: $9d
	and a                                            ; $6327: $a7
	rst SubAFromDE                                          ; $6328: $df
	reti                                             ; $6329: $d9


	rst $38                                          ; $632a: $ff
	sbc [hl]                                         ; $632b: $9e
	rst AddAOntoHL                                          ; $632c: $ef
	ld a, c                                          ; $632d: $79
	sbc b                                            ; $632e: $98
	ld a, l                                          ; $632f: $7d
	ld h, e                                          ; $6330: $63
	ld a, c                                          ; $6331: $79
	ld h, c                                          ; $6332: $61
	ld h, e                                          ; $6333: $63
	ldh [$7f], a                                     ; $6334: $e0 $7f
	ldh a, [rPCM34]                                  ; $6336: $f0 $77
	sbc $7e                                          ; $6338: $de $7e
	ld e, $dd                                        ; $633a: $1e $dd
	rst $38                                          ; $633c: $ff
	sbc d                                            ; $633d: $9a
	db $ed                                           ; $633e: $ed
	rst $38                                          ; $633f: $ff
	jp hl                                            ; $6340: $e9


	rst $38                                          ; $6341: $ff
	ret                                              ; $6342: $c9


	ld a, e                                          ; $6343: $7b
	cp $97                                           ; $6344: $fe $97
	ret z                                            ; $6346: $c8

	rst $38                                          ; $6347: $ff
	ld de, $01ff                                     ; $6348: $11 $ff $01
	rst $38                                          ; $634b: $ff
	ld b, c                                          ; $634c: $41
	cp a                                             ; $634d: $bf
	ld e, a                                          ; $634e: $5f
	cp $7e                                           ; $634f: $fe $7e
	adc $9b                                          ; $6351: $ce $9b
	ld h, c                                          ; $6353: $61
	rst $38                                          ; $6354: $ff
	ld h, l                                          ; $6355: $65
	ei                                               ; $6356: $fb
	ld e, a                                          ; $6357: $5f
	cp $9a                                           ; $6358: $fe $9a
	ldh a, [rIE]                                     ; $635a: $f0 $ff
	ldh a, [rIE]                                     ; $635c: $f0 $ff
	ldh [rOCPD], a                                   ; $635e: $e0 $6b
	cp $74                                           ; $6360: $fe $74
	ld c, d                                          ; $6362: $4a
	ld a, [hl]                                       ; $6363: $7e
	adc $9e                                          ; $6364: $ce $9e
	ret nc                                           ; $6366: $d0

	ld a, e                                          ; $6367: $7b
	cp $9b                                           ; $6368: $fe $9b
	sub b                                            ; $636a: $90
	rst $38                                          ; $636b: $ff
	sub d                                            ; $636c: $92
	db $fd                                           ; $636d: $fd
	ld l, a                                          ; $636e: $6f
	cp $7e                                           ; $636f: $fe $7e
	adc $7f                                          ; $6371: $ce $7f
	or [hl]                                          ; $6373: $b6
	ld a, a                                          ; $6374: $7f
	cp $9a                                           ; $6375: $fe $9a
	db $eb                                           ; $6377: $eb
	db $fd                                           ; $6378: $fd
	db $eb                                           ; $6379: $eb
	db $fd                                           ; $637a: $fd
	db $e3                                           ; $637b: $e3
	ld [hl], e                                       ; $637c: $73
	cp $94                                           ; $637d: $fe $94
	ld b, b                                          ; $637f: $40
	ld bc, $0341                                     ; $6380: $01 $41 $03
	ld b, d                                          ; $6383: $42
	ld b, $4c                                        ; $6384: $06 $4c
	inc e                                            ; $6386: $1c
	ld b, b                                          ; $6387: $40
	nop                                              ; $6388: $00
	ld a, a                                          ; $6389: $7f
	ld [hl], e                                       ; $638a: $73
	inc sp                                           ; $638b: $33
	sub a                                            ; $638c: $97
	inc bc                                           ; $638d: $03
	add a                                            ; $638e: $87
	add b                                            ; $638f: $80
	add c                                            ; $6390: $81
	ld b, c                                          ; $6391: $41
	jp Jump_05f_7723                                 ; $6392: $c3 $23 $77


	ld a, e                                          ; $6395: $7b
	db $f4                                           ; $6396: $f4
	ld [hl], e                                       ; $6397: $73
	ldh a, [$97]                                     ; $6398: $f0 $97
	ld hl, sp-$04                                    ; $639a: $f8 $fc
	add b                                            ; $639c: $80
	sub b                                            ; $639d: $90
	jr nc, jr_05f_6418                               ; $639e: $30 $78

	ret z                                            ; $63a0: $c8

	call c, $f067                                    ; $63a1: $dc $67 $f0
	rst SubAFromDE                                          ; $63a4: $df
	push af                                          ; $63a5: $f5
	ld a, [hl]                                       ; $63a6: $7e
	ret z                                            ; $63a7: $c8

	sbc e                                            ; $63a8: $9b
	sub [hl]                                         ; $63a9: $96
	rst SubAFromHL                                          ; $63aa: $d7
	db $f4                                           ; $63ab: $f4
	db $f4                                           ; $63ac: $f4
	ld h, a                                          ; $63ad: $67
	ldh a, [$5a]                                     ; $63ae: $f0 $5a
	rst JumpTable                                          ; $63b0: $c7
	ld [hl], e                                       ; $63b1: $73
	ldh a, [$97]                                     ; $63b2: $f0 $97
	ccf                                              ; $63b4: $3f
	ld a, a                                          ; $63b5: $7f
	ld a, [bc]                                       ; $63b6: $0a
	ld a, [bc]                                       ; $63b7: $0a
	ld [de], a                                       ; $63b8: $12
	ld a, [de]                                       ; $63b9: $1a
	jr nz, jr_05f_642e                               ; $63ba: $20 $72

	ld h, a                                          ; $63bc: $67
	ldh a, [$97]                                     ; $63bd: $f0 $97
	add e                                            ; $63bf: $83
	jp $1f1d                                         ; $63c0: $c3 $1d $1f


	ld d, $17                                        ; $63c3: $16 $17
	dec e                                            ; $63c5: $1d
	rra                                              ; $63c6: $1f
	ld h, a                                          ; $63c7: $67
	ldh a, [$df]                                     ; $63c8: $f0 $df
	ldh a, [$99]                                     ; $63ca: $f0 $99
	ld d, b                                          ; $63cc: $50
	ld [hl], b                                       ; $63cd: $70
	or c                                             ; $63ce: $b1
	pop af                                           ; $63cf: $f1
	ld d, d                                          ; $63d0: $52
	ld d, e                                          ; $63d1: $53
	ld h, a                                          ; $63d2: $67
	ldh a, [$97]                                     ; $63d3: $f0 $97
	and e                                            ; $63d5: $a3
	db $e3                                           ; $63d6: $e3
	and b                                            ; $63d7: $a0
	and b                                            ; $63d8: $a0
	db $10                                           ; $63d9: $10
	or c                                             ; $63da: $b1
	add hl, bc                                       ; $63db: $09
	dec de                                           ; $63dc: $1b
	ld h, a                                          ; $63dd: $67

Jump_05f_63de:
	ldh a, [hDisp1_OBP1]                                     ; $63de: $f0 $94
	cp d                                             ; $63e0: $ba
	ld hl, sp+$42                                    ; $63e1: $f8 $42
	ret nz                                           ; $63e3: $c0

	adc d                                            ; $63e4: $8a
	sbc b                                            ; $63e5: $98
	or $fc                                           ; $63e6: $f6 $fc
	ld [bc], a                                       ; $63e8: $02
	nop                                              ; $63e9: $00
	cp $73                                           ; $63ea: $fe $73
	ldh a, [$7e]                                     ; $63ec: $f0 $7e
	db $fc                                           ; $63ee: $fc
	ld [hl], a                                       ; $63ef: $77
	cp $9c                                           ; $63f0: $fe $9c
	xor a                                            ; $63f2: $af
	rst SubAFromDE                                          ; $63f3: $df
	and a                                            ; $63f4: $a7
	ld h, e                                          ; $63f5: $63
	cp $9e                                           ; $63f6: $fe $9e
	and e                                            ; $63f8: $a3
	ld [hl], e                                       ; $63f9: $73
	cp $9e                                           ; $63fa: $fe $9e

Call_05f_63fc:
	and c                                            ; $63fc: $a1
	ld [hl], e                                       ; $63fd: $73
	cp $9d                                           ; $63fe: $fe $9d
	or c                                             ; $6400: $b1
	rst GetHLinHL                                          ; $6401: $cf
	halt                                             ; $6402: $76
	call z, $fe7f                                    ; $6403: $cc $7f $fe
	sbc h                                            ; $6406: $9c
	rst SubAFromHL                                          ; $6407: $d7
	rst AddAOntoHL                                          ; $6408: $ef
	db $d3                                           ; $6409: $d3
	ld l, e                                          ; $640a: $6b
	cp $7e                                           ; $640b: $fe $7e
	adc $7f                                          ; $640d: $ce $7f
	cp $9d                                           ; $640f: $fe $9d
	sub a                                            ; $6411: $97
	rst AddAOntoHL                                          ; $6412: $ef
	ld l, a                                          ; $6413: $6f
	cp $9e                                           ; $6414: $fe $9e
	sub e                                            ; $6416: $93
	ld a, e                                          ; $6417: $7b

jr_05f_6418:
	cp $99                                           ; $6418: $fe $99
	adc b                                            ; $641a: $88
	rst $38                                          ; $641b: $ff
	add b                                            ; $641c: $80
	rst $38                                          ; $641d: $ff
	add d                                            ; $641e: $82
	db $fd                                           ; $641f: $fd
	ld e, a                                          ; $6420: $5f
	cp $76                                           ; $6421: $fe $76
	call z, $499d                                    ; $6423: $cc $9d $49
	or a                                             ; $6426: $b7
	ld e, a                                          ; $6427: $5f
	cp $66                                           ; $6428: $fe $66
	ret z                                            ; $642a: $c8

	sbc e                                            ; $642b: $9b
	ld b, l                                          ; $642c: $45
	ei                                               ; $642d: $fb

jr_05f_642e:
	ld c, l                                          ; $642e: $4d
	di                                               ; $642f: $f3
	ld [hl], a                                       ; $6430: $77
	cp $76                                           ; $6431: $fe $76
	call z, $fe77                                    ; $6433: $cc $77 $fe
	sbc [hl]                                         ; $6436: $9e
	add h                                            ; $6437: $84
	ld l, e                                          ; $6438: $6b
	cp $7e                                           ; $6439: $fe $7e
	adc $9d                                          ; $643b: $ce $9d
	sub [hl]                                         ; $643d: $96
	ld sp, hl                                        ; $643e: $f9
	ld [hl], a                                       ; $643f: $77
	cp $9e                                           ; $6440: $fe $9e
	add [hl]                                         ; $6442: $86
	ld l, e                                          ; $6443: $6b
	cp $9d                                           ; $6444: $fe $9d
	ldh [c], a                                       ; $6446: $e2
	db $fd                                           ; $6447: $fd
	ld c, a                                          ; $6448: $4f
	cp $df                                           ; $6449: $fe $df
	rst $38                                          ; $644b: $ff
	ld a, [hl]                                       ; $644c: $7e
	xor [hl]                                         ; $644d: $ae
	ld l, [hl]                                       ; $644e: $6e
	adc h                                            ; $644f: $8c
	ld h, a                                          ; $6450: $67
	ldh a, [$7f]                                     ; $6451: $f0 $7f
	sub b                                            ; $6453: $90
	ld a, l                                          ; $6454: $7d
	adc d                                            ; $6455: $8a
	sbc e                                            ; $6456: $9b
	sbc h                                            ; $6457: $9c
	call c, $d090                                    ; $6458: $dc $90 $d0
	ld l, a                                          ; $645b: $6f
	cp $7a                                           ; $645c: $fe $7a
	sbc $7b                                          ; $645e: $de $7b
	daa                                              ; $6460: $27
	rst SubAFromDE                                          ; $6461: $df
	ld b, $df                                        ; $6462: $06 $df
	dec b                                            ; $6464: $05
	rst SubAFromDE                                          ; $6465: $df
	rlca                                             ; $6466: $07
	sbc e                                            ; $6467: $9b
	dec b                                            ; $6468: $05
	dec c                                            ; $6469: $0d
	rrca                                             ; $646a: $0f
	rra                                              ; $646b: $1f
	ld l, a                                          ; $646c: $6f
	ldh a, [$df]                                     ; $646d: $f0 $df
	and b                                            ; $646f: $a0
	rst SubAFromDE                                          ; $6470: $df
	ld b, b                                          ; $6471: $40
	rst SubAFromDE                                          ; $6472: $df
	ldh a, [$df]                                     ; $6473: $f0 $df
	ld b, b                                          ; $6475: $40
	rst SubAFromDE                                          ; $6476: $df
	pop hl                                           ; $6477: $e1
	ld l, a                                          ; $6478: $6f
	ldh a, [$fd]                                     ; $6479: $f0 $fd
	rst SubAFromDE                                          ; $647b: $df
	ld a, b                                          ; $647c: $78
	sbc e                                            ; $647d: $9b
	and h                                            ; $647e: $a4
	xor h                                            ; $647f: $ac
	inc h                                            ; $6480: $24
	and h                                            ; $6481: $a4
	ld l, a                                          ; $6482: $6f
	ldh a, [$df]                                     ; $6483: $f0 $df
	db $10                                           ; $6485: $10
	rst SubAFromDE                                          ; $6486: $df
	ld a, a                                          ; $6487: $7f
	rst SubAFromDE                                          ; $6488: $df
	db $10                                           ; $6489: $10
	rst SubAFromDE                                          ; $648a: $df
	rla                                              ; $648b: $17
	sbc l                                            ; $648c: $9d
	ld hl, $6731                                     ; $648d: $21 $31 $67
	ldh [$df], a                                     ; $6490: $e0 $df
	add d                                            ; $6492: $82
	rst SubAFromDE                                          ; $6493: $df
	rrca                                             ; $6494: $0f
	db $dd                                           ; $6495: $dd
	ld [bc], a                                       ; $6496: $02
	ld e, a                                          ; $6497: $5f
	ret nc                                           ; $6498: $d0

	rst SubAFromDE                                          ; $6499: $df
	ldh a, [$75]                                     ; $649a: $f0 $75
	adc b                                            ; $649c: $88
	rst SubAFromDE                                          ; $649d: $df
	rst $38                                          ; $649e: $ff
	ld a, l                                          ; $649f: $7d
	ldh a, [$9d]                                     ; $64a0: $f0 $9d
	ld bc, $6703                                     ; $64a2: $01 $03 $67
	cp $9c                                           ; $64a5: $fe $9c
	add hl, bc                                       ; $64a7: $09
	dec bc                                           ; $64a8: $0b
	rst $38                                          ; $64a9: $ff
	ld a, c                                          ; $64aa: $79
	sbc d                                            ; $64ab: $9a
	sub [hl]                                         ; $64ac: $96
	rrca                                             ; $64ad: $0f
	rst $38                                          ; $64ae: $ff
	ld c, a                                          ; $64af: $4f
	cp a                                             ; $64b0: $bf
	ld b, a                                          ; $64b1: $47
	cp a                                             ; $64b2: $bf
	ld h, a                                          ; $64b3: $67
	sbc a                                            ; $64b4: $9f
	ld h, e                                          ; $64b5: $63
	ld a, e                                          ; $64b6: $7b
	cp $56                                           ; $64b7: $fe $56
	call z, $fe77                                    ; $64b9: $cc $77 $fe
	ld a, [hl]                                       ; $64bc: $7e
	adc $6f                                          ; $64bd: $ce $6f
	cp $9e                                           ; $64bf: $fe $9e
	or b                                             ; $64c1: $b0
	ld l, e                                          ; $64c2: $6b
	cp $7e                                           ; $64c3: $fe $7e
	adc $9e                                          ; $64c5: $ce $9e
	pop de                                           ; $64c7: $d1
	ld d, e                                          ; $64c8: $53
	cp $76                                           ; $64c9: $fe $76
	call z, $fe77                                    ; $64cb: $cc $77 $fe
	sbc e                                            ; $64ce: $9b
	sub c                                            ; $64cf: $91
	rst AddAOntoHL                                          ; $64d0: $ef
	sbc c                                            ; $64d1: $99
	rst SubAFromBC                                          ; $64d2: $e7
	ld [hl], a                                       ; $64d3: $77
	cp $76                                           ; $64d4: $fe $76
	call z, $929d                                    ; $64d6: $cc $9d $92
	db $ed                                           ; $64d9: $ed
	ld e, a                                          ; $64da: $5f
	cp $56                                           ; $64db: $fe $56
	call nz, Call_05f_699b                           ; $64dd: $c4 $9b $69
	sub a                                            ; $64e0: $97
	ld l, c                                          ; $64e1: $69
	sub a                                            ; $64e2: $97
	ld l, [hl]                                       ; $64e3: $6e
	jp z, $fe5f                                      ; $64e4: $ca $5f $fe

	ld a, [hl]                                       ; $64e7: $7e
	adc $9d                                          ; $64e8: $ce $9d
	adc h                                            ; $64ea: $8c
	di                                               ; $64eb: $f3
	ld d, a                                          ; $64ec: $57
	cp $66                                           ; $64ed: $fe $66
	ret z                                            ; $64ef: $c8

	ld [hl], a                                       ; $64f0: $77
	cp $97                                           ; $64f1: $fe $97
	adc [hl]                                         ; $64f3: $8e
	pop af                                           ; $64f4: $f1
	adc [hl]                                         ; $64f5: $8e
	pop af                                           ; $64f6: $f1
	ldh [c], a                                       ; $64f7: $e2
	db $fd                                           ; $64f8: $fd
	and $f9                                          ; $64f9: $e6 $f9
	ld h, a                                          ; $64fb: $67
	cp $9e                                           ; $64fc: $fe $9e
	add $7b                                          ; $64fe: $c6 $7b
	cp $6f                                           ; $6500: $fe $6f
	ld a, [$fe6f]                                    ; $6502: $fa $6f $fe
	sub a                                            ; $6505: $97
	adc $f1                                          ; $6506: $ce $f1
	adc $f1                                          ; $6508: $ce $f1
	sub b                                            ; $650a: $90
	ret nc                                           ; $650b: $d0

	add b                                            ; $650c: $80
	ret nz                                           ; $650d: $c0

	ld h, e                                          ; $650e: $63
	cp $de                                           ; $650f: $fe $de
	rst $38                                          ; $6511: $ff
	rst SubAFromDE                                          ; $6512: $df
	dec b                                            ; $6513: $05
	sbc [hl]                                         ; $6514: $9e
	inc b                                            ; $6515: $04
	ld a, d                                          ; $6516: $7a
	add $77                                          ; $6517: $c6 $77
	db $fc                                           ; $6519: $fc
	ld [hl], c                                       ; $651a: $71
	pop af                                           ; $651b: $f1
	sbc l                                            ; $651c: $9d
	rst $38                                          ; $651d: $ff
	add c                                            ; $651e: $81
	sbc $c1                                          ; $651f: $de $c1
	rst SubAFromDE                                          ; $6521: $df
	pop af                                           ; $6522: $f1
	sbc e                                            ; $6523: $9b
	add b                                            ; $6524: $80
	pop bc                                           ; $6525: $c1
	ld h, b                                          ; $6526: $60
	ld [hl], b                                       ; $6527: $70
	ld l, a                                          ; $6528: $6f
	ldh a, [$de]                                     ; $6529: $f0 $de
	inc h                                            ; $652b: $24
	sbc b                                            ; $652c: $98
	ld h, h                                          ; $652d: $64
	ld b, h                                          ; $652e: $44
	call nz, $8888                                   ; $652f: $c4 $88 $88
	db $10                                           ; $6532: $10
	db $10                                           ; $6533: $10
	ld l, a                                          ; $6534: $6f
	ldh a, [$df]                                     ; $6535: $f0 $df
	ld [hl-], a                                      ; $6537: $32
	sbc l                                            ; $6538: $9d
	rst SubAFromHL                                          ; $6539: $d7
	rst SubAFromDE                                          ; $653a: $df
	db $dd                                           ; $653b: $dd
	ld [de], a                                       ; $653c: $12
	rst SubAFromDE                                          ; $653d: $df
	ld d, $6f                                        ; $653e: $16 $6f
	ldh a, [$df]                                     ; $6540: $f0 $df
	inc b                                            ; $6542: $04
	rst SubAFromDE                                          ; $6543: $df
	sbc l                                            ; $6544: $9d
	db $dd                                           ; $6545: $dd
	inc b                                            ; $6546: $04
	rst SubAFromDE                                          ; $6547: $df
	dec b                                            ; $6548: $05
	ld l, a                                          ; $6549: $6f
	ldh a, [$6e]                                     ; $654a: $f0 $6e
	adc b                                            ; $654c: $88
	ld [hl], a                                       ; $654d: $77
	ld a, [$f06f]                                    ; $654e: $fa $6f $f0
	ld a, [hl]                                       ; $6551: $7e
	adc $6f                                          ; $6552: $ce $6f
	cp $9d                                           ; $6554: $fe $9d
	add hl, sp                                       ; $6556: $39
	dec sp                                           ; $6557: $3b
	ld a, d                                          ; $6558: $7a
	ret nz                                           ; $6559: $c0

	sbc $ff                                          ; $655a: $de $ff
	halt                                             ; $655c: $76
	call z, $fe57                                    ; $655d: $cc $57 $fe
	ld a, [hl]                                       ; $6560: $7e
	adc $9d                                          ; $6561: $ce $9d
	or e                                             ; $6563: $b3
	rst GetHLinHL                                          ; $6564: $cf
	ld d, a                                          ; $6565: $57
	cp $66                                           ; $6566: $fe $66
	ret z                                            ; $6568: $c8

	ld [hl], a                                       ; $6569: $77
	cp $97                                           ; $656a: $fe $97
	cp b                                             ; $656c: $b8
	rst JumpTable                                          ; $656d: $c7
	cp b                                             ; $656e: $b8
	rst JumpTable                                          ; $656f: $c7
	pop de                                           ; $6570: $d1
	rst AddAOntoHL                                          ; $6571: $ef
	reti                                             ; $6572: $d9


	rst SubAFromBC                                          ; $6573: $e7
	ld d, a                                          ; $6574: $57
	cp $6e                                           ; $6575: $fe $6e
	jp z, $fe5f                                      ; $6577: $ca $5f $fe

	ld d, [hl]                                       ; $657a: $56
	call nz, $969b                                   ; $657b: $c4 $9b $96
	jp hl                                            ; $657e: $e9


	sub [hl]                                         ; $657f: $96
	jp hl                                            ; $6580: $e9


	halt                                             ; $6581: $76
	call z, $fe57                                    ; $6582: $cc $57 $fe
	sbc l                                            ; $6585: $9d
	dec c                                            ; $6586: $0d
	di                                               ; $6587: $f3
	ld h, a                                          ; $6588: $67
	cp $9d                                           ; $6589: $fe $9d
	dec e                                            ; $658b: $1d
	db $e3                                           ; $658c: $e3
	ld [hl], a                                       ; $658d: $77
	cp $5e                                           ; $658e: $fe $5e
	add $9d                                          ; $6590: $c6 $9d
	sbc h                                            ; $6592: $9c
	db $e3                                           ; $6593: $e3
	ld [hl], a                                       ; $6594: $77
	cp $76                                           ; $6595: $fe $76
	call z, $fe7f                                    ; $6597: $cc $7f $fe
	sbc [hl]                                         ; $659a: $9e
	ld c, $63                                        ; $659b: $0e $63
	cp $4e                                           ; $659d: $fe $4e
	jp nc, $fe5f                                     ; $659f: $d2 $5f $fe

	ld l, a                                          ; $65a2: $6f
	ret c                                            ; $65a3: $d8

	ld a, a                                          ; $65a4: $7f
	cp $9d                                           ; $65a5: $fe $9d
	ld h, d                                          ; $65a7: $62
	db $fd                                           ; $65a8: $fd
	ld h, a                                          ; $65a9: $67
	cp $9d                                           ; $65aa: $fe $9d
	ld h, [hl]                                       ; $65ac: $66
	ld sp, hl                                        ; $65ad: $f9
	ld [hl], a                                       ; $65ae: $77
	cp $9d                                           ; $65af: $fe $9d
	ld h, e                                          ; $65b1: $63
	db $fc                                           ; $65b2: $fc
	ld h, a                                          ; $65b3: $67
	cp $9d                                           ; $65b4: $fe $9d
	ld h, a                                          ; $65b6: $67
	ld hl, sp+$77                                    ; $65b7: $f8 $77
	cp $9d                                           ; $65b9: $fe $9d
	or e                                             ; $65bb: $b3
	ld a, h                                          ; $65bc: $7c
	ld c, a                                          ; $65bd: $4f
	cp $9d                                           ; $65be: $fe $9d
	ld [hl], e                                       ; $65c0: $73
	db $fc                                           ; $65c1: $fc
	ld c, a                                          ; $65c2: $4f
	cp $9d                                           ; $65c3: $fe $9d
	sbc h                                            ; $65c5: $9c
	ld a, a                                          ; $65c6: $7f
	ld c, a                                          ; $65c7: $4f
	cp $9b                                           ; $65c8: $fe $9b
	rst JumpTable                                          ; $65ca: $c7
	ccf                                              ; $65cb: $3f
	rst SubAFromBC                                          ; $65cc: $e7
	rra                                              ; $65cd: $1f
	ld d, a                                          ; $65ce: $57
	cp $9d                                           ; $65cf: $fe $9d
	halt                                             ; $65d1: $76
	adc a                                            ; $65d2: $8f
	ld c, a                                          ; $65d3: $4f
	cp $9d                                           ; $65d4: $fe $9d
	db $e3                                           ; $65d6: $e3
	rra                                              ; $65d7: $1f
	ld h, a                                          ; $65d8: $67
	cp $9d                                           ; $65d9: $fe $9d
	di                                               ; $65db: $f3
	rrca                                             ; $65dc: $0f
	ld [hl], a                                       ; $65dd: $77
	cp $46                                           ; $65de: $fe $46
	ret nz                                           ; $65e0: $c0

	ld e, [hl]                                       ; $65e1: $5e
	add $9d                                          ; $65e2: $c6 $9d
	cp e                                             ; $65e4: $bb
	rst JumpTable                                          ; $65e5: $c7
	ld [hl], a                                       ; $65e6: $77
	cp $76                                           ; $65e7: $fe $76
	call z, $fe57                                    ; $65e9: $cc $57 $fe
	ld e, [hl]                                       ; $65ec: $5e
	add $9d                                          ; $65ed: $c6 $9d
	sbc l                                            ; $65ef: $9d
	db $e3                                           ; $65f0: $e3
	ld [hl], a                                       ; $65f1: $77
	cp $6e                                           ; $65f2: $fe $6e
	jp z, $989e                                      ; $65f4: $ca $9e $98

	ld a, e                                          ; $65f7: $7b
	cp $6f                                           ; $65f8: $fe $6f
	nop                                              ; $65fa: $00
	halt                                             ; $65fb: $76
	call z, $fe57                                    ; $65fc: $cc $57 $fe
	sbc l                                            ; $65ff: $9d
	ld l, l                                          ; $6600: $6d
	sub e                                            ; $6601: $93
	ld c, a                                          ; $6602: $4f
	cp $6e                                           ; $6603: $fe $6e
	jp z, $fe77                                      ; $6605: $ca $77 $fe

	sbc l                                            ; $6608: $9d
	dec a                                            ; $6609: $3d
	jp $fe77                                         ; $660a: $c3 $77 $fe


	ld l, a                                          ; $660d: $6f
	jp z, $fe5f                                      ; $660e: $ca $5f $fe

	ld e, [hl]                                       ; $6611: $5e
	add $9d                                          ; $6612: $c6 $9d
	ld e, $e1                                        ; $6614: $1e $e1
	ld [hl], a                                       ; $6616: $77
	cp $4e                                           ; $6617: $fe $4e
	jp z, $c85e                                      ; $6619: $ca $5e $c8

	ld a, a                                          ; $661c: $7f
	cp $9d                                           ; $661d: $fe $9d
	sbc [hl]                                         ; $661f: $9e
	pop hl                                           ; $6620: $e1
	ld [hl], a                                       ; $6621: $77
	cp $76                                           ; $6622: $fe $76
	call z, Call_05f_6e9d                            ; $6624: $cc $9d $6e
	pop af                                           ; $6627: $f1
	ld e, a                                          ; $6628: $5f
	cp $6e                                           ; $6629: $fe $6e
	jp z, $fe5f                                      ; $662b: $ca $5f $fe

	halt                                             ; $662e: $76
	call z, $b79d                                    ; $662f: $cc $9d $b7
	ld a, b                                          ; $6632: $78
	ld e, a                                          ; $6633: $5f
	cp $06                                           ; $6634: $fe $06
	ret nz                                           ; $6636: $c0

	ld e, [hl]                                       ; $6637: $5e
	add $6e                                          ; $6638: $c6 $6e
	jp c, $c046                                      ; $663a: $da $46 $c0

	ld l, [hl]                                       ; $663d: $6e
	jp z, $fe5f                                      ; $663e: $ca $5f $fe

	ld l, [hl]                                       ; $6641: $6e
	jp z, Jump_05f_739d                              ; $6642: $ca $9d $73

	adc a                                            ; $6645: $8f
	ld h, a                                          ; $6646: $67
	cp $6e                                           ; $6647: $fe $6e
	jp z, $fe5f                                      ; $6649: $ca $5f $fe

	ld e, [hl]                                       ; $664c: $5e
	add $9d                                          ; $664d: $c6 $9d
	cp h                                             ; $664f: $bc
	jp $fe77                                         ; $6650: $c3 $77 $fe


	ld l, [hl]                                       ; $6653: $6e
	jp z, $fe5f                                      ; $6654: $ca $5f $fe

	ld e, a                                          ; $6657: $5f
	ld b, $6f                                        ; $6658: $06 $6f
	jr nc, @-$61                                     ; $665a: $30 $9d

	or [hl]                                          ; $665c: $b6
	ret                                              ; $665d: $c9


	ld c, a                                          ; $665e: $4f
	cp $46                                           ; $665f: $fe $46
	ret nz                                           ; $6661: $c0

	ld l, [hl]                                       ; $6662: $6e
	jp z, $fe77                                      ; $6663: $ca $77 $fe

	sbc c                                            ; $6666: $99
	cp l                                             ; $6667: $bd
	jp $e799                                         ; $6668: $c3 $99 $e7


	jp Jump_05f_5fff                                 ; $666b: $c3 $ff $5f


	ret nz                                           ; $666e: $c0

	sbc c                                            ; $666f: $99
	call c, $cce3                                    ; $6670: $dc $e3 $cc
	di                                               ; $6673: $f3
	pop hl                                           ; $6674: $e1
	rst $38                                          ; $6675: $ff
	ld l, [hl]                                       ; $6676: $6e
	jp z, $b677                                      ; $6677: $ca $77 $b6

	sbc c                                            ; $667a: $99
	sbc $e1                                          ; $667b: $de $e1
	call $e3f3                                       ; $667d: $cd $f3 $e3
	rst $38                                          ; $6680: $ff
	ld d, [hl]                                       ; $6681: $56
	call nz, $c49b                                   ; $6682: $c4 $9b $c4
	ei                                               ; $6685: $fb
	pop hl                                           ; $6686: $e1
	rst $38                                          ; $6687: $ff
	ld l, a                                          ; $6688: $6f
	sbc d                                            ; $6689: $9a
	ld l, a                                          ; $668a: $6f
	ldh [rPCM34], a                                  ; $668b: $e0 $77
	ret nc                                           ; $668d: $d0

	ld d, [hl]                                       ; $668e: $56
	call nz, $e49b                                   ; $668f: $c4 $9b $e4
	ei                                               ; $6692: $fb
	pop af                                           ; $6693: $f1
	rst $38                                          ; $6694: $ff
	ld d, [hl]                                       ; $6695: $56
	call nz, $e27e                                   ; $6696: $c4 $7e $e2
	sbc l                                            ; $6699: $9d
	ld hl, sp-$01                                    ; $669a: $f8 $ff
	ld d, [hl]                                       ; $669c: $56
	call nz, $329b                                   ; $669d: $c4 $9b $32
	db $fd                                           ; $66a0: $fd
	ld a, b                                          ; $66a1: $78
	rst $38                                          ; $66a2: $ff
	ld c, [hl]                                       ; $66a3: $4e
	jp nz, $e07f                                     ; $66a4: $c2 $7f $e0

	ld c, [hl]                                       ; $66a7: $4e
	jp nz, $3e9d                                     ; $66a8: $c2 $9d $3e

	rst $38                                          ; $66ab: $ff
	ld e, l                                          ; $66ac: $5d
	and b                                            ; $66ad: $a0
	ld a, a                                          ; $66ae: $7f
	cp $9b                                           ; $66af: $fe $9b
	ld h, a                                          ; $66b1: $67
	sbc a                                            ; $66b2: $9f
	rrca                                             ; $66b3: $0f
	rst $38                                          ; $66b4: $ff
	ld d, [hl]                                       ; $66b5: $56
	call nz, $669b                                   ; $66b6: $c4 $9b $66
	sbc a                                            ; $66b9: $9f
	adc a                                            ; $66ba: $8f
	rst $38                                          ; $66bb: $ff
	ld d, [hl]                                       ; $66bc: $56
	call nz, $e077                                   ; $66bd: $c4 $77 $e0
	ld e, [hl]                                       ; $66c0: $5e
	add $7f                                          ; $66c1: $c6 $7f
	cp $9b                                           ; $66c3: $fe $9b
	inc sp                                           ; $66c5: $33
	rst GetHLinHL                                          ; $66c6: $cf
	add a                                            ; $66c7: $87
	rst $38                                          ; $66c8: $ff
	ld c, [hl]                                       ; $66c9: $4e
	jp nz, $c79d                                     ; $66ca: $c2 $9d $c7

	rst $38                                          ; $66cd: $ff
	ld l, [hl]                                       ; $66ce: $6e
	jp z, $fe6f                                      ; $66cf: $ca $6f $fe

	ld a, a                                          ; $66d2: $7f
	ld c, $7f                                        ; $66d3: $0e $7f
	db $10                                           ; $66d5: $10
	ld c, [hl]                                       ; $66d6: $4e
	jp nz, $f07f                                     ; $66d7: $c2 $7f $f0

	ld e, a                                          ; $66da: $5f
	jr nc, @+$81                                     ; $66db: $30 $7f

	cp $7c                                           ; $66dd: $fe $7c
	ld a, h                                          ; $66df: $7c
	sbc l                                            ; $66e0: $9d
	pop bc                                           ; $66e1: $c1
	rst $38                                          ; $66e2: $ff
	ld c, $c0                                        ; $66e3: $0e $c0
	ld a, h                                          ; $66e5: $7c
	ld b, b                                          ; $66e6: $40
	sbc h                                            ; $66e7: $9c
	inc a                                            ; $66e8: $3c
	rst $38                                          ; $66e9: $ff
	nop                                              ; $66ea: $00
	ld d, e                                          ; $66eb: $53
	cp $9e                                           ; $66ec: $fe $9e
	ld e, $13                                        ; $66ee: $1e $13
	ldh a, [$9d]                                     ; $66f0: $f0 $9d
	ld a, a                                          ; $66f2: $7f
	add b                                            ; $66f3: $80
	ld d, a                                          ; $66f4: $57
	ldh a, [$9b]                                     ; $66f5: $f0 $9b
	ld bc, $fffe                                     ; $66f7: $01 $fe $ff
	nop                                              ; $66fa: $00
	ld d, a                                          ; $66fb: $57
	ldh a, [rPCM34]                                  ; $66fc: $f0 $77
	ei                                               ; $66fe: $fb
	sbc [hl]                                         ; $66ff: $9e
	ld c, $4b                                        ; $6700: $0e $4b
	ldh a, [$7f]                                     ; $6702: $f0 $7f
	ld l, $4f                                        ; $6704: $2e $4f
	ldh a, [$7f]                                     ; $6706: $f0 $7f
	ld l, $0f                                        ; $6708: $2e $0f
	ldh a, [$7f]                                     ; $670a: $f0 $7f
	ld c, [hl]                                       ; $670c: $4e
	ld c, a                                          ; $670d: $4f
	ldh a, [$9e]                                     ; $670e: $f0 $9e
	ldh a, [rWX]                                     ; $6710: $f0 $4b
	ldh a, [$9e]                                     ; $6712: $f0 $9e
	ld [hl], b                                       ; $6714: $70
	dec bc                                           ; $6715: $0b
	ldh [$7e], a                                     ; $6716: $e0 $7e
	ld l, [hl]                                       ; $6718: $6e
	ld c, a                                          ; $6719: $4f
	ldh a, [$9e]                                     ; $671a: $f0 $9e
	jr c, jr_05f_6779                                ; $671c: $38 $5b

	ldh a, [$9b]                                     ; $671e: $f0 $9b
	add b                                            ; $6720: $80
	ld a, a                                          ; $6721: $7f
	rst $38                                          ; $6722: $ff
	nop                                              ; $6723: $00
	ld c, a                                          ; $6724: $4f
	db $10                                           ; $6725: $10
	sbc l                                            ; $6726: $9d
	cp $01                                           ; $6727: $fe $01
	ld b, a                                          ; $6729: $47
	nop                                              ; $672a: $00
	ld a, [hl]                                       ; $672b: $7e
	ld c, [hl]                                       ; $672c: $4e
	ld c, a                                          ; $672d: $4f
	ldh a, [$4e]                                     ; $672e: $f0 $4e
	jp nz, Jump_05f_407c                             ; $6730: $c2 $7c $40

	ld a, [hl]                                       ; $6733: $7e
	adc $77                                          ; $6734: $ce $77
	cp $8c                                           ; $6736: $fe $8c

jr_05f_6738:
	ld h, c                                          ; $6738: $61
	sbc a                                            ; $6739: $9f
	ld [hl], e                                       ; $673a: $73
	sbc a                                            ; $673b: $9f
	ld e, [hl]                                       ; $673c: $5e
	cp [hl]                                          ; $673d: $be
	jr jr_05f_6738                                   ; $673e: $18 $f8

	ldh [$e0], a                                     ; $6740: $e0 $e0
	nop                                              ; $6742: $00
	rst $38                                          ; $6743: $ff
	inc bc                                           ; $6744: $03
	db $fc                                           ; $6745: $fc
	ccf                                              ; $6746: $3f
	ret nz                                           ; $6747: $c0

	rst $38                                          ; $6748: $ff
	nop                                              ; $6749: $00
	ld hl, sp-$06                                    ; $674a: $f8 $fa
	ld [hl], a                                       ; $674c: $77
	db $f4                                           ; $674d: $f4
	ld [hl], a                                       ; $674e: $77
	cp $f9                                           ; $674f: $fe $f9
	ld h, a                                          ; $6751: $67
	or a                                             ; $6752: $b7
	rrca                                             ; $6753: $0f
	ldh a, [$f7]                                     ; $6754: $f0 $f7
	inc bc                                           ; $6756: $03
	ldh a, [$03]                                     ; $6757: $f0 $03
	ldh a, [$03]                                     ; $6759: $f0 $03
	ldh a, [$03]                                     ; $675b: $f0 $03
	ldh a, [$3f]                                     ; $675d: $f0 $3f
	ldh a, [$1f]                                     ; $675f: $f0 $1f
	ld b, b                                          ; $6761: $40
	sbc l                                            ; $6762: $9d
	db $fc                                           ; $6763: $fc
	inc bc                                           ; $6764: $03
	ld c, e                                          ; $6765: $4b
	adc $9c                                          ; $6766: $ce $9c
	rst $38                                          ; $6768: $ff
	ret nz                                           ; $6769: $c0

	ccf                                              ; $676a: $3f
	ld [hl], a                                       ; $676b: $77
	db $ec                                           ; $676c: $ec
	sbc [hl]                                         ; $676d: $9e

Call_05f_676e:
	rra                                              ; $676e: $1f
	ld a, [$ce7e]                                    ; $676f: $fa $7e $ce
	ld [hl], a                                       ; $6772: $77
	cp $95                                           ; $6773: $fe $95
	add [hl]                                         ; $6775: $86
	ld sp, hl                                        ; $6776: $f9
	adc $f9                                          ; $6777: $ce $f9

jr_05f_6779:
	ld c, d                                          ; $6779: $4a
	ld a, l                                          ; $677a: $7d
	jr c, jr_05f_67bc                                ; $677b: $38 $3f

	rlca                                             ; $677d: $07
	rlca                                             ; $677e: $07
	inc h                                            ; $677f: $24
	nop                                              ; $6780: $00
	call $9c22                                       ; $6781: $cd $22 $9c
	inc hl                                           ; $6784: $23
	inc sp                                           ; $6785: $33
	dec [hl]                                         ; $6786: $35
	db $dd                                           ; $6787: $dd
	ld d, l                                          ; $6788: $55
	sbc h                                            ; $6789: $9c
	ld d, e                                          ; $678a: $53
	inc sp                                           ; $678b: $33
	ld [hl-], a                                      ; $678c: $32
	ld d, a                                          ; $678d: $57
	or $9e                                           ; $678e: $f6 $9e
	inc sp                                           ; $6790: $33
	db $dd                                           ; $6791: $dd
	ld d, l                                          ; $6792: $55
	rst SubAFromDE                                          ; $6793: $df
	inc sp                                           ; $6794: $33
	ld c, a                                          ; $6795: $4f
	or $db                                           ; $6796: $f6 $db
	inc sp                                           ; $6798: $33
	inc sp                                           ; $6799: $33
	or $9e                                           ; $679a: $f6 $9e
	inc h                                            ; $679c: $24
	reti                                             ; $679d: $d9


	ld b, h                                          ; $679e: $44
	sbc [hl]                                         ; $679f: $9e
	ld b, d                                          ; $67a0: $42
	ld e, a                                          ; $67a1: $5f
	or $27                                           ; $67a2: $f6 $27
	rlca                                             ; $67a4: $07
	rst SubAFromDE                                          ; $67a5: $df
	rst $38                                          ; $67a6: $ff
	sbc d                                            ; $67a7: $9a
	di                                               ; $67a8: $f3
	rst $38                                          ; $67a9: $ff
	pop hl                                           ; $67aa: $e1
	rst $38                                          ; $67ab: $ff
	ret nz                                           ; $67ac: $c0

	ld a, e                                          ; $67ad: $7b
	cp $98                                           ; $67ae: $fe $98
	add h                                            ; $67b0: $84
	ei                                               ; $67b1: $fb
	add h                                            ; $67b2: $84
	ei                                               ; $67b3: $fb
	adc h                                            ; $67b4: $8c
	di                                               ; $67b5: $f3
	rst $38                                          ; $67b6: $ff
	ld d, e                                          ; $67b7: $53
	ldh a, [c]                                       ; $67b8: $f2
	daa                                              ; $67b9: $27
	ldh a, [$9c]                                     ; $67ba: $f0 $9c

jr_05f_67bc:
	call nz, $c4fb                                   ; $67bc: $c4 $fb $c4
	ld [hl], e                                       ; $67bf: $73
	ldh a, [c]                                       ; $67c0: $f2
	ld [hl], a                                       ; $67c1: $77
	ldh a, [$9e]                                     ; $67c2: $f0 $9e
	pop bc                                           ; $67c4: $c1
	ld a, e                                          ; $67c5: $7b
	ldh a, [c]                                       ; $67c6: $f2
	ld l, a                                          ; $67c7: $6f
	db $f4                                           ; $67c8: $f4
	sbc e                                            ; $67c9: $9b
	sbc h                                            ; $67ca: $9c
	db $e3                                           ; $67cb: $e3
	sbc h                                            ; $67cc: $9c
	db $e3                                           ; $67cd: $e3
	ld l, a                                          ; $67ce: $6f
	ldh a, [$6f]                                     ; $67cf: $f0 $6f
	call nc, $ee77                                   ; $67d1: $d4 $77 $ee
	rla                                              ; $67d4: $17
	ldh a, [$5f]                                     ; $67d5: $f0 $5f
	ret nc                                           ; $67d7: $d0

	ld h, a                                          ; $67d8: $67
	ldh a, [c]                                       ; $67d9: $f2
	ld l, a                                          ; $67da: $6f
	ldh a, [$7f]                                     ; $67db: $f0 $7f
	and b                                            ; $67dd: $a0
	sbc l                                            ; $67de: $9d
	adc b                                            ; $67df: $88
	rst FarCall                                          ; $67e0: $f7
	ld l, a                                          ; $67e1: $6f
	xor $8d                                          ; $67e2: $ee $8d
	sbc [hl]                                         ; $67e4: $9e
	pop hl                                           ; $67e5: $e1
	rst $38                                          ; $67e6: $ff
	rst $38                                          ; $67e7: $ff
	add e                                            ; $67e8: $83
	rst $38                                          ; $67e9: $ff
	inc bc                                           ; $67ea: $03
	rst $38                                          ; $67eb: $ff
	ld de, $39ef                                     ; $67ec: $11 $ef $39

jr_05f_67ef:
	rst JumpTable                                          ; $67ef: $c7
	ld sp, $39cf                                     ; $67f0: $31 $cf $39
	rst JumpTable                                          ; $67f3: $c7
	add hl, sp                                       ; $67f4: $39
	rst JumpTable                                          ; $67f5: $c7
	ld [hl], a                                       ; $67f6: $77
	ldh a, [$9b]                                     ; $67f7: $f0 $9b
	inc hl                                           ; $67f9: $23
	rst SubAFromDE                                          ; $67fa: $df
	ld sp, $6fcf                                     ; $67fb: $31 $cf $6f
	ldh a, [c]                                       ; $67fe: $f2
	ld h, a                                          ; $67ff: $67
	ldh a, [$9e]                                     ; $6800: $f0 $9e
	ld hl, $ee63                                     ; $6802: $21 $63 $ee
	ld d, a                                          ; $6805: $57
	ldh a, [rPCM34]                                  ; $6806: $f0 $77
	xor $03                                          ; $6808: $ee $03
	ldh a, [$9d]                                     ; $680a: $f0 $9d
	rst $38                                          ; $680c: $ff
	add a                                            ; $680d: $87
	ld a, e                                          ; $680e: $7b
	and b                                            ; $680f: $a0
	ld a, a                                          ; $6810: $7f
	xor $6f                                          ; $6811: $ee $6f
	xor h                                            ; $6813: $ac
	ld a, a                                          ; $6814: $7f
	cp $6f                                           ; $6815: $fe $6f
	ldh a, [$7f]                                     ; $6817: $f0 $7f
	cp $7f                                           ; $6819: $fe $7f
	sbc $6f                                          ; $681b: $de $6f
	call c, $f03f                                    ; $681d: $dc $3f $f0
	ld a, a                                          ; $6820: $7f
	db $fd                                           ; $6821: $fd
	ld d, a                                          ; $6822: $57
	xor $9d                                          ; $6823: $ee $9d
	inc c                                            ; $6825: $0c
	di                                               ; $6826: $f3
	ld [hl], a                                       ; $6827: $77
	cp $95                                           ; $6828: $fe $95
	and l                                            ; $682a: $a5
	jr jr_05f_67ef                                   ; $682b: $18 $c2

	ld bc, $f30c                                     ; $682d: $01 $0c $f3
	sub b                                            ; $6830: $90
	rst AddAOntoHL                                          ; $6831: $ef
	pop bc                                           ; $6832: $c1
	rst $38                                          ; $6833: $ff
	ld h, a                                          ; $6834: $67
	ldh a, [$99]                                     ; $6835: $f0 $99
	ld b, d                                          ; $6837: $42

jr_05f_6838:
	add c                                            ; $6838: $81
	inc c                                            ; $6839: $0c
	di                                               ; $683a: $f3
	jr @-$17                                         ; $683b: $18 $e7

	ld e, a                                          ; $683d: $5f
	ldh a, [rPCM34]                                  ; $683e: $f0 $77
	ldh [$3f], a                                     ; $6840: $e0 $3f
	ldh a, [$9b]                                     ; $6842: $f0 $9b
	add c                                            ; $6844: $81
	rst $38                                          ; $6845: $ff
	inc e                                            ; $6846: $1c
	db $e3                                           ; $6847: $e3
	ld l, a                                          ; $6848: $6f
	ldh a, [$9d]                                     ; $6849: $f0 $9d
	ld b, e                                          ; $684b: $43
	add b                                            ; $684c: $80

jr_05f_684d:
	ld h, a                                          ; $684d: $67

jr_05f_684e:
	ldh a, [rPCM34]                                  ; $684e: $f0 $77

Jump_05f_6850:
	xor $03                                          ; $6850: $ee $03
	ldh a, [$73]                                     ; $6852: $f0 $73
	ldh a, [$7f]                                     ; $6854: $f0 $7f
	or $5f                                           ; $6856: $f6 $5f
	ret nz                                           ; $6858: $c0

	ld a, a                                          ; $6859: $7f
	sub b                                            ; $685a: $90
	sub e                                            ; $685b: $93
	ld c, $f1                                        ; $685c: $0e $f1
	inc e                                            ; $685e: $1c
	db $e3                                           ; $685f: $e3
	pop bc                                           ; $6860: $c1
	rst $38                                          ; $6861: $ff
	ld e, $e1                                        ; $6862: $1e $e1
	ld c, $f1                                        ; $6864: $0e $f1
	ld c, $f1                                        ; $6866: $0e $f1
	ld h, a                                          ; $6868: $67
	ldh a, [$7f]                                     ; $6869: $f0 $7f
	ldh [hDisp1_WY], a                                     ; $686b: $e0 $95
	jr c, @-$37                                      ; $686d: $38 $c7

	jr c, jr_05f_6838                                ; $686f: $38 $c7

	inc a                                            ; $6871: $3c
	jp $0099                                         ; $6872: $c3 $99 $00


	ld [hl+], a                                      ; $6875: $22
	pop bc                                           ; $6876: $c1
	ld [hl], a                                       ; $6877: $77
	or $77                                           ; $6878: $f6 $77
	ldh a, [$9b]                                     ; $687a: $f0 $9b
	jr nc, jr_05f_684d                               ; $687c: $30 $cf

	jr nc, @-$2f                                     ; $687e: $30 $cf

	ld [hl], a                                       ; $6880: $77
	add b                                            ; $6881: $80
	sbc d                                            ; $6882: $9a
	ld [hl], b                                       ; $6883: $70
	adc a                                            ; $6884: $8f
	jr c, jr_05f_684e                                ; $6885: $38 $c7

	add e                                            ; $6887: $83
	ld [hl], e                                       ; $6888: $73
	ldh [$6f], a                                     ; $6889: $e0 $6f
	ldh a, [$7f]                                     ; $688b: $f0 $7f
	ld a, [$e06f]                                    ; $688d: $fa $6f $e0
	ld e, a                                          ; $6890: $5f
	ldh a, [rPCM34]                                  ; $6891: $f0 $77
	sub b                                            ; $6893: $90
	ld c, a                                          ; $6894: $4f
	ldh a, [$9e]                                     ; $6895: $f0 $9e
	nop                                              ; $6897: $00
	ld b, e                                          ; $6898: $43
	ldh [rPCM34], a                                  ; $6899: $e0 $77
	or d                                             ; $689b: $b2
	ld [hl], a                                       ; $689c: $77
	ldh a, [$7f]                                     ; $689d: $f0 $7f
	ld [hl], b                                       ; $689f: $70
	scf                                              ; $68a0: $37
	ldh a, [$7f]                                     ; $68a1: $f0 $7f
	and b                                            ; $68a3: $a0
	ld h, a                                          ; $68a4: $67
	ldh a, [$7f]                                     ; $68a5: $f0 $7f
	ld [hl], b                                       ; $68a7: $70
	ld c, a                                          ; $68a8: $4f
	ldh a, [rPCM34]                                  ; $68a9: $f0 $77
	ldh [$9c], a                                     ; $68ab: $e0 $9c
	add hl, bc                                       ; $68ad: $09
	rst FarCall                                          ; $68ae: $f7
	add e                                            ; $68af: $83
	ld a, d                                          ; $68b0: $7a
	ld [hl], d                                       ; $68b1: $72
	db $dd                                           ; $68b2: $dd
	rst $38                                          ; $68b3: $ff
	sbc d                                            ; $68b4: $9a
	or a                                             ; $68b5: $b7
	rst $38                                          ; $68b6: $ff
	sub a                                            ; $68b7: $97
	rst $38                                          ; $68b8: $ff
	sub e                                            ; $68b9: $93
	ld a, e                                          ; $68ba: $7b
	cp $9c                                           ; $68bb: $fe $9c
	inc de                                           ; $68bd: $13
	rst $38                                          ; $68be: $ff
	ld a, a                                          ; $68bf: $7f
	ld [hl], e                                       ; $68c0: $73
	cp $9c                                           ; $68c1: $fe $9c
	ld a, l                                          ; $68c3: $7d
	rst $38                                          ; $68c4: $ff
	ld a, c                                          ; $68c5: $79
	ld a, e                                          ; $68c6: $7b
	cp $9e                                           ; $68c7: $fe $9e
	ld [hl], c                                       ; $68c9: $71
	ld a, e                                          ; $68ca: $7b
	cp $db                                           ; $68cb: $fe $db
	rst $38                                          ; $68cd: $ff
	sbc h                                            ; $68ce: $9c
	db $fd                                           ; $68cf: $fd
	rst $38                                          ; $68d0: $ff
	ld sp, hl                                        ; $68d1: $f9
	ld a, e                                          ; $68d2: $7b
	cp $9e                                           ; $68d3: $fe $9e
	pop af                                           ; $68d5: $f1
	ld a, e                                          ; $68d6: $7b
	cp $67                                           ; $68d7: $fe $67
	ldh a, [$9c]                                     ; $68d9: $f0 $9c
	ld hl, sp-$01                                    ; $68db: $f8 $ff
	ret c                                            ; $68dd: $d8

	ld [hl], e                                       ; $68de: $73
	cp $d9                                           ; $68df: $fe $d9
	rst $38                                          ; $68e1: $ff
	ld l, a                                          ; $68e2: $6f
	sbc $7f                                          ; $68e3: $de $7f
	cp $8c                                           ; $68e5: $fe $8c
	nop                                              ; $68e7: $00
	ld a, a                                          ; $68e8: $7f
	ld a, a                                          ; $68e9: $7f
	nop                                              ; $68ea: $00
	ld b, b                                          ; $68eb: $40
	nop                                              ; $68ec: $00
	ld b, c                                          ; $68ed: $41
	ld bc, $0141                                     ; $68ee: $01 $41 $01
	ld e, l                                          ; $68f1: $5d
	rra                                              ; $68f2: $1f
	ld d, [hl]                                       ; $68f3: $56
	ld d, $54                                        ; $68f4: $16 $54
	inc d                                            ; $68f6: $14
	nop                                              ; $68f7: $00
	rst $38                                          ; $68f8: $ff
	rst $38                                          ; $68f9: $ff
	db $fc                                           ; $68fa: $fc
	rst SubAFromDE                                          ; $68fb: $df
	rst SubAFromBC                                          ; $68fc: $e7
	sbc c                                            ; $68fd: $99
	jr nz, jr_05f_6923                               ; $68fe: $20 $23

	xor a                                            ; $6900: $af
	xor a                                            ; $6901: $af
	add c                                            ; $6902: $81
	add c                                            ; $6903: $81
	ld l, a                                          ; $6904: $6f
	ldh a, [$df]                                     ; $6905: $f0 $df
	ld b, b                                          ; $6907: $40
	rst SubAFromDE                                          ; $6908: $df
	db $fd                                           ; $6909: $fd
	sbc c                                            ; $690a: $99
	and b                                            ; $690b: $a0
	ld sp, hl                                        ; $690c: $f9
	db $fc                                           ; $690d: $fc
	db $fc                                           ; $690e: $fc
	or c                                             ; $690f: $b1
	or c                                             ; $6910: $b1
	ld l, a                                          ; $6911: $6f
	ldh a, [$df]                                     ; $6912: $f0 $df
	ld [$3edf], sp                                   ; $6914: $08 $df $3e
	rst SubAFromDE                                          ; $6917: $df
	and d                                            ; $6918: $a2
	ld a, e                                          ; $6919: $7b
	db $fc                                           ; $691a: $fc
	sbc [hl]                                         ; $691b: $9e
	cp [hl]                                          ; $691c: $be
	ld l, a                                          ; $691d: $6f
	ldh a, [$df]                                     ; $691e: $f0 $df
	inc b                                            ; $6920: $04
	sub a                                            ; $6921: $97
	ld e, a                                          ; $6922: $5f

jr_05f_6923:
	ld a, a                                          ; $6923: $7f
	sub d                                            ; $6924: $92
	jp c, $3f1e                                      ; $6925: $da $1e $3f

	ret nz                                           ; $6928: $c0

	ret nz                                           ; $6929: $c0

	ld h, a                                          ; $692a: $67
	ret nz                                           ; $692b: $c0

	sbc d                                            ; $692c: $9a
	ld b, b                                          ; $692d: $40
	ldh [$a0], a                                     ; $692e: $e0 $a0
	and b                                            ; $6930: $a0
	ret nz                                           ; $6931: $c0

	ld a, e                                          ; $6932: $7b
	db $fc                                           ; $6933: $fc
	ld h, a                                          ; $6934: $67
	ldh [$df], a                                     ; $6935: $e0 $df
	cp a                                             ; $6937: $bf
	sbc c                                            ; $6938: $99
	ld l, h                                          ; $6939: $6c
	xor $bf                                          ; $693a: $ee $bf
	cp a                                             ; $693c: $bf
	ld d, l                                          ; $693d: $55
	db $dd                                           ; $693e: $dd
	ld l, a                                          ; $693f: $6f
	ldh a, [$df]                                     ; $6940: $f0 $df
	ld [bc], a                                       ; $6942: $02
	rst SubAFromDE                                          ; $6943: $df
	cp a                                             ; $6944: $bf
	sbc c                                            ; $6945: $99
	add l                                            ; $6946: $85
	sbc a                                            ; $6947: $9f
	rst $38                                          ; $6948: $ff
	rst $38                                          ; $6949: $ff
	dec c                                            ; $694a: $0d
	dec c                                            ; $694b: $0d
	ld h, a                                          ; $694c: $67
	ret nc                                           ; $694d: $d0

	rst SubAFromDE                                          ; $694e: $df
	pop af                                           ; $694f: $f1
	adc d                                            ; $6950: $8a
	ld [bc], a                                       ; $6951: $02
	db $e3                                           ; $6952: $e3
	push af                                          ; $6953: $f5
	rst $38                                          ; $6954: $ff
	add b                                            ; $6955: $80
	add b                                            ; $6956: $80
	nop                                              ; $6957: $00
	cp $fe                                           ; $6958: $fe $fe
	nop                                              ; $695a: $00
	ld [bc], a                                       ; $695b: $02
	nop                                              ; $695c: $00
	add d                                            ; $695d: $82
	ret nz                                           ; $695e: $c0

	ld b, d                                          ; $695f: $42
	ldh [rAUD4POLY], a                               ; $6960: $e0 $22
	jr nc, @-$2c                                     ; $6962: $30 $d2

	ret c                                            ; $6964: $d8

	ld [bc], a                                       ; $6965: $02
	ld a, e                                          ; $6966: $7b
	pop hl                                           ; $6967: $e1
	db $db                                           ; $6968: $db
	rst $38                                          ; $6969: $ff
	sbc h                                            ; $696a: $9c
	rst SubAFromDE                                          ; $696b: $df
	rst $38                                          ; $696c: $ff
	sbc a                                            ; $696d: $9f
	ld a, e                                          ; $696e: $7b
	cp $9e                                           ; $696f: $fe $9e
	adc a                                            ; $6971: $8f
	ret c                                            ; $6972: $d8

	rst $38                                          ; $6973: $ff
	ld a, a                                          ; $6974: $7f
	ldh a, [$7f]                                     ; $6975: $f0 $7f
	db $f4                                           ; $6977: $f4
	ld a, l                                          ; $6978: $7d
	xor b                                            ; $6979: $a8
	sbc l                                            ; $697a: $9d
	and a                                            ; $697b: $a7
	rst SubAFromDE                                          ; $697c: $df
	reti                                             ; $697d: $d9


	rst $38                                          ; $697e: $ff
	sbc [hl]                                         ; $697f: $9e
	rst AddAOntoHL                                          ; $6980: $ef
	ld a, c                                          ; $6981: $79
	sbc b                                            ; $6982: $98
	ld a, l                                          ; $6983: $7d
	ld h, e                                          ; $6984: $63
	ld a, c                                          ; $6985: $79
	ld h, c                                          ; $6986: $61
	ld h, e                                          ; $6987: $63
	ldh [$7f], a                                     ; $6988: $e0 $7f
	ldh a, [rPCM34]                                  ; $698a: $f0 $77
	sbc $7e                                          ; $698c: $de $7e
	ld e, $dd                                        ; $698e: $1e $dd
	rst $38                                          ; $6990: $ff
	sbc d                                            ; $6991: $9a
	db $ed                                           ; $6992: $ed
	rst $38                                          ; $6993: $ff
	jp hl                                            ; $6994: $e9


	rst $38                                          ; $6995: $ff
	ret                                              ; $6996: $c9


	ld a, e                                          ; $6997: $7b
	cp $97                                           ; $6998: $fe $97
	ret z                                            ; $699a: $c8

Call_05f_699b:
	rst $38                                          ; $699b: $ff
	ld de, $01ff                                     ; $699c: $11 $ff $01
	rst $38                                          ; $699f: $ff
	ld b, c                                          ; $69a0: $41
	cp a                                             ; $69a1: $bf
	ld e, a                                          ; $69a2: $5f
	cp $7e                                           ; $69a3: $fe $7e
	adc $9b                                          ; $69a5: $ce $9b
	ld h, c                                          ; $69a7: $61
	rst $38                                          ; $69a8: $ff
	ld h, l                                          ; $69a9: $65
	ei                                               ; $69aa: $fb
	ld e, a                                          ; $69ab: $5f
	cp $9a                                           ; $69ac: $fe $9a
	ldh a, [rIE]                                     ; $69ae: $f0 $ff
	ldh a, [rIE]                                     ; $69b0: $f0 $ff
	ldh [rOCPD], a                                   ; $69b2: $e0 $6b
	cp $74                                           ; $69b4: $fe $74
	ld c, d                                          ; $69b6: $4a
	ld a, [hl]                                       ; $69b7: $7e
	adc $9e                                          ; $69b8: $ce $9e
	ret nc                                           ; $69ba: $d0

	ld a, e                                          ; $69bb: $7b
	cp $9b                                           ; $69bc: $fe $9b
	sub b                                            ; $69be: $90
	rst $38                                          ; $69bf: $ff
	sub d                                            ; $69c0: $92
	db $fd                                           ; $69c1: $fd
	ld l, a                                          ; $69c2: $6f
	cp $7e                                           ; $69c3: $fe $7e
	adc $7f                                          ; $69c5: $ce $7f
	or [hl]                                          ; $69c7: $b6
	ld a, a                                          ; $69c8: $7f
	cp $9a                                           ; $69c9: $fe $9a
	db $eb                                           ; $69cb: $eb
	db $fd                                           ; $69cc: $fd
	db $eb                                           ; $69cd: $eb
	db $fd                                           ; $69ce: $fd
	db $e3                                           ; $69cf: $e3
	ld [hl], e                                       ; $69d0: $73
	cp $94                                           ; $69d1: $fe $94
	ld d, l                                          ; $69d3: $55
	dec d                                            ; $69d4: $15
	ld e, l                                          ; $69d5: $5d
	dec e                                            ; $69d6: $1d
	ld b, c                                          ; $69d7: $41
	ld bc, $0646                                     ; $69d8: $01 $46 $06
	ld b, b                                          ; $69db: $40
	nop                                              ; $69dc: $00
	ld a, a                                          ; $69dd: $7f
	cp $df                                           ; $69de: $fe $df
	rst $38                                          ; $69e0: $ff
	sub a                                            ; $69e1: $97
	ld b, [hl]                                       ; $69e2: $46
	add $4d                                          ; $69e3: $c6 $4d
	ld c, l                                          ; $69e5: $4d
	ld h, b                                          ; $69e6: $60
	ld h, b                                          ; $69e7: $60
	inc sp                                           ; $69e8: $33
	inc sp                                           ; $69e9: $33
	ld a, e                                          ; $69ea: $7b
	db $f4                                           ; $69eb: $f4
	ld [hl], e                                       ; $69ec: $73
	ldh a, [$df]                                     ; $69ed: $f0 $df
	db $ec                                           ; $69ef: $ec
	rst SubAFromDE                                          ; $69f0: $df
	or $7e                                           ; $69f1: $f6 $7e
	db $f4                                           ; $69f3: $f4
	rst SubAFromDE                                          ; $69f4: $df
	cp b                                             ; $69f5: $b8
	ld h, a                                          ; $69f6: $67
	ldh a, [$df]                                     ; $69f7: $f0 $df
	ld [$ffdf], sp                                   ; $69f9: $08 $df $ff
	rst SubAFromDE                                          ; $69fc: $df
	ld a, $df                                        ; $69fd: $3e $df
	ret                                              ; $69ff: $c9


	ld h, a                                          ; $6a00: $67
	ldh a, [$df]                                     ; $6a01: $f0 $df
	ld e, $99                                        ; $6a03: $1e $99
	sub d                                            ; $6a05: $92
	sbc d                                            ; $6a06: $9a
	ld [de], a                                       ; $6a07: $12
	ld a, [de]                                       ; $6a08: $1a
	sbc [hl]                                         ; $6a09: $9e
	sbc [hl]                                         ; $6a0a: $9e
	ld h, a                                          ; $6a0b: $67
	ldh a, [$dd]                                     ; $6a0c: $f0 $dd
	and b                                            ; $6a0e: $a0
	ld a, [hl]                                       ; $6a0f: $7e
	ret z                                            ; $6a10: $c8

	ld a, d                                          ; $6a11: $7a
	ld hl, sp+$6b                                    ; $6a12: $f8 $6b
	ldh a, [$97]                                     ; $6a14: $f0 $97
	dec e                                            ; $6a16: $1d
	rra                                              ; $6a17: $1f
	ld e, a                                          ; $6a18: $5f
	ld e, a                                          ; $6a19: $5f
	adc d                                            ; $6a1a: $8a
	jp z, $3131                                      ; $6a1b: $ca $31 $31

	ld h, a                                          ; $6a1e: $67
	ldh a, [$97]                                     ; $6a1f: $f0 $97
	or l                                             ; $6a21: $b5
	or a                                             ; $6a22: $b7
	ld l, a                                          ; $6a23: $6f
	ld l, a                                          ; $6a24: $6f
	ld [bc], a                                       ; $6a25: $02
	rlca                                             ; $6a26: $07
	sbc l                                            ; $6a27: $9d

jr_05f_6a28:
	sbc l                                            ; $6a28: $9d
	ld h, a                                          ; $6a29: $67
	ldh a, [$df]                                     ; $6a2a: $f0 $df
	ld h, a                                          ; $6a2c: $67
	sbc c                                            ; $6a2d: $99
	or b                                             ; $6a2e: $b0
	or c                                             ; $6a2f: $b1
	ld bc, $c303                                     ; $6a30: $01 $03 $c3
	rst JumpTable                                          ; $6a33: $c7
	ld h, a                                          ; $6a34: $67
	ldh a, [hDisp1_OBP1]                                     ; $6a35: $f0 $94
	ld [hl], d                                       ; $6a37: $72
	ldh a, [hDisp0_LCDC]                                     ; $6a38: $f0 $82
	add b                                            ; $6a3a: $80
	ld [de], a                                       ; $6a3b: $12
	jr c, jr_05f_6a28                                ; $6a3c: $38 $ea

	ld hl, sp+$02                                    ; $6a3e: $f8 $02
	nop                                              ; $6a40: $00
	cp $73                                           ; $6a41: $fe $73
	ldh a, [$7e]                                     ; $6a43: $f0 $7e
	db $fc                                           ; $6a45: $fc
	ld [hl], a                                       ; $6a46: $77
	cp $9c                                           ; $6a47: $fe $9c
	xor a                                            ; $6a49: $af
	rst SubAFromDE                                          ; $6a4a: $df
	and a                                            ; $6a4b: $a7
	ld h, e                                          ; $6a4c: $63
	cp $9e                                           ; $6a4d: $fe $9e
	and e                                            ; $6a4f: $a3
	ld [hl], e                                       ; $6a50: $73
	cp $9e                                           ; $6a51: $fe $9e
	and c                                            ; $6a53: $a1
	ld [hl], e                                       ; $6a54: $73
	cp $9d                                           ; $6a55: $fe $9d
	or c                                             ; $6a57: $b1
	rst GetHLinHL                                          ; $6a58: $cf
	halt                                             ; $6a59: $76
	call z, $fe7f                                    ; $6a5a: $cc $7f $fe
	sbc h                                            ; $6a5d: $9c
	rst SubAFromHL                                          ; $6a5e: $d7
	rst AddAOntoHL                                          ; $6a5f: $ef
	db $d3                                           ; $6a60: $d3
	ld l, e                                          ; $6a61: $6b
	cp $7e                                           ; $6a62: $fe $7e
	adc $7f                                          ; $6a64: $ce $7f
	cp $9d                                           ; $6a66: $fe $9d
	sub a                                            ; $6a68: $97
	rst AddAOntoHL                                          ; $6a69: $ef
	ld l, a                                          ; $6a6a: $6f
	cp $9e                                           ; $6a6b: $fe $9e
	sub e                                            ; $6a6d: $93
	ld a, e                                          ; $6a6e: $7b
	cp $99                                           ; $6a6f: $fe $99
	adc b                                            ; $6a71: $88
	rst $38                                          ; $6a72: $ff
	add b                                            ; $6a73: $80
	rst $38                                          ; $6a74: $ff
	add d                                            ; $6a75: $82
	db $fd                                           ; $6a76: $fd
	ld e, a                                          ; $6a77: $5f
	cp $76                                           ; $6a78: $fe $76
	call z, $499d                                    ; $6a7a: $cc $9d $49
	or a                                             ; $6a7d: $b7
	ld e, a                                          ; $6a7e: $5f
	cp $66                                           ; $6a7f: $fe $66
	ret z                                            ; $6a81: $c8

	sbc e                                            ; $6a82: $9b
	ld b, l                                          ; $6a83: $45
	ei                                               ; $6a84: $fb
	ld c, l                                          ; $6a85: $4d
	di                                               ; $6a86: $f3
	ld [hl], a                                       ; $6a87: $77
	cp $76                                           ; $6a88: $fe $76
	call z, $fe77                                    ; $6a8a: $cc $77 $fe
	sbc [hl]                                         ; $6a8d: $9e
	add h                                            ; $6a8e: $84
	ld l, e                                          ; $6a8f: $6b
	cp $7e                                           ; $6a90: $fe $7e
	adc $9d                                          ; $6a92: $ce $9d
	sub [hl]                                         ; $6a94: $96
	ld sp, hl                                        ; $6a95: $f9
	ld [hl], a                                       ; $6a96: $77
	cp $9e                                           ; $6a97: $fe $9e
	add [hl]                                         ; $6a99: $86
	ld l, e                                          ; $6a9a: $6b
	cp $9d                                           ; $6a9b: $fe $9d
	ldh [c], a                                       ; $6a9d: $e2
	db $fd                                           ; $6a9e: $fd
	ld c, a                                          ; $6a9f: $4f
	cp $df                                           ; $6aa0: $fe $df
	rst $38                                          ; $6aa2: $ff
	ld a, [hl]                                       ; $6aa3: $7e
	xor [hl]                                         ; $6aa4: $ae
	ld l, [hl]                                       ; $6aa5: $6e
	adc h                                            ; $6aa6: $8c
	ld h, a                                          ; $6aa7: $67
	ldh a, [$75]                                     ; $6aa8: $f0 $75
	ld d, h                                          ; $6aaa: $54
	ld a, a                                          ; $6aab: $7f
	cp $9b                                           ; $6aac: $fe $9b
	ld [hl], b                                       ; $6aae: $70
	rst $38                                          ; $6aaf: $ff
	ld [hl], d                                       ; $6ab0: $72
	db $fd                                           ; $6ab1: $fd
	ld [hl], a                                       ; $6ab2: $77
	cp $df                                           ; $6ab3: $fe $df

Jump_05f_6ab5:
	rst $38                                          ; $6ab5: $ff
	sbc [hl]                                         ; $6ab6: $9e
	db $fc                                           ; $6ab7: $fc
	ld a, e                                          ; $6ab8: $7b
	ldh a, [c]                                       ; $6ab9: $f2
	sbc d                                            ; $6aba: $9a
	ld a, b                                          ; $6abb: $78
	rst $38                                          ; $6abc: $ff
	ld a, c                                          ; $6abd: $79
	cp $71                                           ; $6abe: $fe $71
	ld a, e                                          ; $6ac0: $7b
	cp $9d                                           ; $6ac1: $fe $9d
	ld [hl], e                                       ; $6ac3: $73
	db $fc                                           ; $6ac4: $fc
	ld [hl], a                                       ; $6ac5: $77
	ret nc                                           ; $6ac6: $d0

	ld a, a                                          ; $6ac7: $7f
	db $e4                                           ; $6ac8: $e4
	sbc [hl]                                         ; $6ac9: $9e
	jr nc, @+$7d                                     ; $6aca: $30 $7b

	cp $99                                           ; $6acc: $fe $99
	ld sp, $31fe                                     ; $6ace: $31 $fe $31
	cp $b1                                           ; $6ad1: $fe $b1
	ld a, [hl]                                       ; $6ad3: $7e
	ld l, a                                          ; $6ad4: $6f
	ldh [$7f], a                                     ; $6ad5: $e0 $7f
	xor $7f                                          ; $6ad7: $ee $7f
	cp $77                                           ; $6ad9: $fe $77
	ldh [$7f], a                                     ; $6adb: $e0 $7f
	cp $df                                           ; $6add: $fe $df
	rst $38                                          ; $6adf: $ff
	ld a, h                                          ; $6ae0: $7c
	ldh a, [c]                                       ; $6ae1: $f2
	sbc [hl]                                         ; $6ae2: $9e
	ld a, $7b                                        ; $6ae3: $3e $7b
	cp $9b                                           ; $6ae5: $fe $9b
	inc a                                            ; $6ae7: $3c
	rst $38                                          ; $6ae8: $ff
	sbc h                                            ; $6ae9: $9c
	ld a, a                                          ; $6aea: $7f
	ld [hl], a                                       ; $6aeb: $77
	cp $df                                           ; $6aec: $fe $df
	rst $38                                          ; $6aee: $ff
	sbc h                                            ; $6aef: $9c
	ccf                                              ; $6af0: $3f
	rst $38                                          ; $6af1: $ff
	rra                                              ; $6af2: $1f
	ld a, e                                          ; $6af3: $7b
	cp $9c                                           ; $6af4: $fe $9c
	sbc a                                            ; $6af6: $9f
	ld a, a                                          ; $6af7: $7f
	adc a                                            ; $6af8: $8f
	ld a, e                                          ; $6af9: $7b
	cp $9c                                           ; $6afa: $fe $9c
	rst GetHLinHL                                          ; $6afc: $cf
	ccf                                              ; $6afd: $3f
	rst $38                                          ; $6afe: $ff
	ld a, c                                          ; $6aff: $79
	cp d                                             ; $6b00: $ba
	sub h                                            ; $6b01: $94
	ld c, $ff                                        ; $6b02: $0e $ff
	ld b, $ff                                        ; $6b04: $06 $ff
	ld b, [hl]                                       ; $6b06: $46
	cp a                                             ; $6b07: $bf
	ld b, [hl]                                       ; $6b08: $46
	cp a                                             ; $6b09: $bf
	ld h, [hl]                                       ; $6b0a: $66
	sbc a                                            ; $6b0b: $9f
	ld h, [hl]                                       ; $6b0c: $66
	ld a, c                                          ; $6b0d: $79
	ld a, h                                          ; $6b0e: $7c
	ld [hl], a                                       ; $6b0f: $77
	ldh [$9d], a                                     ; $6b10: $e0 $9d
	rrca                                             ; $6b12: $0f
	rst $38                                          ; $6b13: $ff
	ld [hl], a                                       ; $6b14: $77
	ldh [c], a                                       ; $6b15: $e2
	sbc h                                            ; $6b16: $9c
	rst JumpTable                                          ; $6b17: $c7
	ccf                                              ; $6b18: $3f
	rst JumpTable                                          ; $6b19: $c7
	ld [hl], e                                       ; $6b1a: $73
	ldh [$7f], a                                     ; $6b1b: $e0 $7f
	ldh a, [c]                                       ; $6b1d: $f2
	sbc b                                            ; $6b1e: $98
	ld c, a                                          ; $6b1f: $4f
	cp a                                             ; $6b20: $bf
	ld b, a                                          ; $6b21: $47
	cp a                                             ; $6b22: $bf
	ld h, a                                          ; $6b23: $67
	sbc a                                            ; $6b24: $9f
	ld h, e                                          ; $6b25: $63
	ld a, e                                          ; $6b26: $7b
	cp $56                                           ; $6b27: $fe $56
	call z, $fe77                                    ; $6b29: $cc $77 $fe
	ld a, [hl]                                       ; $6b2c: $7e
	adc $6f                                          ; $6b2d: $ce $6f
	cp $9e                                           ; $6b2f: $fe $9e
	or b                                             ; $6b31: $b0
	ld l, e                                          ; $6b32: $6b
	cp $7e                                           ; $6b33: $fe $7e
	adc $9e                                          ; $6b35: $ce $9e
	pop de                                           ; $6b37: $d1
	ld d, e                                          ; $6b38: $53
	cp $76                                           ; $6b39: $fe $76
	call z, $fe77                                    ; $6b3b: $cc $77 $fe
	sbc e                                            ; $6b3e: $9b
	sub c                                            ; $6b3f: $91
	rst AddAOntoHL                                          ; $6b40: $ef
	sbc c                                            ; $6b41: $99
	rst SubAFromBC                                          ; $6b42: $e7
	ld [hl], a                                       ; $6b43: $77
	cp $76                                           ; $6b44: $fe $76
	call z, $929d                                    ; $6b46: $cc $9d $92
	db $ed                                           ; $6b49: $ed
	ld e, a                                          ; $6b4a: $5f
	cp $56                                           ; $6b4b: $fe $56
	call nz, Call_05f_699b                           ; $6b4d: $c4 $9b $69
	sub a                                            ; $6b50: $97
	ld l, c                                          ; $6b51: $69
	sub a                                            ; $6b52: $97
	ld l, [hl]                                       ; $6b53: $6e
	jp z, $fe5f                                      ; $6b54: $ca $5f $fe

	ld a, [hl]                                       ; $6b57: $7e
	adc $9d                                          ; $6b58: $ce $9d
	adc h                                            ; $6b5a: $8c
	di                                               ; $6b5b: $f3
	ld d, a                                          ; $6b5c: $57
	cp $66                                           ; $6b5d: $fe $66
	ret z                                            ; $6b5f: $c8

	ld [hl], a                                       ; $6b60: $77
	cp $97                                           ; $6b61: $fe $97
	adc [hl]                                         ; $6b63: $8e
	pop af                                           ; $6b64: $f1
	adc [hl]                                         ; $6b65: $8e
	pop af                                           ; $6b66: $f1
	ldh [c], a                                       ; $6b67: $e2
	db $fd                                           ; $6b68: $fd
	and $f9                                          ; $6b69: $e6 $f9
	ld h, a                                          ; $6b6b: $67

Jump_05f_6b6c:
	cp $9e                                           ; $6b6c: $fe $9e
	add $7b                                          ; $6b6e: $c6 $7b
	cp $6f                                           ; $6b70: $fe $6f
	ld a, [$fe6f]                                    ; $6b72: $fa $6f $fe
	sub l                                            ; $6b75: $95
	adc $f1                                          ; $6b76: $ce $f1
	adc $f1                                          ; $6b78: $ce $f1
	ld h, d                                          ; $6b7a: $62
	db $fd                                           ; $6b7b: $fd
	ld h, d                                          ; $6b7c: $62
	db $fd                                           ; $6b7d: $fd
	ld h, a                                          ; $6b7e: $67
	ld hl, sp+$6f                                    ; $6b7f: $f8 $6f
	cp $97                                           ; $6b81: $fe $97
	ld l, a                                          ; $6b83: $6f
	ldh a, [$6f]                                     ; $6b84: $f0 $6f
	ldh a, [$73]                                     ; $6b86: $f0 $73
	db $fc                                           ; $6b88: $fc
	ld [hl], e                                       ; $6b89: $73
	db $fc                                           ; $6b8a: $fc
	ld e, a                                          ; $6b8b: $5f
	ldh a, [c]                                       ; $6b8c: $f2
	ld a, a                                          ; $6b8d: $7f
	cp $7e                                           ; $6b8e: $fe $7e
	adc $57                                          ; $6b90: $ce $57
	cp $9d                                           ; $6b92: $fe $9d
	or e                                             ; $6b94: $b3
	ld a, h                                          ; $6b95: $7c
	halt                                             ; $6b96: $76
	xor h                                            ; $6b97: $ac
	ld [hl], a                                       ; $6b98: $77
	cp $9d                                           ; $6b99: $fe $9d
	ld [hl], a                                       ; $6b9b: $77
	ld hl, sp+$6f                                    ; $6b9c: $f8 $6f
	cp $6e                                           ; $6b9e: $fe $6e
	jp z, $dc9d                                      ; $6ba0: $ca $9d $dc

	ccf                                              ; $6ba3: $3f
	ld h, a                                          ; $6ba4: $67
	cp $7e                                           ; $6ba5: $fe $7e
	adc $76                                          ; $6ba7: $ce $76
	ld [$fe5f], a                                    ; $6ba9: $ea $5f $fe
	halt                                             ; $6bac: $76
	call z, $fe77                                    ; $6bad: $cc $77 $fe
	sbc l                                            ; $6bb0: $9d
	halt                                             ; $6bb1: $76
	adc a                                            ; $6bb2: $8f
	ld l, a                                          ; $6bb3: $6f
	cp $7f                                           ; $6bb4: $fe $7f
	xor $91                                          ; $6bb6: $ee $91
	rst SubAFromBC                                          ; $6bb8: $e7
	rra                                              ; $6bb9: $1f
	rst FarCall                                          ; $6bba: $f7
	rrca                                             ; $6bbb: $0f
	rst FarCall                                          ; $6bbc: $f7
	rrca                                             ; $6bbd: $0f
	ei                                               ; $6bbe: $fb
	rlca                                             ; $6bbf: $07
	ei                                               ; $6bc0: $fb
	rlca                                             ; $6bc1: $07
	rst $38                                          ; $6bc2: $ff
	inc bc                                           ; $6bc3: $03
	rst $38                                          ; $6bc4: $ff
	inc bc                                           ; $6bc5: $03
	halt                                             ; $6bc6: $76
	call z, $fe57                                    ; $6bc7: $cc $57 $fe
	ld a, [hl]                                       ; $6bca: $7e
	adc $9d                                          ; $6bcb: $ce $9d
	or e                                             ; $6bcd: $b3
	rst GetHLinHL                                          ; $6bce: $cf
	ld d, a                                          ; $6bcf: $57
	cp $66                                           ; $6bd0: $fe $66
	ret z                                            ; $6bd2: $c8

	ld [hl], a                                       ; $6bd3: $77
	cp $97                                           ; $6bd4: $fe $97
	cp b                                             ; $6bd6: $b8
	rst JumpTable                                          ; $6bd7: $c7
	cp b                                             ; $6bd8: $b8
	rst JumpTable                                          ; $6bd9: $c7
	pop de                                           ; $6bda: $d1
	rst AddAOntoHL                                          ; $6bdb: $ef
	reti                                             ; $6bdc: $d9


	rst SubAFromBC                                          ; $6bdd: $e7
	ld d, a                                          ; $6bde: $57
	cp $6e                                           ; $6bdf: $fe $6e
	jp z, $fe5f                                      ; $6be1: $ca $5f $fe

	ld d, [hl]                                       ; $6be4: $56
	call nz, $969b                                   ; $6be5: $c4 $9b $96
	jp hl                                            ; $6be8: $e9


	sub [hl]                                         ; $6be9: $96
	jp hl                                            ; $6bea: $e9


	halt                                             ; $6beb: $76
	call z, $fe57                                    ; $6bec: $cc $57 $fe
	sbc l                                            ; $6bef: $9d
	dec c                                            ; $6bf0: $0d
	di                                               ; $6bf1: $f3
	ld h, a                                          ; $6bf2: $67
	cp $9d                                           ; $6bf3: $fe $9d
	dec e                                            ; $6bf5: $1d
	db $e3                                           ; $6bf6: $e3
	ld [hl], a                                       ; $6bf7: $77
	cp $5e                                           ; $6bf8: $fe $5e
	add $9d                                          ; $6bfa: $c6 $9d
	sbc h                                            ; $6bfc: $9c
	db $e3                                           ; $6bfd: $e3
	ld [hl], a                                       ; $6bfe: $77
	cp $76                                           ; $6bff: $fe $76
	call z, $fe7f                                    ; $6c01: $cc $7f $fe
	sbc [hl]                                         ; $6c04: $9e
	ld c, $63                                        ; $6c05: $0e $63
	cp $4e                                           ; $6c07: $fe $4e
	jp nc, $fe5f                                     ; $6c09: $d2 $5f $fe

	ld l, a                                          ; $6c0c: $6f
	ret c                                            ; $6c0d: $d8

	ld a, a                                          ; $6c0e: $7f
	cp $9d                                           ; $6c0f: $fe $9d
	rst $38                                          ; $6c11: $ff
	ld h, b                                          ; $6c12: $60
	ld a, e                                          ; $6c13: $7b
	cp $7a                                           ; $6c14: $fe $7a
	db $d3                                           ; $6c16: $d3
	sub a                                            ; $6c17: $97
	di                                               ; $6c18: $f3
	ld a, a                                          ; $6c19: $7f
	db $f4                                           ; $6c1a: $f4
	ld a, a                                          ; $6c1b: $7f
	db $e3                                           ; $6c1c: $e3
	ld a, a                                          ; $6c1d: $7f
	rst SubAFromBC                                          ; $6c1e: $e7
	ld a, a                                          ; $6c1f: $7f
	ld [hl], e                                       ; $6c20: $73
	ldh a, [hDisp1_BGP]                                     ; $6c21: $f0 $92
	ld [hl], b                                       ; $6c23: $70
	adc a                                            ; $6c24: $8f
	ld hl, sp+$27                                    ; $6c25: $f8 $27
	db $fc                                           ; $6c27: $fc
	sub a                                            ; $6c28: $97
	db $fc                                           ; $6c29: $fc
	ld b, e                                          ; $6c2a: $43
	cp $e3                                           ; $6c2b: $fe $e3
	cp $b3                                           ; $6c2d: $fe $b3
	ld a, h                                          ; $6c2f: $7c
	ld c, a                                          ; $6c30: $4f
	cp $79                                           ; $6c31: $fe $79
	add a                                            ; $6c33: $87
	ld a, [hl]                                       ; $6c34: $7e
	res 3, l                                         ; $6c35: $cb $9d
	ld a, a                                          ; $6c37: $7f
	ldh a, [$7b]                                     ; $6c38: $f0 $7b
	cp $92                                           ; $6c3a: $fe $92
	jp hl                                            ; $6c3c: $e9


	ld a, a                                          ; $6c3d: $7f
	db $d3                                           ; $6c3e: $d3
	ld a, a                                          ; $6c3f: $7f
	db $e4                                           ; $6c40: $e4
	ld a, h                                          ; $6c41: $7c
	rst $38                                          ; $6c42: $ff
	inc e                                            ; $6c43: $1c
	rst $38                                          ; $6c44: $ff
	ld a, h                                          ; $6c45: $7c
	adc a                                            ; $6c46: $8f
	db $fc                                           ; $6c47: $fc
	rlca                                             ; $6c48: $07
	ld a, e                                          ; $6c49: $7b
	cp $7f                                           ; $6c4a: $fe $7f
	jp nc, $c39b                                     ; $6c4c: $d2 $9b $c3

	cp $23                                           ; $6c4f: $fe $23
	ld a, $76                                        ; $6c51: $3e $76
	ldh [$57], a                                     ; $6c53: $e0 $57
	cp $80                                           ; $6c55: $fe $80
	ld sp, hl                                        ; $6c57: $f9
	add hl, bc                                       ; $6c58: $09
	ld hl, sp+$08                                    ; $6c59: $f8 $08
	rst $38                                          ; $6c5b: $ff
	rlca                                             ; $6c5c: $07
	ld hl, sp+$0f                                    ; $6c5d: $f8 $0f
	db $f4                                           ; $6c5f: $f4
	rra                                              ; $6c60: $1f
	db $f4                                           ; $6c61: $f4
	rra                                              ; $6c62: $1f
	ldh a, [c]                                       ; $6c63: $f2
	ccf                                              ; $6c64: $3f
	push af                                          ; $6c65: $f5
	ccf                                              ; $6c66: $3f
	rst SubAFromDE                                          ; $6c67: $df
	ld e, e                                          ; $6c68: $5b
	adc a                                            ; $6c69: $8f
	adc c                                            ; $6c6a: $89
	ld a, a                                          ; $6c6b: $7f
	ld [hl], c                                       ; $6c6c: $71
	adc a                                            ; $6c6d: $8f
	ld sp, hl                                        ; $6c6e: $f9
	daa                                              ; $6c6f: $27
	db $fd                                           ; $6c70: $fd
	rla                                              ; $6c71: $17
	db $fd                                           ; $6c72: $fd
	inc bc                                           ; $6c73: $03
	rst $38                                          ; $6c74: $ff
	dec hl                                           ; $6c75: $2b
	sbc [hl]                                         ; $6c76: $9e
	rst $38                                          ; $6c77: $ff
	ld b, [hl]                                       ; $6c78: $46
	ret nz                                           ; $6c79: $c0

	ld e, [hl]                                       ; $6c7a: $5e
	add $9d                                          ; $6c7b: $c6 $9d
	cp e                                             ; $6c7d: $bb
	rst JumpTable                                          ; $6c7e: $c7
	ld [hl], a                                       ; $6c7f: $77
	cp $76                                           ; $6c80: $fe $76
	call z, $fe57                                    ; $6c82: $cc $57 $fe
	ld e, [hl]                                       ; $6c85: $5e
	add $9d                                          ; $6c86: $c6 $9d
	sbc l                                            ; $6c88: $9d
	db $e3                                           ; $6c89: $e3
	ld [hl], a                                       ; $6c8a: $77
	cp $6e                                           ; $6c8b: $fe $6e
	jp z, $989e                                      ; $6c8d: $ca $9e $98

	ld a, e                                          ; $6c90: $7b
	cp $6f                                           ; $6c91: $fe $6f
	nop                                              ; $6c93: $00
	halt                                             ; $6c94: $76
	call z, $fe57                                    ; $6c95: $cc $57 $fe
	sbc l                                            ; $6c98: $9d
	ld l, l                                          ; $6c99: $6d
	sub e                                            ; $6c9a: $93
	ld c, a                                          ; $6c9b: $4f
	cp $6e                                           ; $6c9c: $fe $6e
	jp z, $fe77                                      ; $6c9e: $ca $77 $fe

	sbc l                                            ; $6ca1: $9d
	dec a                                            ; $6ca2: $3d
	jp $fe77                                         ; $6ca3: $c3 $77 $fe


	ld l, a                                          ; $6ca6: $6f
	jp z, $fe5f                                      ; $6ca7: $ca $5f $fe

	ld e, [hl]                                       ; $6caa: $5e
	add $9d                                          ; $6cab: $c6 $9d
	ld e, $e1                                        ; $6cad: $1e $e1
	ld [hl], a                                       ; $6caf: $77
	cp $4e                                           ; $6cb0: $fe $4e
	jp z, $c85e                                      ; $6cb2: $ca $5e $c8

	ld a, a                                          ; $6cb5: $7f
	cp $9d                                           ; $6cb6: $fe $9d
	sbc [hl]                                         ; $6cb8: $9e
	pop hl                                           ; $6cb9: $e1
	ld [hl], a                                       ; $6cba: $77
	cp $7e                                           ; $6cbb: $fe $7e
	cp $82                                           ; $6cbd: $fe $82
	call nz, $ce7c                                   ; $6cbf: $c4 $7c $ce
	ld a, [hl]                                       ; $6cc2: $7e
	call nc, $a6f6                                   ; $6cc3: $d4 $f6 $a6
	and $cf                                          ; $6cc6: $e6 $cf
	ld c, a                                          ; $6cc8: $4f
	or c                                             ; $6cc9: $b1
	or c                                             ; $6cca: $b1
	cp $7e                                           ; $6ccb: $fe $7e
	inc hl                                           ; $6ccd: $23
	ld a, $13                                        ; $6cce: $3e $13
	ld e, $7b                                        ; $6cd0: $1e $7b
	ld a, [hl]                                       ; $6cd2: $7e
	dec [hl]                                         ; $6cd3: $35
	ld [hl], a                                       ; $6cd4: $77
	ld h, l                                          ; $6cd5: $65
	ld h, a                                          ; $6cd6: $67
	reti                                             ; $6cd7: $d9


	rst SubAFromDE                                          ; $6cd8: $df
	or e                                             ; $6cd9: $b3

jr_05f_6cda:
	cp [hl]                                          ; $6cda: $be
	ld e, a                                          ; $6cdb: $5f
	ld [hl], d                                       ; $6cdc: $72
	call z, $b79d                                    ; $6cdd: $cc $9d $b7
	ld a, b                                          ; $6ce0: $78
	ld e, a                                          ; $6ce1: $5f
	cp $8b                                           ; $6ce2: $fe $8b
	add sp, $78                                      ; $6ce4: $e8 $78
	add $76                                          ; $6ce6: $c6 $76
	db $ec                                           ; $6ce8: $ec
	ld l, [hl]                                       ; $6ce9: $6e
	cp $7e                                           ; $6cea: $fe $7e
	db $e4                                           ; $6cec: $e4
	ld h, h                                          ; $6ced: $64
	rst $38                                          ; $6cee: $ff
	rst $38                                          ; $6cef: $ff
	add b                                            ; $6cf0: $80
	add b                                            ; $6cf1: $80
	rst $38                                          ; $6cf2: $ff
	ld a, a                                          ; $6cf3: $7f
	ld de, $691f                                     ; $6cf4: $11 $1f $69
	ld l, a                                          ; $6cf7: $6f
	ld [hl], a                                       ; $6cf8: $77
	jp nc, $0997                                     ; $6cf9: $d2 $97 $09

	rrca                                             ; $6cfc: $0f
	rst SubAFromDE                                          ; $6cfd: $df
	rst SubAFromDE                                          ; $6cfe: $df
	ccf                                              ; $6cff: $3f
	inc a                                            ; $6d00: $3c
	rst SubAFromDE                                          ; $6d01: $df
	db $fc                                           ; $6d02: $fc
	ld e, [hl]                                       ; $6d03: $5e
	add $9e                                          ; $6d04: $c6 $9e
	db $e3                                           ; $6d06: $e3
	ld [hl], e                                       ; $6d07: $73
	cp $97                                           ; $6d08: $fe $97
	add sp, $3c                                      ; $6d0a: $e8 $3c
	add sp, $38                                      ; $6d0c: $e8 $38
	sub $76                                          ; $6d0e: $d6 $76
	call z, Call_05f_676e                            ; $6d10: $cc $6e $67
	and b                                            ; $6d13: $a0
	sbc d                                            ; $6d14: $9a
	inc de                                           ; $6d15: $13
	ccf                                              ; $6d16: $3f
	inc bc                                           ; $6d17: $03
	rra                                              ; $6d18: $1f
	ld l, e                                          ; $6d19: $6b
	ld [hl], e                                       ; $6d1a: $73
	adc $7b                                          ; $6d1b: $ce $7b
	and b                                            ; $6d1d: $a0
	sbc h                                            ; $6d1e: $9c
	cp a                                             ; $6d1f: $bf
	ld a, a                                          ; $6d20: $7f
	ld a, l                                          ; $6d21: $7d
	ld l, [hl]                                       ; $6d22: $6e
	jp z, Jump_05f_739d                              ; $6d23: $ca $9d $73

	adc a                                            ; $6d26: $8f
	ld h, a                                          ; $6d27: $67
	cp $6e                                           ; $6d28: $fe $6e
	jp z, $fe5f                                      ; $6d2a: $ca $5f $fe

	ld e, [hl]                                       ; $6d2d: $5e
	add $9d                                          ; $6d2e: $c6 $9d
	cp h                                             ; $6d30: $bc
	jp $fe77                                         ; $6d31: $c3 $77 $fe


	ld l, [hl]                                       ; $6d34: $6e
	jp z, $fe5f                                      ; $6d35: $ca $5f $fe

	ld e, a                                          ; $6d38: $5f
	ld b, $6f                                        ; $6d39: $06 $6f
	jr nc, jr_05f_6cda                               ; $6d3b: $30 $9d

	or [hl]                                          ; $6d3d: $b6
	ret                                              ; $6d3e: $c9


	ld c, a                                          ; $6d3f: $4f
	cp $46                                           ; $6d40: $fe $46
	ret nz                                           ; $6d42: $c0

	ld l, [hl]                                       ; $6d43: $6e
	jp z, $fe77                                      ; $6d44: $ca $77 $fe

	sbc c                                            ; $6d47: $99
	cp l                                             ; $6d48: $bd
	jp $e799                                         ; $6d49: $c3 $99 $e7


	jp Jump_05f_5fff                                 ; $6d4c: $c3 $ff $5f


	ret nz                                           ; $6d4f: $c0

	sbc c                                            ; $6d50: $99
	call c, $cce3                                    ; $6d51: $dc $e3 $cc
	di                                               ; $6d54: $f3
	pop hl                                           ; $6d55: $e1
	rst $38                                          ; $6d56: $ff
	ld l, [hl]                                       ; $6d57: $6e
	jp z, $b677                                      ; $6d58: $ca $77 $b6

	sbc c                                            ; $6d5b: $99
	sbc $e1                                          ; $6d5c: $de $e1
	call $e3f3                                       ; $6d5e: $cd $f3 $e3
	rst $38                                          ; $6d61: $ff
	ld d, [hl]                                       ; $6d62: $56
	call nz, $c49b                                   ; $6d63: $c4 $9b $c4
	ei                                               ; $6d66: $fb
	pop hl                                           ; $6d67: $e1
	rst $38                                          ; $6d68: $ff
	ld l, a                                          ; $6d69: $6f
	sbc d                                            ; $6d6a: $9a
	ld l, a                                          ; $6d6b: $6f
	ldh [rPCM34], a                                  ; $6d6c: $e0 $77
	ret nc                                           ; $6d6e: $d0

	sub e                                            ; $6d6f: $93
	push bc                                          ; $6d70: $c5
	ld a, a                                          ; $6d71: $7f
	pop hl                                           ; $6d72: $e1
	ld a, a                                          ; $6d73: $7f
	pop af                                           ; $6d74: $f1
	ld a, a                                          ; $6d75: $7f
	db $fc                                           ; $6d76: $fc
	ld l, a                                          ; $6d77: $6f
	ei                                               ; $6d78: $fb
	ld l, e                                          ; $6d79: $6b
	db $fc                                           ; $6d7a: $fc
	ld l, a                                          ; $6d7b: $6f
	ld a, c                                          ; $6d7c: $79
	ld a, d                                          ; $6d7d: $7a
	adc [hl]                                         ; $6d7e: $8e
	rst $38                                          ; $6d7f: $ff
	xor a                                            ; $6d80: $af
	ld hl, sp+$2f                                    ; $6d81: $f8 $2f
	ld hl, sp+$0f                                    ; $6d83: $f8 $0f
	ld hl, sp-$61                                    ; $6d85: $f8 $9f
	ld hl, sp-$01                                    ; $6d87: $f8 $ff
	ld hl, sp+$2f                                    ; $6d89: $f8 $2f
	add sp, $1f                                      ; $6d8b: $e8 $1f
	ld hl, sp-$31                                    ; $6d8d: $f8 $cf
	ld hl, sp+$56                                    ; $6d8f: $f8 $56
	call nz, $3291                                   ; $6d91: $c4 $91 $32
	db $fd                                           ; $6d94: $fd
	ld a, b                                          ; $6d95: $78
	rst $38                                          ; $6d96: $ff
	and $7e                                          ; $6d97: $e6 $7e
	push hl                                          ; $6d99: $e5
	ld a, a                                          ; $6d9a: $7f
	push af                                          ; $6d9b: $f5
	ld a, a                                          ; $6d9c: $7f
	db $fc                                           ; $6d9d: $fc
	ld a, a                                          ; $6d9e: $7f
	ei                                               ; $6d9f: $fb
	ld a, e                                          ; $6da0: $7b
	ld a, b                                          ; $6da1: $78
	dec a                                            ; $6da2: $3d
	adc h                                            ; $6da3: $8c
	ld a, a                                          ; $6da4: $7f
	di                                               ; $6da5: $f3
	ld a, a                                          ; $6da6: $7f
	ld l, a                                          ; $6da7: $6f
	ld a, h                                          ; $6da8: $7c
	xor a                                            ; $6da9: $af
	db $fc                                           ; $6daa: $fc
	rrca                                             ; $6dab: $0f
	db $fc                                           ; $6dac: $fc
	sbc a                                            ; $6dad: $9f
	db $fc                                           ; $6dae: $fc
	rst $38                                          ; $6daf: $ff
	db $fc                                           ; $6db0: $fc
	cpl                                              ; $6db1: $2f
	db $ec                                           ; $6db2: $ec
	rra                                              ; $6db3: $1f
	db $fc                                           ; $6db4: $fc
	rst GetHLinHL                                          ; $6db5: $cf
	cp $6e                                           ; $6db6: $fe $6e
	jp z, $fe6f                                      ; $6db8: $ca $6f $fe

	sbc h                                            ; $6dbb: $9c
	ld h, a                                          ; $6dbc: $67
	sbc a                                            ; $6dbd: $9f
	rrca                                             ; $6dbe: $0f
	ld [hl], a                                       ; $6dbf: $77
	and b                                            ; $6dc0: $a0
	add d                                            ; $6dc1: $82
	ccf                                              ; $6dc2: $3f
	pop af                                           ; $6dc3: $f1
	rra                                              ; $6dc4: $1f
	db $fc                                           ; $6dc5: $fc
	rrca                                             ; $6dc6: $0f
	ei                                               ; $6dc7: $fb
	dec bc                                           ; $6dc8: $0b
	db $fc                                           ; $6dc9: $fc
	rrca                                             ; $6dca: $0f
	ld hl, sp+$0f                                    ; $6dcb: $f8 $0f
	di                                               ; $6dcd: $f3
	sbc a                                            ; $6dce: $9f
	xor a                                            ; $6dcf: $af
	ld sp, hl                                        ; $6dd0: $f9
	cpl                                              ; $6dd1: $2f
	ld sp, hl                                        ; $6dd2: $f9
	rrca                                             ; $6dd3: $0f
	ld sp, hl                                        ; $6dd4: $f9
	sbc a                                            ; $6dd5: $9f
	ld sp, hl                                        ; $6dd6: $f9
	rst $38                                          ; $6dd7: $ff
	ld sp, hl                                        ; $6dd8: $f9
	cpl                                              ; $6dd9: $2f
	jp hl                                            ; $6dda: $e9


	rra                                              ; $6ddb: $1f
	ld sp, hl                                        ; $6ddc: $f9
	rst GetHLinHL                                          ; $6ddd: $cf
	ei                                               ; $6dde: $fb
	ld e, [hl]                                       ; $6ddf: $5e
	add $7f                                          ; $6de0: $c6 $7f
	cp $9b                                           ; $6de2: $fe $9b
	inc sp                                           ; $6de4: $33
	rst GetHLinHL                                          ; $6de5: $cf
	add a                                            ; $6de6: $87
	rst $38                                          ; $6de7: $ff
	ld c, [hl]                                       ; $6de8: $4e
	jp nz, $c79d                                     ; $6de9: $c2 $9d $c7

	rst $38                                          ; $6dec: $ff
	ld l, [hl]                                       ; $6ded: $6e
	jp z, $fe6f                                      ; $6dee: $ca $6f $fe

	ld a, a                                          ; $6df1: $7f
	ld c, $7f                                        ; $6df2: $0e $7f
	db $10                                           ; $6df4: $10
	ld c, [hl]                                       ; $6df5: $4e
	jp nz, $f07f                                     ; $6df6: $c2 $7f $f0

	ld e, a                                          ; $6df9: $5f
	jr nc, jr_05f_6e7b                               ; $6dfa: $30 $7f

	cp $7c                                           ; $6dfc: $fe $7c
	ld a, h                                          ; $6dfe: $7c
	sbc l                                            ; $6dff: $9d
	pop bc                                           ; $6e00: $c1
	rst $38                                          ; $6e01: $ff
	ld c, $c0                                        ; $6e02: $0e $c0
	ld a, h                                          ; $6e04: $7c
	ld b, b                                          ; $6e05: $40
	sbc h                                            ; $6e06: $9c
	inc a                                            ; $6e07: $3c
	rst $38                                          ; $6e08: $ff
	nop                                              ; $6e09: $00
	ld d, e                                          ; $6e0a: $53
	cp $9e                                           ; $6e0b: $fe $9e
	ld e, $13                                        ; $6e0d: $1e $13
	ldh a, [$9d]                                     ; $6e0f: $f0 $9d
	ld a, a                                          ; $6e11: $7f
	add b                                            ; $6e12: $80
	ld d, a                                          ; $6e13: $57
	ldh a, [$9b]                                     ; $6e14: $f0 $9b
	ld bc, $fffe                                     ; $6e16: $01 $fe $ff
	nop                                              ; $6e19: $00
	ld d, a                                          ; $6e1a: $57
	ldh a, [rPCM34]                                  ; $6e1b: $f0 $77
	ei                                               ; $6e1d: $fb
	sub a                                            ; $6e1e: $97
	cp l                                             ; $6e1f: $bd
	db $fd                                           ; $6e20: $fd
	daa                                              ; $6e21: $27
	rst SubAFromBC                                          ; $6e22: $e7
	ld a, [de]                                       ; $6e23: $1a
	ld a, [rIF]                                    ; $6e24: $fa $0f $ff
	ld a, b                                          ; $6e27: $78
	and e                                            ; $6e28: $a3
	sbc [hl]                                         ; $6e29: $9e
	db $e4                                           ; $6e2a: $e4
	ld [hl], a                                       ; $6e2b: $77
	rst AddAOntoHL                                          ; $6e2c: $ef
	sub d                                            ; $6e2d: $92
	scf                                              ; $6e2e: $37
	ccf                                              ; $6e2f: $3f
	ret z                                            ; $6e30: $c8

	rst GetHLinHL                                          ; $6e31: $cf
	ld [hl], b                                       ; $6e32: $70
	ld a, a                                          ; $6e33: $7f
	sub b                                            ; $6e34: $90
	rst $38                                          ; $6e35: $ff
	ret nc                                           ; $6e36: $d0

	ld a, a                                          ; $6e37: $7f
	ldh a, [$3f]                                     ; $6e38: $f0 $3f
	db $fc                                           ; $6e3a: $fc
	ld a, e                                          ; $6e3b: $7b
	ldh a, [$7f]                                     ; $6e3c: $f0 $7f
	ld l, $4f                                        ; $6e3e: $2e $4f
	ret nc                                           ; $6e40: $d0

	rst SubAFromDE                                          ; $6e41: $df
	db $fd                                           ; $6e42: $fd
	ld l, a                                          ; $6e43: $6f
	ret nc                                           ; $6e44: $d0

	sbc h                                            ; $6e45: $9c
	ld [de], a                                       ; $6e46: $12
	rst $38                                          ; $6e47: $ff
	inc h                                            ; $6e48: $24
	sbc $ff                                          ; $6e49: $de $ff
	ld a, a                                          ; $6e4b: $7f
	rst AddAOntoHL                                          ; $6e4c: $ef
	sbc [hl]                                         ; $6e4d: $9e
	dec sp                                           ; $6e4e: $3b
	ld l, e                                          ; $6e4f: $6b
	ret nc                                           ; $6e50: $d0

	sbc e                                            ; $6e51: $9b
	ld d, b                                          ; $6e52: $50
	rst $38                                          ; $6e53: $ff
	jr nc, @+$01                                     ; $6e54: $30 $ff

	ld [hl], a                                       ; $6e56: $77
	ret nc                                           ; $6e57: $d0

	sbc [hl]                                         ; $6e58: $9e
	ldh a, [$2b]                                     ; $6e59: $f0 $2b
	ret nc                                           ; $6e5b: $d0

	ld h, a                                          ; $6e5c: $67
	and b                                            ; $6e5d: $a0
	sbc [hl]                                         ; $6e5e: $9e
	ld a, $4b                                        ; $6e5f: $3e $4b
	and b                                            ; $6e61: $a0
	ld a, [hl]                                       ; $6e62: $7e
	ld l, [hl]                                       ; $6e63: $6e
	ld c, a                                          ; $6e64: $4f
	ret nc                                           ; $6e65: $d0

	sbc [hl]                                         ; $6e66: $9e
	jr c, jr_05f_6ec4                                ; $6e67: $38 $5b

	ldh a, [$9b]                                     ; $6e69: $f0 $9b
	add b                                            ; $6e6b: $80
	ld a, a                                          ; $6e6c: $7f
	rst $38                                          ; $6e6d: $ff
	nop                                              ; $6e6e: $00
	ld c, a                                          ; $6e6f: $4f
	db $10                                           ; $6e70: $10
	sbc l                                            ; $6e71: $9d
	cp $01                                           ; $6e72: $fe $01
	ld b, a                                          ; $6e74: $47
	nop                                              ; $6e75: $00
	sbc [hl]                                         ; $6e76: $9e
	ld a, $4b                                        ; $6e77: $3e $4b
	ldh a, [$4e]                                     ; $6e79: $f0 $4e

jr_05f_6e7b:
	jp nz, Jump_05f_407c                             ; $6e7b: $c2 $7c $40

	ld a, [hl]                                       ; $6e7e: $7e
	adc $77                                          ; $6e7f: $ce $77
	cp $8c                                           ; $6e81: $fe $8c

jr_05f_6e83:
	ld h, c                                          ; $6e83: $61
	sbc a                                            ; $6e84: $9f
	ld [hl], e                                       ; $6e85: $73
	sbc a                                            ; $6e86: $9f
	ld e, [hl]                                       ; $6e87: $5e
	cp [hl]                                          ; $6e88: $be
	jr jr_05f_6e83                                   ; $6e89: $18 $f8

	ldh [$e0], a                                     ; $6e8b: $e0 $e0
	nop                                              ; $6e8d: $00
	rst $38                                          ; $6e8e: $ff
	inc bc                                           ; $6e8f: $03
	db $fc                                           ; $6e90: $fc
	ccf                                              ; $6e91: $3f
	ret nz                                           ; $6e92: $c0

	rst $38                                          ; $6e93: $ff
	nop                                              ; $6e94: $00
	ld hl, sp-$06                                    ; $6e95: $f8 $fa
	ld [hl], a                                       ; $6e97: $77
	db $f4                                           ; $6e98: $f4
	ld [hl], a                                       ; $6e99: $77
	cp $f9                                           ; $6e9a: $fe $f9
	ld h, a                                          ; $6e9c: $67

Call_05f_6e9d:
	or a                                             ; $6e9d: $b7
	rrca                                             ; $6e9e: $0f
	ldh a, [$f7]                                     ; $6e9f: $f0 $f7
	inc bc                                           ; $6ea1: $03
	ldh a, [$03]                                     ; $6ea2: $f0 $03
	ldh a, [$03]                                     ; $6ea4: $f0 $03
	ldh a, [$03]                                     ; $6ea6: $f0 $03
	ldh a, [$3f]                                     ; $6ea8: $f0 $3f
	ldh a, [$1f]                                     ; $6eaa: $f0 $1f
	ld b, b                                          ; $6eac: $40
	sbc l                                            ; $6ead: $9d
	db $fc                                           ; $6eae: $fc
	inc bc                                           ; $6eaf: $03
	ld c, e                                          ; $6eb0: $4b
	adc $9c                                          ; $6eb1: $ce $9c
	rst $38                                          ; $6eb3: $ff
	ret nz                                           ; $6eb4: $c0

	ccf                                              ; $6eb5: $3f
	ld [hl], a                                       ; $6eb6: $77
	db $ec                                           ; $6eb7: $ec
	sbc [hl]                                         ; $6eb8: $9e
	rra                                              ; $6eb9: $1f
	ld a, [$ce7e]                                    ; $6eba: $fa $7e $ce
	ld [hl], a                                       ; $6ebd: $77
	cp $95                                           ; $6ebe: $fe $95
	add [hl]                                         ; $6ec0: $86
	ld sp, hl                                        ; $6ec1: $f9
	adc $f9                                          ; $6ec2: $ce $f9

jr_05f_6ec4:
	ld c, d                                          ; $6ec4: $4a
	ld a, l                                          ; $6ec5: $7d
	jr c, @+$41                                      ; $6ec6: $38 $3f

	rlca                                             ; $6ec8: $07
	rlca                                             ; $6ec9: $07
	jr nc, jr_05f_6ecc                               ; $6eca: $30 $00

jr_05f_6ecc:
	call $9c22                                       ; $6ecc: $cd $22 $9c
	inc hl                                           ; $6ecf: $23
	inc sp                                           ; $6ed0: $33
	dec [hl]                                         ; $6ed1: $35
	db $dd                                           ; $6ed2: $dd
	ld d, l                                          ; $6ed3: $55
	sbc h                                            ; $6ed4: $9c
	ld d, e                                          ; $6ed5: $53
	inc sp                                           ; $6ed6: $33
	ld [hl-], a                                      ; $6ed7: $32
	ld d, a                                          ; $6ed8: $57
	or $da                                           ; $6ed9: $f6 $da
	inc sp                                           ; $6edb: $33
	ld c, a                                          ; $6edc: $4f
	or $9b                                           ; $6edd: $f6 $9b
	ld [hl], a                                       ; $6edf: $77
	scf                                              ; $6ee0: $37
	ld [hl], e                                       ; $6ee1: $73
	ld h, [hl]                                       ; $6ee2: $66
	dec sp                                           ; $6ee3: $3b
	or $9e                                           ; $6ee4: $f6 $9e
	ld [hl], a                                       ; $6ee6: $77
	ld a, e                                          ; $6ee7: $7b
	or $95                                           ; $6ee8: $f6 $95
	inc h                                            ; $6eea: $24
	ld b, h                                          ; $6eeb: $44
	ld b, h                                          ; $6eec: $44
	ld h, [hl]                                       ; $6eed: $66
	ld b, [hl]                                       ; $6eee: $46
	ld h, h                                          ; $6eef: $64
	ld h, [hl]                                       ; $6ef0: $66
	ld b, h                                          ; $6ef1: $44
	ld b, h                                          ; $6ef2: $44
	ld b, d                                          ; $6ef3: $42
	ld a, e                                          ; $6ef4: $7b
	or $db                                           ; $6ef5: $f6 $db
	ld b, h                                          ; $6ef7: $44
	sbc [hl]                                         ; $6ef8: $9e
	ld b, d                                          ; $6ef9: $42
	ld e, $00                                        ; $6efa: $1e $00
	ldh [rP1], a                                     ; $6efc: $e0 $00
	ldh [rP1], a                                     ; $6efe: $e0 $00
	ldh [rP1], a                                     ; $6f00: $e0 $00
	ldh [rP1], a                                     ; $6f02: $e0 $00
	ldh [rP1], a                                     ; $6f04: $e0 $00
	ldh [rP1], a                                     ; $6f06: $e0 $00
	ldh [rP1], a                                     ; $6f08: $e0 $00
	ldh [rP1], a                                     ; $6f0a: $e0 $00
	ldh [rP1], a                                     ; $6f0c: $e0 $00
	ldh [rP1], a                                     ; $6f0e: $e0 $00
	ldh [rP1], a                                     ; $6f10: $e0 $00
	ldh [rP1], a                                     ; $6f12: $e0 $00
	ldh [rP1], a                                     ; $6f14: $e0 $00
	ldh [$4e], a                                     ; $6f16: $e0 $4e
	ld a, [bc]                                       ; $6f18: $0a
	nop                                              ; $6f19: $00
	pop bc                                           ; $6f1a: $c1
	inc sp                                           ; $6f1b: $33
	inc bc                                           ; $6f1c: $03
	rst $38                                          ; $6f1d: $ff
	inc bc                                           ; $6f1e: $03
	rst $38                                          ; $6f1f: $ff
	push de                                          ; $6f20: $d5
	inc sp                                           ; $6f21: $33
	xor $81                                          ; $6f22: $ee $81
	sbc $ff                                          ; $6f24: $de $ff
	rst SubAFromDE                                          ; $6f26: $df
	ret nz                                           ; $6f27: $c0

	db $db                                           ; $6f28: $db
	rst $38                                          ; $6f29: $ff
	rst $38                                          ; $6f2a: $ff
	db $db                                           ; $6f2b: $db
	rst $38                                          ; $6f2c: $ff
	rst SubAFromDE                                          ; $6f2d: $df
	rrca                                             ; $6f2e: $0f
	ld c, a                                          ; $6f2f: $4f
	ldh a, [$df]                                     ; $6f30: $f0 $df
	ldh a, [$2f]                                     ; $6f32: $f0 $2f
	add sp, -$27                                     ; $6f34: $e8 $d9
	rst $38                                          ; $6f36: $ff
	inc bc                                           ; $6f37: $03
	ldh a, [$0b]                                     ; $6f38: $f0 $0b
	ldh a, [$03]                                     ; $6f3a: $f0 $03
	add b                                            ; $6f3c: $80
	inc bc                                           ; $6f3d: $03
	add b                                            ; $6f3e: $80
	inc bc                                           ; $6f3f: $03
	ldh a, [$03]                                     ; $6f40: $f0 $03
	ldh a, [$03]                                     ; $6f42: $f0 $03
	ldh a, [rAUD3LEN]                                ; $6f44: $f0 $1b
	ldh a, [$df]                                     ; $6f46: $f0 $df
	ld bc, $e84f                                     ; $6f48: $01 $4f $e8
	rst SubAFromDE                                          ; $6f4b: $df
	cp $2f                                           ; $6f4c: $fe $2f
	add sp, $03                                      ; $6f4e: $e8 $03
	or b                                             ; $6f50: $b0
	inc bc                                           ; $6f51: $03
	ldh a, [$2e]                                     ; $6f52: $f0 $2e
	ret nc                                           ; $6f54: $d0

	inc bc                                           ; $6f55: $03
	add b                                            ; $6f56: $80
	inc bc                                           ; $6f57: $03
	and b                                            ; $6f58: $a0
	inc bc                                           ; $6f59: $03
	ldh a, [rAUD1LOW]                                ; $6f5a: $f0 $13
	add b                                            ; $6f5c: $80
	inc bc                                           ; $6f5d: $03
	ret nz                                           ; $6f5e: $c0

	rla                                              ; $6f5f: $17
	ret nz                                           ; $6f60: $c0

	ld [hl], a                                       ; $6f61: $77
	ei                                               ; $6f62: $fb
	db $dd                                           ; $6f63: $dd
	add b                                            ; $6f64: $80
	ld [hl], a                                       ; $6f65: $77
	ld hl, sp-$03                                    ; $6f66: $f8 $fd
	ld l, a                                          ; $6f68: $6f
	rst SubAFromBC                                          ; $6f69: $e7
	ld l, a                                          ; $6f6a: $6f
	or $67                                           ; $6f6b: $f6 $67
	ld hl, sp+$5f                                    ; $6f6d: $f8 $5f
	or a                                             ; $6f6f: $b7
	ld e, a                                          ; $6f70: $5f
	add sp, $57                                      ; $6f71: $e8 $57
	and e                                            ; $6f73: $a3
	inc bc                                           ; $6f74: $03
	ldh a, [$5b]                                     ; $6f75: $f0 $5b
	ldh a, [$df]                                     ; $6f77: $f0 $df
	inc c                                            ; $6f79: $0c
	halt                                             ; $6f7a: $76
	rst SubAFromBC                                          ; $6f7b: $e7
	rst SubAFromDE                                          ; $6f7c: $df
	ld bc, $ab75                                     ; $6f7d: $01 $75 $ab
	db $dd                                           ; $6f80: $dd
	cp $03                                           ; $6f81: $fe $03
	add b                                            ; $6f83: $80
	inc bc                                           ; $6f84: $03
	add b                                            ; $6f85: $80
	inc bc                                           ; $6f86: $03
	ldh a, [$03]                                     ; $6f87: $f0 $03
	add b                                            ; $6f89: $80
	inc bc                                           ; $6f8a: $03
	ret nz                                           ; $6f8b: $c0

	dec de                                           ; $6f8c: $1b
	ret nz                                           ; $6f8d: $c0

	db $dd                                           ; $6f8e: $dd
	rst $38                                          ; $6f8f: $ff
	rst SubAFromDE                                          ; $6f90: $df
	inc bc                                           ; $6f91: $03
	ld c, [hl]                                       ; $6f92: $4e
	sub a                                            ; $6f93: $97
	rst SubAFromDE                                          ; $6f94: $df
	db $fc                                           ; $6f95: $fc
	db $db                                           ; $6f96: $db
	rst $38                                          ; $6f97: $ff
	ld b, a                                          ; $6f98: $47
	add sp, $02                                      ; $6f99: $e8 $02
	ld e, a                                          ; $6f9b: $5f
	inc bc                                           ; $6f9c: $03
	ldh a, [$db]                                     ; $6f9d: $f0 $db
	rst $38                                          ; $6f9f: $ff
	rst SubAFromDE                                          ; $6fa0: $df
	ld h, b                                          ; $6fa1: $60
	db $db                                           ; $6fa2: $db
	rst $38                                          ; $6fa3: $ff
	rst SubAFromDE                                          ; $6fa4: $df
	add b                                            ; $6fa5: $80
	cpl                                              ; $6fa6: $2f
	sbc b                                            ; $6fa7: $98
	inc bc                                           ; $6fa8: $03
	add b                                            ; $6fa9: $80
	inc bc                                           ; $6faa: $03
	ldh a, [$03]                                     ; $6fab: $f0 $03
	add b                                            ; $6fad: $80
	ld d, e                                          ; $6fae: $53
	add b                                            ; $6faf: $80
	inc bc                                           ; $6fb0: $03
	ret nz                                           ; $6fb1: $c0

	rrca                                             ; $6fb2: $0f
	ret nz                                           ; $6fb3: $c0

	ld d, d                                          ; $6fb4: $52
	inc e                                            ; $6fb5: $1c
	inc bc                                           ; $6fb6: $03
	ldh a, [$3f]                                     ; $6fb7: $f0 $3f
	ldh a, [$de]                                     ; $6fb9: $f0 $de
	ret nz                                           ; $6fbb: $c0

	ld d, e                                          ; $6fbc: $53
	add sp, -$22                                     ; $6fbd: $e8 $de
	rrca                                             ; $6fbf: $0f
	ld d, e                                          ; $6fc0: $53
	ldh a, [$de]                                     ; $6fc1: $f0 $de
	ldh a, [$33]                                     ; $6fc3: $f0 $33
	add sp, -$27                                     ; $6fc5: $e8 $d9
	rst $38                                          ; $6fc7: $ff
	sbc $30                                          ; $6fc8: $de $30
	ld d, e                                          ; $6fca: $53
	cp b                                             ; $6fcb: $b8
	sbc $03                                          ; $6fcc: $de $03
	ld d, e                                          ; $6fce: $53
	ret c                                            ; $6fcf: $d8

	sbc $fc                                          ; $6fd0: $de $fc
	inc sp                                           ; $6fd2: $33
	add sp, $03                                      ; $6fd3: $e8 $03
	ld h, b                                          ; $6fd5: $60
	inc bc                                           ; $6fd6: $03
	ldh a, [$03]                                     ; $6fd7: $f0 $03
	ld b, b                                          ; $6fd9: $40
	inc bc                                           ; $6fda: $03
	ld b, b                                          ; $6fdb: $40
	ld h, h                                          ; $6fdc: $64
	jp hl                                            ; $6fdd: $e9


	inc bc                                           ; $6fde: $03
	ldh a, [rVBK]                                    ; $6fdf: $f0 $4f
	sub b                                            ; $6fe1: $90
	ld [hl], e                                       ; $6fe2: $73
	adc a                                            ; $6fe3: $8f
	ld h, a                                          ; $6fe4: $67
	add sp, -$23                                     ; $6fe5: $e8 $dd
	ld bc, $f057                                     ; $6fe7: $01 $57 $f0
	ld h, l                                          ; $6fea: $65
	add hl, hl                                       ; $6feb: $29
	ld b, a                                          ; $6fec: $47
	add sp, $03                                      ; $6fed: $e8 $03
	and b                                            ; $6fef: $a0
	ld h, d                                          ; $6ff0: $62
	ld hl, $1f6e                                     ; $6ff1: $21 $6e $1f
	db $dd                                           ; $6ff4: $dd
	add b                                            ; $6ff5: $80
	ld l, e                                          ; $6ff6: $6b
	ld c, b                                          ; $6ff7: $48
	ld [hl], e                                       ; $6ff8: $73
	ld b, a                                          ; $6ff9: $47
	ld h, a                                          ; $6ffa: $67
	ret c                                            ; $6ffb: $d8

	db $dd                                           ; $6ffc: $dd
	db $fc                                           ; $6ffd: $fc
	ld l, d                                          ; $6ffe: $6a
	or b                                             ; $6fff: $b0
	ld [hl], d                                       ; $7000: $72
	xor a                                            ; $7001: $af
	inc bc                                           ; $7002: $03
	and b                                            ; $7003: $a0
	dec bc                                           ; $7004: $0b
	ldh a, [$03]                                     ; $7005: $f0 $03
	ld b, b                                          ; $7007: $40
	inc bc                                           ; $7008: $03
	or b                                             ; $7009: $b0
	ld a, e                                          ; $700a: $7b
	db $fc                                           ; $700b: $fc
	inc bc                                           ; $700c: $03
	ldh a, [$d7]                                     ; $700d: $f0 $d7
	rst $38                                          ; $700f: $ff
	rst SubAFromDE                                          ; $7010: $df
	inc c                                            ; $7011: $0c
	ld a, e                                          ; $7012: $7b
	and h                                            ; $7013: $a4
	ld [hl], d                                       ; $7014: $72
	ld l, b                                          ; $7015: $68
	ld a, e                                          ; $7016: $7b
	sub h                                            ; $7017: $94
	ld l, e                                          ; $7018: $6b
	ldh [rPCM34], a                                  ; $7019: $e0 $77
	rla                                              ; $701b: $17
	ld d, a                                          ; $701c: $57
	ret c                                            ; $701d: $d8

	ld [hl], a                                       ; $701e: $77
	ld hl, sp+$67                                    ; $701f: $f8 $67
	ldh a, [$57]                                     ; $7021: $f0 $57
	sub d                                            ; $7023: $92
	ld d, a                                          ; $7024: $57
	add sp, -$27                                     ; $7025: $e8 $d9
	rst $38                                          ; $7027: $ff
	rst SubAFromDE                                          ; $7028: $df
	ld a, a                                          ; $7029: $7f
	ld l, a                                          ; $702a: $6f
	ldh a, [rPCM12]                                  ; $702b: $f0 $76
	jp nc, $f867                                     ; $702d: $d2 $67 $f8

	ld a, e                                          ; $7030: $7b
	sbc l                                            ; $7031: $9d
	ld [hl], e                                       ; $7032: $73
	ret c                                            ; $7033: $d8

	halt                                             ; $7034: $76
	rst SubAFromDE                                          ; $7035: $df
	halt                                             ; $7036: $76
	or d                                             ; $7037: $b2
	ld [hl], a                                       ; $7038: $77
	add sp, -$21                                     ; $7039: $e8 $df
	rra                                              ; $703b: $1f
	inc bc                                           ; $703c: $03
	ld h, b                                          ; $703d: $60
	inc bc                                           ; $703e: $03
	ldh a, [rLY]                                     ; $703f: $f0 $44
	ld [hl], c                                       ; $7041: $71
	scf                                              ; $7042: $37
	ld [hl], b                                       ; $7043: $70
	inc bc                                           ; $7044: $03
	nop                                              ; $7045: $00
	ld d, a                                          ; $7046: $57
	nop                                              ; $7047: $00
	ld l, a                                          ; $7048: $6f
	cp a                                             ; $7049: $bf
	ld e, a                                          ; $704a: $5f
	pop hl                                           ; $704b: $e1
	rlca                                             ; $704c: $07
	ldh a, [rPCM34]                                  ; $704d: $f0 $77
	rst JumpTable                                          ; $704f: $c7
	ld [hl], l                                       ; $7050: $75
	ldh [rPCM12], a                                  ; $7051: $e0 $76
	rst JumpTable                                          ; $7053: $c7
	ld [hl], l                                       ; $7054: $75
	ldh [rPCM12], a                                  ; $7055: $e0 $76
	rst JumpTable                                          ; $7057: $c7
	ld [hl], l                                       ; $7058: $75
	ld hl, sp+$67                                    ; $7059: $f8 $67
	ret c                                            ; $705b: $d8

	ld [hl], a                                       ; $705c: $77
	ld hl, sp+$75                                    ; $705d: $f8 $75
	ldh [rPCM34], a                                  ; $705f: $e0 $77
	ld hl, sp+$54                                    ; $7061: $f8 $54
	adc a                                            ; $7063: $8f
	ld c, [hl]                                       ; $7064: $4e
	and a                                            ; $7065: $a7
	ld c, a                                          ; $7066: $4f
	and b                                            ; $7067: $a0
	sbc $3f                                          ; $7068: $de $3f
	ld [hl], e                                       ; $706a: $73
	ld hl, sp+$75                                    ; $706b: $f8 $75
	jr z, jr_05f_70e5                                ; $706d: $28 $76

	rst JumpTable                                          ; $706f: $c7
	ld [hl], a                                       ; $7070: $77
	ld hl, sp+$77                                    ; $7071: $f8 $77
	add $67                                          ; $7073: $c6 $67
	ret z                                            ; $7075: $c8

	sbc $06                                          ; $7076: $de $06
	ld h, l                                          ; $7078: $65
	rst SubAFromHL                                          ; $7079: $d7
	inc bc                                           ; $707a: $03
	ld h, b                                          ; $707b: $60
	rlca                                             ; $707c: $07
	ldh a, [$03]                                     ; $707d: $f0 $03
	ld [hl], b                                       ; $707f: $70
	inc bc                                           ; $7080: $03
	nop                                              ; $7081: $00
	ld c, a                                          ; $7082: $4f
	nop                                              ; $7083: $00
	sbc $ff                                          ; $7084: $de $ff
	sbc $30                                          ; $7086: $de $30
	ld h, h                                          ; $7088: $64
	ld l, b                                          ; $7089: $68
	call c, Call_05f_57ff                            ; $708a: $dc $ff $57
	add hl, bc                                       ; $708d: $09
	ld l, b                                          ; $708e: $68
	ret nc                                           ; $708f: $d0

	inc sp                                           ; $7090: $33
	add sp, $57                                      ; $7091: $e8 $57
	ld [hl], c                                       ; $7093: $71
	inc bc                                           ; $7094: $03
	ldh a, [rAUD3LEN]                                ; $7095: $f0 $1b
	ldh a, [$de]                                     ; $7097: $f0 $de
	ldh a, [rHDMA3]                                  ; $7099: $f0 $53
	add sp, $47                                      ; $709b: $e8 $47
	sbc b                                            ; $709d: $98
	inc bc                                           ; $709e: $03
	or b                                             ; $709f: $b0
	inc bc                                           ; $70a0: $03
	ldh a, [rVBK]                                    ; $70a1: $f0 $4f
	ldh a, [$de]                                     ; $70a3: $f0 $de
	rrca                                             ; $70a5: $0f
	ld d, e                                          ; $70a6: $53
	adc b                                            ; $70a7: $88
	inc bc                                           ; $70a8: $03
	nop                                              ; $70a9: $00
	inc bc                                           ; $70aa: $03
	nop                                              ; $70ab: $00
	ld c, a                                          ; $70ac: $4f
	rst AddAOntoHL                                          ; $70ad: $ef
	db $dd                                           ; $70ae: $dd
	ld h, b                                          ; $70af: $60
	db $dd                                           ; $70b0: $dd
	rst $38                                          ; $70b1: $ff
	db $dd                                           ; $70b2: $dd
	add b                                            ; $70b3: $80
	ld l, e                                          ; $70b4: $6b
	sub b                                            ; $70b5: $90
	ld [hl], e                                       ; $70b6: $73
	adc a                                            ; $70b7: $8f
	ld h, a                                          ; $70b8: $67
	ret c                                            ; $70b9: $d8

	db $dd                                           ; $70ba: $dd
	db $fc                                           ; $70bb: $fc
	ld l, e                                          ; $70bc: $6b
	or b                                             ; $70bd: $b0
	ld [hl], e                                       ; $70be: $73
	xor a                                            ; $70bf: $af
	ld b, a                                          ; $70c0: $47
	ret nz                                           ; $70c1: $c0

	inc bc                                           ; $70c2: $03
	ldh a, [rWX]                                     ; $70c3: $f0 $4b
	ldh a, [$dd]                                     ; $70c5: $f0 $dd
	rra                                              ; $70c7: $1f
	db $dd                                           ; $70c8: $dd
	rst $38                                          ; $70c9: $ff
	db $dd                                           ; $70ca: $dd
	ldh [$57], a                                     ; $70cb: $e0 $57
	ld hl, sp+$67                                    ; $70cd: $f8 $67
	ret c                                            ; $70cf: $d8

	db $dd                                           ; $70d0: $dd
	inc c                                            ; $70d1: $0c
	inc bc                                           ; $70d2: $03
	sub b                                            ; $70d3: $90
	inc bc                                           ; $70d4: $03
	ldh a, [$03]                                     ; $70d5: $f0 $03
	ldh a, [$03]                                     ; $70d7: $f0 $03
	nop                                              ; $70d9: $00
	daa                                              ; $70da: $27
	nop                                              ; $70db: $00
	ld a, b                                          ; $70dc: $78
	ld [$5971], a                                    ; $70dd: $ea $71 $59
	rst SubAFromDE                                          ; $70e0: $df
	cp $6f                                           ; $70e1: $fe $6f
	ld hl, sp+$77                                    ; $70e3: $f8 $77

jr_05f_70e5:
	jp z, $cf77                                      ; $70e5: $ca $77 $cf

	ld [hl], a                                       ; $70e8: $77
	jp nc, $f077                                     ; $70e9: $d2 $77 $f0

	rst SubAFromDE                                          ; $70ec: $df
	ld a, a                                          ; $70ed: $7f
	ld a, d                                          ; $70ee: $7a
	ld d, h                                          ; $70ef: $54
	ld l, e                                          ; $70f0: $6b
	ldh a, [rPCM34]                                  ; $70f1: $f0 $77
	add sp, $77                                      ; $70f3: $e8 $77
	ldh [$67], a                                     ; $70f5: $e0 $67
	add sp, $6f                                      ; $70f7: $e8 $6f
	xor b                                            ; $70f9: $a8
	ld l, a                                          ; $70fa: $6f
	ldh a, [$5f]                                     ; $70fb: $f0 $5f
	ld [hl], b                                       ; $70fd: $70
	inc bc                                           ; $70fe: $03
	ldh a, [rSVBK]                                   ; $70ff: $f0 $70
	ld h, c                                          ; $7101: $61
	ld [hl], e                                       ; $7102: $73
	ld [hl], h                                       ; $7103: $74
	inc bc                                           ; $7104: $03
	add b                                            ; $7105: $80
	inc bc                                           ; $7106: $03
	add b                                            ; $7107: $80
	inc bc                                           ; $7108: $03
	sub b                                            ; $7109: $90
	inc bc                                           ; $710a: $03
	add b                                            ; $710b: $80
	inc bc                                           ; $710c: $03
	add b                                            ; $710d: $80
	dec de                                           ; $710e: $1b
	add b                                            ; $710f: $80
	ld c, $00                                        ; $7110: $0e $00
	rst SubAFromHL                                          ; $7112: $d7
	inc sp                                           ; $7113: $33
	call $cd44                                       ; $7114: $cd $44 $cd
	inc sp                                           ; $7117: $33
	inc bc                                           ; $7118: $03
	ldh [c], a                                       ; $7119: $e2
	ld b, e                                          ; $711a: $43
	ldh [c], a                                       ; $711b: $e2
	rst SubAFromHL                                          ; $711c: $d7
	ld b, h                                          ; $711d: $44
	inc l                                            ; $711e: $2c
	inc bc                                           ; $711f: $03
	pop bc                                           ; $7120: $c1
	rst $38                                          ; $7121: $ff
	inc bc                                           ; $7122: $03
	rst $38                                          ; $7123: $ff
	inc bc                                           ; $7124: $03
	rst $38                                          ; $7125: $ff
	inc bc                                           ; $7126: $03
	rst $38                                          ; $7127: $ff
	sub $ff                                          ; $7128: $d6 $ff
	sbc [hl]                                         ; $712a: $9e
	di                                               ; $712b: $f3
	jp nz, $9eff                                     ; $712c: $c2 $ff $9e

	cp a                                             ; $712f: $bf
	jp nc, $9eff                                     ; $7130: $d2 $ff $9e

	rst SubAFromDE                                          ; $7133: $df
	ld b, a                                          ; $7134: $47
	rst AddAOntoHL                                          ; $7135: $ef
	inc bc                                           ; $7136: $03
	rst $38                                          ; $7137: $ff
	inc bc                                           ; $7138: $03
	rst $38                                          ; $7139: $ff
	inc bc                                           ; $713a: $03
	rst $38                                          ; $713b: $ff
	inc bc                                           ; $713c: $03
	rst $38                                          ; $713d: $ff
	inc bc                                           ; $713e: $03
	rst $38                                          ; $713f: $ff
	inc bc                                           ; $7140: $03
	rst $38                                          ; $7141: $ff
	inc bc                                           ; $7142: $03
	rst $38                                          ; $7143: $ff
	rst SubAFromHL                                          ; $7144: $d7
	rst $38                                          ; $7145: $ff
	sbc b                                            ; $7146: $98
	ld sp, hl                                        ; $7147: $f9
	rst $38                                          ; $7148: $ff
	ld a, [$fdfd]                                    ; $7149: $fa $fd $fd
	cp $fe                                           ; $714c: $fe $fe
	sub $ff                                          ; $714e: $d6 $ff
	sbc b                                            ; $7150: $98
	ld a, a                                          ; $7151: $7f
	rst $38                                          ; $7152: $ff
	cp [hl]                                          ; $7153: $be
	ld a, a                                          ; $7154: $7f
	ld a, a                                          ; $7155: $7f
	add b                                            ; $7156: $80
	add e                                            ; $7157: $83
	reti                                             ; $7158: $d9


	rst $38                                          ; $7159: $ff
	sub [hl]                                         ; $715a: $96
	sbc a                                            ; $715b: $9f
	rla                                              ; $715c: $17
	rst AddAOntoHL                                          ; $715d: $ef
	xor $31                                          ; $715e: $ee $31
	ld a, e                                          ; $7160: $7b
	db $fc                                           ; $7161: $fc
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	ld l, e                                          ; $7164: $6b
	call c, $df82                                    ; $7165: $dc $82 $df
	db $db                                           ; $7168: $db
	rst SubAFromBC                                          ; $7169: $e7
	ld a, a                                          ; $716a: $7f
	ldh a, [$bf]                                     ; $716b: $f0 $bf
	ld h, h                                          ; $716d: $64
	jr c, jr_05f_7170                                ; $716e: $38 $00

jr_05f_7170:
	ret z                                            ; $7170: $c8

	ld [$f010], sp                                   ; $7171: $08 $10 $f0
	ldh [$e0], a                                     ; $7174: $e0 $e0
	db $fd                                           ; $7176: $fd
	ei                                               ; $7177: $fb
	or e                                             ; $7178: $b3
	rst GetHLinHL                                          ; $7179: $cf
	rst SubAFromDE                                          ; $717a: $df
	inc a                                            ; $717b: $3c

Jump_05f_717c:
	cp a                                             ; $717c: $bf
	ld [hl], a                                       ; $717d: $77
	dec c                                            ; $717e: $0d
	ld c, e                                          ; $717f: $4b
	inc sp                                           ; $7180: $33
	ld b, a                                          ; $7181: $47
	ld a, a                                          ; $7182: $7f
	ld a, a                                          ; $7183: $7f
	ld l, e                                          ; $7184: $6b
	cp [hl]                                          ; $7185: $be
	sbc l                                            ; $7186: $9d
	db $fc                                           ; $7187: $fc
	ld b, e                                          ; $7188: $43
	ld e, d                                          ; $7189: $5a
	xor b                                            ; $718a: $a8
	sbc [hl]                                         ; $718b: $9e
	sbc a                                            ; $718c: $9f
	ld a, e                                          ; $718d: $7b
	xor [hl]                                         ; $718e: $ae
	inc bc                                           ; $718f: $03
	rst $38                                          ; $7190: $ff
	inc bc                                           ; $7191: $03
	rst $38                                          ; $7192: $ff
	inc bc                                           ; $7193: $03
	rst $38                                          ; $7194: $ff
	inc bc                                           ; $7195: $03
	rst $38                                          ; $7196: $ff
	inc bc                                           ; $7197: $03
	rst $38                                          ; $7198: $ff
	inc bc                                           ; $7199: $03
	rst $38                                          ; $719a: $ff
	inc bc                                           ; $719b: $03
	rst $38                                          ; $719c: $ff
	ret z                                            ; $719d: $c8

	rst $38                                          ; $719e: $ff
	ld a, [hl]                                       ; $719f: $7e
	call nz, $fc8b                                   ; $71a0: $c4 $8b $fc
	cp $f8                                           ; $71a3: $fe $f8
	db $fc                                           ; $71a5: $fc
	ldh a, [$f8]                                     ; $71a6: $f0 $f8
	ldh [$f0], a                                     ; $71a8: $e0 $f0
	ret nz                                           ; $71aa: $c0

	pop hl                                           ; $71ab: $e1
	add b                                            ; $71ac: $80
	pop bc                                           ; $71ad: $c1
	nop                                              ; $71ae: $00
	add c                                            ; $71af: $81
	nop                                              ; $71b0: $00
	ld bc, $0300                                     ; $71b1: $01 $00 $03
	ld bc, $7b03                                     ; $71b4: $01 $03 $7b
	ld a, [$009e]                                    ; $71b7: $fa $9e $00
	push de                                          ; $71ba: $d5
	rst $38                                          ; $71bb: $ff
	sbc h                                            ; $71bc: $9c
	rra                                              ; $71bd: $1f
	rst $38                                          ; $71be: $ff
	ccf                                              ; $71bf: $3f
	ld [bc], a                                       ; $71c0: $02
	push de                                          ; $71c1: $d5
	inc bc                                           ; $71c2: $03
	rst $38                                          ; $71c3: $ff
	inc bc                                           ; $71c4: $03
	rst $38                                          ; $71c5: $ff
	inc bc                                           ; $71c6: $03
	rst $38                                          ; $71c7: $ff
	inc bc                                           ; $71c8: $03
	rst $38                                          ; $71c9: $ff
	inc bc                                           ; $71ca: $03
	rst $38                                          ; $71cb: $ff
	inc bc                                           ; $71cc: $03
	rst $38                                          ; $71cd: $ff
	inc bc                                           ; $71ce: $03
	rst $38                                          ; $71cf: $ff
	jp c, Jump_05f_7dff                              ; $71d0: $da $ff $7d

	adc c                                            ; $71d3: $89
	sbc c                                            ; $71d4: $99
	ret nz                                           ; $71d5: $c0

	ldh [$80], a                                     ; $71d6: $e0 $80
	ret nz                                           ; $71d8: $c0

	add b                                            ; $71d9: $80
	db $fc                                           ; $71da: $fc
	halt                                             ; $71db: $76
	call nz, $c09b                                   ; $71dc: $c4 $9b $c0
	ldh a, [rP1]                                     ; $71df: $f0 $00
	ret nz                                           ; $71e1: $c0

	ld a, [$c87e]                                    ; $71e2: $fa $7e $c8
	ld [hl], a                                       ; $71e5: $77
	cp $99                                           ; $71e6: $fe $99
	jr jr_05f_71fa                                   ; $71e8: $18 $10

	jr c, @+$3a                                      ; $71ea: $38 $38

	ld a, h                                          ; $71ec: $7c
	ccf                                              ; $71ed: $3f
	ld h, l                                          ; $71ee: $65
	adc e                                            ; $71ef: $8b
	ld a, c                                          ; $71f0: $79
	sbc d                                            ; $71f1: $9a
	ld a, a                                          ; $71f2: $7f
	cp $56                                           ; $71f3: $fe $56
	ret nz                                           ; $71f5: $c0

	sbc c                                            ; $71f6: $99
	rst SubAFromBC                                          ; $71f7: $e7
	rst $38                                          ; $71f8: $ff
	add a                                            ; $71f9: $87

jr_05f_71fa:
	rst AddAOntoHL                                          ; $71fa: $ef
	inc bc                                           ; $71fb: $03
	add a                                            ; $71fc: $87
	inc bc                                           ; $71fd: $03
	sbc l                                            ; $71fe: $9d
	inc bc                                           ; $71ff: $03
	rst $38                                          ; $7200: $ff
	inc bc                                           ; $7201: $03
	rst $38                                          ; $7202: $ff
	inc bc                                           ; $7203: $03
	rst $38                                          ; $7204: $ff
	inc bc                                           ; $7205: $03
	rst $38                                          ; $7206: $ff
	inc bc                                           ; $7207: $03
	rst $38                                          ; $7208: $ff
	db $d3                                           ; $7209: $d3
	rst $38                                          ; $720a: $ff
	sbc e                                            ; $720b: $9b
	db $fd                                           ; $720c: $fd
	rst $38                                          ; $720d: $ff
	ld hl, sp-$03                                    ; $720e: $f8 $fd
	ld [hl], c                                       ; $7210: $71
	or h                                             ; $7211: $b4
	sbc h                                            ; $7212: $9c
	ldh [c], a                                       ; $7213: $e2
	add b                                            ; $7214: $80
	add $db                                          ; $7215: $c6 $db
	rst $38                                          ; $7217: $ff
	sub e                                            ; $7218: $93
	ld hl, sp-$01                                    ; $7219: $f8 $ff
	ld b, b                                          ; $721b: $40
	ld hl, sp+$00                                    ; $721c: $f8 $00
	ld b, b                                          ; $721e: $40
	nop                                              ; $721f: $00
	inc bc                                           ; $7220: $03
	inc bc                                           ; $7221: $03
	rlca                                             ; $7222: $07
	ldh a, [$fc]                                     ; $7223: $f0 $fc
	ld [hl], d                                       ; $7225: $72
	ret c                                            ; $7226: $d8

	rst SubAFromDE                                          ; $7227: $df
	jr nc, jr_05f_7294                               ; $7228: $30 $6a

	add sp, $76                                      ; $722a: $e8 $76
	jp nc, $967d                                     ; $722c: $d2 $7d $96

	ld a, a                                          ; $722f: $7f
	add sp, -$70                                     ; $7230: $e8 $90
	nop                                              ; $7232: $00
	rlca                                             ; $7233: $07
	nop                                              ; $7234: $00
	ret nz                                           ; $7235: $c0

	add b                                            ; $7236: $80
	ret nz                                           ; $7237: $c0

	nop                                              ; $7238: $00
	add b                                            ; $7239: $80
	ld a, b                                          ; $723a: $78
	db $fc                                           ; $723b: $fc
	db $fc                                           ; $723c: $fc
	cp $fc                                           ; $723d: $fe $fc
	cp $fe                                           ; $723f: $fe $fe
	ld a, c                                          ; $7241: $79
	ld l, [hl]                                       ; $7242: $6e
	sub l                                            ; $7243: $95
	rrca                                             ; $7244: $0f
	rst $38                                          ; $7245: $ff
	rrca                                             ; $7246: $0f
	ccf                                              ; $7247: $3f
	rra                                              ; $7248: $1f
	ld a, a                                          ; $7249: $7f
	inc e                                            ; $724a: $1c
	ccf                                              ; $724b: $3f
	nop                                              ; $724c: $00
	inc e                                            ; $724d: $1c
	ld l, e                                          ; $724e: $6b
	call c, $8799                                    ; $724f: $dc $99 $87
	rlca                                             ; $7252: $07
	adc a                                            ; $7253: $8f
	adc a                                            ; $7254: $8f
	rst SubAFromDE                                          ; $7255: $df
	ld bc, $6875                                     ; $7256: $01 $75 $68
	sub h                                            ; $7259: $94
	pop bc                                           ; $725a: $c1
	add b                                            ; $725b: $80
	ret nz                                           ; $725c: $c0

	ret nz                                           ; $725d: $c0

	ldh [$c0], a                                     ; $725e: $e0 $c0
	ldh [$e0], a                                     ; $7260: $e0 $e0
	ldh a, [$e0]                                     ; $7262: $f0 $e0
	ldh a, [$66]                                     ; $7264: $f0 $66
	and h                                            ; $7266: $a4
	ld a, [hl]                                       ; $7267: $7e
	and [hl]                                         ; $7268: $a6
	ld a, a                                          ; $7269: $7f
	cp $9b                                           ; $726a: $fe $9b
	rra                                              ; $726c: $1f
	ccf                                              ; $726d: $3f
	rrca                                             ; $726e: $0f
	rra                                              ; $726f: $1f
	db $d3                                           ; $7270: $d3
	rst $38                                          ; $7271: $ff
	sbc [hl]                                         ; $7272: $9e
	ld sp, hl                                        ; $7273: $f9
	inc bc                                           ; $7274: $03
	ld d, h                                          ; $7275: $54
	inc bc                                           ; $7276: $03
	rst $38                                          ; $7277: $ff
	inc bc                                           ; $7278: $03
	rst $38                                          ; $7279: $ff
	inc bc                                           ; $727a: $03
	rst $38                                          ; $727b: $ff
	ld h, c                                          ; $727c: $61
	call nc, $da7d                                   ; $727d: $d4 $7d $da
	sbc c                                            ; $7280: $99
	ldh [$f8], a                                     ; $7281: $e0 $f8
	di                                               ; $7283: $f3
	rst $38                                          ; $7284: $ff
	ldh [$f3], a                                     ; $7285: $e0 $f3
	ld [hl], l                                       ; $7287: $75
	call z, $167f                                    ; $7288: $cc $7f $16
	ei                                               ; $728b: $fb
	rst SubAFromDE                                          ; $728c: $df
	rst $38                                          ; $728d: $ff
	sbc c                                            ; $728e: $99
	ld a, [hl]                                       ; $728f: $7e
	rst $38                                          ; $7290: $ff
	inc c                                            ; $7291: $0c
	ld a, [hl]                                       ; $7292: $7e
	nop                                              ; $7293: $00

jr_05f_7294:
	inc c                                            ; $7294: $0c
	ld a, [$c092]                                    ; $7295: $fa $92 $c0
	ld [bc], a                                       ; $7298: $02
	add a                                            ; $7299: $87
	rlca                                             ; $729a: $07
	rrca                                             ; $729b: $0f
	rlca                                             ; $729c: $07
	rrca                                             ; $729d: $0f
	rrca                                             ; $729e: $0f
	rra                                              ; $729f: $1f
	rrca                                             ; $72a0: $0f
	rra                                              ; $72a1: $1f
	rra                                              ; $72a2: $1f
	ccf                                              ; $72a3: $3f
	ld [hl], a                                       ; $72a4: $77
	inc l                                            ; $72a5: $2c
	ld a, e                                          ; $72a6: $7b
	db $f4                                           ; $72a7: $f4
	rst SubAFromDE                                          ; $72a8: $df
	cp a                                             ; $72a9: $bf
	ld b, b                                          ; $72aa: $40
	ld d, [hl]                                       ; $72ab: $56
	ld a, a                                          ; $72ac: $7f
	cp b                                             ; $72ad: $b8
	sbc l                                            ; $72ae: $9d
	add b                                            ; $72af: $80
	ldh [$7b], a                                     ; $72b0: $e0 $7b
	cp [hl]                                          ; $72b2: $be
	ld a, [hl]                                       ; $72b3: $7e
	db $fc                                           ; $72b4: $fc
	sbc [hl]                                         ; $72b5: $9e
	db $fc                                           ; $72b6: $fc
	ld [hl], c                                       ; $72b7: $71
	sub d                                            ; $72b8: $92
	ld a, [hl]                                       ; $72b9: $7e
	db $ec                                           ; $72ba: $ec
	sbc d                                            ; $72bb: $9a
	rlca                                             ; $72bc: $07
	inc bc                                           ; $72bd: $03
	rrca                                             ; $72be: $0f
	nop                                              ; $72bf: $00
	rrca                                             ; $72c0: $0f
	ld [hl], h                                       ; $72c1: $74
	ld d, b                                          ; $72c2: $50
	sbc [hl]                                         ; $72c3: $9e
	ccf                                              ; $72c4: $3f
	ld a, d                                          ; $72c5: $7a
	db $f4                                           ; $72c6: $f4
	ld e, h                                          ; $72c7: $5c
	ld d, b                                          ; $72c8: $50
	ld a, [hl]                                       ; $72c9: $7e
	ret nz                                           ; $72ca: $c0

	sbc [hl]                                         ; $72cb: $9e
	sbc a                                            ; $72cc: $9f
	jp nc, Jump_05f_7eff                             ; $72cd: $d2 $ff $7e

	ld l, b                                          ; $72d0: $68
	ld a, a                                          ; $72d1: $7f
	cp $7f                                           ; $72d2: $fe $7f
	ret nz                                           ; $72d4: $c0

	ld a, a                                          ; $72d5: $7f
	cp $66                                           ; $72d6: $fe $66
	sbc d                                            ; $72d8: $9a
	ld [hl], a                                       ; $72d9: $77
	sub d                                            ; $72da: $92
	ld a, d                                          ; $72db: $7a
	add h                                            ; $72dc: $84
	sbc [hl]                                         ; $72dd: $9e
	ld [bc], a                                       ; $72de: $02
	ld sp, hl                                        ; $72df: $f9
	sbc c                                            ; $72e0: $99
	ldh [rIE], a                                     ; $72e1: $e0 $ff
	add b                                            ; $72e3: $80
	pop hl                                           ; $72e4: $e1
	nop                                              ; $72e5: $00
	add c                                            ; $72e6: $81
	rst FarCall                                          ; $72e7: $f7
	ld h, c                                          ; $72e8: $61
	ld b, [hl]                                       ; $72e9: $46
	ld a, d                                          ; $72ea: $7a
	sbc [hl]                                         ; $72eb: $9e
	ld a, a                                          ; $72ec: $7f
	or d                                             ; $72ed: $b2
	ld a, a                                          ; $72ee: $7f

jr_05f_72ef:
	ld l, h                                          ; $72ef: $6c
	inc bc                                           ; $72f0: $03
	add hl, de                                       ; $72f1: $19
	inc bc                                           ; $72f2: $03
	rst $38                                          ; $72f3: $ff
	inc bc                                           ; $72f4: $03
	rst $38                                          ; $72f5: $ff
	ld [hl], e                                       ; $72f6: $73
	inc e                                            ; $72f7: $1c
	ld a, l                                          ; $72f8: $7d
	ret c                                            ; $72f9: $d8

	ld a, [hl]                                       ; $72fa: $7e
	inc h                                            ; $72fb: $24
	ld a, e                                          ; $72fc: $7b
	inc e                                            ; $72fd: $1c
	sbc h                                            ; $72fe: $9c
	add d                                            ; $72ff: $82
	ret nz                                           ; $7300: $c0

	ldh [$60], a                                     ; $7301: $e0 $60
	xor d                                            ; $7303: $aa
	db $fd                                           ; $7304: $fd
	sbc [hl]                                         ; $7305: $9e
	jr nz, jr_05f_7374                               ; $7306: $20 $6c

	and d                                            ; $7308: $a2
	ld [hl], l                                       ; $7309: $75
	ld a, [$cc7d]                                    ; $730a: $fa $7d $cc
	ld a, a                                          ; $730d: $7f
	cp $7f                                           ; $730e: $fe $7f
	ld b, h                                          ; $7310: $44
	ld a, l                                          ; $7311: $7d
	xor b                                            ; $7312: $a8
	sbc [hl]                                         ; $7313: $9e
	ld hl, sp+$7b                                    ; $7314: $f8 $7b
	jr c, jr_05f_72ef                                ; $7316: $38 $d7

	rst $38                                          ; $7318: $ff
	ld [hl], a                                       ; $7319: $77
	ld d, h                                          ; $731a: $54
	ld d, a                                          ; $731b: $57
	or [hl]                                          ; $731c: $b6
	ld h, a                                          ; $731d: $67
	ld hl, sp+$7d                                    ; $731e: $f8 $7d
	ld a, [hl]                                       ; $7320: $7e
	sbc h                                            ; $7321: $9c
	ldh [$fc], a                                     ; $7322: $e0 $fc
	add b                                            ; $7324: $80
	ld a, c                                          ; $7325: $79
	add [hl]                                         ; $7326: $86
	ld a, a                                          ; $7327: $7f
	jp nc, $f86f                                     ; $7328: $d2 $6f $f8

	ldh a, [$74]                                     ; $732b: $f0 $74
	ld c, [hl]                                       ; $732d: $4e
	ld a, e                                          ; $732e: $7b
	xor d                                            ; $732f: $aa
	ld a, a                                          ; $7330: $7f
	inc e                                            ; $7331: $1c
	ld a, d                                          ; $7332: $7a
	adc d                                            ; $7333: $8a
	ld c, e                                          ; $7334: $4b
	cp d                                             ; $7335: $ba
	push bc                                          ; $7336: $c5

Call_05f_7337:
	rst $38                                          ; $7337: $ff
	ld a, d                                          ; $7338: $7a
	ld a, d                                          ; $7339: $7a
	rst SubAFromDE                                          ; $733a: $df
	add b                                            ; $733b: $80
	sbc c                                            ; $733c: $99
	jp $c783                                         ; $733d: $c3 $83 $c7


	rst JumpTable                                          ; $7340: $c7
	rst $38                                          ; $7341: $ff
	rst SubAFromDE                                          ; $7342: $df
	ld l, a                                          ; $7343: $6f
	ldh a, [$9b]                                     ; $7344: $f0 $9b
	ld h, b                                          ; $7346: $60
	ld b, b                                          ; $7347: $40
	ldh [$c0], a                                     ; $7348: $e0 $c0
	ld a, c                                          ; $734a: $79
	ld l, b                                          ; $734b: $68
	ld a, e                                          ; $734c: $7b
	cp $7a                                           ; $734d: $fe $7a
	sub [hl]                                         ; $734f: $96
	ld a, a                                          ; $7350: $7f
	cp $7d                                           ; $7351: $fe $7d
	inc a                                            ; $7353: $3c
	ld a, [hl]                                       ; $7354: $7e
	ld [hl], $93                                     ; $7355: $36 $93
	rlca                                             ; $7357: $07
	rra                                              ; $7358: $1f
	rlca                                             ; $7359: $07
	rrca                                             ; $735a: $0f
	inc bc                                           ; $735b: $03
	rrca                                             ; $735c: $0f
	inc bc                                           ; $735d: $03
	rlca                                             ; $735e: $07
	ld bc, $0107                                     ; $735f: $01 $07 $01
	inc bc                                           ; $7362: $03
	inc bc                                           ; $7363: $03
	xor a                                            ; $7364: $af
	inc bc                                           ; $7365: $03
	rst $38                                          ; $7366: $ff
	ld b, l                                          ; $7367: $45
	xor d                                            ; $7368: $aa
	ld [hl], a                                       ; $7369: $77
	inc e                                            ; $736a: $1c
	ld a, a                                          ; $736b: $7f
	ld a, [$ffd9]                                    ; $736c: $fa $d9 $ff
	sbc d                                            ; $736f: $9a
	ld [bc], a                                       ; $7370: $02
	rst GetHLinHL                                          ; $7371: $cf
	rlca                                             ; $7372: $07
	rra                                              ; $7373: $1f

jr_05f_7374:
	dec de                                           ; $7374: $1b
	sub $ff                                          ; $7375: $d6 $ff
	sbc h                                            ; $7377: $9c
	ld b, b                                          ; $7378: $40
	pop hl                                           ; $7379: $e1
	and c                                            ; $737a: $a1
	ld d, e                                          ; $737b: $53
	inc [hl]                                         ; $737c: $34
	ld a, c                                          ; $737d: $79
	or b                                             ; $737e: $b0
	sbc l                                            ; $737f: $9d
	rst SubAFromDE                                          ; $7380: $df
	adc a                                            ; $7381: $8f
	sbc $ff                                          ; $7382: $de $ff
	ld l, a                                          ; $7384: $6f
	ld d, d                                          ; $7385: $52
	rst GetHLinHL                                          ; $7386: $cf
	rst $38                                          ; $7387: $ff
	ld a, [hl]                                       ; $7388: $7e
	ret c                                            ; $7389: $d8

	ld a, a                                          ; $738a: $7f
	cp $56                                           ; $738b: $fe $56
	ret nz                                           ; $738d: $c0

	ld l, l                                          ; $738e: $6d
	db $eb                                           ; $738f: $eb
	ld a, l                                          ; $7390: $7d
	sbc b                                            ; $7391: $98
	ld a, [hl]                                       ; $7392: $7e
	jp z, $2a7f                                      ; $7393: $ca $7f $2a

	ld [hl], c                                       ; $7396: $71
	adc h                                            ; $7397: $8c
	pop af                                           ; $7398: $f1
	ld a, h                                          ; $7399: $7c
	ld [hl], d                                       ; $739a: $72
	ld a, c                                          ; $739b: $79
	adc d                                            ; $739c: $8a

Jump_05f_739d:
	ld d, l                                          ; $739d: $55
	ret nc                                           ; $739e: $d0

	ld a, [hl]                                       ; $739f: $7e
	jp nz, $0f9b                                     ; $73a0: $c2 $9b $0f

	ld a, a                                          ; $73a3: $7f
	inc bc                                           ; $73a4: $03
	rra                                              ; $73a5: $1f
	ld [hl], l                                       ; $73a6: $75
	ld l, [hl]                                       ; $73a7: $6e
	ld a, c                                          ; $73a8: $79
	and h                                            ; $73a9: $a4
	ld c, b                                          ; $73aa: $48
	ld [hl], b                                       ; $73ab: $70
	inc bc                                           ; $73ac: $03
	rst $38                                          ; $73ad: $ff
	ld a, c                                          ; $73ae: $79
	ld h, b                                          ; $73af: $60
	ld [hl], l                                       ; $73b0: $75
	ld h, d                                          ; $73b1: $62
	ld l, l                                          ; $73b2: $6d
	ld h, b                                          ; $73b3: $60
	ld [hl], l                                       ; $73b4: $75
	ld e, [hl]                                       ; $73b5: $5e
	ld [hl], e                                       ; $73b6: $73
	and b                                            ; $73b7: $a0
	ld e, e                                          ; $73b8: $5b
	sbc [hl]                                         ; $73b9: $9e
	ld bc, $0370                                     ; $73ba: $01 $70 $03
	rst $38                                          ; $73bd: $ff
	inc bc                                           ; $73be: $03
	rst $38                                          ; $73bf: $ff
	inc bc                                           ; $73c0: $03
	rst $38                                          ; $73c1: $ff
	dec l                                            ; $73c2: $2d
	ld c, h                                          ; $73c3: $4c
	sub a                                            ; $73c4: $97
	ldh a, [$fe]                                     ; $73c5: $f0 $fe
	ret nz                                           ; $73c7: $c0

	ld hl, sp+$00                                    ; $73c8: $f8 $00
	ret nz                                           ; $73ca: $c0

	db $fc                                           ; $73cb: $fc
	rst $38                                          ; $73cc: $ff
	ld a, c                                          ; $73cd: $79
	ld b, [hl]                                       ; $73ce: $46
	ld [hl], h                                       ; $73cf: $74
	ld h, d                                          ; $73d0: $62
	ld l, l                                          ; $73d1: $6d
	sbc [hl]                                         ; $73d2: $9e
	sbc [hl]                                         ; $73d3: $9e
	ld b, b                                          ; $73d4: $40
	ldh [$d2], a                                     ; $73d5: $e0 $d2
	sbc b                                            ; $73d7: $98
	ld bc, $1f0f                                     ; $73d8: $01 $0f $1f
	rrca                                             ; $73db: $0f
	ccf                                              ; $73dc: $3f
	rra                                              ; $73dd: $1f
	ccf                                              ; $73de: $3f
	ld bc, $1b7a                                     ; $73df: $01 $7a $1b
	ld a, b                                          ; $73e2: $78
	ld l, a                                          ; $73e3: $6f
	cp $61                                           ; $73e4: $fe $61
	ld h, b                                          ; $73e6: $60
	sbc d                                            ; $73e7: $9a
	ld de, $1b01                                     ; $73e8: $11 $01 $1b
	dec de                                           ; $73eb: $1b
	ccf                                              ; $73ec: $3f
	ld l, a                                          ; $73ed: $6f
	or d                                             ; $73ee: $b2
	db $dd                                           ; $73ef: $dd
	rst $38                                          ; $73f0: $ff
	sub [hl]                                         ; $73f1: $96
	rrca                                             ; $73f2: $0f
	cp a                                             ; $73f3: $bf
	rrca                                             ; $73f4: $0f
	rst $38                                          ; $73f5: $ff
	add a                                            ; $73f6: $87
	rst $38                                          ; $73f7: $ff
	ei                                               ; $73f8: $fb
	rst $38                                          ; $73f9: $ff
	db $fd                                           ; $73fa: $fd
	inc bc                                           ; $73fb: $03
	or [hl]                                          ; $73fc: $b6
	inc bc                                           ; $73fd: $03
	rst $38                                          ; $73fe: $ff
	inc bc                                           ; $73ff: $03
	rst $38                                          ; $7400: $ff
	dec l                                            ; $7401: $2d
	ld d, b                                          ; $7402: $50
	db $d3                                           ; $7403: $d3
	rst $38                                          ; $7404: $ff
	sbc d                                            ; $7405: $9a
	ld h, b                                          ; $7406: $60
	rst $38                                          ; $7407: $ff
	push af                                          ; $7408: $f5
	rst $38                                          ; $7409: $ff
	rst AddAOntoHL                                          ; $740a: $ef
	sub $ff                                          ; $740b: $d6 $ff
	sbc h                                            ; $740d: $9c
	add b                                            ; $740e: $80
	or b                                             ; $740f: $b0
	ldh [rPCM12], a                                  ; $7410: $e0 $76
	ld b, $5f                                        ; $7412: $06 $5f
	ld b, b                                          ; $7414: $40
	db $fd                                           ; $7415: $fd
	sbc e                                            ; $7416: $9b
	ld c, b                                          ; $7417: $48
	nop                                              ; $7418: $00
	rst $38                                          ; $7419: $ff
	xor $57                                          ; $741a: $ee $57
	ldh a, [rIE]                                     ; $741c: $f0 $ff
	sbc l                                            ; $741e: $9d
	inc sp                                           ; $741f: $33
	ld [hl+], a                                      ; $7420: $22
	ld h, a                                          ; $7421: $67
	ldh a, [rSVBK]                                   ; $7422: $f0 $70
	ld c, d                                          ; $7424: $4a
	ld a, c                                          ; $7425: $79
	sub d                                            ; $7426: $92
	sbc e                                            ; $7427: $9b
	daa                                              ; $7428: $27
	inc bc                                           ; $7429: $03
	rst $38                                          ; $742a: $ff
	rst FarCall                                          ; $742b: $f7
	inc bc                                           ; $742c: $03
	add d                                            ; $742d: $82
	inc bc                                           ; $742e: $03
	rst $38                                          ; $742f: $ff
	inc bc                                           ; $7430: $03
	rst $38                                          ; $7431: $ff
	inc bc                                           ; $7432: $03
	rst $38                                          ; $7433: $ff
	inc bc                                           ; $7434: $03
	rst $38                                          ; $7435: $ff
	inc bc                                           ; $7436: $03
	rst $38                                          ; $7437: $ff
	inc bc                                           ; $7438: $03
	rst $38                                          ; $7439: $ff
	inc bc                                           ; $743a: $03
	rst $38                                          ; $743b: $ff
	inc bc                                           ; $743c: $03
	rst $38                                          ; $743d: $ff
	inc bc                                           ; $743e: $03
	rst $38                                          ; $743f: $ff
	inc bc                                           ; $7440: $03
	rst $38                                          ; $7441: $ff
	inc bc                                           ; $7442: $03
	rst $38                                          ; $7443: $ff
	inc bc                                           ; $7444: $03
	rst $38                                          ; $7445: $ff
	inc bc                                           ; $7446: $03
	rst $38                                          ; $7447: $ff
	call c, $0aff                                    ; $7448: $dc $ff $0a
	nop                                              ; $744b: $00
	pop bc                                           ; $744c: $c1
	inc sp                                           ; $744d: $33
	inc bc                                           ; $744e: $03
	rst $38                                          ; $744f: $ff
	inc bc                                           ; $7450: $03
	rst $38                                          ; $7451: $ff
	push de                                          ; $7452: $d5
	inc sp                                           ; $7453: $33
	ld l, e                                          ; $7454: $6b
	nop                                              ; $7455: $00
	add b                                            ; $7456: $80
	add hl, sp                                       ; $7457: $39
	rst $38                                          ; $7458: $ff
	rst GetHLinHL                                          ; $7459: $cf
	rst $38                                          ; $745a: $ff
	cp a                                             ; $745b: $bf
	ld [hl], c                                       ; $745c: $71
	ld sp, hl                                        ; $745d: $f9
	ld b, $ff                                        ; $745e: $06 $ff
	rra                                              ; $7460: $1f
	cp e                                             ; $7461: $bb
	ld a, a                                          ; $7462: $7f
	ldh a, [$f9]                                     ; $7463: $f0 $f9
	ld a, l                                          ; $7465: $7d
	db $dd                                           ; $7466: $dd
	sub [hl]                                         ; $7467: $96
	rst $38                                          ; $7468: $ff
	ld a, $fb                                        ; $7469: $3e $fb
	cp $c3                                           ; $746b: $fe $c3
	rst $38                                          ; $746d: $ff
	rlca                                             ; $746e: $07
	ld a, a                                          ; $746f: $7f
	adc l                                            ; $7470: $8d
	cp a                                             ; $7471: $bf
	pop bc                                           ; $7472: $c1
	cp a                                             ; $7473: $bf

Jump_05f_7474:
	ret nz                                           ; $7474: $c0

	rst $38                                          ; $7475: $ff
	add a                                            ; $7476: $87
	nop                                              ; $7477: $00

jr_05f_7478:
	xor e                                            ; $7478: $ab
	ld a, c                                          ; $7479: $79
	ld e, l                                          ; $747a: $5d
	ei                                               ; $747b: $fb
	db $d3                                           ; $747c: $d3
	rst $38                                          ; $747d: $ff
	or a                                             ; $747e: $b7
	db $fd                                           ; $747f: $fd
	ld l, a                                          ; $7480: $6f
	ld sp, hl                                        ; $7481: $f9
	jp c, $cfb7                                      ; $7482: $da $b7 $cf

	scf                                              ; $7485: $37
	ld a, l                                          ; $7486: $7d
	di                                               ; $7487: $f3
	adc [hl]                                         ; $7488: $8e
	ld e, [hl]                                       ; $7489: $5e
	add $1e                                          ; $748a: $c6 $1e
	or $0c                                           ; $748c: $f6 $0c
	add b                                            ; $748e: $80
	or [hl]                                          ; $748f: $b6
	ret nz                                           ; $7490: $c0

	ret nz                                           ; $7491: $c0

	ret nz                                           ; $7492: $c0

	ret nz                                           ; $7493: $c0

	ld a, a                                          ; $7494: $7f
	ld sp, $0000                                     ; $7495: $31 $00 $00
	inc b                                            ; $7498: $04
	ld c, $1e                                        ; $7499: $0e $1e
	adc a                                            ; $749b: $8f
	ld bc, $020c                                     ; $749c: $01 $0c $02
	db $dd                                           ; $749f: $dd
	db $db                                           ; $74a0: $db
	sbc e                                            ; $74a1: $9b
	rst SubAFromDE                                          ; $74a2: $df
	rst FarCall                                          ; $74a3: $f7
	rst $38                                          ; $74a4: $ff
	ld h, a                                          ; $74a5: $67
	rst SubAFromBC                                          ; $74a6: $e7
	and a                                            ; $74a7: $a7
	rst SubAFromBC                                          ; $74a8: $e7
	ld l, [hl]                                       ; $74a9: $6e
	rlca                                             ; $74aa: $07
	ld c, $de                                        ; $74ab: $0e $de
	rrca                                             ; $74ad: $0f
	sub [hl]                                         ; $74ae: $96
	db $10                                           ; $74af: $10
	ld h, b                                          ; $74b0: $60

jr_05f_74b1:
	ld a, b                                          ; $74b1: $78
	ld a, h                                          ; $74b2: $7c
	ld [hl], b                                       ; $74b3: $70
	ld a, b                                          ; $74b4: $78
	jr nz, @+$72                                     ; $74b5: $20 $70

	jr nz, jr_05f_7478                               ; $74b7: $20 $bf

	ld h, c                                          ; $74b9: $61
	dec b                                            ; $74ba: $05
	sbc h                                            ; $74bb: $9c
	inc bc                                           ; $74bc: $03
	ld c, $07                                        ; $74bd: $0e $07
	add hl, bc                                       ; $74bf: $09
	nop                                              ; $74c0: $00
	sbc c                                            ; $74c1: $99
	ld [hl+], a                                      ; $74c2: $22
	jr nz, jr_05f_74e7                               ; $74c3: $20 $22

	jr nz, jr_05f_74c9                               ; $74c5: $20 $02

	nop                                              ; $74c7: $00
	db $d3                                           ; $74c8: $d3

jr_05f_74c9:
	add d                                            ; $74c9: $82
	add b                                            ; $74ca: $80
	db $ed                                           ; $74cb: $ed
	ld e, e                                          ; $74cc: $5b
	or [hl]                                          ; $74cd: $b6
	dec a                                            ; $74ce: $3d
	ld l, e                                          ; $74cf: $6b
	ld [hl], a                                       ; $74d0: $77
	rst SubAFromHL                                          ; $74d1: $d7
	sbc $92                                          ; $74d2: $de $92
	and h                                            ; $74d4: $a4
	ld c, c                                          ; $74d5: $49
	jp z, $989c                                      ; $74d6: $ca $9c $98

	dec sp                                           ; $74d9: $3b
	inc [hl]                                         ; $74da: $34
	cp a                                             ; $74db: $bf
	ld a, h                                          ; $74dc: $7c
	di                                               ; $74dd: $f3
	rst AddAOntoHL                                          ; $74de: $ef
	call c, $8ffe                                    ; $74df: $dc $fe $8f
	ld a, [hl]                                       ; $74e2: $7e
	ld b, b                                          ; $74e3: $40
	add e                                            ; $74e4: $83
	inc c                                            ; $74e5: $0c
	db $10                                           ; $74e6: $10

jr_05f_74e7:
	inc hl                                           ; $74e7: $23
	db $fc                                           ; $74e8: $fc
	inc bc                                           ; $74e9: $03
	add h                                            ; $74ea: $84
	dec a                                            ; $74eb: $3d
	rra                                              ; $74ec: $1f
	db $fc                                           ; $74ed: $fc
	pop hl                                           ; $74ee: $e1
	jr jr_05f_74b1                                   ; $74ef: $18 $c0

	rra                                              ; $74f1: $1f
	ld hl, sp-$01                                    ; $74f2: $f8 $ff
	ldh [$03], a                                     ; $74f4: $e0 $03
	ld e, $e0                                        ; $74f6: $1e $e0
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	rlca                                             ; $74fa: $07
	rst $38                                          ; $74fb: $ff
	nop                                              ; $74fc: $00
	ccf                                              ; $74fd: $3f
	rra                                              ; $74fe: $1f
	nop                                              ; $74ff: $00
	rst $38                                          ; $7500: $ff
	sbc a                                            ; $7501: $9f
	rst AddAOntoHL                                          ; $7502: $ef
	db $fc                                           ; $7503: $fc
	nop                                              ; $7504: $00
	rst $38                                          ; $7505: $ff
	cp $84                                           ; $7506: $fe $84
	ld a, a                                          ; $7508: $7f
	ldh a, [$80]                                     ; $7509: $f0 $80
	rra                                              ; $750b: $1f
	xor $9f                                          ; $750c: $ee $9f
	dec b                                            ; $750e: $05
	rst $38                                          ; $750f: $ff
	ld sp, hl                                        ; $7510: $f9
	rst FarCall                                          ; $7511: $f7
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	ldh a, [$7e]                                     ; $7514: $f0 $7e
	inc bc                                           ; $7516: $03
	nop                                              ; $7517: $00
	cp $0f                                           ; $7518: $fe $0f
	nop                                              ; $751a: $00
	add b                                            ; $751b: $80
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	ret nz                                           ; $751e: $c0

	ld [hl], b                                       ; $751f: $70
	sbc $db                                          ; $7520: $de $db
	cp h                                             ; $7522: $bc
	cp $9a                                           ; $7523: $fe $9a
	add b                                            ; $7525: $80
	ldh [$3c], a                                     ; $7526: $e0 $3c
	rst SubAFromBC                                          ; $7528: $e7
	ld a, a                                          ; $7529: $7f
	ei                                               ; $752a: $fb
	sbc l                                            ; $752b: $9d
	db $e3                                           ; $752c: $e3
	ld e, $fb                                        ; $752d: $1e $fb
	sub a                                            ; $752f: $97
	ldh [rIE], a                                     ; $7530: $e0 $ff
	ld h, a                                          ; $7532: $67
	add hl, de                                       ; $7533: $19
	ld b, $02                                        ; $7534: $06 $02
	ld bc, $7b00                                     ; $7536: $01 $00 $7b
	ret z                                            ; $7539: $c8

	sbc h                                            ; $753a: $9c
	rlca                                             ; $753b: $07
	ld bc, $fd01                                     ; $753c: $01 $01 $fd
	sub a                                            ; $753f: $97
	ld d, h                                          ; $7540: $54
	xor d                                            ; $7541: $aa
	push af                                          ; $7542: $f5
	ld a, [hl]                                       ; $7543: $7e
	ccf                                              ; $7544: $3f
	sbc a                                            ; $7545: $9f
	ld c, a                                          ; $7546: $4f
	daa                                              ; $7547: $27
	call c, $80ff                                    ; $7548: $dc $ff $80
	ld a, a                                          ; $754b: $7f
	ccf                                              ; $754c: $3f
	rra                                              ; $754d: $1f
	xor $ff                                          ; $754e: $ee $ff
	ld a, l                                          ; $7550: $7d
	ld a, a                                          ; $7551: $7f
	ld a, $2a                                        ; $7552: $3e $2a
	cpl                                              ; $7554: $2f
	xor a                                            ; $7555: $af
	add hl, sp                                       ; $7556: $39
	ld sp, $b3b3                                     ; $7557: $31 $b3 $b3
	di                                               ; $755a: $f3
	rst FarCall                                          ; $755b: $f7
	rst FarCall                                          ; $755c: $f7
	or $c3                                           ; $755d: $f6 $c3
	add a                                            ; $755f: $87
	dec de                                           ; $7560: $1b
	dec de                                           ; $7561: $1b
	ld l, a                                          ; $7562: $6f
	sbc h                                            ; $7563: $9c
	xor c                                            ; $7564: $a9
	ld d, l                                          ; $7565: $55
	rst $38                                          ; $7566: $ff
	ld hl, sp-$19                                    ; $7567: $f8 $e7
	db $fc                                           ; $7569: $fc
	sub d                                            ; $756a: $92
	ldh a, [$c3]                                     ; $756b: $f0 $c3
	db $10                                           ; $756d: $10
	inc hl                                           ; $756e: $23
	pop hl                                           ; $756f: $e1
	and b                                            ; $7570: $a0
	cp a                                             ; $7571: $bf
	call nz, $ceff                                   ; $7572: $c4 $ff $ce
	ld a, b                                          ; $7575: $78
	ldh [rLCDC], a                                   ; $7576: $e0 $40
	ld a, e                                          ; $7578: $7b
	jp nc, $ff96                                     ; $7579: $d2 $96 $ff

	ccf                                              ; $757c: $3f
	ldh a, [$80]                                     ; $757d: $f0 $80
	ld a, a                                          ; $757f: $7f
	ld bc, $fefe                                     ; $7580: $01 $fe $fe
	ret nc                                           ; $7583: $d0

	ld a, e                                          ; $7584: $7b
	adc e                                            ; $7585: $8b
	sbc e                                            ; $7586: $9b
	cp $ff                                           ; $7587: $fe $ff
	rst $38                                          ; $7589: $ff
	nop                                              ; $758a: $00
	ld a, e                                          ; $758b: $7b
	ld e, a                                          ; $758c: $5f
	ld a, a                                          ; $758d: $7f
	add e                                            ; $758e: $83
	sbc l                                            ; $758f: $9d
	db $e4                                           ; $7590: $e4
	ret nz                                           ; $7591: $c0

	ei                                               ; $7592: $fb
	sbc [hl]                                         ; $7593: $9e
	ld hl, sp-$05                                    ; $7594: $f8 $fb
	sub [hl]                                         ; $7596: $96
	dec de                                           ; $7597: $1b
	nop                                              ; $7598: $00
	rlca                                             ; $7599: $07
	ld e, $3c                                        ; $759a: $1e $3c
	ld a, b                                          ; $759c: $78
	ld [hl], b                                       ; $759d: $70
	ldh [rTAC], a                                    ; $759e: $e0 $07
	ld a, [$e49d]                                    ; $75a0: $fa $9d $e4
	ldh [$7b], a                                     ; $75a3: $e0 $7b
	db $d3                                           ; $75a5: $d3
	sbc h                                            ; $75a6: $9c
	nop                                              ; $75a7: $00
	ld bc, $6b02                                     ; $75a8: $01 $02 $6b
	pop hl                                           ; $75ab: $e1
	ld a, a                                          ; $75ac: $7f
	ld a, h                                          ; $75ad: $7c
	sbc b                                            ; $75ae: $98
	rlca                                             ; $75af: $07
	jr jr_05f_75d2                                   ; $75b0: $18 $20

	ld b, h                                          ; $75b2: $44
	jp nc, $17a8                                     ; $75b3: $d2 $a8 $17

	ld a, e                                          ; $75b6: $7b
	inc h                                            ; $75b7: $24
	add b                                            ; $75b8: $80
	jr jr_05f_75de                                   ; $75b9: $18 $23

	inc c                                            ; $75bb: $0c
	ld de, $1363                                     ; $75bc: $11 $63 $13
	ret                                              ; $75bf: $c9


	dec l                                            ; $75c0: $2d
	call c, $fa4e                                    ; $75c1: $dc $4e $fa
	ldh [$9e], a                                     ; $75c4: $e0 $9e
	rrca                                             ; $75c6: $0f
	rlca                                             ; $75c7: $07
	jp $3123                                         ; $75c8: $c3 $23 $31


	ld a, l                                          ; $75cb: $7d
	rst $38                                          ; $75cc: $ff
	rst $38                                          ; $75cd: $ff
	and [hl]                                         ; $75ce: $a6
	or $f9                                           ; $75cf: $f6 $f9
	ei                                               ; $75d1: $fb

jr_05f_75d2:
	rra                                              ; $75d2: $1f
	cp $cf                                           ; $75d3: $fe $cf
	rst FarCall                                          ; $75d5: $f7
	cp $fd                                           ; $75d6: $fe $fd
	db $dd                                           ; $75d8: $dd

jr_05f_75d9:
	rst $38                                          ; $75d9: $ff
	adc a                                            ; $75da: $8f
	ccf                                              ; $75db: $3f
	rst GetHLinHL                                          ; $75dc: $cf
	ld c, e                                          ; $75dd: $4b

jr_05f_75de:
	or [hl]                                          ; $75de: $b6
	db $ec                                           ; $75df: $ec
	ld e, b                                          ; $75e0: $58
	jr nc, @+$62                                     ; $75e1: $30 $60

	ret nz                                           ; $75e3: $c0

	add b                                            ; $75e4: $80
	and $cc                                          ; $75e5: $e6 $cc
	sbc b                                            ; $75e7: $98
	or b                                             ; $75e8: $b0
	ldh [$c0], a                                     ; $75e9: $e0 $c0
	ld [hl], a                                       ; $75eb: $77
	or h                                             ; $75ec: $b4
	db $fc                                           ; $75ed: $fc
	sbc [hl]                                         ; $75ee: $9e
	jr nz, jr_05f_75d9                               ; $75ef: $20 $e8

	rst SubAFromDE                                          ; $75f1: $df
	ld bc, $03df                                     ; $75f2: $01 $df $03
	rst SubAFromDE                                          ; $75f5: $df
	rlca                                             ; $75f6: $07
	sbc [hl]                                         ; $75f7: $9e
	ld c, $f9                                        ; $75f8: $0e $f9
	ld a, e                                          ; $75fa: $7b
	call z, $209d                                    ; $75fb: $cc $9d $20
	ld b, b                                          ; $75fe: $40
	ld h, e                                          ; $75ff: $63
	ret                                              ; $7600: $c9


	ld a, e                                          ; $7601: $7b
	add b                                            ; $7602: $80
	ld [hl], e                                       ; $7603: $73
	ld a, [$0794]                                    ; $7604: $fa $94 $07
	rrca                                             ; $7607: $0f
	ld [bc], a                                       ; $7608: $02
	dec b                                            ; $7609: $05
	ld a, [bc]                                       ; $760a: $0a
	inc d                                            ; $760b: $14
	add hl, hl                                       ; $760c: $29
	ld d, e                                          ; $760d: $53
	and b                                            ; $760e: $a0
	ld b, b                                          ; $760f: $40
	inc c                                            ; $7610: $0c
	ld a, e                                          ; $7611: $7b
	ld d, a                                          ; $7612: $57
	sbc b                                            ; $7613: $98
	cp $f0                                           ; $7614: $fe $f0
	ld sp, hl                                        ; $7616: $f9
	db $fc                                           ; $7617: $fc
	adc a                                            ; $7618: $8f
	rra                                              ; $7619: $1f
	ccf                                              ; $761a: $3f
	sbc $ff                                          ; $761b: $de $ff
	ld a, a                                          ; $761d: $7f
	ld a, d                                          ; $761e: $7a
	sub e                                            ; $761f: $93
	ld l, [hl]                                       ; $7620: $6e
	or c                                             ; $7621: $b1
	rst GetHLinHL                                          ; $7622: $cf
	ld h, $4f                                        ; $7623: $26 $4f
	sbc d                                            ; $7625: $9a
	or c                                             ; $7626: $b1
	ld sp, $7e1f                                     ; $7627: $31 $1f $7e
	ldh a, [$c1]                                     ; $762a: $f0 $c1
	ld [hl], a                                       ; $762c: $77
	ret                                              ; $762d: $c9


	sub c                                            ; $762e: $91
	ld a, [bc]                                       ; $762f: $0a
	rlca                                             ; $7630: $07
	ld l, e                                          ; $7631: $6b
	db $e3                                           ; $7632: $e3
	jp nz, $8392                                     ; $7633: $c2 $92 $83

	xor c                                            ; $7636: $a9
	rst $38                                          ; $7637: $ff
	ld a, [$1292]                                    ; $7638: $fa $92 $12
	inc de                                           ; $763b: $13
	inc bc                                           ; $763c: $03
	halt                                             ; $763d: $76
	cp h                                             ; $763e: $bc
	ld a, a                                          ; $763f: $7f
	and b                                            ; $7640: $a0
	ld a, a                                          ; $7641: $7f
	jp nz, $1e9e                                     ; $7642: $c2 $9e $1e

	halt                                             ; $7645: $76
	sub b                                            ; $7646: $90
	db $fc                                           ; $7647: $fc
	sbc e                                            ; $7648: $9b
	ld b, b                                          ; $7649: $40
	call nz, $e098                                   ; $764a: $c4 $98 $e0
	ld l, d                                          ; $764d: $6a
	cp $f5                                           ; $764e: $fe $f5
	ld h, e                                          ; $7650: $63
	ld h, b                                          ; $7651: $60
	rst SubAFromDE                                          ; $7652: $df
	inc c                                            ; $7653: $0c
	sbc h                                            ; $7654: $9c
	inc e                                            ; $7655: $1c
	jr @+$3a                                         ; $7656: $18 $38

	ld a, e                                          ; $7658: $7b
	ccf                                              ; $7659: $3f
	rst FarCall                                          ; $765a: $f7
	sub l                                            ; $765b: $95
	ld [bc], a                                       ; $765c: $02
	jr jr_05f_765f                                   ; $765d: $18 $00

jr_05f_765f:
	db $10                                           ; $765f: $10
	inc hl                                           ; $7660: $23
	ld b, e                                          ; $7661: $43
	ld [bc], a                                       ; $7662: $02
	dec b                                            ; $7663: $05
	add hl, bc                                       ; $7664: $09
	ld [bc], a                                       ; $7665: $02
	ld a, e                                          ; $7666: $7b
	ld a, a                                          ; $7667: $7f
	add b                                            ; $7668: $80
	and a                                            ; $7669: $a7
	dec e                                            ; $766a: $1d
	rlca                                             ; $766b: $07
	rra                                              ; $766c: $1f
	inc a                                            ; $766d: $3c
	ld [hl], d                                       ; $766e: $72
	db $eb                                           ; $766f: $eb
	rst SubAFromDE                                          ; $7670: $df
	cp a                                             ; $7671: $bf
	add d                                            ; $7672: $82

jr_05f_7673:
	inc e                                            ; $7673: $1c
	jr c, jr_05f_76d9                                ; $7674: $38 $63

	call $2f97                                       ; $7676: $cd $97 $2f
	ld e, [hl]                                       ; $7679: $5e
	ld b, c                                          ; $767a: $41
	push bc                                          ; $767b: $c5
	adc c                                            ; $767c: $89
	xor a                                            ; $767d: $af
	xor [hl]                                         ; $767e: $ae
	add b                                            ; $767f: $80
	rst SubAFromHL                                          ; $7680: $d7
	rla                                              ; $7681: $17
	jr nz, @+$22                                     ; $7682: $20 $20

	ld h, h                                          ; $7684: $64
	ld b, h                                          ; $7685: $44
	ld b, h                                          ; $7686: $44
	ld h, [hl]                                       ; $7687: $66
	add l                                            ; $7688: $85
	ld h, d                                          ; $7689: $62
	ldh [c], a                                       ; $768a: $e2
	add h                                            ; $768b: $84
	ccf                                              ; $768c: $3f
	ld a, l                                          ; $768d: $7d
	ld [$9bff], a                                    ; $768e: $ea $ff $9b
	rst SubAFromDE                                          ; $7691: $df
	ld c, [hl]                                       ; $7692: $4e
	add hl, hl                                       ; $7693: $29
	and h                                            ; $7694: $a4
	or [hl]                                          ; $7695: $b6
	cp a                                             ; $7696: $bf
	and a                                            ; $7697: $a7
	rst FarCall                                          ; $7698: $f7
	ld [hl], c                                       ; $7699: $71
	ld a, c                                          ; $769a: $79
	add sp, -$70                                     ; $769b: $e8 $90
	ldh [$c0], a                                     ; $769d: $e0 $c0
	ld h, b                                          ; $769f: $60
	jr nz, jr_05f_7673                               ; $76a0: $20 $d1

	ei                                               ; $76a2: $fb
	sbc $80                                          ; $76a3: $de $80
	sbc e                                            ; $76a5: $9b
	ld b, b                                          ; $76a6: $40
	ret nz                                           ; $76a7: $c0

	ldh [$f0], a                                     ; $76a8: $e0 $f0
	ld a, d                                          ; $76aa: $7a
	xor c                                            ; $76ab: $a9
	ld a, [hl]                                       ; $76ac: $7e
	sub b                                            ; $76ad: $90
	sbc [hl]                                         ; $76ae: $9e
	jr c, jr_05f_770b                                ; $76af: $38 $5a

	rst SubAFromBC                                          ; $76b1: $e7
	sbc l                                            ; $76b2: $9d
	ld b, c                                          ; $76b3: $41
	add $5f                                          ; $76b4: $c6 $5f
	inc de                                           ; $76b6: $13
	ld d, [hl]                                       ; $76b7: $56
	db $eb                                           ; $76b8: $eb
	rst SubAFromDE                                          ; $76b9: $df
	ld bc, $0294                                     ; $76ba: $01 $94 $02
	inc bc                                           ; $76bd: $03
	ld b, $0a                                        ; $76be: $06 $0a
	dec c                                            ; $76c0: $0d
	dec d                                            ; $76c1: $15
	rlca                                             ; $76c2: $07
	dec de                                           ; $76c3: $1b
	rrca                                             ; $76c4: $0f
	ld a, a                                          ; $76c5: $7f
	ld a, a                                          ; $76c6: $7f
	sbc $ff                                          ; $76c7: $de $ff
	sbc h                                            ; $76c9: $9c
	adc $9c                                          ; $76ca: $ce $9c
	or b                                             ; $76cc: $b0
	ld [hl], l                                       ; $76cd: $75
	call $c080                                       ; $76ce: $cd $80 $c0
	add hl, hl                                       ; $76d1: $29
	set 6, l                                         ; $76d2: $cb $f5
	push hl                                          ; $76d4: $e5
	ld a, d                                          ; $76d5: $7a
	ld [hl], l                                       ; $76d6: $75
	ld a, d                                          ; $76d7: $7a
	ld a, c                                          ; $76d8: $79

jr_05f_76d9:
	di                                               ; $76d9: $f3
	or c                                             ; $76da: $b1
	sbc c                                            ; $76db: $99
	sbc b                                            ; $76dc: $98
	adc h                                            ; $76dd: $8c
	adc [hl]                                         ; $76de: $8e
	add a                                            ; $76df: $87
	add a                                            ; $76e0: $87
	and a                                            ; $76e1: $a7
	di                                               ; $76e2: $f3
	dec a                                            ; $76e3: $3d
	rst $38                                          ; $76e4: $ff
	sbc h                                            ; $76e5: $9c
	db $db                                           ; $76e6: $db
	and a                                            ; $76e7: $a7
	ld a, [hl]                                       ; $76e8: $7e
	ld a, h                                          ; $76e9: $7c
	ld a, $af                                        ; $76ea: $3e $af
	and e                                            ; $76ec: $a3
	ldh a, [rSVBK]                                   ; $76ed: $f0 $70
	sub b                                            ; $76ef: $90
	ld a, b                                          ; $76f0: $78
	cp b                                             ; $76f1: $b8
	rst $38                                          ; $76f2: $ff
	cp [hl]                                          ; $76f3: $be
	db $f4                                           ; $76f4: $f4
	or $66                                           ; $76f5: $f6 $66
	jp nz, $0110                                     ; $76f7: $c2 $10 $01

	ld e, b                                          ; $76fa: $58
	ld c, h                                          ; $76fb: $4c
	inc c                                            ; $76fc: $0c
	add [hl]                                         ; $76fd: $86
	jp nz, $2a73                                     ; $76fe: $c2 $73 $2a

	sbc d                                            ; $7701: $9a
	ld [$1018], sp                                   ; $7702: $08 $18 $10
	ld h, b                                          ; $7705: $60
	ret nz                                           ; $7706: $c0

	ld c, a                                          ; $7707: $4f
	dec c                                            ; $7708: $0d
	sbc l                                            ; $7709: $9d
	ld [bc], a                                       ; $770a: $02

jr_05f_770b:
	inc b                                            ; $770b: $04
	ld h, e                                          ; $770c: $63
	sub a                                            ; $770d: $97
	halt                                             ; $770e: $76
	add e                                            ; $770f: $83
	ld a, [hl]                                       ; $7710: $7e
	ldh [hDisp0_BGP], a                                     ; $7711: $e0 $85
	rrca                                             ; $7713: $0f
	rra                                              ; $7714: $1f

jr_05f_7715:
	dec de                                           ; $7715: $1b
	add hl, hl                                       ; $7716: $29
	inc l                                            ; $7717: $2c
	ld d, h                                          ; $7718: $54
	ld d, [hl]                                       ; $7719: $56
	and d                                            ; $771a: $a2
	and c                                            ; $771b: $a1
	ld b, b                                          ; $771c: $40
	cp b                                             ; $771d: $b8
	ld c, h                                          ; $771e: $4c
	and $a4                                          ; $771f: $e6 $a4
	or $d7                                           ; $7721: $f6 $d7

Jump_05f_7723:
	db $d3                                           ; $7723: $d3
	ld c, e                                          ; $7724: $4b
	call c, Call_05f_7cfc                            ; $7725: $dc $fc $7c
	ld a, a                                          ; $7728: $7f
	ccf                                              ; $7729: $3f
	ld a, $3e                                        ; $772a: $3e $3e
	cp [hl]                                          ; $772c: $be
	ld a, d                                          ; $772d: $7a
	jp $9e9b                                         ; $772e: $c3 $9b $9e


	ld a, $dc                                        ; $7731: $3e $dc
	inc l                                            ; $7733: $2c
	db $fc                                           ; $7734: $fc
	sub e                                            ; $7735: $93
	ret nz                                           ; $7736: $c0

	jr nz, jr_05f_7749                               ; $7737: $20 $10

	db $10                                           ; $7739: $10
	add b                                            ; $773a: $80
	inc b                                            ; $773b: $04
	inc c                                            ; $773c: $0c
	ld [$3319], sp                                   ; $773d: $08 $19 $33
	ld [hl+], a                                      ; $7740: $22
	ld h, [hl]                                       ; $7741: $66
	ldh a, [c]                                       ; $7742: $f2
	adc e                                            ; $7743: $8b
	inc bc                                           ; $7744: $03
	ld [bc], a                                       ; $7745: $02
	ld [bc], a                                       ; $7746: $02
	inc b                                            ; $7747: $04
	dec c                                            ; $7748: $0d

jr_05f_7749:
	ld a, [bc]                                       ; $7749: $0a
	inc d                                            ; $774a: $14
	dec d                                            ; $774b: $15
	dec d                                            ; $774c: $15
	rra                                              ; $774d: $1f
	ccf                                              ; $774e: $3f
	ccf                                              ; $774f: $3f
	ld a, a                                          ; $7750: $7f
	cp $fb                                           ; $7751: $fe $fb
	rst SubAFromHL                                          ; $7753: $d7
	xor [hl]                                         ; $7754: $ae
	ld b, b                                          ; $7755: $40
	sub b                                            ; $7756: $90
	add b                                            ; $7757: $80
	ld a, d                                          ; $7758: $7a
	ld c, c                                          ; $7759: $49
	add b                                            ; $775a: $80
	cpl                                              ; $775b: $2f
	ld e, a                                          ; $775c: $5f
	ld l, d                                          ; $775d: $6a
	ld l, e                                          ; $775e: $6b
	dec hl                                           ; $775f: $2b
	xor d                                            ; $7760: $aa
	sbc d                                            ; $7761: $9a
	sub l                                            ; $7762: $95
	ld c, l                                          ; $7763: $4d
	call nz, $9f9f                                   ; $7764: $c4 $9f $9f
	rst SubAFromDE                                          ; $7767: $df
	rst SubAFromDE                                          ; $7768: $df
	rst AddAOntoHL                                          ; $7769: $ef
	rst AddAOntoHL                                          ; $776a: $ef
	rst FarCall                                          ; $776b: $f7
	ld a, a                                          ; $776c: $7f
	ld [hl], b                                       ; $776d: $70
	reti                                             ; $776e: $d9


	add hl, hl                                       ; $776f: $29
	and h                                            ; $7770: $a4
	jp nc, Jump_05f_6850                             ; $7771: $d2 $50 $68

	cp b                                             ; $7774: $b8
	adc b                                            ; $7775: $88
	ld h, h                                          ; $7776: $64
	ldh a, [c]                                       ; $7777: $f2
	ld sp, hl                                        ; $7778: $f9
	db $fc                                           ; $7779: $fc
	ld [hl], a                                       ; $777a: $77
	jr z, jr_05f_7715                                ; $777b: $28 $98

	call z, $189c                                    ; $777d: $cc $9c $18
	ld b, b                                          ; $7780: $40
	add b                                            ; $7781: $80
	jr c, @+$17                                      ; $7782: $38 $15

	ld [hl], a                                       ; $7784: $77

jr_05f_7785:
	inc hl                                           ; $7785: $23
	sbc e                                            ; $7786: $9b
	ccf                                              ; $7787: $3f
	nop                                              ; $7788: $00
	rst GetHLinHL                                          ; $7789: $cf
	rst AddAOntoHL                                          ; $778a: $ef
	ld a, e                                          ; $778b: $7b
	ld [hl], b                                       ; $778c: $70
	sub d                                            ; $778d: $92
	dec b                                            ; $778e: $05
	dec c                                            ; $778f: $0d
	dec e                                            ; $7790: $1d
	dec l                                            ; $7791: $2d
	rst $38                                          ; $7792: $ff
	ld a, [hl+]                                      ; $7793: $2a
	ld a, [hl+]                                      ; $7794: $2a
	ld [hl-], a                                      ; $7795: $32
	ld d, d                                          ; $7796: $52
	and d                                            ; $7797: $a2
	ld h, $d2                                        ; $7798: $26 $d2

Jump_05f_779a:
	jr jr_05f_77bb                                   ; $779a: $18 $1f

	nop                                              ; $779c: $00
	sbc [hl]                                         ; $779d: $9e
	ld [bc], a                                       ; $779e: $02
	db $dd                                           ; $779f: $dd
	ld [hl+], a                                      ; $77a0: $22
	ld h, a                                          ; $77a1: $67
	ei                                               ; $77a2: $fb
	sbc l                                            ; $77a3: $9d
	inc hl                                           ; $77a4: $23
	jr nc, jr_05f_7785                               ; $77a5: $30 $de

	ld [hl+], a                                      ; $77a7: $22
	sbc l                                            ; $77a8: $9d
	inc hl                                           ; $77a9: $23
	nop                                              ; $77aa: $00
	ld [hl], a                                       ; $77ab: $77
	rst FarCall                                          ; $77ac: $f7
	ld [hl], a                                       ; $77ad: $77
	ei                                               ; $77ae: $fb
	rst $38                                          ; $77af: $ff
	ld a, a                                          ; $77b0: $7f
	db $ec                                           ; $77b1: $ec
	sbc [hl]                                         ; $77b2: $9e
	inc sp                                           ; $77b3: $33
	ld [hl], a                                       ; $77b4: $77
	ei                                               ; $77b5: $fb
	ld a, a                                          ; $77b6: $7f
	ldh a, [c]                                       ; $77b7: $f2
	sbc [hl]                                         ; $77b8: $9e
	nop                                              ; $77b9: $00
	ld b, h                                          ; $77ba: $44

jr_05f_77bb:
	add b                                            ; $77bb: $80
	add [hl]                                         ; $77bc: $86
	ld a, e                                          ; $77bd: $7b
	xor $dc                                          ; $77be: $ee $dc
	or $a6                                           ; $77c0: $f6 $a6
	and h                                            ; $77c2: $a4
	pop af                                           ; $77c3: $f1
	di                                               ; $77c4: $f3
	add a                                            ; $77c5: $87
	rra                                              ; $77c6: $1f
	ld a, $3f                                        ; $77c7: $3e $3f
	ld [hl], a                                       ; $77c9: $77
	ld [hl], a                                       ; $77ca: $77
	ccf                                              ; $77cb: $3f
	ld [hl+], a                                      ; $77cc: $22
	ret nz                                           ; $77cd: $c0

	nop                                              ; $77ce: $00
	ld b, b                                          ; $77cf: $40
	nop                                              ; $77d0: $00
	ret nz                                           ; $77d1: $c0

	add b                                            ; $77d2: $80
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00
	add b                                            ; $77d5: $80
	ld [hl], a                                       ; $77d6: $77
	db $fc                                           ; $77d7: $fc
	cp $9a                                           ; $77d8: $fe $9a
	jp nz, $82c0                                     ; $77da: $c2 $c0 $82

	ld [bc], a                                       ; $77dd: $02
	inc bc                                           ; $77de: $03
	or $94                                           ; $77df: $f6 $94
	sbc $f0                                          ; $77e1: $de $f0
	cp l                                             ; $77e3: $bd
	jp hl                                            ; $77e4: $e9


	db $ed                                           ; $77e5: $ed
	cp $e6                                           ; $77e6: $fe $e6
	cp $38                                           ; $77e8: $fe $38
	jr c, jr_05f_7864                                ; $77ea: $38 $78

	sbc $6e                                          ; $77ec: $de $6e
	sbc l                                            ; $77ee: $9d
	ld a, h                                          ; $77ef: $7c
	ld b, b                                          ; $77f0: $40
	sbc $ff                                          ; $77f1: $de $ff
	sub a                                            ; $77f3: $97
	ei                                               ; $77f4: $fb
	db $fc                                           ; $77f5: $fc
	adc [hl]                                         ; $77f6: $8e
	ld [bc], a                                       ; $77f7: $02
	ld bc, $f080                                     ; $77f8: $01 $80 $f0
	db $fc                                           ; $77fb: $fc
	call c, $0aff                                    ; $77fc: $dc $ff $0a
	nop                                              ; $77ff: $00
	sbc d                                            ; $7800: $9a
	inc bc                                           ; $7801: $03
	jr nc, jr_05f_7807                               ; $7802: $30 $03

	nop                                              ; $7804: $00
	jr nc, jr_05f_7882                               ; $7805: $30 $7b

jr_05f_7807:
	cp $2a                                           ; $7807: $fe $2a
	ld bc, $1c80                                     ; $7809: $01 $80 $1c
	ccf                                              ; $780c: $3f
	rla                                              ; $780d: $17
	rrca                                             ; $780e: $0f
	inc c                                            ; $780f: $0c
	rra                                              ; $7810: $1f
	ld de, $231e                                     ; $7811: $11 $1e $23
	inc a                                            ; $7814: $3c
	daa                                              ; $7815: $27
	jr c, jr_05f_783e                                ; $7816: $38 $26

	add hl, sp                                       ; $7818: $39
	ld l, a                                          ; $7819: $6f
	ld de, $f878                                     ; $781a: $11 $78 $f8
	and b                                            ; $781d: $a0
	ret nz                                           ; $781e: $c0

	ld b, b                                          ; $781f: $40
	add b                                            ; $7820: $80
	jp $df00                                         ; $7821: $c3 $00 $df


	ccf                                              ; $7824: $3f
	ld a, a                                          ; $7825: $7f
	rst $38                                          ; $7826: $ff
	or $e6                                           ; $7827: $f6 $e6
	rst JumpTable                                          ; $7829: $c7
	sub d                                            ; $782a: $92
	rst JumpTable                                          ; $782b: $c7
	ld [bc], a                                       ; $782c: $02
	inc b                                            ; $782d: $04
	nop                                              ; $782e: $00
	ld [bc], a                                       ; $782f: $02
	ld h, c                                          ; $7830: $61
	ld b, d                                          ; $7831: $42
	ld [hl], b                                       ; $7832: $70
	pop de                                           ; $7833: $d1
	ldh [$f0], a                                     ; $7834: $e0 $f0
	or b                                             ; $7836: $b0
	ldh [$bf], a                                     ; $7837: $e0 $bf
	jr nz, jr_05f_783b                               ; $7839: $20 $00

jr_05f_783b:
	sub [hl]                                         ; $783b: $96
	ld a, l                                          ; $783c: $7d
	inc bc                                           ; $783d: $03

jr_05f_783e:
	ld a, l                                          ; $783e: $7d
	inc bc                                           ; $783f: $03
	dec a                                            ; $7840: $3d
	inc bc                                           ; $7841: $03
	ccf                                              ; $7842: $3f
	ld bc, $bd1f                                     ; $7843: $01 $1f $bd
	rlca                                             ; $7846: $07
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	adc h                                            ; $7849: $8c
	add e                                            ; $784a: $83
	add [hl]                                         ; $784b: $86
	add l                                            ; $784c: $85
	adc [hl]                                         ; $784d: $8e
	adc [hl]                                         ; $784e: $8e
	rst GetHLinHL                                          ; $784f: $cf
	adc $ef                                          ; $7850: $ce $ef
	ei                                               ; $7852: $fb
	cp h                                             ; $7853: $bc
	cp b                                             ; $7854: $b8
	rra                                              ; $7855: $1f
	rrca                                             ; $7856: $0f
	rlca                                             ; $7857: $07
	ld b, $00                                        ; $7858: $06 $00
	add b                                            ; $785a: $80
	add b                                            ; $785b: $80
	ld b, h                                          ; $785c: $44
	ld b, b                                          ; $785d: $40
	ret z                                            ; $785e: $c8

	ld h, b                                          ; $785f: $60
	add sp, $40                                      ; $7860: $e8 $40
	ret nz                                           ; $7862: $c0

	ld b, b                                          ; $7863: $40

jr_05f_7864:
	ret nz                                           ; $7864: $c0

	add b                                            ; $7865: $80
	add b                                            ; $7866: $80
	cp a                                             ; $7867: $bf
	ld b, b                                          ; $7868: $40
	or a                                             ; $7869: $b7
	add b                                            ; $786a: $80
	db $e3                                           ; $786b: $e3
	cp h                                             ; $786c: $bc
	ldh [$5b], a                                     ; $786d: $e0 $5b
	ldh a, [$bc]                                     ; $786f: $f0 $bc
	pop af                                           ; $7871: $f1
	rst $38                                          ; $7872: $ff
	sbc c                                            ; $7873: $99
	rst $38                                          ; $7874: $ff
	adc l                                            ; $7875: $8d
	ld a, a                                          ; $7876: $7f
	jp Jump_05f_43fe                                 ; $7877: $c3 $fe $43


	ret nz                                           ; $787a: $c0

	add b                                            ; $787b: $80
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	ld e, b                                          ; $787e: $58
	ldh [$be], a                                     ; $787f: $e0 $be
	ret nz                                           ; $7881: $c0

jr_05f_7882:
	rst $38                                          ; $7882: $ff
	add b                                            ; $7883: $80
	ld a, a                                          ; $7884: $7f
	add b                                            ; $7885: $80
	xor $1f                                          ; $7886: $ee $1f
	rst SubAFromDE                                          ; $7888: $df
	ccf                                              ; $7889: $3f
	rst FarCall                                          ; $788a: $f7
	sbc [hl]                                         ; $788b: $9e
	add c                                            ; $788c: $81
	cp a                                             ; $788d: $bf
	pop bc                                           ; $788e: $c1
	ld b, e                                          ; $788f: $43
	ld a, e                                          ; $7890: $7b
	ldh [c], a                                       ; $7891: $e2
	sbc [hl]                                         ; $7892: $9e
	inc bc                                           ; $7893: $03
	cp e                                             ; $7894: $bb
	ld c, $3c                                        ; $7895: $0e $3c
	ldh a, [$c0]                                     ; $7897: $f0 $c0
	add b                                            ; $7899: $80

Call_05f_789a:
	ld b, b                                          ; $789a: $40
	ld a, e                                          ; $789b: $7b
	cp h                                             ; $789c: $bc
	db $e3                                           ; $789d: $e3
	ld a, a                                          ; $789e: $7f
	xor [hl]                                         ; $789f: $ae
	adc h                                            ; $78a0: $8c
	ccf                                              ; $78a1: $3f
	ldh [c], a                                       ; $78a2: $e2
	cp a                                             ; $78a3: $bf
	ldh [c], a                                       ; $78a4: $e2
	db $fd                                           ; $78a5: $fd
	ldh a, [c]                                       ; $78a6: $f2
	or l                                             ; $78a7: $b5
	ld a, [$dc7b]                                    ; $78a8: $fa $7b $dc
	ccf                                              ; $78ab: $3f
	db $ec                                           ; $78ac: $ec
	sub a                                            ; $78ad: $97
	cp $f2                                           ; $78ae: $fe $f2
	dec sp                                           ; $78b0: $3b
	or d                                             ; $78b1: $b2
	ld [hl], e                                       ; $78b2: $73
	and e                                            ; $78b3: $a3

jr_05f_78b4:
	ld a, e                                          ; $78b4: $7b
	cp $80                                           ; $78b5: $fe $80
	or e                                             ; $78b7: $b3

Call_05f_78b8:
	ld [hl], e                                       ; $78b8: $73
	cp d                                             ; $78b9: $ba
	ld l, e                                          ; $78ba: $6b
	xor $e7                                          ; $78bb: $ee $e7
	sub e                                            ; $78bd: $93
	ld h, c                                          ; $78be: $61
	and e                                            ; $78bf: $a3
	ret nz                                           ; $78c0: $c0

	ld d, e                                          ; $78c1: $53
	ldh [$36], a                                     ; $78c2: $e0 $36
	and b                                            ; $78c4: $a0
	or [hl]                                          ; $78c5: $b6
	ret nc                                           ; $78c6: $d0

	or [hl]                                          ; $78c7: $b6
	ret nc                                           ; $78c8: $d0

	db $f4                                           ; $78c9: $f4
	db $10                                           ; $78ca: $10
	ld [hl], h                                       ; $78cb: $74
	and b                                            ; $78cc: $a0
	ldh [$c0], a                                     ; $78cd: $e0 $c0
	ld a, b                                          ; $78cf: $78
	ret nz                                           ; $78d0: $c0

	ret z                                            ; $78d1: $c8

	ld [hl], b                                       ; $78d2: $70
	pop af                                           ; $78d3: $f1
	ld sp, $9a62                                     ; $78d4: $31 $62 $9a
	ld [bc], a                                       ; $78d7: $02
	dec b                                            ; $78d8: $05
	inc b                                            ; $78d9: $04

jr_05f_78da:
	dec b                                            ; $78da: $05
	dec c                                            ; $78db: $0d
	db $dd                                           ; $78dc: $dd
	rrca                                             ; $78dd: $0f
	adc a                                            ; $78de: $8f
	ld [hl], b                                       ; $78df: $70
	jr nz, jr_05f_78da                               ; $78e0: $20 $f8

	ldh a, [$fc]                                     ; $78e2: $f0 $fc
	ld a, b                                          ; $78e4: $78
	cp $7c                                           ; $78e5: $fe $7c
	db $fc                                           ; $78e7: $fc
	cp $ff                                           ; $78e8: $fe $ff
	cp $fe                                           ; $78ea: $fe $fe
	rst $38                                          ; $78ec: $ff
	ld sp, hl                                        ; $78ed: $f9
	rst $38                                          ; $78ee: $ff
	di                                               ; $78ef: $f3
	ld a, a                                          ; $78f0: $7f
	add d                                            ; $78f1: $82
	adc [hl]                                         ; $78f2: $8e
	ret                                              ; $78f3: $c9


	jr nc, jr_05f_78b4                               ; $78f4: $30 $be

	ret nz                                           ; $78f6: $c0

	ld l, a                                          ; $78f7: $6f
	ldh a, [$5b]                                     ; $78f8: $f0 $5b
	inc a                                            ; $78fa: $3c
	dec d                                            ; $78fb: $15
	ld c, $02                                        ; $78fc: $0e $02
	rlca                                             ; $78fe: $07
	ld hl, $1803                                     ; $78ff: $21 $03 $18
	ld bc, $bbc0                                     ; $7902: $01 $c0 $bb
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	ldh [$f0], a                                     ; $7907: $e0 $f0
	db $fc                                           ; $7909: $fc
	ld a, a                                          ; $790a: $7f
	sbc b                                            ; $790b: $98
	add b                                            ; $790c: $80
	cp a                                             ; $790d: $bf
	ret nz                                           ; $790e: $c0

	inc bc                                           ; $790f: $03
	rlca                                             ; $7910: $07
	ld [bc], a                                       ; $7911: $02
	ld bc, $d25f                                     ; $7912: $01 $5f $d2
	ld a, a                                          ; $7915: $7f
	add sp, $7f                                      ; $7916: $e8 $7f
	rla                                              ; $7918: $17
	sbc e                                            ; $7919: $9b
	push hl                                          ; $791a: $e5
	ei                                               ; $791b: $fb
	ld a, a                                          ; $791c: $7f
	ld a, $f9                                        ; $791d: $3e $f9
	rst SubAFromDE                                          ; $791f: $df
	ld a, a                                          ; $7920: $7f
	ld a, a                                          ; $7921: $7f
	db $ec                                           ; $7922: $ec
	ld a, a                                          ; $7923: $7f
	cp $7e                                           ; $7924: $fe $7e
	ret                                              ; $7926: $c9


	sub l                                            ; $7927: $95
	ld h, c                                          ; $7928: $61
	nop                                              ; $7929: $00
	ld bc, $0301                                     ; $792a: $01 $01 $03
	ld bc, $0306                                     ; $792d: $01 $06 $03
	rla                                              ; $7930: $17
	rrca                                             ; $7931: $0f
	rrca                                             ; $7932: $0f
	nop                                              ; $7933: $00
	sbc h                                            ; $7934: $9c
	nop                                              ; $7935: $00
	ld d, l                                          ; $7936: $55
	ld d, b                                          ; $7937: $50
	ld a, e                                          ; $7938: $7b
	db $fd                                           ; $7939: $fd
	call c, $9b55                                    ; $793a: $dc $55 $9b
	ld h, [hl]                                       ; $793d: $66
	dec b                                            ; $793e: $05
	ld d, l                                          ; $793f: $55
	ld h, [hl]                                       ; $7940: $66
	adc [hl]                                         ; $7941: $8e
	add d                                            ; $7942: $82
	sbc h                                            ; $7943: $9c
	rlca                                             ; $7944: $07
	inc b                                            ; $7945: $04
	dec b                                            ; $7946: $05
	sbc $07                                          ; $7947: $de $07
	sbc h                                            ; $7949: $9c
	ld [hl], a                                       ; $794a: $77
	ld a, [hl]                                       ; $794b: $7e
	ld a, [$f8de]                                    ; $794c: $fa $de $f8
	adc a                                            ; $794f: $8f
	ld a, [$aafd]                                    ; $7950: $fa $fd $aa
	ret nc                                           ; $7953: $d0

	rst AddAOntoHL                                          ; $7954: $ef
	ld l, e                                          ; $7955: $6b
	ld e, l                                          ; $7956: $5d
	xor e                                            ; $7957: $ab
	cp b                                             ; $7958: $b8
	ldh [$80], a                                     ; $7959: $e0 $80
	nop                                              ; $795b: $00
	ldh a, [$15]                                     ; $795c: $f0 $15
	and d                                            ; $795e: $a2
	db $fc                                           ; $795f: $fc
	ld a, e                                          ; $7960: $7b
	ld sp, hl                                        ; $7961: $f9
	sbc e                                            ; $7962: $9b
	nop                                              ; $7963: $00
	rra                                              ; $7964: $1f
	xor a                                            ; $7965: $af
	ldh a, [$fc]                                     ; $7966: $f0 $fc
	sbc [hl]                                         ; $7968: $9e
	rlca                                             ; $7969: $07
	ld a, [$c09d]                                    ; $796a: $fa $9d $c0
	rst $38                                          ; $796d: $ff
	ei                                               ; $796e: $fb
	sbc [hl]                                         ; $796f: $9e
	rst SubAFromDE                                          ; $7970: $df
	ld sp, hl                                        ; $7971: $f9
	sbc e                                            ; $7972: $9b
	add b                                            ; $7973: $80
	ld [hl], b                                       ; $7974: $70
	ld b, $01                                        ; $7975: $06 $01
	cp $9c                                           ; $7977: $fe $9c
	rst $38                                          ; $7979: $ff
	ld a, a                                          ; $797a: $7f
	rrca                                             ; $797b: $0f
	ld [hl], a                                       ; $797c: $77
	ld sp, hl                                        ; $797d: $f9
	sbc h                                            ; $797e: $9c
	nop                                              ; $797f: $00
	inc b                                            ; $7980: $04
	inc bc                                           ; $7981: $03
	ld a, e                                          ; $7982: $7b
	db $ed                                           ; $7983: $ed
	sbc h                                            ; $7984: $9c
	ld b, a                                          ; $7985: $47
	inc l                                            ; $7986: $2c
	nop                                              ; $7987: $00
	db $dd                                           ; $7988: $dd
	rst $38                                          ; $7989: $ff
	sbc c                                            ; $798a: $99
	ld a, a                                          ; $798b: $7f
	ccf                                              ; $798c: $3f
	rra                                              ; $798d: $1f
	rrca                                             ; $798e: $0f
	nop                                              ; $798f: $00
	ld [bc], a                                       ; $7990: $02
	ld [hl], a                                       ; $7991: $77
	cp $9b                                           ; $7992: $fe $9b
	ld b, c                                          ; $7994: $41
	xor d                                            ; $7995: $aa
	rst $38                                          ; $7996: $ff
	db $fd                                           ; $7997: $fd
	ld [hl], a                                       ; $7998: $77
	cp $91                                           ; $7999: $fe $91
	cp $fc                                           ; $799b: $fe $fc
	ld a, h                                          ; $799d: $7c
	ld a, b                                          ; $799e: $78
	ld h, b                                          ; $799f: $60
	ld b, b                                          ; $79a0: $40
	ld [bc], a                                       ; $79a1: $02
	nop                                              ; $79a2: $00
	ld [$b800], sp                                   ; $79a3: $08 $00 $b8
	ret nc                                           ; $79a6: $d0

	or b                                             ; $79a7: $b0
	ret nz                                           ; $79a8: $c0

	ld a, e                                          ; $79a9: $7b
	and c                                            ; $79aa: $a1
	ld a, a                                          ; $79ab: $7f
	push hl                                          ; $79ac: $e5
	sbc h                                            ; $79ad: $9c
	inc d                                            ; $79ae: $14
	add b                                            ; $79af: $80
	db $10                                           ; $79b0: $10
	ld [hl], a                                       ; $79b1: $77
	ld hl, sp-$1a                                    ; $79b2: $f8 $e6
	ld a, a                                          ; $79b4: $7f
	xor b                                            ; $79b5: $a8
	ld [hl], a                                       ; $79b6: $77
	cp $f9                                           ; $79b7: $fe $f9
	sbc b                                            ; $79b9: $98
	inc d                                            ; $79ba: $14
	nop                                              ; $79bb: $00
	ld d, l                                          ; $79bc: $55
	nop                                              ; $79bd: $00
	ld d, l                                          ; $79be: $55
	ld a, [bc]                                       ; $79bf: $0a
	ld d, l                                          ; $79c0: $55
	or $99                                           ; $79c1: $f6 $99
	ld d, b                                          ; $79c3: $50
	jr z, jr_05f_7a1a                                ; $79c4: $28 $54

	ld a, [hl+]                                      ; $79c6: $2a
	ld d, l                                          ; $79c7: $55
	inc bc                                           ; $79c8: $03
	ld l, e                                          ; $79c9: $6b
	sbc $80                                          ; $79ca: $de $80
	ld c, d                                          ; $79cc: $4a
	xor d                                            ; $79cd: $aa
	ret                                              ; $79ce: $c9


	ld h, [hl]                                       ; $79cf: $66
	dec d                                            ; $79d0: $15
	rlca                                             ; $79d1: $07
	ld bc, $b104                                     ; $79d2: $01 $04 $b1
	ld d, c                                          ; $79d5: $51
	ld [hl], $1f                                     ; $79d6: $36 $1f
	ld a, [hl+]                                      ; $79d8: $2a
	db $10                                           ; $79d9: $10
	ld [$5400], sp                                   ; $79da: $08 $00 $54
	db $fc                                           ; $79dd: $fc
	ld [$0010], sp                                   ; $79de: $08 $10 $00
	jr nz, jr_05f_79e4                               ; $79e1: $20 $01

	ret nz                                           ; $79e3: $c0

jr_05f_79e4:
	db $fc                                           ; $79e4: $fc
	ld hl, sp-$10                                    ; $79e5: $f8 $f0
	ldh [$e0], a                                     ; $79e7: $e0 $e0
	ret nz                                           ; $79e9: $c0

	ret nz                                           ; $79ea: $c0

	ld [hl], a                                       ; $79eb: $77
	ld e, [hl]                                       ; $79ec: $5e
	ld a, a                                          ; $79ed: $7f
	db $ec                                           ; $79ee: $ec
	ld a, a                                          ; $79ef: $7f
	call $c8e0                                       ; $79f0: $cd $e0 $c8
	ld a, a                                          ; $79f3: $7f
	sub [hl]                                         ; $79f4: $96
	sbc c                                            ; $79f5: $99
	cpl                                              ; $79f6: $2f
	rra                                              ; $79f7: $1f
	rlca                                             ; $79f8: $07
	inc bc                                           ; $79f9: $03
	dec b                                            ; $79fa: $05
	ld a, [bc]                                       ; $79fb: $0a
	ld sp, hl                                        ; $79fc: $f9
	sbc b                                            ; $79fd: $98
	xor d                                            ; $79fe: $aa
	push af                                          ; $79ff: $f5
	ld [$ebd5], a                                    ; $7a00: $ea $d5 $eb
	rst SubAFromHL                                          ; $7a03: $d7
	ld a, a                                          ; $7a04: $7f
	ld l, d                                          ; $7a05: $6a
	ld [$f07b], a                                    ; $7a06: $ea $7b $f0
	sub l                                            ; $7a09: $95
	ld l, b                                          ; $7a0a: $68
	db $f4                                           ; $7a0b: $f4
	ld [$fad5], a                                    ; $7a0c: $ea $d5 $fa
	push af                                          ; $7a0f: $f5
	ld [$0304], a                                    ; $7a10: $ea $04 $03
	ld bc, $6e73                                     ; $7a13: $01 $73 $6e
	sub e                                            ; $7a16: $93
	ld d, b                                          ; $7a17: $50
	adc b                                            ; $7a18: $88
	ld d, b                                          ; $7a19: $50

jr_05f_7a1a:
	ret c                                            ; $7a1a: $d8

	or b                                             ; $7a1b: $b0
	ld e, b                                          ; $7a1c: $58
	ld d, b                                          ; $7a1d: $50
	jr c, jr_05f_7a28                                ; $7a1e: $38 $08

	ld [$2888], sp                                   ; $7a20: $08 $88 $28
	db $dd                                           ; $7a23: $dd
	ld [$459a], sp                                   ; $7a24: $08 $9a $45
	nop                                              ; $7a27: $00

jr_05f_7a28:
	add l                                            ; $7a28: $85
	add b                                            ; $7a29: $80
	add h                                            ; $7a2a: $84
	ld a, e                                          ; $7a2b: $7b
	ld sp, $80df                                     ; $7a2c: $31 $df $80
	ei                                               ; $7a2f: $fb
	sbc [hl]                                         ; $7a30: $9e
	ld d, c                                          ; $7a31: $51
	ld a, e                                          ; $7a32: $7b
	ld [hl], d                                       ; $7a33: $72
	ld a, a                                          ; $7a34: $7f
	inc sp                                           ; $7a35: $33
	ld a, a                                          ; $7a36: $7f
	db $fc                                           ; $7a37: $fc
	ldh [$c9], a                                     ; $7a38: $e0 $c9
	sbc l                                            ; $7a3a: $9d
	dec b                                            ; $7a3b: $05
	ld [$9cf3], sp                                   ; $7a3c: $08 $f3 $9c
	cp a                                             ; $7a3f: $bf
	ccf                                              ; $7a40: $3f
	ccf                                              ; $7a41: $3f
	sbc $1f                                          ; $7a42: $de $1f
	ld a, a                                          ; $7a44: $7f
	ld e, h                                          ; $7a45: $5c
	ld sp, hl                                        ; $7a46: $f9
	ld a, d                                          ; $7a47: $7a
	adc l                                            ; $7a48: $8d
	ld a, [hl]                                       ; $7a49: $7e
	add hl, hl                                       ; $7a4a: $29
	ld a, a                                          ; $7a4b: $7f
	ld [hl], b                                       ; $7a4c: $70
	sbc [hl]                                         ; $7a4d: $9e
	ld a, [$dff9]                                    ; $7a4e: $fa $f9 $df
	dec a                                            ; $7a51: $3d
	adc [hl]                                         ; $7a52: $8e
	add hl, sp                                       ; $7a53: $39
	rla                                              ; $7a54: $17
	dec e                                            ; $7a55: $1d
	dec e                                            ; $7a56: $1d
	dec de                                           ; $7a57: $1b
	dec e                                            ; $7a58: $1d
	ld [$0f1a], sp                                   ; $7a59: $08 $1a $0f
	ld [$0f0a], sp                                   ; $7a5c: $08 $0a $0f
	inc c                                            ; $7a5f: $0c
	ld a, [bc]                                       ; $7a60: $0a
	dec b                                            ; $7a61: $05
	nop                                              ; $7a62: $00
	dec d                                            ; $7a63: $15
	ld a, d                                          ; $7a64: $7a
	xor l                                            ; $7a65: $ad
	sbc [hl]                                         ; $7a66: $9e
	db $10                                           ; $7a67: $10
	ld h, d                                          ; $7a68: $62
	and b                                            ; $7a69: $a0
	sbc e                                            ; $7a6a: $9b
	ld d, b                                          ; $7a6b: $50
	inc b                                            ; $7a6c: $04
	ld b, b                                          ; $7a6d: $40
	db $10                                           ; $7a6e: $10
	ld [hl], e                                       ; $7a6f: $73
	ld l, l                                          ; $7a70: $6d
	ld sp, hl                                        ; $7a71: $f9
	sbc [hl]                                         ; $7a72: $9e
	ld b, b                                          ; $7a73: $40
	ld a, d                                          ; $7a74: $7a
	db $d3                                           ; $7a75: $d3
	ld a, d                                          ; $7a76: $7a
	adc [hl]                                         ; $7a77: $8e
	db $f4                                           ; $7a78: $f4
	ld a, a                                          ; $7a79: $7f
	db $ec                                           ; $7a7a: $ec
	ld e, [hl]                                       ; $7a7b: $5e
	ld [hl], b                                       ; $7a7c: $70
	sbc b                                            ; $7a7d: $98
	ld bc, $1703                                     ; $7a7e: $01 $03 $17
	dec hl                                           ; $7a81: $2b
	ld d, a                                          ; $7a82: $57
	xor l                                            ; $7a83: $ad
	ld e, e                                          ; $7a84: $5b
	ei                                               ; $7a85: $fb
	sbc h                                            ; $7a86: $9c
	ld [bc], a                                       ; $7a87: $02
	inc b                                            ; $7a88: $04
	nop                                              ; $7a89: $00
	ld a, d                                          ; $7a8a: $7a
	ldh a, [$7f]                                     ; $7a8b: $f0 $7f
	sub c                                            ; $7a8d: $91
	sbc l                                            ; $7a8e: $9d
	rst $38                                          ; $7a8f: $ff
	cp a                                             ; $7a90: $bf
	ld h, a                                          ; $7a91: $67
	sub $97                                          ; $7a92: $d6 $97
	adc a                                            ; $7a94: $8f
	ld e, $2d                                        ; $7a95: $1e $2d
	ld e, d                                          ; $7a97: $5a
	or l                                             ; $7a98: $b5
	ld a, d                                          ; $7a99: $7a
	push af                                          ; $7a9a: $f5
	db $eb                                           ; $7a9b: $eb
	ld h, e                                          ; $7a9c: $63
	ld [hl], b                                       ; $7a9d: $70
	sbc b                                            ; $7a9e: $98
	ld a, [$bef4]                                    ; $7a9f: $fa $f4 $be
	ld a, a                                          ; $7aa2: $7f
	rst $38                                          ; $7aa3: $ff
	rst $38                                          ; $7aa4: $ff
	cp $67                                           ; $7aa5: $fe $67
	jp nz, $189b                                     ; $7aa7: $c2 $9b $18

	rra                                              ; $7aaa: $1f
	rrca                                             ; $7aab: $0f
	inc e                                            ; $7aac: $1c
	ld a, d                                          ; $7aad: $7a
	sub $9d                                          ; $7aae: $d6 $9d
	jr nz, jr_05f_7ab2                               ; $7ab0: $20 $00

jr_05f_7ab2:
	ld a, e                                          ; $7ab2: $7b
	db $fd                                           ; $7ab3: $fd
	sbc c                                            ; $7ab4: $99
	jr nz, jr_05f_7af7                               ; $7ab5: $20 $40

	and b                                            ; $7ab7: $a0
	ld b, b                                          ; $7ab8: $40
	nop                                              ; $7ab9: $00
	dec b                                            ; $7aba: $05
	ld a, e                                          ; $7abb: $7b
	cp $9e                                           ; $7abc: $fe $9e
	add c                                            ; $7abe: $81
	ld h, [hl]                                       ; $7abf: $66
	ldh [c], a                                       ; $7ac0: $e2
	cp $77                                           ; $7ac1: $fe $77
	add h                                            ; $7ac3: $84
	ld a, a                                          ; $7ac4: $7f
	ld [hl], b                                       ; $7ac5: $70
	ld a, [hl]                                       ; $7ac6: $7e
	reti                                             ; $7ac7: $d9


	ld sp, hl                                        ; $7ac8: $f9
	halt                                             ; $7ac9: $76
	ld b, e                                          ; $7aca: $43
	sbc [hl]                                         ; $7acb: $9e
	xor d                                            ; $7acc: $aa
	ld a, e                                          ; $7acd: $7b
	cp $fa                                           ; $7ace: $fe $fa
	sbc $03                                          ; $7ad0: $de $03
	db $dd                                           ; $7ad2: $dd
	rlca                                             ; $7ad3: $07
	ld h, e                                          ; $7ad4: $63
	ldh a, [$7b]                                     ; $7ad5: $f0 $7b
	add c                                            ; $7ad7: $81
	halt                                             ; $7ad8: $76
	ld l, l                                          ; $7ad9: $6d
	sbc d                                            ; $7ada: $9a
	xor d                                            ; $7adb: $aa
	ld a, [bc]                                       ; $7adc: $0a
	dec d                                            ; $7add: $15
	ld a, [hl+]                                      ; $7ade: $2a
	ld d, l                                          ; $7adf: $55
	ld [hl], a                                       ; $7ae0: $77
	db $fc                                           ; $7ae1: $fc
	sub [hl]                                         ; $7ae2: $96
	ld e, a                                          ; $7ae3: $5f
	cp a                                             ; $7ae4: $bf
	ld e, a                                          ; $7ae5: $5f
	cp a                                             ; $7ae6: $bf
	ld a, a                                          ; $7ae7: $7f
	rst $38                                          ; $7ae8: $ff
	ld a, a                                          ; $7ae9: $7f
	rst $38                                          ; $7aea: $ff
	and b                                            ; $7aeb: $a0
	ld a, e                                          ; $7aec: $7b
	and h                                            ; $7aed: $a4
	ld a, a                                          ; $7aee: $7f
	xor e                                            ; $7aef: $ab
	ld a, a                                          ; $7af0: $7f
	cp $9d                                           ; $7af1: $fe $9d
	rst FarCall                                          ; $7af3: $f7
	rst AddAOntoHL                                          ; $7af4: $ef
	db $db                                           ; $7af5: $db
	rst $38                                          ; $7af6: $ff

jr_05f_7af7:
	ld e, a                                          ; $7af7: $5f
	ld [hl], b                                       ; $7af8: $70
	ld a, a                                          ; $7af9: $7f
	ld [hl], h                                       ; $7afa: $74

jr_05f_7afb:
	ld a, [hl]                                       ; $7afb: $7e
	call c, $fa7f                                    ; $7afc: $dc $7f $fa

Call_05f_7aff:
Jump_05f_7aff:
	adc d                                            ; $7aff: $8a
	ld [bc], a                                       ; $7b00: $02
	dec b                                            ; $7b01: $05
	nop                                              ; $7b02: $00
	ld bc, $0102                                     ; $7b03: $01 $02 $01
	ld [bc], a                                       ; $7b06: $02
	dec b                                            ; $7b07: $05
	db $10                                           ; $7b08: $10
	db $10                                           ; $7b09: $10
	ld [hl], b                                       ; $7b0a: $70
	or b                                             ; $7b0b: $b0
	jr z, @+$42                                      ; $7b0c: $28 $40

	nop                                              ; $7b0e: $00
	ret nz                                           ; $7b0f: $c0

	add b                                            ; $7b10: $80
	ld b, b                                          ; $7b11: $40
	add b                                            ; $7b12: $80
	ld b, b                                          ; $7b13: $40
	ret nz                                           ; $7b14: $c0

	ld a, e                                          ; $7b15: $7b
	ld a, c                                          ; $7b16: $79
	rst SubAFromDE                                          ; $7b17: $df
	ld b, b                                          ; $7b18: $40
	rst SubAFromDE                                          ; $7b19: $df
	jr nz, jr_05f_7afb                               ; $7b1a: $20 $df

	ld [$049d], sp                                   ; $7b1c: $08 $9d $04
	ld [bc], a                                       ; $7b1f: $02
	ld h, e                                          ; $7b20: $63
	sub b                                            ; $7b21: $90
	sbc c                                            ; $7b22: $99
	ld b, $07                                        ; $7b23: $06 $07
	ld c, $0d                                        ; $7b25: $0e $0d
	ld c, $0f                                        ; $7b27: $0e $0f
	ld h, h                                          ; $7b29: $64
	pop af                                           ; $7b2a: $f1
	ld a, a                                          ; $7b2b: $7f
	ldh [$98], a                                     ; $7b2c: $e0 $98
	xor d                                            ; $7b2e: $aa
	ld d, h                                          ; $7b2f: $54
	xor d                                            ; $7b30: $aa
	ld d, l                                          ; $7b31: $55
	ei                                               ; $7b32: $fb
	rst SubAFromDE                                          ; $7b33: $df
	xor a                                            ; $7b34: $af
	ld h, d                                          ; $7b35: $62
	ld [hl], b                                       ; $7b36: $70
	sbc c                                            ; $7b37: $99
	xor d                                            ; $7b38: $aa
	dec b                                            ; $7b39: $05
	xor d                                            ; $7b3a: $aa
	push de                                          ; $7b3b: $d5
	ld a, [$63fd]                                    ; $7b3c: $fa $fd $63
	and b                                            ; $7b3f: $a0
	sbc l                                            ; $7b40: $9d
	push de                                          ; $7b41: $d5
	xor e                                            ; $7b42: $ab
	ld l, a                                          ; $7b43: $6f
	adc [hl]                                         ; $7b44: $8e
	sbc l                                            ; $7b45: $9d
	ld a, [hl+]                                      ; $7b46: $2a
	ld d, h                                          ; $7b47: $54
	ld a, c                                          ; $7b48: $79
	ld a, b                                          ; $7b49: $78
	ld [hl], h                                       ; $7b4a: $74
	ret c                                            ; $7b4b: $d8

	jp c, $f9ff                                      ; $7b4c: $da $ff $f9

	db $db                                           ; $7b4f: $db
	rst $38                                          ; $7b50: $ff
	ld a, a                                          ; $7b51: $7f
	add b                                            ; $7b52: $80
	ld l, d                                          ; $7b53: $6a
	ret nz                                           ; $7b54: $c0

	adc [hl]                                         ; $7b55: $8e
	dec b                                            ; $7b56: $05
	db $f4                                           ; $7b57: $f4
	jp hl                                            ; $7b58: $e9


	ldh a, [c]                                       ; $7b59: $f2
	ldh [$d0], a                                     ; $7b5a: $e0 $d0
	and b                                            ; $7b5c: $a0
	ld b, e                                          ; $7b5d: $43
	add e                                            ; $7b5e: $83
	dec bc                                           ; $7b5f: $0b
	ld d, $0c                                        ; $7b60: $16 $0c
	inc e                                            ; $7b62: $1c
	jr z, jr_05f_7bbd                                ; $7b63: $28 $58

	or b                                             ; $7b65: $b0
	ld h, b                                          ; $7b66: $60
	ld a, e                                          ; $7b67: $7b
	sbc [hl]                                         ; $7b68: $9e
	sbc e                                            ; $7b69: $9b
	jr nz, jr_05f_7b7c                               ; $7b6a: $20 $10

	inc c                                            ; $7b6c: $0c
	ld [bc], a                                       ; $7b6d: $02
	ld h, d                                          ; $7b6e: $62
	sub b                                            ; $7b6f: $90
	sbc b                                            ; $7b70: $98
	ld e, a                                          ; $7b71: $5f
	xor e                                            ; $7b72: $ab
	ld d, a                                          ; $7b73: $57
	xor d                                            ; $7b74: $aa
	ld d, l                                          ; $7b75: $55
	ld a, [bc]                                       ; $7b76: $0a
	dec b                                            ; $7b77: $05
	ld h, d                                          ; $7b78: $62
	ldh [$de], a                                     ; $7b79: $e0 $de
	rst $38                                          ; $7b7b: $ff

jr_05f_7b7c:
	sbc d                                            ; $7b7c: $9a
	xor a                                            ; $7b7d: $af
	ld e, l                                          ; $7b7e: $5d
	xor d                                            ; $7b7f: $aa
	ld d, l                                          ; $7b80: $55
	dec hl                                           ; $7b81: $2b
	ld d, a                                          ; $7b82: $57
	or b                                             ; $7b83: $b0
	ld a, a                                          ; $7b84: $7f
	ld [de], a                                       ; $7b85: $12
	sbc l                                            ; $7b86: $9d
	push af                                          ; $7b87: $f5
	db $fd                                           ; $7b88: $fd
	ei                                               ; $7b89: $fb
	ld a, l                                          ; $7b8a: $7d
	ld e, c                                          ; $7b8b: $59
	ld a, e                                          ; $7b8c: $7b
	and h                                            ; $7b8d: $a4
	sbc e                                            ; $7b8e: $9b
	ld [$a854], a                                    ; $7b8f: $ea $54 $a8
	ld b, b                                          ; $7b92: $40
	ld [hl], a                                       ; $7b93: $77
	and h                                            ; $7b94: $a4
	sub [hl]                                         ; $7b95: $96
	dec d                                            ; $7b96: $15
	xor e                                            ; $7b97: $ab
	ld d, a                                          ; $7b98: $57
	cp d                                             ; $7b99: $ba
	ld d, l                                          ; $7b9a: $55
	push de                                          ; $7b9b: $d5
	xor d                                            ; $7b9c: $aa
	ld d, h                                          ; $7b9d: $54
	xor b                                            ; $7b9e: $a8
	ld [hl], l                                       ; $7b9f: $75
	ld [bc], a                                       ; $7ba0: $02
	ld a, [hl]                                       ; $7ba1: $7e
	and $93                                          ; $7ba2: $e6 $93
	xor e                                            ; $7ba4: $ab
	ld d, [hl]                                       ; $7ba5: $56
	xor h                                            ; $7ba6: $ac
	ld [hl], b                                       ; $7ba7: $70
	ret nz                                           ; $7ba8: $c0

	nop                                              ; $7ba9: $00
	jr nz, jr_05f_7bcc                               ; $7baa: $20 $20

	ld b, b                                          ; $7bac: $40
	jr jr_05f_7bb7                                   ; $7bad: $18 $08

	jr jr_05f_7c29                                   ; $7baf: $18 $78

	jr z, jr_05f_7c2b                                ; $7bb1: $28 $78

	ld [hl], d                                       ; $7bb3: $72
	ld a, l                                          ; $7bb4: $7d
	ld hl, sp-$01                                    ; $7bb5: $f8 $ff

jr_05f_7bb7:
	sbc [hl]                                         ; $7bb7: $9e
	ld h, b                                          ; $7bb8: $60
	ld e, l                                          ; $7bb9: $5d
	push af                                          ; $7bba: $f5
	db $fc                                           ; $7bbb: $fc
	rst SubAFromDE                                          ; $7bbc: $df

jr_05f_7bbd:
	rlca                                             ; $7bbd: $07
	sbc [hl]                                         ; $7bbe: $9e

jr_05f_7bbf:
	ld c, c                                          ; $7bbf: $49
	db $f4                                           ; $7bc0: $f4
	sbc h                                            ; $7bc1: $9c
	ld d, b                                          ; $7bc2: $50
	and b                                            ; $7bc3: $a0
	dec b                                            ; $7bc4: $05
	ld l, l                                          ; $7bc5: $6d
	jr jr_05f_7c2e                                   ; $7bc6: $18 $66

	ld a, l                                          ; $7bc8: $7d
	sbc [hl]                                         ; $7bc9: $9e
	and b                                            ; $7bca: $a0
	ei                                               ; $7bcb: $fb

jr_05f_7bcc:
	ld [hl], e                                       ; $7bcc: $73
	sbc l                                            ; $7bcd: $9d
	cp $1f                                           ; $7bce: $fe $1f
	nop                                              ; $7bd0: $00
	sbc c                                            ; $7bd1: $99
	inc b                                            ; $7bd2: $04
	inc [hl]                                         ; $7bd3: $34
	inc sp                                           ; $7bd4: $33
	jr nc, jr_05f_7bd7                               ; $7bd5: $30 $00

jr_05f_7bd7:
	ld [hl], h                                       ; $7bd7: $74
	sbc $33                                          ; $7bd8: $de $33
	sbc l                                            ; $7bda: $9d
	nop                                              ; $7bdb: $00
	ld b, e                                          ; $7bdc: $43
	sbc $33                                          ; $7bdd: $de $33
	sbc [hl]                                         ; $7bdf: $9e
	jr nc, jr_05f_7bbf                               ; $7be0: $30 $dd

	inc sp                                           ; $7be2: $33
	ld c, e                                          ; $7be3: $4b
	ei                                               ; $7be4: $fb
	sbc l                                            ; $7be5: $9d
	nop                                              ; $7be6: $00
	inc bc                                           ; $7be7: $03
	ld [hl], a                                       ; $7be8: $77
	ei                                               ; $7be9: $fb
	sbc [hl]                                         ; $7bea: $9e
	nop                                              ; $7beb: $00
	ld [hl], a                                       ; $7bec: $77
	db $fc                                           ; $7bed: $fc
	ld a, d                                          ; $7bee: $7a
	nop                                              ; $7bef: $00
	rst SubAFromDE                                          ; $7bf0: $df
	rst $38                                          ; $7bf1: $ff
	sbc $80                                          ; $7bf2: $de $80
	sbc [hl]                                         ; $7bf4: $9e
	cp a                                             ; $7bf5: $bf
	ld e, a                                          ; $7bf6: $5f
	cp $df                                           ; $7bf7: $fe $df
	rst $38                                          ; $7bf9: $ff
	cp $7f                                           ; $7bfa: $fe $7f
	db $fc                                           ; $7bfc: $fc
	sub [hl]                                         ; $7bfd: $96
	rst $38                                          ; $7bfe: $ff
	ld bc, $03fe                                     ; $7bff: $01 $fe $03
	db $fc                                           ; $7c02: $fc
	rlca                                             ; $7c03: $07
	ld hl, sp+$0f                                    ; $7c04: $f8 $0f
	ldh a, [rPCM34]                                  ; $7c06: $f0 $77
	ldh a, [$9d]                                     ; $7c08: $f0 $9d
	ld a, a                                          ; $7c0a: $7f
	add b                                            ; $7c0b: $80
	ld a, e                                          ; $7c0c: $7b
	rst AddAOntoHL                                          ; $7c0d: $ef
	ld h, a                                          ; $7c0e: $67
	cp $7f                                           ; $7c0f: $fe $7f
	and $9d                                          ; $7c11: $e6 $9d
	ld bc, $5bfd                                     ; $7c13: $01 $fd $5b
	cp $67                                           ; $7c16: $fe $67
	ret z                                            ; $7c18: $c8

	sub e                                            ; $7c19: $93
	add c                                            ; $7c1a: $81
	cp [hl]                                          ; $7c1b: $be
	add e                                            ; $7c1c: $83
	cp h                                             ; $7c1d: $bc
	add a                                            ; $7c1e: $87
	cp b                                             ; $7c1f: $b8
	adc a                                            ; $7c20: $8f
	or b                                             ; $7c21: $b0
	rra                                              ; $7c22: $1f
	ldh [$3f], a                                     ; $7c23: $e0 $3f
	ret nz                                           ; $7c25: $c0

	ld d, e                                          ; $7c26: $53
	ret nc                                           ; $7c27: $d0

	ld c, e                                          ; $7c28: $4b

jr_05f_7c29:
	cp $57                                           ; $7c29: $fe $57

jr_05f_7c2b:
	call nz, $fe7f                                   ; $7c2b: $c4 $7f $fe

jr_05f_7c2e:
	sbc e                                            ; $7c2e: $9b
	ld sp, hl                                        ; $7c2f: $f9
	dec b                                            ; $7c30: $05
	sbc a                                            ; $7c31: $9f
	and b                                            ; $7c32: $a0
	ld e, e                                          ; $7c33: $5b
	add e                                            ; $7c34: $83
	ld a, e                                          ; $7c35: $7b
	cp $1f                                           ; $7c36: $fe $1f
	add $91                                          ; $7c38: $c6 $91
	cp $01                                           ; $7c3a: $fe $01
	db $fc                                           ; $7c3c: $fc
	inc bc                                           ; $7c3d: $03
	ld hl, sp+$07                                    ; $7c3e: $f8 $07
	pop af                                           ; $7c40: $f1
	dec c                                            ; $7c41: $0d
	pop hl                                           ; $7c42: $e1
	dec e                                            ; $7c43: $1d
	pop bc                                           ; $7c44: $c1
	dec a                                            ; $7c45: $3d
	add c                                            ; $7c46: $81
	ld a, l                                          ; $7c47: $7d
	ld h, a                                          ; $7c48: $67
	cp l                                             ; $7c49: $bd
	ld d, a                                          ; $7c4a: $57
	call nz, $80df                                   ; $7c4b: $c4 $df $80
	sbc $ff                                          ; $7c4e: $de $ff
	ld e, e                                          ; $7c50: $5b
	ret nc                                           ; $7c51: $d0

	ld a, e                                          ; $7c52: $7b
	scf                                              ; $7c53: $37
	sub [hl]                                         ; $7c54: $96
	rst $38                                          ; $7c55: $ff
	ldh a, [rIF]                                     ; $7c56: $f0 $0f
	ldh [$1f], a                                     ; $7c58: $e0 $1f
	ret nz                                           ; $7c5a: $c0

	ccf                                              ; $7c5b: $3f
	add b                                            ; $7c5c: $80
	ld a, a                                          ; $7c5d: $7f
	ld [hl], e                                       ; $7c5e: $73
	db $ed                                           ; $7c5f: $ed
	ld [hl], a                                       ; $7c60: $77
	ld b, d                                          ; $7c61: $42
	ld d, a                                          ; $7c62: $57
	add c                                            ; $7c63: $81
	sbc h                                            ; $7c64: $9c
	ld bc, rIE                                     ; $7c65: $01 $ff $ff
	inc b                                            ; $7c68: $04
	nop                                              ; $7c69: $00
	reti                                             ; $7c6a: $d9


	ld [hl+], a                                      ; $7c6b: $22
	add l                                            ; $7c6c: $85
	nop                                              ; $7c6d: $00
	adc d                                            ; $7c6e: $8a
	rst SubAFromDE                                          ; $7c6f: $df
	cp h                                             ; $7c70: $bc
	cp e                                             ; $7c71: $bb
	and $ff                                          ; $7c72: $e6 $ff
	ret nz                                           ; $7c74: $c0

	rst $38                                          ; $7c75: $ff
	add b                                            ; $7c76: $80
	rst $38                                          ; $7c77: $ff
	add b                                            ; $7c78: $80
	ei                                               ; $7c79: $fb
	add a                                            ; $7c7a: $87
	or $cf                                           ; $7c7b: $f6 $cf
	cp $ca                                           ; $7c7d: $fe $ca
	db $fd                                           ; $7c7f: $fd
	inc bc                                           ; $7c80: $03
	cp $07                                           ; $7c81: $fe $07
	rst $38                                          ; $7c83: $ff
	cp [hl]                                          ; $7c84: $be
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	ld h, a                                          ; $7c87: $67
	sub a                                            ; $7c88: $97
	add b                                            ; $7c89: $80
	add e                                            ; $7c8a: $83
	ret nz                                           ; $7c8b: $c0

	ld b, c                                          ; $7c8c: $41
	ld b, b                                          ; $7c8d: $40
	cp a                                             ; $7c8e: $bf
	ret nz                                           ; $7c8f: $c0

	ld hl, sp-$44                                    ; $7c90: $f8 $bc
	ldh [$c0], a                                     ; $7c92: $e0 $c0
	db $fc                                           ; $7c94: $fc
	ret nz                                           ; $7c95: $c0

	sbc [hl]                                         ; $7c96: $9e
	add b                                            ; $7c97: $80
	ld a, $b8                                        ; $7c98: $3e $b8
	ld [hl], b                                       ; $7c9a: $70
	ld a, [$f3aa]                                    ; $7c9b: $fa $aa $f3
	and e                                            ; $7c9e: $a3
	ld a, [$7fa2]                                    ; $7c9f: $fa $a2 $7f
	pop de                                           ; $7ca2: $d1
	ld a, [hl]                                       ; $7ca3: $7e
	ret nc                                           ; $7ca4: $d0

jr_05f_7ca5:
	ccf                                              ; $7ca5: $3f
	ldh a, [$97]                                     ; $7ca6: $f0 $97
	ld hl, sp+$7f                                    ; $7ca8: $f8 $7f
	ld l, b                                          ; $7caa: $68
	ldh [$c0], a                                     ; $7cab: $e0 $c0
	ld h, b                                          ; $7cad: $60
	ret nz                                           ; $7cae: $c0

	ldh [rLCDC], a                                   ; $7caf: $e0 $40
	ldh [$a0], a                                     ; $7cb1: $e0 $a0
	ld h, b                                          ; $7cb3: $60
	jr nz, @+$74                                     ; $7cb4: $20 $72

	ld hl, $ff9a                                     ; $7cb6: $21 $9a $ff
	ld b, $f8                                        ; $7cb9: $06 $f8
	db $10                                           ; $7cbb: $10
	ldh [$bd], a                                     ; $7cbc: $e0 $bd
	ld b, b                                          ; $7cbe: $40
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	ld [hl], b                                       ; $7cc1: $70
	sbc h                                            ; $7cc2: $9c
	jr nc, jr_05f_7ca5                               ; $7cc3: $30 $e0

	ret nz                                           ; $7cc5: $c0

	db $fd                                           ; $7cc6: $fd
	add b                                            ; $7cc7: $80
	adc e                                            ; $7cc8: $8b
	adc h                                            ; $7cc9: $8c
	rst GetHLinHL                                          ; $7cca: $cf
	add h                                            ; $7ccb: $84
	ld b, l                                          ; $7ccc: $45
	ld b, [hl]                                       ; $7ccd: $46
	ld h, [hl]                                       ; $7cce: $66
	ld b, e                                          ; $7ccf: $43
	inc hl                                           ; $7cd0: $23
	ld hl, $e6ff                                     ; $7cd1: $21 $ff $e6
	dec de                                           ; $7cd4: $1b
	dec de                                           ; $7cd5: $1b
	rst $38                                          ; $7cd6: $ff
	ld h, [hl]                                       ; $7cd7: $66
	cp b                                             ; $7cd8: $b8
	ld h, b                                          ; $7cd9: $60
	ld hl, sp+$06                                    ; $7cda: $f8 $06
	ld a, [$fc04]                                    ; $7cdc: $fa $04 $fc
	nop                                              ; $7cdf: $00
	ld a, h                                          ; $7ce0: $7c

jr_05f_7ce1:
	add b                                            ; $7ce1: $80
	cp h                                             ; $7ce2: $bc
	ret nz                                           ; $7ce3: $c0

	sbc $60                                          ; $7ce4: $de $60
	cp $9e                                           ; $7ce6: $fe $9e
	jr nc, jr_05f_7ce1                               ; $7ce8: $30 $f7

	rst SubAFromDE                                          ; $7cea: $df
	ld bc, $029b                                     ; $7ceb: $01 $9b $02
	inc bc                                           ; $7cee: $03
	inc b                                            ; $7cef: $04
	rlca                                             ; $7cf0: $07
	rlca                                             ; $7cf1: $07
	nop                                              ; $7cf2: $00
	sbc l                                            ; $7cf3: $9d
	ld h, [hl]                                       ; $7cf4: $66
	ld h, b                                          ; $7cf5: $60
	ld [hl], a                                       ; $7cf6: $77
	cp $8a                                           ; $7cf7: $fe $8a
	nop                                              ; $7cf9: $00
	adc c                                            ; $7cfa: $89
	rst SubAFromDE                                          ; $7cfb: $df

Call_05f_7cfc:
	cp h                                             ; $7cfc: $bc
	cp e                                             ; $7cfd: $bb
	and $ff                                          ; $7cfe: $e6 $ff
	ret nz                                           ; $7d00: $c0

	rst $38                                          ; $7d01: $ff
	add b                                            ; $7d02: $80
	rst $38                                          ; $7d03: $ff
	add b                                            ; $7d04: $80
	ei                                               ; $7d05: $fb
	add a                                            ; $7d06: $87
	or $cf                                           ; $7d07: $f6 $cf
	cp $ca                                           ; $7d09: $fe $ca
	db $fd                                           ; $7d0b: $fd
	inc bc                                           ; $7d0c: $03
	cp $07                                           ; $7d0d: $fe $07
	rst $38                                          ; $7d0f: $ff
	nop                                              ; $7d10: $00
	ld [hl], a                                       ; $7d11: $77
	cp $90                                           ; $7d12: $fe $90
	ld h, a                                          ; $7d14: $67
	add b                                            ; $7d15: $80
	add e                                            ; $7d16: $83
	ret nz                                           ; $7d17: $c0

	ld b, c                                          ; $7d18: $41
	ld b, b                                          ; $7d19: $40
	cp a                                             ; $7d1a: $bf
	ret nz                                           ; $7d1b: $c0

	ld hl, sp+$00                                    ; $7d1c: $f8 $00
	ldh [rP1], a                                     ; $7d1e: $e0 $00
	ret nz                                           ; $7d20: $c0

	nop                                              ; $7d21: $00
	db $fc                                           ; $7d22: $fc
	ld a, e                                          ; $7d23: $7b
	db $fc                                           ; $7d24: $fc
	add b                                            ; $7d25: $80
	sbc [hl]                                         ; $7d26: $9e
	ld a, $b8                                        ; $7d27: $3e $b8
	ld [hl], b                                       ; $7d29: $70
	ld a, [$f3aa]                                    ; $7d2a: $fa $aa $f3
	and e                                            ; $7d2d: $a3
	ld a, [$7fa2]                                    ; $7d2e: $fa $a2 $7f
	pop de                                           ; $7d31: $d1
	ld a, [hl]                                       ; $7d32: $7e
	ret nc                                           ; $7d33: $d0

	ccf                                              ; $7d34: $3f
	ldh a, [$97]                                     ; $7d35: $f0 $97
	ld hl, sp+$7f                                    ; $7d37: $f8 $7f
	ld l, b                                          ; $7d39: $68
	ldh [$c0], a                                     ; $7d3a: $e0 $c0
	ld h, b                                          ; $7d3c: $60
	ret nz                                           ; $7d3d: $c0

	ldh [rLCDC], a                                   ; $7d3e: $e0 $40
	ldh [$a0], a                                     ; $7d40: $e0 $a0
	ld h, b                                          ; $7d42: $60

jr_05f_7d43:
	jr nz, @+$74                                     ; $7d43: $20 $72

	sub a                                            ; $7d45: $97
	ld hl, $06fe                                     ; $7d46: $21 $fe $06
	pop af                                           ; $7d49: $f1
	ld de, $00e0                                     ; $7d4a: $11 $e0 $00
	ld b, b                                          ; $7d4d: $40
	db $fc                                           ; $7d4e: $fc
	add b                                            ; $7d4f: $80
	ld d, b                                          ; $7d50: $50
	jr nc, jr_05f_7d43                               ; $7d51: $30 $f0

	ldh [$60], a                                     ; $7d53: $e0 $60
	ld b, b                                          ; $7d55: $40
	ret nz                                           ; $7d56: $c0

	add b                                            ; $7d57: $80
	adc e                                            ; $7d58: $8b
	adc h                                            ; $7d59: $8c
	rst GetHLinHL                                          ; $7d5a: $cf
	add h                                            ; $7d5b: $84
	ld b, l                                          ; $7d5c: $45
	ld b, [hl]                                       ; $7d5d: $46
	ld h, [hl]                                       ; $7d5e: $66
	ld b, e                                          ; $7d5f: $43
	inc hl                                           ; $7d60: $23
	ld hl, $e6ff                                     ; $7d61: $21 $ff $e6
	dec de                                           ; $7d64: $1b
	dec de                                           ; $7d65: $1b
	rst $38                                          ; $7d66: $ff
	ld h, [hl]                                       ; $7d67: $66
	and a                                            ; $7d68: $a7
	ld h, a                                          ; $7d69: $67
	rst $38                                          ; $7d6a: $ff
	ld e, $f8                                        ; $7d6b: $1e $f8
	nop                                              ; $7d6d: $00
	ld sp, hl                                        ; $7d6e: $f9
	sub l                                            ; $7d6f: $95

jr_05f_7d70:
	ld b, $7f                                        ; $7d70: $06 $7f
	add b                                            ; $7d72: $80
	cp [hl]                                          ; $7d73: $be
	ret nz                                           ; $7d74: $c0

	sbc $60                                          ; $7d75: $de $60
	cp $30                                           ; $7d77: $fe $30
	add b                                            ; $7d79: $80
	ld hl, sp-$21                                    ; $7d7a: $f8 $df
	ld bc, $029b                                     ; $7d7c: $01 $9b $02
	inc bc                                           ; $7d7f: $03
	inc b                                            ; $7d80: $04
	rlca                                             ; $7d81: $07
	rlca                                             ; $7d82: $07
	nop                                              ; $7d83: $00
	sbc l                                            ; $7d84: $9d
	ld h, [hl]                                       ; $7d85: $66
	ld h, b                                          ; $7d86: $60
	ld [hl], a                                       ; $7d87: $77
	cp $8d                                           ; $7d88: $fe $8d
	add b                                            ; $7d8a: $80
	sbc l                                            ; $7d8b: $9d
	rst SubAFromDE                                          ; $7d8c: $df
	cp e                                             ; $7d8d: $bb
	sbc $ff                                          ; $7d8e: $de $ff
	sub d                                            ; $7d90: $92
	ei                                               ; $7d91: $fb
	or $fe                                           ; $7d92: $f6 $fe
	cp h                                             ; $7d94: $bc
	and $c0                                          ; $7d95: $e6 $c0
	add b                                            ; $7d97: $80
	add b                                            ; $7d98: $80
	add a                                            ; $7d99: $87
	rst GetHLinHL                                          ; $7d9a: $cf
	jp z, $fefd                                      ; $7d9b: $ca $fd $fe

	sbc $ff                                          ; $7d9e: $de $ff
	sbc d                                            ; $7da0: $9a
	ld h, a                                          ; $7da1: $67
	add e                                            ; $7da2: $83
	ld b, c                                          ; $7da3: $41
	inc bc                                           ; $7da4: $03
	rlca                                             ; $7da5: $07
	cp $93                                           ; $7da6: $fe $93
	add b                                            ; $7da8: $80
	ret nz                                           ; $7da9: $c0

	ld b, b                                          ; $7daa: $40
	cp a                                             ; $7dab: $bf
	ld hl, sp-$20                                    ; $7dac: $f8 $e0
	ret nz                                           ; $7dae: $c0

	db $fc                                           ; $7daf: $fc
	ret nz                                           ; $7db0: $c0

	sbc [hl]                                         ; $7db1: $9e
	cp b                                             ; $7db2: $b8
	ret nz                                           ; $7db3: $c0

	db $fc                                           ; $7db4: $fc
	add b                                            ; $7db5: $80
	ld a, $70                                        ; $7db6: $3e $70
	ld a, [$faf3]                                    ; $7db8: $fa $f3 $fa
	ld a, a                                          ; $7dbb: $7f
	ld a, [hl]                                       ; $7dbc: $7e
	ccf                                              ; $7dbd: $3f
	sub a                                            ; $7dbe: $97
	ld a, a                                          ; $7dbf: $7f
	xor d                                            ; $7dc0: $aa
	and e                                            ; $7dc1: $a3
	and d                                            ; $7dc2: $a2
	pop de                                           ; $7dc3: $d1
	ret nc                                           ; $7dc4: $d0

	ldh a, [$f8]                                     ; $7dc5: $f0 $f8
	ld l, b                                          ; $7dc7: $68
	ldh [$60], a                                     ; $7dc8: $e0 $60
	ldh [$e0], a                                     ; $7dca: $e0 $e0
	ld h, b                                          ; $7dcc: $60
	ld [hl], d                                       ; $7dcd: $72
	cp $f0                                           ; $7dce: $fe $f0
	ret nz                                           ; $7dd0: $c0

	ret nz                                           ; $7dd1: $c0

	ld b, b                                          ; $7dd2: $40
	and b                                            ; $7dd3: $a0
	jr nz, jr_05f_7d70                               ; $7dd4: $20 $9a

	ld hl, $1006                                     ; $7dd6: $21 $06 $10
	ldh [rLCDC], a                                   ; $7dd9: $e0 $40
	cp $9c                                           ; $7ddb: $fe $9c
	ldh [rAUD1SWEEP], a                              ; $7ddd: $e0 $10
	ldh a, [$fc]                                     ; $7ddf: $f0 $fc
	add b                                            ; $7de1: $80
	ldh a, [rAUD1SWEEP]                              ; $7de2: $f0 $10
	ld [hl], b                                       ; $7de4: $70
	adc e                                            ; $7de5: $8b
	rst GetHLinHL                                          ; $7de6: $cf
	ld b, l                                          ; $7de7: $45
	ld h, [hl]                                       ; $7de8: $66
	inc hl                                           ; $7de9: $23
	rst $38                                          ; $7dea: $ff
	dec de                                           ; $7deb: $1b
	rst $38                                          ; $7dec: $ff
	adc h                                            ; $7ded: $8c
	add h                                            ; $7dee: $84
	ld b, [hl]                                       ; $7def: $46
	ld b, e                                          ; $7df0: $43
	ld hl, $1be6                                     ; $7df1: $21 $e6 $1b
	ld h, [hl]                                       ; $7df4: $66
	and a                                            ; $7df5: $a7
	rst $38                                          ; $7df6: $ff
	cp $fd                                           ; $7df7: $fe $fd
	ld a, h                                          ; $7df9: $7c
	cp a                                             ; $7dfa: $bf
	call c, Call_05f_63fc                            ; $7dfb: $dc $fc $63
	cpl                                              ; $7dfe: $2f

Jump_05f_7dff:
	rra                                              ; $7dff: $1f
	ld c, $8b                                        ; $7e00: $0e $8b
	add a                                            ; $7e02: $87
	jp $3360                                         ; $7e03: $c3 $60 $33


	ldh a, [$a0]                                     ; $7e06: $f0 $a0
	or b                                             ; $7e08: $b0
	ld h, b                                          ; $7e09: $60
	ret nz                                           ; $7e0a: $c0

	add c                                            ; $7e0b: $81
	ld [bc], a                                       ; $7e0c: $02
	add h                                            ; $7e0d: $84
	ldh a, [$f0]                                     ; $7e0e: $f0 $f0
	ld h, b                                          ; $7e10: $60
	ret nz                                           ; $7e11: $c0

	add b                                            ; $7e12: $80
	ld bc, $0703                                     ; $7e13: $01 $03 $07
	rlca                                             ; $7e16: $07
	nop                                              ; $7e17: $00
	sbc l                                            ; $7e18: $9d
	ld h, [hl]                                       ; $7e19: $66
	ld h, b                                          ; $7e1a: $60
	ld [hl], a                                       ; $7e1b: $77
	cp $80                                           ; $7e1c: $fe $80
	add b                                            ; $7e1e: $80
	adc l                                            ; $7e1f: $8d
	rst AddAOntoHL                                          ; $7e20: $ef
	db $db                                           ; $7e21: $db
	cp a                                             ; $7e22: $bf
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	ei                                               ; $7e25: $fb
	db $f4                                           ; $7e26: $f4
	rst $38                                          ; $7e27: $ff
	sbc h                                            ; $7e28: $9c
	or [hl]                                          ; $7e29: $b6
	ldh [$c0], a                                     ; $7e2a: $e0 $c0
	add b                                            ; $7e2c: $80
	add a                                            ; $7e2d: $87
	call z, $fdcf                                    ; $7e2e: $cc $cf $fd
	cp $de                                           ; $7e31: $fe $de
	rst $38                                          ; $7e33: $ff
	sbc d                                            ; $7e34: $9a
	ld h, a                                          ; $7e35: $67
	jp $03c1                                         ; $7e36: $c3 $c1 $03


	rlca                                             ; $7e39: $07
	cp $df                                           ; $7e3a: $fe $df
	add b                                            ; $7e3c: $80
	sub l                                            ; $7e3d: $95
	ret nz                                           ; $7e3e: $c0

	cp a                                             ; $7e3f: $bf
	ld hl, sp-$20                                    ; $7e40: $f8 $e0
	ret nz                                           ; $7e42: $c0

	db $fc                                           ; $7e43: $fc
	ret nz                                           ; $7e44: $c0

	sbc [hl]                                         ; $7e45: $9e
	cp b                                             ; $7e46: $b8
	ret nz                                           ; $7e47: $c0

	db $fc                                           ; $7e48: $fc
	add a                                            ; $7e49: $87
	ld a, $70                                        ; $7e4a: $3e $70
	cp $f3                                           ; $7e4c: $fe $f3
	ld hl, sp+$7f                                    ; $7e4e: $f8 $7f
	ld a, [hl]                                       ; $7e50: $7e
	ccf                                              ; $7e51: $3f
	sub a                                            ; $7e52: $97
	ld a, a                                          ; $7e53: $7f
	xor e                                            ; $7e54: $ab
	and e                                            ; $7e55: $a3
	and b                                            ; $7e56: $a0
	pop de                                           ; $7e57: $d1
	ret nc                                           ; $7e58: $d0

	ldh a, [$f8]                                     ; $7e59: $f0 $f8
	ld l, b                                          ; $7e5b: $68
	ldh [$60], a                                     ; $7e5c: $e0 $60
	ldh [$e0], a                                     ; $7e5e: $e0 $e0
	ld h, b                                          ; $7e60: $60
	ld [hl], b                                       ; $7e61: $70
	ld a, e                                          ; $7e62: $7b
	db $db                                           ; $7e63: $db
	sub [hl]                                         ; $7e64: $96
	ret nz                                           ; $7e65: $c0

	ld b, b                                          ; $7e66: $40
	and b                                            ; $7e67: $a0
	jr nz, jr_05f_7e8a                               ; $7e68: $20 $20

	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	ldh [rLCDC], a                                   ; $7e6c: $e0 $40
	di                                               ; $7e6e: $f3
	add b                                            ; $7e6f: $80
	adc e                                            ; $7e70: $8b
	rst GetHLinHL                                          ; $7e71: $cf
	ld b, l                                          ; $7e72: $45
	ld h, [hl]                                       ; $7e73: $66
	inc hl                                           ; $7e74: $23
	rst $38                                          ; $7e75: $ff
	dec de                                           ; $7e76: $1b
	rst $38                                          ; $7e77: $ff
	adc h                                            ; $7e78: $8c
	add h                                            ; $7e79: $84
	ld b, [hl]                                       ; $7e7a: $46
	ld b, e                                          ; $7e7b: $43
	ld hl, $1be6                                     ; $7e7c: $21 $e6 $1b
	ld h, [hl]                                       ; $7e7f: $66
	ldh [$fe], a                                     ; $7e80: $e0 $fe
	ld hl, sp-$06                                    ; $7e82: $f8 $fa
	ld a, h                                          ; $7e84: $7c
	cp h                                             ; $7e85: $bc
	sbc $fe                                          ; $7e86: $de $fe
	nop                                              ; $7e88: $00
	rrca                                             ; $7e89: $0f

jr_05f_7e8a:
	db $10                                           ; $7e8a: $10
	inc b                                            ; $7e8b: $04
	add b                                            ; $7e8c: $80
	ret nz                                           ; $7e8d: $c0

	ld h, b                                          ; $7e8e: $60
	sbc h                                            ; $7e8f: $9c
	jr nc, jr_05f_7e92                               ; $7e90: $30 $00

jr_05f_7e92:
	add b                                            ; $7e92: $80
	cp $9c                                           ; $7e93: $fe $9c
	ld bc, $0402                                     ; $7e95: $01 $02 $04
	db $fc                                           ; $7e98: $fc
	sbc h                                            ; $7e99: $9c
	ld bc, $0703                                     ; $7e9a: $01 $03 $07
	rlca                                             ; $7e9d: $07
	nop                                              ; $7e9e: $00
	sbc l                                            ; $7e9f: $9d
	ld h, [hl]                                       ; $7ea0: $66
	ld h, b                                          ; $7ea1: $60
	ld [hl], a                                       ; $7ea2: $77
	cp $1b                                           ; $7ea3: $fe $1b
	nop                                              ; $7ea5: $00
	pop af                                           ; $7ea6: $f1
	sbc l                                            ; $7ea7: $9d
	rlca                                             ; $7ea8: $07
	inc bc                                           ; $7ea9: $03
	ld [hl], e                                       ; $7eaa: $73
	ld a, [$009d]                                    ; $7eab: $fa $9d $00
	ld bc, $9bfa                                     ; $7eae: $01 $fa $9b
	ret nz                                           ; $7eb1: $c0

	add b                                            ; $7eb2: $80

jr_05f_7eb3:
	ld h, b                                          ; $7eb3: $60
	jr nz, jr_05f_7eb3                               ; $7eb4: $20 $fd

	sbc [hl]                                         ; $7eb6: $9e
	add b                                            ; $7eb7: $80
	ld a, e                                          ; $7eb8: $7b
	xor $9b                                          ; $7eb9: $ee $9b
	inc bc                                           ; $7ebb: $03
	ld bc, $060e                                     ; $7ebc: $01 $0e $06
	rlca                                             ; $7ebf: $07
	nop                                              ; $7ec0: $00
	sbc e                                            ; $7ec1: $9b
	ld b, $00                                        ; $7ec2: $06 $00
	inc bc                                           ; $7ec4: $03
	jr nc, jr_05f_7ee7                               ; $7ec5: $30 $20

	nop                                              ; $7ec7: $00
	di                                               ; $7ec8: $f3
	sbc l                                            ; $7ec9: $9d
	inc bc                                           ; $7eca: $03
	nop                                              ; $7ecb: $00
	sbc $07                                          ; $7ecc: $de $07
	sbc l                                            ; $7ece: $9d
	inc bc                                           ; $7ecf: $03
	ld bc, $9efe                                     ; $7ed0: $01 $fe $9e
	ld c, $7b                                        ; $7ed3: $0e $7b
	db $f4                                           ; $7ed5: $f4
	db $fd                                           ; $7ed6: $fd
	sbc c                                            ; $7ed7: $99
	ret nz                                           ; $7ed8: $c0

	add b                                            ; $7ed9: $80
	ldh [$e0], a                                     ; $7eda: $e0 $e0
	ret nz                                           ; $7edc: $c0

	ret nz                                           ; $7edd: $c0

	db $fd                                           ; $7ede: $fd
	ld a, a                                          ; $7edf: $7f
	ld [$e77f], a                                    ; $7ee0: $ea $7f $e7
	sbc l                                            ; $7ee3: $9d
	ld c, $06                                        ; $7ee4: $0e $06
	rlca                                             ; $7ee6: $07

jr_05f_7ee7:
	nop                                              ; $7ee7: $00

jr_05f_7ee8:
	sbc e                                            ; $7ee8: $9b
	ld b, $00                                        ; $7ee9: $06 $00
	inc bc                                           ; $7eeb: $03
	jr nc, jr_05f_7f0f                               ; $7eec: $30 $21

	nop                                              ; $7eee: $00
	di                                               ; $7eef: $f3
	sub a                                            ; $7ef0: $97
	rrca                                             ; $7ef1: $0f
	nop                                              ; $7ef2: $00
	rra                                              ; $7ef3: $1f
	rrca                                             ; $7ef4: $0f
	rrca                                             ; $7ef5: $0f
	rlca                                             ; $7ef6: $07
	inc bc                                           ; $7ef7: $03
	ld bc, $9cfd                                     ; $7ef8: $01 $fd $9c
	inc e                                            ; $7efb: $1c
	nop                                              ; $7efc: $00
	ld b, $fe                                        ; $7efd: $06 $fe

Jump_05f_7eff:
	sbc l                                            ; $7eff: $9d
	ret nz                                           ; $7f00: $c0

	add b                                            ; $7f01: $80
	sbc $e0                                          ; $7f02: $de $e0
	rst SubAFromDE                                          ; $7f04: $df
	ret nz                                           ; $7f05: $c0

	cp $7f                                           ; $7f06: $fe $7f
	db $eb                                           ; $7f08: $eb
	ld a, a                                          ; $7f09: $7f
	add sp, -$63                                     ; $7f0a: $e8 $9d
	ld c, $06                                        ; $7f0c: $0e $06
	rlca                                             ; $7f0e: $07

jr_05f_7f0f:
	nop                                              ; $7f0f: $00
	sbc e                                            ; $7f10: $9b
	ld b, $00                                        ; $7f11: $06 $00
	inc bc                                           ; $7f13: $03
	jr nc, jr_05f_7ee8                               ; $7f14: $30 $d2

	nop                                              ; $7f16: $00
	sub h                                            ; $7f17: $94
	cp a                                             ; $7f18: $bf
	ldh a, [$7f]                                     ; $7f19: $f0 $7f
	ret nz                                           ; $7f1b: $c0

	rst $38                                          ; $7f1c: $ff
	add b                                            ; $7f1d: $80
	ldh [rIE], a                                     ; $7f1e: $e0 $ff
	cp a                                             ; $7f20: $bf
	ld a, a                                          ; $7f21: $7f
	rst $38                                          ; $7f22: $ff
	cp a                                             ; $7f23: $bf
	rst $38                                          ; $7f24: $ff
	db $dd                                           ; $7f25: $dd
	sub c                                            ; $7f26: $91
	ld a, $fb                                        ; $7f27: $3e $fb
	ld c, $fc                                        ; $7f29: $0e $fc
	inc c                                            ; $7f2b: $0c
	db $fc                                           ; $7f2c: $fc
	inc c                                            ; $7f2d: $0c
	ld a, h                                          ; $7f2e: $7c
	adc b                                            ; $7f2f: $88
	adc h                                            ; $7f30: $8c
	ld hl, sp-$04                                    ; $7f31: $f8 $fc
	ld a, b                                          ; $7f33: $78
	db $fc                                           ; $7f34: $fc
	cp a                                             ; $7f35: $bf
	db $fc                                           ; $7f36: $fc
	sbc a                                            ; $7f37: $9f
	sbc d                                            ; $7f38: $9a
	ldh a, [$9f]                                     ; $7f39: $f0 $9f
	ldh a, [$bf]                                     ; $7f3b: $f0 $bf
	ldh [rPCM34], a                                  ; $7f3d: $e0 $77
	cp $97                                           ; $7f3f: $fe $97
	rst $38                                          ; $7f41: $ff
	jp $c3ff                                         ; $7f42: $c3 $ff $c3


	db $fd                                           ; $7f45: $fd
	pop bc                                           ; $7f46: $c1
	rst $38                                          ; $7f47: $ff
	ld b, c                                          ; $7f48: $41
	ld [hl], a                                       ; $7f49: $77
	ret c                                            ; $7f4a: $d8

	sbc [hl]                                         ; $7f4b: $9e
	ld sp, hl                                        ; $7f4c: $f9
	cp a                                             ; $7f4d: $bf
	pop af                                           ; $7f4e: $f1
	reti                                             ; $7f4f: $d9


	sub e                                            ; $7f50: $93
	ldh [$f5], a                                     ; $7f51: $e0 $f5
	ld hl, sp+$7b                                    ; $7f53: $f8 $7b
	db $fc                                           ; $7f55: $fc
	inc bc                                           ; $7f56: $03
	inc bc                                           ; $7f57: $03
	ld b, $03                                        ; $7f58: $06 $03
	rrca                                             ; $7f5a: $0f
	ld bc, $bd1f                                     ; $7f5b: $01 $1f $bd
	rra                                              ; $7f5e: $1f
	ccf                                              ; $7f5f: $3f
	ccf                                              ; $7f60: $3f
	ccf                                              ; $7f61: $3f
	sbc [hl]                                         ; $7f62: $9e
	rlca                                             ; $7f63: $07
	ld [hl], a                                       ; $7f64: $77
	ldh [c], a                                       ; $7f65: $e2
	sub [hl]                                         ; $7f66: $96
	ccf                                              ; $7f67: $3f
	ret nz                                           ; $7f68: $c0

	rst GetHLinHL                                          ; $7f69: $cf
	ldh a, [$b1]                                     ; $7f6a: $f0 $b1
	ld a, [hl]                                       ; $7f6c: $7e
	rst AddAOntoHL                                          ; $7f6d: $ef
	rra                                              ; $7f6e: $1f
	ei                                               ; $7f6f: $fb
	cp a                                             ; $7f70: $bf
	db $e3                                           ; $7f71: $e3
	db $fd                                           ; $7f72: $fd
	sbc c                                            ; $7f73: $99
	ld b, c                                          ; $7f74: $41
	db $fc                                           ; $7f75: $fc
	ld b, d                                          ; $7f76: $42
	rst $38                                          ; $7f77: $ff
	ld b, c                                          ; $7f78: $41
	ld sp, hl                                        ; $7f79: $f9
	cp h                                             ; $7f7a: $bc
	ldh a, [$f0]                                     ; $7f7b: $f0 $f0
	ldh a, [$e0]                                     ; $7f7d: $f0 $e0
	xor $97                                          ; $7f7f: $ee $97
	ld a, h                                          ; $7f81: $7c
	or h                                             ; $7f82: $b4
	sub b                                            ; $7f83: $90
	ld h, b                                          ; $7f84: $60
	ld h, b                                          ; $7f85: $60
	add b                                            ; $7f86: $80
	add b                                            ; $7f87: $80
	ld b, b                                          ; $7f88: $40
	cp b                                             ; $7f89: $b8
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	ccf                                              ; $7f8d: $3f
	ld a, a                                          ; $7f8e: $7f
	ld a, [hl]                                       ; $7f8f: $7e
	ld a, h                                          ; $7f90: $7c
	ld a, b                                          ; $7f91: $78
	inc a                                            ; $7f92: $3c
	adc d                                            ; $7f93: $8a
	ld a, b                                          ; $7f94: $78
	ld a, [hl]                                       ; $7f95: $7e
	ld a, h                                          ; $7f96: $7c
	ld e, [hl]                                       ; $7f97: $5e
	ld a, [hl]                                       ; $7f98: $7e
	jp $8380                                         ; $7f99: $c3 $80 $83


	ld b, c                                          ; $7f9c: $41
	rlca                                             ; $7f9d: $07
	ld b, e                                          ; $7f9e: $43
	ld c, h                                          ; $7f9f: $4c
	inc b                                            ; $7fa0: $04
	ld e, b                                          ; $7fa1: $58
	ld [$0898], sp                                   ; $7fa2: $08 $98 $08
	inc a                                            ; $7fa5: $3c
	inc d                                            ; $7fa6: $14
	ld a, h                                          ; $7fa7: $7c
	inc [hl]                                         ; $7fa8: $34
	push af                                          ; $7fa9: $f5
	sbc d                                            ; $7faa: $9a
	ld a, h                                          ; $7fab: $7c
	ld hl, sp+$0f                                    ; $7fac: $f8 $0f
	ld b, $7c                                        ; $7fae: $06 $7c
	cp [hl]                                          ; $7fb0: $be
	db $fc                                           ; $7fb1: $fc
	ld a, h                                          ; $7fb2: $7c
	inc h                                            ; $7fb3: $24
	sbc e                                            ; $7fb4: $9b
	inc e                                            ; $7fb5: $1c
	inc c                                            ; $7fb6: $0c
	jr @+$0a                                         ; $7fb7: $18 $08

	cp [hl]                                          ; $7fb9: $be
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	ld c, d                                          ; $7fbc: $4a
	sbc e                                            ; $7fbd: $9b
	ld e, d                                          ; $7fbe: $5a
	cp b                                             ; $7fbf: $b8
	jr nc, @+$63                                     ; $7fc0: $30 $61

	cp a                                             ; $7fc2: $bf

Jump_05f_7fc3:
	add hl, de                                       ; $7fc3: $19
	inc bc                                           ; $7fc4: $03
	sub [hl]                                         ; $7fc5: $96
	ld bc, $0103                                     ; $7fc6: $01 $03 $01
	ld b, $02                                        ; $7fc9: $06 $02
	inc b                                            ; $7fcb: $04
	inc b                                            ; $7fcc: $04
	inc bc                                           ; $7fcd: $03
	ld bc, $9efd                                     ; $7fce: $01 $fd $9e
	ld c, $bc                                        ; $7fd1: $0e $bc
	inc bc                                           ; $7fd3: $03
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	ret nz                                           ; $7fd7: $c0

	sbc d                                            ; $7fd8: $9a
	add b                                            ; $7fd9: $80
	ldh a, [$60]                                     ; $7fda: $f0 $60
	jr c, jr_05f_7ff6                                ; $7fdc: $38 $18

	ld [hl], a                                       ; $7fde: $77
	db $d3                                           ; $7fdf: $d3
	ld a, a                                          ; $7fe0: $7f

Jump_05f_7fe1:
	rst SubAFromBC                                          ; $7fe1: $e7
	ld a, a                                          ; $7fe2: $7f
	db $e4                                           ; $7fe3: $e4
	sbc l                                            ; $7fe4: $9d
	ld c, $06                                        ; $7fe5: $0e $06
	ld [de], a                                       ; $7fe7: $12
	nop                                              ; $7fe8: $00
	sbc c                                            ; $7fe9: $99
	ld b, $60                                        ; $7fea: $06 $60
	nop                                              ; $7fec: $00
	ld h, [hl]                                       ; $7fed: $66
	ld b, $60                                        ; $7fee: $06 $60
	ld a, e                                          ; $7ff0: $7b
	db $fd                                           ; $7ff1: $fd
	sbc c                                            ; $7ff2: $99
	ld b, $66                                        ; $7ff3: $06 $66
	nop                                              ; $7ff5: $00

jr_05f_7ff6:
	inc bc                                           ; $7ff6: $03
	jr nc, jr_05f_7ff9                               ; $7ff7: $30 $00

jr_05f_7ff9:
	sub $00                                          ; $7ff9: $d6 $00
	sub h                                            ; $7ffb: $94
	cp a                                             ; $7ffc: $bf
	ldh a, [$7f]                                     ; $7ffd: $f0 $7f
	ret nz                                           ; $7fff: $c0
