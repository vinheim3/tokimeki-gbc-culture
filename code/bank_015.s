; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

	and e                                            ; $4000: $a3
	nop                                              ; $4001: $00
	ei                                               ; $4002: $fb
	rst SubAFromDE                                          ; $4003: $df
	ld bc, $0280                                     ; $4004: $01 $80 $02
	inc bc                                           ; $4007: $03
	dec b                                            ; $4008: $05
	rlca                                             ; $4009: $07
	ld a, [bc]                                       ; $400a: $0a
	rrca                                             ; $400b: $0f
	ld a, [bc]                                       ; $400c: $0a
	rrca                                             ; $400d: $0f
	inc b                                            ; $400e: $04
	rlca                                             ; $400f: $07
	add hl, bc                                       ; $4010: $09
	rrca                                             ; $4011: $0f
	rla                                              ; $4012: $17
	ld e, $0d                                        ; $4013: $1e $0d
	rrca                                             ; $4015: $0f
	dec b                                            ; $4016: $05
	ld b, $05                                        ; $4017: $06 $05
	rlca                                             ; $4019: $07
	dec b                                            ; $401a: $05
	rlca                                             ; $401b: $07
	ld [bc], a                                       ; $401c: $02
	inc bc                                           ; $401d: $03
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	jr nz, jr_015_4042                               ; $4020: $20 $20

	rst SubAFromDE                                          ; $4022: $df
	rst $38                                          ; $4023: $ff
	db $30, $97                                      ; $4024: $30 $97
	rst $38                                          ; $4026: $ff

jr_015_4027:
	and $ff                                          ; $4027: $e6 $ff

jr_015_4029:
	ld de, $49ff                                     ; $4029: $11 $ff $49
	rst $38                                          ; $402c: $ff
	and h                                            ; $402d: $a4
	ld a, e                                          ; $402e: $7b
	cp $97                                           ; $402f: $fe $97
	or [hl]                                          ; $4031: $b6
	ld e, e                                          ; $4032: $5b
	rst $38                                          ; $4033: $ff

Jump_015_4034:
	call $ce77                                       ; $4034: $cd $77 $ce
	rst $38                                          ; $4037: $ff
	call z, $fe7b                                    ; $4038: $cc $7b $fe
	sbc h                                            ; $403b: $9c
	ld sp, $83fe                                     ; $403c: $31 $fe $83
	ei                                               ; $403f: $fb
	rst SubAFromDE                                          ; $4040: $df

Jump_015_4041:
	add b                                            ; $4041: $80

jr_015_4042:
	adc [hl]                                         ; $4042: $8e
	ld b, b                                          ; $4043: $40
	ret nz                                           ; $4044: $c0

	jr nz, jr_015_4027                               ; $4045: $20 $e0

	jr nz, jr_015_4029                               ; $4047: $20 $e0

	sub b                                            ; $4049: $90
	ldh a, [hDisp1_SCY]                                     ; $404a: $f0 $90
	ldh a, [$50]                                     ; $404c: $f0 $50
	ldh a, [$30]                                     ; $404e: $f0 $30
	ldh a, [$d8]                                     ; $4050: $f0 $d8
	ld hl, sp-$58                                    ; $4052: $f8 $a8
	ld a, e                                          ; $4054: $7b
	cp $7f                                           ; $4055: $fe $7f
	ld hl, sp-$21                                    ; $4057: $f8 $df
	ret nc                                           ; $4059: $d0

	ld [hl], a                                       ; $405a: $77
	xor b                                            ; $405b: $a8
	sbc d                                            ; $405c: $9a
	rlca                                             ; $405d: $07
	ld b, $07                                        ; $405e: $06 $07

jr_015_4060:
	inc b                                            ; $4060: $04
	inc bc                                           ; $4061: $03
	ld a, e                                          ; $4062: $7b
	or [hl]                                          ; $4063: $b6
	db $db                                           ; $4064: $db
	ld bc, $dff9                                     ; $4065: $01 $f9 $df
	ld bc, $ec77                                     ; $4068: $01 $77 $ec
	rst SubAFromDE                                          ; $406b: $df
	rst $38                                          ; $406c: $ff
	sub c                                            ; $406d: $91
	ldh [c], a                                       ; $406e: $e2
	ccf                                              ; $406f: $3f
	pop hl                                           ; $4070: $e1
	ccf                                              ; $4071: $3f
	reti                                             ; $4072: $d9


	rst $38                                          ; $4073: $ff
	rst SubAFromBC                                          ; $4074: $e7
	rst $38                                          ; $4075: $ff
	add c                                            ; $4076: $81
	rst $38                                          ; $4077: $ff
	nop                                              ; $4078: $00
	rst $38                                          ; $4079: $ff
	xor d                                            ; $407a: $aa
	ld d, l                                          ; $407b: $55
	sbc $ff                                          ; $407c: $de $ff
	sub d                                            ; $407e: $92
	sbc c                                            ; $407f: $99
	rst $38                                          ; $4080: $ff
	sbc c                                            ; $4081: $99
	rst FarCall                                          ; $4082: $f7
	db $f4                                           ; $4083: $f4
	or a                                             ; $4084: $b7
	rst SubAFromHL                                          ; $4085: $d7
	dec e                                            ; $4086: $1d
	cp $f8                                           ; $4087: $fe $f8
	rst $38                                          ; $4089: $ff
	rra                                              ; $408a: $1f
	rra                                              ; $408b: $1f
	ld [hl], a                                       ; $408c: $77
	and [hl]                                         ; $408d: $a6
	sub l                                            ; $408e: $95
	ld h, b                                          ; $408f: $60

Jump_015_4090:
	and b                                            ; $4090: $a0
	ldh a, [hDisp1_SCY]                                     ; $4091: $f0 $90
	ld [hl], b                                       ; $4093: $70
	ld d, b                                          ; $4094: $50
	ld [hl], b                                       ; $4095: $70
	ld d, b                                          ; $4096: $50
	or b                                             ; $4097: $b0
	or b                                             ; $4098: $b0
	db $dd                                           ; $4099: $dd
	add b                                            ; $409a: $80
	ld l, a                                          ; $409b: $6f
	sub b                                            ; $409c: $90
	db $dd                                           ; $409d: $dd
	add b                                            ; $409e: $80
	rst SubAFromDE                                          ; $409f: $df
	ret nz                                           ; $40a0: $c0

	rst SubAFromDE                                          ; $40a1: $df
	add b                                            ; $40a2: $80
	xor d                                            ; $40a3: $aa
	ld bc, $dffb                                     ; $40a4: $01 $fb $df
	ld bc, $0280                                     ; $40a7: $01 $80 $02
	inc bc                                           ; $40aa: $03
	dec b                                            ; $40ab: $05
	rlca                                             ; $40ac: $07
	ld a, [bc]                                       ; $40ad: $0a
	rrca                                             ; $40ae: $0f
	ld a, [bc]                                       ; $40af: $0a
	rrca                                             ; $40b0: $0f
	inc b                                            ; $40b1: $04
	rlca                                             ; $40b2: $07
	add hl, bc                                       ; $40b3: $09
	rrca                                             ; $40b4: $0f
	rla                                              ; $40b5: $17
	ld e, $0d                                        ; $40b6: $1e $0d
	rrca                                             ; $40b8: $0f
	dec b                                            ; $40b9: $05
	ld b, $05                                        ; $40ba: $06 $05
	rlca                                             ; $40bc: $07
	dec b                                            ; $40bd: $05
	rlca                                             ; $40be: $07
	ld [bc], a                                       ; $40bf: $02
	inc bc                                           ; $40c0: $03
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	jr nz, jr_015_40e5                               ; $40c3: $20 $20

	rst SubAFromDE                                          ; $40c5: $df
	rst $38                                          ; $40c6: $ff
	jr nc, jr_015_4060                               ; $40c7: $30 $97

	rst $38                                          ; $40c9: $ff

jr_015_40ca:
	and $ff                                          ; $40ca: $e6 $ff

jr_015_40cc:
	ld de, $49ff                                     ; $40cc: $11 $ff $49
	rst $38                                          ; $40cf: $ff
	and h                                            ; $40d0: $a4
	ld a, e                                          ; $40d1: $7b
	cp $97                                           ; $40d2: $fe $97
	or [hl]                                          ; $40d4: $b6
	ld e, e                                          ; $40d5: $5b
	rst $38                                          ; $40d6: $ff
	call $ce77                                       ; $40d7: $cd $77 $ce
	rst $38                                          ; $40da: $ff
	call z, $fe7b                                    ; $40db: $cc $7b $fe
	sbc h                                            ; $40de: $9c
	ld sp, $83fe                                     ; $40df: $31 $fe $83
	ei                                               ; $40e2: $fb
	rst SubAFromDE                                          ; $40e3: $df
	add b                                            ; $40e4: $80

jr_015_40e5:
	adc [hl]                                         ; $40e5: $8e
	ld b, b                                          ; $40e6: $40
	ret nz                                           ; $40e7: $c0

	jr nz, jr_015_40ca                               ; $40e8: $20 $e0

	jr nz, jr_015_40cc                               ; $40ea: $20 $e0

	sub b                                            ; $40ec: $90
	ldh a, [hDisp1_SCY]                                     ; $40ed: $f0 $90
	ldh a, [$50]                                     ; $40ef: $f0 $50
	ldh a, [$30]                                     ; $40f1: $f0 $30
	ldh a, [$d8]                                     ; $40f3: $f0 $d8
	ld hl, sp-$58                                    ; $40f5: $f8 $a8
	ld a, e                                          ; $40f7: $7b
	cp $7f                                           ; $40f8: $fe $7f
	ld hl, sp-$21                                    ; $40fa: $f8 $df
	ret nc                                           ; $40fc: $d0

	ld [hl], a                                       ; $40fd: $77
	xor b                                            ; $40fe: $a8
	sbc d                                            ; $40ff: $9a
	rlca                                             ; $4100: $07
	ld b, $07                                        ; $4101: $06 $07
	inc b                                            ; $4103: $04
	inc bc                                           ; $4104: $03
	ld a, e                                          ; $4105: $7b
	or [hl]                                          ; $4106: $b6
	db $db                                           ; $4107: $db
	ld bc, $dff9                                     ; $4108: $01 $f9 $df
	ld bc, $ec77                                     ; $410b: $01 $77 $ec
	rst SubAFromDE                                          ; $410e: $df
	rst $38                                          ; $410f: $ff
	sub c                                            ; $4110: $91
	ldh [c], a                                       ; $4111: $e2
	ccf                                              ; $4112: $3f
	pop hl                                           ; $4113: $e1
	ccf                                              ; $4114: $3f
	reti                                             ; $4115: $d9


	rst $38                                          ; $4116: $ff
	rst SubAFromBC                                          ; $4117: $e7
	rst $38                                          ; $4118: $ff
	add c                                            ; $4119: $81
	rst $38                                          ; $411a: $ff
	nop                                              ; $411b: $00
	rst $38                                          ; $411c: $ff
	xor d                                            ; $411d: $aa
	ld d, l                                          ; $411e: $55
	sbc $ff                                          ; $411f: $de $ff
	sub d                                            ; $4121: $92
	sbc c                                            ; $4122: $99
	rst $38                                          ; $4123: $ff
	sbc c                                            ; $4124: $99
	rst FarCall                                          ; $4125: $f7
	db $f4                                           ; $4126: $f4
	or a                                             ; $4127: $b7
	rst SubAFromHL                                          ; $4128: $d7
	dec e                                            ; $4129: $1d
	cp $f8                                           ; $412a: $fe $f8
	rst $38                                          ; $412c: $ff
	rra                                              ; $412d: $1f
	rra                                              ; $412e: $1f
	ld [hl], a                                       ; $412f: $77
	and [hl]                                         ; $4130: $a6
	sub l                                            ; $4131: $95
	ld h, b                                          ; $4132: $60
	and b                                            ; $4133: $a0
	ldh a, [hDisp1_SCY]                                     ; $4134: $f0 $90
	ld [hl], b                                       ; $4136: $70
	ld d, b                                          ; $4137: $50
	ld [hl], b                                       ; $4138: $70
	ld d, b                                          ; $4139: $50
	or b                                             ; $413a: $b0
	or b                                             ; $413b: $b0
	db $dd                                           ; $413c: $dd
	add b                                            ; $413d: $80
	ld l, a                                          ; $413e: $6f
	sub b                                            ; $413f: $90
	db $dd                                           ; $4140: $dd
	add b                                            ; $4141: $80
	rst SubAFromDE                                          ; $4142: $df
	ret nz                                           ; $4143: $c0

	rst SubAFromDE                                          ; $4144: $df
	add b                                            ; $4145: $80
	ccf                                              ; $4146: $3f
	ret nz                                           ; $4147: $c0

	adc c                                            ; $4148: $89
	ld a, h                                          ; $4149: $7c
	ld h, h                                          ; $414a: $64
	ld a, h                                          ; $414b: $7c
	ld h, h                                          ; $414c: $64
	ld a, $26                                        ; $414d: $3e $26
	dec a                                            ; $414f: $3d
	ccf                                              ; $4150: $3f
	rst AddAOntoHL                                          ; $4151: $ef
	rst FarCall                                          ; $4152: $f7
	rst JumpTable                                          ; $4153: $c7
	rst $38                                          ; $4154: $ff
	ld a, h                                          ; $4155: $7c
	ld a, h                                          ; $4156: $7c
	rst $38                                          ; $4157: $ff
	rst $38                                          ; $4158: $ff
	ld [bc], a                                       ; $4159: $02
	rst $38                                          ; $415a: $ff
	di                                               ; $415b: $f3
	rst GetHLinHL                                          ; $415c: $cf
	rst $38                                          ; $415d: $ff
	inc c                                            ; $415e: $0c
	ld a, e                                          ; $415f: $7b
	dec a                                            ; $4160: $3d
	sbc l                                            ; $4161: $9d
	rst SubAFromBC                                          ; $4162: $e7
	jr jr_015_4190                                   ; $4163: $18 $2b

	and b                                            ; $4165: $a0
	ld a, a                                          ; $4166: $7f
	cp $6f                                           ; $4167: $fe $6f
	xor b                                            ; $4169: $a8
	db $db                                           ; $416a: $db
	add b                                            ; $416b: $80
	ld c, a                                          ; $416c: $4f
	and b                                            ; $416d: $a0
	ld d, [hl]                                       ; $416e: $56
	ldh [c], a                                       ; $416f: $e2
	add h                                            ; $4170: $84
	inc d                                            ; $4171: $14
	rra                                              ; $4172: $1f
	dec d                                            ; $4173: $15
	rra                                              ; $4174: $1f
	add hl, bc                                       ; $4175: $09
	rrca                                             ; $4176: $0f
	inc de                                           ; $4177: $13
	ld e, $2f                                        ; $4178: $1e $2f
	dec a                                            ; $417a: $3d
	ld a, [de]                                       ; $417b: $1a
	rra                                              ; $417c: $1f
	dec bc                                           ; $417d: $0b
	dec c                                            ; $417e: $0d
	dec bc                                           ; $417f: $0b
	rrca                                             ; $4180: $0f
	rrca                                             ; $4181: $0f
	ld c, $1d                                        ; $4182: $0e $1d
	rla                                              ; $4184: $17
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	ld b, b                                          ; $4187: $40
	ld b, b                                          ; $4188: $40
	cp [hl]                                          ; $4189: $be
	cp $61                                           ; $418a: $fe $61
	ld a, d                                          ; $418c: $7a
	di                                               ; $418d: $f3
	sbc h                                            ; $418e: $9c
	ld [hl+], a                                      ; $418f: $22

jr_015_4190:
	rst $38                                          ; $4190: $ff
	sub d                                            ; $4191: $92
	ld a, d                                          ; $4192: $7a
	sbc $7f                                          ; $4193: $de $7f
	cp $99                                           ; $4195: $fe $99
	ld l, h                                          ; $4197: $6c
	or a                                             ; $4198: $b7
	cp $9b                                           ; $4199: $fe $9b
	rst AddAOntoHL                                          ; $419b: $ef
	sbc l                                            ; $419c: $9d
	ld [hl], a                                       ; $419d: $77
	sbc d                                            ; $419e: $9a
	sub c                                            ; $419f: $91
	cp $63                                           ; $41a0: $fe $63
	db $fd                                           ; $41a2: $fd
	rlca                                             ; $41a3: $07
	rra                                              ; $41a4: $1f
	inc de                                           ; $41a5: $13
	rrca                                             ; $41a6: $0f
	add hl, bc                                       ; $41a7: $09
	rrca                                             ; $41a8: $0f
	dec c                                            ; $41a9: $0d
	rrca                                             ; $41aa: $0f
	add hl, bc                                       ; $41ab: $09
	rlca                                             ; $41ac: $07
	rlca                                             ; $41ad: $07
	ld [hl], a                                       ; $41ae: $77
	cp d                                             ; $41af: $ba
	sbc [hl]                                         ; $41b0: $9e
	inc bc                                           ; $41b1: $03
	ld a, e                                          ; $41b2: $7b
	db $fd                                           ; $41b3: $fd
	ld h, [hl]                                       ; $41b4: $66
	cp $6b                                           ; $41b5: $fe $6b
	nop                                              ; $41b7: $00
	add b                                            ; $41b8: $80
	rst FarCall                                          ; $41b9: $f7
	ld e, $f3                                        ; $41ba: $1e $f3
	ld e, $f3                                        ; $41bc: $1e $f3
	ld l, a                                          ; $41be: $6f
	ld hl, sp-$61                                    ; $41bf: $f8 $9f
	db $fd                                           ; $41c1: $fd
	ld b, $fe                                        ; $41c2: $06 $fe
	ld bc, $55ff                                     ; $41c4: $01 $ff $55
	xor e                                            ; $41c7: $ab
	rst $38                                          ; $41c8: $ff
	rst $38                                          ; $41c9: $ff
	cp $32                                           ; $41ca: $fe $32
	cp $92                                           ; $41cc: $fe $92
	ld a, a                                          ; $41ce: $7f
	ld a, c                                          ; $41cf: $79
	ld e, a                                          ; $41d0: $5f
	ld a, a                                          ; $41d1: $7f
	sbc e                                            ; $41d2: $9b
	db $fd                                           ; $41d3: $fd
	pop af                                           ; $41d4: $f1
	rst $38                                          ; $41d5: $ff
	ccf                                              ; $41d6: $3f
	ccf                                              ; $41d7: $3f
	ld d, a                                          ; $41d8: $57
	ld l, d                                          ; $41d9: $6a
	pop af                                           ; $41da: $f1
	inc bc                                           ; $41db: $03
	ld h, d                                          ; $41dc: $62
	sbc h                                            ; $41dd: $9c
	rla                                              ; $41de: $17
	rra                                              ; $41df: $1f
	inc de                                           ; $41e0: $13
	inc de                                           ; $41e1: $13
	ld h, d                                          ; $41e2: $62
	sbc h                                            ; $41e3: $9c
	ld l, a                                          ; $41e4: $6f
	rst $38                                          ; $41e5: $ff
	rst FarCall                                          ; $41e6: $f7
	ld e, [hl]                                       ; $41e7: $5e
	ld b, b                                          ; $41e8: $40
	ld l, [hl]                                       ; $41e9: $6e
	ld a, $9a                                        ; $41ea: $3e $9a
	and b                                            ; $41ec: $a0
	ldh [$60], a                                     ; $41ed: $e0 $60
	ldh [$b0], a                                     ; $41ef: $e0 $b0
	ld a, d                                          ; $41f1: $7a
	inc a                                            ; $41f2: $3c
	ld a, a                                          ; $41f3: $7f
	cp $7f                                           ; $41f4: $fe $7f
	ld hl, sp-$21                                    ; $41f6: $f8 $df
	and b                                            ; $41f8: $a0
	rst $38                                          ; $41f9: $ff
	ld d, a                                          ; $41fa: $57
	ld b, d                                          ; $41fb: $42
	scf                                              ; $41fc: $37
	ld b, b                                          ; $41fd: $40
	ld d, a                                          ; $41fe: $57
	ld b, d                                          ; $41ff: $42
	scf                                              ; $4200: $37
	ld b, b                                          ; $4201: $40
	rra                                              ; $4202: $1f
	ld b, d                                          ; $4203: $42
	ld h, a                                          ; $4204: $67
	ld b, b                                          ; $4205: $40
	ld de, $9ea0                                     ; $4206: $11 $a0 $9e
	sub e                                            ; $4209: $93
	ld b, [hl]                                       ; $420a: $46
	nop                                              ; $420b: $00
	ccf                                              ; $420c: $3f
	ret nz                                           ; $420d: $c0

	ld e, $fe                                        ; $420e: $1e $fe
	sbc e                                            ; $4210: $9b
	dec bc                                           ; $4211: $0b
	ld c, $05                                        ; $4212: $0e $05
	rlca                                             ; $4214: $07
	ld a, [bc]                                       ; $4215: $0a
	ld h, b                                          ; $4216: $60
	sbc b                                            ; $4217: $98

jr_015_4218:
	ld h, a                                          ; $4218: $67
	ccf                                              ; $4219: $3f
	ccf                                              ; $421a: $3f
	ld a, d                                          ; $421b: $7a
	ld b, a                                          ; $421c: $47
	ccf                                              ; $421d: $3f
	ld sp, $601a                                     ; $421e: $31 $1a $60
	sbc l                                            ; $4221: $9d
	rst $38                                          ; $4222: $ff
	inc b                                            ; $4223: $04
	ld a, c                                          ; $4224: $79
	cp [hl]                                          ; $4225: $be
	sbc d                                            ; $4226: $9a
	inc sp                                           ; $4227: $33
	rst $38                                          ; $4228: $ff
	adc $fe                                          ; $4229: $ce $fe
	ld [bc], a                                       ; $422b: $02
	ld [hl+], a                                      ; $422c: $22
	ld h, b                                          ; $422d: $60
	ld a, [hl]                                       ; $422e: $7e
	push bc                                          ; $422f: $c5
	ld [hl], d                                       ; $4230: $72
	rst JumpTable                                          ; $4231: $c7
	sbc h                                            ; $4232: $9c
	and b                                            ; $4233: $a0
	ld h, b                                          ; $4234: $60
	ld h, b                                          ; $4235: $60
	ccf                                              ; $4236: $3f
	jr nz, jr_015_4218                               ; $4237: $20 $df

	rra                                              ; $4239: $1f
	sub a                                            ; $423a: $97
	ld a, [hl-]                                      ; $423b: $3a
	daa                                              ; $423c: $27
	ld a, a                                          ; $423d: $7f
	ld b, c                                          ; $423e: $41
	ld a, a                                          ; $423f: $7f
	ld e, c                                          ; $4240: $59
	daa                                              ; $4241: $27
	daa                                              ; $4242: $27
	cpl                                              ; $4243: $2f
	and b                                            ; $4244: $a0
	ld e, a                                          ; $4245: $5f
	call nc, Call_015_7e2e                           ; $4246: $d4 $2e $7e
	dec l                                            ; $4249: $2d
	nop                                              ; $424a: $00
	ld e, a                                          ; $424b: $5f
	and b                                            ; $424c: $a0
	cp c                                             ; $424d: $b9
	nop                                              ; $424e: $00
	ei                                               ; $424f: $fb
	rst SubAFromDE                                          ; $4250: $df

jr_015_4251:
	ld bc, $028d                                     ; $4251: $01 $8d $02
	inc bc                                           ; $4254: $03
	dec b                                            ; $4255: $05
	rlca                                             ; $4256: $07
	ld a, [bc]                                       ; $4257: $0a
	rrca                                             ; $4258: $0f
	ld a, [bc]                                       ; $4259: $0a
	rrca                                             ; $425a: $0f
	inc b                                            ; $425b: $04
	rlca                                             ; $425c: $07
	add hl, bc                                       ; $425d: $09
	rrca                                             ; $425e: $0f
	rla                                              ; $425f: $17
	ld e, $0d                                        ; $4260: $1e $0d
	ld c, $05                                        ; $4262: $0e $05

jr_015_4264:
	rlca                                             ; $4264: $07
	ld [hl], a                                       ; $4265: $77
	cp $7f                                           ; $4266: $fe $7f
	ld [$dffb], a                                    ; $4268: $ea $fb $df
	add b                                            ; $426b: $80
	adc [hl]                                         ; $426c: $8e
	ld b, b                                          ; $426d: $40
	ret nz                                           ; $426e: $c0

	jr nz, jr_015_4251                               ; $426f: $20 $e0

	jr nz, @-$1e                                     ; $4271: $20 $e0

	sub b                                            ; $4273: $90
	ldh a, [hDisp1_SCY]                                     ; $4274: $f0 $90
	ldh a, [$50]                                     ; $4276: $f0 $50
	ldh a, [$30]                                     ; $4278: $f0 $30
	ldh a, [$d8]                                     ; $427a: $f0 $d8
	ld hl, sp-$58                                    ; $427c: $f8 $a8
	ld a, e                                          ; $427e: $7b
	cp $7f                                           ; $427f: $fe $7f
	ld hl, sp-$21                                    ; $4281: $f8 $df
	ret nc                                           ; $4283: $d0

	ld [hl], a                                       ; $4284: $77
	ret z                                            ; $4285: $c8

	sbc d                                            ; $4286: $9a
	rlca                                             ; $4287: $07
	ld b, $07                                        ; $4288: $06 $07
	inc b                                            ; $428a: $04
	inc bc                                           ; $428b: $03
	ld a, e                                          ; $428c: $7b
	sub $db                                          ; $428d: $d6 $db
	ld bc, $dff9                                     ; $428f: $01 $f9 $df
	ld bc, $ec77                                     ; $4292: $01 $77 $ec
	rst SubAFromDE                                          ; $4295: $df
	rst $38                                          ; $4296: $ff
	sub c                                            ; $4297: $91
	ldh [c], a                                       ; $4298: $e2
	ccf                                              ; $4299: $3f
	pop hl                                           ; $429a: $e1
	ccf                                              ; $429b: $3f
	reti                                             ; $429c: $d9


	rst $38                                          ; $429d: $ff
	rst SubAFromBC                                          ; $429e: $e7
	rst $38                                          ; $429f: $ff
	add c                                            ; $42a0: $81
	rst $38                                          ; $42a1: $ff
	nop                                              ; $42a2: $00
	rst $38                                          ; $42a3: $ff
	xor d                                            ; $42a4: $aa
	ld d, l                                          ; $42a5: $55
	sbc $ff                                          ; $42a6: $de $ff
	sub d                                            ; $42a8: $92
	sbc c                                            ; $42a9: $99
	rst $38                                          ; $42aa: $ff
	sbc c                                            ; $42ab: $99
	rst FarCall                                          ; $42ac: $f7
	db $f4                                           ; $42ad: $f4
	or a                                             ; $42ae: $b7
	rst SubAFromHL                                          ; $42af: $d7
	dec e                                            ; $42b0: $1d
	cp $f8                                           ; $42b1: $fe $f8
	rst $38                                          ; $42b3: $ff
	rra                                              ; $42b4: $1f
	rra                                              ; $42b5: $1f
	ld [hl], a                                       ; $42b6: $77
	and [hl]                                         ; $42b7: $a6
	sub l                                            ; $42b8: $95
	ld h, b                                          ; $42b9: $60
	and b                                            ; $42ba: $a0
	ldh a, [hDisp1_SCY]                                     ; $42bb: $f0 $90
	ld [hl], b                                       ; $42bd: $70
	ld d, b                                          ; $42be: $50
	ld [hl], b                                       ; $42bf: $70
	ld d, b                                          ; $42c0: $50
	or b                                             ; $42c1: $b0
	or b                                             ; $42c2: $b0
	db $dd                                           ; $42c3: $dd
	add b                                            ; $42c4: $80
	ld l, a                                          ; $42c5: $6f
	sub b                                            ; $42c6: $90
	db $dd                                           ; $42c7: $dd
	add b                                            ; $42c8: $80
	rst SubAFromDE                                          ; $42c9: $df
	ret nz                                           ; $42ca: $c0

	ld [hl], a                                       ; $42cb: $77
	ldh a, [c]                                       ; $42cc: $f2
	rst SubAFromDE                                          ; $42cd: $df
	jr nz, jr_015_4264                               ; $42ce: $20 $94

	rst SubAFromDE                                          ; $42d0: $df
	rst $38                                          ; $42d1: $ff
	jr nc, @+$01                                     ; $42d2: $30 $ff

	and $ff                                          ; $42d4: $e6 $ff
	ld de, $49ff                                     ; $42d6: $11 $ff $49
	rst $38                                          ; $42d9: $ff
	and h                                            ; $42da: $a4
	ld a, e                                          ; $42db: $7b
	cp $91                                           ; $42dc: $fe $91
	or [hl]                                          ; $42de: $b6
	ld e, e                                          ; $42df: $5b
	rst FarCall                                          ; $42e0: $f7
	add hl, bc                                       ; $42e1: $09
	rst $38                                          ; $42e2: $ff
	call z, $ceff                                    ; $42e3: $cc $ff $ce
	rst $38                                          ; $42e6: $ff
	ld c, d                                          ; $42e7: $4a
	rst $38                                          ; $42e8: $ff
	ld sp, $83fe                                     ; $42e9: $31 $fe $83
	dec bc                                           ; $42ec: $0b
	ldh [$9e], a                                     ; $42ed: $e0 $9e
	sub e                                            ; $42ef: $93
	ccf                                              ; $42f0: $3f
	add b                                            ; $42f1: $80
	sub c                                            ; $42f2: $91
	ld a, h                                          ; $42f3: $7c
	ld h, h                                          ; $42f4: $64
	ld a, h                                          ; $42f5: $7c
	ld h, h                                          ; $42f6: $64
	ld a, $26                                        ; $42f7: $3e $26
	dec a                                            ; $42f9: $3d
	ccf                                              ; $42fa: $3f
	rst AddAOntoHL                                          ; $42fb: $ef
	rst FarCall                                          ; $42fc: $f7
	rst JumpTable                                          ; $42fd: $c7
	rst $38                                          ; $42fe: $ff
	ld a, h                                          ; $42ff: $7c
	ld a, h                                          ; $4300: $7c
	cpl                                              ; $4301: $2f
	add b                                            ; $4302: $80
	ld h, a                                          ; $4303: $67
	ld a, [bc]                                       ; $4304: $0a
	rst $38                                          ; $4305: $ff
	adc [hl]                                         ; $4306: $8e
	nop                                              ; $4307: $00
	ei                                               ; $4308: $fb
	rst SubAFromDE                                          ; $4309: $df
	inc bc                                           ; $430a: $03
	add a                                            ; $430b: $87
	inc b                                            ; $430c: $04
	rlca                                             ; $430d: $07
	ld a, [bc]                                       ; $430e: $0a
	rrca                                             ; $430f: $0f
	inc d                                            ; $4310: $14
	rra                                              ; $4311: $1f
	ld [$040f], sp                                   ; $4312: $08 $0f $04
	rlca                                             ; $4315: $07
	dec b                                            ; $4316: $05
	rlca                                             ; $4317: $07
	inc bc                                           ; $4318: $03
	ld [bc], a                                       ; $4319: $02
	inc bc                                           ; $431a: $03
	inc bc                                           ; $431b: $03
	rlca                                             ; $431c: $07
	ld b, $07                                        ; $431d: $06 $07
	ld b, $05                                        ; $431f: $06 $05
	rlca                                             ; $4321: $07
	ld [bc], a                                       ; $4322: $02
	inc bc                                           ; $4323: $03
	db $fd                                           ; $4324: $fd
	rst SubAFromDE                                          ; $4325: $df
	rst AddAOntoHL                                          ; $4326: $ef
	sub [hl]                                         ; $4327: $96
	db $10                                           ; $4328: $10
	rst $38                                          ; $4329: $ff
	inc c                                            ; $432a: $0c
	rst $38                                          ; $432b: $ff

jr_015_432c:
	ld [hl+], a                                      ; $432c: $22
	rst $38                                          ; $432d: $ff
	ld c, c                                          ; $432e: $49
	rst $38                                          ; $432f: $ff
	and h                                            ; $4330: $a4
	ld a, e                                          ; $4331: $7b
	cp $97                                           ; $4332: $fe $97
	or d                                             ; $4334: $b2
	rst SubAFromDE                                          ; $4335: $df
	rst $38                                          ; $4336: $ff
	rst GetHLinHL                                          ; $4337: $cf
	ld [hl], a                                       ; $4338: $77
	adc $ff                                          ; $4339: $ce $ff
	call z, $fe7b                                    ; $433b: $cc $7b $fe
	sbc h                                            ; $433e: $9c
	ld sp, $83fe                                     ; $433f: $31 $fe $83
	ei                                               ; $4342: $fb
	rst SubAFromDE                                          ; $4343: $df
	add b                                            ; $4344: $80
	sbc b                                            ; $4345: $98
	ld b, b                                          ; $4346: $40
	ret nz                                           ; $4347: $c0

	ld b, b                                          ; $4348: $40
	ret nz                                           ; $4349: $c0

	jr nz, jr_015_432c                               ; $434a: $20 $e0

	and b                                            ; $434c: $a0
	ld a, e                                          ; $434d: $7b
	cp $9c                                           ; $434e: $fe $9c
	ld h, b                                          ; $4350: $60
	ldh [rAUD4LEN], a                                ; $4351: $e0 $20
	db $dd                                           ; $4353: $dd
	ldh [$7b], a                                     ; $4354: $e0 $7b
	push af                                          ; $4356: $f5
	ld a, a                                          ; $4357: $7f
	ld hl, sp+$7f                                    ; $4358: $f8 $7f
	cp $7f                                           ; $435a: $fe $7f
	or h                                             ; $435c: $b4
	ld a, a                                          ; $435d: $7f
	cp d                                             ; $435e: $ba
	ld a, a                                          ; $435f: $7f
	xor l                                            ; $4360: $ad
	ld [hl], a                                       ; $4361: $77
	xor [hl]                                         ; $4362: $ae
	rst $38                                          ; $4363: $ff
	db $db                                           ; $4364: $db
	ld bc, $dff9                                     ; $4365: $01 $f9 $df
	ld bc, $ec77                                     ; $4368: $01 $77 $ec
	add b                                            ; $436b: $80
	db $fd                                           ; $436c: $fd
	cp $fd                                           ; $436d: $fe $fd
	and a                                            ; $436f: $a7
	rst $38                                          ; $4370: $ff
	ld h, $df                                        ; $4371: $26 $df
	ld [hl], b                                       ; $4373: $70
	rst $38                                          ; $4374: $ff
	rst $38                                          ; $4375: $ff
	add a                                            ; $4376: $87
	rst $38                                          ; $4377: $ff
	ld bc, $03ff                                     ; $4378: $01 $ff $03
	db $fd                                           ; $437b: $fd
	rst $38                                          ; $437c: $ff
	rst $38                                          ; $437d: $ff
	cp $b2                                           ; $437e: $fe $b2
	rst $38                                          ; $4380: $ff
	sbc c                                            ; $4381: $99
	rst $38                                          ; $4382: $ff
	ld sp, hl                                        ; $4383: $f9
	rst GetHLinHL                                          ; $4384: $cf
	cp a                                             ; $4385: $bf
	dec e                                            ; $4386: $1d
	ei                                               ; $4387: $fb
	pop af                                           ; $4388: $f1
	rst $38                                          ; $4389: $ff
	ccf                                              ; $438a: $3f
	sbc h                                            ; $438b: $9c
	ccf                                              ; $438c: $3f
	ld b, b                                          ; $438d: $40
	ret nz                                           ; $438e: $c0

	db $db                                           ; $438f: $db
	add b                                            ; $4390: $80
	db $ed                                           ; $4391: $ed
	ld [hl], a                                       ; $4392: $77
	ld [$0085], a                                    ; $4393: $ea $85 $00
	push af                                          ; $4396: $f5
	rst SubAFromDE                                          ; $4397: $df
	ld bc, $068d                                     ; $4398: $01 $8d $06
	rlca                                             ; $439b: $07
	ld [$140f], sp                                   ; $439c: $08 $0f $14
	rra                                              ; $439f: $1f
	jr z, jr_015_43e1                                ; $43a0: $28 $3f

	ld de, $091f                                     ; $43a2: $11 $1f $09
	rrca                                             ; $43a5: $0f
	dec bc                                           ; $43a6: $0b
	rrca                                             ; $43a7: $0f
	rlca                                             ; $43a8: $07
	inc b                                            ; $43a9: $04
	ld b, $05                                        ; $43aa: $06 $05
	push af                                          ; $43ac: $f5
	rst SubAFromDE                                          ; $43ad: $df
	sbc $96                                          ; $43ae: $de $96
	ld hl, $18ff                                     ; $43b0: $21 $ff $18
	rst $38                                          ; $43b3: $ff
	ld b, h                                          ; $43b4: $44
	rst $38                                          ; $43b5: $ff
	sub d                                            ; $43b6: $92
	rst $38                                          ; $43b7: $ff
	ld c, c                                          ; $43b8: $49
	ld a, e                                          ; $43b9: $7b
	cp $99                                           ; $43ba: $fe $99
	ld h, h                                          ; $43bc: $64
	cp a                                             ; $43bd: $bf
	cp $03                                           ; $43be: $fe $03
	rlca                                             ; $43c0: $07
	ld sp, hl                                        ; $43c1: $f9
	pop af                                           ; $43c2: $f1
	db $dd                                           ; $43c3: $dd
	add b                                            ; $43c4: $80
	sbc l                                            ; $43c5: $9d
	ld b, b                                          ; $43c6: $40
	ret nz                                           ; $43c7: $c0

	ld [hl], a                                       ; $43c8: $77
	cp $df                                           ; $43c9: $fe $df
	ret nz                                           ; $43cb: $c0

	ld [hl], a                                       ; $43cc: $77
	db $fc                                           ; $43cd: $fc
	add b                                            ; $43ce: $80
	ld c, $0f                                        ; $43cf: $0e $0f
	rrca                                             ; $43d1: $0f
	dec c                                            ; $43d2: $0d
	dec bc                                           ; $43d3: $0b
	ld c, $05                                        ; $43d4: $0e $05
	rlca                                             ; $43d6: $07
	rlca                                             ; $43d7: $07
	dec b                                            ; $43d8: $05
	ld [bc], a                                       ; $43d9: $02
	inc bc                                           ; $43da: $03
	inc b                                            ; $43db: $04
	rlca                                             ; $43dc: $07
	rlca                                             ; $43dd: $07
	inc b                                            ; $43de: $04
	rlca                                             ; $43df: $07
	dec b                                            ; $43e0: $05

jr_015_43e1:
	ld c, $0b                                        ; $43e1: $0e $0b
	ld c, $0f                                        ; $43e3: $0e $0f
	rla                                              ; $43e5: $17
	dec e                                            ; $43e6: $1d
	rra                                              ; $43e7: $1f
	inc e                                            ; $43e8: $1c
	rrca                                             ; $43e9: $0f
	ld c, $07                                        ; $43ea: $0e $07
	rlca                                             ; $43ec: $07
	nop                                              ; $43ed: $00
	sub c                                            ; $43ee: $91
	nop                                              ; $43ef: $00
	sub a                                            ; $43f0: $97
	db $fd                                           ; $43f1: $fd
	rst $38                                          ; $43f2: $ff
	sbc c                                            ; $43f3: $99
	cp $63                                           ; $43f4: $fe $63
	db $fc                                           ; $43f6: $fc
	rlca                                             ; $43f7: $07
	db $fc                                           ; $43f8: $fc
	ei                                               ; $43f9: $fb
	adc a                                            ; $43fa: $8f
	rst $38                                          ; $43fb: $ff
	adc c                                            ; $43fc: $89
	ld a, e                                          ; $43fd: $7b
	cp $8f                                           ; $43fe: $fe $8f
	ld e, [hl]                                       ; $4400: $5e
	ld a, [$f21e]                                    ; $4401: $fa $1e $f2
	ld a, $e6                                        ; $4404: $3e $e6
	cp $fe                                           ; $4406: $fe $fe
	ei                                               ; $4408: $fb
	adc a                                            ; $4409: $8f
	ldh a, [$cf]                                     ; $440a: $f0 $cf
	rst $38                                          ; $440c: $ff
	rst $38                                          ; $440d: $ff
	ccf                                              ; $440e: $3f
	ccf                                              ; $440f: $3f
	ld [hl], a                                       ; $4410: $77
	or l                                             ; $4411: $b5
	ld [hl], a                                       ; $4412: $77
	or d                                             ; $4413: $b2
	rst SubAFromDE                                          ; $4414: $df
	add b                                            ; $4415: $80
	scf                                              ; $4416: $37
	sub [hl]                                         ; $4417: $96
	rst $38                                          ; $4418: $ff
	jr c, jr_015_441c                                ; $4419: $38 $01

	ei                                               ; $441b: $fb

jr_015_441c:
	rst SubAFromDE                                          ; $441c: $df
	inc bc                                           ; $441d: $03
	adc a                                            ; $441e: $8f
	inc b                                            ; $441f: $04
	rlca                                             ; $4420: $07
	ld a, [bc]                                       ; $4421: $0a
	rrca                                             ; $4422: $0f
	inc d                                            ; $4423: $14
	rra                                              ; $4424: $1f
	ld [$040f], sp                                   ; $4425: $08 $0f $04
	rlca                                             ; $4428: $07
	dec b                                            ; $4429: $05
	rlca                                             ; $442a: $07
	inc bc                                           ; $442b: $03
	ld [bc], a                                       ; $442c: $02
	inc bc                                           ; $442d: $03
	ld [bc], a                                       ; $442e: $02
	sbc $07                                          ; $442f: $de $07
	sbc d                                            ; $4431: $9a
	ld b, $05                                        ; $4432: $06 $05
	rlca                                             ; $4434: $07
	ld [bc], a                                       ; $4435: $02
	inc bc                                           ; $4436: $03
	db $fd                                           ; $4437: $fd
	rst SubAFromDE                                          ; $4438: $df
	rst AddAOntoHL                                          ; $4439: $ef
	sub [hl]                                         ; $443a: $96
	db $10                                           ; $443b: $10
	rst $38                                          ; $443c: $ff
	inc c                                            ; $443d: $0c
	rst $38                                          ; $443e: $ff

jr_015_443f:
	ld [hl+], a                                      ; $443f: $22
	rst $38                                          ; $4440: $ff
	ld c, c                                          ; $4441: $49
	rst $38                                          ; $4442: $ff
	and h                                            ; $4443: $a4
	ld a, e                                          ; $4444: $7b
	cp $97                                           ; $4445: $fe $97
	or d                                             ; $4447: $b2
	rst SubAFromDE                                          ; $4448: $df
	rst $38                                          ; $4449: $ff
	ld bc, $84ff                                     ; $444a: $01 $ff $84
	rst $38                                          ; $444d: $ff
	ld c, d                                          ; $444e: $4a
	ld a, e                                          ; $444f: $7b
	db $fc                                           ; $4450: $fc
	sbc h                                            ; $4451: $9c
	ld sp, $b3fe                                     ; $4452: $31 $fe $b3
	ei                                               ; $4455: $fb
	rst SubAFromDE                                          ; $4456: $df
	add b                                            ; $4457: $80
	sbc b                                            ; $4458: $98
	ld b, b                                          ; $4459: $40
	ret nz                                           ; $445a: $c0

	ld b, b                                          ; $445b: $40
	ret nz                                           ; $445c: $c0

	jr nz, jr_015_443f                               ; $445d: $20 $e0

	and b                                            ; $445f: $a0
	ld a, e                                          ; $4460: $7b
	cp $9c                                           ; $4461: $fe $9c
	ld h, b                                          ; $4463: $60
	ldh [rAUD4LEN], a                                ; $4464: $e0 $20
	db $dd                                           ; $4466: $dd
	ldh [$7b], a                                     ; $4467: $e0 $7b
	push af                                          ; $4469: $f5
	ld a, a                                          ; $446a: $7f
	ld hl, sp+$7f                                    ; $446b: $f8 $7f
	cp $7f                                           ; $446d: $fe $7f
	or [hl]                                          ; $446f: $b6
	ld a, a                                          ; $4470: $7f
	cp d                                             ; $4471: $ba
	ld a, a                                          ; $4472: $7f
	xor l                                            ; $4473: $ad
	ld a, e                                          ; $4474: $7b
	xor [hl]                                         ; $4475: $ae
	ld a, e                                          ; $4476: $7b

Call_015_4477:
	or [hl]                                          ; $4477: $b6
	db $db                                           ; $4478: $db
	ld bc, $dff9                                     ; $4479: $01 $f9 $df
	ld bc, $ec77                                     ; $447c: $01 $77 $ec

Call_015_447f:
	sub h                                            ; $447f: $94
	db $fd                                           ; $4480: $fd
	cp $fd                                           ; $4481: $fe $fd
	and a                                            ; $4483: $a7
	rst $38                                          ; $4484: $ff
	ld h, $df                                        ; $4485: $26 $df
	ld [hl], b                                       ; $4487: $70
	rst $38                                          ; $4488: $ff
	rst $38                                          ; $4489: $ff
	add a                                            ; $448a: $87
	ld a, e                                          ; $448b: $7b
	xor c                                            ; $448c: $a9
	adc e                                            ; $448d: $8b
	inc bc                                           ; $448e: $03
	db $fd                                           ; $448f: $fd
	rst $38                                          ; $4490: $ff
	rst $38                                          ; $4491: $ff
	cp $b2                                           ; $4492: $fe $b2
	rst $38                                          ; $4494: $ff
	sbc c                                            ; $4495: $99
	rst $38                                          ; $4496: $ff
	ld sp, hl                                        ; $4497: $f9
	rst GetHLinHL                                          ; $4498: $cf
	cp a                                             ; $4499: $bf
	dec e                                            ; $449a: $1d
	ei                                               ; $449b: $fb
	pop af                                           ; $449c: $f1
	rst $38                                          ; $449d: $ff
	ccf                                              ; $449e: $3f
	ccf                                              ; $449f: $3f
	ld b, b                                          ; $44a0: $40
	ret nz                                           ; $44a1: $c0

	db $db                                           ; $44a2: $db
	add b                                            ; $44a3: $80
	db $ed                                           ; $44a4: $ed
	ld e, a                                          ; $44a5: $5f
	ld [$4043], a                                    ; $44a6: $ea $43 $40
	sbc h                                            ; $44a9: $9c
	inc bc                                           ; $44aa: $03
	rlca                                             ; $44ab: $07
	ld b, $7b                                        ; $44ac: $06 $7b
	adc c                                            ; $44ae: $89
	rra                                              ; $44af: $1f
	ld b, b                                          ; $44b0: $40
	ld [hl], a                                       ; $44b1: $77
	ld b, d                                          ; $44b2: $42
	ld a, a                                          ; $44b3: $7f
	db $fc                                           ; $44b4: $fc
	ld h, e                                          ; $44b5: $63
	ld b, b                                          ; $44b6: $40
	ld h, a                                          ; $44b7: $67
	ld l, [hl]                                       ; $44b8: $6e
	ld a, a                                          ; $44b9: $7f
	bit 7, a                                         ; $44ba: $cb $7f
	cp [hl]                                          ; $44bc: $be
	ld a, a                                          ; $44bd: $7f
	cp d                                             ; $44be: $ba
	sub [hl]                                         ; $44bf: $96
	jr z, jr_015_4501                                ; $44c0: $28 $3f

	ld de, $091f                                     ; $44c2: $11 $1f $09
	rrca                                             ; $44c5: $0f
	dec bc                                           ; $44c6: $0b
	rrca                                             ; $44c7: $0f
	rlca                                             ; $44c8: $07
	ld a, e                                          ; $44c9: $7b
	or e                                             ; $44ca: $b3
	push af                                          ; $44cb: $f5
	rst SubAFromDE                                          ; $44cc: $df
	sbc $98                                          ; $44cd: $de $98
	ld hl, $18ff                                     ; $44cf: $21 $ff $18
	rst $38                                          ; $44d2: $ff
	ld b, h                                          ; $44d3: $44
	rst $38                                          ; $44d4: $ff
	sub d                                            ; $44d5: $92
	ld a, e                                          ; $44d6: $7b
	or [hl]                                          ; $44d7: $b6
	ld a, a                                          ; $44d8: $7f
	cp $99                                           ; $44d9: $fe $99
	ld h, h                                          ; $44db: $64
	cp a                                             ; $44dc: $bf
	cp $03                                           ; $44dd: $fe $03
	sbc a                                            ; $44df: $9f
	ld sp, hl                                        ; $44e0: $f9
	ccf                                              ; $44e1: $3f
	ld l, h                                          ; $44e2: $6c
	ld l, [hl]                                       ; $44e3: $6e
	db $f4                                           ; $44e4: $f4
	ld a, a                                          ; $44e5: $7f
	cp $df                                           ; $44e6: $fe $df
	ret nz                                           ; $44e8: $c0

	ld [hl], a                                       ; $44e9: $77
	db $fc                                           ; $44ea: $fc
	sbc c                                            ; $44eb: $99
	ld c, $0f                                        ; $44ec: $0e $0f
	rrca                                             ; $44ee: $0f
	dec c                                            ; $44ef: $0d
	dec bc                                           ; $44f0: $0b
	ld c, $76                                        ; $44f1: $0e $76
	db $fc                                           ; $44f3: $fc
	ld a, a                                          ; $44f4: $7f
	ld [hl], h                                       ; $44f5: $74
	ld a, a                                          ; $44f6: $7f
	or c                                             ; $44f7: $b1
	ld [hl], a                                       ; $44f8: $77
	xor [hl]                                         ; $44f9: $ae
	add h                                            ; $44fa: $84
	ld c, $0b                                        ; $44fb: $0e $0b
	ld c, $0f                                        ; $44fd: $0e $0f
	rla                                              ; $44ff: $17
	dec e                                            ; $4500: $1d

jr_015_4501:
	rra                                              ; $4501: $1f
	inc e                                            ; $4502: $1c
	rrca                                             ; $4503: $0f
	ld c, $07                                        ; $4504: $0e $07
	rlca                                             ; $4506: $07
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	adc a                                            ; $4509: $8f
	db $fd                                           ; $450a: $fd
	rst $38                                          ; $450b: $ff
	sbc c                                            ; $450c: $99
	cp $63                                           ; $450d: $fe $63
	db $fc                                           ; $450f: $fc
	rlca                                             ; $4510: $07
	db $fc                                           ; $4511: $fc
	ei                                               ; $4512: $fb
	adc a                                            ; $4513: $8f
	rst $38                                          ; $4514: $ff
	adc c                                            ; $4515: $89
	ld a, e                                          ; $4516: $7b
	cp $92                                           ; $4517: $fe $92
	ld e, [hl]                                       ; $4519: $5e
	ld a, [$f21e]                                    ; $451a: $fa $1e $f2
	ld a, $e6                                        ; $451d: $3e $e6
	cp $fe                                           ; $451f: $fe $fe
	ei                                               ; $4521: $fb
	adc a                                            ; $4522: $8f
	ldh a, [$cf]                                     ; $4523: $f0 $cf
	rst $38                                          ; $4525: $ff
	ld a, e                                          ; $4526: $7b
	nop                                              ; $4527: $00
	ld [hl], a                                       ; $4528: $77
	or l                                             ; $4529: $b5
	ld [hl], a                                       ; $452a: $77
	or d                                             ; $452b: $b2
	ld a, $fe                                        ; $452c: $3e $fe
	ld a, $ea                                        ; $452e: $3e $ea
	ccf                                              ; $4530: $3f
	ld b, b                                          ; $4531: $40
	ld a, [hl]                                       ; $4532: $7e
	dec a                                            ; $4533: $3d
	rrca                                             ; $4534: $0f
	ld b, b                                          ; $4535: $40
	sbc l                                            ; $4536: $9d
	rlca                                             ; $4537: $07
	ld sp, hl                                        ; $4538: $f9
	rlca                                             ; $4539: $07
	ld h, b                                          ; $453a: $60
	sbc [hl]                                         ; $453b: $9e
	sub a                                            ; $453c: $97
	dec bc                                           ; $453d: $0b
	ld h, b                                          ; $453e: $60
	ld [hl-], a                                      ; $453f: $32
	and b                                            ; $4540: $a0
	sbc d                                            ; $4541: $9a
	rst GetHLinHL                                          ; $4542: $cf
	ld [hl], a                                       ; $4543: $77
	adc $ff                                          ; $4544: $ce $ff
	call z, $fe7b                                    ; $4546: $cc $7b $fe
	ld a, [hl]                                       ; $4549: $7e
	and b                                            ; $454a: $a0
	sbc [hl]                                         ; $454b: $9e
	sub e                                            ; $454c: $93
	dec bc                                           ; $454d: $0b
	ldh [$9e], a                                     ; $454e: $e0 $9e
	add e                                            ; $4550: $83
	and [hl]                                         ; $4551: $a6
	nop                                              ; $4552: $00
	ei                                               ; $4553: $fb
	rst SubAFromDE                                          ; $4554: $df
	inc bc                                           ; $4555: $03
	adc [hl]                                         ; $4556: $8e
	inc b                                            ; $4557: $04
	rlca                                             ; $4558: $07
	ld a, [bc]                                       ; $4559: $0a
	rrca                                             ; $455a: $0f
	inc d                                            ; $455b: $14
	rra                                              ; $455c: $1f
	ld [$040f], sp                                   ; $455d: $08 $0f $04
	rlca                                             ; $4560: $07
	dec b                                            ; $4561: $05
	rlca                                             ; $4562: $07
	inc bc                                           ; $4563: $03
	ld [bc], a                                       ; $4564: $02
	inc bc                                           ; $4565: $03
	ld [bc], a                                       ; $4566: $02
	rlca                                             ; $4567: $07
	ld a, e                                          ; $4568: $7b
	ld hl, sp+$7f                                    ; $4569: $f8 $7f
	cp $7f                                           ; $456b: $fe $7f
	rst FarCall                                          ; $456d: $f7
	db $fd                                           ; $456e: $fd
	rst SubAFromDE                                          ; $456f: $df
	rst AddAOntoHL                                          ; $4570: $ef
	sub [hl]                                         ; $4571: $96
	db $10                                           ; $4572: $10
	rst $38                                          ; $4573: $ff
	inc c                                            ; $4574: $0c
	rst $38                                          ; $4575: $ff

jr_015_4576:
	ld [hl+], a                                      ; $4576: $22
	rst $38                                          ; $4577: $ff
	ld c, c                                          ; $4578: $49
	rst $38                                          ; $4579: $ff
	and h                                            ; $457a: $a4
	ld a, e                                          ; $457b: $7b
	cp $91                                           ; $457c: $fe $91
	or d                                             ; $457e: $b2
	rst SubAFromDE                                          ; $457f: $df
	rst $38                                          ; $4580: $ff
	ld bc, $ccff                                     ; $4581: $01 $ff $cc
	rst $38                                          ; $4584: $ff
	adc $ff                                          ; $4585: $ce $ff
	ld c, d                                          ; $4587: $4a
	rst $38                                          ; $4588: $ff
	ld sp, $83fe                                     ; $4589: $31 $fe $83
	ei                                               ; $458c: $fb
	rst SubAFromDE                                          ; $458d: $df
	add b                                            ; $458e: $80
	sbc b                                            ; $458f: $98
	ld b, b                                          ; $4590: $40
	ret nz                                           ; $4591: $c0

	ld b, b                                          ; $4592: $40
	ret nz                                           ; $4593: $c0

	jr nz, jr_015_4576                               ; $4594: $20 $e0

	and b                                            ; $4596: $a0
	ld a, e                                          ; $4597: $7b
	cp $9c                                           ; $4598: $fe $9c
	ld h, b                                          ; $459a: $60
	ldh [rAUD4LEN], a                                ; $459b: $e0 $20
	db $dd                                           ; $459d: $dd
	ldh [$7b], a                                     ; $459e: $e0 $7b
	push af                                          ; $45a0: $f5
	ld a, a                                          ; $45a1: $7f
	ld hl, sp+$7f                                    ; $45a2: $f8 $7f
	cp $7f                                           ; $45a4: $fe $7f
	or [hl]                                          ; $45a6: $b6
	ld a, a                                          ; $45a7: $7f
	cp d                                             ; $45a8: $ba
	ld a, a                                          ; $45a9: $7f
	or a                                             ; $45aa: $b7
	ld a, e                                          ; $45ab: $7b
	xor [hl]                                         ; $45ac: $ae
	ld a, e                                          ; $45ad: $7b
	or [hl]                                          ; $45ae: $b6
	db $db                                           ; $45af: $db
	ld bc, $dff9                                     ; $45b0: $01 $f9 $df
	ld bc, $ec77                                     ; $45b3: $01 $77 $ec
	sub h                                            ; $45b6: $94
	db $fd                                           ; $45b7: $fd
	cp $fd                                           ; $45b8: $fe $fd
	and a                                            ; $45ba: $a7
	rst $38                                          ; $45bb: $ff
	ld h, $df                                        ; $45bc: $26 $df
	ld [hl], b                                       ; $45be: $70
	rst $38                                          ; $45bf: $ff
	rst $38                                          ; $45c0: $ff
	add a                                            ; $45c1: $87
	ld a, e                                          ; $45c2: $7b
	xor c                                            ; $45c3: $a9
	adc e                                            ; $45c4: $8b
	inc bc                                           ; $45c5: $03
	db $fd                                           ; $45c6: $fd
	rst $38                                          ; $45c7: $ff
	rst $38                                          ; $45c8: $ff
	cp $b2                                           ; $45c9: $fe $b2
	rst $38                                          ; $45cb: $ff
	sbc c                                            ; $45cc: $99
	rst $38                                          ; $45cd: $ff
	ld sp, hl                                        ; $45ce: $f9
	rst GetHLinHL                                          ; $45cf: $cf
	cp a                                             ; $45d0: $bf
	dec e                                            ; $45d1: $1d
	ei                                               ; $45d2: $fb
	pop af                                           ; $45d3: $f1
	rst $38                                          ; $45d4: $ff
	ccf                                              ; $45d5: $3f
	ccf                                              ; $45d6: $3f
	ld b, b                                          ; $45d7: $40
	ret nz                                           ; $45d8: $c0

	db $db                                           ; $45d9: $db
	add b                                            ; $45da: $80
	db $ed                                           ; $45db: $ed
	ld h, a                                          ; $45dc: $67
	ld [$601b], a                                    ; $45dd: $ea $1b $60
	sbc [hl]                                         ; $45e0: $9e
	sub e                                            ; $45e1: $93
	rra                                              ; $45e2: $1f
	add b                                            ; $45e3: $80
	ld [hl], a                                       ; $45e4: $77
	ldh a, [$37]                                     ; $45e5: $f0 $37
	add b                                            ; $45e7: $80
	sub c                                            ; $45e8: $91
	ld a, h                                          ; $45e9: $7c
	ld h, h                                          ; $45ea: $64
	ld a, h                                          ; $45eb: $7c
	ld h, h                                          ; $45ec: $64
	ld a, $26                                        ; $45ed: $3e $26
	dec a                                            ; $45ef: $3d
	ccf                                              ; $45f0: $3f
	rst FarCall                                          ; $45f1: $f7
	rst AddAOntoHL                                          ; $45f2: $ef
	rst JumpTable                                          ; $45f3: $c7
	rst $38                                          ; $45f4: $ff
	ld a, h                                          ; $45f5: $7c
	ld a, h                                          ; $45f6: $7c
	sbc l                                            ; $45f7: $9d
	nop                                              ; $45f8: $00
	ei                                               ; $45f9: $fb
	rst SubAFromDE                                          ; $45fa: $df
	inc bc                                           ; $45fb: $03
	sub c                                            ; $45fc: $91
	inc b                                            ; $45fd: $04
	rlca                                             ; $45fe: $07
	inc b                                            ; $45ff: $04
	rlca                                             ; $4600: $07
	add hl, bc                                       ; $4601: $09
	rrca                                             ; $4602: $0f
	ld [de], a                                       ; $4603: $12
	rra                                              ; $4604: $1f
	inc c                                            ; $4605: $0c
	rrca                                             ; $4606: $0f
	dec b                                            ; $4607: $05
	rlca                                             ; $4608: $07
	inc bc                                           ; $4609: $03
	ld [bc], a                                       ; $460a: $02
	sbc $03                                          ; $460b: $de $03
	sbc e                                            ; $460d: $9b
	ld [bc], a                                       ; $460e: $02
	dec b                                            ; $460f: $05
	rlca                                             ; $4610: $07
	dec b                                            ; $4611: $05
	ld a, e                                          ; $4612: $7b
	db $ec                                           ; $4613: $ec
	db $fd                                           ; $4614: $fd
	rst SubAFromDE                                          ; $4615: $df
	rst AddAOntoHL                                          ; $4616: $ef
	add l                                            ; $4617: $85
	db $10                                           ; $4618: $10
	rst $38                                          ; $4619: $ff
	ld a, b                                          ; $461a: $78
	rst $38                                          ; $461b: $ff

jr_015_461c:
	sub [hl]                                         ; $461c: $96
	rst $38                                          ; $461d: $ff
	ld hl, $b4ff                                     ; $461e: $21 $ff $b4
	rst SubAFromDE                                          ; $4621: $df
	or h                                             ; $4622: $b4
	rst SubAFromDE                                          ; $4623: $df
	cp $4b                                           ; $4624: $fe $4b
	rst $38                                          ; $4626: $ff
	ld bc, $ceff                                     ; $4627: $01 $ff $ce
	ld [hl], a                                       ; $462a: $77
	call z, $ccff                                    ; $462b: $cc $ff $cc
	rst $38                                          ; $462e: $ff
	ld sp, $83ff                                     ; $462f: $31 $ff $83
	ei                                               ; $4632: $fb
	rst SubAFromDE                                          ; $4633: $df
	add b                                            ; $4634: $80
	sbc b                                            ; $4635: $98
	ld b, b                                          ; $4636: $40
	ret nz                                           ; $4637: $c0

	ld b, b                                          ; $4638: $40
	ret nz                                           ; $4639: $c0

	jr nz, jr_015_461c                               ; $463a: $20 $e0

	and b                                            ; $463c: $a0
	ld a, e                                          ; $463d: $7b
	cp $85                                           ; $463e: $fe $85
	sub b                                            ; $4640: $90
	ldh a, [$50]                                     ; $4641: $f0 $50
	ldh a, [$c8]                                     ; $4643: $f0 $c8
	ld hl, sp+$64                                    ; $4645: $f8 $64
	cp h                                             ; $4647: $bc
	ld l, b                                          ; $4648: $68
	cp b                                             ; $4649: $b8
	call nz, $24fc                                   ; $464a: $c4 $fc $24
	db $fc                                           ; $464d: $fc
	inc bc                                           ; $464e: $03
	ld [bc], a                                       ; $464f: $02
	rlca                                             ; $4650: $07
	inc b                                            ; $4651: $04
	rrca                                             ; $4652: $0f
	add hl, bc                                       ; $4653: $09
	rrca                                             ; $4654: $0f
	add hl, bc                                       ; $4655: $09
	rlca                                             ; $4656: $07
	inc b                                            ; $4657: $04
	inc bc                                           ; $4658: $03
	inc bc                                           ; $4659: $03
	db $db                                           ; $465a: $db
	ld bc, $dff9                                     ; $465b: $01 $f9 $df
	ld bc, $03df                                     ; $465e: $01 $df $03
	rst $38                                          ; $4661: $ff
	sub c                                            ; $4662: $91
	rst $38                                          ; $4663: $ff
	db $fc                                           ; $4664: $fc
	rst $38                                          ; $4665: $ff
	add d                                            ; $4666: $82
	inc bc                                           ; $4667: $03
	cp $83                                           ; $4668: $fe $83
	rst $38                                          ; $466a: $ff
	rst GetHLinHL                                          ; $466b: $cf
	cp $87                                           ; $466c: $fe $87
	db $fc                                           ; $466e: $fc
	rst GetHLinHL                                          ; $466f: $cf
	ld a, e                                          ; $4670: $7b
	ld a, e                                          ; $4671: $7b
	xor [hl]                                         ; $4672: $ae
	add d                                            ; $4673: $82
	ld de, $92fe                                     ; $4674: $11 $fe $92
	rst $38                                          ; $4677: $ff
	sbc c                                            ; $4678: $99
	rst $38                                          ; $4679: $ff
	sbc c                                            ; $467a: $99
	rst AddAOntoHL                                          ; $467b: $ef
	cp c                                             ; $467c: $b9
	rra                                              ; $467d: $1f
	ei                                               ; $467e: $fb
	pop af                                           ; $467f: $f1
	rst $38                                          ; $4680: $ff
	ccf                                              ; $4681: $3f
	ccf                                              ; $4682: $3f
	and h                                            ; $4683: $a4
	db $fc                                           ; $4684: $fc
	ret z                                            ; $4685: $c8

	ld a, b                                          ; $4686: $78
	add sp, $38                                      ; $4687: $e8 $38
	ldh a, [$30]                                     ; $4689: $f0 $30
	ldh [$60], a                                     ; $468b: $e0 $60
	ret nz                                           ; $468d: $c0

	ret nz                                           ; $468e: $c0

	add b                                            ; $468f: $80
	add b                                            ; $4690: $80
	di                                               ; $4691: $f3
	ld [hl], a                                       ; $4692: $77
	ldh a, [hDisp0_OBP0]                                     ; $4693: $f0 $86
	ld bc, $dffb                                     ; $4695: $01 $fb $df
	inc bc                                           ; $4698: $03
	sub c                                            ; $4699: $91
	inc b                                            ; $469a: $04
	rlca                                             ; $469b: $07
	inc b                                            ; $469c: $04
	rlca                                             ; $469d: $07
	add hl, bc                                       ; $469e: $09
	rrca                                             ; $469f: $0f
	ld [de], a                                       ; $46a0: $12
	rra                                              ; $46a1: $1f
	inc c                                            ; $46a2: $0c
	rrca                                             ; $46a3: $0f
	dec b                                            ; $46a4: $05
	rlca                                             ; $46a5: $07
	inc bc                                           ; $46a6: $03
	ld [bc], a                                       ; $46a7: $02
	sbc $03                                          ; $46a8: $de $03
	sbc e                                            ; $46aa: $9b
	ld [bc], a                                       ; $46ab: $02
	dec b                                            ; $46ac: $05
	rlca                                             ; $46ad: $07
	dec b                                            ; $46ae: $05
	ld a, e                                          ; $46af: $7b
	db $ec                                           ; $46b0: $ec
	db $fd                                           ; $46b1: $fd
	rst SubAFromDE                                          ; $46b2: $df
	rst AddAOntoHL                                          ; $46b3: $ef
	add l                                            ; $46b4: $85
	db $10                                           ; $46b5: $10
	rst $38                                          ; $46b6: $ff
	ld a, b                                          ; $46b7: $78
	rst $38                                          ; $46b8: $ff

jr_015_46b9:
	sub [hl]                                         ; $46b9: $96
	rst $38                                          ; $46ba: $ff
	ld hl, $b4ff                                     ; $46bb: $21 $ff $b4
	rst SubAFromDE                                          ; $46be: $df
	or h                                             ; $46bf: $b4
	rst SubAFromDE                                          ; $46c0: $df
	cp $4b                                           ; $46c1: $fe $4b
	rst $38                                          ; $46c3: $ff
	ld bc, $ceff                                     ; $46c4: $01 $ff $ce
	ld [hl], a                                       ; $46c7: $77
	call z, $ccff                                    ; $46c8: $cc $ff $cc
	rst $38                                          ; $46cb: $ff
	ld sp, $83ff                                     ; $46cc: $31 $ff $83
	ei                                               ; $46cf: $fb
	rst SubAFromDE                                          ; $46d0: $df
	add b                                            ; $46d1: $80
	sbc b                                            ; $46d2: $98
	ld b, b                                          ; $46d3: $40
	ret nz                                           ; $46d4: $c0

	ld b, b                                          ; $46d5: $40
	ret nz                                           ; $46d6: $c0

	jr nz, jr_015_46b9                               ; $46d7: $20 $e0

	and b                                            ; $46d9: $a0
	ld a, e                                          ; $46da: $7b
	cp $85                                           ; $46db: $fe $85
	sub b                                            ; $46dd: $90
	ldh a, [$50]                                     ; $46de: $f0 $50
	ldh a, [$c8]                                     ; $46e0: $f0 $c8
	ld hl, sp+$64                                    ; $46e2: $f8 $64
	cp h                                             ; $46e4: $bc
	ld l, b                                          ; $46e5: $68
	cp b                                             ; $46e6: $b8
	call nz, $24fc                                   ; $46e7: $c4 $fc $24
	db $fc                                           ; $46ea: $fc
	inc bc                                           ; $46eb: $03
	ld [bc], a                                       ; $46ec: $02
	rlca                                             ; $46ed: $07
	inc b                                            ; $46ee: $04
	rrca                                             ; $46ef: $0f
	add hl, bc                                       ; $46f0: $09
	rrca                                             ; $46f1: $0f
	add hl, bc                                       ; $46f2: $09
	rlca                                             ; $46f3: $07
	inc b                                            ; $46f4: $04
	inc bc                                           ; $46f5: $03
	inc bc                                           ; $46f6: $03
	db $db                                           ; $46f7: $db
	ld bc, $dff9                                     ; $46f8: $01 $f9 $df
	ld bc, $03df                                     ; $46fb: $01 $df $03
	rst $38                                          ; $46fe: $ff
	sub c                                            ; $46ff: $91
	rst $38                                          ; $4700: $ff
	db $fc                                           ; $4701: $fc
	rst $38                                          ; $4702: $ff
	add d                                            ; $4703: $82
	inc bc                                           ; $4704: $03
	cp $83                                           ; $4705: $fe $83
	rst $38                                          ; $4707: $ff
	rst GetHLinHL                                          ; $4708: $cf
	cp $87                                           ; $4709: $fe $87
	db $fc                                           ; $470b: $fc
	rst GetHLinHL                                          ; $470c: $cf
	ld a, e                                          ; $470d: $7b
	ld a, e                                          ; $470e: $7b
	xor [hl]                                         ; $470f: $ae
	add d                                            ; $4710: $82
	ld de, $92fe                                     ; $4711: $11 $fe $92
	rst $38                                          ; $4714: $ff
	sbc c                                            ; $4715: $99
	rst $38                                          ; $4716: $ff
	sbc c                                            ; $4717: $99
	rst AddAOntoHL                                          ; $4718: $ef
	cp c                                             ; $4719: $b9
	rra                                              ; $471a: $1f
	ei                                               ; $471b: $fb
	pop af                                           ; $471c: $f1
	rst $38                                          ; $471d: $ff
	ccf                                              ; $471e: $3f
	ccf                                              ; $471f: $3f
	and h                                            ; $4720: $a4
	db $fc                                           ; $4721: $fc
	ret z                                            ; $4722: $c8

	ld a, b                                          ; $4723: $78
	add sp, $38                                      ; $4724: $e8 $38
	ldh a, [$30]                                     ; $4726: $f0 $30
	ldh [$60], a                                     ; $4728: $e0 $60
	ret nz                                           ; $472a: $c0

	ret nz                                           ; $472b: $c0

	add b                                            ; $472c: $80
	add b                                            ; $472d: $80
	di                                               ; $472e: $f3
	ld [hl], a                                       ; $472f: $77
	ldh a, [rPCM34]                                  ; $4730: $f0 $77
	ld d, [hl]                                       ; $4732: $56
	ld a, e                                          ; $4733: $7b
	ld e, c                                          ; $4734: $59
	ld a, a                                          ; $4735: $7f
	cp $9e                                           ; $4736: $fe $9e
	ld b, $6f                                        ; $4738: $06 $6f
	and b                                            ; $473a: $a0
	rst FarCall                                          ; $473b: $f7
	ld l, e                                          ; $473c: $6b
	and b                                            ; $473d: $a0
	add b                                            ; $473e: $80
	ld a, a                                          ; $473f: $7f
	rst $38                                          ; $4740: $ff
	ld b, c                                          ; $4741: $41
	add b                                            ; $4742: $80
	rst $38                                          ; $4743: $ff
	pop bc                                           ; $4744: $c1
	rst $38                                          ; $4745: $ff
	di                                               ; $4746: $f3
	ld a, a                                          ; $4747: $7f
	pop hl                                           ; $4748: $e1
	cp a                                             ; $4749: $bf
	di                                               ; $474a: $f3
	ld a, $ff                                        ; $474b: $3e $ff
	call z, Call_015_447f                            ; $474d: $cc $7f $44
	ccf                                              ; $4750: $3f
	dec h                                            ; $4751: $25
	ld a, a                                          ; $4752: $7f
	ld b, l                                          ; $4753: $45
	rst $38                                          ; $4754: $ff
	adc l                                            ; $4755: $8d
	rst $38                                          ; $4756: $ff
	sbc c                                            ; $4757: $99
	cp h                                             ; $4758: $bc
	rst SubAFromDE                                          ; $4759: $df
	rst GetHLinHL                                          ; $475a: $cf
	rst $38                                          ; $475b: $ff
	ld hl, sp-$08                                    ; $475c: $f8 $f8

jr_015_475e:
	ld a, a                                          ; $475e: $7f
	ld d, [hl]                                       ; $475f: $56
	ld a, e                                          ; $4760: $7b
	and d                                            ; $4761: $a2
	ld a, a                                          ; $4762: $7f
	ld c, l                                          ; $4763: $4d
	sbc d                                            ; $4764: $9a
	sub b                                            ; $4765: $90
	ldh [$60], a                                     ; $4766: $e0 $60
	ldh [rAUD4LEN], a                                ; $4768: $e0 $20
	ld [hl], a                                       ; $476a: $77
	sbc [hl]                                         ; $476b: $9e
	ld e, a                                          ; $476c: $5f
	sbc h                                            ; $476d: $9c
	rst SubAFromDE                                          ; $476e: $df
	add b                                            ; $476f: $80
	rst SubAFromDE                                          ; $4770: $df
	ret nz                                           ; $4771: $c0

	ld [hl], e                                       ; $4772: $73
	and b                                            ; $4773: $a0
	ld a, e                                          ; $4774: $7b
	sbc [hl]                                         ; $4775: $9e
	ld a, a                                          ; $4776: $7f
	cp $57                                           ; $4777: $fe $57
	and [hl]                                         ; $4779: $a6
	ld d, a                                          ; $477a: $57
	and b                                            ; $477b: $a0
	ld [de], a                                       ; $477c: $12
	ldh [$8c], a                                     ; $477d: $e0 $8c
	ld h, c                                          ; $477f: $61
	rst $38                                          ; $4780: $ff
	sub e                                            ; $4781: $93
	rst $38                                          ; $4782: $ff
	rra                                              ; $4783: $1f
	rst $38                                          ; $4784: $ff
	ld hl, $7fc0                                     ; $4785: $21 $c0 $7f
	pop hl                                           ; $4788: $e1
	rst $38                                          ; $4789: $ff
	or e                                             ; $478a: $b3
	cp a                                             ; $478b: $bf
	ld b, c                                          ; $478c: $41
	ld a, a                                          ; $478d: $7f
	ld [hl], e                                       ; $478e: $73
	ld e, [hl]                                       ; $478f: $5e
	ld a, a                                          ; $4790: $7f
	ld c, h                                          ; $4791: $4c
	ld b, a                                          ; $4792: $47
	add b                                            ; $4793: $80
	ld a, [hl+]                                      ; $4794: $2a
	add b                                            ; $4795: $80
	ld a, d                                          ; $4796: $7a
	ld a, [hl]                                       ; $4797: $7e
	ld l, [hl]                                       ; $4798: $6e
	add b                                            ; $4799: $80
	rst SubAFromDE                                          ; $479a: $df
	dec de                                           ; $479b: $1b
	sbc b                                            ; $479c: $98
	ccf                                              ; $479d: $3f
	ld h, $3f                                        ; $479e: $26 $3f
	jr nc, jr_015_47b1                               ; $47a0: $30 $0f

	ld [$7207], sp                                   ; $47a2: $08 $07 $72
	halt                                             ; $47a5: $76
	inc bc                                           ; $47a6: $03
	add b                                            ; $47a7: $80
	ld h, a                                          ; $47a8: $67
	add b                                            ; $47a9: $80
	sbc h                                            ; $47aa: $9c
	ld c, $f7                                        ; $47ab: $0e $f7
	ld c, h                                          ; $47ad: $4c
	ld a, e                                          ; $47ae: $7b
	add b                                            ; $47af: $80
	ld a, a                                          ; $47b0: $7f

jr_015_47b1:
	rst AddAOntoHL                                          ; $47b1: $ef
	ld a, [hl]                                       ; $47b2: $7e
	and a                                            ; $47b3: $a7
	ld a, a                                          ; $47b4: $7f
	nop                                              ; $47b5: $00
	ld [hl], e                                       ; $47b6: $73
	add b                                            ; $47b7: $80
	sbc l                                            ; $47b8: $9d
	inc sp                                           ; $47b9: $33
	ccf                                              ; $47ba: $3f
	rra                                              ; $47bb: $1f
	add b                                            ; $47bc: $80
	ld a, [de]                                       ; $47bd: $1a
	jr nz, jr_015_475e                               ; $47be: $20 $9e

	sub e                                            ; $47c0: $93
	dec hl                                           ; $47c1: $2b
	ldh [$7e], a                                     ; $47c2: $e0 $7e
	xor b                                            ; $47c4: $a8
	sbc [hl]                                         ; $47c5: $9e
	ld c, d                                          ; $47c6: $4a
	ld e, [hl]                                       ; $47c7: $5e
	nop                                              ; $47c8: $00
	dec de                                           ; $47c9: $1b
	ldh [$73], a                                     ; $47ca: $e0 $73
	ret nz                                           ; $47cc: $c0

	ld sp, hl                                        ; $47cd: $f9
	rst SubAFromDE                                          ; $47ce: $df
	ld [hl], $95                                     ; $47cf: $36 $95
	ld c, c                                          ; $47d1: $49
	ld a, a                                          ; $47d2: $7f
	ld b, c                                          ; $47d3: $41
	ld a, a                                          ; $47d4: $7f
	ld [hl+], a                                      ; $47d5: $22
	ld a, $14                                        ; $47d6: $3e $14
	inc e                                            ; $47d8: $1c
	ld [$eb08], sp                                   ; $47d9: $08 $08 $eb
	rst SubAFromDE                                          ; $47dc: $df
	ld [hl], $9e                                     ; $47dd: $36 $9e
	ld a, [hl+]                                      ; $47df: $2a
	dec de                                           ; $47e0: $1b
	ldh [c], a                                       ; $47e1: $e2
	rst $38                                          ; $47e2: $ff
	sbc $28                                          ; $47e3: $de $28
	sbc h                                            ; $47e5: $9c
	jr c, jr_015_47f8                                ; $47e6: $38 $10

	db $10                                           ; $47e8: $10
	rst AddAOntoHL                                          ; $47e9: $ef
	adc e                                            ; $47ea: $8b
	ld [hl], b                                       ; $47eb: $70
	ld b, b                                          ; $47ec: $40
	jr c, jr_015_480f                                ; $47ed: $38 $20

	inc e                                            ; $47ef: $1c
	jr jr_015_47f2                                   ; $47f0: $18 $00

jr_015_47f2:
	nop                                              ; $47f2: $00
	ld a, b                                          ; $47f3: $78
	nop                                              ; $47f4: $00
	ld a, b                                          ; $47f5: $78
	ld a, b                                          ; $47f6: $78
	inc c                                            ; $47f7: $0c

jr_015_47f8:
	nop                                              ; $47f8: $00
	inc e                                            ; $47f9: $1c
	inc b                                            ; $47fa: $04
	jr c, jr_015_4805                                ; $47fb: $38 $08

	jr nc, jr_015_482f                               ; $47fd: $30 $30

	ldh [$db], a                                     ; $47ff: $e0 $db
	ld c, l                                          ; $4801: $4d
	ld h, b                                          ; $4802: $60
	ld b, [hl]                                       ; $4803: $46
	sbc [hl]                                         ; $4804: $9e

jr_015_4805:
	ld b, l                                          ; $4805: $45
	ld h, b                                          ; $4806: $60
	adc l                                            ; $4807: $8d
	cp $b2                                           ; $4808: $fe $b2
	cp $92                                           ; $480a: $fe $92
	ld a, h                                          ; $480c: $7c
	ld h, h                                          ; $480d: $64
	ld a, h                                          ; $480e: $7c

jr_015_480f:
	ld h, h                                          ; $480f: $64
	ld a, $26                                        ; $4810: $3e $26
	dec a                                            ; $4812: $3d
	daa                                              ; $4813: $27
	rst $38                                          ; $4814: $ff
	rst AddAOntoHL                                          ; $4815: $ef
	rst JumpTable                                          ; $4816: $c7
	rst $38                                          ; $4817: $ff
	ld a, h                                          ; $4818: $7c
	ld a, h                                          ; $4819: $7c
	cp a                                             ; $481a: $bf
	nop                                              ; $481b: $00
	ei                                               ; $481c: $fb
	rst SubAFromDE                                          ; $481d: $df
	inc bc                                           ; $481e: $03
	sub c                                            ; $481f: $91
	inc b                                            ; $4820: $04
	rlca                                             ; $4821: $07
	inc b                                            ; $4822: $04
	rlca                                             ; $4823: $07
	add hl, bc                                       ; $4824: $09
	rrca                                             ; $4825: $0f
	ld [de], a                                       ; $4826: $12
	rra                                              ; $4827: $1f
	inc c                                            ; $4828: $0c
	rrca                                             ; $4829: $0f
	dec b                                            ; $482a: $05
	rlca                                             ; $482b: $07
	inc bc                                           ; $482c: $03
	ld [bc], a                                       ; $482d: $02
	ld a, e                                          ; $482e: $7b

jr_015_482f:
	cp $9b                                           ; $482f: $fe $9b
	inc bc                                           ; $4831: $03
	dec b                                            ; $4832: $05
	rlca                                             ; $4833: $07
	dec b                                            ; $4834: $05
	ld a, e                                          ; $4835: $7b
	db $ec                                           ; $4836: $ec
	db $fd                                           ; $4837: $fd
	rst SubAFromDE                                          ; $4838: $df
	rst AddAOntoHL                                          ; $4839: $ef
	add l                                            ; $483a: $85
	db $10                                           ; $483b: $10
	rst $38                                          ; $483c: $ff
	ld a, b                                          ; $483d: $78
	rst $38                                          ; $483e: $ff

jr_015_483f:
	sub [hl]                                         ; $483f: $96
	rst $38                                          ; $4840: $ff
	ld hl, $b4ff                                     ; $4841: $21 $ff $b4
	rst SubAFromDE                                          ; $4844: $df
	or h                                             ; $4845: $b4
	rst SubAFromDE                                          ; $4846: $df
	cp $4b                                           ; $4847: $fe $4b
	rst $38                                          ; $4849: $ff
	ld bc, $00ff                                     ; $484a: $01 $ff $00
	rst $38                                          ; $484d: $ff
	ld c, d                                          ; $484e: $4a
	rst $38                                          ; $484f: $ff
	call z, $31ff                                    ; $4850: $cc $ff $31
	rst $38                                          ; $4853: $ff
	add e                                            ; $4854: $83
	ei                                               ; $4855: $fb
	rst SubAFromDE                                          ; $4856: $df
	add b                                            ; $4857: $80
	sbc b                                            ; $4858: $98
	ld b, b                                          ; $4859: $40
	ret nz                                           ; $485a: $c0

	ld b, b                                          ; $485b: $40
	ret nz                                           ; $485c: $c0

	jr nz, jr_015_483f                               ; $485d: $20 $e0

	and b                                            ; $485f: $a0
	ld a, e                                          ; $4860: $7b
	cp $85                                           ; $4861: $fe $85
	sub b                                            ; $4863: $90
	ldh a, [$50]                                     ; $4864: $f0 $50
	ldh a, [$c8]                                     ; $4866: $f0 $c8
	ld hl, sp+$64                                    ; $4868: $f8 $64
	cp h                                             ; $486a: $bc
	ld l, b                                          ; $486b: $68
	cp b                                             ; $486c: $b8
	call nz, $24fc                                   ; $486d: $c4 $fc $24
	db $fc                                           ; $4870: $fc
	inc bc                                           ; $4871: $03
	ld [bc], a                                       ; $4872: $02
	rlca                                             ; $4873: $07
	inc b                                            ; $4874: $04
	rrca                                             ; $4875: $0f
	add hl, bc                                       ; $4876: $09
	rrca                                             ; $4877: $0f
	add hl, bc                                       ; $4878: $09
	rlca                                             ; $4879: $07
	inc b                                            ; $487a: $04
	inc bc                                           ; $487b: $03
	inc bc                                           ; $487c: $03
	db $db                                           ; $487d: $db
	ld bc, $dff9                                     ; $487e: $01 $f9 $df
	ld bc, $03df                                     ; $4881: $01 $df $03
	rst $38                                          ; $4884: $ff
	sub c                                            ; $4885: $91
	rst $38                                          ; $4886: $ff
	db $fc                                           ; $4887: $fc
	rst $38                                          ; $4888: $ff
	add d                                            ; $4889: $82
	inc bc                                           ; $488a: $03
	cp $83                                           ; $488b: $fe $83
	rst $38                                          ; $488d: $ff
	rst GetHLinHL                                          ; $488e: $cf
	cp $87                                           ; $488f: $fe $87
	db $fc                                           ; $4891: $fc
	rst GetHLinHL                                          ; $4892: $cf
	ld a, e                                          ; $4893: $7b
	ld a, e                                          ; $4894: $7b
	xor [hl]                                         ; $4895: $ae
	add d                                            ; $4896: $82
	ld de, $92fe                                     ; $4897: $11 $fe $92
	rst $38                                          ; $489a: $ff
	sbc c                                            ; $489b: $99
	rst $38                                          ; $489c: $ff
	sbc c                                            ; $489d: $99
	rst AddAOntoHL                                          ; $489e: $ef
	cp c                                             ; $489f: $b9
	rra                                              ; $48a0: $1f
	ei                                               ; $48a1: $fb
	pop af                                           ; $48a2: $f1
	rst $38                                          ; $48a3: $ff
	ccf                                              ; $48a4: $3f
	ccf                                              ; $48a5: $3f
	and h                                            ; $48a6: $a4
	db $fc                                           ; $48a7: $fc
	ret z                                            ; $48a8: $c8

	ld a, b                                          ; $48a9: $78
	add sp, $38                                      ; $48aa: $e8 $38
	ldh a, [$30]                                     ; $48ac: $f0 $30
	ldh [$60], a                                     ; $48ae: $e0 $60
	ret nz                                           ; $48b0: $c0

	ret nz                                           ; $48b1: $c0

	add b                                            ; $48b2: $80
	add b                                            ; $48b3: $80
	di                                               ; $48b4: $f3
	ld h, a                                          ; $48b5: $67
	ldh a, [rPCM34]                                  ; $48b6: $f0 $77
	ld h, b                                          ; $48b8: $60
	ld a, a                                          ; $48b9: $7f
	or a                                             ; $48ba: $b7
	inc sp                                           ; $48bb: $33
	ld h, b                                          ; $48bc: $60
	sbc [hl]                                         ; $48bd: $9e
	sub e                                            ; $48be: $93
	ld c, a                                          ; $48bf: $4f
	and b                                            ; $48c0: $a0
	adc l                                            ; $48c1: $8d
	cp $b2                                           ; $48c2: $fe $b2
	cp $92                                           ; $48c4: $fe $92
	ld a, h                                          ; $48c6: $7c
	ld h, h                                          ; $48c7: $64
	ld a, h                                          ; $48c8: $7c
	ld h, h                                          ; $48c9: $64
	ld a, $26                                        ; $48ca: $3e $26
	dec a                                            ; $48cc: $3d
	daa                                              ; $48cd: $27
	rst $38                                          ; $48ce: $ff
	rst AddAOntoHL                                          ; $48cf: $ef
	rst JumpTable                                          ; $48d0: $c7
	rst $38                                          ; $48d1: $ff
	ld a, h                                          ; $48d2: $7c
	ld a, h                                          ; $48d3: $7c
	ld c, a                                          ; $48d4: $4f
	ld h, b                                          ; $48d5: $60
	di                                               ; $48d6: $f3
	ld [hl], a                                       ; $48d7: $77
	ldh a, [$9c]                                     ; $48d8: $f0 $9c
	nop                                              ; $48da: $00
	db $fd                                           ; $48db: $fd
	rst SubAFromDE                                          ; $48dc: $df
	ld b, $8a                                        ; $48dd: $06 $8a
	add hl, bc                                       ; $48df: $09
	rrca                                             ; $48e0: $0f
	ld b, $07                                        ; $48e1: $06 $07
	inc bc                                           ; $48e3: $03
	inc bc                                           ; $48e4: $03
	inc b                                            ; $48e5: $04
	rlca                                             ; $48e6: $07
	dec b                                            ; $48e7: $05
	rlca                                             ; $48e8: $07
	add hl, bc                                       ; $48e9: $09
	rrca                                             ; $48ea: $0f
	add hl, bc                                       ; $48eb: $09
	rrca                                             ; $48ec: $0f
	dec bc                                           ; $48ed: $0b
	ld c, $0b                                        ; $48ee: $0e $0b
	rrca                                             ; $48f0: $0f
	rlca                                             ; $48f1: $07
	ld b, $05                                        ; $48f2: $06 $05
	ld a, e                                          ; $48f4: $7b
	ldh a, [c]                                       ; $48f5: $f2
	add e                                            ; $48f6: $83
	inc bc                                           ; $48f7: $03
	ld [bc], a                                       ; $48f8: $02
	ld h, b                                          ; $48f9: $60
	ld h, b                                          ; $48fa: $60
	inc a                                            ; $48fb: $3c
	inc a                                            ; $48fc: $3c
	ld h, e                                          ; $48fd: $63
	ld a, a                                          ; $48fe: $7f
	sub d                                            ; $48ff: $92
	rst $38                                          ; $4900: $ff
	ld c, l                                          ; $4901: $4d
	rst $38                                          ; $4902: $ff
	ld [hl], e                                       ; $4903: $73
	rst $38                                          ; $4904: $ff
	xor c                                            ; $4905: $a9
	rst $38                                          ; $4906: $ff
	inc [hl]                                         ; $4907: $34
	rst SubAFromDE                                          ; $4908: $df

jr_015_4909:
	or h                                             ; $4909: $b4
	rst SubAFromDE                                          ; $490a: $df
	or [hl]                                          ; $490b: $b6
	ld c, e                                          ; $490c: $4b
	rst $38                                          ; $490d: $ff
	call $cf77                                       ; $490e: $cd $77 $cf
	rst $38                                          ; $4911: $ff
	call $fe7b                                       ; $4912: $cd $7b $fe
	sbc h                                            ; $4915: $9c
	ld sp, $83ff                                     ; $4916: $31 $ff $83
	ei                                               ; $4919: $fb
	rst SubAFromDE                                          ; $491a: $df
	add b                                            ; $491b: $80
	sbc d                                            ; $491c: $9a
	ld b, b                                          ; $491d: $40
	ret nz                                           ; $491e: $c0

	ld b, b                                          ; $491f: $40
	ret nz                                           ; $4920: $c0

	and b                                            ; $4921: $a0
	sbc $e0                                          ; $4922: $de $e0
	ld [hl], a                                       ; $4924: $77
	ld hl, sp-$63                                    ; $4925: $f8 $9d
	jr nz, jr_015_4909                               ; $4927: $20 $e0

	ld l, a                                          ; $4929: $6f
	cp $77                                           ; $492a: $fe $77
	db $f4                                           ; $492c: $f4
	adc e                                            ; $492d: $8b
	dec b                                            ; $492e: $05
	ld b, $0d                                        ; $492f: $06 $0d
	dec bc                                           ; $4931: $0b
	rrca                                             ; $4932: $0f
	add hl, bc                                       ; $4933: $09
	rlca                                             ; $4934: $07
	rlca                                             ; $4935: $07
	nop                                              ; $4936: $00
	nop                                              ; $4937: $00
	ld bc, $0301                                     ; $4938: $01 $01 $03
	ld [bc], a                                       ; $493b: $02
	rlca                                             ; $493c: $07
	inc b                                            ; $493d: $04
	rlca                                             ; $493e: $07
	inc b                                            ; $493f: $04
	inc bc                                           ; $4940: $03
	ld [bc], a                                       ; $4941: $02
	db $dd                                           ; $4942: $dd
	ld bc, $029e                                     ; $4943: $01 $9e $02
	call c, $ff03                                    ; $4946: $dc $03 $ff
	rst SubAFromDE                                          ; $4949: $df
	rst $38                                          ; $494a: $ff
	add c                                            ; $494b: $81
	adc a                                            ; $494c: $8f
	ld sp, hl                                        ; $494d: $f9
	inc b                                            ; $494e: $04
	rst $38                                          ; $494f: $ff
	or e                                             ; $4950: $b3
	adc $ff                                          ; $4951: $ce $ff
	rst $38                                          ; $4953: $ff
	add [hl]                                         ; $4954: $86
	cp $8a                                           ; $4955: $fe $8a
	cp $ce                                           ; $4957: $fe $ce
	ld a, d                                          ; $4959: $7a
	cp $72                                           ; $495a: $fe $72
	sbc $d2                                          ; $495c: $de $d2
	cpl                                              ; $495e: $2f
	jp hl                                            ; $495f: $e9


	ld l, a                                          ; $4960: $6f
	jp hl                                            ; $4961: $e9


	rst GetHLinHL                                          ; $4962: $cf
	rst GetHLinHL                                          ; $4963: $cf
	sbc c                                            ; $4964: $99
	sbc a                                            ; $4965: $9f
	pop af                                           ; $4966: $f1
	rst $38                                          ; $4967: $ff
	ccf                                              ; $4968: $3f
	ccf                                              ; $4969: $3f
	ld [hl], a                                       ; $496a: $77
	and [hl]                                         ; $496b: $a6
	sbc $c0                                          ; $496c: $de $c0
	sbc h                                            ; $496e: $9c
	ld b, b                                          ; $496f: $40
	add b                                            ; $4970: $80
	add b                                            ; $4971: $80
	rst AddAOntoHL                                          ; $4972: $ef
	ld [hl], a                                       ; $4973: $77
	db $ec                                           ; $4974: $ec
	sub b                                            ; $4975: $90
	ld bc, $dffd                                     ; $4976: $01 $fd $df
	ld b, $8a                                        ; $4979: $06 $8a
	add hl, bc                                       ; $497b: $09
	rrca                                             ; $497c: $0f
	ld b, $07                                        ; $497d: $06 $07
	inc bc                                           ; $497f: $03
	inc bc                                           ; $4980: $03
	inc b                                            ; $4981: $04
	rlca                                             ; $4982: $07
	dec b                                            ; $4983: $05
	rlca                                             ; $4984: $07
	add hl, bc                                       ; $4985: $09
	rrca                                             ; $4986: $0f
	add hl, bc                                       ; $4987: $09
	rrca                                             ; $4988: $0f
	dec bc                                           ; $4989: $0b
	ld c, $0b                                        ; $498a: $0e $0b
	rrca                                             ; $498c: $0f
	rlca                                             ; $498d: $07
	ld b, $05                                        ; $498e: $06 $05
	ld a, e                                          ; $4990: $7b
	ldh a, [c]                                       ; $4991: $f2
	add e                                            ; $4992: $83
	inc bc                                           ; $4993: $03
	ld [bc], a                                       ; $4994: $02
	ld h, b                                          ; $4995: $60
	ld h, b                                          ; $4996: $60
	inc a                                            ; $4997: $3c
	inc a                                            ; $4998: $3c
	ld h, e                                          ; $4999: $63
	ld a, a                                          ; $499a: $7f
	sub d                                            ; $499b: $92
	rst $38                                          ; $499c: $ff
	ld c, l                                          ; $499d: $4d
	rst $38                                          ; $499e: $ff
	ld [hl], e                                       ; $499f: $73
	rst $38                                          ; $49a0: $ff
	xor c                                            ; $49a1: $a9
	rst $38                                          ; $49a2: $ff
	inc [hl]                                         ; $49a3: $34
	rst SubAFromDE                                          ; $49a4: $df

jr_015_49a5:
	or h                                             ; $49a5: $b4
	rst SubAFromDE                                          ; $49a6: $df
	or [hl]                                          ; $49a7: $b6
	ld c, e                                          ; $49a8: $4b
	rst $38                                          ; $49a9: $ff
	call $cf77                                       ; $49aa: $cd $77 $cf
	rst $38                                          ; $49ad: $ff
	call $fe7b                                       ; $49ae: $cd $7b $fe
	sbc h                                            ; $49b1: $9c
	ld sp, $83ff                                     ; $49b2: $31 $ff $83
	ei                                               ; $49b5: $fb
	rst SubAFromDE                                          ; $49b6: $df
	add b                                            ; $49b7: $80
	sbc d                                            ; $49b8: $9a
	ld b, b                                          ; $49b9: $40
	ret nz                                           ; $49ba: $c0

	ld b, b                                          ; $49bb: $40
	ret nz                                           ; $49bc: $c0

	and b                                            ; $49bd: $a0
	sbc $e0                                          ; $49be: $de $e0
	ld [hl], a                                       ; $49c0: $77
	ld hl, sp-$63                                    ; $49c1: $f8 $9d
	jr nz, jr_015_49a5                               ; $49c3: $20 $e0

	ld l, a                                          ; $49c5: $6f
	cp $77                                           ; $49c6: $fe $77
	db $f4                                           ; $49c8: $f4
	adc e                                            ; $49c9: $8b
	dec b                                            ; $49ca: $05
	ld b, $0d                                        ; $49cb: $06 $0d
	dec bc                                           ; $49cd: $0b
	rrca                                             ; $49ce: $0f
	add hl, bc                                       ; $49cf: $09
	rlca                                             ; $49d0: $07
	rlca                                             ; $49d1: $07
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	ld bc, $0301                                     ; $49d4: $01 $01 $03
	ld [bc], a                                       ; $49d7: $02
	rlca                                             ; $49d8: $07
	inc b                                            ; $49d9: $04
	rlca                                             ; $49da: $07
	inc b                                            ; $49db: $04
	inc bc                                           ; $49dc: $03
	ld [bc], a                                       ; $49dd: $02
	db $dd                                           ; $49de: $dd
	ld bc, $029e                                     ; $49df: $01 $9e $02
	call c, $ff03                                    ; $49e2: $dc $03 $ff
	rst SubAFromDE                                          ; $49e5: $df
	rst $38                                          ; $49e6: $ff
	add c                                            ; $49e7: $81
	adc a                                            ; $49e8: $8f
	ld sp, hl                                        ; $49e9: $f9
	inc b                                            ; $49ea: $04
	rst $38                                          ; $49eb: $ff
	or e                                             ; $49ec: $b3
	adc $ff                                          ; $49ed: $ce $ff
	rst $38                                          ; $49ef: $ff
	add [hl]                                         ; $49f0: $86
	cp $8a                                           ; $49f1: $fe $8a
	cp $ce                                           ; $49f3: $fe $ce
	ld a, d                                          ; $49f5: $7a
	cp $72                                           ; $49f6: $fe $72
	sbc $d2                                          ; $49f8: $de $d2
	cpl                                              ; $49fa: $2f
	jp hl                                            ; $49fb: $e9


	ld l, a                                          ; $49fc: $6f
	jp hl                                            ; $49fd: $e9


	rst GetHLinHL                                          ; $49fe: $cf
	rst GetHLinHL                                          ; $49ff: $cf
	sbc c                                            ; $4a00: $99
	sbc a                                            ; $4a01: $9f
	pop af                                           ; $4a02: $f1
	rst $38                                          ; $4a03: $ff
	ccf                                              ; $4a04: $3f
	ccf                                              ; $4a05: $3f
	ld [hl], a                                       ; $4a06: $77
	and [hl]                                         ; $4a07: $a6
	sbc $c0                                          ; $4a08: $de $c0
	sbc h                                            ; $4a0a: $9c
	ld b, b                                          ; $4a0b: $40
	add b                                            ; $4a0c: $80
	add b                                            ; $4a0d: $80
	rst AddAOntoHL                                          ; $4a0e: $ef
	ld [hl], a                                       ; $4a0f: $77
	db $ec                                           ; $4a10: $ec
	ld e, a                                          ; $4a11: $5f
	and b                                            ; $4a12: $a0
	rst AddAOntoHL                                          ; $4a13: $ef
	rst SubAFromDE                                          ; $4a14: $df
	ld bc, $a043                                     ; $4a15: $01 $43 $a0
	adc [hl]                                         ; $4a18: $8e
	ld a, [$92fe]                                    ; $4a19: $fa $fe $92
	db $fc                                           ; $4a1c: $fc
	and h                                            ; $4a1d: $a4
	ld a, h                                          ; $4a1e: $7c
	ld h, h                                          ; $4a1f: $64
	ld a, $26                                        ; $4a20: $3e $26
	dec a                                            ; $4a22: $3d
	ccf                                              ; $4a23: $3f
	rst SubAFromBC                                          ; $4a24: $e7
	rst $38                                          ; $4a25: $ff
	rst JumpTable                                          ; $4a26: $c7
	rst $38                                          ; $4a27: $ff
	ld a, h                                          ; $4a28: $7c
	ld a, h                                          ; $4a29: $7c
	dec hl                                           ; $4a2a: $2b
	nop                                              ; $4a2b: $00
	sbc l                                            ; $4a2c: $9d
	ld c, $07                                        ; $4a2d: $0e $07
	ld a, e                                          ; $4a2f: $7b
	db $f4                                           ; $4a30: $f4
	ld a, a                                          ; $4a31: $7f
	cp $7f                                           ; $4a32: $fe $7f
	ld e, d                                          ; $4a34: $5a
	inc sp                                           ; $4a35: $33
	nop                                              ; $4a36: $00
	sbc [hl]                                         ; $4a37: $9e
	ld bc, $047b                                     ; $4a38: $01 $7b $04
	ld a, a                                          ; $4a3b: $7f
	ld a, [$fe7f]                                    ; $4a3c: $fa $7f $fe
	ld a, a                                          ; $4a3f: $7f
	nop                                              ; $4a40: $00
	add [hl]                                         ; $4a41: $86
	or e                                             ; $4a42: $b3
	inc bc                                           ; $4a43: $03
	inc bc                                           ; $4a44: $03
	ld e, $1d                                        ; $4a45: $1e $1d
	scf                                              ; $4a47: $37
	add hl, hl                                       ; $4a48: $29
	ccf                                              ; $4a49: $3f
	cpl                                              ; $4a4a: $2f
	db $10                                           ; $4a4b: $10
	stop                                             ; $4a4c: $10 $00
	nop                                              ; $4a4e: $00
	inc bc                                           ; $4a4f: $03
	nop                                              ; $4a50: $00
	ld b, $00                                        ; $4a51: $06 $00
	inc l                                            ; $4a53: $2c
	jr c, @+$2f                                      ; $4a54: $38 $2d

	jr c, jr_015_4a73                                ; $4a56: $38 $1b

	ld a, [de]                                       ; $4a58: $1a
	ld bc, $7a03                                     ; $4a59: $01 $03 $7a
	call nz, $039e                                   ; $4a5c: $c4 $9e $03
	ld [hl], a                                       ; $4a5f: $77
	add b                                            ; $4a60: $80
	add l                                            ; $4a61: $85
	db $fd                                           ; $4a62: $fd
	rst $38                                          ; $4a63: $ff
	add c                                            ; $4a64: $81
	rst $38                                          ; $4a65: $ff
	nop                                              ; $4a66: $00
	rst $38                                          ; $4a67: $ff
	inc sp                                           ; $4a68: $33
	rst GetHLinHL                                          ; $4a69: $cf
	cp $fe                                           ; $4a6a: $fe $fe
	add [hl]                                         ; $4a6c: $86
	cp $87                                           ; $4a6d: $fe $87
	ld a, b                                          ; $4a6f: $78
	rst GetHLinHL                                          ; $4a70: $cf

jr_015_4a71:
	jr c, jr_015_4a71                                ; $4a71: $38 $fe

jr_015_4a73:
	nop                                              ; $4a73: $00
	or a                                             ; $4a74: $b7
	nop                                              ; $4a75: $00
	or e                                             ; $4a76: $b3

jr_015_4a77:
	ld bc, $2b3a                                     ; $4a77: $01 $3a $2b
	ld c, d                                          ; $4a7a: $4a
	ld a, e                                          ; $4a7b: $7b
	db $dd                                           ; $4a7c: $dd
	rst $38                                          ; $4a7d: $ff
	rst $38                                          ; $4a7e: $ff
	rst SubAFromDE                                          ; $4a7f: $df
	ldh [$97], a                                     ; $4a80: $e0 $97
	ld hl, sp+$18                                    ; $4a82: $f8 $18
	call c, Call_015_7ca4                            ; $4a84: $dc $a4 $7c
	ld [hl], h                                       ; $4a87: $74
	ld [$fd08], sp                                   ; $4a88: $08 $08 $fd
	ld a, [hl]                                       ; $4a8b: $7e
	res 2, h                                         ; $4a8c: $cb $94
	ret nc                                           ; $4a8e: $d0

	ld [hl], b                                       ; $4a8f: $70
	ld d, b                                          ; $4a90: $50
	ld [hl], b                                       ; $4a91: $70
	ldh [$e0], a                                     ; $4a92: $e0 $e0
	ld c, c                                          ; $4a94: $49
	ret nz                                           ; $4a95: $c0

	sub $c0                                          ; $4a96: $d6 $c0
	inc a                                            ; $4a98: $3c
	ld [hl], e                                       ; $4a99: $73
	jr nz, @+$21                                     ; $4a9a: $20 $1f

	ld h, b                                          ; $4a9c: $60
	sbc c                                            ; $4a9d: $99
	dec c                                            ; $4a9e: $0d
	rrca                                             ; $4a9f: $0f
	dec e                                            ; $4aa0: $1d
	rla                                              ; $4aa1: $17
	ld a, [de]                                       ; $4aa2: $1a

jr_015_4aa3:
	rla                                              ; $4aa3: $17
	dec bc                                           ; $4aa4: $0b
	ld h, b                                          ; $4aa5: $60
	ld [hl+], a                                      ; $4aa6: $22
	ld h, b                                          ; $4aa7: $60
	sub a                                            ; $4aa8: $97
	jr c, jr_015_4aa3                                ; $4aa9: $38 $f8

	inc a                                            ; $4aab: $3c
	db $f4                                           ; $4aac: $f4
	ld l, h                                          ; $4aad: $6c
	db $fc                                           ; $4aae: $fc
	ld a, b                                          ; $4aaf: $78
	ret z                                            ; $4ab0: $c8

	ld a, d                                          ; $4ab1: $7a
	call nz, $a97f                                   ; $4ab2: $c4 $7f $a9
	sbc b                                            ; $4ab5: $98
	ld b, $0b                                        ; $4ab6: $06 $0b
	dec c                                            ; $4ab8: $0d
	ld a, [de]                                       ; $4ab9: $1a
	ld d, $0c                                        ; $4aba: $16 $0c
	inc c                                            ; $4abc: $0c
	ld a, d                                          ; $4abd: $7a
	adc $96                                          ; $4abe: $ce $96
	nop                                              ; $4ac0: $00
	rrca                                             ; $4ac1: $0f
	ld [$1814], sp                                   ; $4ac2: $08 $14 $18
	inc d                                            ; $4ac5: $14
	ld e, $0c                                        ; $4ac6: $1e $0c
	rrca                                             ; $4ac8: $0f
	ld a, d                                          ; $4ac9: $7a
	ld d, d                                          ; $4aca: $52
	ld a, d                                          ; $4acb: $7a
	ld h, d                                          ; $4acc: $62
	ccf                                              ; $4acd: $3f
	ld b, b                                          ; $4ace: $40
	add b                                            ; $4acf: $80
	ld a, [hl]                                       ; $4ad0: $7e
	nop                                              ; $4ad1: $00
	ld sp, hl                                        ; $4ad2: $f9
	nop                                              ; $4ad3: $00
	call z, $0c80                                    ; $4ad4: $cc $80 $0c
	rst AddAOntoHL                                          ; $4ad7: $ef
	ld d, d                                          ; $4ad8: $52
	sbc $ff                                          ; $4ad9: $de $ff
	rst $38                                          ; $4adb: $ff
	db $fc                                           ; $4adc: $fc
	db $fc                                           ; $4add: $fc
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	ldh a, [hDisp1_SCY]                                     ; $4ae0: $f0 $90
	ldh [$60], a                                     ; $4ae2: $e0 $60
	ret nc                                           ; $4ae4: $d0

	jr nc, jr_015_4a77                               ; $4ae5: $30 $90

	ldh a, [$78]                                     ; $4ae7: $f0 $78
	ld c, b                                          ; $4ae9: $48
	jr nc, jr_015_4b1c                               ; $4aea: $30 $30

	nop                                              ; $4aec: $00
	nop                                              ; $4aed: $00
	add sp, -$6d                                     ; $4aee: $e8 $93
	jr c, jr_015_4af2                                ; $4af0: $38 $00

jr_015_4af2:
	ld [hl], b                                       ; $4af2: $70
	jp nc, $0470                                     ; $4af3: $d2 $70 $04

	ld h, b                                          ; $4af6: $60
	ld [$0ce0], a                                    ; $4af7: $ea $e0 $0c
	nop                                              ; $4afa: $00
	jr @-$06                                         ; $4afb: $18 $f8

	ld e, $a0                                        ; $4afd: $1e $a0
	add hl, hl                                       ; $4aff: $29
	and b                                            ; $4b00: $a0
	ld e, e                                          ; $4b01: $5b
	ld b, b                                          ; $4b02: $40
	ld b, $80                                        ; $4b03: $06 $80
	cp c                                             ; $4b05: $b9
	nop                                              ; $4b06: $00
	db $fd                                           ; $4b07: $fd
	rst SubAFromDE                                          ; $4b08: $df
	ld b, $8a                                        ; $4b09: $06 $8a
	add hl, bc                                       ; $4b0b: $09
	rrca                                             ; $4b0c: $0f
	ld b, $07                                        ; $4b0d: $06 $07
	inc bc                                           ; $4b0f: $03
	inc bc                                           ; $4b10: $03
	inc b                                            ; $4b11: $04
	rlca                                             ; $4b12: $07
	dec b                                            ; $4b13: $05
	rlca                                             ; $4b14: $07
	add hl, bc                                       ; $4b15: $09
	rrca                                             ; $4b16: $0f
	add hl, bc                                       ; $4b17: $09
	rrca                                             ; $4b18: $0f
	dec bc                                           ; $4b19: $0b
	ld c, $0b                                        ; $4b1a: $0e $0b

jr_015_4b1c:
	rrca                                             ; $4b1c: $0f
	rlca                                             ; $4b1d: $07
	ld b, $05                                        ; $4b1e: $06 $05
	ld a, e                                          ; $4b20: $7b
	ldh a, [c]                                       ; $4b21: $f2
	add e                                            ; $4b22: $83
	inc bc                                           ; $4b23: $03
	ld [bc], a                                       ; $4b24: $02
	ld h, b                                          ; $4b25: $60
	ld h, b                                          ; $4b26: $60
	inc a                                            ; $4b27: $3c
	inc a                                            ; $4b28: $3c
	ld h, e                                          ; $4b29: $63
	ld a, a                                          ; $4b2a: $7f
	sub d                                            ; $4b2b: $92
	rst $38                                          ; $4b2c: $ff
	ld c, l                                          ; $4b2d: $4d
	rst $38                                          ; $4b2e: $ff
	ld [hl], e                                       ; $4b2f: $73
	rst $38                                          ; $4b30: $ff
	xor c                                            ; $4b31: $a9
	rst $38                                          ; $4b32: $ff
	inc [hl]                                         ; $4b33: $34
	rst SubAFromDE                                          ; $4b34: $df

jr_015_4b35:
	or h                                             ; $4b35: $b4
	rst SubAFromDE                                          ; $4b36: $df
	or [hl]                                          ; $4b37: $b6
	ld c, e                                          ; $4b38: $4b
	rst $38                                          ; $4b39: $ff
	pop bc                                           ; $4b3a: $c1
	ld a, a                                          ; $4b3b: $7f
	call $cbff                                       ; $4b3c: $cd $ff $cb
	ld a, e                                          ; $4b3f: $7b
	cp $9c                                           ; $4b40: $fe $9c
	ld sp, $83ff                                     ; $4b42: $31 $ff $83
	ei                                               ; $4b45: $fb
	rst SubAFromDE                                          ; $4b46: $df
	add b                                            ; $4b47: $80
	sbc d                                            ; $4b48: $9a
	ld b, b                                          ; $4b49: $40
	ret nz                                           ; $4b4a: $c0

	ld b, b                                          ; $4b4b: $40
	ret nz                                           ; $4b4c: $c0

	and b                                            ; $4b4d: $a0
	sbc $e0                                          ; $4b4e: $de $e0
	ld [hl], a                                       ; $4b50: $77
	ld hl, sp-$63                                    ; $4b51: $f8 $9d
	jr nz, jr_015_4b35                               ; $4b53: $20 $e0

	ld l, a                                          ; $4b55: $6f
	cp $77                                           ; $4b56: $fe $77
	db $f4                                           ; $4b58: $f4
	adc e                                            ; $4b59: $8b
	dec b                                            ; $4b5a: $05
	ld b, $0d                                        ; $4b5b: $06 $0d
	dec bc                                           ; $4b5d: $0b
	rrca                                             ; $4b5e: $0f
	add hl, bc                                       ; $4b5f: $09
	rlca                                             ; $4b60: $07
	rlca                                             ; $4b61: $07
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	ld bc, $0301                                     ; $4b64: $01 $01 $03
	ld [bc], a                                       ; $4b67: $02
	rlca                                             ; $4b68: $07
	inc b                                            ; $4b69: $04
	rlca                                             ; $4b6a: $07
	inc b                                            ; $4b6b: $04
	inc bc                                           ; $4b6c: $03
	ld [bc], a                                       ; $4b6d: $02
	db $dd                                           ; $4b6e: $dd
	ld bc, $029e                                     ; $4b6f: $01 $9e $02
	call c, $ff03                                    ; $4b72: $dc $03 $ff
	rst SubAFromDE                                          ; $4b75: $df
	rst $38                                          ; $4b76: $ff
	add c                                            ; $4b77: $81
	adc a                                            ; $4b78: $8f
	ld sp, hl                                        ; $4b79: $f9
	inc b                                            ; $4b7a: $04
	rst $38                                          ; $4b7b: $ff
	or e                                             ; $4b7c: $b3
	adc $ff                                          ; $4b7d: $ce $ff
	rst $38                                          ; $4b7f: $ff
	add [hl]                                         ; $4b80: $86
	cp $8a                                           ; $4b81: $fe $8a
	cp $ce                                           ; $4b83: $fe $ce
	ld a, d                                          ; $4b85: $7a
	cp $72                                           ; $4b86: $fe $72
	sbc $d2                                          ; $4b88: $de $d2
	cpl                                              ; $4b8a: $2f
	jp hl                                            ; $4b8b: $e9


	ld l, a                                          ; $4b8c: $6f
	jp hl                                            ; $4b8d: $e9


	rst GetHLinHL                                          ; $4b8e: $cf
	rst GetHLinHL                                          ; $4b8f: $cf
	sbc c                                            ; $4b90: $99
	sbc a                                            ; $4b91: $9f
	pop af                                           ; $4b92: $f1
	rst $38                                          ; $4b93: $ff
	ccf                                              ; $4b94: $3f
	ccf                                              ; $4b95: $3f
	ld [hl], a                                       ; $4b96: $77
	and [hl]                                         ; $4b97: $a6
	sbc $c0                                          ; $4b98: $de $c0
	sbc h                                            ; $4b9a: $9c
	ld b, b                                          ; $4b9b: $40
	add b                                            ; $4b9c: $80
	add b                                            ; $4b9d: $80
	rst AddAOntoHL                                          ; $4b9e: $ef
	ld [hl], a                                       ; $4b9f: $77
	db $ec                                           ; $4ba0: $ec
	dec bc                                           ; $4ba1: $0b
	ld h, b                                          ; $4ba2: $60
	sbc [hl]                                         ; $4ba3: $9e
	sub e                                            ; $4ba4: $93
	ld e, a                                          ; $4ba5: $5f
	add b                                            ; $4ba6: $80
	rst AddAOntoHL                                          ; $4ba7: $ef
	rst SubAFromDE                                          ; $4ba8: $df
	ld bc, $8043                                     ; $4ba9: $01 $43 $80
	adc [hl]                                         ; $4bac: $8e
	ld a, [$92fe]                                    ; $4bad: $fa $fe $92
	db $fc                                           ; $4bb0: $fc
	and h                                            ; $4bb1: $a4
	ld a, h                                          ; $4bb2: $7c
	ld h, h                                          ; $4bb3: $64
	ld a, $26                                        ; $4bb4: $3e $26
	dec a                                            ; $4bb6: $3d
	ccf                                              ; $4bb7: $3f
	rst SubAFromBC                                          ; $4bb8: $e7
	rst $38                                          ; $4bb9: $ff
	rst JumpTable                                          ; $4bba: $c7
	rst $38                                          ; $4bbb: $ff
	ld a, h                                          ; $4bbc: $7c
	ld a, h                                          ; $4bbd: $7c
	and b                                            ; $4bbe: $a0
	nop                                              ; $4bbf: $00
	ei                                               ; $4bc0: $fb
	rst SubAFromDE                                          ; $4bc1: $df
	ld bc, $0291                                     ; $4bc2: $01 $91 $02
	inc bc                                           ; $4bc5: $03
	rlca                                             ; $4bc6: $07
	rlca                                             ; $4bc7: $07
	ld [$330f], sp                                   ; $4bc8: $08 $0f $33
	ccf                                              ; $4bcb: $3f
	rra                                              ; $4bcc: $1f
	ld e, $0b                                        ; $4bcd: $1e $0b
	ld c, $07                                        ; $4bcf: $0e $07
	ld b, $de                                        ; $4bd1: $06 $de
	inc bc                                           ; $4bd3: $03
	ld a, a                                          ; $4bd4: $7f
	rst AddAOntoHL                                          ; $4bd5: $ef
	sbc $03                                          ; $4bd6: $de $03
	rst SubAFromDE                                          ; $4bd8: $df
	ld bc, $36df                                     ; $4bd9: $01 $df $36
	add a                                            ; $4bdc: $87
	ld a, a                                          ; $4bdd: $7f
	ld c, c                                          ; $4bde: $49
	ld a, a                                          ; $4bdf: $7f
	ld a, l                                          ; $4be0: $7d

jr_015_4be1:
	db $db                                           ; $4be1: $db
	rst $38                                          ; $4be2: $ff
	ld d, c                                          ; $4be3: $51
	rst $38                                          ; $4be4: $ff
	ld a, $ff                                        ; $4be5: $3e $ff
	jp hl                                            ; $4be7: $e9


	rst $38                                          ; $4be8: $ff
	call c, $fe77                                    ; $4be9: $dc $77 $fe
	ld h, e                                          ; $4bec: $63
	rst $38                                          ; $4bed: $ff
	ld hl, $cdff                                     ; $4bee: $21 $ff $cd
	ld [hl], a                                       ; $4bf1: $77
	adc $ff                                          ; $4bf2: $ce $ff
	call z, $fe7b                                    ; $4bf4: $cc $7b $fe
	adc l                                            ; $4bf7: $8d
	ld sp, $83ff                                     ; $4bf8: $31 $ff $83
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	ret nz                                           ; $4bfd: $c0

	ret nz                                           ; $4bfe: $c0

	jr nz, jr_015_4be1                               ; $4bff: $20 $e0

	db $10                                           ; $4c01: $10
	ldh a, [hDisp1_SCY]                                     ; $4c02: $f0 $90
	ldh a, [rOBP0]                                   ; $4c04: $f0 $48
	ld hl, sp+$28                                    ; $4c06: $f8 $28
	ld hl, sp-$58                                    ; $4c08: $f8 $a8
	ld [hl], e                                       ; $4c0a: $73
	cp $92                                           ; $4c0b: $fe $92
	ld l, b                                          ; $4c0d: $68
	ld hl, sp-$18                                    ; $4c0e: $f8 $e8
	ld hl, sp-$18                                    ; $4c10: $f8 $e8
	cp b                                             ; $4c12: $b8
	ldh a, [$b0]                                     ; $4c13: $f0 $b0
	ret nc                                           ; $4c15: $d0

	ldh a, [$8c]                                     ; $4c16: $f0 $8c
	db $fc                                           ; $4c18: $fc
	ld [bc], a                                       ; $4c19: $02
	ld a, e                                          ; $4c1a: $7b
	or a                                             ; $4c1b: $b7
	sbc c                                            ; $4c1c: $99
	inc b                                            ; $4c1d: $04
	rlca                                             ; $4c1e: $07
	dec b                                            ; $4c1f: $05
	rlca                                             ; $4c20: $07
	rlca                                             ; $4c21: $07
	inc b                                            ; $4c22: $04
	ld [hl], a                                       ; $4c23: $77
	or d                                             ; $4c24: $b2
	db $dd                                           ; $4c25: $dd
	ld bc, $dff9                                     ; $4c26: $01 $f9 $df
	ld bc, $03df                                     ; $4c29: $01 $df $03
	rst $38                                          ; $4c2c: $ff
	add b                                            ; $4c2d: $80
	db $fc                                           ; $4c2e: $fc
	rst $38                                          ; $4c2f: $ff
	sub d                                            ; $4c30: $92
	rst $38                                          ; $4c31: $ff
	ld [hl-], a                                      ; $4c32: $32
	rst AddAOntoHL                                          ; $4c33: $ef
	ld [hl-], a                                      ; $4c34: $32
	rst AddAOntoHL                                          ; $4c35: $ef
	cp $ff                                           ; $4c36: $fe $ff
	or a                                             ; $4c38: $b7
	call c, $df33                                    ; $4c39: $dc $33 $df
	add hl, de                                       ; $4c3c: $19
	rst AddAOntoHL                                          ; $4c3d: $ef
	add hl, de                                       ; $4c3e: $19
	rst AddAOntoHL                                          ; $4c3f: $ef
	cp $fe                                           ; $4c40: $fe $fe
	rst $38                                          ; $4c42: $ff
	sbc c                                            ; $4c43: $99
	rst $38                                          ; $4c44: $ff
	rst $38                                          ; $4c45: $ff
	adc c                                            ; $4c46: $89
	rst $38                                          ; $4c47: $ff
	add hl, de                                       ; $4c48: $19
	rst $38                                          ; $4c49: $ff
	pop af                                           ; $4c4a: $f1
	rst $38                                          ; $4c4b: $ff
	ccf                                              ; $4c4c: $3f
	sbc b                                            ; $4c4d: $98
	ccf                                              ; $4c4e: $3f
	ld hl, sp-$08                                    ; $4c4f: $f8 $f8
	ldh [$e0], a                                     ; $4c51: $e0 $e0
	ld b, b                                          ; $4c53: $40
	ret nz                                           ; $4c54: $c0

	ld [hl], a                                       ; $4c55: $77
	cp $df                                           ; $4c56: $fe $df
	ret nz                                           ; $4c58: $c0

	rst SubAFromDE                                          ; $4c59: $df
	add b                                            ; $4c5a: $80
	di                                               ; $4c5b: $f3
	ld [hl], a                                       ; $4c5c: $77
	ldh a, [$8d]                                     ; $4c5d: $f0 $8d
	ld bc, $dffb                                     ; $4c5f: $01 $fb $df
	ld bc, $028f                                     ; $4c62: $01 $8f $02
	inc bc                                           ; $4c65: $03
	rlca                                             ; $4c66: $07
	rlca                                             ; $4c67: $07
	ld [$330f], sp                                   ; $4c68: $08 $0f $33
	ccf                                              ; $4c6b: $3f
	rra                                              ; $4c6c: $1f
	ld e, $0b                                        ; $4c6d: $1e $0b
	ld c, $07                                        ; $4c6f: $0e $07
	ld b, $03                                        ; $4c71: $06 $03
	ld [bc], a                                       ; $4c73: $02
	sbc $03                                          ; $4c74: $de $03
	ld a, e                                          ; $4c76: $7b
	db $fc                                           ; $4c77: $fc
	rst SubAFromDE                                          ; $4c78: $df
	ld bc, $36df                                     ; $4c79: $01 $df $36
	add b                                            ; $4c7c: $80
	ld a, a                                          ; $4c7d: $7f
	ld c, c                                          ; $4c7e: $49
	ld a, a                                          ; $4c7f: $7f
	ld a, l                                          ; $4c80: $7d
	db $db                                           ; $4c81: $db

jr_015_4c82:
	rst $38                                          ; $4c82: $ff
	ld d, c                                          ; $4c83: $51
	rst $38                                          ; $4c84: $ff
	ld a, $ff                                        ; $4c85: $3e $ff
	jp hl                                            ; $4c87: $e9


	rst $38                                          ; $4c88: $ff
	call c, $fe77                                    ; $4c89: $dc $77 $fe
	ld h, e                                          ; $4c8c: $63
	rst $38                                          ; $4c8d: $ff
	ld hl, $01ff                                     ; $4c8e: $21 $ff $01
	rst $38                                          ; $4c91: $ff
	adc b                                            ; $4c92: $88
	ld [hl], a                                       ; $4c93: $77
	adc $ff                                          ; $4c94: $ce $ff
	call z, $31ff                                    ; $4c96: $cc $ff $31
	rst $38                                          ; $4c99: $ff
	add e                                            ; $4c9a: $83
	nop                                              ; $4c9b: $00
	sub c                                            ; $4c9c: $91
	nop                                              ; $4c9d: $00
	ret nz                                           ; $4c9e: $c0

	ret nz                                           ; $4c9f: $c0

	jr nz, jr_015_4c82                               ; $4ca0: $20 $e0

	db $10                                           ; $4ca2: $10
	ldh a, [hDisp1_SCY]                                     ; $4ca3: $f0 $90
	ldh a, [rOBP0]                                   ; $4ca5: $f0 $48
	ld hl, sp+$28                                    ; $4ca7: $f8 $28
	ld hl, sp-$58                                    ; $4ca9: $f8 $a8
	ld [hl], e                                       ; $4cab: $73
	cp $92                                           ; $4cac: $fe $92
	ld l, b                                          ; $4cae: $68
	ld hl, sp-$18                                    ; $4caf: $f8 $e8
	ld hl, sp-$18                                    ; $4cb1: $f8 $e8
	cp b                                             ; $4cb3: $b8
	ldh a, [$b0]                                     ; $4cb4: $f0 $b0
	ret nc                                           ; $4cb6: $d0

	ldh a, [$8c]                                     ; $4cb7: $f0 $8c
	db $fc                                           ; $4cb9: $fc
	ld [bc], a                                       ; $4cba: $02
	ld a, e                                          ; $4cbb: $7b
	cp c                                             ; $4cbc: $b9
	sbc e                                            ; $4cbd: $9b
	inc b                                            ; $4cbe: $04
	rlca                                             ; $4cbf: $07
	rlca                                             ; $4cc0: $07
	dec b                                            ; $4cc1: $05
	ld l, a                                          ; $4cc2: $6f
	or d                                             ; $4cc3: $b2
	db $dd                                           ; $4cc4: $dd
	ld bc, $dff9                                     ; $4cc5: $01 $f9 $df
	ld bc, $03df                                     ; $4cc8: $01 $df $03
	rst $38                                          ; $4ccb: $ff
	add b                                            ; $4ccc: $80
	db $fc                                           ; $4ccd: $fc
	rst $38                                          ; $4cce: $ff
	sbc d                                            ; $4ccf: $9a
	rst FarCall                                          ; $4cd0: $f7
	ld [hl-], a                                      ; $4cd1: $32
	rst AddAOntoHL                                          ; $4cd2: $ef
	ld [hl-], a                                      ; $4cd3: $32
	rst AddAOntoHL                                          ; $4cd4: $ef
	rst $38                                          ; $4cd5: $ff
	cp $b7                                           ; $4cd6: $fe $b7
	db $dd                                           ; $4cd8: $dd

jr_015_4cd9:
	inc sp                                           ; $4cd9: $33
	rst SubAFromDE                                          ; $4cda: $df
	add hl, de                                       ; $4cdb: $19
	rst AddAOntoHL                                          ; $4cdc: $ef
	add hl, de                                       ; $4cdd: $19
	rst AddAOntoHL                                          ; $4cde: $ef
	cp $fe                                           ; $4cdf: $fe $fe
	rst $38                                          ; $4ce1: $ff
	sbc c                                            ; $4ce2: $99
	rst $38                                          ; $4ce3: $ff
	rst $38                                          ; $4ce4: $ff
	adc c                                            ; $4ce5: $89
	rst $38                                          ; $4ce6: $ff
	add hl, de                                       ; $4ce7: $19
	rst $38                                          ; $4ce8: $ff
	pop af                                           ; $4ce9: $f1
	rst $38                                          ; $4cea: $ff
	ccf                                              ; $4ceb: $3f
	sub a                                            ; $4cec: $97
	ccf                                              ; $4ced: $3f
	ld hl, sp-$08                                    ; $4cee: $f8 $f8
	ld h, b                                          ; $4cf0: $60
	ldh [rLCDC], a                                   ; $4cf1: $e0 $40
	ret nz                                           ; $4cf3: $c0

	ld b, b                                          ; $4cf4: $40
	sbc $c0                                          ; $4cf5: $de $c0
	rst SubAFromDE                                          ; $4cf7: $df
	add b                                            ; $4cf8: $80
	pop af                                           ; $4cf9: $f1
	ld e, a                                          ; $4cfa: $5f
	xor $3f                                          ; $4cfb: $ee $3f
	ld b, b                                          ; $4cfd: $40
	rst SubAFromDE                                          ; $4cfe: $df
	dec de                                           ; $4cff: $1b
	sbc c                                            ; $4d00: $99
	dec sp                                           ; $4d01: $3b
	ld a, [hl+]                                      ; $4d02: $2a
	ld [hl], a                                       ; $4d03: $77
	ld d, l                                          ; $4d04: $55
	ld h, a                                          ; $4d05: $67
	ld h, h                                          ; $4d06: $64
	dec hl                                           ; $4d07: $2b
	ld b, b                                          ; $4d08: $40
	sbc l                                            ; $4d09: $9d
	nop                                              ; $4d0a: $00
	rst $38                                          ; $4d0b: $ff
	ld [hl], a                                       ; $4d0c: $77
	ld b, b                                          ; $4d0d: $40
	sbc h                                            ; $4d0e: $9c
	or a                                             ; $4d0f: $b7
	rst $38                                          ; $4d10: $ff
	add h                                            ; $4d11: $84
	rla                                              ; $4d12: $17
	ld b, b                                          ; $4d13: $40
	sub a                                            ; $4d14: $97
	call nc, $8ef4                                   ; $4d15: $d4 $f4 $8e
	ld a, [$080f]                                    ; $4d18: $fa $0f $08

jr_015_4d1b:
	rrca                                             ; $4d1b: $0f
	add hl, bc                                       ; $4d1c: $09
	ld a, e                                          ; $4d1d: $7b
	ld b, d                                          ; $4d1e: $42
	ld a, e                                          ; $4d1f: $7b
	ld d, [hl]                                       ; $4d20: $56
	ld [hl], a                                       ; $4d21: $77
	sbc d                                            ; $4d22: $9a
	ccf                                              ; $4d23: $3f
	ld b, b                                          ; $4d24: $40
	sub d                                            ; $4d25: $92
	rst $38                                          ; $4d26: $ff
	db $fc                                           ; $4d27: $fc
	sbc a                                            ; $4d28: $9f
	db $f4                                           ; $4d29: $f4
	inc sp                                           ; $4d2a: $33
	xor $b1                                          ; $4d2b: $ee $b1
	rst AddAOntoHL                                          ; $4d2d: $ef
	rst $38                                          ; $4d2e: $ff
	rst $38                                          ; $4d2f: $ff
	or e                                             ; $4d30: $b3
	rst SubAFromDE                                          ; $4d31: $df
	ld sp, $403b                                     ; $4d32: $31 $3b $40
	sbc b                                            ; $4d35: $98
	rst $38                                          ; $4d36: $ff
	db $fd                                           ; $4d37: $fd
	and a                                            ; $4d38: $a7
	ld h, l                                          ; $4d39: $65
	ld [hl+], a                                      ; $4d3a: $22
	ldh [c], a                                       ; $4d3b: $e2
	ld b, b                                          ; $4d3c: $40
	ld d, e                                          ; $4d3d: $53
	ld b, d                                          ; $4d3e: $42
	rst SubAFromDE                                          ; $4d3f: $df
	jr nc, jr_015_4cd9                               ; $4d40: $30 $97

	jr c, jr_015_4d6c                                ; $4d42: $38 $28

	inc e                                            ; $4d44: $1c
	inc d                                            ; $4d45: $14
	inc e                                            ; $4d46: $1c
	inc d                                            ; $4d47: $14
	adc b                                            ; $4d48: $88
	adc b                                            ; $4d49: $88
	rra                                              ; $4d4a: $1f
	ld b, b                                          ; $4d4b: $40
	halt                                             ; $4d4c: $76
	add b                                            ; $4d4d: $80
	sbc e                                            ; $4d4e: $9b
	daa                                              ; $4d4f: $27
	dec h                                            ; $4d50: $25
	ld l, a                                          ; $4d51: $6f

jr_015_4d52:
	ld c, h                                          ; $4d52: $4c
	dec bc                                           ; $4d53: $0b
	ld b, b                                          ; $4d54: $40
	sbc b                                            ; $4d55: $98
	or h                                             ; $4d56: $b4
	rst AddAOntoHL                                          ; $4d57: $ef
	xor b                                            ; $4d58: $a8
	rst AddAOntoHL                                          ; $4d59: $ef
	xor c                                            ; $4d5a: $a9
	ld h, a                                          ; $4d5b: $67
	ld h, l                                          ; $4d5c: $65
	ld d, a                                          ; $4d5d: $57
	ld h, b                                          ; $4d5e: $60
	rst SubAFromDE                                          ; $4d5f: $df
	ld [$a67f], sp                                   ; $4d60: $08 $7f $a6
	ld a, a                                          ; $4d63: $7f
	and b                                            ; $4d64: $a0
	ld a, a                                          ; $4d65: $7f
	cp $df                                           ; $4d66: $fe $df
	ld de, $ea77                                     ; $4d68: $11 $77 $ea
	rst SubAFromDE                                          ; $4d6b: $df

jr_015_4d6c:
	ld hl, sp-$6f                                    ; $4d6c: $f8 $91
	and b                                            ; $4d6e: $a0
	ld h, b                                          ; $4d6f: $60
	jr nz, jr_015_4d52                               ; $4d70: $20 $e0

	ld c, h                                          ; $4d72: $4c
	call z, $8a8e                                    ; $4d73: $cc $8e $8a
	rlca                                             ; $4d76: $07
	dec b                                            ; $4d77: $05
	rlca                                             ; $4d78: $07
	dec b                                            ; $4d79: $05
	ld [bc], a                                       ; $4d7a: $02
	ld [bc], a                                       ; $4d7b: $02
	ld l, $c0                                        ; $4d7c: $2e $c0
	push af                                          ; $4d7e: $f5
	rst SubAFromDE                                          ; $4d7f: $df
	jr c, jr_015_4d1b                                ; $4d80: $38 $99

	ld a, [hl]                                       ; $4d82: $7e
	ld b, [hl]                                       ; $4d83: $46
	rst $38                                          ; $4d84: $ff
	add c                                            ; $4d85: $81
	ld a, [hl]                                       ; $4d86: $7e
	ld a, [hl]                                       ; $4d87: $7e
	jp hl                                            ; $4d88: $e9


	rst SubAFromDE                                          ; $4d89: $df
	ld a, h                                          ; $4d8a: $7c
	ld a, [hl]                                       ; $4d8b: $7e
	ld a, [bc]                                       ; $4d8c: $0a
	ld a, e                                          ; $4d8d: $7b
	add b                                            ; $4d8e: $80
	ld a, a                                          ; $4d8f: $7f
	db $fd                                           ; $4d90: $fd
	ld [$1fdf], a                                    ; $4d91: $ea $df $1f
	sub a                                            ; $4d94: $97
	ld a, a                                          ; $4d95: $7f
	ld h, b                                          ; $4d96: $60
	rst $38                                          ; $4d97: $ff
	add b                                            ; $4d98: $80
	ld a, a                                          ; $4d99: $7f
	ld b, c                                          ; $4d9a: $41
	ld a, $3e                                        ; $4d9b: $3e $3e
	db $eb                                           ; $4d9d: $eb
	rst SubAFromDE                                          ; $4d9e: $df
	add b                                            ; $4d9f: $80
	sbc c                                            ; $4da0: $99
	ld hl, sp+$78                                    ; $4da1: $f8 $78
	cp $06                                           ; $4da3: $fe $06
	rst $38                                          ; $4da5: $ff
	pop bc                                           ; $4da6: $c1
	ld l, a                                          ; $4da7: $6f
	ldh [$6d], a                                     ; $4da8: $e0 $6d
	ldh [$7f], a                                     ; $4daa: $e0 $7f
	ld h, l                                          ; $4dac: $65
	sbc l                                            ; $4dad: $9d
	rlca                                             ; $4dae: $07
	inc b                                            ; $4daf: $04
	dec h                                            ; $4db0: $25
	ldh [$9d], a                                     ; $4db1: $e0 $9d
	sub d                                            ; $4db3: $92
	rst $38                                          ; $4db4: $ff
	ld [hl], l                                       ; $4db5: $75
	ldh [$7e], a                                     ; $4db6: $e0 $7e
	xor e                                            ; $4db8: $ab
	sbc l                                            ; $4db9: $9d
	or a                                             ; $4dba: $b7
	call c, $e02d                                    ; $4dbb: $dc $2d $e0
	rst SubAFromDE                                          ; $4dbe: $df
	ldh [$75], a                                     ; $4dbf: $e0 $75

jr_015_4dc1:
	ldh [$35], a                                     ; $4dc1: $e0 $35
	sbc $77                                          ; $4dc3: $de $77
	ldh a, [$1f]                                     ; $4dc5: $f0 $1f
	and b                                            ; $4dc7: $a0
	ld [hl], a                                       ; $4dc8: $77
	sbc [hl]                                         ; $4dc9: $9e
	ld e, l                                          ; $4dca: $5d
	add b                                            ; $4dcb: $80
	ld d, a                                          ; $4dcc: $57
	and b                                            ; $4dcd: $a0
	sub e                                            ; $4dce: $93
	ld a, h                                          ; $4dcf: $7c
	ld h, h                                          ; $4dd0: $64
	ld a, $26                                        ; $4dd1: $3e $26
	dec a                                            ; $4dd3: $3d
	ccf                                              ; $4dd4: $3f
	rst SubAFromBC                                          ; $4dd5: $e7
	rst $38                                          ; $4dd6: $ff
	rst JumpTable                                          ; $4dd7: $c7
	rst $38                                          ; $4dd8: $ff
	ld a, h                                          ; $4dd9: $7c
	ld a, h                                          ; $4dda: $7c
	ld a, [hl+]                                      ; $4ddb: $2a
	ld h, b                                          ; $4ddc: $60
	ld [hl], b                                       ; $4ddd: $70
	ldh [c], a                                       ; $4dde: $e2
	jr nz, jr_015_4dc1                               ; $4ddf: $20 $e0

	sbc [hl]                                         ; $4de1: $9e
	call $e270                                       ; $4de2: $cd $70 $e2
	ld [hl], b                                       ; $4de5: $70
	ldh [$0b], a                                     ; $4de6: $e0 $0b
	ldh [$9e], a                                     ; $4de8: $e0 $9e
	or e                                             ; $4dea: $b3
	add $00                                          ; $4deb: $c6 $00
	ei                                               ; $4ded: $fb
	rst SubAFromDE                                          ; $4dee: $df
	ld bc, $0291                                     ; $4def: $01 $91 $02
	inc bc                                           ; $4df2: $03
	rlca                                             ; $4df3: $07
	rlca                                             ; $4df4: $07
	ld [$330f], sp                                   ; $4df5: $08 $0f $33
	ccf                                              ; $4df8: $3f
	rra                                              ; $4df9: $1f
	ld e, $0b                                        ; $4dfa: $1e $0b
	ld c, $07                                        ; $4dfc: $0e $07
	ld b, $de                                        ; $4dfe: $06 $de
	inc bc                                           ; $4e00: $03
	ld a, a                                          ; $4e01: $7f
	rst AddAOntoHL                                          ; $4e02: $ef
	sbc $03                                          ; $4e03: $de $03
	rst SubAFromDE                                          ; $4e05: $df
	ld bc, $36df                                     ; $4e06: $01 $df $36
	add a                                            ; $4e09: $87
	ld a, a                                          ; $4e0a: $7f
	ld c, c                                          ; $4e0b: $49
	ld a, a                                          ; $4e0c: $7f
	ld a, l                                          ; $4e0d: $7d

jr_015_4e0e:
	db $db                                           ; $4e0e: $db
	rst $38                                          ; $4e0f: $ff
	ld d, c                                          ; $4e10: $51
	rst $38                                          ; $4e11: $ff
	ld a, $ff                                        ; $4e12: $3e $ff
	jp hl                                            ; $4e14: $e9


	rst $38                                          ; $4e15: $ff
	call c, $fe77                                    ; $4e16: $dc $77 $fe
	ld h, e                                          ; $4e19: $63
	rst $38                                          ; $4e1a: $ff
	ld hl, $cdff                                     ; $4e1b: $21 $ff $cd
	ld [hl], a                                       ; $4e1e: $77
	adc $ff                                          ; $4e1f: $ce $ff
	call z, $fe7b                                    ; $4e21: $cc $7b $fe
	adc l                                            ; $4e24: $8d
	ld sp, $83ff                                     ; $4e25: $31 $ff $83
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	ret nz                                           ; $4e2a: $c0

	ret nz                                           ; $4e2b: $c0

	jr nz, jr_015_4e0e                               ; $4e2c: $20 $e0

	db $10                                           ; $4e2e: $10
	ldh a, [hDisp1_SCY]                                     ; $4e2f: $f0 $90
	ldh a, [rOBP0]                                   ; $4e31: $f0 $48
	ld hl, sp+$28                                    ; $4e33: $f8 $28
	ld hl, sp-$58                                    ; $4e35: $f8 $a8
	ld [hl], e                                       ; $4e37: $73
	cp $92                                           ; $4e38: $fe $92
	ld l, b                                          ; $4e3a: $68
	ld hl, sp-$18                                    ; $4e3b: $f8 $e8
	ld hl, sp-$18                                    ; $4e3d: $f8 $e8
	cp b                                             ; $4e3f: $b8
	ldh a, [$b0]                                     ; $4e40: $f0 $b0
	ret nc                                           ; $4e42: $d0

	ldh a, [$8c]                                     ; $4e43: $f0 $8c
	db $fc                                           ; $4e45: $fc
	ld [bc], a                                       ; $4e46: $02
	ld a, e                                          ; $4e47: $7b
	or a                                             ; $4e48: $b7
	sbc c                                            ; $4e49: $99
	inc b                                            ; $4e4a: $04
	rlca                                             ; $4e4b: $07
	dec b                                            ; $4e4c: $05
	rlca                                             ; $4e4d: $07
	rlca                                             ; $4e4e: $07
	inc b                                            ; $4e4f: $04
	ld [hl], a                                       ; $4e50: $77
	or d                                             ; $4e51: $b2
	db $dd                                           ; $4e52: $dd
	ld bc, $dff9                                     ; $4e53: $01 $f9 $df
	ld bc, $03df                                     ; $4e56: $01 $df $03
	rst $38                                          ; $4e59: $ff
	add b                                            ; $4e5a: $80
	db $fc                                           ; $4e5b: $fc
	rst $38                                          ; $4e5c: $ff
	sub d                                            ; $4e5d: $92
	rst $38                                          ; $4e5e: $ff
	ld [hl-], a                                      ; $4e5f: $32
	rst AddAOntoHL                                          ; $4e60: $ef
	ld [hl-], a                                      ; $4e61: $32
	rst AddAOntoHL                                          ; $4e62: $ef
	cp $ff                                           ; $4e63: $fe $ff
	or a                                             ; $4e65: $b7
	call c, $df33                                    ; $4e66: $dc $33 $df
	add hl, de                                       ; $4e69: $19
	rst AddAOntoHL                                          ; $4e6a: $ef
	add hl, de                                       ; $4e6b: $19
	rst AddAOntoHL                                          ; $4e6c: $ef
	cp $fe                                           ; $4e6d: $fe $fe
	rst $38                                          ; $4e6f: $ff
	sbc c                                            ; $4e70: $99
	rst $38                                          ; $4e71: $ff
	rst $38                                          ; $4e72: $ff
	adc c                                            ; $4e73: $89
	rst $38                                          ; $4e74: $ff
	add hl, de                                       ; $4e75: $19
	rst $38                                          ; $4e76: $ff
	pop af                                           ; $4e77: $f1
	rst $38                                          ; $4e78: $ff
	ccf                                              ; $4e79: $3f
	sbc b                                            ; $4e7a: $98
	ccf                                              ; $4e7b: $3f
	ld hl, sp-$08                                    ; $4e7c: $f8 $f8
	ldh [$e0], a                                     ; $4e7e: $e0 $e0
	ld b, b                                          ; $4e80: $40
	ret nz                                           ; $4e81: $c0

	ld [hl], a                                       ; $4e82: $77
	cp $df                                           ; $4e83: $fe $df
	ret nz                                           ; $4e85: $c0

	rst SubAFromDE                                          ; $4e86: $df
	add b                                            ; $4e87: $80
	di                                               ; $4e88: $f3
	ld [hl], a                                       ; $4e89: $77
	ldh a, [$1f]                                     ; $4e8a: $f0 $1f
	and b                                            ; $4e8c: $a0
	ld [hl], a                                       ; $4e8d: $77
	sbc [hl]                                         ; $4e8e: $9e
	ld [hl], a                                       ; $4e8f: $77
	and b                                            ; $4e90: $a0
	sbc l                                            ; $4e91: $9d
	sbc d                                            ; $4e92: $9a
	rst FarCall                                          ; $4e93: $f7
	ld b, a                                          ; $4e94: $47
	and b                                            ; $4e95: $a0
	sub e                                            ; $4e96: $93
	ld a, h                                          ; $4e97: $7c
	ld h, h                                          ; $4e98: $64
	ld a, $26                                        ; $4e99: $3e $26
	dec a                                            ; $4e9b: $3d
	ccf                                              ; $4e9c: $3f
	rst SubAFromBC                                          ; $4e9d: $e7
	rst $38                                          ; $4e9e: $ff
	rst JumpTable                                          ; $4e9f: $c7
	rst $38                                          ; $4ea0: $ff
	ld a, h                                          ; $4ea1: $7c
	ld a, h                                          ; $4ea2: $7c
	inc sp                                           ; $4ea3: $33
	jr nz, @-$66                                     ; $4ea4: $20 $98

	pop bc                                           ; $4ea6: $c1
	ld a, a                                          ; $4ea7: $7f
	call z, $ceff                                    ; $4ea8: $cc $ff $ce
	rst $38                                          ; $4eab: $ff
	jp z, $207b                                      ; $4eac: $ca $7b $20

	sbc [hl]                                         ; $4eaf: $9e
	sub e                                            ; $4eb0: $93
	and [hl]                                         ; $4eb1: $a6
	nop                                              ; $4eb2: $00
	ei                                               ; $4eb3: $fb
	rst SubAFromDE                                          ; $4eb4: $df
	rlca                                             ; $4eb5: $07
	sub h                                            ; $4eb6: $94
	ld [$060f], sp                                   ; $4eb7: $08 $0f $06
	rlca                                             ; $4eba: $07
	dec b                                            ; $4ebb: $05
	rlca                                             ; $4ebc: $07
	ld a, [bc]                                       ; $4ebd: $0a
	rrca                                             ; $4ebe: $0f
	inc c                                            ; $4ebf: $0c
	rrca                                             ; $4ec0: $0f
	dec c                                            ; $4ec1: $0d
	ld a, e                                          ; $4ec2: $7b
	cp $7f                                           ; $4ec3: $fe $7f
	or $9d                                           ; $4ec5: $f6 $9d
	ld [bc], a                                       ; $4ec7: $02
	inc bc                                           ; $4ec8: $03
	db $db                                           ; $4ec9: $db
	ld bc, $dffd                                     ; $4eca: $01 $fd $df
	db $fc                                           ; $4ecd: $fc
	add l                                            ; $4ece: $85
	dec bc                                           ; $4ecf: $0b
	rst $38                                          ; $4ed0: $ff

jr_015_4ed1:
	inc b                                            ; $4ed1: $04
	rst $38                                          ; $4ed2: $ff

jr_015_4ed3:
	ld [hl], $ff                                     ; $4ed3: $36 $ff
	ld c, l                                          ; $4ed5: $4d
	rst $38                                          ; $4ed6: $ff
	adc b                                            ; $4ed7: $88
	rst $38                                          ; $4ed8: $ff
	sbc l                                            ; $4ed9: $9d
	rst FarCall                                          ; $4eda: $f7
	ld a, $e3                                        ; $4edb: $3e $e3
	ccf                                              ; $4edd: $3f
	rst AddAOntoHL                                          ; $4ede: $ef
	ld [hl], a                                       ; $4edf: $77
	call z, $cc7f                                    ; $4ee0: $cc $7f $cc
	rst $38                                          ; $4ee3: $ff
	call z, $31ff                                    ; $4ee4: $cc $ff $31
	rst $38                                          ; $4ee7: $ff
	add e                                            ; $4ee8: $83
	ei                                               ; $4ee9: $fb
	rst SubAFromDE                                          ; $4eea: $df
	add b                                            ; $4eeb: $80
	sub h                                            ; $4eec: $94
	ld b, b                                          ; $4eed: $40
	ret nz                                           ; $4eee: $c0

	jr nz, jr_015_4ed1                               ; $4eef: $20 $e0

	jr nz, jr_015_4ed3                               ; $4ef1: $20 $e0

	sub b                                            ; $4ef3: $90
	ldh a, [$50]                                     ; $4ef4: $f0 $50
	ldh a, [$b0]                                     ; $4ef6: $f0 $b0
	ld a, e                                          ; $4ef8: $7b
	db $fc                                           ; $4ef9: $fc
	rst SubAFromDE                                          ; $4efa: $df
	ldh [$9e], a                                     ; $4efb: $e0 $9e
	and b                                            ; $4efd: $a0
	ld a, e                                          ; $4efe: $7b
	cp $7f                                           ; $4eff: $fe $7f
	db $ec                                           ; $4f01: $ec
	ld a, a                                          ; $4f02: $7f
	cp $9a                                           ; $4f03: $fe $9a
	inc bc                                           ; $4f05: $03
	ld [bc], a                                       ; $4f06: $02
	rlca                                             ; $4f07: $07
	inc b                                            ; $4f08: $04
	rlca                                             ; $4f09: $07
	ld a, e                                          ; $4f0a: $7b
	and [hl]                                         ; $4f0b: $a6
	ld [hl], a                                       ; $4f0c: $77
	and h                                            ; $4f0d: $a4
	ld a, a                                          ; $4f0e: $7f
	xor b                                            ; $4f0f: $a8
	sbc h                                            ; $4f10: $9c
	dec bc                                           ; $4f11: $0b
	rrca                                             ; $4f12: $0f
	add hl, bc                                       ; $4f13: $09
	ld a, e                                          ; $4f14: $7b
	cp $84                                           ; $4f15: $fe $84
	dec c                                            ; $4f17: $0d
	dec bc                                           ; $4f18: $0b
	rlca                                             ; $4f19: $07
	dec b                                            ; $4f1a: $05
	ld [bc], a                                       ; $4f1b: $02
	ld [bc], a                                       ; $4f1c: $02
	ld bc, $0301                                     ; $4f1d: $01 $01 $03

jr_015_4f20:
	inc bc                                           ; $4f20: $03
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	rst $38                                          ; $4f23: $ff
	db $fc                                           ; $4f24: $fc
	sub e                                            ; $4f25: $93
	xor $01                                          ; $4f26: $ee $01
	rst $38                                          ; $4f28: $ff
	rst AddAOntoHL                                          ; $4f29: $ef
	add hl, sp                                       ; $4f2a: $39
	rst SubAFromHL                                          ; $4f2b: $d7
	add hl, sp                                       ; $4f2c: $39
	cp $ff                                           ; $4f2d: $fe $ff
	add d                                            ; $4f2f: $82
	rst $38                                          ; $4f30: $ff
	ld bc, $fe7b                                     ; $4f31: $01 $7b $fe
	adc a                                            ; $4f34: $8f
	add e                                            ; $4f35: $83
	ld a, l                                          ; $4f36: $7d
	rst $38                                          ; $4f37: $ff
	add e                                            ; $4f38: $83
	rst $38                                          ; $4f39: $ff
	rst $38                                          ; $4f3a: $ff
	cp $92                                           ; $4f3b: $fe $92
	ccf                                              ; $4f3d: $3f
	rst $38                                          ; $4f3e: $ff
	pop af                                           ; $4f3f: $f1
	rst $38                                          ; $4f40: $ff
	ccf                                              ; $4f41: $3f
	ccf                                              ; $4f42: $3f
	ret nz                                           ; $4f43: $c0

	ld b, b                                          ; $4f44: $40
	ld a, e                                          ; $4f45: $7b
	xor c                                            ; $4f46: $a9
	ld a, e                                          ; $4f47: $7b
	db $fd                                           ; $4f48: $fd
	ld l, a                                          ; $4f49: $6f
	and h                                            ; $4f4a: $a4
	ld l, a                                          ; $4f4b: $6f
	db $fc                                           ; $4f4c: $fc
	sbc c                                            ; $4f4d: $99
	jr nc, jr_015_4f20                               ; $4f4e: $30 $d0

	ldh [rAUD4LEN], a                                ; $4f50: $e0 $20
	ret nz                                           ; $4f52: $c0

	ret nz                                           ; $4f53: $c0

	ld [hl], a                                       ; $4f54: $77
	adc d                                            ; $4f55: $8a
	rst $38                                          ; $4f56: $ff
	inc d                                            ; $4f57: $14
	ld [bc], a                                       ; $4f58: $02
	ei                                               ; $4f59: $fb
	rst SubAFromDE                                          ; $4f5a: $df
	rlca                                             ; $4f5b: $07
	sub h                                            ; $4f5c: $94
	ld [$060f], sp                                   ; $4f5d: $08 $0f $06
	rlca                                             ; $4f60: $07
	dec b                                            ; $4f61: $05
	rlca                                             ; $4f62: $07
	ld a, [bc]                                       ; $4f63: $0a
	rrca                                             ; $4f64: $0f
	inc c                                            ; $4f65: $0c
	rrca                                             ; $4f66: $0f
	dec c                                            ; $4f67: $0d
	ld a, e                                          ; $4f68: $7b
	cp $7f                                           ; $4f69: $fe $7f
	or $9d                                           ; $4f6b: $f6 $9d
	ld [bc], a                                       ; $4f6d: $02
	inc bc                                           ; $4f6e: $03
	db $db                                           ; $4f6f: $db
	ld bc, $dffd                                     ; $4f70: $01 $fd $df
	db $fc                                           ; $4f73: $fc
	add l                                            ; $4f74: $85
	dec bc                                           ; $4f75: $0b
	rst $38                                          ; $4f76: $ff

jr_015_4f77:
	inc b                                            ; $4f77: $04
	rst $38                                          ; $4f78: $ff

jr_015_4f79:
	ld [hl], $ff                                     ; $4f79: $36 $ff
	ld c, l                                          ; $4f7b: $4d
	rst $38                                          ; $4f7c: $ff
	adc b                                            ; $4f7d: $88
	rst $38                                          ; $4f7e: $ff
	sbc l                                            ; $4f7f: $9d
	rst FarCall                                          ; $4f80: $f7
	ld a, $e3                                        ; $4f81: $3e $e3
	ccf                                              ; $4f83: $3f
	rst AddAOntoHL                                          ; $4f84: $ef
	ld [hl], a                                       ; $4f85: $77
	call z, $cc7f                                    ; $4f86: $cc $7f $cc
	rst $38                                          ; $4f89: $ff
	call z, $31ff                                    ; $4f8a: $cc $ff $31
	rst $38                                          ; $4f8d: $ff
	add e                                            ; $4f8e: $83
	ei                                               ; $4f8f: $fb
	rst SubAFromDE                                          ; $4f90: $df
	add b                                            ; $4f91: $80
	sub h                                            ; $4f92: $94
	ld b, b                                          ; $4f93: $40
	ret nz                                           ; $4f94: $c0

	jr nz, jr_015_4f77                               ; $4f95: $20 $e0

	jr nz, jr_015_4f79                               ; $4f97: $20 $e0

	sub b                                            ; $4f99: $90
	ldh a, [$50]                                     ; $4f9a: $f0 $50
	ldh a, [$b0]                                     ; $4f9c: $f0 $b0
	ld a, e                                          ; $4f9e: $7b
	db $fc                                           ; $4f9f: $fc
	rst SubAFromDE                                          ; $4fa0: $df
	ldh [$9e], a                                     ; $4fa1: $e0 $9e
	and b                                            ; $4fa3: $a0
	ld a, e                                          ; $4fa4: $7b
	cp $7f                                           ; $4fa5: $fe $7f
	db $ec                                           ; $4fa7: $ec
	ld a, a                                          ; $4fa8: $7f
	cp $33                                           ; $4fa9: $fe $33
	ret nz                                           ; $4fab: $c0

	sbc b                                            ; $4fac: $98
	db $e3                                           ; $4fad: $e3
	ld a, a                                          ; $4fae: $7f
	ret nz                                           ; $4faf: $c0

	ld a, a                                          ; $4fb0: $7f
	rst GetHLinHL                                          ; $4fb1: $cf
	ei                                               ; $4fb2: $fb
	adc $67                                          ; $4fb3: $ce $67
	ret nz                                           ; $4fb5: $c0

	inc sp                                           ; $4fb6: $33
	ldh [$9d], a                                     ; $4fb7: $e0 $9d
	set 7, a                                         ; $4fb9: $cb $ff
	ld [hl], a                                       ; $4fbb: $77
	ldh [$9e], a                                     ; $4fbc: $e0 $9e
	or e                                             ; $4fbe: $b3
	ld a, [$089c]                                    ; $4fbf: $fa $9c $08
	nop                                              ; $4fc2: $00
	ld [$fd7b], sp                                   ; $4fc3: $08 $7b $fd
	sbc b                                            ; $4fc6: $98
	inc d                                            ; $4fc7: $14
	ld a, $c1                                        ; $4fc8: $3e $c1
	ld [$0814], sp                                   ; $4fca: $08 $14 $08
	ld [de], a                                       ; $4fcd: $12
	ld [hl], a                                       ; $4fce: $77
	ldh a, [c]                                       ; $4fcf: $f2
	ld sp, hl                                        ; $4fd0: $f9
	sbc d                                            ; $4fd1: $9a
	inc bc                                           ; $4fd2: $03
	ld [bc], a                                       ; $4fd3: $02
	rlca                                             ; $4fd4: $07
	inc b                                            ; $4fd5: $04
	rlca                                             ; $4fd6: $07
	ld a, e                                          ; $4fd7: $7b
	ld b, [hl]                                       ; $4fd8: $46
	ld [hl], a                                       ; $4fd9: $77
	ld b, h                                          ; $4fda: $44
	ld a, a                                          ; $4fdb: $7f
	ld c, b                                          ; $4fdc: $48
	sbc h                                            ; $4fdd: $9c
	dec bc                                           ; $4fde: $0b
	rrca                                             ; $4fdf: $0f
	add hl, bc                                       ; $4fe0: $09
	ld a, e                                          ; $4fe1: $7b
	cp $84                                           ; $4fe2: $fe $84
	dec c                                            ; $4fe4: $0d
	dec bc                                           ; $4fe5: $0b
	rlca                                             ; $4fe6: $07
	dec b                                            ; $4fe7: $05
	ld [bc], a                                       ; $4fe8: $02
	ld [bc], a                                       ; $4fe9: $02
	ld bc, $0301                                     ; $4fea: $01 $01 $03

jr_015_4fed:
	inc bc                                           ; $4fed: $03
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	rst $38                                          ; $4ff0: $ff
	db $fc                                           ; $4ff1: $fc
	sub e                                            ; $4ff2: $93
	xor $01                                          ; $4ff3: $ee $01
	rst $38                                          ; $4ff5: $ff
	rst AddAOntoHL                                          ; $4ff6: $ef
	add hl, sp                                       ; $4ff7: $39
	rst SubAFromHL                                          ; $4ff8: $d7
	add hl, sp                                       ; $4ff9: $39
	cp $ff                                           ; $4ffa: $fe $ff
	add d                                            ; $4ffc: $82
	rst $38                                          ; $4ffd: $ff
	ld bc, $fe7b                                     ; $4ffe: $01 $7b $fe
	adc a                                            ; $5001: $8f
	add e                                            ; $5002: $83
	ld a, l                                          ; $5003: $7d
	rst $38                                          ; $5004: $ff
	add e                                            ; $5005: $83
	rst $38                                          ; $5006: $ff
	rst $38                                          ; $5007: $ff
	cp $92                                           ; $5008: $fe $92
	ccf                                              ; $500a: $3f
	rst $38                                          ; $500b: $ff
	pop af                                           ; $500c: $f1
	rst $38                                          ; $500d: $ff
	ccf                                              ; $500e: $3f
	ccf                                              ; $500f: $3f
	ret nz                                           ; $5010: $c0

	ld b, b                                          ; $5011: $40
	ld a, e                                          ; $5012: $7b
	ld c, c                                          ; $5013: $49
	ld a, e                                          ; $5014: $7b
	db $fd                                           ; $5015: $fd
	ld l, a                                          ; $5016: $6f
	ld b, h                                          ; $5017: $44
	ld l, a                                          ; $5018: $6f
	db $fc                                           ; $5019: $fc
	sbc d                                            ; $501a: $9a
	jr nc, jr_015_4fed                               ; $501b: $30 $d0

	ldh [rAUD4LEN], a                                ; $501d: $e0 $20
	ret nz                                           ; $501f: $c0

	ld a, e                                          ; $5020: $7b
	ld b, [hl]                                       ; $5021: $46
	rst SubAFromDE                                          ; $5022: $df
	add b                                            ; $5023: $80
	ei                                               ; $5024: $fb
	ld b, e                                          ; $5025: $43
	ld h, b                                          ; $5026: $60
	sbc e                                            ; $5027: $9b
	rst SubAFromBC                                          ; $5028: $e7
	ld a, a                                          ; $5029: $7f
	call z, $5b77                                    ; $502a: $cc $77 $5b
	nop                                              ; $502d: $00
	dec de                                           ; $502e: $1b
	ldh [hDisp1_WX], a                                     ; $502f: $e0 $96
	or e                                             ; $5031: $b3
	inc bc                                           ; $5032: $03
	ld [bc], a                                       ; $5033: $02
	inc bc                                           ; $5034: $03
	inc bc                                           ; $5035: $03
	rlca                                             ; $5036: $07
	inc b                                            ; $5037: $04
	rrca                                             ; $5038: $0f
	ld [$6e7b], sp                                   ; $5039: $08 $7b $6e
	ld a, e                                          ; $503c: $7b
	push af                                          ; $503d: $f5
	ld a, a                                          ; $503e: $7f
	ld d, l                                          ; $503f: $55
	ld [hl], a                                       ; $5040: $77
	ld d, [hl]                                       ; $5041: $56
	ld a, a                                          ; $5042: $7f
	cp $7f                                           ; $5043: $fe $7f
	db $fd                                           ; $5045: $fd
	rst SubAFromDE                                          ; $5046: $df
	inc bc                                           ; $5047: $03
	ld a, a                                          ; $5048: $7f
	ldh a, [c]                                       ; $5049: $f2
	rst SubAFromDE                                          ; $504a: $df
	rlca                                             ; $504b: $07
	ld [hl], a                                       ; $504c: $77
	ld h, b                                          ; $504d: $60
	sub [hl]                                         ; $504e: $96
	sbc e                                            ; $504f: $9b
	ld a, h                                          ; $5050: $7c
	cp a                                             ; $5051: $bf
	rst SubAFromBC                                          ; $5052: $e7
	cp a                                             ; $5053: $bf

jr_015_5054:
	ldh [c], a                                       ; $5054: $e2
	rra                                              ; $5055: $1f
	ld sp, hl                                        ; $5056: $f9
	cp $7b                                           ; $5057: $fe $7b
	ld l, c                                          ; $5059: $69
	sbc [hl]                                         ; $505a: $9e
	add c                                            ; $505b: $81
	ld h, e                                          ; $505c: $63
	ld h, b                                          ; $505d: $60
	sbc d                                            ; $505e: $9a
	rst AddAOntoHL                                          ; $505f: $ef
	add hl, hl                                       ; $5060: $29
	ccf                                              ; $5061: $3f
	rst $38                                          ; $5062: $ff
	ld hl, sp+$77                                    ; $5063: $f8 $77
	ld h, b                                          ; $5065: $60
	rst SubAFromDE                                          ; $5066: $df
	ret nz                                           ; $5067: $c0

	sbc l                                            ; $5068: $9d
	ld b, b                                          ; $5069: $40
	and b                                            ; $506a: $a0
	ld a, e                                          ; $506b: $7b
	ld h, h                                          ; $506c: $64
	add a                                            ; $506d: $87
	ret z                                            ; $506e: $c8

	ld hl, sp-$5c                                    ; $506f: $f8 $a4
	db $fc                                           ; $5071: $fc
	ld b, d                                          ; $5072: $42
	cp $a2                                           ; $5073: $fe $a2
	cp $46                                           ; $5075: $fe $46
	ld a, [$f49c]                                    ; $5077: $fa $9c $f4
	jr c, jr_015_5054                                ; $507a: $38 $d8

	ldh [rAUD4LEN], a                                ; $507c: $e0 $20
	ld b, b                                          ; $507e: $40
	ld b, b                                          ; $507f: $40
	add b                                            ; $5080: $80
	add b                                            ; $5081: $80
	ret nz                                           ; $5082: $c0

	ret nz                                           ; $5083: $c0

	add b                                            ; $5084: $80
	add b                                            ; $5085: $80
	inc bc                                           ; $5086: $03
	nop                                              ; $5087: $00
	ld e, e                                          ; $5088: $5b
	nop                                              ; $5089: $00
	ld a, a                                          ; $508a: $7f
	xor c                                            ; $508b: $a9
	ld e, a                                          ; $508c: $5f
	nop                                              ; $508d: $00
	sub a                                            ; $508e: $97
	ld a, l                                          ; $508f: $7d
	ld h, a                                          ; $5090: $67
	rst $38                                          ; $5091: $ff
	rst $38                                          ; $5092: $ff
	rst JumpTable                                          ; $5093: $c7
	rst $38                                          ; $5094: $ff
	ld a, h                                          ; $5095: $7c
	ld a, h                                          ; $5096: $7c
	inc bc                                           ; $5097: $03
	nop                                              ; $5098: $00
	sub d                                            ; $5099: $92
	nop                                              ; $509a: $00
	ld bc, $0006                                     ; $509b: $01 $06 $00
	jr jr_015_50a0                                   ; $509e: $18 $00

jr_015_50a0:
	jr nz, jr_015_50a2                               ; $50a0: $20 $00

jr_015_50a2:
	ld b, b                                          ; $50a2: $40
	ld h, b                                          ; $50a3: $60
	inc e                                            ; $50a4: $1c
	nop                                              ; $50a5: $00
	add b                                            ; $50a6: $80
	ld [hl], e                                       ; $50a7: $73
	cp $96                                           ; $50a8: $fe $96
	add h                                            ; $50aa: $84
	nop                                              ; $50ab: $00
	adc b                                            ; $50ac: $88
	nop                                              ; $50ad: $00
	ld c, b                                          ; $50ae: $48
	db $10                                           ; $50af: $10
	ld b, b                                          ; $50b0: $40
	db $10                                           ; $50b1: $10
	jr nz, @+$7d                                     ; $50b2: $20 $7b

	add sp, $7b                                      ; $50b4: $e8 $7b
	ld a, $9b                                        ; $50b6: $3e $9b
	nop                                              ; $50b8: $00
	ldh [$80], a                                     ; $50b9: $e0 $80
	jr jr_015_5138                                   ; $50bb: $18 $7b

	db $ec                                           ; $50bd: $ec
	adc h                                            ; $50be: $8c
	ld b, d                                          ; $50bf: $42
	ld [bc], a                                       ; $50c0: $02
	ld b, b                                          ; $50c1: $40
	inc b                                            ; $50c2: $04
	ld bc, $0900                                     ; $50c3: $01 $00 $09
	nop                                              ; $50c6: $00
	ld de, $0100                                     ; $50c7: $11 $00 $01
	nop                                              ; $50ca: $00
	add c                                            ; $50cb: $81
	nop                                              ; $50cc: $00
	ld b, d                                          ; $50cd: $42
	nop                                              ; $50ce: $00
	ld [hl+], a                                      ; $50cf: $22
	jr @+$06                                         ; $50d0: $18 $04

	ld a, e                                          ; $50d2: $7b
	ldh [$9e], a                                     ; $50d3: $e0 $9e
	ldh [$73], a                                     ; $50d5: $e0 $73
	ret nz                                           ; $50d7: $c0

	adc b                                            ; $50d8: $88
	add hl, de                                       ; $50d9: $19
	nop                                              ; $50da: $00
	ld [hl+], a                                      ; $50db: $22
	nop                                              ; $50dc: $00
	ld b, d                                          ; $50dd: $42
	ld b, b                                          ; $50de: $40
	ccf                                              ; $50df: $3f
	nop                                              ; $50e0: $00
	and d                                            ; $50e1: $a2
	nop                                              ; $50e2: $00
	sub h                                            ; $50e3: $94
	nop                                              ; $50e4: $00
	adc h                                            ; $50e5: $8c
	nop                                              ; $50e6: $00
	add [hl]                                         ; $50e7: $86
	nop                                              ; $50e8: $00
	adc c                                            ; $50e9: $89
	nop                                              ; $50ea: $00
	ld c, c                                          ; $50eb: $49
	nop                                              ; $50ec: $00
	ld d, [hl]                                       ; $50ed: $56
	db $10                                           ; $50ee: $10
	jr z, jr_015_5158                                ; $50ef: $28 $67

	ret nz                                           ; $50f1: $c0

	sbc l                                            ; $50f2: $9d
	nop                                              ; $50f3: $00
	sbc b                                            ; $50f4: $98
	ld [hl], e                                       ; $50f5: $73
	ret nz                                           ; $50f6: $c0

	adc [hl]                                         ; $50f7: $8e
	db $fc                                           ; $50f8: $fc
	nop                                              ; $50f9: $00
	ld b, l                                          ; $50fa: $45
	nop                                              ; $50fb: $00
	add hl, hl                                       ; $50fc: $29
	nop                                              ; $50fd: $00
	ld sp, $5100                                     ; $50fe: $31 $00 $51
	nop                                              ; $5101: $00
	sub c                                            ; $5102: $91
	nop                                              ; $5103: $00
	ld c, d                                          ; $5104: $4a
	nop                                              ; $5105: $00
	ld a, [hl+]                                      ; $5106: $2a
	ld [$6714], sp                                   ; $5107: $08 $14 $67
	ret nz                                           ; $510a: $c0

	adc b                                            ; $510b: $88
	ld bc, $0218                                     ; $510c: $01 $18 $02
	jr nz, jr_015_5113                               ; $510f: $20 $02

	ld b, b                                          ; $5111: $40
	ld a, a                                          ; $5112: $7f

jr_015_5113:
	nop                                              ; $5113: $00
	ld [hl+], a                                      ; $5114: $22
	add b                                            ; $5115: $80
	inc d                                            ; $5116: $14
	add b                                            ; $5117: $80
	inc c                                            ; $5118: $0c
	add b                                            ; $5119: $80
	ld b, $80                                        ; $511a: $06 $80
	add hl, bc                                       ; $511c: $09
	add b                                            ; $511d: $80
	add hl, bc                                       ; $511e: $09
	ld b, b                                          ; $511f: $40
	ld d, $40                                        ; $5120: $16 $40
	jr jr_015_517f                                   ; $5122: $18 $5b

	add b                                            ; $5124: $80
	adc e                                            ; $5125: $8b
	add b                                            ; $5126: $80
	inc b                                            ; $5127: $04
	ld b, b                                          ; $5128: $40
	ld [bc], a                                       ; $5129: $02
	cp $00                                           ; $512a: $fe $00
	ld b, h                                          ; $512c: $44
	ld bc, $0128                                     ; $512d: $01 $28 $01
	jr nc, jr_015_5133                               ; $5130: $30 $01

	ld d, b                                          ; $5132: $50

jr_015_5133:
	ld bc, $0190                                     ; $5133: $01 $90 $01
	ld c, b                                          ; $5136: $48
	ld [bc], a                                       ; $5137: $02

jr_015_5138:
	jr z, jr_015_513c                                ; $5138: $28 $02

	ld h, e                                          ; $513a: $63
	add b                                            ; $513b: $80

jr_015_513c:
	ld a, e                                          ; $513c: $7b
	cp $73                                           ; $513d: $fe $73
	jr c, jr_015_5174                                ; $513f: $38 $33

	ld hl, sp+$47                                    ; $5141: $f8 $47
	ld a, [$f037]                                    ; $5143: $fa $37 $f0
	rla                                              ; $5146: $17
	cp $9d                                           ; $5147: $fe $9d
	ld [bc], a                                       ; $5149: $02
	dec b                                            ; $514a: $05
	rrca                                             ; $514b: $0f
	cp $9d                                           ; $514c: $fe $9d
	inc bc                                           ; $514e: $03
	inc c                                            ; $514f: $0c
	rrca                                             ; $5150: $0f
	cp $9d                                           ; $5151: $fe $9d
	rst $38                                          ; $5153: $ff
	nop                                              ; $5154: $00
	rrca                                             ; $5155: $0f
	cp $7b                                           ; $5156: $fe $7b

jr_015_5158:
	ld [bc], a                                       ; $5158: $02
	inc de                                           ; $5159: $13
	cp $f8                                           ; $515a: $fe $f8
	ld a, [hl]                                       ; $515c: $7e
	ld l, h                                          ; $515d: $6c
	sbc [hl]                                         ; $515e: $9e
	ld b, b                                          ; $515f: $40
	halt                                             ; $5160: $76
	call z, $ea7a                                    ; $5161: $cc $7a $ea
	sbc [hl]                                         ; $5164: $9e
	ld l, h                                          ; $5165: $6c
	ld a, d                                          ; $5166: $7a
	or d                                             ; $5167: $b2
	sbc [hl]                                         ; $5168: $9e
	ld [bc], a                                       ; $5169: $02
	ld sp, hl                                        ; $516a: $f9
	xor d                                            ; $516b: $aa
	nop                                              ; $516c: $00
	ei                                               ; $516d: $fb
	rst SubAFromDE                                          ; $516e: $df
	rlca                                             ; $516f: $07
	sub h                                            ; $5170: $94
	ld [$060f], sp                                   ; $5171: $08 $0f $06

jr_015_5174:
	rlca                                             ; $5174: $07
	dec b                                            ; $5175: $05
	rlca                                             ; $5176: $07
	ld a, [bc]                                       ; $5177: $0a
	rrca                                             ; $5178: $0f
	inc c                                            ; $5179: $0c
	rrca                                             ; $517a: $0f
	dec c                                            ; $517b: $0d
	ld a, e                                          ; $517c: $7b
	cp $7f                                           ; $517d: $fe $7f

jr_015_517f:
	or $9d                                           ; $517f: $f6 $9d
	ld [bc], a                                       ; $5181: $02
	inc bc                                           ; $5182: $03
	db $db                                           ; $5183: $db
	ld bc, $dffd                                     ; $5184: $01 $fd $df
	db $fc                                           ; $5187: $fc
	add l                                            ; $5188: $85
	dec bc                                           ; $5189: $0b
	rst $38                                          ; $518a: $ff

jr_015_518b:
	inc b                                            ; $518b: $04
	rst $38                                          ; $518c: $ff

jr_015_518d:
	ld [hl], $ff                                     ; $518d: $36 $ff
	ld c, l                                          ; $518f: $4d
	rst $38                                          ; $5190: $ff
	adc b                                            ; $5191: $88
	rst $38                                          ; $5192: $ff
	sbc l                                            ; $5193: $9d
	rst FarCall                                          ; $5194: $f7
	ld a, $e3                                        ; $5195: $3e $e3
	ccf                                              ; $5197: $3f
	db $e3                                           ; $5198: $e3
	ld a, a                                          ; $5199: $7f
	ret nz                                           ; $519a: $c0

	ld a, a                                          ; $519b: $7f
	rst GetHLinHL                                          ; $519c: $cf
	ei                                               ; $519d: $fb
	adc $ff                                          ; $519e: $ce $ff
	ld sp, $83ff                                     ; $51a0: $31 $ff $83
	ei                                               ; $51a3: $fb
	rst SubAFromDE                                          ; $51a4: $df
	add b                                            ; $51a5: $80
	sub h                                            ; $51a6: $94
	ld b, b                                          ; $51a7: $40
	ret nz                                           ; $51a8: $c0

	jr nz, jr_015_518b                               ; $51a9: $20 $e0

	jr nz, jr_015_518d                               ; $51ab: $20 $e0

	sub b                                            ; $51ad: $90
	ldh a, [$50]                                     ; $51ae: $f0 $50
	ldh a, [$b0]                                     ; $51b0: $f0 $b0
	ld a, e                                          ; $51b2: $7b
	db $fc                                           ; $51b3: $fc
	rst SubAFromDE                                          ; $51b4: $df
	ldh [$9e], a                                     ; $51b5: $e0 $9e
	and b                                            ; $51b7: $a0
	ld a, e                                          ; $51b8: $7b
	cp $7f                                           ; $51b9: $fe $7f
	db $ec                                           ; $51bb: $ec
	ld a, a                                          ; $51bc: $7f
	cp $9a                                           ; $51bd: $fe $9a
	inc bc                                           ; $51bf: $03
	ld [bc], a                                       ; $51c0: $02
	rlca                                             ; $51c1: $07
	inc b                                            ; $51c2: $04
	rlca                                             ; $51c3: $07
	ld a, e                                          ; $51c4: $7b
	and [hl]                                         ; $51c5: $a6
	ld [hl], a                                       ; $51c6: $77
	and h                                            ; $51c7: $a4
	ld a, a                                          ; $51c8: $7f
	xor b                                            ; $51c9: $a8
	sbc h                                            ; $51ca: $9c
	dec bc                                           ; $51cb: $0b
	rrca                                             ; $51cc: $0f
	add hl, bc                                       ; $51cd: $09
	ld a, e                                          ; $51ce: $7b
	cp $84                                           ; $51cf: $fe $84
	dec c                                            ; $51d1: $0d
	dec bc                                           ; $51d2: $0b
	rlca                                             ; $51d3: $07
	dec b                                            ; $51d4: $05
	ld [bc], a                                       ; $51d5: $02
	ld [bc], a                                       ; $51d6: $02
	ld bc, $0301                                     ; $51d7: $01 $01 $03

jr_015_51da:
	inc bc                                           ; $51da: $03
	nop                                              ; $51db: $00
	nop                                              ; $51dc: $00
	rst $38                                          ; $51dd: $ff
	db $fc                                           ; $51de: $fc
	sub e                                            ; $51df: $93
	xor $01                                          ; $51e0: $ee $01
	rst $38                                          ; $51e2: $ff
	rst AddAOntoHL                                          ; $51e3: $ef
	add hl, sp                                       ; $51e4: $39
	rst SubAFromHL                                          ; $51e5: $d7
	add hl, sp                                       ; $51e6: $39
	cp $ff                                           ; $51e7: $fe $ff
	add d                                            ; $51e9: $82
	rst $38                                          ; $51ea: $ff
	ld bc, $fe7b                                     ; $51eb: $01 $7b $fe
	adc a                                            ; $51ee: $8f
	add e                                            ; $51ef: $83
	ld a, l                                          ; $51f0: $7d
	rst $38                                          ; $51f1: $ff
	add e                                            ; $51f2: $83
	rst $38                                          ; $51f3: $ff
	rst $38                                          ; $51f4: $ff
	cp $92                                           ; $51f5: $fe $92
	ccf                                              ; $51f7: $3f
	rst $38                                          ; $51f8: $ff
	pop af                                           ; $51f9: $f1
	rst $38                                          ; $51fa: $ff
	ccf                                              ; $51fb: $3f
	ccf                                              ; $51fc: $3f
	ret nz                                           ; $51fd: $c0

	ld b, b                                          ; $51fe: $40
	ld a, e                                          ; $51ff: $7b
	xor c                                            ; $5200: $a9
	ld a, e                                          ; $5201: $7b
	db $fd                                           ; $5202: $fd
	ld l, a                                          ; $5203: $6f
	and h                                            ; $5204: $a4
	ld l, a                                          ; $5205: $6f
	db $fc                                           ; $5206: $fc
	sbc c                                            ; $5207: $99
	jr nc, jr_015_51da                               ; $5208: $30 $d0

	ldh [rAUD4LEN], a                                ; $520a: $e0 $20
	ret nz                                           ; $520c: $c0

	ret nz                                           ; $520d: $c0

	ld [hl], a                                       ; $520e: $77
	adc d                                            ; $520f: $8a
	ei                                               ; $5210: $fb
	dec de                                           ; $5211: $1b
	ld h, b                                          ; $5212: $60
	sbc [hl]                                         ; $5213: $9e
	sub e                                            ; $5214: $93
	and l                                            ; $5215: $a5
	nop                                              ; $5216: $00
	ei                                               ; $5217: $fb
	rst SubAFromDE                                          ; $5218: $df
	ld bc, $0289                                     ; $5219: $01 $89 $02
	inc bc                                           ; $521c: $03
	ld [bc], a                                       ; $521d: $02
	inc bc                                           ; $521e: $03
	dec a                                            ; $521f: $3d
	ccf                                              ; $5220: $3f
	ld b, [hl]                                       ; $5221: $46
	ld a, a                                          ; $5222: $7f
	sbc d                                            ; $5223: $9a
	rst $38                                          ; $5224: $ff
	ld h, l                                          ; $5225: $65
	ld a, a                                          ; $5226: $7f
	cpl                                              ; $5227: $2f
	ld a, $5b                                        ; $5228: $3e $5b
	ld a, a                                          ; $522a: $7f
	ld [hl], a                                       ; $522b: $77
	ld a, [hl]                                       ; $522c: $7e
	ld e, c                                          ; $522d: $59
	ld e, c                                          ; $522e: $59
	add hl, bc                                       ; $522f: $09
	add hl, bc                                       ; $5230: $09
	ei                                               ; $5231: $fb
	rst SubAFromDE                                          ; $5232: $df
	ld l, a                                          ; $5233: $6f
	adc e                                            ; $5234: $8b

jr_015_5235:
	sub b                                            ; $5235: $90
	rst $38                                          ; $5236: $ff

jr_015_5237:
	jr nc, @+$01                                     ; $5237: $30 $ff

	jp z, Jump_015_55ff                              ; $5239: $ca $ff $55

	rst $38                                          ; $523c: $ff
	call nc, $d4bf                                   ; $523d: $d4 $bf $d4
	cp a                                             ; $5240: $bf
	ldh a, [c]                                       ; $5241: $f2
	cpl                                              ; $5242: $2f
	rst $38                                          ; $5243: $ff
	call $ce77                                       ; $5244: $cd $77 $ce
	rst $38                                          ; $5247: $ff
	call z, $fe7b                                    ; $5248: $cc $7b $fe
	sbc h                                            ; $524b: $9c
	ld sp, $83ff                                     ; $524c: $31 $ff $83
	ei                                               ; $524f: $fb
	rst SubAFromDE                                          ; $5250: $df
	ret nz                                           ; $5251: $c0

	add a                                            ; $5252: $87
	jr nz, jr_015_5235                               ; $5253: $20 $e0

	jr nz, jr_015_5237                               ; $5255: $20 $e0

	inc e                                            ; $5257: $1c
	db $fc                                           ; $5258: $fc
	sub d                                            ; $5259: $92
	cp $91                                           ; $525a: $fe $91
	rst $38                                          ; $525c: $ff
	ld d, a                                          ; $525d: $57
	rst $38                                          ; $525e: $ff
	ld [hl+], a                                      ; $525f: $22
	cp $d9                                           ; $5260: $fe $d9
	rst $38                                          ; $5262: $ff
	push hl                                          ; $5263: $e5
	cp a                                             ; $5264: $bf
	di                                               ; $5265: $f3
	cp a                                             ; $5266: $bf
	jp z, $04ce                                      ; $5267: $ca $ce $04

	inc b                                            ; $526a: $04
	db $dd                                           ; $526b: $dd
	ld bc, $a57b                                     ; $526c: $01 $7b $a5
	sub d                                            ; $526f: $92
	inc bc                                           ; $5270: $03
	rlca                                             ; $5271: $07
	dec b                                            ; $5272: $05
	rlca                                             ; $5273: $07
	inc b                                            ; $5274: $04
	rrca                                             ; $5275: $0f
	add hl, bc                                       ; $5276: $09
	rrca                                             ; $5277: $0f
	dec bc                                           ; $5278: $0b
	dec b                                            ; $5279: $05
	dec b                                            ; $527a: $05
	ld bc, $6701                                     ; $527b: $01 $01 $67
	adc h                                            ; $527e: $8c
	rst SubAFromDE                                          ; $527f: $df
	inc bc                                           ; $5280: $03
	rst $38                                          ; $5281: $ff
	adc [hl]                                         ; $5282: $8e
	db $fd                                           ; $5283: $fd
	rst $38                                          ; $5284: $ff
	ld a, l                                          ; $5285: $7d
	rst JumpTable                                          ; $5286: $c7
	cp e                                             ; $5287: $bb
	rst $38                                          ; $5288: $ff
	ld bc, rIE                                     ; $5289: $01 $ff $ff
	add c                                            ; $528c: $81
	rst $38                                          ; $528d: $ff
	rst $38                                          ; $528e: $ff
	add e                                            ; $528f: $83
	cp $01                                           ; $5290: $fe $01
	rst $38                                          ; $5292: $ff
	nop                                              ; $5293: $00
	sbc $ff                                          ; $5294: $de $ff
	add a                                            ; $5296: $87
	cp $92                                           ; $5297: $fe $92
	rst $38                                          ; $5299: $ff
	reti                                             ; $529a: $d9


	rst AddAOntoHL                                          ; $529b: $ef
	cp a                                             ; $529c: $bf
	dec a                                            ; $529d: $3d
	db $db                                           ; $529e: $db
	di                                               ; $529f: $f3
	db $fd                                           ; $52a0: $fd
	ccf                                              ; $52a1: $3f
	ccf                                              ; $52a2: $3f
	add b                                            ; $52a3: $80
	add b                                            ; $52a4: $80
	ret nz                                           ; $52a5: $c0

	ld b, b                                          ; $52a6: $40
	ldh [rAUD4LEN], a                                ; $52a7: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $52a9: $f0 $90
	ldh a, [$d0]                                     ; $52ab: $f0 $d0
	sub b                                            ; $52ad: $90
	ld [hl], b                                       ; $52ae: $70
	ld a, e                                          ; $52af: $7b
	sbc l                                            ; $52b0: $9d
	sbc d                                            ; $52b1: $9a
	ld h, b                                          ; $52b2: $60
	ret nz                                           ; $52b3: $c0

	ret nz                                           ; $52b4: $c0

	add b                                            ; $52b5: $80
	add b                                            ; $52b6: $80
	ld sp, hl                                        ; $52b7: $f9
	ld [hl], a                                       ; $52b8: $77
	or $b8                                           ; $52b9: $f6 $b8
	nop                                              ; $52bb: $00
	ei                                               ; $52bc: $fb
	rst SubAFromDE                                          ; $52bd: $df
	ld bc, $0289                                     ; $52be: $01 $89 $02
	inc bc                                           ; $52c1: $03
	ld [bc], a                                       ; $52c2: $02
	inc bc                                           ; $52c3: $03
	dec a                                            ; $52c4: $3d
	ccf                                              ; $52c5: $3f
	ld b, [hl]                                       ; $52c6: $46
	ld a, a                                          ; $52c7: $7f
	sbc d                                            ; $52c8: $9a
	rst $38                                          ; $52c9: $ff
	ld h, l                                          ; $52ca: $65
	ld a, a                                          ; $52cb: $7f
	cpl                                              ; $52cc: $2f
	ld a, $5b                                        ; $52cd: $3e $5b
	ld a, a                                          ; $52cf: $7f
	ld [hl], a                                       ; $52d0: $77
	ld a, [hl]                                       ; $52d1: $7e
	ld e, c                                          ; $52d2: $59
	ld e, c                                          ; $52d3: $59
	add hl, bc                                       ; $52d4: $09
	add hl, bc                                       ; $52d5: $09
	ei                                               ; $52d6: $fb
	rst SubAFromDE                                          ; $52d7: $df
	ld l, a                                          ; $52d8: $6f
	adc e                                            ; $52d9: $8b

jr_015_52da:
	sub b                                            ; $52da: $90
	rst $38                                          ; $52db: $ff

jr_015_52dc:
	jr nc, @+$01                                     ; $52dc: $30 $ff

	jp z, Jump_015_55ff                              ; $52de: $ca $ff $55

	rst $38                                          ; $52e1: $ff
	call nc, $d4bf                                   ; $52e2: $d4 $bf $d4
	cp a                                             ; $52e5: $bf
	ldh a, [c]                                       ; $52e6: $f2
	cpl                                              ; $52e7: $2f
	rst $38                                          ; $52e8: $ff
	call $ce77                                       ; $52e9: $cd $77 $ce
	rst $38                                          ; $52ec: $ff
	call z, $fe7b                                    ; $52ed: $cc $7b $fe
	sbc h                                            ; $52f0: $9c
	ld sp, $83ff                                     ; $52f1: $31 $ff $83
	ei                                               ; $52f4: $fb
	rst SubAFromDE                                          ; $52f5: $df
	ret nz                                           ; $52f6: $c0

	add a                                            ; $52f7: $87
	jr nz, jr_015_52da                               ; $52f8: $20 $e0

	jr nz, jr_015_52dc                               ; $52fa: $20 $e0

	inc e                                            ; $52fc: $1c
	db $fc                                           ; $52fd: $fc
	sub d                                            ; $52fe: $92
	cp $91                                           ; $52ff: $fe $91
	rst $38                                          ; $5301: $ff
	ld d, a                                          ; $5302: $57
	rst $38                                          ; $5303: $ff
	ld [hl+], a                                      ; $5304: $22
	cp $d9                                           ; $5305: $fe $d9
	rst $38                                          ; $5307: $ff
	push hl                                          ; $5308: $e5
	cp a                                             ; $5309: $bf
	di                                               ; $530a: $f3
	cp a                                             ; $530b: $bf
	jp z, $04ce                                      ; $530c: $ca $ce $04

	inc b                                            ; $530f: $04
	db $dd                                           ; $5310: $dd
	ld bc, $a57b                                     ; $5311: $01 $7b $a5
	sub d                                            ; $5314: $92
	inc bc                                           ; $5315: $03
	rlca                                             ; $5316: $07
	dec b                                            ; $5317: $05
	rlca                                             ; $5318: $07
	inc b                                            ; $5319: $04
	rrca                                             ; $531a: $0f
	add hl, bc                                       ; $531b: $09
	rrca                                             ; $531c: $0f
	dec bc                                           ; $531d: $0b
	dec b                                            ; $531e: $05
	dec b                                            ; $531f: $05
	ld bc, $6701                                     ; $5320: $01 $01 $67
	adc h                                            ; $5323: $8c
	rst SubAFromDE                                          ; $5324: $df
	inc bc                                           ; $5325: $03
	rst $38                                          ; $5326: $ff
	adc [hl]                                         ; $5327: $8e
	db $fd                                           ; $5328: $fd
	rst $38                                          ; $5329: $ff
	ld a, l                                          ; $532a: $7d
	rst JumpTable                                          ; $532b: $c7
	cp e                                             ; $532c: $bb
	rst $38                                          ; $532d: $ff
	ld bc, rIE                                     ; $532e: $01 $ff $ff
	add c                                            ; $5331: $81
	rst $38                                          ; $5332: $ff
	rst $38                                          ; $5333: $ff
	add e                                            ; $5334: $83
	cp $01                                           ; $5335: $fe $01
	rst $38                                          ; $5337: $ff
	nop                                              ; $5338: $00
	sbc $ff                                          ; $5339: $de $ff
	add a                                            ; $533b: $87
	cp $92                                           ; $533c: $fe $92
	rst $38                                          ; $533e: $ff
	reti                                             ; $533f: $d9


	rst AddAOntoHL                                          ; $5340: $ef
	cp a                                             ; $5341: $bf
	dec a                                            ; $5342: $3d
	db $db                                           ; $5343: $db
	di                                               ; $5344: $f3
	db $fd                                           ; $5345: $fd
	ccf                                              ; $5346: $3f
	ccf                                              ; $5347: $3f
	add b                                            ; $5348: $80
	add b                                            ; $5349: $80
	ret nz                                           ; $534a: $c0

	ld b, b                                          ; $534b: $40
	ldh [rAUD4LEN], a                                ; $534c: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $534e: $f0 $90
	ldh a, [$d0]                                     ; $5350: $f0 $d0
	sub b                                            ; $5352: $90
	ld [hl], b                                       ; $5353: $70
	ld a, e                                          ; $5354: $7b
	sbc l                                            ; $5355: $9d
	sbc d                                            ; $5356: $9a
	ld h, b                                          ; $5357: $60
	ret nz                                           ; $5358: $c0

	ret nz                                           ; $5359: $c0

	add b                                            ; $535a: $80
	add b                                            ; $535b: $80
	ld sp, hl                                        ; $535c: $f9
	ld [hl], a                                       ; $535d: $77
	or $1f                                           ; $535e: $f6 $1f
	and b                                            ; $5360: $a0
	ld [hl], a                                       ; $5361: $77
	db $e4                                           ; $5362: $e4
	cpl                                              ; $5363: $2f
	and b                                            ; $5364: $a0
	sub e                                            ; $5365: $93
	ld a, h                                          ; $5366: $7c
	ld h, h                                          ; $5367: $64
	ld a, $26                                        ; $5368: $3e $26
	dec a                                            ; $536a: $3d
	ccf                                              ; $536b: $3f
	rst FarCall                                          ; $536c: $f7
	rst AddAOntoHL                                          ; $536d: $ef
	rst GetHLinHL                                          ; $536e: $cf
	rst FarCall                                          ; $536f: $f7
	ld a, h                                          ; $5370: $7c
	ld a, h                                          ; $5371: $7c
	xor [hl]                                         ; $5372: $ae
	nop                                              ; $5373: $00
	ei                                               ; $5374: $fb
	rst SubAFromDE                                          ; $5375: $df
	ld bc, $0287                                     ; $5376: $01 $87 $02
	inc bc                                           ; $5379: $03
	ld [bc], a                                       ; $537a: $02
	inc bc                                           ; $537b: $03
	dec a                                            ; $537c: $3d
	ccf                                              ; $537d: $3f
	ld b, [hl]                                       ; $537e: $46
	ld a, a                                          ; $537f: $7f
	sbc d                                            ; $5380: $9a
	rst $38                                          ; $5381: $ff
	ld a, l                                          ; $5382: $7d
	ld h, a                                          ; $5383: $67
	ccf                                              ; $5384: $3f
	ld [hl+], a                                      ; $5385: $22
	ld e, a                                          ; $5386: $5f
	ld [hl], e                                       ; $5387: $73
	ld a, a                                          ; $5388: $7f
	ld [hl], d                                       ; $5389: $72
	ld e, a                                          ; $538a: $5f
	ld d, c                                          ; $538b: $51
	rrca                                             ; $538c: $0f
	add hl, bc                                       ; $538d: $09
	rlca                                             ; $538e: $07
	inc b                                            ; $538f: $04
	db $fd                                           ; $5390: $fd
	rst SubAFromDE                                          ; $5391: $df
	ld l, a                                          ; $5392: $6f
	adc e                                            ; $5393: $8b

jr_015_5394:
	sub b                                            ; $5394: $90
	rst $38                                          ; $5395: $ff

jr_015_5396:
	jr nc, @+$01                                     ; $5396: $30 $ff

	jp z, Jump_015_55ff                              ; $5398: $ca $ff $55

	rst $38                                          ; $539b: $ff
	call nc, $d4bf                                   ; $539c: $d4 $bf $d4
	cp a                                             ; $539f: $bf
	ldh a, [c]                                       ; $53a0: $f2
	cpl                                              ; $53a1: $2f
	rst $38                                          ; $53a2: $ff
	call $ce77                                       ; $53a3: $cd $77 $ce
	rst $38                                          ; $53a6: $ff
	call z, $fe7b                                    ; $53a7: $cc $7b $fe
	sbc h                                            ; $53aa: $9c
	ld sp, $83ff                                     ; $53ab: $31 $ff $83
	ei                                               ; $53ae: $fb
	rst SubAFromDE                                          ; $53af: $df
	ret nz                                           ; $53b0: $c0

	add a                                            ; $53b1: $87
	jr nz, jr_015_5394                               ; $53b2: $20 $e0

	jr nz, jr_015_5396                               ; $53b4: $20 $e0

	inc e                                            ; $53b6: $1c
	db $fc                                           ; $53b7: $fc
	sub d                                            ; $53b8: $92
	cp $91                                           ; $53b9: $fe $91
	rst $38                                          ; $53bb: $ff
	ld d, a                                          ; $53bc: $57
	rst $38                                          ; $53bd: $ff
	ld [hl+], a                                      ; $53be: $22
	cp $d9                                           ; $53bf: $fe $d9
	rst $38                                          ; $53c1: $ff
	push hl                                          ; $53c2: $e5
	cp a                                             ; $53c3: $bf
	di                                               ; $53c4: $f3
	cp a                                             ; $53c5: $bf
	jp z, $04ce                                      ; $53c6: $ca $ce $04

	inc b                                            ; $53c9: $04
	ld a, e                                          ; $53ca: $7b
	xor c                                            ; $53cb: $a9
	sbc [hl]                                         ; $53cc: $9e
	inc bc                                           ; $53cd: $03
	db $dd                                           ; $53ce: $dd
	ld bc, $9867                                     ; $53cf: $01 $67 $98
	ld d, a                                          ; $53d2: $57
	db $f4                                           ; $53d3: $f4
	rst SubAFromDE                                          ; $53d4: $df
	inc bc                                           ; $53d5: $03
	rst $38                                          ; $53d6: $ff
	sub l                                            ; $53d7: $95
	db $fd                                           ; $53d8: $fd
	rst $38                                          ; $53d9: $ff
	ld a, a                                          ; $53da: $7f
	add $bb                                          ; $53db: $c6 $bb
	cp $01                                           ; $53dd: $fe $01
	rst $38                                          ; $53df: $ff
	rst $38                                          ; $53e0: $ff
	add c                                            ; $53e1: $81
	ld [hl], a                                       ; $53e2: $77
	db $fd                                           ; $53e3: $fd
	cp a                                             ; $53e4: $bf
	rst $38                                          ; $53e5: $ff
	rst $38                                          ; $53e6: $ff
	rst SubAFromDE                                          ; $53e7: $df
	rst $38                                          ; $53e8: $ff
	add l                                            ; $53e9: $85
	cp $92                                           ; $53ea: $fe $92
	rst $38                                          ; $53ec: $ff
	reti                                             ; $53ed: $d9


	rst AddAOntoHL                                          ; $53ee: $ef

jr_015_53ef:
	cp a                                             ; $53ef: $bf
	dec a                                            ; $53f0: $3d
	db $db                                           ; $53f1: $db
	di                                               ; $53f2: $f3
	db $fd                                           ; $53f3: $fd
	ccf                                              ; $53f4: $3f
	ccf                                              ; $53f5: $3f
	or b                                             ; $53f6: $b0
	or b                                             ; $53f7: $b0
	ld hl, sp-$38                                    ; $53f8: $f8 $c8
	ld hl, sp+$48                                    ; $53fa: $f8 $48
	ret z                                            ; $53fc: $c8

	jr c, jr_015_53ef                                ; $53fd: $38 $f0

	sub b                                            ; $53ff: $90
	ld h, b                                          ; $5400: $60
	ld h, b                                          ; $5401: $60
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	db $db                                           ; $5404: $db
	add b                                            ; $5405: $80
	ld sp, hl                                        ; $5406: $f9
	ld h, a                                          ; $5407: $67
	or $1b                                           ; $5408: $f6 $1b
	ld h, b                                          ; $540a: $60
	sbc [hl]                                         ; $540b: $9e
	sub e                                            ; $540c: $93
	rra                                              ; $540d: $1f
	add b                                            ; $540e: $80
	ld [hl], a                                       ; $540f: $77
	ldh a, [c]                                       ; $5410: $f2
	cpl                                              ; $5411: $2f
	add b                                            ; $5412: $80
	sub e                                            ; $5413: $93
	ld a, h                                          ; $5414: $7c
	ld h, h                                          ; $5415: $64
	ld a, $26                                        ; $5416: $3e $26
	dec a                                            ; $5418: $3d
	ccf                                              ; $5419: $3f
	rst FarCall                                          ; $541a: $f7
	rst AddAOntoHL                                          ; $541b: $ef
	rst GetHLinHL                                          ; $541c: $cf
	rst FarCall                                          ; $541d: $f7
	ld a, h                                          ; $541e: $7c
	ld a, h                                          ; $541f: $7c
	xor c                                            ; $5420: $a9
	nop                                              ; $5421: $00
	ei                                               ; $5422: $fb
	rst SubAFromDE                                          ; $5423: $df
	ld bc, $0289                                     ; $5424: $01 $89 $02
	inc bc                                           ; $5427: $03
	ld [bc], a                                       ; $5428: $02
	inc bc                                           ; $5429: $03
	dec a                                            ; $542a: $3d
	ccf                                              ; $542b: $3f
	ld b, [hl]                                       ; $542c: $46
	ld a, a                                          ; $542d: $7f
	sbc d                                            ; $542e: $9a
	rst $38                                          ; $542f: $ff
	ld h, l                                          ; $5430: $65
	ld a, a                                          ; $5431: $7f
	cpl                                              ; $5432: $2f
	ld a, $5b                                        ; $5433: $3e $5b
	ld a, a                                          ; $5435: $7f
	ld [hl], a                                       ; $5436: $77
	ld a, [hl]                                       ; $5437: $7e
	ld e, c                                          ; $5438: $59
	ld e, c                                          ; $5439: $59
	add hl, bc                                       ; $543a: $09
	add hl, bc                                       ; $543b: $09
	ei                                               ; $543c: $fb
	rst SubAFromDE                                          ; $543d: $df
	ld l, a                                          ; $543e: $6f
	adc e                                            ; $543f: $8b

jr_015_5440:
	sub b                                            ; $5440: $90
	rst $38                                          ; $5441: $ff

jr_015_5442:
	jr nc, @+$01                                     ; $5442: $30 $ff

	jp z, Jump_015_55ff                              ; $5444: $ca $ff $55

	rst $38                                          ; $5447: $ff
	call nc, $d4bf                                   ; $5448: $d4 $bf $d4
	cp a                                             ; $544b: $bf
	ldh a, [c]                                       ; $544c: $f2
	cpl                                              ; $544d: $2f
	rst $38                                          ; $544e: $ff
	call $ce77                                       ; $544f: $cd $77 $ce
	rst $38                                          ; $5452: $ff
	call z, $fe7b                                    ; $5453: $cc $7b $fe
	sbc h                                            ; $5456: $9c
	ld sp, $83ff                                     ; $5457: $31 $ff $83
	ei                                               ; $545a: $fb
	rst SubAFromDE                                          ; $545b: $df
	ret nz                                           ; $545c: $c0

	add a                                            ; $545d: $87
	jr nz, jr_015_5440                               ; $545e: $20 $e0

	jr nz, jr_015_5442                               ; $5460: $20 $e0

	inc e                                            ; $5462: $1c
	db $fc                                           ; $5463: $fc
	sub d                                            ; $5464: $92
	cp $91                                           ; $5465: $fe $91
	rst $38                                          ; $5467: $ff
	ld d, a                                          ; $5468: $57
	rst $38                                          ; $5469: $ff
	ld [hl+], a                                      ; $546a: $22
	cp $d9                                           ; $546b: $fe $d9
	rst $38                                          ; $546d: $ff
	push hl                                          ; $546e: $e5
	cp a                                             ; $546f: $bf
	di                                               ; $5470: $f3
	cp a                                             ; $5471: $bf
	jp z, $04ce                                      ; $5472: $ca $ce $04

	inc b                                            ; $5475: $04
	db $dd                                           ; $5476: $dd
	ld bc, $a57b                                     ; $5477: $01 $7b $a5
	sub d                                            ; $547a: $92
	inc bc                                           ; $547b: $03
	rlca                                             ; $547c: $07
	dec b                                            ; $547d: $05
	rlca                                             ; $547e: $07
	inc b                                            ; $547f: $04
	rrca                                             ; $5480: $0f
	add hl, bc                                       ; $5481: $09
	rrca                                             ; $5482: $0f
	dec bc                                           ; $5483: $0b
	dec b                                            ; $5484: $05
	dec b                                            ; $5485: $05
	ld bc, $6701                                     ; $5486: $01 $01 $67
	adc h                                            ; $5489: $8c
	rst SubAFromDE                                          ; $548a: $df
	inc bc                                           ; $548b: $03
	rst $38                                          ; $548c: $ff
	adc [hl]                                         ; $548d: $8e
	db $fd                                           ; $548e: $fd
	rst $38                                          ; $548f: $ff
	ld a, l                                          ; $5490: $7d
	rst JumpTable                                          ; $5491: $c7
	cp e                                             ; $5492: $bb
	rst $38                                          ; $5493: $ff
	ld bc, rIE                                     ; $5494: $01 $ff $ff
	add c                                            ; $5497: $81
	rst $38                                          ; $5498: $ff
	rst $38                                          ; $5499: $ff
	add e                                            ; $549a: $83
	cp $01                                           ; $549b: $fe $01
	rst $38                                          ; $549d: $ff
	nop                                              ; $549e: $00
	sbc $ff                                          ; $549f: $de $ff
	add a                                            ; $54a1: $87
	cp $92                                           ; $54a2: $fe $92
	rst $38                                          ; $54a4: $ff
	reti                                             ; $54a5: $d9


	rst AddAOntoHL                                          ; $54a6: $ef
	cp a                                             ; $54a7: $bf
	dec a                                            ; $54a8: $3d
	db $db                                           ; $54a9: $db
	di                                               ; $54aa: $f3
	db $fd                                           ; $54ab: $fd
	ccf                                              ; $54ac: $3f
	ccf                                              ; $54ad: $3f
	add b                                            ; $54ae: $80
	add b                                            ; $54af: $80
	ret nz                                           ; $54b0: $c0

	ld b, b                                          ; $54b1: $40
	ldh [rAUD4LEN], a                                ; $54b2: $e0 $20
	ldh a, [hDisp1_SCY]                                     ; $54b4: $f0 $90
	ldh a, [$d0]                                     ; $54b6: $f0 $d0
	sub b                                            ; $54b8: $90
	ld [hl], b                                       ; $54b9: $70
	ld a, e                                          ; $54ba: $7b
	sbc l                                            ; $54bb: $9d
	sbc d                                            ; $54bc: $9a
	ld h, b                                          ; $54bd: $60
	ret nz                                           ; $54be: $c0

	ret nz                                           ; $54bf: $c0

	add b                                            ; $54c0: $80
	add b                                            ; $54c1: $80
	ld sp, hl                                        ; $54c2: $f9
	ld h, a                                          ; $54c3: $67
	or $1b                                           ; $54c4: $f6 $1b
	ld h, b                                          ; $54c6: $60
	sbc [hl]                                         ; $54c7: $9e
	or e                                             ; $54c8: $b3
	ld [hl], a                                       ; $54c9: $77
	ld [bc], a                                       ; $54ca: $02
	ei                                               ; $54cb: $fb
	rst SubAFromDE                                          ; $54cc: $df
	ld bc, $0289                                     ; $54cd: $01 $89 $02
	inc bc                                           ; $54d0: $03
	ld [bc], a                                       ; $54d1: $02
	inc bc                                           ; $54d2: $03
	dec a                                            ; $54d3: $3d
	ccf                                              ; $54d4: $3f
	ld b, [hl]                                       ; $54d5: $46
	ld a, a                                          ; $54d6: $7f
	sbc d                                            ; $54d7: $9a
	rst $38                                          ; $54d8: $ff
	ld h, l                                          ; $54d9: $65
	ld a, a                                          ; $54da: $7f
	cpl                                              ; $54db: $2f
	ld a, $5b                                        ; $54dc: $3e $5b
	ld a, a                                          ; $54de: $7f
	ld [hl], a                                       ; $54df: $77
	ld a, [hl]                                       ; $54e0: $7e
	ld e, c                                          ; $54e1: $59
	ld e, c                                          ; $54e2: $59
	add hl, bc                                       ; $54e3: $09
	add hl, bc                                       ; $54e4: $09
	ei                                               ; $54e5: $fb
	rst SubAFromDE                                          ; $54e6: $df
	ld l, a                                          ; $54e7: $6f
	adc e                                            ; $54e8: $8b

jr_015_54e9:
	sub b                                            ; $54e9: $90
	rst $38                                          ; $54ea: $ff

jr_015_54eb:
	jr nc, @+$01                                     ; $54eb: $30 $ff

	jp z, Jump_015_55ff                              ; $54ed: $ca $ff $55

	rst $38                                          ; $54f0: $ff
	call nc, $d4bf                                   ; $54f1: $d4 $bf $d4
	cp a                                             ; $54f4: $bf
	ldh a, [c]                                       ; $54f5: $f2
	cpl                                              ; $54f6: $2f
	rst $38                                          ; $54f7: $ff
	call $ce77                                       ; $54f8: $cd $77 $ce
	rst $38                                          ; $54fb: $ff
	call z, $fe7b                                    ; $54fc: $cc $7b $fe
	sbc h                                            ; $54ff: $9c
	ld sp, $83ff                                     ; $5500: $31 $ff $83
	ei                                               ; $5503: $fb
	rst SubAFromDE                                          ; $5504: $df
	ret nz                                           ; $5505: $c0

	add a                                            ; $5506: $87
	jr nz, jr_015_54e9                               ; $5507: $20 $e0

	jr nz, jr_015_54eb                               ; $5509: $20 $e0

	inc e                                            ; $550b: $1c
	db $fc                                           ; $550c: $fc
	sub d                                            ; $550d: $92
	cp $91                                           ; $550e: $fe $91
	rst $38                                          ; $5510: $ff
	ld d, a                                          ; $5511: $57
	rst $38                                          ; $5512: $ff
	ld [hl+], a                                      ; $5513: $22
	cp $d9                                           ; $5514: $fe $d9
	rst $38                                          ; $5516: $ff
	push hl                                          ; $5517: $e5
	cp a                                             ; $5518: $bf
	di                                               ; $5519: $f3
	cp a                                             ; $551a: $bf
	jp z, $04ce                                      ; $551b: $ca $ce $04

	inc b                                            ; $551e: $04
	db $dd                                           ; $551f: $dd
	ld bc, $07df                                     ; $5520: $01 $df $07
	sub a                                            ; $5523: $97
	rrca                                             ; $5524: $0f
	add hl, bc                                       ; $5525: $09
	rrca                                             ; $5526: $0f
	ld a, [bc]                                       ; $5527: $0a
	rlca                                             ; $5528: $07
	dec b                                            ; $5529: $05
	inc bc                                           ; $552a: $03
	inc bc                                           ; $552b: $03
	db $db                                           ; $552c: $db
	ld bc, $8c67                                     ; $552d: $01 $67 $8c
	rst SubAFromDE                                          ; $5530: $df
	inc bc                                           ; $5531: $03
	rst $38                                          ; $5532: $ff
	sub b                                            ; $5533: $90
	ld a, l                                          ; $5534: $7d
	rst $38                                          ; $5535: $ff
	rst $38                                          ; $5536: $ff
	rst JumpTable                                          ; $5537: $c7
	dec sp                                           ; $5538: $3b
	cp $81                                           ; $5539: $fe $81
	rst $38                                          ; $553b: $ff
	rst $38                                          ; $553c: $ff
	add c                                            ; $553d: $81
	rst $38                                          ; $553e: $ff
	cp $83                                           ; $553f: $fe $83
	rst $38                                          ; $5541: $ff
	ld bc, $fe7b                                     ; $5542: $01 $7b $fe
	rst SubAFromDE                                          ; $5545: $df
	rst $38                                          ; $5546: $ff
	add e                                            ; $5547: $83
	cp $92                                           ; $5548: $fe $92
	rst $38                                          ; $554a: $ff
	reti                                             ; $554b: $d9


	rst AddAOntoHL                                          ; $554c: $ef
	cp a                                             ; $554d: $bf
	dec a                                            ; $554e: $3d
	db $db                                           ; $554f: $db
	di                                               ; $5550: $f3
	db $fd                                           ; $5551: $fd
	ccf                                              ; $5552: $3f
	ccf                                              ; $5553: $3f
	add b                                            ; $5554: $80
	add b                                            ; $5555: $80
	ret nz                                           ; $5556: $c0

	ld b, b                                          ; $5557: $40
	ret nz                                           ; $5558: $c0

	ld b, b                                          ; $5559: $40
	ldh [rAUD4LEN], a                                ; $555a: $e0 $20
	and b                                            ; $555c: $a0
	ldh [$a0], a                                     ; $555d: $e0 $a0
	ld h, b                                          ; $555f: $60
	ret nz                                           ; $5560: $c0

	ld b, b                                          ; $5561: $40
	add b                                            ; $5562: $80
	add b                                            ; $5563: $80
	push af                                          ; $5564: $f5
	ld e, a                                          ; $5565: $5f
	ldh a, [c]                                       ; $5566: $f2
	ld b, a                                          ; $5567: $47
	ld b, b                                          ; $5568: $40
	sub [hl]                                         ; $5569: $96
	ld e, a                                          ; $556a: $5f
	ld [hl], e                                       ; $556b: $73
	ld a, a                                          ; $556c: $7f
	halt                                             ; $556d: $76
	ld e, a                                          ; $556e: $5f
	ld d, e                                          ; $556f: $53
	rra                                              ; $5570: $1f
	inc de                                           ; $5571: $13
	rrca                                             ; $5572: $0f
	ld [hl], e                                       ; $5573: $73
	ld a, $47                                        ; $5574: $3e $47
	ld b, b                                          ; $5576: $40
	sbc d                                            ; $5577: $9a
	ei                                               ; $5578: $fb
	dec b                                            ; $5579: $05
	rst $38                                          ; $557a: $ff
	adc [hl]                                         ; $557b: $8e
	ld [hl], a                                       ; $557c: $77
	ld l, a                                          ; $557d: $6f
	ld b, b                                          ; $557e: $40
	sbc d                                            ; $557f: $9a
	or e                                             ; $5580: $b3
	rrca                                             ; $5581: $0f
	ld [$0407], sp                                   ; $5582: $08 $07 $04
	ld [hl], a                                       ; $5585: $77
	ld l, b                                          ; $5586: $68
	ld l, a                                          ; $5587: $6f
	cp h                                             ; $5588: $bc
	ld a, a                                          ; $5589: $7f
	ld e, h                                          ; $558a: $5c
	sub l                                            ; $558b: $95
	ld e, a                                          ; $558c: $5f
	ld e, b                                          ; $558d: $58
	xor a                                            ; $558e: $af
	ld sp, hl                                        ; $558f: $f9
	or $ce                                           ; $5590: $f6 $ce
	ld a, h                                          ; $5592: $7c
	ld l, h                                          ; $5593: $6c
	jr c, jr_015_55ce                                ; $5594: $38 $38

	ld [hl], a                                       ; $5596: $77
	xor $df                                          ; $5597: $ee $df
	ccf                                              ; $5599: $3f
	ld a, e                                          ; $559a: $7b
	ld h, b                                          ; $559b: $60
	sbc [hl]                                         ; $559c: $9e
	ld b, a                                          ; $559d: $47
	ld l, a                                          ; $559e: $6f
	ld h, b                                          ; $559f: $60
	rst SubAFromDE                                          ; $55a0: $df
	cp $9c                                           ; $55a1: $fe $9c
	ld [bc], a                                       ; $55a3: $02
	cp $01                                           ; $55a4: $fe $01
	ld a, e                                          ; $55a6: $7b
	ld e, c                                          ; $55a7: $59
	rst SubAFromDE                                          ; $55a8: $df
	rst $38                                          ; $55a9: $ff
	add a                                            ; $55aa: $87
	inc a                                            ; $55ab: $3c
	inc h                                            ; $55ac: $24
	ld a, $32                                        ; $55ad: $3e $32
	ld e, $1e                                        ; $55af: $1e $1e
	dec e                                            ; $55b1: $1d
	dec de                                           ; $55b2: $1b
	di                                               ; $55b3: $f3
	db $fd                                           ; $55b4: $fd
	rst $38                                          ; $55b5: $ff
	rst $38                                          ; $55b6: $ff
	sbc b                                            ; $55b7: $98
	sbc b                                            ; $55b8: $98
	db $fc                                           ; $55b9: $fc
	ld h, h                                          ; $55ba: $64
	db $fc                                           ; $55bb: $fc
	inc [hl]                                         ; $55bc: $34
	add sp, $58                                      ; $55bd: $e8 $58
	ldh a, [hDisp1_SCY]                                     ; $55bf: $f0 $90
	ld h, b                                          ; $55c1: $60
	ld h, b                                          ; $55c2: $60
	pop af                                           ; $55c3: $f1
	rst SubAFromDE                                          ; $55c4: $df
	ret nz                                           ; $55c5: $c0

	ld l, a                                          ; $55c6: $6f
	ld e, [hl]                                       ; $55c7: $5e
	ld a, $c0                                        ; $55c8: $3e $c0
	sbc l                                            ; $55ca: $9d
	rst $38                                          ; $55cb: $ff
	ld c, d                                          ; $55cc: $4a
	ld a, e                                          ; $55cd: $7b

jr_015_55ce:
	cp $7e                                           ; $55ce: $fe $7e
	cp h                                             ; $55d0: $bc
	ld a, e                                          ; $55d1: $7b
	add b                                            ; $55d2: $80
	ld a, a                                          ; $55d3: $7f
	add d                                            ; $55d4: $82
	add [hl]                                         ; $55d5: $86
	jp $a1c2                                         ; $55d6: $c3 $c2 $a1


	pop hl                                           ; $55d9: $e1
	cp [hl]                                          ; $55da: $be
	cp $df                                           ; $55db: $fe $df
	or c                                             ; $55dd: $b1
	ld e, a                                          ; $55de: $5f
	ld [hl], b                                       ; $55df: $70
	ld a, a                                          ; $55e0: $7f
	ld a, [hl]                                       ; $55e1: $7e
	ld bc, $4001                                     ; $55e2: $01 $01 $40
	nop                                              ; $55e5: $00
	ld c, a                                          ; $55e6: $4f
	rrca                                             ; $55e7: $0f
	ld c, d                                          ; $55e8: $4a
	rrca                                             ; $55e9: $0f
	ld l, a                                          ; $55ea: $6f
	inc c                                            ; $55eb: $0c
	daa                                              ; $55ec: $27
	ld b, $13                                        ; $55ed: $06 $13
	ld a, d                                          ; $55ef: $7a
	ldh [c], a                                       ; $55f0: $e2
	rst $38                                          ; $55f1: $ff
	sub a                                            ; $55f2: $97
	cp [hl]                                          ; $55f3: $be
	ld a, a                                          ; $55f4: $7f
	rst $38                                          ; $55f5: $ff
	inc hl                                           ; $55f6: $23
	sbc l                                            ; $55f7: $9d
	rst $38                                          ; $55f8: $ff
	ret nz                                           ; $55f9: $c0

	rst $38                                          ; $55fa: $ff
	ld [hl], a                                       ; $55fb: $77
	db $fd                                           ; $55fc: $fd
	sub d                                            ; $55fd: $92
	pop bc                                           ; $55fe: $c1

Jump_015_55ff:
	ld a, a                                          ; $55ff: $7f
	ld hl, sp+$7f                                    ; $5600: $f8 $7f
	db $fc                                           ; $5602: $fc
	add a                                            ; $5603: $87
	rst $38                                          ; $5604: $ff
	sbc a                                            ; $5605: $9f
	ldh a, [$f0]                                     ; $5606: $f0 $f0
	ld h, b                                          ; $5608: $60
	ldh [$7f], a                                     ; $5609: $e0 $7f
	sbc $ff                                          ; $560b: $de $ff
	db $fd                                           ; $560d: $fd
	rst SubAFromDE                                          ; $560e: $df
	call z, $fe95                                    ; $560f: $cc $95 $fe
	or d                                             ; $5612: $b2
	cp $1a                                           ; $5613: $fe $1a
	db $f4                                           ; $5615: $f4
	xor h                                            ; $5616: $ac
	ld hl, sp-$38                                    ; $5617: $f8 $c8
	jr nc, @+$32                                     ; $5619: $30 $30

	halt                                             ; $561b: $76
	xor $dd                                          ; $561c: $ee $dd
	add b                                            ; $561e: $80
	ld l, a                                          ; $561f: $6f
	add h                                            ; $5620: $84
	rst SubAFromDE                                          ; $5621: $df
	ldh [$e3], a                                     ; $5622: $e0 $e3
	rst SubAFromDE                                          ; $5624: $df
	inc c                                            ; $5625: $0c
	sbc e                                            ; $5626: $9b
	ld e, $12                                        ; $5627: $1e $12
	rra                                              ; $5629: $1f
	add hl, de                                       ; $562a: $19
	halt                                             ; $562b: $76
	ld l, d                                          ; $562c: $6a
	ld sp, hl                                        ; $562d: $f9
	rst SubAFromDE                                          ; $562e: $df
	rlca                                             ; $562f: $07
	sub c                                            ; $5630: $91
	ld [$130f], sp                                   ; $5631: $08 $0f $13
	rra                                              ; $5634: $1f
	inc c                                            ; $5635: $0c
	rrca                                             ; $5636: $0f

jr_015_5637:
	dec b                                            ; $5637: $05
	rlca                                             ; $5638: $07
	dec bc                                           ; $5639: $0b
	rrca                                             ; $563a: $0f
	ld c, $0f                                        ; $563b: $0e $0f
	dec bc                                           ; $563d: $0b
	dec bc                                           ; $563e: $0b
	push hl                                          ; $563f: $e5
	rst SubAFromDE                                          ; $5640: $df
	ld h, b                                          ; $5641: $60
	ld a, a                                          ; $5642: $7f
	ld c, $7f                                        ; $5643: $0e $7f
	cp $7e                                           ; $5645: $fe $7e
	ld l, e                                          ; $5647: $6b
	rlca                                             ; $5648: $07
	call c, $dffd                                    ; $5649: $dc $fd $df
	dec c                                            ; $564c: $0d
	sbc [hl]                                         ; $564d: $9e
	ld [hl-], a                                      ; $564e: $32
	ld a, d                                          ; $564f: $7a
	ld h, [hl]                                       ; $5650: $66
	add b                                            ; $5651: $80
	ld e, c                                          ; $5652: $59
	ld a, a                                          ; $5653: $7f
	xor d                                            ; $5654: $aa
	rst $38                                          ; $5655: $ff
	jp c, Jump_015_5af7                              ; $5656: $da $f7 $5a

	rst FarCall                                          ; $5659: $f7
	cp [hl]                                          ; $565a: $be
	push hl                                          ; $565b: $e5
	rst $38                                          ; $565c: $ff
	ret nz                                           ; $565d: $c0

	ld a, a                                          ; $565e: $7f
	ret nz                                           ; $565f: $c0

	rst $38                                          ; $5660: $ff
	ldh a, [$3f]                                     ; $5661: $f0 $3f
	add hl, hl                                       ; $5663: $29
	ccf                                              ; $5664: $3f
	ld h, $ff                                        ; $5665: $26 $ff
	or $41                                           ; $5667: $f6 $41
	ld b, c                                          ; $5669: $41
	ld bc, $e001                                     ; $566a: $01 $01 $e0
	ldh [rAUD2LOW], a                                ; $566d: $e0 $18
	ld hl, sp+$04                                    ; $566f: $f8 $04
	sbc c                                            ; $5671: $99
	db $fc                                           ; $5672: $fc
	ld b, h                                          ; $5673: $44
	db $fc                                           ; $5674: $fc
	and e                                            ; $5675: $a3
	rst $38                                          ; $5676: $ff
	sub d                                            ; $5677: $92
	ld a, e                                          ; $5678: $7b
	cp $7e                                           ; $5679: $fe $7e
	rst SubAFromBC                                          ; $567b: $e7
	adc a                                            ; $567c: $8f
	db $e4                                           ; $567d: $e4
	cp a                                             ; $567e: $bf
	ei                                               ; $567f: $fb
	rra                                              ; $5680: $1f
	db $fc                                           ; $5681: $fc
	rst SubAFromHL                                          ; $5682: $d7
	cp $17                                           ; $5683: $fe $17
	ld sp, hl                                        ; $5685: $f9
	add hl, sp                                       ; $5686: $39
	ldh [$60], a                                     ; $5687: $e0 $60
	ldh a, [$30]                                     ; $5689: $f0 $30
	ret nz                                           ; $568b: $c0

	ret nz                                           ; $568c: $c0

	ld e, [hl]                                       ; $568d: $5e
	db $10                                           ; $568e: $10
	ld a, l                                          ; $568f: $7d
	push af                                          ; $5690: $f5
	ld a, l                                          ; $5691: $7d
	sbc d                                            ; $5692: $9a
	rst SubAFromDE                                          ; $5693: $df
	ldh [rPCM34], a                                  ; $5694: $e0 $77
	ld a, [$f07d]                                    ; $5696: $fa $7d $f0
	ld a, [hl]                                       ; $5699: $7e
	db $fc                                           ; $569a: $fc
	ld a, a                                          ; $569b: $7f
	ld hl, sp+$77                                    ; $569c: $f8 $77
	inc d                                            ; $569e: $14
	rst SubAFromDE                                          ; $569f: $df
	jr jr_015_5637                                   ; $56a0: $18 $95

	inc d                                            ; $56a2: $14
	inc e                                            ; $56a3: $1c
	rla                                              ; $56a4: $17
	rra                                              ; $56a5: $1f
	dec de                                           ; $56a6: $1b
	ld d, $0b                                        ; $56a7: $16 $0b
	ld c, $0f                                        ; $56a9: $0e $0f
	rrca                                             ; $56ab: $0f
	ei                                               ; $56ac: $fb
	ld e, a                                          ; $56ad: $5f
	ld l, $ff                                        ; $56ae: $2e $ff
	adc e                                            ; $56b0: $8b
	rst FarCall                                          ; $56b1: $f7
	sbc a                                            ; $56b2: $9f
	rst $38                                          ; $56b3: $ff
	sbc h                                            ; $56b4: $9c
	ld [hl], e                                       ; $56b5: $73
	ld a, a                                          ; $56b6: $7f
	ld hl, sp-$01                                    ; $56b7: $f8 $ff
	rst $38                                          ; $56b9: $ff
	inc l                                            ; $56ba: $2c
	rst SubAFromBC                                          ; $56bb: $e7
	ccf                                              ; $56bc: $3f
	rst $38                                          ; $56bd: $ff
	or h                                             ; $56be: $b4
	ld a, a                                          ; $56bf: $7f
	ld e, h                                          ; $56c0: $5c
	ccf                                              ; $56c1: $3f
	ld l, $1f                                        ; $56c2: $2e $1f
	ld e, $6e                                        ; $56c4: $1e $6e
	add $fb                                          ; $56c6: $c6 $fb

jr_015_56c8:
	adc c                                            ; $56c8: $89
	sub $f6                                          ; $56c9: $d6 $f6
	rst $38                                          ; $56cb: $ff
	ld a, c                                          ; $56cc: $79
	cp a                                             ; $56cd: $bf
	db $ed                                           ; $56ce: $ed
	ld a, [de]                                       ; $56cf: $1a
	or $fc                                           ; $56d0: $f6 $fc
	inc d                                            ; $56d2: $14
	ld hl, sp-$08                                    ; $56d3: $f8 $f8
	and c                                            ; $56d5: $a1
	pop hl                                           ; $56d6: $e1
	ret nc                                           ; $56d7: $d0

	ld [hl], b                                       ; $56d8: $70
	ret nc                                           ; $56d9: $d0

	ld [hl], b                                       ; $56da: $70
	ld hl, sp+$38                                    ; $56db: $f8 $38
	db $fc                                           ; $56dd: $fc
	db $fc                                           ; $56de: $fc
	rst AddAOntoHL                                          ; $56df: $ef
	rst SubAFromDE                                          ; $56e0: $df
	ld b, b                                          ; $56e1: $40
	db $dd                                           ; $56e2: $dd
	add b                                            ; $56e3: $80
	rst SubAFromDE                                          ; $56e4: $df
	ldh a, [$df]                                     ; $56e5: $f0 $df
	jr nz, jr_015_56c8                               ; $56e7: $20 $df

	ld b, b                                          ; $56e9: $40
	halt                                             ; $56ea: $76
	sub [hl]                                         ; $56eb: $96
	di                                               ; $56ec: $f3
	ld e, l                                          ; $56ed: $5d
	add b                                            ; $56ee: $80
	sub l                                            ; $56ef: $95
	sbc a                                            ; $56f0: $9f
	ei                                               ; $56f1: $fb
	ld l, a                                          ; $56f2: $6f
	ld a, c                                          ; $56f3: $79
	cpl                                              ; $56f4: $2f
	add hl, sp                                       ; $56f5: $39
	ld e, a                                          ; $56f6: $5f
	ld [hl], d                                       ; $56f7: $72
	ld a, a                                          ; $56f8: $7f
	ld [hl], e                                       ; $56f9: $73
	ld a, c                                          ; $56fa: $79
	add b                                            ; $56fb: $80
	sbc h                                            ; $56fc: $9c
	ld de, $080f                                     ; $56fd: $11 $0f $08
	ld [hl-], a                                      ; $5700: $32
	nop                                              ; $5701: $00
	ld a, l                                          ; $5702: $7d
	add b                                            ; $5703: $80
	sbc [hl]                                         ; $5704: $9e
	db $10                                           ; $5705: $10
	ld a, e                                          ; $5706: $7b
	add hl, de                                       ; $5707: $19
	sbc [hl]                                         ; $5708: $9e
	add $00                                          ; $5709: $c6 $00
	ret nz                                           ; $570b: $c0

	ld a, b                                          ; $570c: $78
	ret nz                                           ; $570d: $c0

	ld a, c                                          ; $570e: $79
	ld h, d                                          ; $570f: $62
	sbc [hl]                                         ; $5710: $9e
	ld [bc], a                                       ; $5711: $02
	ld l, h                                          ; $5712: $6c
	adc $df                                          ; $5713: $ce $df
	ld sp, $2f99                                     ; $5715: $31 $99 $2f
	ccf                                              ; $5718: $3f
	scf                                              ; $5719: $37
	dec l                                            ; $571a: $2d
	ld l, a                                          ; $571b: $6f
	ld [hl], l                                       ; $571c: $75
	ld d, a                                          ; $571d: $57
	ld b, d                                          ; $571e: $42
	ld [hl], b                                       ; $571f: $70
	ret nz                                           ; $5720: $c0

	sbc l                                            ; $5721: $9d
	add $bb                                          ; $5722: $c6 $bb
	ld a, c                                          ; $5724: $79
	ld h, b                                          ; $5725: $60
	sub l                                            ; $5726: $95
	ld a, a                                          ; $5727: $7f
	ld b, c                                          ; $5728: $41
	rst $38                                          ; $5729: $ff
	rst $38                                          ; $572a: $ff
	ld b, b                                          ; $572b: $40
	rst $38                                          ; $572c: $ff
	cp $7f                                           ; $572d: $fe $7f
	ld a, a                                          ; $572f: $7f
	and c                                            ; $5730: $a1
	ld c, a                                          ; $5731: $4f
	ldh [$64], a                                     ; $5732: $e0 $64
	ret nz                                           ; $5734: $c0

	ld [hl], a                                       ; $5735: $77
	cp $99                                           ; $5736: $fe $99
	or b                                             ; $5738: $b0
	ldh a, [$f0]                                     ; $5739: $f0 $f0
	sub b                                            ; $573b: $90
	ld hl, sp-$28                                    ; $573c: $f8 $d8
	ld c, a                                          ; $573e: $4f
	ld [hl+], a                                      ; $573f: $22
	sub l                                            ; $5740: $95
	nop                                              ; $5741: $00
	ei                                               ; $5742: $fb
	rst SubAFromDE                                          ; $5743: $df
	ld bc, $0287                                     ; $5744: $01 $87 $02
	inc bc                                           ; $5747: $03
	ld [bc], a                                       ; $5748: $02
	inc bc                                           ; $5749: $03
	dec a                                            ; $574a: $3d
	ccf                                              ; $574b: $3f
	ld b, [hl]                                       ; $574c: $46
	ld a, a                                          ; $574d: $7f
	sbc a                                            ; $574e: $9f
	ei                                               ; $574f: $fb
	ld l, a                                          ; $5750: $6f
	ld a, c                                          ; $5751: $79
	cpl                                              ; $5752: $2f
	add hl, sp                                       ; $5753: $39
	ld e, a                                          ; $5754: $5f
	ld [hl], d                                       ; $5755: $72
	ld a, a                                          ; $5756: $7f
	ld [hl], e                                       ; $5757: $73
	ld e, a                                          ; $5758: $5f
	ld d, e                                          ; $5759: $53
	rra                                              ; $575a: $1f
	ld de, $080f                                     ; $575b: $11 $0f $08
	db $fd                                           ; $575e: $fd
	rst SubAFromDE                                          ; $575f: $df
	ld l, a                                          ; $5760: $6f
	add l                                            ; $5761: $85

jr_015_5762:
	sub b                                            ; $5762: $90
	rst $38                                          ; $5763: $ff

jr_015_5764:
	jr nc, @+$01                                     ; $5764: $30 $ff

	jp z, Jump_015_55ff                              ; $5766: $ca $ff $55

	rst $38                                          ; $5769: $ff
	call nc, $d4bf                                   ; $576a: $d4 $bf $d4
	cp a                                             ; $576d: $bf
	ldh a, [c]                                       ; $576e: $f2
	cpl                                              ; $576f: $2f
	rst $38                                          ; $5770: $ff
	dec b                                            ; $5771: $05
	rst $38                                          ; $5772: $ff
	db $10                                           ; $5773: $10
	rst $38                                          ; $5774: $ff
	ld c, d                                          ; $5775: $4a
	rst $38                                          ; $5776: $ff
	add $ff                                          ; $5777: $c6 $ff
	ld sp, $83ff                                     ; $5779: $31 $ff $83
	ei                                               ; $577c: $fb
	rst SubAFromDE                                          ; $577d: $df
	ret nz                                           ; $577e: $c0

	add c                                            ; $577f: $81
	jr nz, jr_015_5762                               ; $5780: $20 $e0

	jr nz, jr_015_5764                               ; $5782: $20 $e0

	inc e                                            ; $5784: $1c
	db $fc                                           ; $5785: $fc
	sub d                                            ; $5786: $92
	cp $91                                           ; $5787: $fe $91
	rst $38                                          ; $5789: $ff
	ld d, a                                          ; $578a: $57
	rst $38                                          ; $578b: $ff
	ld [hl+], a                                      ; $578c: $22
	cp $d9                                           ; $578d: $fe $d9
	rst $38                                          ; $578f: $ff
	push hl                                          ; $5790: $e5
	cp a                                             ; $5791: $bf
	di                                               ; $5792: $f3
	cp a                                             ; $5793: $bf
	jp z, $04ce                                      ; $5794: $ca $ce $04

	inc b                                            ; $5797: $04
	rlca                                             ; $5798: $07
	inc b                                            ; $5799: $04
	inc bc                                           ; $579a: $03
	ld [bc], a                                       ; $579b: $02
	ld bc, $fd01                                     ; $579c: $01 $01 $fd
	rst SubAFromDE                                          ; $579f: $df
	ld sp, $2f97                                     ; $57a0: $31 $97 $2f
	ccf                                              ; $57a3: $3f
	scf                                              ; $57a4: $37
	dec l                                            ; $57a5: $2d
	ld l, a                                          ; $57a6: $6f
	ld [hl], l                                       ; $57a7: $75
	rst $38                                          ; $57a8: $ff
	rst $38                                          ; $57a9: $ff
	push af                                          ; $57aa: $f5
	adc l                                            ; $57ab: $8d
	ld a, l                                          ; $57ac: $7d
	rst $38                                          ; $57ad: $ff
	rst $38                                          ; $57ae: $ff
	add $bb                                          ; $57af: $c6 $bb
	cp $81                                           ; $57b1: $fe $81
	rst $38                                          ; $57b3: $ff
	ld a, a                                          ; $57b4: $7f
	ld b, c                                          ; $57b5: $41
	rst $38                                          ; $57b6: $ff
	rst $38                                          ; $57b7: $ff
	ld b, b                                          ; $57b8: $40
	rst $38                                          ; $57b9: $ff
	cp $7f                                           ; $57ba: $fe $7f
	ld a, a                                          ; $57bc: $7f
	and c                                            ; $57bd: $a1
	ld c, a                                          ; $57be: $4f
	ldh [$df], a                                     ; $57bf: $e0 $df
	add b                                            ; $57c1: $80
	sbc e                                            ; $57c2: $9b
	ret nz                                           ; $57c3: $c0

	ld b, b                                          ; $57c4: $40
	ret nz                                           ; $57c5: $c0

	ld b, b                                          ; $57c6: $40
	ld a, e                                          ; $57c7: $7b
	and e                                            ; $57c8: $a3
	ld a, e                                          ; $57c9: $7b
	cp $97                                           ; $57ca: $fe $97
	or b                                             ; $57cc: $b0
	ldh a, [$f0]                                     ; $57cd: $f0 $f0
	sub b                                            ; $57cf: $90
	ld hl, sp-$28                                    ; $57d0: $f8 $d8
	db $fc                                           ; $57d2: $fc
	db $fc                                           ; $57d3: $fc
	push af                                          ; $57d4: $f5
	add [hl]                                         ; $57d5: $86
	nop                                              ; $57d6: $00
	db $fd                                           ; $57d7: $fd
	rst SubAFromDE                                          ; $57d8: $df
	rrca                                             ; $57d9: $0f
	sub e                                            ; $57da: $93
	jr nc, jr_015_581c                               ; $57db: $30 $3f

	ld a, c                                          ; $57dd: $79
	ld c, a                                          ; $57de: $4f
	ld l, a                                          ; $57df: $6f
	ld d, [hl]                                       ; $57e0: $56
	or [hl]                                          ; $57e1: $b6
	jp hl                                            ; $57e2: $e9


	sbc c                                            ; $57e3: $99
	or $8f                                           ; $57e4: $f6 $8f
	ld sp, hl                                        ; $57e6: $f9
	sbc $ff                                          ; $57e7: $de $ff
	sub h                                            ; $57e9: $94
	adc $ff                                          ; $57ea: $ce $ff
	rst $38                                          ; $57ec: $ff
	ld [hl], a                                       ; $57ed: $77
	ld c, b                                          ; $57ee: $48
	ld a, a                                          ; $57ef: $7f
	ld b, b                                          ; $57f0: $40
	ccf                                              ; $57f1: $3f
	jr nz, jr_015_5813                               ; $57f2: $20 $1f

	db $10                                           ; $57f4: $10
	db $fd                                           ; $57f5: $fd
	rst SubAFromDE                                          ; $57f6: $df
	ldh [hDisp1_OBP1], a                                     ; $57f7: $e0 $94
	ld a, b                                          ; $57f9: $78
	ld hl, sp-$0c                                    ; $57fa: $f8 $f4
	sbc h                                            ; $57fc: $9c
	or h                                             ; $57fd: $b4
	ld e, h                                          ; $57fe: $5c
	ld h, d                                          ; $57ff: $62
	cp [hl]                                          ; $5800: $be
	jp nz, $827e                                     ; $5801: $c2 $7e $82

	sbc $fe                                          ; $5804: $de $fe
	sub e                                            ; $5806: $93
	db $fd                                           ; $5807: $fd
	dec sp                                           ; $5808: $3b
	ld sp, hl                                        ; $5809: $f9
	rst $38                                          ; $580a: $ff
	or $1e                                           ; $580b: $f6 $1e
	db $f4                                           ; $580d: $f4
	inc e                                            ; $580e: $1c
	ld hl, sp+$18                                    ; $580f: $f8 $18
	db $fc                                           ; $5811: $fc
	inc a                                            ; $5812: $3c

jr_015_5813:
	db $dd                                           ; $5813: $dd
	ld bc, $07df                                     ; $5814: $01 $df $07
	sub a                                            ; $5817: $97
	rrca                                             ; $5818: $0f
	add hl, bc                                       ; $5819: $09
	ld c, $0b                                        ; $581a: $0e $0b

jr_015_581c:
	dec b                                            ; $581c: $05
	rlca                                             ; $581d: $07
	inc bc                                           ; $581e: $03
	inc bc                                           ; $581f: $03
	push af                                          ; $5820: $f5
	ld [hl], a                                       ; $5821: $77
	add sp, -$01                                     ; $5822: $e8 $ff
	sub b                                            ; $5824: $90
	ld a, a                                          ; $5825: $7f
	rst $38                                          ; $5826: $ff
	cp $c3                                           ; $5827: $fe $c3
	dec a                                            ; $5829: $3d
	rst $38                                          ; $582a: $ff
	sub c                                            ; $582b: $91
	rst AddAOntoHL                                          ; $582c: $ef

jr_015_582d:
	rst $38                                          ; $582d: $ff
	cp d                                             ; $582e: $ba
	rst $38                                          ; $582f: $ff
	add $bb                                          ; $5830: $c6 $bb
	rst $38                                          ; $5832: $ff
	add c                                            ; $5833: $81
	db $dd                                           ; $5834: $dd
	rst $38                                          ; $5835: $ff
	add d                                            ; $5836: $82
	sub c                                            ; $5837: $91
	rst $38                                          ; $5838: $ff
	sbc b                                            ; $5839: $98
	rst $38                                          ; $583a: $ff
	rst $38                                          ; $583b: $ff
	sub h                                            ; $583c: $94
	rst FarCall                                          ; $583d: $f7
	sbc h                                            ; $583e: $9c
	ld a, a                                          ; $583f: $7f
	db $fc                                           ; $5840: $fc
	ei                                               ; $5841: $fb
	rst $38                                          ; $5842: $ff
	rst $38                                          ; $5843: $ff
	ldh a, [hDisp1_SCY]                                     ; $5844: $f0 $90
	ld a, b                                          ; $5846: $78
	ret z                                            ; $5847: $c8

	ld a, [hl]                                       ; $5848: $7e
	and $f8                                          ; $5849: $e6 $f8
	jr c, jr_015_582d                                ; $584b: $38 $e0

	and b                                            ; $584d: $a0
	ldh [$60], a                                     ; $584e: $e0 $60
	ret nz                                           ; $5850: $c0

	ret nz                                           ; $5851: $c0

	add b                                            ; $5852: $80
	add b                                            ; $5853: $80
	db $fd                                           ; $5854: $fd
	reti                                             ; $5855: $d9


	add b                                            ; $5856: $80
	rst SubAFromDE                                          ; $5857: $df
	ldh [$df], a                                     ; $5858: $e0 $df
	ret nz                                           ; $585a: $c0

	ld hl, sp+$01                                    ; $585b: $f8 $01
	ei                                               ; $585d: $fb
	rst SubAFromDE                                          ; $585e: $df
	ld bc, $0398                                     ; $585f: $01 $98 $03
	ld [bc], a                                       ; $5862: $02
	inc bc                                           ; $5863: $03
	ld [bc], a                                       ; $5864: $02
	dec b                                            ; $5865: $05
	rlca                                             ; $5866: $07
	inc b                                            ; $5867: $04
	ld a, e                                          ; $5868: $7b
	cp $de                                           ; $5869: $fe $de
	rlca                                             ; $586b: $07
	sbc h                                            ; $586c: $9c
	ld b, $07                                        ; $586d: $06 $07
	rlca                                             ; $586f: $07
	ld [hl], a                                       ; $5870: $77
	ldh a, [$df]                                     ; $5871: $f0 $df
	ld bc, $dffb                                     ; $5873: $01 $fb $df
	ld a, a                                          ; $5876: $7f
	sub e                                            ; $5877: $93
	add e                                            ; $5878: $83
	rst $38                                          ; $5879: $ff
	rst GetHLinHL                                          ; $587a: $cf
	ld a, h                                          ; $587b: $7c
	rst $38                                          ; $587c: $ff
	jr nc, @+$01                                     ; $587d: $30 $ff

	ld bc, $b3ce                                     ; $587f: $01 $ce $b3
	ld a, h                                          ; $5882: $7c
	rst GetHLinHL                                          ; $5883: $cf
	sbc $ff                                          ; $5884: $de $ff
	sbc b                                            ; $5886: $98
	ld [hl], c                                       ; $5887: $71
	rst $38                                          ; $5888: $ff
	rst $38                                          ; $5889: $ff
	cp a                                             ; $588a: $bf
	ld b, b                                          ; $588b: $40
	rst $38                                          ; $588c: $ff
	nop                                              ; $588d: $00
	ld a, e                                          ; $588e: $7b
	cp $9e                                           ; $588f: $fe $9e
	add c                                            ; $5891: $81
	ei                                               ; $5892: $fb
	rst SubAFromDE                                          ; $5893: $df
	ret nz                                           ; $5894: $c0

	sbc c                                            ; $5895: $99
	and b                                            ; $5896: $a0
	ldh [$a0], a                                     ; $5897: $e0 $a0
	ldh [rAUD1SWEEP], a                              ; $5899: $e0 $10
	ldh a, [rPCM34]                                  ; $589b: $f0 $77
	cp $df                                           ; $589d: $fe $df
	ldh a, [hDisp1_OBP0]                                     ; $589f: $f0 $93
	add sp, -$28                                     ; $58a1: $e8 $d8
	ret z                                            ; $58a3: $c8

	ld hl, sp-$50                                    ; $58a4: $f8 $b0
	ldh a, [$a0]                                     ; $58a6: $f0 $a0
	ldh [$c0], a                                     ; $58a8: $e0 $c0
	ret nz                                           ; $58aa: $c0

	ldh [$e0], a                                     ; $58ab: $e0 $e0
	db $dd                                           ; $58ad: $dd
	ld bc, $07df                                     ; $58ae: $01 $df $07
	sub a                                            ; $58b1: $97
	rrca                                             ; $58b2: $0f
	add hl, bc                                       ; $58b3: $09
	ld c, $0b                                        ; $58b4: $0e $0b
	dec b                                            ; $58b6: $05
	rlca                                             ; $58b7: $07
	inc bc                                           ; $58b8: $03
	inc bc                                           ; $58b9: $03
	push af                                          ; $58ba: $f5
	ld [hl], a                                       ; $58bb: $77
	add sp, $7b                                      ; $58bc: $e8 $7b
	and h                                            ; $58be: $a4
	sub c                                            ; $58bf: $91
	rst $38                                          ; $58c0: $ff
	cp $c3                                           ; $58c1: $fe $c3
	dec a                                            ; $58c3: $3d
	rst $38                                          ; $58c4: $ff
	sub c                                            ; $58c5: $91
	rst AddAOntoHL                                          ; $58c6: $ef
	rst $38                                          ; $58c7: $ff
	cp d                                             ; $58c8: $ba
	rst $38                                          ; $58c9: $ff
	add $bb                                          ; $58ca: $c6 $bb
	rst $38                                          ; $58cc: $ff
	add c                                            ; $58cd: $81
	db $dd                                           ; $58ce: $dd
	rst $38                                          ; $58cf: $ff
	sbc e                                            ; $58d0: $9b
	sub c                                            ; $58d1: $91
	rst $38                                          ; $58d2: $ff
	sbc c                                            ; $58d3: $99
	rst $38                                          ; $58d4: $ff
	ld a, e                                          ; $58d5: $7b
	db $fd                                           ; $58d6: $fd
	sub c                                            ; $58d7: $91
	sbc c                                            ; $58d8: $99
	ld a, a                                          ; $58d9: $7f
	ld sp, hl                                        ; $58da: $f9
	rst FarCall                                          ; $58db: $f7
	rst $38                                          ; $58dc: $ff
	rst $38                                          ; $58dd: $ff
	ldh a, [hDisp1_SCY]                                     ; $58de: $f0 $90
	ld a, b                                          ; $58e0: $78
	ret z                                            ; $58e1: $c8

	cp $e6                                           ; $58e2: $fe $e6
	ld hl, sp+$38                                    ; $58e4: $f8 $38
	ld a, e                                          ; $58e6: $7b
	and c                                            ; $58e7: $a1
	sbc d                                            ; $58e8: $9a
	ld h, b                                          ; $58e9: $60
	ret nz                                           ; $58ea: $c0

	ret nz                                           ; $58eb: $c0

	add b                                            ; $58ec: $80
	add b                                            ; $58ed: $80
	push af                                          ; $58ee: $f5
	rst SubAFromDE                                          ; $58ef: $df
	ldh [$df], a                                     ; $58f0: $e0 $df
	ret nz                                           ; $58f2: $c0

	rra                                              ; $58f3: $1f
	and b                                            ; $58f4: $a0
	ld [hl], a                                       ; $58f5: $77
	sbc [hl]                                         ; $58f6: $9e
	ccf                                              ; $58f7: $3f
	and b                                            ; $58f8: $a0
	sbc $7f                                          ; $58f9: $de $7f
	sub d                                            ; $58fb: $92
	ld d, c                                          ; $58fc: $51
	ld a, $22                                        ; $58fd: $3e $22
	ld a, $26                                        ; $58ff: $3e $26
	dec a                                            ; $5901: $3d
	ccf                                              ; $5902: $3f
	rst FarCall                                          ; $5903: $f7
	rst AddAOntoHL                                          ; $5904: $ef
	rst GetHLinHL                                          ; $5905: $cf
	rst FarCall                                          ; $5906: $f7
	ld a, h                                          ; $5907: $7c
	ld a, h                                          ; $5908: $7c
	rla                                              ; $5909: $17
	and b                                            ; $590a: $a0
	ld c, a                                          ; $590b: $4f
	ldh a, [c]                                       ; $590c: $f2
	adc c                                            ; $590d: $89
	nop                                              ; $590e: $00

jr_015_590f:
	inc a                                            ; $590f: $3c
	dec a                                            ; $5910: $3d
	jp $8d71                                         ; $5911: $c3 $71 $8d


	ld h, c                                          ; $5914: $61
	sbc c                                            ; $5915: $99
	ld hl, $1151                                     ; $5916: $21 $51 $11
	add hl, hl                                       ; $5919: $29
	ld bc, $041d                                     ; $591a: $01 $1d $04
	ld a, [hl-]                                      ; $591d: $3a
	jr @+$66                                         ; $591e: $18 $64

	ld [hl], b                                       ; $5920: $70
	adc b                                            ; $5921: $88
	ld h, b                                          ; $5922: $60
	sbc b                                            ; $5923: $98
	db $fd                                           ; $5924: $fd
	rst SubAFromDE                                          ; $5925: $df
	rra                                              ; $5926: $1f
	sub e                                            ; $5927: $93
	ld h, b                                          ; $5928: $60
	ld a, a                                          ; $5929: $7f
	di                                               ; $592a: $f3
	sbc a                                            ; $592b: $9f
	rst $38                                          ; $592c: $ff
	adc h                                            ; $592d: $8c
	ld a, a                                          ; $592e: $7f
	ret nz                                           ; $592f: $c0

	inc sp                                           ; $5930: $33

jr_015_5931:
	db $ec                                           ; $5931: $ec
	rra                                              ; $5932: $1f
	di                                               ; $5933: $f3
	sbc $ff                                          ; $5934: $de $ff
	sub h                                            ; $5936: $94
	sbc h                                            ; $5937: $9c
	rst $38                                          ; $5938: $ff
	rst $38                                          ; $5939: $ff
	rst AddAOntoHL                                          ; $593a: $ef
	sub b                                            ; $593b: $90
	rst $38                                          ; $593c: $ff
	add b                                            ; $593d: $80
	ld a, a                                          ; $593e: $7f
	ld b, b                                          ; $593f: $40
	rst $38                                          ; $5940: $ff
	ldh [$6e], a                                     ; $5941: $e0 $6e
	ldh [c], a                                       ; $5943: $e2
	ld a, d                                          ; $5944: $7a
	db $ec                                           ; $5945: $ec
	sub a                                            ; $5946: $97
	jr c, jr_015_5931                                ; $5947: $38 $e8

	jr c, jr_015_590f                                ; $5949: $38 $c4

	ld a, h                                          ; $594b: $7c
	add h                                            ; $594c: $84
	db $fc                                           ; $594d: $fc
	inc b                                            ; $594e: $04
	sbc $fc                                          ; $594f: $de $fc
	sub e                                            ; $5951: $93
	ld a, [$f276]                                    ; $5952: $fa $76 $f2
	cp $ec                                           ; $5955: $fe $ec
	inc a                                            ; $5957: $3c
	add sp, $38                                      ; $5958: $e8 $38
	cp $3e                                           ; $595a: $fe $3e
	rst $38                                          ; $595c: $ff
	ld [hl], c                                       ; $595d: $71
	db $e3                                           ; $595e: $e3
	rst SubAFromDE                                          ; $595f: $df
	add b                                            ; $5960: $80
	adc l                                            ; $5961: $8d
	jr nc, jr_015_5931                               ; $5962: $30 $cd

	ld [$0074], sp                                   ; $5964: $08 $74 $00
	inc c                                            ; $5967: $0c
	inc b                                            ; $5968: $04
	ld a, [de]                                       ; $5969: $1a
	ld [$1834], sp                                   ; $596a: $08 $34 $18
	ld h, $3e                                        ; $596d: $26 $3e
	ld b, c                                          ; $596f: $41
	inc e                                            ; $5970: $1c
	ld h, d                                          ; $5971: $62
	nop                                              ; $5972: $00
	inc a                                            ; $5973: $3c
	di                                               ; $5974: $f3
	sub e                                            ; $5975: $93
	ccf                                              ; $5976: $3f
	rst $38                                          ; $5977: $ff
	rra                                              ; $5978: $1f
	ld [hl], b                                       ; $5979: $70
	ld c, a                                          ; $597a: $4f
	ld a, a                                          ; $597b: $7f
	inc [hl]                                         ; $597c: $34
	dec sp                                           ; $597d: $3b
	rla                                              ; $597e: $17
	ld e, $0f                                        ; $597f: $1e $0f
	add hl, bc                                       ; $5981: $09
	ld a, d                                          ; $5982: $7a
	ld hl, sp-$6a                                    ; $5983: $f8 $96
	inc c                                            ; $5985: $0c
	rrca                                             ; $5986: $0f
	ld [$080f], sp                                   ; $5987: $08 $0f $08
	rlca                                             ; $598a: $07
	dec b                                            ; $598b: $05
	inc bc                                           ; $598c: $03
	inc bc                                           ; $598d: $03
	ld l, [hl]                                       ; $598e: $6e
	ld b, h                                          ; $598f: $44
	rst SubAFromDE                                          ; $5990: $df
	ld bc, $7e7f                                     ; $5991: $01 $7f $7e
	ld a, a                                          ; $5994: $7f
	ld h, a                                          ; $5995: $67
	add d                                            ; $5996: $82
	ld a, b                                          ; $5997: $78
	ld hl, sp+$78                                    ; $5998: $f8 $78
	ret z                                            ; $599a: $c8

	ld hl, sp-$58                                    ; $599b: $f8 $a8
	ld hl, sp-$68                                    ; $599d: $f8 $98
	add sp, -$08                                     ; $599f: $e8 $f8
	ret z                                            ; $59a1: $c8

	ld a, b                                          ; $59a2: $78
	db $fc                                           ; $59a3: $fc
	inc a                                            ; $59a4: $3c
	db $fc                                           ; $59a5: $fc
	db $e4                                           ; $59a6: $e4
	cp [hl]                                          ; $59a7: $be
	ld h, d                                          ; $59a8: $62
	rra                                              ; $59a9: $1f
	rst FarCall                                          ; $59aa: $f7
	cp c                                             ; $59ab: $b9
	rst $38                                          ; $59ac: $ff
	db $ed                                           ; $59ad: $ed
	xor a                                            ; $59ae: $af
	ld a, e                                          ; $59af: $7b
	ld a, a                                          ; $59b0: $7f
	rst $38                                          ; $59b1: $ff
	rst $38                                          ; $59b2: $ff
	ldh [$73], a                                     ; $59b3: $e0 $73
	ld e, [hl]                                       ; $59b5: $5e
	daa                                              ; $59b6: $27
	add d                                            ; $59b7: $82
	ld a, d                                          ; $59b8: $7a
	ld b, b                                          ; $59b9: $40
	sub d                                            ; $59ba: $92
	rra                                              ; $59bb: $1f
	add hl, de                                       ; $59bc: $19
	ld h, l                                          ; $59bd: $65
	ld [hl], c                                       ; $59be: $71
	adc c                                            ; $59bf: $89
	ld [hl], c                                       ; $59c0: $71
	adc c                                            ; $59c1: $89
	jr c, jr_015_5a08                                ; $59c2: $38 $44

	ld [$0034], sp                                   ; $59c4: $08 $34 $00
	ld c, $fe                                        ; $59c7: $0e $fe
	rst SubAFromDE                                          ; $59c9: $df
	ld b, $94                                        ; $59ca: $06 $94
	add hl, de                                       ; $59cc: $19
	inc e                                            ; $59cd: $1c
	ld [hl+], a                                      ; $59ce: $22
	jr c, jr_015_5a15                                ; $59cf: $38 $44

	inc e                                            ; $59d1: $1c
	ld h, d                                          ; $59d2: $62
	ld b, $39                                        ; $59d3: $06 $39
	nop                                              ; $59d5: $00
	rrca                                             ; $59d6: $0f
	ld [hl], e                                       ; $59d7: $73
	add b                                            ; $59d8: $80

jr_015_59d9:
	sbc h                                            ; $59d9: $9c
	ldh a, [$cf]                                     ; $59da: $f0 $cf
	rst $38                                          ; $59dc: $ff
	rra                                              ; $59dd: $1f
	add b                                            ; $59de: $80
	ld h, d                                          ; $59df: $62
	ld [hl], h                                       ; $59e0: $74
	sbc c                                            ; $59e1: $99
	ld [hl+], a                                      ; $59e2: $22
	ld c, $10                                        ; $59e3: $0e $10
	jr jr_015_59e7                                   ; $59e5: $18 $00

jr_015_59e7:
	db $10                                           ; $59e7: $10
	ld a, e                                          ; $59e8: $7b
	cp $96                                           ; $59e9: $fe $96
	jr jr_015_5a0d                                   ; $59eb: $18 $20

	inc c                                            ; $59ed: $0c
	ld [hl], b                                       ; $59ee: $70
	rlca                                             ; $59ef: $07
	ld [$0002], sp                                   ; $59f0: $08 $02 $00
	nop                                              ; $59f3: $00
	ld a, e                                          ; $59f4: $7b
	db $fd                                           ; $59f5: $fd
	ld e, a                                          ; $59f6: $5f
	sub l                                            ; $59f7: $95
	ld a, e                                          ; $59f8: $7b
	sub e                                            ; $59f9: $93
	sub d                                            ; $59fa: $92
	ld b, b                                          ; $59fb: $40
	ld h, b                                          ; $59fc: $60
	jr jr_015_5a1f                                   ; $59fd: $18 $20

	db $10                                           ; $59ff: $10
	jr nz, jr_015_5a02                               ; $5a00: $20 $00

jr_015_5a02:
	ld h, b                                          ; $5a02: $60
	nop                                              ; $5a03: $00
	ret nz                                           ; $5a04: $c0

	jr nz, jr_015_5a07                               ; $5a05: $20 $00

jr_015_5a07:
	and b                                            ; $5a07: $a0

jr_015_5a08:
	ld a, e                                          ; $5a08: $7b
	rst SubAFromHL                                          ; $5a09: $d7
	rst FarCall                                          ; $5a0a: $f7
	sbc d                                            ; $5a0b: $9a
	ld b, b                                          ; $5a0c: $40

jr_015_5a0d:
	inc bc                                           ; $5a0d: $03
	jr nz, jr_015_5a1c                               ; $5a0e: $20 $0c

	jr nc, @+$79                                     ; $5a10: $30 $77

	jp nz, Jump_015_7fff                             ; $5a12: $c2 $ff $7f

jr_015_5a15:
	push hl                                          ; $5a15: $e5
	sub a                                            ; $5a16: $97
	jr nc, jr_015_59d9                               ; $5a17: $30 $c0

	stop                                             ; $5a19: $10 $00
	inc b                                            ; $5a1b: $04

jr_015_5a1c:
	nop                                              ; $5a1c: $00
	inc bc                                           ; $5a1d: $03
	inc b                                            ; $5a1e: $04

jr_015_5a1f:
	ld a, e                                          ; $5a1f: $7b
	ret nz                                           ; $5a20: $c0

	ld l, a                                          ; $5a21: $6f
	cp [hl]                                          ; $5a22: $be
	sbc h                                            ; $5a23: $9c
	ld b, b                                          ; $5a24: $40
	nop                                              ; $5a25: $00
	ret nz                                           ; $5a26: $c0

	ld a, e                                          ; $5a27: $7b
	pop bc                                           ; $5a28: $c1
	ld a, a                                          ; $5a29: $7f
	and $9c                                          ; $5a2a: $e6 $9c
	inc e                                            ; $5a2c: $1c
	db $10                                           ; $5a2d: $10
	ld [$de6f], sp                                   ; $5a2e: $08 $6f $de
	ld a, a                                          ; $5a31: $7f
	cp $9d                                           ; $5a32: $fe $9d
	ret nc                                           ; $5a34: $d0

	jr nz, jr_015_5ab2                               ; $5a35: $20 $7b

	db $d3                                           ; $5a37: $d3
	sbc [hl]                                         ; $5a38: $9e
	ld [$dff4], sp                                   ; $5a39: $08 $f4 $df
	db $10                                           ; $5a3c: $10
	sbc c                                            ; $5a3d: $99
	nop                                              ; $5a3e: $00
	jr c, jr_015_5a41                                ; $5a3f: $38 $00

jr_015_5a41:
	ld a, h                                          ; $5a41: $7c
	add d                                            ; $5a42: $82
	jr c, jr_015_5abc                                ; $5a43: $38 $77

	cp d                                             ; $5a45: $ba
	ld d, a                                          ; $5a46: $57
	and h                                            ; $5a47: $a4
	push af                                          ; $5a48: $f5
	rst SubAFromDE                                          ; $5a49: $df
	ld [$cb7b], sp                                   ; $5a4a: $08 $7b $cb
	ld a, a                                          ; $5a4d: $7f
	ld [hl+], a                                      ; $5a4e: $22
	ld [hl], a                                       ; $5a4f: $77
	ld a, [$c267]                                    ; $5a50: $fa $67 $c2
	xor b                                            ; $5a53: $a8
	nop                                              ; $5a54: $00
	rst $38                                          ; $5a55: $ff
	rst SubAFromDE                                          ; $5a56: $df
	rlca                                             ; $5a57: $07
	adc e                                            ; $5a58: $8b
	ld [hl+], a                                      ; $5a59: $22
	inc hl                                           ; $5a5a: $23
	rra                                              ; $5a5b: $1f
	rra                                              ; $5a5c: $1f
	ld [$060f], sp                                   ; $5a5d: $08 $0f $06
	rlca                                             ; $5a60: $07
	inc b                                            ; $5a61: $04
	rlca                                             ; $5a62: $07
	ld [$090f], sp                                   ; $5a63: $08 $0f $09
	rrca                                             ; $5a66: $0f
	dec b                                            ; $5a67: $05
	rlca                                             ; $5a68: $07
	inc bc                                           ; $5a69: $03
	inc bc                                           ; $5a6a: $03
	ld bc, $7b00                                     ; $5a6b: $01 $00 $7b
	cp $dc                                           ; $5a6e: $fe $dc
	ld bc, $dfff                                     ; $5a70: $01 $ff $df
	cp b                                             ; $5a73: $b8
	sbc h                                            ; $5a74: $9c
	ld h, [hl]                                       ; $5a75: $66
	cp $31                                           ; $5a76: $fe $31
	sbc $ff                                          ; $5a78: $de $ff
	adc a                                            ; $5a7a: $8f
	ld d, c                                          ; $5a7b: $51
	rst $38                                          ; $5a7c: $ff
	and h                                            ; $5a7d: $a4
	rst $38                                          ; $5a7e: $ff
	or d                                             ; $5a7f: $b2
	rst $38                                          ; $5a80: $ff
	cp d                                             ; $5a81: $ba
	rst AddAOntoHL                                          ; $5a82: $ef
	rst $38                                          ; $5a83: $ff
	ld h, a                                          ; $5a84: $67
	rst $38                                          ; $5a85: $ff
	xor l                                            ; $5a86: $ad
	ld [hl], a                                       ; $5a87: $77
	sbc $ff                                          ; $5a88: $de $ff
	call z, $fe7b                                    ; $5a8a: $cc $7b $fe
	ld a, a                                          ; $5a8d: $7f
	jp hl                                            ; $5a8e: $e9


	sbc [hl]                                         ; $5a8f: $9e
	add e                                            ; $5a90: $83
	db $fd                                           ; $5a91: $fd
	rst SubAFromDE                                          ; $5a92: $df
	add b                                            ; $5a93: $80
	rst SubAFromDE                                          ; $5a94: $df
	ret nz                                           ; $5a95: $c0

	rst SubAFromDE                                          ; $5a96: $df
	add b                                            ; $5a97: $80
	sbc e                                            ; $5a98: $9b
	ld b, b                                          ; $5a99: $40
	ret nz                                           ; $5a9a: $c0

	and b                                            ; $5a9b: $a0
	ldh [$6f], a                                     ; $5a9c: $e0 $6f
	cp $9c                                           ; $5a9e: $fe $9c
	ld h, b                                          ; $5aa0: $60
	ldh [$60], a                                     ; $5aa1: $e0 $60
	ld a, e                                          ; $5aa3: $7b
	ld sp, hl                                        ; $5aa4: $f9
	ld [hl], a                                       ; $5aa5: $77
	db $ec                                           ; $5aa6: $ec
	rst SubAFromDE                                          ; $5aa7: $df
	add b                                            ; $5aa8: $80
	rst $38                                          ; $5aa9: $ff
	rst SubAFromDE                                          ; $5aaa: $df
	dec c                                            ; $5aab: $0d
	sbc e                                            ; $5aac: $9b
	ld e, $13                                        ; $5aad: $1e $13
	rra                                              ; $5aaf: $1f
	inc de                                           ; $5ab0: $13
	ld a, e                                          ; $5ab1: $7b

jr_015_5ab2:
	and a                                            ; $5ab2: $a7
	sbc l                                            ; $5ab3: $9d
	rrca                                             ; $5ab4: $0f
	nop                                              ; $5ab5: $00
	ld l, e                                          ; $5ab6: $6b
	xor h                                            ; $5ab7: $ac
	sbc h                                            ; $5ab8: $9c
	ld [bc], a                                       ; $5ab9: $02
	inc bc                                           ; $5aba: $03
	ld [bc], a                                       ; $5abb: $02

jr_015_5abc:
	sbc $03                                          ; $5abc: $de $03
	adc b                                            ; $5abe: $88
	inc c                                            ; $5abf: $0c
	rrca                                             ; $5ac0: $0f
	rlca                                             ; $5ac1: $07
	rlca                                             ; $5ac2: $07
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	cp $ff                                           ; $5ac5: $fe $ff
	cpl                                              ; $5ac7: $2f
	ld sp, hl                                        ; $5ac8: $f9
	sbc a                                            ; $5ac9: $9f

jr_015_5aca:
	ldh a, [$9f]                                     ; $5aca: $f0 $9f
	jp hl                                            ; $5acc: $e9


	add [hl]                                         ; $5acd: $86
	rst $38                                          ; $5ace: $ff
	sub c                                            ; $5acf: $91
	rst AddAOntoHL                                          ; $5ad0: $ef
	sub b                                            ; $5ad1: $90
	rst $38                                          ; $5ad2: $ff
	jr @+$01                                         ; $5ad3: $18 $ff

	rst SubAFromBC                                          ; $5ad5: $e7
	ld a, e                                          ; $5ad6: $7b
	db $fc                                           ; $5ad7: $fc
	sbc d                                            ; $5ad8: $9a
	jr z, jr_015_5aca                                ; $5ad9: $28 $ef

	inc h                                            ; $5adb: $24
	rst SubAFromBC                                          ; $5adc: $e7
	ld a, h                                          ; $5add: $7c
	sbc $ff                                          ; $5ade: $de $ff
	sbc c                                            ; $5ae0: $99
	db $fc                                           ; $5ae1: $fc
	rst $38                                          ; $5ae2: $ff
	rrca                                             ; $5ae3: $0f
	rrca                                             ; $5ae4: $0f
	ld b, b                                          ; $5ae5: $40
	ret nz                                           ; $5ae6: $c0

	ld l, a                                          ; $5ae7: $6f
	xor b                                            ; $5ae8: $a8
	sbc [hl]                                         ; $5ae9: $9e
	jr nz, jr_015_5b67                               ; $5aea: $20 $7b

	cp $df                                           ; $5aec: $fe $df
	ret nz                                           ; $5aee: $c0

	ld a, a                                          ; $5aef: $7f
	db $f4                                           ; $5af0: $f4
	db $db                                           ; $5af1: $db
	add b                                            ; $5af2: $80
	ld [hl], a                                       ; $5af3: $77
	ld [$c0df], a                                    ; $5af4: $ea $df $c0

Jump_015_5af7:
	rst SubAFromDE                                          ; $5af7: $df
	ldh a, [$df]                                     ; $5af8: $f0 $df
	ret nz                                           ; $5afa: $c0

	ld h, d                                          ; $5afb: $62
	ld [bc], a                                       ; $5afc: $02
	rst $38                                          ; $5afd: $ff
	rst SubAFromDE                                          ; $5afe: $df
	rlca                                             ; $5aff: $07
	adc e                                            ; $5b00: $8b
	ld [hl+], a                                      ; $5b01: $22
	inc hl                                           ; $5b02: $23
	rra                                              ; $5b03: $1f
	rra                                              ; $5b04: $1f
	ld [$060f], sp                                   ; $5b05: $08 $0f $06
	rlca                                             ; $5b08: $07
	inc b                                            ; $5b09: $04
	rlca                                             ; $5b0a: $07
	ld [$090f], sp                                   ; $5b0b: $08 $0f $09
	rrca                                             ; $5b0e: $0f
	dec b                                            ; $5b0f: $05
	rlca                                             ; $5b10: $07
	inc bc                                           ; $5b11: $03
	inc bc                                           ; $5b12: $03
	ld bc, $7b00                                     ; $5b13: $01 $00 $7b
	cp $dc                                           ; $5b16: $fe $dc
	ld bc, $dfff                                     ; $5b18: $01 $ff $df
	cp b                                             ; $5b1b: $b8
	sbc h                                            ; $5b1c: $9c
	ld h, [hl]                                       ; $5b1d: $66
	cp $31                                           ; $5b1e: $fe $31
	sbc $ff                                          ; $5b20: $de $ff
	adc a                                            ; $5b22: $8f
	ld d, c                                          ; $5b23: $51
	rst $38                                          ; $5b24: $ff
	and h                                            ; $5b25: $a4
	rst $38                                          ; $5b26: $ff
	or d                                             ; $5b27: $b2
	rst $38                                          ; $5b28: $ff
	cp d                                             ; $5b29: $ba
	rst AddAOntoHL                                          ; $5b2a: $ef
	rst $38                                          ; $5b2b: $ff
	ld h, a                                          ; $5b2c: $67
	rst $38                                          ; $5b2d: $ff
	xor l                                            ; $5b2e: $ad
	ld [hl], a                                       ; $5b2f: $77
	sbc $ff                                          ; $5b30: $de $ff
	call z, $fe7b                                    ; $5b32: $cc $7b $fe
	ld a, a                                          ; $5b35: $7f
	jp hl                                            ; $5b36: $e9


	sbc [hl]                                         ; $5b37: $9e
	add e                                            ; $5b38: $83
	db $fd                                           ; $5b39: $fd
	rst SubAFromDE                                          ; $5b3a: $df
	add b                                            ; $5b3b: $80
	rst SubAFromDE                                          ; $5b3c: $df
	ret nz                                           ; $5b3d: $c0

	rst SubAFromDE                                          ; $5b3e: $df
	add b                                            ; $5b3f: $80
	sbc e                                            ; $5b40: $9b
	ld b, b                                          ; $5b41: $40
	ret nz                                           ; $5b42: $c0

	and b                                            ; $5b43: $a0
	ldh [$6f], a                                     ; $5b44: $e0 $6f
	cp $9c                                           ; $5b46: $fe $9c
	ld h, b                                          ; $5b48: $60
	ldh [$60], a                                     ; $5b49: $e0 $60
	ld a, e                                          ; $5b4b: $7b
	ld sp, hl                                        ; $5b4c: $f9
	ld [hl], a                                       ; $5b4d: $77
	db $ec                                           ; $5b4e: $ec
	rst SubAFromDE                                          ; $5b4f: $df
	add b                                            ; $5b50: $80
	sbc c                                            ; $5b51: $99
	ld [bc], a                                       ; $5b52: $02
	inc bc                                           ; $5b53: $03
	inc b                                            ; $5b54: $04
	rlca                                             ; $5b55: $07
	ld b, $07                                        ; $5b56: $06 $07
	ld a, e                                          ; $5b58: $7b
	xor c                                            ; $5b59: $a9
	sbc [hl]                                         ; $5b5a: $9e
	dec bc                                           ; $5b5b: $0b
	ld a, e                                          ; $5b5c: $7b
	and c                                            ; $5b5d: $a1
	ld a, a                                          ; $5b5e: $7f
	cp $9e                                           ; $5b5f: $fe $9e
	rlca                                             ; $5b61: $07
	db $dd                                           ; $5b62: $dd
	ld bc, $ec7f                                     ; $5b63: $01 $7f $ec
	ld a, a                                          ; $5b66: $7f

jr_015_5b67:
	cp $df                                           ; $5b67: $fe $df
	inc bc                                           ; $5b69: $03
	adc b                                            ; $5b6a: $88
	inc c                                            ; $5b6b: $0c
	rrca                                             ; $5b6c: $0f
	rlca                                             ; $5b6d: $07
	rlca                                             ; $5b6e: $07
	nop                                              ; $5b6f: $00
	nop                                              ; $5b70: $00
	cp $ff                                           ; $5b71: $fe $ff
	cpl                                              ; $5b73: $2f
	ld sp, hl                                        ; $5b74: $f9
	sbc a                                            ; $5b75: $9f

jr_015_5b76:
	ldh a, [$9f]                                     ; $5b76: $f0 $9f
	jp hl                                            ; $5b78: $e9


	add [hl]                                         ; $5b79: $86
	rst $38                                          ; $5b7a: $ff
	sub c                                            ; $5b7b: $91
	rst AddAOntoHL                                          ; $5b7c: $ef
	sub b                                            ; $5b7d: $90
	rst $38                                          ; $5b7e: $ff
	jr @+$01                                         ; $5b7f: $18 $ff

	rst SubAFromBC                                          ; $5b81: $e7
	ld a, e                                          ; $5b82: $7b
	db $fc                                           ; $5b83: $fc
	sbc d                                            ; $5b84: $9a
	jr z, jr_015_5b76                                ; $5b85: $28 $ef

	inc h                                            ; $5b87: $24
	rst SubAFromBC                                          ; $5b88: $e7
	ld a, h                                          ; $5b89: $7c
	sbc $ff                                          ; $5b8a: $de $ff
	sbc c                                            ; $5b8c: $99
	db $fc                                           ; $5b8d: $fc
	rst $38                                          ; $5b8e: $ff
	rrca                                             ; $5b8f: $0f
	rrca                                             ; $5b90: $0f
	ld b, b                                          ; $5b91: $40
	ret nz                                           ; $5b92: $c0

	ld l, a                                          ; $5b93: $6f
	xor b                                            ; $5b94: $a8
	sbc [hl]                                         ; $5b95: $9e
	jr nz, jr_015_5c13                               ; $5b96: $20 $7b

	cp $df                                           ; $5b98: $fe $df
	ret nz                                           ; $5b9a: $c0

	ld a, a                                          ; $5b9b: $7f
	db $f4                                           ; $5b9c: $f4
	db $db                                           ; $5b9d: $db
	add b                                            ; $5b9e: $80
	ld [hl], a                                       ; $5b9f: $77
	ld [$c0df], a                                    ; $5ba0: $ea $df $c0
	rst SubAFromDE                                          ; $5ba3: $df
	ldh a, [$df]                                     ; $5ba4: $f0 $df
	ret nz                                           ; $5ba6: $c0

	rra                                              ; $5ba7: $1f
	ld b, b                                          ; $5ba8: $40
	sbc $0f                                          ; $5ba9: $de $0f
	ld a, a                                          ; $5bab: $7f
	pop af                                           ; $5bac: $f1
	sbc [hl]                                         ; $5bad: $9e
	ld [$402f], sp                                   ; $5bae: $08 $2f $40
	sub l                                            ; $5bb1: $95
	rst $38                                          ; $5bb2: $ff
	sbc $77                                          ; $5bb3: $de $77
	call z, $deff                                    ; $5bb5: $cc $ff $de
	rst $38                                          ; $5bb8: $ff
	pop hl                                           ; $5bb9: $e1
	rst $38                                          ; $5bba: $ff
	ld b, c                                          ; $5bbb: $41
	ld a, e                                          ; $5bbc: $7b
	call c, $0c9a                                    ; $5bbd: $dc $9a $0c
	rra                                              ; $5bc0: $1f
	ld [de], a                                       ; $5bc1: $12
	rra                                              ; $5bc2: $1f
	inc de                                           ; $5bc3: $13
	ld a, e                                          ; $5bc4: $7b
	rst JumpTable                                          ; $5bc5: $c7
	sbc l                                            ; $5bc6: $9d
	rrca                                             ; $5bc7: $0f
	nop                                              ; $5bc8: $00
	ld l, e                                          ; $5bc9: $6b
	inc c                                            ; $5bca: $0c
	ld d, a                                          ; $5bcb: $57
	ld h, b                                          ; $5bcc: $60
	sub h                                            ; $5bcd: $94
	rst $38                                          ; $5bce: $ff
	ld c, a                                          ; $5bcf: $4f
	rst $38                                          ; $5bd0: $ff
	ld c, c                                          ; $5bd1: $49
	rst $38                                          ; $5bd2: $ff
	ld d, b                                          ; $5bd3: $50
	rst $38                                          ; $5bd4: $ff
	ld e, c                                          ; $5bd5: $59
	cp $ff                                           ; $5bd6: $fe $ff
	sbc c                                            ; $5bd8: $99
	dec hl                                           ; $5bd9: $2b
	ld h, b                                          ; $5bda: $60
	ld a, a                                          ; $5bdb: $7f
	ld l, b                                          ; $5bdc: $68
	rrca                                             ; $5bdd: $0f
	ld h, b                                          ; $5bde: $60
	cpl                                              ; $5bdf: $2f
	add b                                            ; $5be0: $80
	sbc [hl]                                         ; $5be1: $9e
	cp e                                             ; $5be2: $bb
	ld l, e                                          ; $5be3: $6b
	add b                                            ; $5be4: $80
	ld [de], a                                       ; $5be5: $12
	and b                                            ; $5be6: $a0
	sbc d                                            ; $5be7: $9a
	or c                                             ; $5be8: $b1
	rst $38                                          ; $5be9: $ff
	xor e                                            ; $5bea: $ab
	inc bc                                           ; $5beb: $03
	ld [bc], a                                       ; $5bec: $02
	ld a, e                                          ; $5bed: $7b
	add hl, hl                                       ; $5bee: $29
	sbc l                                            ; $5bef: $9d
	ld b, $0b                                        ; $5bf0: $06 $0b
	ld a, e                                          ; $5bf2: $7b
	ld h, c                                          ; $5bf3: $61
	ld a, a                                          ; $5bf4: $7f
	ld sp, hl                                        ; $5bf5: $f9
	ld a, e                                          ; $5bf6: $7b
	jr z, jr_015_5c3c                                ; $5bf7: $28 $43

	ld h, b                                          ; $5bf9: $60
	sub h                                            ; $5bfa: $94
	cp $a7                                           ; $5bfb: $fe $a7
	db $fc                                           ; $5bfd: $fc
	and a                                            ; $5bfe: $a7
	ld a, [$f8af]                                    ; $5bff: $fa $af $f8
	cp a                                             ; $5c02: $bf
	cp h                                             ; $5c03: $bc
	rst $38                                          ; $5c04: $ff
	rst FarCall                                          ; $5c05: $f7
	inc sp                                           ; $5c06: $33
	ld h, b                                          ; $5c07: $60
	ld l, a                                          ; $5c08: $6f
	ld [hl], h                                       ; $5c09: $74
	ld h, a                                          ; $5c0a: $67
	ld l, b                                          ; $5c0b: $68
	reti                                             ; $5c0c: $d9


	add b                                            ; $5c0d: $80
	ld c, [hl]                                       ; $5c0e: $4e
	ret nz                                           ; $5c0f: $c0

	ld a, a                                          ; $5c10: $7f
	and e                                            ; $5c11: $a3
	ld a, d                                          ; $5c12: $7a

jr_015_5c13:
	cp $9e                                           ; $5c13: $fe $9e
	ld [de], a                                       ; $5c15: $12
	halt                                             ; $5c16: $76
	cp $7f                                           ; $5c17: $fe $7f
	db $fd                                           ; $5c19: $fd
	ld [hl], e                                       ; $5c1a: $73
	cp $9e                                           ; $5c1b: $fe $9e
	ld c, $7b                                        ; $5c1d: $0e $7b
	cp $7a                                           ; $5c1f: $fe $7a
	cp b                                             ; $5c21: $b8
	ld a, a                                          ; $5c22: $7f
	cp $7e                                           ; $5c23: $fe $7e
	xor h                                            ; $5c25: $ac
	rst SubAFromDE                                          ; $5c26: $df
	cp b                                             ; $5c27: $b8
	sbc h                                            ; $5c28: $9c
	and $fe                                          ; $5c29: $e6 $fe
	or c                                             ; $5c2b: $b1
	sbc $ff                                          ; $5c2c: $de $ff
	sbc h                                            ; $5c2e: $9c
	pop de                                           ; $5c2f: $d1
	rst $38                                          ; $5c30: $ff
	inc h                                            ; $5c31: $24
	ld l, a                                          ; $5c32: $6f
	ld h, d                                          ; $5c33: $62
	sbc d                                            ; $5c34: $9a
	ld l, a                                          ; $5c35: $6f
	ld [hl], a                                       ; $5c36: $77
	db $dd                                           ; $5c37: $dd
	rst $38                                          ; $5c38: $ff
	adc $7b                                          ; $5c39: $ce $7b
	ld h, h                                          ; $5c3b: $64

jr_015_5c3c:
	sbc b                                            ; $5c3c: $98
	jr nc, @+$01                                     ; $5c3d: $30 $ff

	ld bc, $83ff                                     ; $5c3f: $01 $ff $83
	cp $ff                                           ; $5c42: $fe $ff
	ld c, $02                                        ; $5c44: $0e $02
	ld a, a                                          ; $5c46: $7f
	ld [$567f], a                                    ; $5c47: $ea $7f $56
	pop de                                           ; $5c4a: $d1
	ld bc, $4277                                     ; $5c4b: $01 $77 $42
	ld e, a                                          ; $5c4e: $5f
	ld b, b                                          ; $5c4f: $40
	ld a, [hl]                                       ; $5c50: $7e
	ld [bc], a                                       ; $5c51: $02
	sub d                                            ; $5c52: $92
	rra                                              ; $5c53: $1f
	ldh a, [$1f]                                     ; $5c54: $f0 $1f
	jp hl                                            ; $5c56: $e9


	ld b, $ff                                        ; $5c57: $06 $ff
	ld de, $00ef                                     ; $5c59: $11 $ef $00
	rst $38                                          ; $5c5c: $ff
	nop                                              ; $5c5d: $00
	rst $38                                          ; $5c5e: $ff
	sbc b                                            ; $5c5f: $98
	ld a, e                                          ; $5c60: $7b
	inc bc                                           ; $5c61: $03
	ld c, a                                          ; $5c62: $4f
	ld b, b                                          ; $5c63: $40
	ld h, [hl]                                       ; $5c64: $66
	and d                                            ; $5c65: $a2
	ld [hl], a                                       ; $5c66: $77
	ld d, b                                          ; $5c67: $50
	cpl                                              ; $5c68: $2f
	ld b, b                                          ; $5c69: $40
	rst SubAFromDE                                          ; $5c6a: $df
	ld a, [hl]                                       ; $5c6b: $7e
	sub [hl]                                         ; $5c6c: $96
	pop hl                                           ; $5c6d: $e1
	cp a                                             ; $5c6e: $bf
	jp hl                                            ; $5c6f: $e9


	or a                                             ; $5c70: $b7
	jp hl                                            ; $5c71: $e9


	or a                                             ; $5c72: $b7
	pop hl                                           ; $5c73: $e1
	cp a                                             ; $5c74: $bf
	rst $38                                          ; $5c75: $ff
	ld a, e                                          ; $5c76: $7b
	ld [hl], d                                       ; $5c77: $72
	pop af                                           ; $5c78: $f1
	rst SubAFromDE                                          ; $5c79: $df
	ld [$148f], sp                                   ; $5c7a: $08 $8f $14
	inc e                                            ; $5c7d: $1c
	ld [hl+], a                                      ; $5c7e: $22
	ld a, $51                                        ; $5c7f: $3e $51
	ld l, a                                          ; $5c81: $6f
	ret                                              ; $5c82: $c9


	rst FarCall                                          ; $5c83: $f7
	ldh [c], a                                       ; $5c84: $e2
	cp [hl]                                          ; $5c85: $be
	db $f4                                           ; $5c86: $f4
	call c, Call_015_6878                            ; $5c87: $dc $78 $68
	jr nc, jr_015_5cbc                               ; $5c8a: $30 $30

	di                                               ; $5c8c: $f3
	rst SubAFromDE                                          ; $5c8d: $df
	ld a, $9d                                        ; $5c8e: $3e $9d
	ld b, d                                          ; $5c90: $42
	ld a, [hl]                                       ; $5c91: $7e
	ld l, a                                          ; $5c92: $6f
	cp $de                                           ; $5c93: $fe $de
	ld a, [hl]                                       ; $5c95: $7e
	sbc h                                            ; $5c96: $9c
	ld b, d                                          ; $5c97: $42
	ld a, h                                          ; $5c98: $7c
	ld a, h                                          ; $5c99: $7c
	pop af                                           ; $5c9a: $f1
	rst SubAFromDE                                          ; $5c9b: $df
	rlca                                             ; $5c9c: $07
	sub [hl]                                         ; $5c9d: $96
	jr c, jr_015_5cdf                                ; $5c9e: $38 $3f

	ld b, a                                          ; $5ca0: $47
	ld a, [hl]                                       ; $5ca1: $7e
	sbc a                                            ; $5ca2: $9f
	ld hl, sp-$71                                    ; $5ca3: $f8 $8f
	rst $38                                          ; $5ca5: $ff
	add b                                            ; $5ca6: $80
	ld [hl], e                                       ; $5ca7: $73
	cp $9b                                           ; $5ca8: $fe $9b
	ret nz                                           ; $5caa: $c0

	cp a                                             ; $5cab: $bf
	ldh [$9f], a                                     ; $5cac: $e0 $9f
	ld [hl], a                                       ; $5cae: $77
	rst FarCall                                          ; $5caf: $f7
	sbc e                                            ; $5cb0: $9b
	cp a                                             ; $5cb1: $bf
	ret nz                                           ; $5cb2: $c0

	sbc a                                            ; $5cb3: $9f
	ldh [rPCM34], a                                  ; $5cb4: $e0 $77
	ldh a, [$7b]                                     ; $5cb6: $f0 $7b
	adc h                                            ; $5cb8: $8c
	ld [hl], a                                       ; $5cb9: $77
	db $fd                                           ; $5cba: $fd
	ld l, e                                          ; $5cbb: $6b

jr_015_5cbc:
	ei                                               ; $5cbc: $fb
	ld l, a                                          ; $5cbd: $6f
	cp $67                                           ; $5cbe: $fe $67
	rst FarCall                                          ; $5cc0: $f7
	ld [hl], e                                       ; $5cc1: $73
	db $f4                                           ; $5cc2: $f4
	ld a, d                                          ; $5cc3: $7a
	reti                                             ; $5cc4: $d9


	sbc l                                            ; $5cc5: $9d
	db $fd                                           ; $5cc6: $fd
	inc bc                                           ; $5cc7: $03
	ld a, e                                          ; $5cc8: $7b
	cp $9d                                           ; $5cc9: $fe $9d
	ei                                               ; $5ccb: $fb
	dec c                                            ; $5ccc: $0d
	ld h, e                                          ; $5ccd: $63
	cp $9d                                           ; $5cce: $fe $9d
	db $fd                                           ; $5cd0: $fd
	dec bc                                           ; $5cd1: $0b
	ld l, a                                          ; $5cd2: $6f
	cp $77                                           ; $5cd3: $fe $77
	db $f4                                           ; $5cd5: $f4
	ld a, a                                          ; $5cd6: $7f
	cp [hl]                                          ; $5cd7: $be
	sbc e                                            ; $5cd8: $9b
	add a                                            ; $5cd9: $87
	ld hl, sp-$7c                                    ; $5cda: $f8 $84
	ei                                               ; $5cdc: $fb
	ld [hl], a                                       ; $5cdd: $77
	db $fc                                           ; $5cde: $fc

jr_015_5cdf:
	sbc e                                            ; $5cdf: $9b
	add [hl]                                         ; $5ce0: $86
	ld sp, hl                                        ; $5ce1: $f9
	add a                                            ; $5ce2: $87
	ld hl, sp+$6f                                    ; $5ce3: $f8 $6f
	sbc h                                            ; $5ce5: $9c
	ld d, a                                          ; $5ce6: $57
	sub [hl]                                         ; $5ce7: $96
	ld a, a                                          ; $5ce8: $7f
	cp [hl]                                          ; $5ce9: $be
	sub e                                            ; $5cea: $93
	ldh a, [rIF]                                     ; $5ceb: $f0 $0f
	inc de                                           ; $5ced: $13
	db $ec                                           ; $5cee: $ec
	ret nc                                           ; $5cef: $d0

	cpl                                              ; $5cf0: $2f
	sub c                                            ; $5cf1: $91
	ld l, [hl]                                       ; $5cf2: $6e
	ld d, c                                          ; $5cf3: $51
	xor [hl]                                         ; $5cf4: $ae
	pop af                                           ; $5cf5: $f1
	ld c, $5f                                        ; $5cf6: $0e $5f
	sbc h                                            ; $5cf8: $9c
	ld h, a                                          ; $5cf9: $67
	sub [hl]                                         ; $5cfa: $96
	ld a, a                                          ; $5cfb: $7f
	db $fc                                           ; $5cfc: $fc
	sub e                                            ; $5cfd: $93
	sbc [hl]                                         ; $5cfe: $9e
	ld h, c                                          ; $5cff: $61
	db $f4                                           ; $5d00: $f4
	dec bc                                           ; $5d01: $0b
	adc $31                                          ; $5d02: $ce $31
	db $eb                                           ; $5d04: $eb
	inc d                                            ; $5d05: $14
	ld d, e                                          ; $5d06: $53
	xor h                                            ; $5d07: $ac
	adc $31                                          ; $5d08: $ce $31
	ccf                                              ; $5d0a: $3f
	ldh [$5f], a                                     ; $5d0b: $e0 $5f
	adc d                                            ; $5d0d: $8a
	scf                                              ; $5d0e: $37
	cp $7f                                           ; $5d0f: $fe $7f
	ld a, h                                          ; $5d11: $7c
	ld e, a                                          ; $5d12: $5f
	ld [hl], $9b                                     ; $5d13: $36 $9b
	ld b, b                                          ; $5d15: $40
	ld a, a                                          ; $5d16: $7f
	jr nc, jr_015_5d58                               ; $5d17: $30 $3f

	ld [hl], h                                       ; $5d19: $74
	db $fc                                           ; $5d1a: $fc
	di                                               ; $5d1b: $f3
	ld e, a                                          ; $5d1c: $5f
	ld [hl], $6f                                     ; $5d1d: $36 $6f
	ld [hl-], a                                      ; $5d1f: $32
	pop af                                           ; $5d20: $f1
	ld e, a                                          ; $5d21: $5f
	ld [hl], $7f                                     ; $5d22: $36 $7f
	cp $9b                                           ; $5d24: $fe $9b
	ld c, $fe                                        ; $5d26: $0e $fe
	ld hl, sp-$08                                    ; $5d28: $f8 $f8
	ldh [$d6], a                                     ; $5d2a: $e0 $d6
	rst SubAFromDE                                          ; $5d2c: $df
	rrca                                             ; $5d2d: $0f
	ld a, [hl]                                       ; $5d2e: $7e
	ld [hl], h                                       ; $5d2f: $74
	ld a, [hl-]                                      ; $5d30: $3a
	ld c, [hl]                                       ; $5d31: $4e
	db $fc                                           ; $5d32: $fc
	rst SubAFromDE                                          ; $5d33: $df
	inc a                                            ; $5d34: $3c
	sbc b                                            ; $5d35: $98
	jp nz, $01fe                                     ; $5d36: $c2 $fe $01

	db $fc                                           ; $5d39: $fc
	ld [bc], a                                       ; $5d3a: $02
	nop                                              ; $5d3b: $00
	db $fc                                           ; $5d3c: $fc
	ld [$b975], a                                    ; $5d3d: $ea $75 $b9
	ld a, l                                          ; $5d40: $7d
	cp a                                             ; $5d41: $bf
	scf                                              ; $5d42: $37
	ret nz                                           ; $5d43: $c0

	sbc b                                            ; $5d44: $98
	rra                                              ; $5d45: $1f
	ld c, $31                                        ; $5d46: $0e $31
	ccf                                              ; $5d48: $3f
	ld b, b                                          ; $5d49: $40
	ld a, a                                          ; $5d4a: $7f
	add b                                            ; $5d4b: $80
	ld h, e                                          ; $5d4c: $63
	ld c, b                                          ; $5d4d: $48
	rst AddAOntoHL                                          ; $5d4e: $ef
	rst SubAFromDE                                          ; $5d4f: $df
	add b                                            ; $5d50: $80
	sub h                                            ; $5d51: $94
	ld e, b                                          ; $5d52: $58
	ret c                                            ; $5d53: $d8

	inc h                                            ; $5d54: $24
	db $fc                                           ; $5d55: $fc
	ld [bc], a                                       ; $5d56: $02
	db $fc                                           ; $5d57: $fc

jr_015_5d58:
	ld [bc], a                                       ; $5d58: $02
	ld hl, sp+$04                                    ; $5d59: $f8 $04
	nop                                              ; $5d5b: $00
	ld hl, sp-$5d                                    ; $5d5c: $f8 $a3
	nop                                              ; $5d5e: $00
	rst $38                                          ; $5d5f: $ff
	rst SubAFromDE                                          ; $5d60: $df
	rlca                                             ; $5d61: $07
	adc e                                            ; $5d62: $8b
	ld [hl+], a                                      ; $5d63: $22
	inc hl                                           ; $5d64: $23
	rra                                              ; $5d65: $1f
	rra                                              ; $5d66: $1f
	ld [$060f], sp                                   ; $5d67: $08 $0f $06
	rlca                                             ; $5d6a: $07
	inc b                                            ; $5d6b: $04
	rlca                                             ; $5d6c: $07
	ld [$090f], sp                                   ; $5d6d: $08 $0f $09
	rrca                                             ; $5d70: $0f
	dec b                                            ; $5d71: $05
	rlca                                             ; $5d72: $07
	inc bc                                           ; $5d73: $03
	inc bc                                           ; $5d74: $03
	ld bc, $7b00                                     ; $5d75: $01 $00 $7b
	cp $dc                                           ; $5d78: $fe $dc
	ld bc, $dfff                                     ; $5d7a: $01 $ff $df
	cp b                                             ; $5d7d: $b8
	sbc h                                            ; $5d7e: $9c
	ld h, [hl]                                       ; $5d7f: $66
	cp $31                                           ; $5d80: $fe $31
	sbc $ff                                          ; $5d82: $de $ff
	adc a                                            ; $5d84: $8f
	ld d, c                                          ; $5d85: $51
	rst $38                                          ; $5d86: $ff
	and h                                            ; $5d87: $a4
	rst $38                                          ; $5d88: $ff
	or d                                             ; $5d89: $b2
	rst $38                                          ; $5d8a: $ff
	cp d                                             ; $5d8b: $ba
	rst AddAOntoHL                                          ; $5d8c: $ef
	rst $38                                          ; $5d8d: $ff
	ld h, a                                          ; $5d8e: $67
	rst $38                                          ; $5d8f: $ff
	xor l                                            ; $5d90: $ad
	ld [hl], a                                       ; $5d91: $77
	sbc $ff                                          ; $5d92: $de $ff
	call z, $fe7b                                    ; $5d94: $cc $7b $fe
	ld a, a                                          ; $5d97: $7f
	jp hl                                            ; $5d98: $e9


	sbc [hl]                                         ; $5d99: $9e
	add e                                            ; $5d9a: $83
	db $fd                                           ; $5d9b: $fd
	rst SubAFromDE                                          ; $5d9c: $df
	add b                                            ; $5d9d: $80
	rst SubAFromDE                                          ; $5d9e: $df
	ret nz                                           ; $5d9f: $c0

	rst SubAFromDE                                          ; $5da0: $df
	add b                                            ; $5da1: $80
	sbc e                                            ; $5da2: $9b
	ld b, b                                          ; $5da3: $40
	ret nz                                           ; $5da4: $c0

	and b                                            ; $5da5: $a0
	ldh [$6f], a                                     ; $5da6: $e0 $6f
	cp $9c                                           ; $5da8: $fe $9c
	ld h, b                                          ; $5daa: $60
	ldh [$60], a                                     ; $5dab: $e0 $60
	ld a, e                                          ; $5dad: $7b
	ld sp, hl                                        ; $5dae: $f9
	ld [hl], a                                       ; $5daf: $77
	db $ec                                           ; $5db0: $ec
	rst SubAFromDE                                          ; $5db1: $df
	add b                                            ; $5db2: $80
	rst $38                                          ; $5db3: $ff
	rst SubAFromDE                                          ; $5db4: $df
	dec c                                            ; $5db5: $0d
	sub [hl]                                         ; $5db6: $96
	ld e, $13                                        ; $5db7: $1e $13
	rra                                              ; $5db9: $1f
	inc de                                           ; $5dba: $13
	dec bc                                           ; $5dbb: $0b
	dec c                                            ; $5dbc: $0d
	rlca                                             ; $5dbd: $07
	rlca                                             ; $5dbe: $07
	nop                                              ; $5dbf: $00
	ld l, e                                          ; $5dc0: $6b
	xor h                                            ; $5dc1: $ac
	db $dd                                           ; $5dc2: $dd
	ld bc, $03df                                     ; $5dc3: $01 $df $03
	sbc l                                            ; $5dc6: $9d
	inc c                                            ; $5dc7: $0c
	rrca                                             ; $5dc8: $0f
	ld [hl], a                                       ; $5dc9: $77
	xor $94                                          ; $5dca: $ee $94
	cp $ff                                           ; $5dcc: $fe $ff
	ld a, a                                          ; $5dce: $7f
	xor c                                            ; $5dcf: $a9
	rst SubAFromDE                                          ; $5dd0: $df
	ldh a, [hDisp1_LCDC]                                     ; $5dd1: $f0 $8f
	ld sp, hl                                        ; $5dd3: $f9
	add a                                            ; $5dd4: $87
	cp $81                                           ; $5dd5: $fe $81
	sbc $ff                                          ; $5dd7: $de $ff
	adc d                                            ; $5dd9: $8a
	nop                                              ; $5dda: $00
	rst $38                                          ; $5ddb: $ff
	db $10                                           ; $5ddc: $10
	rst $38                                          ; $5ddd: $ff
	ld hl, sp-$01                                    ; $5dde: $f8 $ff
	rst SubAFromBC                                          ; $5de0: $e7
	daa                                              ; $5de1: $27
	daa                                              ; $5de2: $27
	db $e4                                           ; $5de3: $e4
	db $fc                                           ; $5de4: $fc
	rst $38                                          ; $5de5: $ff
	ld a, a                                          ; $5de6: $7f
	rst $38                                          ; $5de7: $ff
	db $fc                                           ; $5de8: $fc
	rst $38                                          ; $5de9: $ff
	inc bc                                           ; $5dea: $03
	inc bc                                           ; $5deb: $03
	ld b, b                                          ; $5dec: $40
	ret nz                                           ; $5ded: $c0

	jr nz, @+$75                                     ; $5dee: $20 $73

	xor h                                            ; $5df0: $ac
	ld a, e                                          ; $5df1: $7b
	xor e                                            ; $5df2: $ab
	sbc [hl]                                         ; $5df3: $9e
	jr nz, jr_015_5e65                               ; $5df4: $20 $6f

	xor [hl]                                         ; $5df6: $ae
	reti                                             ; $5df7: $d9


	add b                                            ; $5df8: $80
	rst SubAFromDE                                          ; $5df9: $df
	ret nz                                           ; $5dfa: $c0

	sbc e                                            ; $5dfb: $9b
	ld [hl], b                                       ; $5dfc: $70
	ldh a, [$c0]                                     ; $5dfd: $f0 $c0
	ret nz                                           ; $5dff: $c0

	and [hl]                                         ; $5e00: $a6
	nop                                              ; $5e01: $00
	rst $38                                          ; $5e02: $ff
	rst SubAFromDE                                          ; $5e03: $df
	rlca                                             ; $5e04: $07
	adc e                                            ; $5e05: $8b
	ld [hl+], a                                      ; $5e06: $22
	inc hl                                           ; $5e07: $23
	rra                                              ; $5e08: $1f
	rra                                              ; $5e09: $1f
	ld [$060f], sp                                   ; $5e0a: $08 $0f $06
	rlca                                             ; $5e0d: $07
	inc b                                            ; $5e0e: $04
	rlca                                             ; $5e0f: $07
	ld [$090f], sp                                   ; $5e10: $08 $0f $09
	rrca                                             ; $5e13: $0f
	dec b                                            ; $5e14: $05
	rlca                                             ; $5e15: $07
	inc bc                                           ; $5e16: $03
	inc bc                                           ; $5e17: $03
	ld bc, $7b00                                     ; $5e18: $01 $00 $7b
	cp $dc                                           ; $5e1b: $fe $dc
	ld bc, $dfff                                     ; $5e1d: $01 $ff $df
	cp b                                             ; $5e20: $b8
	sbc h                                            ; $5e21: $9c
	ld h, [hl]                                       ; $5e22: $66
	cp $31                                           ; $5e23: $fe $31
	sbc $ff                                          ; $5e25: $de $ff
	adc a                                            ; $5e27: $8f
	ld d, c                                          ; $5e28: $51
	rst $38                                          ; $5e29: $ff
	and h                                            ; $5e2a: $a4
	rst $38                                          ; $5e2b: $ff
	or d                                             ; $5e2c: $b2
	rst $38                                          ; $5e2d: $ff
	cp d                                             ; $5e2e: $ba
	rst AddAOntoHL                                          ; $5e2f: $ef
	rst $38                                          ; $5e30: $ff
	ld h, a                                          ; $5e31: $67
	rst $38                                          ; $5e32: $ff
	xor l                                            ; $5e33: $ad
	ld [hl], a                                       ; $5e34: $77
	sbc $ff                                          ; $5e35: $de $ff
	call z, $fe7b                                    ; $5e37: $cc $7b $fe
	ld a, a                                          ; $5e3a: $7f
	jp hl                                            ; $5e3b: $e9


	sbc [hl]                                         ; $5e3c: $9e
	db $e3                                           ; $5e3d: $e3
	db $fd                                           ; $5e3e: $fd
	rst SubAFromDE                                          ; $5e3f: $df
	add b                                            ; $5e40: $80
	rst SubAFromDE                                          ; $5e41: $df
	ret nz                                           ; $5e42: $c0

	rst SubAFromDE                                          ; $5e43: $df
	add b                                            ; $5e44: $80
	sbc e                                            ; $5e45: $9b
	ld b, b                                          ; $5e46: $40
	ret nz                                           ; $5e47: $c0

	and b                                            ; $5e48: $a0
	ldh [$6f], a                                     ; $5e49: $e0 $6f
	cp $9c                                           ; $5e4b: $fe $9c
	ld h, b                                          ; $5e4d: $60
	ldh [$60], a                                     ; $5e4e: $e0 $60
	ld a, e                                          ; $5e50: $7b
	ld sp, hl                                        ; $5e51: $f9
	ld [hl], a                                       ; $5e52: $77
	db $ec                                           ; $5e53: $ec
	rst SubAFromDE                                          ; $5e54: $df
	add b                                            ; $5e55: $80
	rst SubAFromDE                                          ; $5e56: $df
	rlca                                             ; $5e57: $07
	sbc c                                            ; $5e58: $99
	rrca                                             ; $5e59: $0f
	ld [$080f], sp                                   ; $5e5a: $08 $0f $08
	rlca                                             ; $5e5d: $07
	rlca                                             ; $5e5e: $07
	ei                                               ; $5e5f: $fb
	rst SubAFromHL                                          ; $5e60: $d7
	ld bc, $03df                                     ; $5e61: $01 $df $03
	sbc l                                            ; $5e64: $9d

Jump_015_5e65:
jr_015_5e65:
	inc c                                            ; $5e65: $0c
	rrca                                             ; $5e66: $0f
	ld [hl], a                                       ; $5e67: $77
	ld [$fe98], a                                    ; $5e68: $ea $98 $fe
	rst SubAFromDE                                          ; $5e6b: $df

jr_015_5e6c:
	ld a, [$f54f]                                    ; $5e6c: $fa $4f $f5
	rst $38                                          ; $5e6f: $ff
	add b                                            ; $5e70: $80
	ld [hl], e                                       ; $5e71: $73
	cp $df                                           ; $5e72: $fe $df
	rst $38                                          ; $5e74: $ff
	adc b                                            ; $5e75: $88
	nop                                              ; $5e76: $00
	rst $38                                          ; $5e77: $ff
	db $10                                           ; $5e78: $10
	rst $38                                          ; $5e79: $ff
	ld hl, sp-$01                                    ; $5e7a: $f8 $ff
	rst SubAFromBC                                          ; $5e7c: $e7
	daa                                              ; $5e7d: $27
	daa                                              ; $5e7e: $27
	db $e4                                           ; $5e7f: $e4
	db $fc                                           ; $5e80: $fc
	rst $38                                          ; $5e81: $ff
	ld a, a                                          ; $5e82: $7f
	rst $38                                          ; $5e83: $ff
	db $fc                                           ; $5e84: $fc
	rst $38                                          ; $5e85: $ff
	inc bc                                           ; $5e86: $03
	inc bc                                           ; $5e87: $03
	ld b, b                                          ; $5e88: $40
	ret nz                                           ; $5e89: $c0

	jr nz, jr_015_5e6c                               ; $5e8a: $20 $e0

	db $10                                           ; $5e8c: $10
	db $dd                                           ; $5e8d: $dd
	ldh a, [$9e]                                     ; $5e8e: $f0 $9e
	sub b                                            ; $5e90: $90
	ld a, e                                          ; $5e91: $7b
	cp $9a                                           ; $5e92: $fe $9a
	ret nc                                           ; $5e94: $d0

	ldh a, [$d0]                                     ; $5e95: $f0 $d0
	or b                                             ; $5e97: $b0
	or b                                             ; $5e98: $b0
	reti                                             ; $5e99: $d9


	add b                                            ; $5e9a: $80
	rst SubAFromDE                                          ; $5e9b: $df
	ret nz                                           ; $5e9c: $c0

	sbc e                                            ; $5e9d: $9b
	ld [hl], b                                       ; $5e9e: $70
	ldh a, [$c0]                                     ; $5e9f: $f0 $c0
	ret nz                                           ; $5ea1: $c0

	dec bc                                           ; $5ea2: $0b
	ld h, b                                          ; $5ea3: $60
	sbc [hl]                                         ; $5ea4: $9e
	di                                               ; $5ea5: $f3
	sbc $03                                          ; $5ea6: $de $03
	rst SubAFromDE                                          ; $5ea8: $df
	rrca                                             ; $5ea9: $0f
	adc h                                            ; $5eaa: $8c
	inc de                                           ; $5eab: $13
	rra                                              ; $5eac: $1f
	inc d                                            ; $5ead: $14
	dec de                                           ; $5eae: $1b
	ld [de], a                                       ; $5eaf: $12
	dec e                                            ; $5eb0: $1d
	ld de, $081e                                     ; $5eb1: $11 $1e $08
	rrca                                             ; $5eb4: $0f
	ld [$060f], sp                                   ; $5eb5: $08 $0f $06
	rlca                                             ; $5eb8: $07
	dec c                                            ; $5eb9: $0d
	rrca                                             ; $5eba: $0f
	inc d                                            ; $5ebb: $14
	rra                                              ; $5ebc: $1f
	daa                                              ; $5ebd: $27
	sbc $3f                                          ; $5ebe: $de $3f
	sub [hl]                                         ; $5ec0: $96
	rlca                                             ; $5ec1: $07
	dec b                                            ; $5ec2: $05
	rlca                                             ; $5ec3: $07
	dec b                                            ; $5ec4: $05
	rrca                                             ; $5ec5: $0f
	dec c                                            ; $5ec6: $0d
	rrca                                             ; $5ec7: $0f
	inc c                                            ; $5ec8: $0c
	rrca                                             ; $5ec9: $0f
	ld a, e                                          ; $5eca: $7b
	ld [$108a], a                                    ; $5ecb: $ea $8a $10
	rra                                              ; $5ece: $1f
	db $10                                           ; $5ecf: $10
	rra                                              ; $5ed0: $1f
	inc hl                                           ; $5ed1: $23
	ccf                                              ; $5ed2: $3f
	ld a, [hl-]                                      ; $5ed3: $3a
	ccf                                              ; $5ed4: $3f
	ld c, [hl]                                       ; $5ed5: $4e
	ld a, a                                          ; $5ed6: $7f
	add [hl]                                         ; $5ed7: $86
	rst $38                                          ; $5ed8: $ff
	sub d                                            ; $5ed9: $92
	rst $38                                          ; $5eda: $ff
	ld c, [hl]                                       ; $5edb: $4e
	ld a, a                                          ; $5edc: $7f
	ld b, [hl]                                       ; $5edd: $46
	ld a, a                                          ; $5ede: $7f
	ld a, $3f                                        ; $5edf: $3e $3f
	ld [bc], a                                       ; $5ee1: $02
	sbc $03                                          ; $5ee2: $de $03
	rst SubAFromDE                                          ; $5ee4: $df
	ld bc, $ddff                                     ; $5ee5: $01 $ff $dd
	ld bc, $f47f                                     ; $5ee8: $01 $7f $f4
	ld a, a                                          ; $5eeb: $7f
	cp $9e                                           ; $5eec: $fe $9e
	inc b                                            ; $5eee: $04
	ld a, e                                          ; $5eef: $7b
	rst GetHLinHL                                          ; $5ef0: $cf
	rst SubAFromDE                                          ; $5ef1: $df
	rlca                                             ; $5ef2: $07
	sbc [hl]                                         ; $5ef3: $9e
	ld c, $73                                        ; $5ef4: $0e $73
	jp nc, $2098                                     ; $5ef6: $d2 $98 $20

	ccf                                              ; $5ef9: $3f
	ld a, a                                          ; $5efa: $7f
	ld a, a                                          ; $5efb: $7f
	add b                                            ; $5efc: $80
	rst $38                                          ; $5efd: $ff
	add b                                            ; $5efe: $80

Call_015_5eff:
	sbc $ff                                          ; $5eff: $de $ff
	rst $38                                          ; $5f01: $ff
	db $dd                                           ; $5f02: $dd
	ld [$1d99], sp                                   ; $5f03: $08 $99 $1d
	dec d                                            ; $5f06: $15
	rra                                              ; $5f07: $1f
	rla                                              ; $5f08: $17
	rra                                              ; $5f09: $1f
	inc de                                           ; $5f0a: $13
	ld a, e                                          ; $5f0b: $7b
	push hl                                          ; $5f0c: $e5
	add b                                            ; $5f0d: $80
	inc c                                            ; $5f0e: $0c
	rlca                                             ; $5f0f: $07
	rlca                                             ; $5f10: $07
	rrca                                             ; $5f11: $0f
	dec c                                            ; $5f12: $0d
	adc $cf                                          ; $5f13: $ce $cf
	db $fd                                           ; $5f15: $fd
	cp $6f                                           ; $5f16: $fe $6f
	cp $5f                                           ; $5f18: $fe $5f
	rst $38                                          ; $5f1a: $ff
	ld e, l                                          ; $5f1b: $5d
	rst $38                                          ; $5f1c: $ff
	ld e, e                                          ; $5f1d: $5b
	rst $38                                          ; $5f1e: $ff
	ld [hl], a                                       ; $5f1f: $77
	rst $38                                          ; $5f20: $ff
	ld bc, $6301                                     ; $5f21: $01 $01 $63
	ld h, e                                          ; $5f24: $63
	cp a                                             ; $5f25: $bf
	db $fd                                           ; $5f26: $fd
	ld a, [hl]                                       ; $5f27: $7e
	ldh a, [c]                                       ; $5f28: $f2
	cp $c6                                           ; $5f29: $fe $c6
	db $ec                                           ; $5f2b: $ec
	inc e                                            ; $5f2c: $1c
	add b                                            ; $5f2d: $80
	sub h                                            ; $5f2e: $94
	ld a, h                                          ; $5f2f: $7c
	ldh a, [c]                                       ; $5f30: $f2
	cp $f6                                           ; $5f31: $fe $f6
	cp d                                             ; $5f33: $ba
	push af                                          ; $5f34: $f5
	ld a, e                                          ; $5f35: $7b
	or $1f                                           ; $5f36: $f6 $1f
	db $fc                                           ; $5f38: $fc
	ccf                                              ; $5f39: $3f
	db $fd                                           ; $5f3a: $fd
	ld l, [hl]                                       ; $5f3b: $6e
	db $fc                                           ; $5f3c: $fc
	adc a                                            ; $5f3d: $8f
	db $fc                                           ; $5f3e: $fc
	rra                                              ; $5f3f: $1f
	ld hl, sp-$01                                    ; $5f40: $f8 $ff
	sub b                                            ; $5f42: $90
	rst $38                                          ; $5f43: $ff
	and b                                            ; $5f44: $a0
	rst $38                                          ; $5f45: $ff
	ld a, a                                          ; $5f46: $7f
	rst $38                                          ; $5f47: $ff
	ld e, h                                          ; $5f48: $5c
	db $e3                                           ; $5f49: $e3
	ret nz                                           ; $5f4a: $c0

	rst $38                                          ; $5f4b: $ff
	ld b, b                                          ; $5f4c: $40
	ld a, e                                          ; $5f4d: $7b
	cp $df                                           ; $5f4e: $fe $df
	rst $38                                          ; $5f50: $ff
	sbc h                                            ; $5f51: $9c
	pop hl                                           ; $5f52: $e1
	rst $38                                          ; $5f53: $ff
	ldh [$dd], a                                     ; $5f54: $e0 $dd
	rst $38                                          ; $5f56: $ff
	ld a, a                                          ; $5f57: $7f
	pop af                                           ; $5f58: $f1
	sbc l                                            ; $5f59: $9d
	ret nz                                           ; $5f5a: $c0

	ld a, a                                          ; $5f5b: $7f

Call_015_5f5c:
	ld a, e                                          ; $5f5c: $7b
	db $f4                                           ; $5f5d: $f4
	ld a, a                                          ; $5f5e: $7f
	cp $96                                           ; $5f5f: $fe $96
	add hl, hl                                       ; $5f61: $29
	rst $38                                          ; $5f62: $ff
	ld l, [hl]                                       ; $5f63: $6e
	rst $38                                          ; $5f64: $ff
	ret z                                            ; $5f65: $c8

	rst $38                                          ; $5f66: $ff
	adc a                                            ; $5f67: $8f
	rst $38                                          ; $5f68: $ff
	ld a, [$667b]                                    ; $5f69: $fa $7b $66
	sbc h                                            ; $5f6c: $9c
	sbc [hl]                                         ; $5f6d: $9e
	rst $38                                          ; $5f6e: $ff
	ldh a, [c]                                       ; $5f6f: $f2
	ld [hl], e                                       ; $5f70: $73
	ld a, [$ff94]                                    ; $5f71: $fa $94 $ff
	ei                                               ; $5f74: $fb
	rst $38                                          ; $5f75: $ff
	dec bc                                           ; $5f76: $0b
	cp $0f                                           ; $5f77: $fe $0f
	or $ff                                           ; $5f79: $f6 $ff
	ld [hl-], a                                      ; $5f7b: $32
	rst $38                                          ; $5f7c: $ff
	ld [de], a                                       ; $5f7d: $12
	ld a, e                                          ; $5f7e: $7b
	sbc $9e                                          ; $5f7f: $de $9e
	jp nc, $fe7b                                     ; $5f81: $d2 $7b $fe

	sbc d                                            ; $5f84: $9a
	ld d, d                                          ; $5f85: $52
	rst $38                                          ; $5f86: $ff
	ld c, h                                          ; $5f87: $4c
	rst $38                                          ; $5f88: $ff
	ld h, b                                          ; $5f89: $60
	ld a, e                                          ; $5f8a: $7b
	add $8c                                          ; $5f8b: $c6 $8c
	pop hl                                           ; $5f8d: $e1
	cp a                                             ; $5f8e: $bf
	cp $9f                                           ; $5f8f: $fe $9f
	ldh a, [$9f]                                     ; $5f91: $f0 $9f
	ld a, h                                          ; $5f93: $7c
	ld c, a                                          ; $5f94: $4f
	ld a, a                                          ; $5f95: $7f
	ld h, a                                          ; $5f96: $67
	rst SubAFromDE                                          ; $5f97: $df
	pop af                                           ; $5f98: $f1
	adc a                                            ; $5f99: $8f
	db $fd                                           ; $5f9a: $fd
	rst JumpTable                                          ; $5f9b: $c7
	cp a                                             ; $5f9c: $bf
	rst SubAFromBC                                          ; $5f9d: $e7
	sbc [hl]                                         ; $5f9e: $9e
	ld d, d                                          ; $5f9f: $52
	ld a, e                                          ; $5fa0: $7b
	db $e4                                           ; $5fa1: $e4
	sbc h                                            ; $5fa2: $9c
	ld d, e                                          ; $5fa3: $53
	rst $38                                          ; $5fa4: $ff
	ld e, c                                          ; $5fa5: $59
	ld a, e                                          ; $5fa6: $7b
	cp $80                                           ; $5fa7: $fe $80
	ld e, h                                          ; $5fa9: $5c
	rst FarCall                                          ; $5faa: $f7
	sbc h                                            ; $5fab: $9c
	rst FarCall                                          ; $5fac: $f7
	ccf                                              ; $5fad: $3f
	di                                               ; $5fae: $f3
	ld [hl], a                                       ; $5faf: $77
	add sp, $77                                      ; $5fb0: $e8 $77
	add sp, -$05                                     ; $5fb2: $e8 $fb
	db $e4                                           ; $5fb4: $e4
	cp a                                             ; $5fb5: $bf
	and a                                            ; $5fb6: $a7
	inc e                                            ; $5fb7: $1c
	rla                                              ; $5fb8: $17
	jr jr_015_5fda                                   ; $5fb9: $18 $1f

	sbc c                                            ; $5fbb: $99
	sbc [hl]                                         ; $5fbc: $9e
	db $db                                           ; $5fbd: $db
	ld e, h                                          ; $5fbe: $5c
	jp hl                                            ; $5fbf: $e9


	sbc a                                            ; $5fc0: $9f
	adc b                                            ; $5fc1: $88
	rst $38                                          ; $5fc2: $ff
	ldh a, [rIE]                                     ; $5fc3: $f0 $ff
	ld bc, $03ff                                     ; $5fc5: $01 $ff $03
	add b                                            ; $5fc8: $80
	rst $38                                          ; $5fc9: $ff
	add e                                            ; $5fca: $83
	cp $c7                                           ; $5fcb: $fe $c7
	db $fc                                           ; $5fcd: $fc
	daa                                              ; $5fce: $27
	rst $38                                          ; $5fcf: $ff
	inc de                                           ; $5fd0: $13
	rst $38                                          ; $5fd1: $ff
	add hl, de                                       ; $5fd2: $19
	rst $38                                          ; $5fd3: $ff
	ld h, h                                          ; $5fd4: $64
	rst $38                                          ; $5fd5: $ff
	add a                                            ; $5fd6: $87
	rst $38                                          ; $5fd7: $ff
	ld c, $ff                                        ; $5fd8: $0e $ff

jr_015_5fda:
	ccf                                              ; $5fda: $3f
	rst $38                                          ; $5fdb: $ff
	ldh a, [$f0]                                     ; $5fdc: $f0 $f0
	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	bit 1, h                                         ; $5fe0: $cb $4c
	push de                                          ; $5fe2: $d5
	sbc $52                                          ; $5fe3: $de $52
	rst SubAFromDE                                          ; $5fe5: $df
	reti                                             ; $5fe6: $d9


	rst SubAFromDE                                          ; $5fe7: $df
	sub b                                            ; $5fe8: $90
	db $fc                                           ; $5fe9: $fc
	ld [hl], a                                       ; $5fea: $77
	db $fc                                           ; $5feb: $fc
	daa                                              ; $5fec: $27
	cp $23                                           ; $5fed: $fe $23
	rst $38                                          ; $5fef: $ff
	ld hl, $a1ff                                     ; $5ff0: $21 $ff $a1
	rst $38                                          ; $5ff3: $ff
	or e                                             ; $5ff4: $b3
	cp $f7                                           ; $5ff5: $fe $f7
	sbc a                                            ; $5ff7: $9f
	ld a, e                                          ; $5ff8: $7b
	ldh [c], a                                       ; $5ff9: $e2
	rst SubAFromDE                                          ; $5ffa: $df
	db $e3                                           ; $5ffb: $e3
	db $ed                                           ; $5ffc: $ed
	rst SubAFromDE                                          ; $5ffd: $df
	ccf                                              ; $5ffe: $3f
	ld a, a                                          ; $5fff: $7f
	ld b, l                                          ; $6000: $45
	sub e                                            ; $6001: $93
	scf                                              ; $6002: $37
	rst GetHLinHL                                          ; $6003: $cf
	ld b, a                                          ; $6004: $47
	cp a                                             ; $6005: $bf
	add h                                            ; $6006: $84
	ld a, a                                          ; $6007: $7f
	inc b                                            ; $6008: $04
	rst $38                                          ; $6009: $ff
	inc b                                            ; $600a: $04
	rst $38                                          ; $600b: $ff
	dec a                                            ; $600c: $3d
	cp $f1                                           ; $600d: $fe $f1
	rst SubAFromDE                                          ; $600f: $df
	ret nz                                           ; $6010: $c0

	add b                                            ; $6011: $80
	ld b, b                                          ; $6012: $40
	ret nz                                           ; $6013: $c0

	jr nz, @-$1e                                     ; $6014: $20 $e0

	and b                                            ; $6016: $a0
	ldh [hDisp1_SCY], a                                     ; $6017: $e0 $90
	ldh a, [$50]                                     ; $6019: $f0 $50
	ldh a, [rBCPS]                                   ; $601b: $f0 $68
	ld hl, sp+$38                                    ; $601d: $f8 $38
	ld hl, sp-$38                                    ; $601f: $f8 $c8
	rst $38                                          ; $6021: $ff
	inc a                                            ; $6022: $3c
	rst $38                                          ; $6023: $ff
	cp $e7                                           ; $6024: $fe $e7
	rst $38                                          ; $6026: $ff
	jp $82fe                                         ; $6027: $c3 $fe $82


	ld a, [hl]                                       ; $602a: $7e
	jp nz, $c17f                                     ; $602b: $c2 $7f $c1

	ccf                                              ; $602e: $3f
	pop hl                                           ; $602f: $e1
	ccf                                              ; $6030: $3f
	sbc l                                            ; $6031: $9d
	rst $38                                          ; $6032: $ff
	ld h, c                                          ; $6033: $61

jr_015_6034:
	ld a, d                                          ; $6034: $7a
	ld hl, sp+$7b                                    ; $6035: $f8 $7b
	ld bc, $f072                                     ; $6037: $01 $72 $f0
	sbc b                                            ; $603a: $98
	add hl, sp                                       ; $603b: $39
	rst $38                                          ; $603c: $ff
	sub b                                            ; $603d: $90
	ld [hl], b                                       ; $603e: $70
	ld d, b                                          ; $603f: $50
	or b                                             ; $6040: $b0
	db $10                                           ; $6041: $10
	sbc $f0                                          ; $6042: $de $f0

jr_015_6044:
	ld sp, hl                                        ; $6044: $f9
	pop de                                           ; $6045: $d1
	add b                                            ; $6046: $80

jr_015_6047:
	sbc h                                            ; $6047: $9c
	ld b, a                                          ; $6048: $47
	rst $38                                          ; $6049: $ff

Jump_015_604a:
	ld b, c                                          ; $604a: $41
	ld a, e                                          ; $604b: $7b
	cp $98                                           ; $604c: $fe $98
	and d                                            ; $604e: $a2
	cp $bc                                           ; $604f: $fe $bc
	db $fc                                           ; $6051: $fc
	ld hl, sp-$08                                    ; $6052: $f8 $f8
	jr nc, jr_015_6034                               ; $6054: $30 $de

	ldh a, [$7b]                                     ; $6056: $f0 $7b
	and c                                            ; $6058: $a1

Jump_015_6059:
	sbc l                                            ; $6059: $9d
	ld b, b                                          ; $605a: $40

Call_015_605b:
	ldh [$7b], a                                     ; $605b: $e0 $7b
	sbc a                                            ; $605d: $9f
	adc [hl]                                         ; $605e: $8e
	ld h, b                                          ; $605f: $60
	ldh [$30], a                                     ; $6060: $e0 $30
	ldh a, [hDisp1_SCY]                                     ; $6062: $f0 $90
	ld [hl], b                                       ; $6064: $70
	ret c                                            ; $6065: $d8

	jr c, jr_015_6044                                ; $6066: $38 $dc

	inc a                                            ; $6068: $3c
	sub [hl]                                         ; $6069: $96
	ld a, [hl]                                       ; $606a: $7e
	daa                                              ; $606b: $27
	db $fd                                           ; $606c: $fd
	rst JumpTable                                          ; $606d: $c7
	db $fd                                           ; $606e: $fd
	inc bc                                           ; $606f: $03
	ld a, e                                          ; $6070: $7b
	ld e, $7f                                        ; $6071: $1e $7f
	ld h, $7f                                        ; $6073: $26 $7f
	and d                                            ; $6075: $a2
	sbc h                                            ; $6076: $9c
	ld b, e                                          ; $6077: $43
	rst $38                                          ; $6078: $ff
	add c                                            ; $6079: $81
	ld a, d                                          ; $607a: $7a
	ld b, [hl]                                       ; $607b: $46
	ld a, a                                          ; $607c: $7f
	and [hl]                                         ; $607d: $a6
	ld a, a                                          ; $607e: $7f
	or $7f                                           ; $607f: $f6 $7f
	ld a, [$9c7f]                                    ; $6081: $fa $7f $9c
	rst SubAFromDE                                          ; $6084: $df
	ccf                                              ; $6085: $3f
	db $ed                                           ; $6086: $ed
	rst SubAFromDE                                          ; $6087: $df
	add b                                            ; $6088: $80
	ld a, a                                          ; $6089: $7f
	cp e                                             ; $608a: $bb
	rst SubAFromDE                                          ; $608b: $df
	ldh [$7f], a                                     ; $608c: $e0 $7f
	cp e                                             ; $608e: $bb
	ld a, a                                          ; $608f: $7f
	cp $df                                           ; $6090: $fe $df
	ldh [$5e], a                                     ; $6092: $e0 $5e
	ld h, b                                          ; $6094: $60
	ld a, [hl]                                       ; $6095: $7e
	sbc [hl]                                         ; $6096: $9e
	ld a, [hl]                                       ; $6097: $7e
	or [hl]                                          ; $6098: $b6
	rst SubAFromDE                                          ; $6099: $df
	rst $38                                          ; $609a: $ff
	sbc [hl]                                         ; $609b: $9e
	rst SubAFromDE                                          ; $609c: $df
	ld a, e                                          ; $609d: $7b
	cp $99                                           ; $609e: $fe $99
	rst $38                                          ; $60a0: $ff
	rst SubAFromBC                                          ; $60a1: $e7
	rst $38                                          ; $60a2: $ff
	sbc e                                            ; $60a3: $9b
	rst $38                                          ; $60a4: $ff
	bit 7, e                                         ; $60a5: $cb $7b
	db $fc                                           ; $60a7: $fc
	ld a, a                                          ; $60a8: $7f
	ld hl, sp+$79                                    ; $60a9: $f8 $79
	cp $47                                           ; $60ab: $fe $47
	nop                                              ; $60ad: $00
	sbc c                                            ; $60ae: $99
	ld a, [hl]                                       ; $60af: $7e
	ld b, c                                          ; $60b0: $41
	rst $38                                          ; $60b1: $ff
	add b                                            ; $60b2: $80
	ld a, [hl]                                       ; $60b3: $7e
	ld b, c                                          ; $60b4: $41
	scf                                              ; $60b5: $37
	and [hl]                                         ; $60b6: $a6

jr_015_60b7:
	rst SubAFromDE                                          ; $60b7: $df
	jr c, jr_015_6047                                ; $60b8: $38 $8d

	ld c, b                                          ; $60ba: $48
	ld a, b                                          ; $60bb: $78
	ld hl, sp-$08                                    ; $60bc: $f8 $f8
	ldh a, [rAUD1SWEEP]                              ; $60be: $f0 $10
	ld a, b                                          ; $60c0: $78
	cp b                                             ; $60c1: $b8
	ldh a, [rAUD1SWEEP]                              ; $60c2: $f0 $10
	ld hl, sp-$08                                    ; $60c4: $f8 $f8
	ld c, b                                          ; $60c6: $48
	ld a, b                                          ; $60c7: $78
	jr c, jr_015_6102                                ; $60c8: $38 $38

	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	ld e, l                                          ; $60cc: $5d
	ld h, b                                          ; $60cd: $60
	ld a, l                                          ; $60ce: $7d
	xor b                                            ; $60cf: $a8
	ld a, l                                          ; $60d0: $7d
	cp a                                             ; $60d1: $bf
	ld a, l                                          ; $60d2: $7d
	and b                                            ; $60d3: $a0
	ld a, l                                          ; $60d4: $7d
	ld l, l                                          ; $60d5: $6d
	sbc l                                            ; $60d6: $9d
	ld [hl], h                                       ; $60d7: $74
	ld a, a                                          ; $60d8: $7f
	ld a, d                                          ; $60d9: $7a
	add c                                            ; $60da: $81
	sbc b                                            ; $60db: $98
	jp $c1ff                                         ; $60dc: $c3 $ff $c1


	rst $38                                          ; $60df: $ff
	add c                                            ; $60e0: $81
	ld a, a                                          ; $60e1: $7f
	ld a, a                                          ; $60e2: $7f
	rst FarCall                                          ; $60e3: $f7
	rst SubAFromDE                                          ; $60e4: $df
	inc bc                                           ; $60e5: $03
	ld [hl], l                                       ; $60e6: $75
	ld a, d                                          ; $60e7: $7a
	ld d, a                                          ; $60e8: $57
	cp $dd                                           ; $60e9: $fe $dd
	inc bc                                           ; $60eb: $03
	ld [hl], l                                       ; $60ec: $75
	ld e, [hl]                                       ; $60ed: $5e
	pop af                                           ; $60ee: $f1
	rst SubAFromDE                                          ; $60ef: $df
	inc bc                                           ; $60f0: $03
	sub e                                            ; $60f1: $93
	ld a, l                                          ; $60f2: $7d
	ld a, a                                          ; $60f3: $7f
	add l                                            ; $60f4: $85
	rst $38                                          ; $60f5: $ff
	sub l                                            ; $60f6: $95
	rst $38                                          ; $60f7: $ff
	and l                                            ; $60f8: $a5
	rst $38                                          ; $60f9: $ff
	sbc l                                            ; $60fa: $9d
	rst $38                                          ; $60fb: $ff
	ld a, e                                          ; $60fc: $7b
	ld a, e                                          ; $60fd: $7b
	rst AddAOntoHL                                          ; $60fe: $ef
	rst SubAFromDE                                          ; $60ff: $df
	cp $7e                                           ; $6100: $fe $7e

jr_015_6102:
	ld [de], a                                       ; $6102: $12

jr_015_6103:
	ld h, a                                          ; $6103: $67
	cp $df                                           ; $6104: $fe $df
	cp $f7                                           ; $6106: $fe $f7
	rst SubAFromDE                                          ; $6108: $df
	ldh [hDisp1_WY], a                                     ; $6109: $e0 $95
	sbc h                                            ; $610b: $9c
	ld a, h                                          ; $610c: $7c
	and $1e                                          ; $610d: $e6 $1e
	sbc h                                            ; $610f: $9c
	ld a, h                                          ; $6110: $7c
	jr nc, jr_015_6103                               ; $6111: $30 $f0

	ldh [$e0], a                                     ; $6113: $e0 $e0
	pop af                                           ; $6115: $f1
	rst SubAFromDE                                          ; $6116: $df
	jr jr_015_60b7                                   ; $6117: $18 $9e

	jr z, jr_015_6196                                ; $6119: $28 $7b

	ld b, h                                          ; $611b: $44
	sub l                                            ; $611c: $95
	cp h                                             ; $611d: $bc
	call c, $8f73                                    ; $611e: $dc $73 $8f
	ld sp, hl                                        ; $6121: $f9
	rlca                                             ; $6122: $07
	halt                                             ; $6123: $76
	sbc [hl]                                         ; $6124: $9e
	xor h                                            ; $6125: $ac
	call c, Call_015_4477                            ; $6126: $dc $77 $44
	rst SubAFromDE                                          ; $6129: $df
	jr @-$03                                         ; $612a: $18 $fb

	rst SubAFromDE                                          ; $612c: $df
	ld bc, $4a7f                                     ; $612d: $01 $7f $4a
	sbc [hl]                                         ; $6130: $9e
	ld de, $c078                                     ; $6131: $11 $78 $c0
	adc e                                            ; $6134: $8b
	inc h                                            ; $6135: $24
	ccf                                              ; $6136: $3f
	dec [hl]                                         ; $6137: $35
	ccf                                              ; $6138: $3f
	ld h, a                                          ; $6139: $67
	ld a, a                                          ; $613a: $7f
	ld b, c                                          ; $613b: $41
	ld a, a                                          ; $613c: $7f
	ld c, c                                          ; $613d: $49
	ld a, a                                          ; $613e: $7f
	ld l, a                                          ; $613f: $6f
	ld a, a                                          ; $6140: $7f
	jr c, jr_015_6182                                ; $6141: $38 $3f

	ld d, $1f                                        ; $6143: $16 $1f
	add hl, de                                       ; $6145: $19
	rra                                              ; $6146: $1f

jr_015_6147:
	ld c, $0e                                        ; $6147: $0e $0e
	db $fd                                           ; $6149: $fd
	rst SubAFromDE                                          ; $614a: $df
	ldh a, [hDisp1_OBP1]                                     ; $614b: $f0 $94
	jr jr_015_6147                                   ; $614d: $18 $f8

	db $fc                                           ; $614f: $fc
	db $fc                                           ; $6150: $fc
	add [hl]                                         ; $6151: $86
	cp $5a                                           ; $6152: $fe $5a
	cp $8b                                           ; $6154: $fe $8b
	rst $38                                          ; $6156: $ff
	ret                                              ; $6157: $c9


	ld a, e                                          ; $6158: $7b
	add hl, hl                                       ; $6159: $29
	ld a, a                                          ; $615a: $7f
	adc d                                            ; $615b: $8a
	sub a                                            ; $615c: $97
	or d                                             ; $615d: $b2
	cp $ec                                           ; $615e: $fe $ec
	db $fc                                           ; $6160: $fc
	inc b                                            ; $6161: $04
	db $fc                                           ; $6162: $fc
	adc h                                            ; $6163: $8c
	db $fc                                           ; $6164: $fc
	ld [hl], d                                       ; $6165: $72
	ld a, [hl+]                                      ; $6166: $2a
	add d                                            ; $6167: $82
	ld bc, $3818                                     ; $6168: $01 $18 $38
	ld h, [hl]                                       ; $616b: $66
	halt                                             ; $616c: $76
	dec h                                            ; $616d: $25
	ld h, a                                          ; $616e: $67
	ld [$082c], sp                                   ; $616f: $08 $2c $08
	inc c                                            ; $6172: $0c
	jr nz, jr_015_61a5                               ; $6173: $20 $30

	ld b, b                                          ; $6175: $40
	ld [hl], c                                       ; $6176: $71
	ld [hl+], a                                      ; $6177: $22
	dec sp                                           ; $6178: $3b
	ld a, [de]                                       ; $6179: $1a
	dec de                                           ; $617a: $1b
	ld bc, $20b3                                     ; $617b: $01 $b3 $20
	jr c, jr_015_61b0                                ; $617e: $38 $30

	inc a                                            ; $6180: $3c
	inc e                                            ; $6181: $1c

jr_015_6182:
	dec e                                            ; $6182: $1d
	ld bc, $fd31                                     ; $6183: $01 $31 $fd
	add e                                            ; $6186: $83
	ld [hl], d                                       ; $6187: $72
	ld a, d                                          ; $6188: $7a
	add hl, bc                                       ; $6189: $09
	ld a, c                                          ; $618a: $79
	inc d                                            ; $618b: $14
	ld e, h                                          ; $618c: $5c
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	jr nc, jr_015_61cb                               ; $618f: $30 $3a

	ld a, [bc]                                       ; $6191: $0a
	ld a, [hl-]                                      ; $6192: $3a
	add hl, bc                                       ; $6193: $09
	dec de                                           ; $6194: $1b
	add hl, de                                       ; $6195: $19

jr_015_6196:
	dec de                                           ; $6196: $1b
	ld bc, $80c3                                     ; $6197: $01 $c3 $80
	adc b                                            ; $619a: $88
	ld [$4a08], sp                                   ; $619b: $08 $08 $4a
	ld a, [hl]                                       ; $619e: $7e
	ld [hl], d                                       ; $619f: $72
	cp $84                                           ; $61a0: $fe $84
	sbc h                                            ; $61a2: $9c
	cp h                                             ; $61a3: $bc
	nop                                              ; $61a4: $00

jr_015_61a5:
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	inc e                                            ; $61a8: $1c
	sub l                                            ; $61a9: $95
	jr jr_015_61d2                                   ; $61aa: $18 $26

	inc a                                            ; $61ac: $3c
	ld b, e                                          ; $61ad: $43
	ld a, [hl]                                       ; $61ae: $7e
	add c                                            ; $61af: $81

jr_015_61b0:
	inc a                                            ; $61b0: $3c
	ld b, e                                          ; $61b1: $43
	jr jr_015_61da                                   ; $61b2: $18 $26

	or a                                             ; $61b4: $b7
	inc e                                            ; $61b5: $1c
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	inc bc                                           ; $61bc: $03
	ld bc, $8f1f                                     ; $61bd: $01 $1f $8f
	ld b, $09                                        ; $61c0: $06 $09
	ld bc, $0306                                     ; $61c2: $01 $06 $03
	inc e                                            ; $61c5: $1c
	rrca                                             ; $61c6: $0f
	ld [hl], b                                       ; $61c7: $70
	ccf                                              ; $61c8: $3f
	ld b, b                                          ; $61c9: $40
	rrca                                             ; $61ca: $0f

jr_015_61cb:
	jr nc, jr_015_61d0                               ; $61cb: $30 $03

	inc c                                            ; $61cd: $0c
	nop                                              ; $61ce: $00
	inc bc                                           ; $61cf: $03

jr_015_61d0:
	ld a, b                                          ; $61d0: $78
	dec l                                            ; $61d1: $2d

jr_015_61d2:
	sbc [hl]                                         ; $61d2: $9e
	inc b                                            ; $61d3: $04
	cp h                                             ; $61d4: $bc
	rlca                                             ; $61d5: $07
	nop                                              ; $61d6: $00
	ld bc, $c000                                     ; $61d7: $01 $00 $c0

jr_015_61da:
	add a                                            ; $61da: $87
	add b                                            ; $61db: $80
	ld h, b                                          ; $61dc: $60
	ld h, b                                          ; $61dd: $60
	sbc b                                            ; $61de: $98
	or b                                             ; $61df: $b0
	ld c, h                                          ; $61e0: $4c
	ret c                                            ; $61e1: $d8

	ld h, $ec                                        ; $61e2: $26 $ec
	inc de                                           ; $61e4: $13
	cp $01                                           ; $61e5: $fe $01
	db $ec                                           ; $61e7: $ec
	inc de                                           ; $61e8: $13
	db $ec                                           ; $61e9: $ec
	ld [de], a                                       ; $61ea: $12
	ret c                                            ; $61eb: $d8

	inc h                                            ; $61ec: $24
	or b                                             ; $61ed: $b0
	ld c, b                                          ; $61ee: $48
	jr nz, @-$2e                                     ; $61ef: $20 $d0

	ld b, b                                          ; $61f1: $40
	and b                                            ; $61f2: $a0
	cp a                                             ; $61f3: $bf
	ret nz                                           ; $61f4: $c0

	add b                                            ; $61f5: $80
	ld a, a                                          ; $61f6: $7f
	dec de                                           ; $61f7: $1b
	sbc [hl]                                         ; $61f8: $9e
	inc h                                            ; $61f9: $24
	cp [hl]                                          ; $61fa: $be
	ld b, d                                          ; $61fb: $42
	ld b, d                                          ; $61fc: $42
	ld a, [de]                                       ; $61fd: $1a
	adc a                                            ; $61fe: $8f
	push hl                                          ; $61ff: $e5
	ret nc                                           ; $6200: $d0

	cpl                                              ; $6201: $2f
	jp hl                                            ; $6202: $e9


	ld d, $f4                                        ; $6203: $16 $f4
	dec bc                                           ; $6205: $0b
	push af                                          ; $6206: $f5
	ld a, [bc]                                       ; $6207: $0a
	dec bc                                           ; $6208: $0b
	db $f4                                           ; $6209: $f4
	ld [$0915], a                                    ; $620a: $ea $15 $09
	or $21                                           ; $620d: $f6 $21
	cp d                                             ; $620f: $ba
	add hl, bc                                       ; $6210: $09
	ld [bc], a                                       ; $6211: $02
	inc d                                            ; $6212: $14
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	ld [bc], a                                       ; $6215: $02
	inc b                                            ; $6216: $04
	adc e                                            ; $6217: $8b
	ld bc, $ef10                                     ; $6218: $01 $10 $ef
	db $e4                                           ; $621b: $e4
	dec de                                           ; $621c: $1b
	ld d, d                                          ; $621d: $52
	xor l                                            ; $621e: $ad
	ret                                              ; $621f: $c9


	ld [hl], $71                                     ; $6220: $36 $71
	adc [hl]                                         ; $6222: $8e
	adc $31                                          ; $6223: $ce $31
	sub h                                            ; $6225: $94
	ld l, e                                          ; $6226: $6b
	inc b                                            ; $6227: $04
	ei                                               ; $6228: $fb
	inc b                                            ; $6229: $04
	ld bc, $bc44                                     ; $622a: $01 $44 $bc
	jr z, jr_015_623f                                ; $622d: $28 $10

jr_015_622f:
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	ld de, $088b                                     ; $6231: $11 $8b $08
	add hl, hl                                       ; $6234: $29
	nop                                              ; $6235: $00
	db $10                                           ; $6236: $10
	rst AddAOntoHL                                          ; $6237: $ef
	rst SubAFromHL                                          ; $6238: $d7
	jr z, @-$15                                      ; $6239: $28 $e9

	ld d, $e2                                        ; $623b: $16 $e2
	dec e                                            ; $623d: $1d
	db $f4                                           ; $623e: $f4

jr_015_623f:
	dec bc                                           ; $623f: $0b

jr_015_6240:
	inc b                                            ; $6240: $04
	ei                                               ; $6241: $fb
	rst FarCall                                          ; $6242: $f7
	ld [$f708], sp                                   ; $6243: $08 $08 $f7
	inc b                                            ; $6246: $04
	cp d                                             ; $6247: $ba
	nop                                              ; $6248: $00
	dec b                                            ; $6249: $05
	nop                                              ; $624a: $00
	ld b, b                                          ; $624b: $40
	and b                                            ; $624c: $a0
	db $10                                           ; $624d: $10
	jr nz, jr_015_622f                               ; $624e: $20 $df

	dec b                                            ; $6250: $05
	adc l                                            ; $6251: $8d
	ld a, [$5da2]                                    ; $6252: $fa $a2 $5d
	ld d, h                                          ; $6255: $54
	xor e                                            ; $6256: $ab
	ld b, [hl]                                       ; $6257: $46
	cp c                                             ; $6258: $b9
	adc d                                            ; $6259: $8a
	ld [hl], l                                       ; $625a: $75
	sub b                                            ; $625b: $90
	ld l, a                                          ; $625c: $6f
	ld l, [hl]                                       ; $625d: $6e
	sub c                                            ; $625e: $91
	jr nz, jr_015_6240                               ; $625f: $20 $df

	or b                                             ; $6261: $b0
	ld bc, $be92                                     ; $6262: $01 $92 $be
	sub d                                            ; $6265: $92
	inc c                                            ; $6266: $0c
	dec d                                            ; $6267: $15
	adc b                                            ; $6268: $88
	db $eb                                           ; $6269: $eb
	and d                                            ; $626a: $a2
	ld e, l                                          ; $626b: $5d
	ld c, d                                          ; $626c: $4a
	or l                                             ; $626d: $b5
	ld l, d                                          ; $626e: $6a
	sub l                                            ; $626f: $95
	xor d                                            ; $6270: $aa
	ld d, l                                          ; $6271: $55
	ld a, [bc]                                       ; $6272: $0a
	push af                                          ; $6273: $f5
	ld [$2515], a                                    ; $6274: $ea $15 $25
	db $db                                           ; $6277: $db
	sbc d                                            ; $6278: $9a
	rst SubAFromBC                                          ; $6279: $e7
	ld c, a                                          ; $627a: $4f
	ld a, l                                          ; $627b: $7d
	ld b, a                                          ; $627c: $47
	ld a, [hl]                                       ; $627d: $7e
	ld a, $3f                                        ; $627e: $3e $3f
	halt                                             ; $6280: $76
	nop                                              ; $6281: $00
	halt                                             ; $6282: $76
	ld [bc], a                                       ; $6283: $02
	xor b                                            ; $6284: $a8
	nop                                              ; $6285: $00
	rst $38                                          ; $6286: $ff
	rst SubAFromDE                                          ; $6287: $df
	rlca                                             ; $6288: $07
	adc e                                            ; $6289: $8b
	ld [hl+], a                                      ; $628a: $22
	inc hl                                           ; $628b: $23
	rra                                              ; $628c: $1f
	rra                                              ; $628d: $1f
	ld [$060f], sp                                   ; $628e: $08 $0f $06
	rlca                                             ; $6291: $07
	inc b                                            ; $6292: $04
	rlca                                             ; $6293: $07
	ld [$090f], sp                                   ; $6294: $08 $0f $09
	rrca                                             ; $6297: $0f
	dec b                                            ; $6298: $05
	rlca                                             ; $6299: $07
	inc bc                                           ; $629a: $03
	inc bc                                           ; $629b: $03
	ld bc, $7b00                                     ; $629c: $01 $00 $7b
	cp $dc                                           ; $629f: $fe $dc
	ld bc, $dfff                                     ; $62a1: $01 $ff $df
	cp b                                             ; $62a4: $b8
	sbc h                                            ; $62a5: $9c
	ld h, [hl]                                       ; $62a6: $66
	cp $31                                           ; $62a7: $fe $31
	sbc $ff                                          ; $62a9: $de $ff
	adc a                                            ; $62ab: $8f
	ld d, c                                          ; $62ac: $51
	rst $38                                          ; $62ad: $ff
	and h                                            ; $62ae: $a4
	rst $38                                          ; $62af: $ff
	or d                                             ; $62b0: $b2
	rst $38                                          ; $62b1: $ff
	cp d                                             ; $62b2: $ba
	rst AddAOntoHL                                          ; $62b3: $ef
	rst $38                                          ; $62b4: $ff
	ld h, a                                          ; $62b5: $67
	rst $38                                          ; $62b6: $ff
	xor l                                            ; $62b7: $ad
	ld [hl], a                                       ; $62b8: $77
	sbc $ff                                          ; $62b9: $de $ff
	call z, $fe7b                                    ; $62bb: $cc $7b $fe
	ld a, a                                          ; $62be: $7f
	jp hl                                            ; $62bf: $e9


	sbc [hl]                                         ; $62c0: $9e
	add e                                            ; $62c1: $83
	db $fd                                           ; $62c2: $fd
	rst SubAFromDE                                          ; $62c3: $df
	add b                                            ; $62c4: $80
	rst SubAFromDE                                          ; $62c5: $df
	ret nz                                           ; $62c6: $c0

	rst SubAFromDE                                          ; $62c7: $df
	add b                                            ; $62c8: $80
	sbc e                                            ; $62c9: $9b
	ld b, b                                          ; $62ca: $40
	ret nz                                           ; $62cb: $c0

	and b                                            ; $62cc: $a0
	ldh [$6f], a                                     ; $62cd: $e0 $6f
	cp $9c                                           ; $62cf: $fe $9c
	ld h, b                                          ; $62d1: $60
	ldh [$60], a                                     ; $62d2: $e0 $60
	ld a, e                                          ; $62d4: $7b
	ld sp, hl                                        ; $62d5: $f9
	ld [hl], a                                       ; $62d6: $77
	db $ec                                           ; $62d7: $ec
	rst SubAFromDE                                          ; $62d8: $df
	add b                                            ; $62d9: $80
	rst $38                                          ; $62da: $ff
	rst SubAFromDE                                          ; $62db: $df
	dec c                                            ; $62dc: $0d
	sbc e                                            ; $62dd: $9b
	rra                                              ; $62de: $1f
	ld [de], a                                       ; $62df: $12
	rra                                              ; $62e0: $1f
	inc d                                            ; $62e1: $14
	ld a, e                                          ; $62e2: $7b
	and a                                            ; $62e3: $a7
	sbc l                                            ; $62e4: $9d
	rrca                                             ; $62e5: $0f
	nop                                              ; $62e6: $00
	ld [hl], e                                       ; $62e7: $73
	xor h                                            ; $62e8: $ac
	sbc h                                            ; $62e9: $9c
	inc bc                                           ; $62ea: $03
	ld [bc], a                                       ; $62eb: $02
	inc bc                                           ; $62ec: $03
	ld [hl], a                                       ; $62ed: $77
	db $fd                                           ; $62ee: $fd
	adc h                                            ; $62ef: $8c
	inc bc                                           ; $62f0: $03
	rrca                                             ; $62f1: $0f
	inc c                                            ; $62f2: $0c
	rlca                                             ; $62f3: $07
	rlca                                             ; $62f4: $07
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	rst $38                                          ; $62f7: $ff
	cp $cf                                           ; $62f8: $fe $cf
	cp c                                             ; $62fa: $b9
	rst $38                                          ; $62fb: $ff
	db $10                                           ; $62fc: $10
	rst $38                                          ; $62fd: $ff
	add hl, bc                                       ; $62fe: $09
	rst $38                                          ; $62ff: $ff
	add [hl]                                         ; $6300: $86
	rst $38                                          ; $6301: $ff
	add c                                            ; $6302: $81
	ld a, e                                          ; $6303: $7b
	cp $7f                                           ; $6304: $fe $7f
	ldh a, [rPCM34]                                  ; $6306: $f0 $77
	cp $9b                                           ; $6308: $fe $9b
	ldh a, [$2f]                                     ; $630a: $f0 $2f
	rst AddAOntoHL                                          ; $630c: $ef
	ld a, h                                          ; $630d: $7c
	db $dd                                           ; $630e: $dd
	rst $38                                          ; $630f: $ff
	sbc b                                            ; $6310: $98
	db $fc                                           ; $6311: $fc
	rrca                                             ; $6312: $0f
	rrca                                             ; $6313: $0f
	ret nz                                           ; $6314: $c0

	ld b, b                                          ; $6315: $40
	ldh [rAUD4LEN], a                                ; $6316: $e0 $20
	sbc $e0                                          ; $6318: $de $e0
	ld [hl], a                                       ; $631a: $77
	xor e                                            ; $631b: $ab
	sbc [hl]                                         ; $631c: $9e
	jr nz, @+$71                                     ; $631d: $20 $6f

	xor [hl]                                         ; $631f: $ae
	ld a, e                                          ; $6320: $7b
	sub d                                            ; $6321: $92
	ld a, a                                          ; $6322: $7f
	sub l                                            ; $6323: $95
	ld [hl], a                                       ; $6324: $77
	db $fd                                           ; $6325: $fd
	sbc d                                            ; $6326: $9a
	ret nz                                           ; $6327: $c0

	ldh a, [$f0]                                     ; $6328: $f0 $f0
	ret nz                                           ; $632a: $c0

	ret nz                                           ; $632b: $c0

	ld b, a                                          ; $632c: $47
	ld [bc], a                                       ; $632d: $02
	rst $38                                          ; $632e: $ff
	rst SubAFromDE                                          ; $632f: $df
	rlca                                             ; $6330: $07
	adc e                                            ; $6331: $8b
	ld [hl+], a                                      ; $6332: $22
	inc hl                                           ; $6333: $23
	rra                                              ; $6334: $1f
	rra                                              ; $6335: $1f
	ld [$060f], sp                                   ; $6336: $08 $0f $06
	rlca                                             ; $6339: $07
	inc b                                            ; $633a: $04
	rlca                                             ; $633b: $07
	ld [$090f], sp                                   ; $633c: $08 $0f $09
	rrca                                             ; $633f: $0f
	dec b                                            ; $6340: $05
	rlca                                             ; $6341: $07
	inc bc                                           ; $6342: $03
	inc bc                                           ; $6343: $03
	ld bc, $7b00                                     ; $6344: $01 $00 $7b
	cp $dc                                           ; $6347: $fe $dc
	ld bc, $dfff                                     ; $6349: $01 $ff $df
	cp b                                             ; $634c: $b8
	sbc h                                            ; $634d: $9c
	ld h, [hl]                                       ; $634e: $66
	cp $31                                           ; $634f: $fe $31
	sbc $ff                                          ; $6351: $de $ff
	adc a                                            ; $6353: $8f
	ld d, c                                          ; $6354: $51
	rst $38                                          ; $6355: $ff
	and h                                            ; $6356: $a4
	rst $38                                          ; $6357: $ff
	or d                                             ; $6358: $b2
	rst $38                                          ; $6359: $ff
	cp d                                             ; $635a: $ba
	rst AddAOntoHL                                          ; $635b: $ef
	rst $38                                          ; $635c: $ff
	ld h, a                                          ; $635d: $67
	rst $38                                          ; $635e: $ff
	xor l                                            ; $635f: $ad
	ld [hl], a                                       ; $6360: $77
	sbc $ff                                          ; $6361: $de $ff
	call z, $fe7b                                    ; $6363: $cc $7b $fe
	ld a, a                                          ; $6366: $7f
	jp hl                                            ; $6367: $e9


	sbc [hl]                                         ; $6368: $9e
	add e                                            ; $6369: $83
	db $fd                                           ; $636a: $fd
	rst SubAFromDE                                          ; $636b: $df
	add b                                            ; $636c: $80
	rst SubAFromDE                                          ; $636d: $df
	ret nz                                           ; $636e: $c0

	rst SubAFromDE                                          ; $636f: $df
	add b                                            ; $6370: $80
	sbc e                                            ; $6371: $9b
	ld b, b                                          ; $6372: $40
	ret nz                                           ; $6373: $c0

	and b                                            ; $6374: $a0
	ldh [$6f], a                                     ; $6375: $e0 $6f
	cp $9c                                           ; $6377: $fe $9c
	ld h, b                                          ; $6379: $60
	ldh [$60], a                                     ; $637a: $e0 $60
	ld a, e                                          ; $637c: $7b
	ld sp, hl                                        ; $637d: $f9
	ld [hl], a                                       ; $637e: $77
	db $ec                                           ; $637f: $ec
	rst SubAFromDE                                          ; $6380: $df
	add b                                            ; $6381: $80
	dec de                                           ; $6382: $1b
	ret nz                                           ; $6383: $c0

	sbc d                                            ; $6384: $9a
	call $32ff                                       ; $6385: $cd $ff $32
	rst $38                                          ; $6388: $ff
	add h                                            ; $6389: $84
	inc hl                                           ; $638a: $23
	ret nz                                           ; $638b: $c0

	adc h                                            ; $638c: $8c
	ldh [$c0], a                                     ; $638d: $e0 $c0
	ld b, b                                          ; $638f: $40
	ret nz                                           ; $6390: $c0

	ld b, b                                          ; $6391: $40
	add b                                            ; $6392: $80
	add b                                            ; $6393: $80
	ld bc, $0301                                     ; $6394: $01 $01 $03
	ld [bc], a                                       ; $6397: $02
	rlca                                             ; $6398: $07
	inc b                                            ; $6399: $04
	rrca                                             ; $639a: $0f
	dec bc                                           ; $639b: $0b
	rrca                                             ; $639c: $0f
	dec c                                            ; $639d: $0d
	rlca                                             ; $639e: $07
	inc b                                            ; $639f: $04
	ld a, e                                          ; $63a0: $7b
	ld l, b                                          ; $63a1: $68
	sbc $01                                          ; $63a2: $de $01
	ld a, a                                          ; $63a4: $7f
	ldh a, [$df]                                     ; $63a5: $f0 $df
	inc bc                                           ; $63a7: $03
	ld a, e                                          ; $63a8: $7b
	db $fd                                           ; $63a9: $fd
	add [hl]                                         ; $63aa: $86
	inc bc                                           ; $63ab: $03
	rrca                                             ; $63ac: $0f
	inc c                                            ; $63ad: $0c
	rlca                                             ; $63ae: $07
	rlca                                             ; $63af: $07
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	ei                                               ; $63b2: $fb
	rst $38                                          ; $63b3: $ff
	rst FarCall                                          ; $63b4: $f7
	ccf                                              ; $63b5: $3f
	db $ec                                           ; $63b6: $ec
	ld a, a                                          ; $63b7: $7f
	ret nc                                           ; $63b8: $d0

	rst $38                                          ; $63b9: $ff
	xor l                                            ; $63ba: $ad
	ld a, [$ffec]                                    ; $63bb: $fa $ec $ff
	pop af                                           ; $63be: $f1
	sbc a                                            ; $63bf: $9f
	rst $38                                          ; $63c0: $ff
	ld c, $ff                                        ; $63c1: $0e $ff
	nop                                              ; $63c3: $00
	ld a, e                                          ; $63c4: $7b
	cp $9b                                           ; $63c5: $fe $9b
	ldh a, [$2f]                                     ; $63c7: $f0 $2f
	rst AddAOntoHL                                          ; $63c9: $ef
	ld a, h                                          ; $63ca: $7c
	db $dd                                           ; $63cb: $dd
	rst $38                                          ; $63cc: $ff
	sbc b                                            ; $63cd: $98
	db $fc                                           ; $63ce: $fc
	rrca                                             ; $63cf: $0f
	rrca                                             ; $63d0: $0f
	ret nz                                           ; $63d1: $c0

	ret nz                                           ; $63d2: $c0

	ldh [$a0], a                                     ; $63d3: $e0 $a0
	ld [hl], a                                       ; $63d5: $77
	or b                                             ; $63d6: $b0
	sbc [hl]                                         ; $63d7: $9e
	jr nz, @+$7d                                     ; $63d8: $20 $7b

	xor d                                            ; $63da: $aa
	ld l, a                                          ; $63db: $6f
	ld l, [hl]                                       ; $63dc: $6e
	ld a, e                                          ; $63dd: $7b
	sub d                                            ; $63de: $92
	ld a, a                                          ; $63df: $7f
	and [hl]                                         ; $63e0: $a6
	ld [hl], a                                       ; $63e1: $77
	db $fd                                           ; $63e2: $fd
	sbc d                                            ; $63e3: $9a
	ret nz                                           ; $63e4: $c0

	ldh a, [$f0]                                     ; $63e5: $f0 $f0
	ret nz                                           ; $63e7: $c0

	ret nz                                           ; $63e8: $c0

	push af                                          ; $63e9: $f5
	ld [hl], e                                       ; $63ea: $73
	sub h                                            ; $63eb: $94
	sbc c                                            ; $63ec: $99
	dec b                                            ; $63ed: $05
	ld a, [bc]                                       ; $63ee: $0a
	ld c, $11                                        ; $63ef: $0e $11
	rra                                              ; $63f1: $1f
	ld de, $f07a                                     ; $63f2: $11 $7a $f0
	ld [hl], a                                       ; $63f5: $77
	and d                                            ; $63f6: $a2
	rst $38                                          ; $63f7: $ff
	ld a, a                                          ; $63f8: $7f
	xor $7f                                          ; $63f9: $ee $7f
	sbc b                                            ; $63fb: $98
	adc c                                            ; $63fc: $89
	ccf                                              ; $63fd: $3f
	jr nc, jr_015_647f                               ; $63fe: $30 $7f

	ld c, c                                          ; $6400: $49
	ld a, a                                          ; $6401: $7f
	ld c, a                                          ; $6402: $4f
	pop af                                           ; $6403: $f1
	pop af                                           ; $6404: $f1
	ld h, c                                          ; $6405: $61
	pop hl                                           ; $6406: $e1
	add c                                            ; $6407: $81
	add c                                            ; $6408: $81
	dec b                                            ; $6409: $05
	dec b                                            ; $640a: $05
	inc bc                                           ; $640b: $03
	ld [bc], a                                       ; $640c: $02
	dec bc                                           ; $640d: $0b
	dec bc                                           ; $640e: $0b
	ldh [c], a                                       ; $640f: $e2
	db $e3                                           ; $6410: $e3
	jp Jump_015_67c3                                 ; $6411: $c3 $c3 $67


	add b                                            ; $6414: $80
	sub e                                            ; $6415: $93
	rst JumpTable                                          ; $6416: $c7
	ccf                                              ; $6417: $3f
	db $ec                                           ; $6418: $ec
	rra                                              ; $6419: $1f
	ldh a, [$1f]                                     ; $641a: $f0 $1f
	db $ed                                           ; $641c: $ed
	ld a, [hl-]                                      ; $641d: $3a
	db $ec                                           ; $641e: $ec
	ccf                                              ; $641f: $3f
	pop af                                           ; $6420: $f1
	rra                                              ; $6421: $1f
	ccf                                              ; $6422: $3f
	add b                                            ; $6423: $80
	ld d, e                                          ; $6424: $53
	and b                                            ; $6425: $a0
	adc h                                            ; $6426: $8c
	ld hl, $2203                                     ; $6427: $21 $03 $22
	rlca                                             ; $642a: $07
	dec b                                            ; $642b: $05
	ld a, [de]                                       ; $642c: $1a
	ld e, $e2                                        ; $642d: $1e $e2
	cp $84                                           ; $642f: $fe $84
	db $fc                                           ; $6431: $fc

jr_015_6432:
	ld c, b                                          ; $6432: $48
	ld a, b                                          ; $6433: $78
	jr nc, jr_015_646c                               ; $6434: $30 $36

	nop                                              ; $6436: $00
	ld b, b                                          ; $6437: $40
	nop                                              ; $6438: $00
	ld b, b                                          ; $6439: $40
	ld b, a                                          ; $643a: $47
	and b                                            ; $643b: $a0
	ld b, a                                          ; $643c: $47
	jr nz, jr_015_6449                               ; $643d: $20 $0a

	ret nz                                           ; $643f: $c0

	sbc [hl]                                         ; $6440: $9e
	sbc h                                            ; $6441: $9c
	ld c, [hl]                                       ; $6442: $4e
	ret nz                                           ; $6443: $c0

	adc a                                            ; $6444: $8f
	and [hl]                                         ; $6445: $a6
	and $af                                          ; $6446: $e6 $af
	jp hl                                            ; $6448: $e9


jr_015_6449:
	cp a                                             ; $6449: $bf
	ld hl, sp+$6f                                    ; $644a: $f8 $6f
	cp $59                                           ; $644c: $fe $59
	ld sp, hl                                        ; $644e: $f9
	or c                                             ; $644f: $b1
	pop af                                           ; $6450: $f1
	ld h, d                                          ; $6451: $62
	ldh [c], a                                       ; $6452: $e2
	call nz, Call_015_76c4                           ; $6453: $c4 $c4 $76
	add b                                            ; $6456: $80
	pop af                                           ; $6457: $f1
	db $db                                           ; $6458: $db
	add b                                            ; $6459: $80
	ld d, a                                          ; $645a: $57
	inc c                                            ; $645b: $0c
	ld [hl], e                                       ; $645c: $73
	cp $72                                           ; $645d: $fe $72
	and h                                            ; $645f: $a4
	ld a, $a0                                        ; $6460: $3e $a0
	sbc c                                            ; $6462: $99
	rst $38                                          ; $6463: $ff
	rst SubAFromBC                                          ; $6464: $e7
	rst $38                                          ; $6465: $ff
	rlca                                             ; $6466: $07
	db $fc                                           ; $6467: $fc
	rrca                                             ; $6468: $0f
	ld [hl], e                                       ; $6469: $73
	jr nz, jr_015_64ea                               ; $646a: $20 $7e

jr_015_646c:
	and b                                            ; $646c: $a0
	dec sp                                           ; $646d: $3b
	jr nz, jr_015_6472                               ; $646e: $20 $02

	and b                                            ; $6470: $a0
	sbc e                                            ; $6471: $9b

jr_015_6472:
	nop                                              ; $6472: $00
	ld hl, $9200                                     ; $6473: $21 $00 $92
	ld a, e                                          ; $6476: $7b
	ld h, b                                          ; $6477: $60
	rst SubAFromDE                                          ; $6478: $df
	adc h                                            ; $6479: $8c
	adc a                                            ; $647a: $8f
	ld c, [hl]                                       ; $647b: $4e
	jp z, $e5a7                                      ; $647c: $ca $a7 $e5

jr_015_647f:
	and a                                            ; $647f: $a7
	push hl                                          ; $6480: $e5
	xor a                                            ; $6481: $af
	jp hl                                            ; $6482: $e9


	cp [hl]                                          ; $6483: $be
	ld a, [$fc6c]                                    ; $6484: $fa $6c $fc
	ld e, b                                          ; $6487: $58
	ld hl, sp-$50                                    ; $6488: $f8 $b0
	ldh a, [$6f]                                     ; $648a: $f0 $6f
	ret nc                                           ; $648c: $d0

	db $ed                                           ; $648d: $ed
	rst SubAFromDE                                          ; $648e: $df
	ld [$149b], sp                                   ; $648f: $08 $9b $14
	inc e                                            ; $6492: $1c
	inc h                                            ; $6493: $24
	inc a                                            ; $6494: $3c
	ld l, a                                          ; $6495: $6f
	cp $df                                           ; $6496: $fe $df
	jr jr_015_6432                                   ; $6498: $18 $98

	rla                                              ; $649a: $17
	rra                                              ; $649b: $1f
	ld d, $1f                                        ; $649c: $16 $1f
	rla                                              ; $649e: $17
	rra                                              ; $649f: $1f
	inc d                                            ; $64a0: $14
	ld a, e                                          ; $64a1: $7b
	ld a, [$fc7f]                                    ; $64a2: $fa $7f $fc
	ld a, a                                          ; $64a5: $7f
	cp $95                                           ; $64a6: $fe $95
	dec e                                            ; $64a8: $1d
	rra                                              ; $64a9: $1f
	dec e                                            ; $64aa: $1d
	rla                                              ; $64ab: $17
	rra                                              ; $64ac: $1f
	inc de                                           ; $64ad: $13
	rra                                              ; $64ae: $1f
	ld [de], a                                       ; $64af: $12
	rrca                                             ; $64b0: $0f
	ld c, $79                                        ; $64b1: $0e $79
	db $ec                                           ; $64b3: $ec
	ld a, l                                          ; $64b4: $7d
	ld d, e                                          ; $64b5: $53
	sbc [hl]                                         ; $64b6: $9e
	add hl, bc                                       ; $64b7: $09
	ld a, c                                          ; $64b8: $79
	ld c, e                                          ; $64b9: $4b
	ld a, l                                          ; $64ba: $7d
	add sp, -$62                                     ; $64bb: $e8 $9e
	ld [bc], a                                       ; $64bd: $02
	push de                                          ; $64be: $d5
	ld bc, $c046                                     ; $64bf: $01 $46 $c0
	ld d, [hl]                                       ; $64c2: $56
	jr nz, jr_015_6544                               ; $64c3: $20 $7f

	add sp, $7f                                      ; $64c5: $e8 $7f
	pop de                                           ; $64c7: $d1
	rst SubAFromDE                                          ; $64c8: $df
	inc bc                                           ; $64c9: $03
	jp hl                                            ; $64ca: $e9


	rst SubAFromDE                                          ; $64cb: $df
	ldh [$7f], a                                     ; $64cc: $e0 $7f
	rra                                              ; $64ce: $1f
	sbc e                                            ; $64cf: $9b
	ccf                                              ; $64d0: $3f
	ldh [rIE], a                                     ; $64d1: $e0 $ff
	rst $38                                          ; $64d3: $ff
	di                                               ; $64d4: $f3
	inc d                                            ; $64d5: $14
	ldh [$df], a                                     ; $64d6: $e0 $df
	rst FarCall                                          ; $64d8: $f7
	sub a                                            ; $64d9: $97
	ld a, a                                          ; $64da: $7f
	ret z                                            ; $64db: $c8

	rst $38                                          ; $64dc: $ff
	adc b                                            ; $64dd: $88
	ld a, a                                          ; $64de: $7f
	ld a, b                                          ; $64df: $78
	rlca                                             ; $64e0: $07
	rlca                                             ; $64e1: $07
	inc bc                                           ; $64e2: $03
	add b                                            ; $64e3: $80
	push af                                          ; $64e4: $f5
	ld a, a                                          ; $64e5: $7f
	ld a, [hl]                                       ; $64e6: $7e
	ld a, a                                          ; $64e7: $7f
	and $9e                                          ; $64e8: $e6 $9e

jr_015_64ea:
	inc e                                            ; $64ea: $1c
	ld d, a                                          ; $64eb: $57
	ld h, a                                          ; $64ec: $67
	ld a, e                                          ; $64ed: $7b
	cp $77                                           ; $64ee: $fe $77
	db $ec                                           ; $64f0: $ec
	ld a, l                                          ; $64f1: $7d
	jp nc, $1e99                                     ; $64f2: $d2 $99 $1e

	nop                                              ; $64f5: $00
	ld a, h                                          ; $64f6: $7c
	nop                                              ; $64f7: $00
	ldh a, [rP1]                                     ; $64f8: $f0 $00
	ld d, c                                          ; $64fa: $51
	ld l, d                                          ; $64fb: $6a
	cp $7f                                           ; $64fc: $fe $7f
	call nc, $3e9e                                   ; $64fe: $d4 $9e $3e
	ld [hl], e                                       ; $6501: $73
	cp $9e                                           ; $6502: $fe $9e
	inc a                                            ; $6504: $3c
	ld a, e                                          ; $6505: $7b
	ldh [c], a                                       ; $6506: $e2
	ld a, a                                          ; $6507: $7f
	cp $9e                                           ; $6508: $fe $9e
	ld hl, sp+$7b                                    ; $650a: $f8 $7b
	sbc $9e                                          ; $650c: $de $9e
	ldh [$7b], a                                     ; $650e: $e0 $7b
	call c, $c432                                    ; $6510: $dc $32 $c4
	ld e, e                                          ; $6513: $5b
	xor h                                            ; $6514: $ac
	ld e, a                                          ; $6515: $5f
	jr jr_015_6577                                   ; $6516: $18 $5f

	ret nz                                           ; $6518: $c0

	ld [hl], a                                       ; $6519: $77
	cp [hl]                                          ; $651a: $be
	sbc h                                            ; $651b: $9c
	ld a, b                                          ; $651c: $78
	nop                                              ; $651d: $00
	ld [hl], b                                       ; $651e: $70
	ld [hl], e                                       ; $651f: $73
	ret nz                                           ; $6520: $c0

	ccf                                              ; $6521: $3f
	and b                                            ; $6522: $a0
	ld a, a                                          ; $6523: $7f
	ld hl, sp+$7f                                    ; $6524: $f8 $7f
	cp $9e                                           ; $6526: $fe $9e
	db $10                                           ; $6528: $10
	ldh a, [c]                                       ; $6529: $f2
	sbc d                                            ; $652a: $9a
	ld c, $00                                        ; $652b: $0e $00
	rra                                              ; $652d: $1f
	nop                                              ; $652e: $00
	ccf                                              ; $652f: $3f
	ld a, e                                          ; $6530: $7b
	cp $7f                                           ; $6531: $fe $7f
	ld a, [$627f]                                    ; $6533: $fa $7f $62
	ld a, a                                          ; $6536: $7f
	xor [hl]                                         ; $6537: $ae
	ld a, a                                          ; $6538: $7f
	xor d                                            ; $6539: $aa
	db $ed                                           ; $653a: $ed
	ld a, a                                          ; $653b: $7f
	halt                                             ; $653c: $76
	ld a, a                                          ; $653d: $7f
	cp $7f                                           ; $653e: $fe $7f
	or b                                             ; $6540: $b0
	ld a, a                                          ; $6541: $7f
	cp $7f                                           ; $6542: $fe $7f

jr_015_6544:
	xor d                                            ; $6544: $aa
	ld a, a                                          ; $6545: $7f
	cp $7f                                           ; $6546: $fe $7f
	ld h, h                                          ; $6548: $64
	ld a, a                                          ; $6549: $7f
	and d                                            ; $654a: $a2
	sbc [hl]                                         ; $654b: $9e
	jr c, jr_015_65c9                                ; $654c: $38 $7b

	cp b                                             ; $654e: $b8
	sbc [hl]                                         ; $654f: $9e
	inc c                                            ; $6550: $0c
	ld a, e                                          ; $6551: $7b
	add $9c                                          ; $6552: $c6 $9c
	ld b, $00                                        ; $6554: $06 $00
	ld [bc], a                                       ; $6556: $02
	ldh a, [$7f]                                     ; $6557: $f0 $7f
	db $e4                                           ; $6559: $e4
	ld a, a                                          ; $655a: $7f
	ld a, [hl]                                       ; $655b: $7e
	sbc [hl]                                         ; $655c: $9e
	cp $7b                                           ; $655d: $fe $7b
	cp $7f                                           ; $655f: $fe $7f
	ld a, [$f67f]                                    ; $6561: $fa $7f $f6
	db $ed                                           ; $6564: $ed
	ld [hl], a                                       ; $6565: $77
	ldh [$9e], a                                     ; $6566: $e0 $9e
	db $fc                                           ; $6568: $fc
	ld a, e                                          ; $6569: $7b
	ldh [$9e], a                                     ; $656a: $e0 $9e
	ld a, [hl]                                       ; $656c: $7e
	ld a, e                                          ; $656d: $7b
	ld [hl], b                                       ; $656e: $70
	ld a, [hl]                                       ; $656f: $7e
	xor $9e                                          ; $6570: $ee $9e
	ld bc, $00a9                                     ; $6572: $01 $a9 $00
	rst $38                                          ; $6575: $ff
	rst SubAFromDE                                          ; $6576: $df

jr_015_6577:
	rlca                                             ; $6577: $07
	adc e                                            ; $6578: $8b
	ld [hl+], a                                      ; $6579: $22
	inc hl                                           ; $657a: $23
	rra                                              ; $657b: $1f
	rra                                              ; $657c: $1f
	ld [$060f], sp                                   ; $657d: $08 $0f $06
	rlca                                             ; $6580: $07
	inc b                                            ; $6581: $04
	rlca                                             ; $6582: $07
	ld [$090f], sp                                   ; $6583: $08 $0f $09
	rrca                                             ; $6586: $0f
	dec b                                            ; $6587: $05
	rlca                                             ; $6588: $07
	inc bc                                           ; $6589: $03
	inc bc                                           ; $658a: $03
	ld bc, $7b00                                     ; $658b: $01 $00 $7b
	cp $dc                                           ; $658e: $fe $dc
	ld bc, $dfff                                     ; $6590: $01 $ff $df
	cp b                                             ; $6593: $b8
	sbc h                                            ; $6594: $9c
	ld h, [hl]                                       ; $6595: $66
	cp $31                                           ; $6596: $fe $31
	sbc $ff                                          ; $6598: $de $ff
	adc a                                            ; $659a: $8f
	ld d, c                                          ; $659b: $51
	rst $38                                          ; $659c: $ff
	and h                                            ; $659d: $a4
	rst $38                                          ; $659e: $ff
	or d                                             ; $659f: $b2
	rst $38                                          ; $65a0: $ff
	cp d                                             ; $65a1: $ba
	rst AddAOntoHL                                          ; $65a2: $ef
	rst $38                                          ; $65a3: $ff
	ld h, a                                          ; $65a4: $67
	rst $38                                          ; $65a5: $ff
	xor l                                            ; $65a6: $ad
	ld [hl], a                                       ; $65a7: $77
	sbc $ff                                          ; $65a8: $de $ff
	call z, $fe7b                                    ; $65aa: $cc $7b $fe
	ld a, a                                          ; $65ad: $7f
	jp hl                                            ; $65ae: $e9


	sbc [hl]                                         ; $65af: $9e
	add e                                            ; $65b0: $83
	db $fd                                           ; $65b1: $fd
	rst SubAFromDE                                          ; $65b2: $df
	add b                                            ; $65b3: $80
	rst SubAFromDE                                          ; $65b4: $df
	ret nz                                           ; $65b5: $c0

	rst SubAFromDE                                          ; $65b6: $df
	add b                                            ; $65b7: $80
	sbc e                                            ; $65b8: $9b
	ld b, b                                          ; $65b9: $40
	ret nz                                           ; $65ba: $c0

	and b                                            ; $65bb: $a0
	ldh [$6f], a                                     ; $65bc: $e0 $6f
	cp $9c                                           ; $65be: $fe $9c
	ld h, b                                          ; $65c0: $60
	ldh [$60], a                                     ; $65c1: $e0 $60
	ld a, e                                          ; $65c3: $7b
	ld sp, hl                                        ; $65c4: $f9
	ld [hl], a                                       ; $65c5: $77
	db $ec                                           ; $65c6: $ec
	rst SubAFromDE                                          ; $65c7: $df
	add b                                            ; $65c8: $80

jr_015_65c9:
	rst $38                                          ; $65c9: $ff
	rst SubAFromDE                                          ; $65ca: $df
	dec c                                            ; $65cb: $0d
	sbc e                                            ; $65cc: $9b
	rra                                              ; $65cd: $1f
	ld [de], a                                       ; $65ce: $12
	rra                                              ; $65cf: $1f
	inc de                                           ; $65d0: $13
	ld a, e                                          ; $65d1: $7b
	and a                                            ; $65d2: $a7
	sbc l                                            ; $65d3: $9d
	rrca                                             ; $65d4: $0f
	nop                                              ; $65d5: $00
	ld [hl], e                                       ; $65d6: $73
	xor h                                            ; $65d7: $ac
	sbc l                                            ; $65d8: $9d
	ld [bc], a                                       ; $65d9: $02
	inc bc                                           ; $65da: $03
	ld [hl], a                                       ; $65db: $77
	cp $df                                           ; $65dc: $fe $df
	inc bc                                           ; $65de: $03
	adc d                                            ; $65df: $8a
	inc c                                            ; $65e0: $0c
	rrca                                             ; $65e1: $0f
	rlca                                             ; $65e2: $07
	rlca                                             ; $65e3: $07
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	rst $38                                          ; $65e6: $ff
	cp $ff                                           ; $65e7: $fe $ff
	xor c                                            ; $65e9: $a9
	rst $38                                          ; $65ea: $ff
	ldh a, [rIE]                                     ; $65eb: $f0 $ff
	reti                                             ; $65ed: $d9


	rst $38                                          ; $65ee: $ff
	and [hl]                                         ; $65ef: $a6
	rst $38                                          ; $65f0: $ff
	add c                                            ; $65f1: $81
	rst $38                                          ; $65f2: $ff
	rst $38                                          ; $65f3: $ff
	jr z, jr_015_6671                                ; $65f4: $28 $7b

	cp $98                                           ; $65f6: $fe $98
	jr @+$01                                         ; $65f8: $18 $ff

	inc h                                            ; $65fa: $24
	rst SubAFromBC                                          ; $65fb: $e7
	inc h                                            ; $65fc: $24
	rst SubAFromBC                                          ; $65fd: $e7
	ld a, h                                          ; $65fe: $7c
	sbc $ff                                          ; $65ff: $de $ff
	sub a                                            ; $6601: $97
	db $fc                                           ; $6602: $fc
	rst $38                                          ; $6603: $ff
	rrca                                             ; $6604: $0f
	rrca                                             ; $6605: $0f
	ret nz                                           ; $6606: $c0

	ld b, b                                          ; $6607: $40
	ldh [rAUD4LEN], a                                ; $6608: $e0 $20
	sbc $e0                                          ; $660a: $de $e0
	ld [hl], a                                       ; $660c: $77
	xor e                                            ; $660d: $ab
	sbc [hl]                                         ; $660e: $9e
	jr nz, jr_015_6680                               ; $660f: $20 $6f

	xor [hl]                                         ; $6611: $ae
	ld [hl], a                                       ; $6612: $77
	sub [hl]                                         ; $6613: $96
	ld [hl], a                                       ; $6614: $77
	cp $df                                           ; $6615: $fe $df
	ret nz                                           ; $6617: $c0

	rst SubAFromDE                                          ; $6618: $df
	ldh a, [$df]                                     ; $6619: $f0 $df
	ret nz                                           ; $661b: $c0

	ld e, a                                          ; $661c: $5f
	inc bc                                           ; $661d: $03
	rst $38                                          ; $661e: $ff
	rst SubAFromDE                                          ; $661f: $df
	rlca                                             ; $6620: $07
	adc e                                            ; $6621: $8b
	ld [hl+], a                                      ; $6622: $22
	inc hl                                           ; $6623: $23
	rra                                              ; $6624: $1f
	rra                                              ; $6625: $1f
	ld [$060f], sp                                   ; $6626: $08 $0f $06
	rlca                                             ; $6629: $07
	inc b                                            ; $662a: $04
	rlca                                             ; $662b: $07
	ld [$090f], sp                                   ; $662c: $08 $0f $09
	rrca                                             ; $662f: $0f
	dec b                                            ; $6630: $05
	rlca                                             ; $6631: $07
	inc bc                                           ; $6632: $03
	inc bc                                           ; $6633: $03
	ld bc, $7b00                                     ; $6634: $01 $00 $7b
	cp $dc                                           ; $6637: $fe $dc
	ld bc, $dfff                                     ; $6639: $01 $ff $df
	cp b                                             ; $663c: $b8
	sbc h                                            ; $663d: $9c
	ld h, [hl]                                       ; $663e: $66
	cp $31                                           ; $663f: $fe $31
	sbc $ff                                          ; $6641: $de $ff
	adc a                                            ; $6643: $8f
	ld d, c                                          ; $6644: $51
	rst $38                                          ; $6645: $ff
	and h                                            ; $6646: $a4
	rst $38                                          ; $6647: $ff
	or d                                             ; $6648: $b2
	rst $38                                          ; $6649: $ff
	cp d                                             ; $664a: $ba
	rst AddAOntoHL                                          ; $664b: $ef
	rst $38                                          ; $664c: $ff
	ld h, a                                          ; $664d: $67
	rst $38                                          ; $664e: $ff
	xor l                                            ; $664f: $ad
	ld [hl], a                                       ; $6650: $77
	sbc $ff                                          ; $6651: $de $ff
	call z, $fe7b                                    ; $6653: $cc $7b $fe
	ld a, a                                          ; $6656: $7f
	jp hl                                            ; $6657: $e9


	sbc [hl]                                         ; $6658: $9e
	add e                                            ; $6659: $83
	db $fd                                           ; $665a: $fd
	rst SubAFromDE                                          ; $665b: $df
	add b                                            ; $665c: $80
	rst SubAFromDE                                          ; $665d: $df
	ret nz                                           ; $665e: $c0

	rst SubAFromDE                                          ; $665f: $df
	add b                                            ; $6660: $80
	sbc e                                            ; $6661: $9b
	ld b, b                                          ; $6662: $40
	ret nz                                           ; $6663: $c0

	and b                                            ; $6664: $a0
	ldh [$6f], a                                     ; $6665: $e0 $6f
	cp $9c                                           ; $6667: $fe $9c
	ld h, b                                          ; $6669: $60
	ldh [$60], a                                     ; $666a: $e0 $60
	ld a, e                                          ; $666c: $7b
	ld sp, hl                                        ; $666d: $f9
	ld [hl], a                                       ; $666e: $77
	db $ec                                           ; $666f: $ec
	rst SubAFromDE                                          ; $6670: $df

jr_015_6671:
	add b                                            ; $6671: $80
	ei                                               ; $6672: $fb
	db $db                                           ; $6673: $db
	ld bc, $039b                                     ; $6674: $01 $9b $03
	ld [bc], a                                       ; $6677: $02
	rlca                                             ; $6678: $07
	ld b, $77                                        ; $6679: $06 $77
	xor [hl]                                         ; $667b: $ae
	push af                                          ; $667c: $f5
	rst SubAFromDE                                          ; $667d: $df
	dec e                                            ; $667e: $1d
	adc l                                            ; $667f: $8d

jr_015_6680:
	ld a, e                                          ; $6680: $7b
	ld h, a                                          ; $6681: $67
	cp $81                                           ; $6682: $fe $81
	cp $1d                                           ; $6684: $fe $1d
	db $fd                                           ; $6686: $fd
	ccf                                              ; $6687: $3f
	rst $38                                          ; $6688: $ff
	dec sp                                           ; $6689: $3b
	db $fc                                           ; $668a: $fc
	ld h, h                                          ; $668b: $64
	xor c                                            ; $668c: $a9
	reti                                             ; $668d: $d9


	pop af                                           ; $668e: $f1
	pop af                                           ; $668f: $f1
	ld [bc], a                                       ; $6690: $02
	inc bc                                           ; $6691: $03
	ld [hl], a                                       ; $6692: $77
	cp $df                                           ; $6693: $fe $df
	inc bc                                           ; $6695: $03
	sbc c                                            ; $6696: $99
	inc c                                            ; $6697: $0c
	rrca                                             ; $6698: $0f
	rlca                                             ; $6699: $07
	rlca                                             ; $669a: $07
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	sbc $ff                                          ; $669d: $de $ff
	sub e                                            ; $669f: $93
	ld a, [hl+]                                      ; $66a0: $2a
	rst $38                                          ; $66a1: $ff
	db $fd                                           ; $66a2: $fd
	rst $38                                          ; $66a3: $ff
	pop bc                                           ; $66a4: $c1
	rst $38                                          ; $66a5: $ff
	and c                                            ; $66a6: $a1
	rst $38                                          ; $66a7: $ff
	add c                                            ; $66a8: $81
	rst $38                                          ; $66a9: $ff
	rst $38                                          ; $66aa: $ff
	jr z, jr_015_6728                                ; $66ab: $28 $7b

	cp $98                                           ; $66ad: $fe $98
	jr @+$01                                         ; $66af: $18 $ff

	inc h                                            ; $66b1: $24
	rst SubAFromBC                                          ; $66b2: $e7
	inc h                                            ; $66b3: $24
	rst SubAFromBC                                          ; $66b4: $e7
	ld a, h                                          ; $66b5: $7c
	sbc $ff                                          ; $66b6: $de $ff
	sub l                                            ; $66b8: $95
	db $fc                                           ; $66b9: $fc
	rst $38                                          ; $66ba: $ff
	rrca                                             ; $66bb: $0f
	rrca                                             ; $66bc: $0f
	ret nz                                           ; $66bd: $c0

	ld b, b                                          ; $66be: $40
	ldh [rAUD4LEN], a                                ; $66bf: $e0 $20
	ldh [rAUD4LEN], a                                ; $66c1: $e0 $20
	sbc $f0                                          ; $66c3: $de $f0
	sub [hl]                                         ; $66c5: $96
	sub b                                            ; $66c6: $90
	ld a, b                                          ; $66c7: $78
	ld c, b                                          ; $66c8: $48
	ld a, b                                          ; $66c9: $78
	ld c, b                                          ; $66ca: $48
	cp b                                             ; $66cb: $b8
	xor b                                            ; $66cc: $a8
	sub b                                            ; $66cd: $90
	sub b                                            ; $66ce: $90
	ld [hl], a                                       ; $66cf: $77
	halt                                             ; $66d0: $76
	ld [hl], a                                       ; $66d1: $77
	cp $df                                           ; $66d2: $fe $df
	ret nz                                           ; $66d4: $c0

	rst SubAFromDE                                          ; $66d5: $df
	ldh a, [$df]                                     ; $66d6: $f0 $df
	ret nz                                           ; $66d8: $c0

	rst $38                                          ; $66d9: $ff
	rst SubAFromDE                                          ; $66da: $df
	inc bc                                           ; $66db: $03
	sub [hl]                                         ; $66dc: $96
	inc l                                            ; $66dd: $2c
	cpl                                              ; $66de: $2f
	ld [hl], c                                       ; $66df: $71
	ld a, a                                          ; $66e0: $7f
	add hl, sp                                       ; $66e1: $39
	ccf                                              ; $66e2: $3f
	ld d, [hl]                                       ; $66e3: $56
	ld a, a                                          ; $66e4: $7f
	xor a                                            ; $66e5: $af
	ld a, e                                          ; $66e6: $7b
	ld a, $7f                                        ; $66e7: $3e $7f
	cp $80                                           ; $66e9: $fe $80
	and d                                            ; $66eb: $a2
	rst $38                                          ; $66ec: $ff
	sub c                                            ; $66ed: $91
	rst $38                                          ; $66ee: $ff
	adc c                                            ; $66ef: $89
	rst $38                                          ; $66f0: $ff
	ld b, l                                          ; $66f1: $45
	ld a, a                                          ; $66f2: $7f
	ld b, c                                          ; $66f3: $41
	ld a, a                                          ; $66f4: $7f
	inc sp                                           ; $66f5: $33
	ccf                                              ; $66f6: $3f
	rrca                                             ; $66f7: $0f
	rrca                                             ; $66f8: $0f
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	cp h                                             ; $66fb: $bc
	cp h                                             ; $66fc: $bc
	ret                                              ; $66fd: $c9


	ld sp, hl                                        ; $66fe: $f9
	sbc [hl]                                         ; $66ff: $9e
	cp $62                                           ; $6700: $fe $62
	cp $8c                                           ; $6702: $fe $8c
	db $fc                                           ; $6704: $fc
	ld b, h                                          ; $6705: $44
	db $fc                                           ; $6706: $fc
	ld d, d                                          ; $6707: $52
	cp $2a                                           ; $6708: $fe $2a
	sub h                                            ; $670a: $94
	cp $12                                           ; $670b: $fe $12
	cp $15                                           ; $670d: $fe $15
	db $fd                                           ; $670f: $fd
	cp e                                             ; $6710: $bb
	ld [$46ff], a                                    ; $6711: $ea $ff $46
	cp a                                             ; $6714: $bf
	ld c, c                                          ; $6715: $49
	ld a, e                                          ; $6716: $7b
	reti                                             ; $6717: $d9


	sbc [hl]                                         ; $6718: $9e
	pop af                                           ; $6719: $f1
	di                                               ; $671a: $f3
	rst SubAFromDE                                          ; $671b: $df
	rra                                              ; $671c: $1f
	adc a                                            ; $671d: $8f
	ld a, a                                          ; $671e: $7f
	ld h, l                                          ; $671f: $65
	rst $38                                          ; $6720: $ff
	cp l                                             ; $6721: $bd
	rst $38                                          ; $6722: $ff
	ld a, c                                          ; $6723: $79
	db $fd                                           ; $6724: $fd
	di                                               ; $6725: $f3
	cp $02                                           ; $6726: $fe $02

jr_015_6728:
	ldh a, [c]                                       ; $6728: $f2
	ld c, $0c                                        ; $6729: $0e $0c
	db $fc                                           ; $672b: $fc
	ldh a, [$f0]                                     ; $672c: $f0 $f0
	ld a, d                                          ; $672e: $7a
	bit 7, e                                         ; $672f: $cb $7b
	cp $73                                           ; $6731: $fe $73
	ld c, l                                          ; $6733: $4d
	ld a, e                                          ; $6734: $7b
	ld c, e                                          ; $6735: $4b
	ld l, a                                          ; $6736: $6f
	ld sp, hl                                        ; $6737: $f9
	ld l, e                                          ; $6738: $6b
	ld [de], a                                       ; $6739: $12
	sub b                                            ; $673a: $90
	inc bc                                           ; $673b: $03
	rrca                                             ; $673c: $0f
	rrca                                             ; $673d: $0f
	inc bc                                           ; $673e: $03
	inc bc                                           ; $673f: $03
	rst $38                                          ; $6740: $ff
	add hl, bc                                       ; $6741: $09
	rst $38                                          ; $6742: $ff
	dec h                                            ; $6743: $25
	cp $26                                           ; $6744: $fe $26
	db $fc                                           ; $6746: $fc
	inc d                                            ; $6747: $14
	ld hl, sp+$08                                    ; $6748: $f8 $08
	ld a, e                                          ; $674a: $7b
	cp $9d                                           ; $674b: $fe $9d
	ld hl, sp+$18                                    ; $674d: $f8 $18
	ld a, e                                          ; $674f: $7b
	ei                                               ; $6750: $fb
	sbc l                                            ; $6751: $9d
	db $10                                           ; $6752: $10
	ldh a, [$6f]                                     ; $6753: $f0 $6f
	cp $df                                           ; $6755: $fe $df
	rst $38                                          ; $6757: $ff
	ld a, a                                          ; $6758: $7f
	dec c                                            ; $6759: $0d
	rst SubAFromDE                                          ; $675a: $df
	ldh a, [$e7]                                     ; $675b: $f0 $e7
	rst SubAFromDE                                          ; $675d: $df
	ldh a, [$df]                                     ; $675e: $f0 $df

jr_015_6760:
	ldh [$f9], a                                     ; $6760: $e0 $f9
	rst SubAFromDE                                          ; $6762: $df
	inc c                                            ; $6763: $0c
	sub b                                            ; $6764: $90
	inc de                                           ; $6765: $13
	rra                                              ; $6766: $1f
	ld l, $3f                                        ; $6767: $2e $3f
	inc l                                            ; $6769: $2c
	ccf                                              ; $676a: $3f
	cpl                                              ; $676b: $2f
	ccf                                              ; $676c: $3f
	rla                                              ; $676d: $17
	ld e, $0f                                        ; $676e: $1e $0f
	add hl, bc                                       ; $6770: $09
	rlca                                             ; $6771: $07
	rlca                                             ; $6772: $07
	dec b                                            ; $6773: $05
	ld a, e                                          ; $6774: $7b
	cp $df                                           ; $6775: $fe $df
	dec sp                                           ; $6777: $3b
	sbc e                                            ; $6778: $9b
	ld b, l                                          ; $6779: $45
	ld a, l                                          ; $677a: $7d
	ld b, h                                          ; $677b: $44
	ld a, h                                          ; $677c: $7c
	db $fd                                           ; $677d: $fd
	rst SubAFromDE                                          ; $677e: $df
	jr nz, jr_015_6760                               ; $677f: $20 $df

	ld [hl], b                                       ; $6781: $70
	sub d                                            ; $6782: $92
	db $fc                                           ; $6783: $fc
	adc h                                            ; $6784: $8c
	inc bc                                           ; $6785: $03
	rst $38                                          ; $6786: $ff
	ld bc, $beff                                     ; $6787: $01 $ff $be
	rst $38                                          ; $678a: $ff
	rst $38                                          ; $678b: $ff
	db $d3                                           ; $678c: $d3
	db $fd                                           ; $678d: $fd
	rst SubAFromBC                                          ; $678e: $e7
	reti                                             ; $678f: $d9


	ld a, d                                          ; $6790: $7a
	pop de                                           ; $6791: $d1
	ld a, [hl]                                       ; $6792: $7e
	call $ff99                                       ; $6793: $cd $99 $ff
	ld d, a                                          ; $6796: $57
	db $fc                                           ; $6797: $fc
	ld e, a                                          ; $6798: $5f
	ldh a, [rIE]                                     ; $6799: $f0 $ff
	ld sp, hl                                        ; $679b: $f9
	rst SubAFromDE                                          ; $679c: $df
	ld [hl], b                                       ; $679d: $70
	sub l                                            ; $679e: $95
	adc b                                            ; $679f: $88
	ld hl, sp+$68                                    ; $67a0: $f8 $68
	ld hl, sp-$18                                    ; $67a2: $f8 $e8
	ld hl, sp-$30                                    ; $67a4: $f8 $d0
	ldh a, [rAUD4LEN]                                ; $67a6: $f0 $20
	ldh [rPCM12], a                                  ; $67a8: $e0 $76
	ld [$dfff], a                                    ; $67aa: $ea $ff $df
	ldh [$7f], a                                     ; $67ad: $e0 $7f
	ld a, h                                          ; $67af: $7c
	ld a, a                                          ; $67b0: $7f
	ld [hl], d                                       ; $67b1: $72
	ld a, a                                          ; $67b2: $7f
	xor [hl]                                         ; $67b3: $ae
	sbc e                                            ; $67b4: $9b
	ld sp, $183f                                     ; $67b5: $31 $3f $18
	rra                                              ; $67b8: $1f
	halt                                             ; $67b9: $76
	ld hl, sp-$07                                    ; $67ba: $f8 $f9
	rst SubAFromDE                                          ; $67bc: $df
	ld bc, $3e77                                     ; $67bd: $01 $77 $3e
	halt                                             ; $67c0: $76
	ret z                                            ; $67c1: $c8

	halt                                             ; $67c2: $76

Jump_015_67c3:
	add b                                            ; $67c3: $80
	sbc c                                            ; $67c4: $99
	cp h                                             ; $67c5: $bc
	jp $817e                                         ; $67c6: $c3 $7e $81


	cp $01                                           ; $67c9: $fe $01
	ld a, d                                          ; $67cb: $7a
	ld e, [hl]                                       ; $67cc: $5e
	adc a                                            ; $67cd: $8f
	pop bc                                           ; $67ce: $c1
	ld e, b                                          ; $67cf: $58
	ld h, a                                          ; $67d0: $67
	jr nc, jr_015_6812                               ; $67d1: $30 $3f

	jr nz, jr_015_6814                               ; $67d3: $20 $3f

	ld hl, $c33f                                     ; $67d5: $21 $3f $c3
	rst $38                                          ; $67d8: $ff
	dec b                                            ; $67d9: $05
	db $fd                                           ; $67da: $fd
	ld [$90f8], sp                                   ; $67db: $08 $f8 $90
	ld a, e                                          ; $67de: $7b
	ld b, b                                          ; $67df: $40
	rst SubAFromDE                                          ; $67e0: $df
	db $fc                                           ; $67e1: $fc
	rst $38                                          ; $67e2: $ff
	sub h                                            ; $67e3: $94
	inc b                                            ; $67e4: $04
	db $fc                                           ; $67e5: $fc
	ld h, d                                          ; $67e6: $62
	cp $59                                           ; $67e7: $fe $59
	rst SubAFromDE                                          ; $67e9: $df
	add hl, hl                                       ; $67ea: $29
	rst AddAOntoHL                                          ; $67eb: $ef
	ld h, $e6                                        ; $67ec: $26 $e6
	jr nz, jr_015_686a                               ; $67ee: $20 $7a

	ld [$097e], sp                                   ; $67f0: $08 $7e $09
	sub h                                            ; $67f3: $94
	inc e                                            ; $67f4: $1c
	db $fc                                           ; $67f5: $fc
	inc b                                            ; $67f6: $04
	db $fc                                           ; $67f7: $fc
	add h                                            ; $67f8: $84
	db $fc                                           ; $67f9: $fc
	ld [hl], h                                       ; $67fa: $74
	ld a, h                                          ; $67fb: $7c
	inc e                                            ; $67fc: $1c
	inc e                                            ; $67fd: $1c
	rst $38                                          ; $67fe: $ff
	ld h, e                                          ; $67ff: $63
	add h                                            ; $6800: $84
	rst $38                                          ; $6801: $ff
	rst SubAFromDE                                          ; $6802: $df
	jr @-$6e                                         ; $6803: $18 $90

	daa                                              ; $6805: $27
	ccf                                              ; $6806: $3f
	ld e, h                                          ; $6807: $5c
	ld a, a                                          ; $6808: $7f
	ld e, b                                          ; $6809: $58
	ld a, a                                          ; $680a: $7f
	ld e, a                                          ; $680b: $5f
	ld a, a                                          ; $680c: $7f
	cpl                                              ; $680d: $2f
	dec a                                            ; $680e: $3d
	rra                                              ; $680f: $1f
	inc de                                           ; $6810: $13
	rrca                                             ; $6811: $0f

jr_015_6812:
	rrca                                             ; $6812: $0f
	dec bc                                           ; $6813: $0b

jr_015_6814:
	ld a, e                                          ; $6814: $7b
	cp $7d                                           ; $6815: $fe $7d
	db $f4                                           ; $6817: $f4
	halt                                             ; $6818: $76
	adc $fd                                          ; $6819: $ce $fd
	rst SubAFromDE                                          ; $681b: $df
	ld b, b                                          ; $681c: $40
	rst SubAFromDE                                          ; $681d: $df
	ldh [$7e], a                                     ; $681e: $e0 $7e
	push hl                                          ; $6820: $e5
	adc d                                            ; $6821: $8a
	rlca                                             ; $6822: $07
	rst $38                                          ; $6823: $ff
	ld [bc], a                                       ; $6824: $02
	rst $38                                          ; $6825: $ff
	ld a, l                                          ; $6826: $7d
	rst $38                                          ; $6827: $ff
	rst $38                                          ; $6828: $ff
	and a                                            ; $6829: $a7
	ld a, [$b3cf]                                    ; $682a: $fa $cf $b3
	rst $38                                          ; $682d: $ff
	add d                                            ; $682e: $82
	cp $fa                                           ; $682f: $fe $fa
	cp $fe                                           ; $6831: $fe $fe
	xor [hl]                                         ; $6833: $ae
	ld sp, hl                                        ; $6834: $f9
	cp a                                             ; $6835: $bf
	ldh [$63], a                                     ; $6836: $e0 $63
	cp h                                             ; $6838: $bc
	ld [hl], a                                       ; $6839: $77
	ld d, d                                          ; $683a: $52
	ld a, a                                          ; $683b: $7f
	ld b, h                                          ; $683c: $44
	ld a, a                                          ; $683d: $7f
	cp $7f                                           ; $683e: $fe $7f
	sbc [hl]                                         ; $6840: $9e
	ld a, [hl]                                       ; $6841: $7e
	ld h, $65                                        ; $6842: $26 $65
	xor d                                            ; $6844: $aa
	ld [hl], l                                       ; $6845: $75
	add [hl]                                         ; $6846: $86
	ld a, l                                          ; $6847: $7d
	jp c, $0995                                      ; $6848: $da $95 $09

	ld c, $1b                                        ; $684b: $0e $1b
	ld e, $23                                        ; $684d: $1e $23
	ld a, $23                                        ; $684f: $3e $23
	ld a, $1d                                        ; $6851: $3e $1d
	ld e, $76                                        ; $6853: $1e $76
	ld [hl], l                                       ; $6855: $75
	ld l, a                                          ; $6856: $6f
	ld b, h                                          ; $6857: $44
	rst $38                                          ; $6858: $ff
	rst SubAFromDE                                          ; $6859: $df
	ld a, a                                          ; $685a: $7f
	rst SubAFromDE                                          ; $685b: $df
	ccf                                              ; $685c: $3f
	ld [hl], a                                       ; $685d: $77
	or $86                                           ; $685e: $f6 $86
	ldh [$1f], a                                     ; $6860: $e0 $1f
	ld hl, sp+$07                                    ; $6862: $f8 $07
	rst $38                                          ; $6864: $ff
	rrca                                             ; $6865: $0f
	ld hl, sp+$1f                                    ; $6866: $f8 $1f
	ldh a, [$1f]                                     ; $6868: $f0 $1f

jr_015_686a:
	db $fd                                           ; $686a: $fd
	rrca                                             ; $686b: $0f
	or $0e                                           ; $686c: $f6 $0e
	ld [hl+], a                                      ; $686e: $22
	cp $21                                           ; $686f: $fe $21
	rst $38                                          ; $6871: $ff
	db $10                                           ; $6872: $10
	rst $38                                          ; $6873: $ff
	adc b                                            ; $6874: $88
	rst $38                                          ; $6875: $ff
	ld c, c                                          ; $6876: $49
	ld a, a                                          ; $6877: $7f

Call_015_6878:
	set 3, h                                         ; $6878: $cb $dc
	rst $38                                          ; $687a: $ff
	ld a, e                                          ; $687b: $7b
	add h                                            ; $687c: $84
	ld [hl], c                                       ; $687d: $71
	call nc, $ac4f                                   ; $687e: $d4 $4f $ac
	ld [hl], a                                       ; $6881: $77
	db $f4                                           ; $6882: $f4
	rst SubAFromDE                                          ; $6883: $df
	db $fc                                           ; $6884: $fc
	rst SubAFromDE                                          ; $6885: $df
	cp $5f                                           ; $6886: $fe $5f
	db $ec                                           ; $6888: $ec
	or $7f                                           ; $6889: $f6 $7f
	and b                                            ; $688b: $a0
	ld a, a                                          ; $688c: $7f
	sbc l                                            ; $688d: $9d
	ld [hl], h                                       ; $688e: $74
	rst SubAFromHL                                          ; $688f: $d7
	ld a, [hl]                                       ; $6890: $7e
	di                                               ; $6891: $f3
	sbc h                                            ; $6892: $9c
	ret nz                                           ; $6893: $c0

	ld bc, $787e                                     ; $6894: $01 $7e $78
	reti                                             ; $6897: $d9


	ld sp, hl                                        ; $6898: $f9
	rst SubAFromDE                                          ; $6899: $df
	inc e                                            ; $689a: $1c
	adc [hl]                                         ; $689b: $8e
	ld [hl+], a                                      ; $689c: $22
	ld a, $41                                        ; $689d: $3e $41
	ld a, a                                          ; $689f: $7f
	add b                                            ; $68a0: $80
	ccf                                              ; $68a1: $3f
	ret nz                                           ; $68a2: $c0

	call c, $fb23                                    ; $68a3: $dc $23 $fb
	inc b                                            ; $68a6: $04
	rst FarCall                                          ; $68a7: $f7
	ld [$08f7], sp                                   ; $68a8: $08 $f7 $08
	rst $38                                          ; $68ab: $ff
	nop                                              ; $68ac: $00
	ld a, e                                          ; $68ad: $7b
	and c                                            ; $68ae: $a1
	ld l, a                                          ; $68af: $6f
	ld b, b                                          ; $68b0: $40
	rst SubAFromDE                                          ; $68b1: $df
	rrca                                             ; $68b2: $0f

jr_015_68b3:
	ld a, a                                          ; $68b3: $7f
	jp nc, Jump_015_4090                             ; $68b4: $d2 $90 $40

	ccf                                              ; $68b7: $3f
	ld b, b                                          ; $68b8: $40
	ld a, [hl]                                       ; $68b9: $7e
	add c                                            ; $68ba: $81
	db $fd                                           ; $68bb: $fd
	ld [bc], a                                       ; $68bc: $02
	ei                                               ; $68bd: $fb
	inc b                                            ; $68be: $04
	scf                                              ; $68bf: $37
	ret z                                            ; $68c0: $c8

	rst GetHLinHL                                          ; $68c1: $cf
	jr nc, jr_015_68b3                               ; $68c2: $30 $ef

	db $10                                           ; $68c4: $10
	ld [hl], a                                       ; $68c5: $77
	ldh [c], a                                       ; $68c6: $e2
	ld h, e                                          ; $68c7: $63
	ldh [rPCM34], a                                  ; $68c8: $e0 $77
	adc e                                            ; $68ca: $8b
	sub d                                            ; $68cb: $92
	ld [hl], b                                       ; $68cc: $70
	ldh a, [$08]                                     ; $68cd: $f0 $08
	jr c, @-$3a                                      ; $68cf: $38 $c4

	call z, $f432                                    ; $68d1: $cc $32 $f4
	ld a, [bc]                                       ; $68d4: $0a
	ld hl, sp+$06                                    ; $68d5: $f8 $06
	ld a, [$7a05]                                    ; $68d7: $fa $05 $7a
	adc [hl]                                         ; $68da: $8e
	sbc c                                            ; $68db: $99
	ld bc, $02fc                                     ; $68dc: $01 $fc $02
	ldh a, [$0c]                                     ; $68df: $f0 $0c
	nop                                              ; $68e1: $00
	dec a                                            ; $68e2: $3d
	ldh [$74], a                                     ; $68e3: $e0 $74
	ld h, a                                          ; $68e5: $67
	sub l                                            ; $68e6: $95
	ld c, $0f                                        ; $68e7: $0e $0f
	db $10                                           ; $68e9: $10
	inc bc                                           ; $68ea: $03
	inc a                                            ; $68eb: $3c
	ld a, a                                          ; $68ec: $7f
	add b                                            ; $68ed: $80
	rlca                                             ; $68ee: $07
	ld a, b                                          ; $68ef: $78
	nop                                              ; $68f0: $00
	ld a, d                                          ; $68f1: $7a
	ld e, [hl]                                       ; $68f2: $5e
	ld h, d                                          ; $68f3: $62
	ld c, c                                          ; $68f4: $49
	sbc d                                            ; $68f5: $9a
	ld e, $1f                                        ; $68f6: $1e $1f
	jr nz, jr_015_6936                               ; $68f8: $20 $3c

	jp $8477                                         ; $68fa: $c3 $77 $84


	ld a, a                                          ; $68fd: $7f
	and d                                            ; $68fe: $a2
	ld c, e                                          ; $68ff: $4b
	and b                                            ; $6900: $a0

jr_015_6901:
	rst SubAFromDE                                          ; $6901: $df
	ld a, c                                          ; $6902: $79
	sbc h                                            ; $6903: $9c
	add [hl]                                         ; $6904: $86
	cp $01                                           ; $6905: $fe $01
	ld [hl], a                                       ; $6907: $77
	add h                                            ; $6908: $84
	ld a, a                                          ; $6909: $7f
	ld h, d                                          ; $690a: $62
	sub l                                            ; $690b: $95
	sbc $21                                          ; $690c: $de $21
	db $ed                                           ; $690e: $ed
	ld [de], a                                       ; $690f: $12
	di                                               ; $6910: $f3
	inc c                                            ; $6911: $0c
	rst AddAOntoHL                                          ; $6912: $ef
	db $10                                           ; $6913: $10
	rst SubAFromDE                                          ; $6914: $df
	jr nz, jr_015_697a                               ; $6915: $20 $63

	ldh [$71], a                                     ; $6917: $e0 $71
	rst FarCall                                          ; $6919: $f7
	sub c                                            ; $691a: $91
	jr jr_015_6901                                   ; $691b: $18 $e4

	db $ec                                           ; $691d: $ec
	ld [de], a                                       ; $691e: $12
	db $fc                                           ; $691f: $fc
	ld [bc], a                                       ; $6920: $02
	cp $01                                           ; $6921: $fe $01
	ld e, $e1                                        ; $6923: $1e $e1
	xor $11                                          ; $6925: $ee $11
	db $f4                                           ; $6927: $f4
	ld a, [bc]                                       ; $6928: $0a
	ld l, a                                          ; $6929: $6f
	add b                                            ; $692a: $80
	ld a, a                                          ; $692b: $7f
	halt                                             ; $692c: $76
	sbc l                                            ; $692d: $9d
	nop                                              ; $692e: $00
	ld hl, sp+$1d                                    ; $692f: $f8 $1d
	ret nz                                           ; $6931: $c0

	ld l, [hl]                                       ; $6932: $6e
	sub $6c                                          ; $6933: $d6 $6c
	ld d, h                                          ; $6935: $54

jr_015_6936:
	db $dd                                           ; $6936: $dd
	ld bc, $e976                                     ; $6937: $01 $76 $e9
	ld a, a                                          ; $693a: $7f
	cp $93                                           ; $693b: $fe $93
	jr c, jr_015_697e                                ; $693d: $38 $3f

	ld b, b                                          ; $693f: $40
	ld a, a                                          ; $6940: $7f
	ld hl, $123f                                     ; $6941: $21 $3f $12
	ld e, $3f                                        ; $6944: $1e $3f
	ccf                                              ; $6946: $3f
	rra                                              ; $6947: $1f
	rra                                              ; $6948: $1f
	db $fd                                           ; $6949: $fd
	ld a, h                                          ; $694a: $7c
	ld e, b                                          ; $694b: $58
	sbc [hl]                                         ; $694c: $9e
	sub b                                            ; $694d: $90
	ld a, c                                          ; $694e: $79
	ld l, b                                          ; $694f: $68
	sub c                                            ; $6950: $91
	sbc [hl]                                         ; $6951: $9e
	rst $38                                          ; $6952: $ff
	ld a, h                                          ; $6953: $7c
	db $e3                                           ; $6954: $e3
	ld a, h                                          ; $6955: $7c
	add e                                            ; $6956: $83
	ld a, b                                          ; $6957: $78
	add a                                            ; $6958: $87
	nop                                              ; $6959: $00
	rst $38                                          ; $695a: $ff
	ld a, $ff                                        ; $695b: $3e $ff
	pop bc                                           ; $695d: $c1
	pop bc                                           ; $695e: $c1
	db $fd                                           ; $695f: $fd
	rst SubAFromDE                                          ; $6960: $df
	ret nz                                           ; $6961: $c0

	ld h, [hl]                                       ; $6962: $66
	add b                                            ; $6963: $80
	db $dd                                           ; $6964: $dd
	ret nz                                           ; $6965: $c0

	halt                                             ; $6966: $76
	ld a, [hl]                                       ; $6967: $7e
	ld a, a                                          ; $6968: $7f
	xor b                                            ; $6969: $a8
	ld [hl], h                                       ; $696a: $74
	ld [$a67d], a                                    ; $696b: $ea $7d $a6
	sub l                                            ; $696e: $95
	inc d                                            ; $696f: $14
	db $fc                                           ; $6970: $fc
	db $f4                                           ; $6971: $f4
	db $fc                                           ; $6972: $fc
	inc d                                            ; $6973: $14
	inc e                                            ; $6974: $1c
	ld e, $1e                                        ; $6975: $1e $1e
	rst $38                                          ; $6977: $ff
	rst $38                                          ; $6978: $ff
	ld [hl], a                                       ; $6979: $77

jr_015_697a:
	sbc b                                            ; $697a: $98
	sub [hl]                                         ; $697b: $96
	adc c                                            ; $697c: $89
	pop hl                                           ; $697d: $e1

jr_015_697e:
	add a                                            ; $697e: $87
	rst $38                                          ; $697f: $ff
	ld l, [hl]                                       ; $6980: $6e
	dec sp                                           ; $6981: $3b
	ld [hl-], a                                      ; $6982: $32
	ld a, $3d                                        ; $6983: $3e $3d
	rrca                                             ; $6985: $0f
	ld b, $ff                                        ; $6986: $06 $ff
	sbc b                                            ; $6988: $98
	rst AddAOntoHL                                          ; $6989: $ef
	rst AddAOntoHL                                          ; $698a: $ef
	pop af                                           ; $698b: $f1
	ei                                               ; $698c: $fb
	ld hl, sp-$03                                    ; $698d: $f8 $fd
	rst $38                                          ; $698f: $ff
	ld a, [hl]                                       ; $6990: $7e
	inc e                                            ; $6991: $1c
	inc e                                            ; $6992: $1c
	ld c, $06                                        ; $6993: $0e $06
	rlca                                             ; $6995: $07
	inc bc                                           ; $6996: $03
	ld h, e                                          ; $6997: $63
	ldh [$df], a                                     ; $6998: $e0 $df
	ld e, a                                          ; $699a: $5f
	rst SubAFromDE                                          ; $699b: $df
	ld a, a                                          ; $699c: $7f
	sub c                                            ; $699d: $91
	ccf                                              ; $699e: $3f
	rst FarCall                                          ; $699f: $f7
	ld [hl], a                                       ; $69a0: $77
	rst $38                                          ; $69a1: $ff
	ccf                                              ; $69a2: $3f
	rst SubAFromDE                                          ; $69a3: $df
	rst SubAFromDE                                          ; $69a4: $df
	rst $38                                          ; $69a5: $ff
	rst $38                                          ; $69a6: $ff
	ld a, $f8                                        ; $69a7: $3e $f8
	rst $38                                          ; $69a9: $ff
	ld a, a                                          ; $69aa: $7f
	rra                                              ; $69ab: $1f
	sbc $3f                                          ; $69ac: $de $3f
	sbc l                                            ; $69ae: $9d
	rst $38                                          ; $69af: $ff
	ldh [$63], a                                     ; $69b0: $e0 $63
	ldh [hDisp0_WY], a                                     ; $69b2: $e0 $88
	push af                                          ; $69b4: $f5
	sbc a                                            ; $69b5: $9f
	cp a                                             ; $69b6: $bf
	rst FarCall                                          ; $69b7: $f7
	jp hl                                            ; $69b8: $e9


	push hl                                          ; $69b9: $e5
	pop hl                                           ; $69ba: $e1
	rst $38                                          ; $69bb: $ff
	add c                                            ; $69bc: $81
	ei                                               ; $69bd: $fb
	cp $fe                                           ; $69be: $fe $fe
	rst SubAFromDE                                          ; $69c0: $df
	ld a, a                                          ; $69c1: $7f
	ccf                                              ; $69c2: $3f
	rst $38                                          ; $69c3: $ff
	push af                                          ; $69c4: $f5
	push bc                                          ; $69c5: $c5
	pop bc                                           ; $69c6: $c1
	pop bc                                           ; $69c7: $c1
	ldh [$e0], a                                     ; $69c8: $e0 $e0
	ld [hl], b                                       ; $69ca: $70
	ld h, e                                          ; $69cb: $63
	ldh [$8d], a                                     ; $69cc: $e0 $8d
	rst $38                                          ; $69ce: $ff
	ld d, e                                          ; $69cf: $53
	rst SubAFromBC                                          ; $69d0: $e7
	ld sp, hl                                        ; $69d1: $f9
	ld a, a                                          ; $69d2: $7f
	db $e3                                           ; $69d3: $e3
	or a                                             ; $69d4: $b7
	rst $38                                          ; $69d5: $ff
	add c                                            ; $69d6: $81
	cp h                                             ; $69d7: $bc
	ld a, d                                          ; $69d8: $7a
	ld l, [hl]                                       ; $69d9: $6e
	ld [$793c], a                                    ; $69da: $ea $3c $79
	rst $38                                          ; $69dd: $ff
	cp $c0                                           ; $69de: $fe $c0
	sbc $80                                          ; $69e0: $de $80
	rst SubAFromDE                                          ; $69e2: $df
	ret nz                                           ; $69e3: $c0

	ld sp, hl                                        ; $69e4: $f9
	sbc c                                            ; $69e5: $99
	cp a                                             ; $69e6: $bf
	rst SubAFromDE                                          ; $69e7: $df
	rst AddAOntoHL                                          ; $69e8: $ef
	rst SubAFromBC                                          ; $69e9: $e7
	ld e, a                                          ; $69ea: $5f
	sbc a                                            ; $69eb: $9f
	sbc $df                                          ; $69ec: $de $df
	ld a, a                                          ; $69ee: $7f
	and b                                            ; $69ef: $a0
	sub d                                            ; $69f0: $92
	ld e, a                                          ; $69f1: $5f
	and a                                            ; $69f2: $a7
	ld a, a                                          ; $69f3: $7f
	ld a, a                                          ; $69f4: $7f
	daa                                              ; $69f5: $27
	rst $38                                          ; $69f6: $ff
	ld a, a                                          ; $69f7: $7f
	ccf                                              ; $69f8: $3f
	ccf                                              ; $69f9: $3f
	rra                                              ; $69fa: $1f
	rlca                                             ; $69fb: $07
	rlca                                             ; $69fc: $07
	rrca                                             ; $69fd: $0f
	ld e, a                                          ; $69fe: $5f

Jump_015_69ff:
	ret nz                                           ; $69ff: $c0

	sbc h                                            ; $6a00: $9c
	rst $38                                          ; $6a01: $ff
	sbc $ef                                          ; $6a02: $de $ef
	call c, $91ff                                    ; $6a04: $dc $ff $91
	rst SubAFromBC                                          ; $6a07: $e7
	rst FarCall                                          ; $6a08: $f7
	db $fd                                           ; $6a09: $fd
	rst $38                                          ; $6a0a: $ff
	db $fd                                           ; $6a0b: $fd
	db $fc                                           ; $6a0c: $fc
	rst $38                                          ; $6a0d: $ff
	rst $38                                          ; $6a0e: $ff
	cp $ee                                           ; $6a0f: $fe $ee
	cp $fc                                           ; $6a11: $fe $fc
	cp $ff                                           ; $6a13: $fe $ff
	ld e, a                                          ; $6a15: $5f
	ldh [$9e], a                                     ; $6a16: $e0 $9e
	ei                                               ; $6a18: $fb
	ld a, e                                          ; $6a19: $7b
	db $ed                                           ; $6a1a: $ed
	adc l                                            ; $6a1b: $8d
	rst $38                                          ; $6a1c: $ff
	sbc a                                            ; $6a1d: $9f
	inc de                                           ; $6a1e: $13
	rla                                              ; $6a1f: $17
	sub a                                            ; $6a20: $97
	ld h, l                                          ; $6a21: $65
	add a                                            ; $6a22: $87
	rst FarCall                                          ; $6a23: $f7
	ld h, e                                          ; $6a24: $63
	ld l, a                                          ; $6a25: $6f
	rrca                                             ; $6a26: $0f
	dec bc                                           ; $6a27: $0b
	rrca                                             ; $6a28: $0f
	sbc [hl]                                         ; $6a29: $9e
	cp $ff                                           ; $6a2a: $fe $ff
	rst $38                                          ; $6a2c: $ff
	di                                               ; $6a2d: $f3
	ld h, e                                          ; $6a2e: $63
	ldh [$9a], a                                     ; $6a2f: $e0 $9a
	add d                                            ; $6a31: $82
	add e                                            ; $6a32: $83
	ld hl, sp-$49                                    ; $6a33: $f8 $b7
	cp e                                             ; $6a35: $bb
	ld a, e                                          ; $6a36: $7b
	call c, $c691                                    ; $6a37: $dc $91 $c6
	ld a, a                                          ; $6a3a: $7f
	di                                               ; $6a3b: $f3
	ret c                                            ; $6a3c: $d8

	rst $38                                          ; $6a3d: $ff
	push hl                                          ; $6a3e: $e5
	add h                                            ; $6a3f: $84
	rst $38                                          ; $6a40: $ff
	add $87                                          ; $6a41: $c6 $87
	dec bc                                           ; $6a43: $0b
	ccf                                              ; $6a44: $3f
	dec a                                            ; $6a45: $3d
	rst $38                                          ; $6a46: $ff
	ld e, e                                          ; $6a47: $5b
	ret nz                                           ; $6a48: $c0

	set 7, a                                         ; $6a49: $cb $ff
	ld c, e                                          ; $6a4b: $4b
	ldh [$7b], a                                     ; $6a4c: $e0 $7b
	xor l                                            ; $6a4e: $ad
	dec hl                                           ; $6a4f: $2b
	ldh [$9e], a                                     ; $6a50: $e0 $9e
	ld a, a                                          ; $6a52: $7f
	dec bc                                           ; $6a53: $0b
	ret nz                                           ; $6a54: $c0

	sbc c                                            ; $6a55: $99
	rst SubAFromDE                                          ; $6a56: $df
	sbc a                                            ; $6a57: $9f
	scf                                              ; $6a58: $37
	ld a, a                                          ; $6a59: $7f
	rst $38                                          ; $6a5a: $ff
	rst FarCall                                          ; $6a5b: $f7
	ld [hl], a                                       ; $6a5c: $77
	cp l                                             ; $6a5d: $bd
	ld [hl], a                                       ; $6a5e: $77
	cp h                                             ; $6a5f: $bc
	ld a, [hl]                                       ; $6a60: $7e
	ldh [rBGP], a                                    ; $6a61: $e0 $47
	ldh [$98], a                                     ; $6a63: $e0 $98
	db $fd                                           ; $6a65: $fd
	rst SubAFromDE                                          ; $6a66: $df
	rst SubAFromDE                                          ; $6a67: $df
	ld sp, $f9ff                                     ; $6a68: $31 $ff $f9
	ld sp, hl                                        ; $6a6b: $f9
	ld a, d                                          ; $6a6c: $7a
	and h                                            ; $6a6d: $a4
	sbc [hl]                                         ; $6a6e: $9e
	ld a, e                                          ; $6a6f: $7b
	ld [hl], e                                       ; $6a70: $73
	reti                                             ; $6a71: $d9


	sbc h                                            ; $6a72: $9c
	rst $38                                          ; $6a73: $ff
	reti                                             ; $6a74: $d9


	sbc h                                            ; $6a75: $9c
	sbc $f8                                          ; $6a76: $de $f8
	sbc [hl]                                         ; $6a78: $9e
	db $fc                                           ; $6a79: $fc
	ld h, e                                          ; $6a7a: $63
	ldh [$9c], a                                     ; $6a7b: $e0 $9c
	ld hl, sp-$0c                                    ; $6a7d: $f8 $f4
	db $e3                                           ; $6a7f: $e3
	ld a, e                                          ; $6a80: $7b
	inc e                                            ; $6a81: $1c
	ld a, a                                          ; $6a82: $7f
	dec b                                            ; $6a83: $05
	ld [hl], a                                       ; $6a84: $77
	jr jr_015_6ac2                                   ; $6a85: $18 $3b

	and b                                            ; $6a87: $a0
	sbc d                                            ; $6a88: $9a
	adc a                                            ; $6a89: $8f
	daa                                              ; $6a8a: $27
	daa                                              ; $6a8b: $27
	rst AddAOntoHL                                          ; $6a8c: $ef
	rst $38                                          ; $6a8d: $ff
	ld a, d                                          ; $6a8e: $7a
	rst AddAOntoHL                                          ; $6a8f: $ef
	sbc [hl]                                         ; $6a90: $9e
	pop af                                           ; $6a91: $f1
	halt                                             ; $6a92: $76
	ld h, c                                          ; $6a93: $61
	ld e, e                                          ; $6a94: $5b
	ld d, a                                          ; $6a95: $57
	ld sp, hl                                        ; $6a96: $f9
	sbc e                                            ; $6a97: $9b
	db $10                                           ; $6a98: $10
	ld hl, sp-$71                                    ; $6a99: $f8 $8f
	inc e                                            ; $6a9b: $1c
	db $dd                                           ; $6a9c: $dd
	rst $38                                          ; $6a9d: $ff
	sbc h                                            ; $6a9e: $9c
	rst AddAOntoHL                                          ; $6a9f: $ef
	rlca                                             ; $6aa0: $07
	ldh a, [$7b]                                     ; $6aa1: $f0 $7b
	cp b                                             ; $6aa3: $b8
	rst SubAFromDE                                          ; $6aa4: $df
	rst $38                                          ; $6aa5: $ff
	ld a, a                                          ; $6aa6: $7f
	ldh a, [$9e]                                     ; $6aa7: $f0 $9e
	rrca                                             ; $6aa9: $0f
	ld a, d                                          ; $6aaa: $7a
	cp h                                             ; $6aab: $bc
	ld e, a                                          ; $6aac: $5f
	ldh [hDisp0_OBP1], a                                     ; $6aad: $e0 $87
	xor b                                            ; $6aaf: $a8
	rst $38                                          ; $6ab0: $ff
	pop de                                           ; $6ab1: $d1
	ldh [c], a                                       ; $6ab2: $e2
	rst $38                                          ; $6ab3: $ff
	rst FarCall                                          ; $6ab4: $f7
	call $dffe                                       ; $6ab5: $cd $fe $df
	ret nc                                           ; $6ab8: $d0

	sbc a                                            ; $6ab9: $9f
	sbc l                                            ; $6aba: $9d
	add e                                            ; $6abb: $83
	ld sp, hl                                        ; $6abc: $f9
	sub e                                            ; $6abd: $93
	ret nz                                           ; $6abe: $c0

	ldh a, [rIE]                                     ; $6abf: $f0 $ff
	ret nc                                           ; $6ac1: $d0

jr_015_6ac2:
	di                                               ; $6ac2: $f3
	rst $38                                          ; $6ac3: $ff
	rst $38                                          ; $6ac4: $ff
	rst SubAFromDE                                          ; $6ac5: $df
	cp $4b                                           ; $6ac6: $fe $4b
	nop                                              ; $6ac8: $00
	sbc [hl]                                         ; $6ac9: $9e
	rst SubAFromBC                                          ; $6aca: $e7
	ld a, [bc]                                       ; $6acb: $0a
	ldh [$9d], a                                     ; $6acc: $e0 $9d
	rst $38                                          ; $6ace: $ff
	cp a                                             ; $6acf: $bf
	ld l, d                                          ; $6ad0: $6a
	ld hl, sp+$66                                    ; $6ad1: $f8 $66
	pop af                                           ; $6ad3: $f1
	ld sp, hl                                        ; $6ad4: $f9
	sub a                                            ; $6ad5: $97
	dec bc                                           ; $6ad6: $0b
	sbc e                                            ; $6ad7: $9b
	cp a                                             ; $6ad8: $bf
	rst $38                                          ; $6ad9: $ff
	rst GetHLinHL                                          ; $6ada: $cf
	rst FarCall                                          ; $6adb: $f7
	ei                                               ; $6adc: $fb
	rrca                                             ; $6add: $0f
	ld [hl], a                                       ; $6ade: $77
	ld b, d                                          ; $6adf: $42
	sbc c                                            ; $6ae0: $99
	rra                                              ; $6ae1: $1f
	rlc e                                            ; $6ae2: $cb $03
	rst FarCall                                          ; $6ae4: $f7
	inc bc                                           ; $6ae5: $03
	rlca                                             ; $6ae6: $07
	ld a, e                                          ; $6ae7: $7b
	and d                                            ; $6ae8: $a2
	sbc l                                            ; $6ae9: $9d
	ccf                                              ; $6aea: $3f
	ei                                               ; $6aeb: $fb
	ld h, e                                          ; $6aec: $63
	ldh [hDisp1_WY], a                                     ; $6aed: $e0 $95
	ld h, b                                          ; $6aef: $60
	rst SubAFromDE                                          ; $6af0: $df
	db $fd                                           ; $6af1: $fd
	rst SubAFromBC                                          ; $6af2: $e7
	ldh [c], a                                       ; $6af3: $e2
	pop bc                                           ; $6af4: $c1
	jp nz, $dfd8                                     ; $6af5: $c2 $d8 $df

	ldh [$73], a                                     ; $6af8: $e0 $73
	rra                                              ; $6afa: $1f
	sbc l                                            ; $6afb: $9d
	rst SubAFromBC                                          ; $6afc: $e7
	add b                                            ; $6afd: $80
	sbc $ff                                          ; $6afe: $de $ff
	sbc $e0                                          ; $6b00: $de $e0
	sbc [hl]                                         ; $6b02: $9e
	ei                                               ; $6b03: $fb
	ld sp, hl                                        ; $6b04: $f9
	ld [hl], d                                       ; $6b05: $72
	rst GetHLinHL                                          ; $6b06: $cf
	ld a, a                                          ; $6b07: $7f
	xor e                                            ; $6b08: $ab
	sbc [hl]                                         ; $6b09: $9e
	cp a                                             ; $6b0a: $bf
	ld [hl], e                                       ; $6b0b: $73
	ld c, e                                          ; $6b0c: $4b
	ld e, [hl]                                       ; $6b0d: $5e
	ret nz                                           ; $6b0e: $c0

	sbc [hl]                                         ; $6b0f: $9e
	cp a                                             ; $6b10: $bf
	ld sp, hl                                        ; $6b11: $f9
	sub b                                            ; $6b12: $90
	ld [bc], a                                       ; $6b13: $02
	ldh a, [$5f]                                     ; $6b14: $f0 $5f
	rst $38                                          ; $6b16: $ff
	rst GetHLinHL                                          ; $6b17: $cf
	ei                                               ; $6b18: $fb
	cp $83                                           ; $6b19: $fe $83
	db $fd                                           ; $6b1b: $fd
	rst $38                                          ; $6b1c: $ff
	ccf                                              ; $6b1d: $3f
	ld [$0700], sp                                   ; $6b1e: $08 $00 $07
	add c                                            ; $6b21: $81
	ld a, e                                          ; $6b22: $7b
	ld bc, $7f99                                     ; $6b23: $01 $99 $7f
	rst FarCall                                          ; $6b26: $f7
	rst GetHLinHL                                          ; $6b27: $cf
	rst $38                                          ; $6b28: $ff
	ld a, a                                          ; $6b29: $7f
	ld bc, $605b                                     ; $6b2a: $01 $5b $60
	sbc [hl]                                         ; $6b2d: $9e
	db $fd                                           ; $6b2e: $fd
	ld a, d                                          ; $6b2f: $7a
	and e                                            ; $6b30: $a3
	db $dd                                           ; $6b31: $dd
	rst $38                                          ; $6b32: $ff
	ld a, [hl]                                       ; $6b33: $7e
	cp e                                             ; $6b34: $bb
	ld a, d                                          ; $6b35: $7a
	cp d                                             ; $6b36: $ba
	db $dd                                           ; $6b37: $dd
	rst $38                                          ; $6b38: $ff
	ld [hl], a                                       ; $6b39: $77
	ld sp, hl                                        ; $6b3a: $f9
	ld sp, hl                                        ; $6b3b: $f9
	ld a, a                                          ; $6b3c: $7f
	db $10                                           ; $6b3d: $10
	sbc [hl]                                         ; $6b3e: $9e
	adc c                                            ; $6b3f: $89
	ld a, d                                          ; $6b40: $7a
	rst JumpTable                                          ; $6b41: $c7
	ld [hl], a                                       ; $6b42: $77
	add l                                            ; $6b43: $85
	sbc h                                            ; $6b44: $9c
	sbc a                                            ; $6b45: $9f
	db $fd                                           ; $6b46: $fd
	reti                                             ; $6b47: $d9


	ld l, a                                          ; $6b48: $6f
	ld hl, sp-$62                                    ; $6b49: $f8 $9e
	sbc e                                            ; $6b4b: $9b
	ld [hl], a                                       ; $6b4c: $77
	ldh a, [$f9]                                     ; $6b4d: $f0 $f9
	sbc l                                            ; $6b4f: $9d
	ld a, [hl]                                       ; $6b50: $7e
	add a                                            ; $6b51: $87
	db $db                                           ; $6b52: $db
	rst $38                                          ; $6b53: $ff
	sbc l                                            ; $6b54: $9d
	pop hl                                           ; $6b55: $e1
	ld sp, hl                                        ; $6b56: $f9
	ld l, [hl]                                       ; $6b57: $6e
	and [hl]                                         ; $6b58: $a6
	sbc l                                            ; $6b59: $9d
	sbc a                                            ; $6b5a: $9f
	cp $6e                                           ; $6b5b: $fe $6e
	sbc l                                            ; $6b5d: $9d
	ld sp, hl                                        ; $6b5e: $f9
	sbc c                                            ; $6b5f: $99
	ld a, a                                          ; $6b60: $7f
	db $fd                                           ; $6b61: $fd
	rst $38                                          ; $6b62: $ff
	pop bc                                           ; $6b63: $c1
	rst $38                                          ; $6b64: $ff
	rst AddAOntoHL                                          ; $6b65: $ef
	ld a, e                                          ; $6b66: $7b
	cp l                                             ; $6b67: $bd
	sbc d                                            ; $6b68: $9a
	jp Jump_015_7ebf                                 ; $6b69: $c3 $bf $7e


	rst AddAOntoHL                                          ; $6b6c: $ef
	rst GetHLinHL                                          ; $6b6d: $cf
	ld [hl], a                                       ; $6b6e: $77
	ld e, [hl]                                       ; $6b6f: $5e
	sbc h                                            ; $6b70: $9c
	ld b, b                                          ; $6b71: $40
	rst SubAFromBC                                          ; $6b72: $e7
	rst $38                                          ; $6b73: $ff
	ld a, c                                          ; $6b74: $79
	ld c, a                                          ; $6b75: $4f
	ld sp, hl                                        ; $6b76: $f9
	ld a, a                                          ; $6b77: $7f
	or [hl]                                          ; $6b78: $b6
	sbc l                                            ; $6b79: $9d
	ld l, a                                          ; $6b7a: $6f
	cp a                                             ; $6b7b: $bf
	halt                                             ; $6b7c: $76
	ld b, d                                          ; $6b7d: $42
	ld a, [hl]                                       ; $6b7e: $7e
	add e                                            ; $6b7f: $83
	sbc h                                            ; $6b80: $9c
	rst SubAFromDE                                          ; $6b81: $df
	ld b, b                                          ; $6b82: $40
	db $e4                                           ; $6b83: $e4
	ld a, e                                          ; $6b84: $7b
	add $7f                                          ; $6b85: $c6 $7f
	ldh a, [$7e]                                     ; $6b87: $f0 $7e
	ldh a, [$57]                                     ; $6b89: $f0 $57
	ret nz                                           ; $6b8b: $c0

	sbc [hl]                                         ; $6b8c: $9e
	pop af                                           ; $6b8d: $f1
	ld a, e                                          ; $6b8e: $7b
	inc hl                                           ; $6b8f: $23
	sbc h                                            ; $6b90: $9c
	or $8f                                           ; $6b91: $f6 $8f
	rst $38                                          ; $6b93: $ff
	ld a, e                                          ; $6b94: $7b
	cp c                                             ; $6b95: $b9
	ld a, a                                          ; $6b96: $7f
	db $fc                                           ; $6b97: $fc
	sbc e                                            ; $6b98: $9b
	xor a                                            ; $6b99: $af
	ld hl, sp-$01                                    ; $6b9a: $f8 $ff
	rst $38                                          ; $6b9c: $ff
	ld [hl], a                                       ; $6b9d: $77
	ld d, h                                          ; $6b9e: $54
	ld a, a                                          ; $6b9f: $7f
	ld l, $5f                                        ; $6ba0: $2e $5f
	ldh [$7b], a                                     ; $6ba2: $e0 $7b
	db $ed                                           ; $6ba4: $ed
	ld a, a                                          ; $6ba5: $7f
	jp z, $ce9c                                      ; $6ba6: $ca $9c $ce

	rst SubAFromDE                                          ; $6ba9: $df
	db $eb                                           ; $6baa: $eb
	ld [hl], e                                       ; $6bab: $73
	adc e                                            ; $6bac: $8b

jr_015_6bad:
	sbc h                                            ; $6bad: $9c
	ccf                                              ; $6bae: $3f
	jr nz, jr_015_6bad                               ; $6baf: $20 $fc

	ld l, d                                          ; $6bb1: $6a
	ld hl, sp+$46                                    ; $6bb2: $f8 $46
	add b                                            ; $6bb4: $80
	ld l, e                                          ; $6bb5: $6b
	ld h, $9d                                        ; $6bb6: $26 $9d
	rra                                              ; $6bb8: $1f
	ld b, b                                          ; $6bb9: $40
	jp c, $9eff                                      ; $6bba: $da $ff $9e

	cp l                                             ; $6bbd: $bd
	ld e, a                                          ; $6bbe: $5f
	ldh [$73], a                                     ; $6bbf: $e0 $73
	add $9d                                          ; $6bc1: $c6 $9d
	ld a, a                                          ; $6bc3: $7f
	ld hl, sp+$67                                    ; $6bc4: $f8 $67
	rst JumpTable                                          ; $6bc6: $c7
	ld c, e                                          ; $6bc7: $4b
	ret nz                                           ; $6bc8: $c0

	sbc l                                            ; $6bc9: $9d
	ld a, [hl]                                       ; $6bca: $7e
	ld [hl], e                                       ; $6bcb: $73
	ld a, e                                          ; $6bcc: $7b
	ldh [$9a], a                                     ; $6bcd: $e0 $9a
	ret nz                                           ; $6bcf: $c0

	or a                                             ; $6bd0: $b7
	rst FarCall                                          ; $6bd1: $f7
	adc l                                            ; $6bd2: $8d
	xor [hl]                                         ; $6bd3: $ae
	ld a, e                                          ; $6bd4: $7b
	cp l                                             ; $6bd5: $bd
	sbc c                                            ; $6bd6: $99
	ccf                                              ; $6bd7: $3f
	set 5, a                                         ; $6bd8: $cb $ef
	inc bc                                           ; $6bda: $03
	ld bc, $de03                                     ; $6bdb: $01 $03 $de
	rst $38                                          ; $6bde: $ff

jr_015_6bdf:
	sbc l                                            ; $6bdf: $9d
	rla                                              ; $6be0: $17
	rra                                              ; $6be1: $1f
	ld sp, hl                                        ; $6be2: $f9
	sbc l                                            ; $6be3: $9d
	rst GetHLinHL                                          ; $6be4: $cf
	pop hl                                           ; $6be5: $e1
	ld a, e                                          ; $6be6: $7b
	add sp, -$65                                     ; $6be7: $e8 $9b
	ld b, a                                          ; $6be9: $47
	rst SubAFromDE                                          ; $6bea: $df
	ld a, a                                          ; $6beb: $7f
	cp $75                                           ; $6bec: $fe $75
	and b                                            ; $6bee: $a0
	sbc l                                            ; $6bef: $9d
	cp b                                             ; $6bf0: $b8
	daa                                              ; $6bf1: $27
	halt                                             ; $6bf2: $76
	ld h, h                                          ; $6bf3: $64
	sbc $ff                                          ; $6bf4: $de $ff
	ld a, a                                          ; $6bf6: $7f
	ld l, d                                          ; $6bf7: $6a
	ld sp, hl                                        ; $6bf8: $f9
	sbc l                                            ; $6bf9: $9d
	ld [$6db7], a                                    ; $6bfa: $ea $b7 $6d
	ld l, b                                          ; $6bfd: $68
	sbc h                                            ; $6bfe: $9c
	ld e, a                                          ; $6bff: $5f
	ld l, e                                          ; $6c00: $6b
	ld l, a                                          ; $6c01: $6f
	ld a, e                                          ; $6c02: $7b
	xor e                                            ; $6c03: $ab
	sbc e                                            ; $6c04: $9b
	cp c                                             ; $6c05: $b9
	rst $38                                          ; $6c06: $ff
	jr nc, jr_015_6c21                               ; $6c07: $30 $18

	ld [hl], l                                       ; $6c09: $75
	sub c                                            ; $6c0a: $91
	sbc [hl]                                         ; $6c0b: $9e
	ld b, a                                          ; $6c0c: $47
	ld h, e                                          ; $6c0d: $63
	ldh [$9c], a                                     ; $6c0e: $e0 $9c
	or e                                             ; $6c10: $b3
	cp a                                             ; $6c11: $bf
	sbc a                                            ; $6c12: $9f
	sbc $ff                                          ; $6c13: $de $ff
	ld a, a                                          ; $6c15: $7f
	db $e4                                           ; $6c16: $e4
	sbc h                                            ; $6c17: $9c
	call c, Call_015_6df9                            ; $6c18: $dc $f9 $6d
	ld a, e                                          ; $6c1b: $7b
	ldh [$9a], a                                     ; $6c1c: $e0 $9a
	db $d3                                           ; $6c1e: $d3
	rst $38                                          ; $6c1f: $ff
	ld h, b                                          ; $6c20: $60

jr_015_6c21:
	ld b, b                                          ; $6c21: $40
	ldh a, [$de]                                     ; $6c22: $f0 $de
	rst $38                                          ; $6c24: $ff
	sbc [hl]                                         ; $6c25: $9e
	cp h                                             ; $6c26: $bc
	ld e, [hl]                                       ; $6c27: $5e
	ret nz                                           ; $6c28: $c0

	sbc [hl]                                         ; $6c29: $9e
	ld e, $76                                        ; $6c2a: $1e $76
	xor e                                            ; $6c2c: $ab
	ld a, [hl]                                       ; $6c2d: $7e
	db $fc                                           ; $6c2e: $fc
	sbc l                                            ; $6c2f: $9d
	sub a                                            ; $6c30: $97
	or $7b                                           ; $6c31: $f6 $7b
	and b                                            ; $6c33: $a0
	sbc c                                            ; $6c34: $99
	ld a, a                                          ; $6c35: $7f
	rst SubAFromHL                                          ; $6c36: $d7
	rst $38                                          ; $6c37: $ff
	rrca                                             ; $6c38: $0f
	ld c, $27                                        ; $6c39: $0e $27
	sbc $ff                                          ; $6c3b: $de $ff
	sbc [hl]                                         ; $6c3d: $9e
	cpl                                              ; $6c3e: $2f
	ld c, a                                          ; $6c3f: $4f
	jr nz, jr_015_6bdf                               ; $6c40: $20 $9d

	ldh a, [$9d]                                     ; $6c42: $f0 $9d
	ld b, b                                          ; $6c44: $40
	ld a, c                                          ; $6c45: $79
	ld d, e                                          ; $6c46: $53
	ldh [$9e], a                                     ; $6c47: $e0 $9e
	ld h, a                                          ; $6c49: $67
	reti                                             ; $6c4a: $d9


	rst $38                                          ; $6c4b: $ff
	sbc [hl]                                         ; $6c4c: $9e
	ld a, [hl]                                       ; $6c4d: $7e
	ld h, e                                          ; $6c4e: $63
	ld a, [de]                                       ; $6c4f: $1a
	ld d, b                                          ; $6c50: $50
	ld h, b                                          ; $6c51: $60
	sbc [hl]                                         ; $6c52: $9e
	rst JumpTable                                          ; $6c53: $c7
	ld [hl], a                                       ; $6c54: $77
	jp hl                                            ; $6c55: $e9


	ld a, b                                          ; $6c56: $78
	add b                                            ; $6c57: $80
	sbc l                                            ; $6c58: $9d
	ld hl, sp+$07                                    ; $6c59: $f8 $07
	ld h, l                                          ; $6c5b: $65
	jr c, jr_015_6cc1                                ; $6c5c: $38 $63

	jr nz, jr_015_6cdf                               ; $6c5e: $20 $7f

	inc c                                            ; $6c60: $0c
	sbc c                                            ; $6c61: $99
	inc a                                            ; $6c62: $3c
	dec bc                                           ; $6c63: $0b
	xor e                                            ; $6c64: $ab
	db $fc                                           ; $6c65: $fc
	inc bc                                           ; $6c66: $03
	and c                                            ; $6c67: $a1
	ld a, e                                          ; $6c68: $7b
	inc l                                            ; $6c69: $2c
	sbc e                                            ; $6c6a: $9b
	db $f4                                           ; $6c6b: $f4
	ld [hl], l                                       ; $6c6c: $75
	inc bc                                           ; $6c6d: $03
	db $fc                                           ; $6c6e: $fc
	ld a, e                                          ; $6c6f: $7b
	sbc a                                            ; $6c70: $9f

jr_015_6c71:
	sbc d                                            ; $6c71: $9a
	inc b                                            ; $6c72: $04
	inc bc                                           ; $6c73: $03
	add d                                            ; $6c74: $82
	rst $38                                          ; $6c75: $ff
	inc bc                                           ; $6c76: $03
	ld d, l                                          ; $6c77: $55
	ret nz                                           ; $6c78: $c0

	reti                                             ; $6c79: $d9


	rst $38                                          ; $6c7a: $ff
	sbc d                                            ; $6c7b: $9a
	cp $fd                                           ; $6c7c: $fe $fd
	ret nz                                           ; $6c7e: $c0

	ret nz                                           ; $6c7f: $c0

	rst GetHLinHL                                          ; $6c80: $cf
	ld [hl], b                                       ; $6c81: $70
	ld e, l                                          ; $6c82: $5d
	ld a, e                                          ; $6c83: $7b
	ld hl, sp+$6d                                    ; $6c84: $f8 $6d
	ld h, e                                          ; $6c86: $63
	rst SubAFromDE                                          ; $6c87: $df
	ccf                                              ; $6c88: $3f
	ld a, a                                          ; $6c89: $7f
	ldh a, [$58]                                     ; $6c8a: $f0 $58
	adc b                                            ; $6c8c: $88
	rst SubAFromDE                                          ; $6c8d: $df
	rra                                              ; $6c8e: $1f
	sbc [hl]                                         ; $6c8f: $9e
	sbc b                                            ; $6c90: $98
	ld a, d                                          ; $6c91: $7a
	inc b                                            ; $6c92: $04
	sbc d                                            ; $6c93: $9a
	cp $e2                                           ; $6c94: $fe $e2
	rra                                              ; $6c96: $1f
	rra                                              ; $6c97: $1f
	sbc a                                            ; $6c98: $9f
	db $fc                                           ; $6c99: $fc
	halt                                             ; $6c9a: $76
	db $d3                                           ; $6c9b: $d3
	sbc h                                            ; $6c9c: $9c
	rst AddAOntoHL                                          ; $6c9d: $ef
	xor $bf                                          ; $6c9e: $ee $bf
	halt                                             ; $6ca0: $76
	sbc $9b                                          ; $6ca1: $de $9b
	ld a, a                                          ; $6ca3: $7f
	cp a                                             ; $6ca4: $bf
	rst SubAFromDE                                          ; $6ca5: $df
	rst AddAOntoHL                                          ; $6ca6: $ef
	ld [hl], l                                       ; $6ca7: $75
	jp hl                                            ; $6ca8: $e9


	sbc e                                            ; $6ca9: $9b
	ld a, [$b4fe]                                    ; $6caa: $fa $fe $b4
	cp h                                             ; $6cad: $bc
	ld [hl], a                                       ; $6cae: $77
	ld [hl], d                                       ; $6caf: $72
	ld sp, hl                                        ; $6cb0: $f9
	sbc l                                            ; $6cb1: $9d
	db $e3                                           ; $6cb2: $e3
	or a                                             ; $6cb3: $b7
	ld l, [hl]                                       ; $6cb4: $6e
	sbc $9d                                          ; $6cb5: $de $9d
	inc a                                            ; $6cb7: $3c
	ld a, c                                          ; $6cb8: $79

jr_015_6cb9:
	ld l, [hl]                                       ; $6cb9: $6e
	sbc $df                                          ; $6cba: $de $df
	ret nz                                           ; $6cbc: $c0

	ld l, [hl]                                       ; $6cbd: $6e
	sbc $f9                                          ; $6cbe: $de $f9

jr_015_6cc0:
	rst SubAFromDE                                          ; $6cc0: $df

jr_015_6cc1:
	rst SubAFromDE                                          ; $6cc1: $df
	ld l, d                                          ; $6cc2: $6a
	sbc $9c                                          ; $6cc3: $de $9c
	daa                                              ; $6cc5: $27
	sub a                                            ; $6cc6: $97

jr_015_6cc7:
	or $77                                           ; $6cc7: $f6 $77
	cp c                                             ; $6cc9: $b9

jr_015_6cca:
	sbc e                                            ; $6cca: $9b
	rra                                              ; $6ccb: $1f
	rrca                                             ; $6ccc: $0f
	rra                                              ; $6ccd: $1f
	ld e, $74                                        ; $6cce: $1e $74
	ei                                               ; $6cd0: $fb
	dec sp                                           ; $6cd1: $3b
	ld h, b                                          ; $6cd2: $60
	ld [hl-], a                                      ; $6cd3: $32
	jr nz, jr_015_6c71                               ; $6cd4: $20 $9b

	pop hl                                           ; $6cd6: $e1
	ldh [$de], a                                     ; $6cd7: $e0 $de
	db $eb                                           ; $6cd9: $eb
	ld [hl], l                                       ; $6cda: $75
	ld l, c                                          ; $6cdb: $69
	rst SubAFromDE                                          ; $6cdc: $df
	cp $9e                                           ; $6cdd: $fe $9e

jr_015_6cdf:
	push hl                                          ; $6cdf: $e5
	ld [hl], c                                       ; $6ce0: $71
	ld bc, $f07f                                     ; $6ce1: $01 $7f $f0
	sbc l                                            ; $6ce4: $9d
	ei                                               ; $6ce5: $fb
	jp Jump_015_4034                                 ; $6ce6: $c3 $34 $40


	ld [hl], e                                       ; $6ce9: $73
	jr nz, jr_015_6cca                               ; $6cea: $20 $de

	rst $38                                          ; $6cec: $ff
	ld [hl], e                                       ; $6ced: $73
	jr nz, @+$5d                                     ; $6cee: $20 $5b

	ldh [rHDMA3], a                                  ; $6cf0: $e0 $53
	jr nz, @+$7b                                     ; $6cf2: $20 $79

	cp $73                                           ; $6cf4: $fe $73
	jr nz, jr_015_6d53                               ; $6cf6: $20 $5b

	ldh [hDisp1_OBP0], a                                     ; $6cf8: $e0 $93
	ld c, a                                          ; $6cfa: $4f
	sub a                                            ; $6cfb: $97
	rra                                              ; $6cfc: $1f
	ccf                                              ; $6cfd: $3f
	ld l, a                                          ; $6cfe: $6f
	ccf                                              ; $6cff: $3f
	ccf                                              ; $6d00: $3f
	ld a, a                                          ; $6d01: $7f
	or a                                             ; $6d02: $b7
	ld l, a                                          ; $6d03: $6f
	rst AddAOntoHL                                          ; $6d04: $ef
	rst AddAOntoHL                                          ; $6d05: $ef
	ld a, c                                          ; $6d06: $79
	db $dd                                           ; $6d07: $dd
	sbc l                                            ; $6d08: $9d
	cp a                                             ; $6d09: $bf
	rrca                                             ; $6d0a: $0f
	sbc $1f                                          ; $6d0b: $de $1f
	sbc $3f                                          ; $6d0d: $de $3f
	sbc [hl]                                         ; $6d0f: $9e
	ld a, a                                          ; $6d10: $7f
	ld sp, hl                                        ; $6d11: $f9
	sbc l                                            ; $6d12: $9d
	sbc a                                            ; $6d13: $9f
	rra                                              ; $6d14: $1f
	ld [hl], a                                       ; $6d15: $77
	ld [hl+], a                                      ; $6d16: $22
	ld [hl], h                                       ; $6d17: $74
	dec a                                            ; $6d18: $3d
	cpl                                              ; $6d19: $2f
	ld h, b                                          ; $6d1a: $60
	ld [hl], a                                       ; $6d1b: $77
	jr nz, jr_015_6cb9                               ; $6d1c: $20 $9b

	db $ed                                           ; $6d1e: $ed
	cp a                                             ; $6d1f: $bf
	rst $38                                          ; $6d20: $ff
	di                                               ; $6d21: $f3
	ld [hl], a                                       ; $6d22: $77
	jr nz, jr_015_6cc0                               ; $6d23: $20 $9b

	jp nc, $9ec0                                     ; $6d25: $d2 $c0 $9e

	ccf                                              ; $6d28: $3f
	ld [hl], a                                       ; $6d29: $77
	jr nz, jr_015_6cc7                               ; $6d2a: $20 $9b

	ld hl, $1e80                                     ; $6d2c: $21 $80 $1e
	ccf                                              ; $6d2f: $3f
	ld [hl], d                                       ; $6d30: $72
	and c                                            ; $6d31: $a1
	ld h, a                                          ; $6d32: $67
	bit 4, e                                         ; $6d33: $cb $63
	jp Jump_015_7f9e                                 ; $6d35: $c3 $9e $7f


	ld [hl], a                                       ; $6d38: $77
	dec b                                            ; $6d39: $05
	ld [hl], a                                       ; $6d3a: $77
	ld sp, hl                                        ; $6d3b: $f9
	ld [hl], e                                       ; $6d3c: $73
	ldh [$99], a                                     ; $6d3d: $e0 $99
	nop                                              ; $6d3f: $00
	add b                                            ; $6d40: $80
	ret nz                                           ; $6d41: $c0

	ret nz                                           ; $6d42: $c0

	ld sp, hl                                        ; $6d43: $f9
	cp l                                             ; $6d44: $bd
	ld [hl], h                                       ; $6d45: $74
	xor a                                            ; $6d46: $af
	ld a, a                                          ; $6d47: $7f
	rst SubAFromDE                                          ; $6d48: $df
	rst SubAFromDE                                          ; $6d49: $df
	ld a, $7f                                        ; $6d4a: $3e $7f
	jp nc, Jump_015_7fdd                             ; $6d4c: $d2 $dd $7f

	ld l, h                                          ; $6d4f: $6c
	and c                                            ; $6d50: $a1
	ld a, a                                          ; $6d51: $7f
	ld sp, hl                                        ; $6d52: $f9

jr_015_6d53:
	ld h, e                                          ; $6d53: $63
	jr nz, @+$7d                                     ; $6d54: $20 $7b

	ld a, [bc]                                       ; $6d56: $0a
	sub [hl]                                         ; $6d57: $96
	ld a, l                                          ; $6d58: $7d
	db $fc                                           ; $6d59: $fc
	db $ed                                           ; $6d5a: $ed
	rst AddAOntoHL                                          ; $6d5b: $ef
	ld a, [$fefa]                                    ; $6d5c: $fa $fa $fe
	ld sp, hl                                        ; $6d5f: $f9
	di                                               ; $6d60: $f3
	ld a, c                                          ; $6d61: $79
	or [hl]                                          ; $6d62: $b6
	rst SubAFromDE                                          ; $6d63: $df
	db $fc                                           ; $6d64: $fc
	sbc d                                            ; $6d65: $9a
	ld hl, sp-$02                                    ; $6d66: $f8 $fe
	db $fc                                           ; $6d68: $fc
	ldh a, [$f0]                                     ; $6d69: $f0 $f0
	ld e, a                                          ; $6d6b: $5f
	ldh [$9c], a                                     ; $6d6c: $e0 $9c
	cp $7f                                           ; $6d6e: $fe $7f
	rst $38                                          ; $6d70: $ff
	ld l, l                                          ; $6d71: $6d
	bit 1, a                                         ; $6d72: $cb $4f
	sub e                                            ; $6d74: $93
	ld sp, hl                                        ; $6d75: $f9
	halt                                             ; $6d76: $76
	ld c, e                                          ; $6d77: $4b
	sub h                                            ; $6d78: $94
	sub b                                            ; $6d79: $90
	or l                                             ; $6d7a: $b5
	rst GetHLinHL                                          ; $6d7b: $cf
	rst $38                                          ; $6d7c: $ff
	rst GetHLinHL                                          ; $6d7d: $cf
	rra                                              ; $6d7e: $1f
	rst JumpTable                                          ; $6d7f: $c7
	rst $38                                          ; $6d80: $ff
	ld l, a                                          ; $6d81: $6f
	rst SubAFromDE                                          ; $6d82: $df
	ccf                                              ; $6d83: $3f
	ld [hl], h                                       ; $6d84: $74
	dec h                                            ; $6d85: $25
	rst SubAFromDE                                          ; $6d86: $df
	rst $38                                          ; $6d87: $ff
	halt                                             ; $6d88: $76
	scf                                              ; $6d89: $37
	ld a, [$e876]                                    ; $6d8a: $fa $76 $e8
	ld [hl], a                                       ; $6d8d: $77
	ld e, $7f                                        ; $6d8e: $1e $7f
	xor c                                            ; $6d90: $a9
	rst SubAFromDE                                          ; $6d91: $df
	rst $38                                          ; $6d92: $ff
	sbc [hl]                                         ; $6d93: $9e
	ld h, b                                          ; $6d94: $60
	ld a, d                                          ; $6d95: $7a
	jp c, Jump_015_5e65                              ; $6d96: $da $65 $5e

	ld h, c                                          ; $6d99: $61
	jr nz, jr_015_6e0d                               ; $6d9a: $20 $71

	ld [de], a                                       ; $6d9c: $12
	ld a, a                                          ; $6d9d: $7f
	ld a, [$667b]                                    ; $6d9e: $fa $7b $66
	sbc l                                            ; $6da1: $9d
	rst $38                                          ; $6da2: $ff
	ld b, b                                          ; $6da3: $40
	ld [hl], a                                       ; $6da4: $77
	ld hl, sp+$77                                    ; $6da5: $f8 $77
	call nc, Call_015_605b                           ; $6da7: $d4 $5b $60
	halt                                             ; $6daa: $76
	and d                                            ; $6dab: $a2
	sbc l                                            ; $6dac: $9d
	ld bc, $7aff                                     ; $6dad: $01 $ff $7a
	sbc e                                            ; $6db0: $9b
	ld [hl], a                                       ; $6db1: $77
	xor h                                            ; $6db2: $ac
	rst SubAFromDE                                          ; $6db3: $df
	rst $38                                          ; $6db4: $ff
	ld [hl], b                                       ; $6db5: $70
	or e                                             ; $6db6: $b3
	ld a, e                                          ; $6db7: $7b
	ldh a, [rHDMA2]                                  ; $6db8: $f0 $52
	ld h, b                                          ; $6dba: $60
	sbc [hl]                                         ; $6dbb: $9e
	ld c, b                                          ; $6dbc: $48
	ld l, a                                          ; $6dbd: $6f
	db $ed                                           ; $6dbe: $ed
	ld a, l                                          ; $6dbf: $7d
	ld h, [hl]                                       ; $6dc0: $66
	ld a, e                                          ; $6dc1: $7b
	ld b, b                                          ; $6dc2: $40
	db $dd                                           ; $6dc3: $dd
	rst $38                                          ; $6dc4: $ff
	sbc e                                            ; $6dc5: $9b
	ld c, h                                          ; $6dc6: $4c
	rst $38                                          ; $6dc7: $ff
	rst $38                                          ; $6dc8: $ff
	pop af                                           ; $6dc9: $f1
	ld h, e                                          ; $6dca: $63
	ld h, b                                          ; $6dcb: $60
	ld [hl], a                                       ; $6dcc: $77
	call nc, $ff9c                                   ; $6dcd: $d4 $9c $ff
	sbc $87                                          ; $6dd0: $de $87
	ld [hl], c                                       ; $6dd2: $71
	call z, $827f                                    ; $6dd3: $cc $7f $82
	sbc [hl]                                         ; $6dd6: $9e
	dec bc                                           ; $6dd7: $0b
	ld [hl], e                                       ; $6dd8: $73
	add h                                            ; $6dd9: $84
	ld a, a                                          ; $6dda: $7f
	ld hl, sp-$62                                    ; $6ddb: $f8 $9e
	adc h                                            ; $6ddd: $8c
	ld sp, hl                                        ; $6dde: $f9
	add a                                            ; $6ddf: $87
	push hl                                          ; $6de0: $e5
	and [hl]                                         ; $6de1: $a6
	sbc $7f                                          ; $6de2: $de $7f
	adc a                                            ; $6de4: $8f
	cpl                                              ; $6de5: $2f
	cp $fd                                           ; $6de6: $fe $fd
	inc bc                                           ; $6de8: $03
	ret nz                                           ; $6de9: $c0

	db $fc                                           ; $6dea: $fc
	db $fc                                           ; $6deb: $fc
	nop                                              ; $6dec: $00
	add b                                            ; $6ded: $80
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	rst SubAFromBC                                          ; $6df0: $e7
	and $fe                                          ; $6df1: $e6 $fe
	rst $38                                          ; $6df3: $ff
	adc a                                            ; $6df4: $8f
	xor a                                            ; $6df5: $af
	cp $fd                                           ; $6df6: $fe $fd
	ld sp, hl                                        ; $6df8: $f9

Call_015_6df9:
	rst SubAFromDE                                          ; $6df9: $df
	ccf                                              ; $6dfa: $3f
	sbc d                                            ; $6dfb: $9a
	rst $38                                          ; $6dfc: $ff
	dec a                                            ; $6dfd: $3d
	db $eb                                           ; $6dfe: $eb
	cp a                                             ; $6dff: $bf
	ld a, [hl]                                       ; $6e00: $7e
	call c, $9eff                                    ; $6e01: $dc $ff $9e
	inc e                                            ; $6e04: $1c
	ld e, [hl]                                       ; $6e05: $5e
	ld e, e                                          ; $6e06: $5b
	sbc [hl]                                         ; $6e07: $9e
	ldh a, [$5f]                                     ; $6e08: $f0 $5f
	add b                                            ; $6e0a: $80
	sbc c                                            ; $6e0b: $99
	push af                                          ; $6e0c: $f5

jr_015_6e0d:
	ld sp, hl                                        ; $6e0d: $f9
	ld h, a                                          ; $6e0e: $67
	rst $38                                          ; $6e0f: $ff
	sbc $e5                                          ; $6e10: $de $e5
	db $db                                           ; $6e12: $db
	rst $38                                          ; $6e13: $ff
	sbc l                                            ; $6e14: $9d
	pop hl                                           ; $6e15: $e1
	db $db                                           ; $6e16: $db
	ld c, e                                          ; $6e17: $4b
	ld hl, $6077                                     ; $6e18: $21 $77 $60
	ld [hl], h                                       ; $6e1b: $74
	xor h                                            ; $6e1c: $ac
	ld l, l                                          ; $6e1d: $6d
	db $db                                           ; $6e1e: $db
	ld a, a                                          ; $6e1f: $7f
	ld sp, hl                                        ; $6e20: $f9
	ld h, e                                          ; $6e21: $63
	cp [hl]                                          ; $6e22: $be
	ld e, a                                          ; $6e23: $5f
	ldh [$7e], a                                     ; $6e24: $e0 $7e
	ld e, a                                          ; $6e26: $5f
	ld a, [hl]                                       ; $6e27: $7e
	jp $a571                                         ; $6e28: $c3 $71 $a5


	rst SubAFromDE                                          ; $6e2b: $df
	rst $38                                          ; $6e2c: $ff
	sbc h                                            ; $6e2d: $9c
	sbc l                                            ; $6e2e: $9d
	adc h                                            ; $6e2f: $8c
	rst JumpTable                                          ; $6e30: $c7
	ld l, a                                          ; $6e31: $6f
	reti                                             ; $6e32: $d9


	sbc l                                            ; $6e33: $9d
	sbc [hl]                                         ; $6e34: $9e
	adc [hl]                                         ; $6e35: $8e
	ld e, a                                          ; $6e36: $5f
	ldh [$9a], a                                     ; $6e37: $e0 $9a
	rst SubAFromDE                                          ; $6e39: $df
	adc a                                            ; $6e3a: $8f
	rst FarCall                                          ; $6e3b: $f7
	cp b                                             ; $6e3c: $b8
	push af                                          ; $6e3d: $f5
	ld l, a                                          ; $6e3e: $6f
	and b                                            ; $6e3f: $a0
	sbc h                                            ; $6e40: $9c
	db $db                                           ; $6e41: $db
	ld a, [$dc7a]                                    ; $6e42: $fa $7a $dc
	rst $38                                          ; $6e45: $ff
	sbc h                                            ; $6e46: $9c
	ldh [c], a                                       ; $6e47: $e2
	and $f7                                          ; $6e48: $e6 $f7
	ld d, a                                          ; $6e4a: $57
	nop                                              ; $6e4b: $00
	sbc h                                            ; $6e4c: $9c
	xor $b3                                          ; $6e4d: $ee $b3
	sbc $72                                          ; $6e4f: $de $72
	add sp, -$65                                     ; $6e51: $e8 $9b
	ld h, a                                          ; $6e53: $67
	ld a, [hl]                                       ; $6e54: $7e
	ccf                                              ; $6e55: $3f
	daa                                              ; $6e56: $27
	ld [hl], d                                       ; $6e57: $72
	add c                                            ; $6e58: $81
	sbc l                                            ; $6e59: $9d
	rst SubAFromBC                                          ; $6e5a: $e7
	db $e3                                           ; $6e5b: $e3
	ld d, [hl]                                       ; $6e5c: $56
	ldh [$8b], a                                     ; $6e5d: $e0 $8b
	rst SubAFromDE                                          ; $6e5f: $df
	rlca                                             ; $6e60: $07
	cp e                                             ; $6e61: $bb
	cp a                                             ; $6e62: $bf
	or e                                             ; $6e63: $b3
	db $fd                                           ; $6e64: $fd
	sbc [hl]                                         ; $6e65: $9e
	ld [hl], $fc                                     ; $6e66: $36 $fc
	cp $c6                                           ; $6e68: $fe $c6
	rst JumpTable                                          ; $6e6a: $c7
	adc $fe                                          ; $6e6b: $ce $fe
	rst $38                                          ; $6e6d: $ff
	rst GetHLinHL                                          ; $6e6e: $cf
	inc bc                                           ; $6e6f: $03
	ld bc, $0001                                     ; $6e70: $01 $01 $00
	ld d, b                                          ; $6e73: $50
	ld b, b                                          ; $6e74: $40
	sbc l                                            ; $6e75: $9d
	rst JumpTable                                          ; $6e76: $c7
	inc bc                                           ; $6e77: $03
	inc e                                            ; $6e78: $1c
	ldh [$59], a                                     ; $6e79: $e0 $59
	inc h                                            ; $6e7b: $24
	inc sp                                           ; $6e7c: $33
	ldh [$7a], a                                     ; $6e7d: $e0 $7a
	add hl, hl                                       ; $6e7f: $29
	rst SubAFromDE                                          ; $6e80: $df
	rst $38                                          ; $6e81: $ff
	rst SubAFromDE                                          ; $6e82: $df
	ld hl, sp+$7f                                    ; $6e83: $f8 $7f
	xor d                                            ; $6e85: $aa
	rst SubAFromDE                                          ; $6e86: $df
	ret z                                            ; $6e87: $c8

	db $dd                                           ; $6e88: $dd
	rst GetHLinHL                                          ; $6e89: $cf
	ld [hl], a                                       ; $6e8a: $77
	ei                                               ; $6e8b: $fb
	call c, $d9c8                                    ; $6e8c: $dc $c8 $d9
	ccf                                              ; $6e8f: $3f
	ld [hl], b                                       ; $6e90: $70
	adc $89                                          ; $6e91: $ce $89
	adc a                                            ; $6e93: $8f
	inc bc                                           ; $6e94: $03
	rst $38                                          ; $6e95: $ff
	add a                                            ; $6e96: $87
	sbc a                                            ; $6e97: $9f
	adc a                                            ; $6e98: $8f
	add c                                            ; $6e99: $81
	db $fc                                           ; $6e9a: $fc
	or $ff                                           ; $6e9b: $f6 $ff
	inc bc                                           ; $6e9d: $03
	sbc a                                            ; $6e9e: $9f
	sbc a                                            ; $6e9f: $9f
	add e                                            ; $6ea0: $83
	add c                                            ; $6ea1: $81
	db $fc                                           ; $6ea2: $fc
	adc [hl]                                         ; $6ea3: $8e
	inc bc                                           ; $6ea4: $03
	inc bc                                           ; $6ea5: $03
	ldh [$e0], a                                     ; $6ea6: $e0 $e0
	db $fc                                           ; $6ea8: $fc
	ld l, e                                          ; $6ea9: $6b
	xor c                                            ; $6eaa: $a9
	ld a, d                                          ; $6eab: $7a
	push hl                                          ; $6eac: $e5
	sub l                                            ; $6ead: $95
	ldh [$80], a                                     ; $6eae: $e0 $80
	xor $b9                                          ; $6eb0: $ee $b9
	rst $38                                          ; $6eb2: $ff
	ldh [rP1], a                                     ; $6eb3: $e0 $00
	ld a, a                                          ; $6eb5: $7f
	rst SubAFromDE                                          ; $6eb6: $df
	rst $38                                          ; $6eb7: $ff
	ld a, c                                          ; $6eb8: $79
	cp d                                             ; $6eb9: $ba
	ld a, [hl]                                       ; $6eba: $7e
	ld a, e                                          ; $6ebb: $7b
	sbc e                                            ; $6ebc: $9b
	ld a, a                                          ; $6ebd: $7f
	ldh [$80], a                                     ; $6ebe: $e0 $80
	ld c, $6d                                        ; $6ec0: $0e $6d
	and $df                                          ; $6ec2: $e6 $df
	rst $38                                          ; $6ec4: $ff
	sbc h                                            ; $6ec5: $9c
	ld l, a                                          ; $6ec6: $6f
	rst $38                                          ; $6ec7: $ff
	ld a, l                                          ; $6ec8: $7d
	ld a, e                                          ; $6ec9: $7b
	ld a, a                                          ; $6eca: $7f
	adc d                                            ; $6ecb: $8a
	jr c, @+$01                                      ; $6ecc: $38 $ff

	db $d3                                           ; $6ece: $d3

jr_015_6ecf:
	rst $38                                          ; $6ecf: $ff
	cp $10                                           ; $6ed0: $fe $10
	rst JumpTable                                          ; $6ed2: $c7
	ld l, l                                          ; $6ed3: $6d
	rst $38                                          ; $6ed4: $ff
	db $10                                           ; $6ed5: $10
	cp h                                             ; $6ed6: $bc
	rst $38                                          ; $6ed7: $ff
	jr c, jr_015_6eea                                ; $6ed8: $38 $10

	rst JumpTable                                          ; $6eda: $c7
	xor $38                                          ; $6edb: $ee $38
	stop                                             ; $6edd: $10 $00
	nop                                              ; $6edf: $00
	rst JumpTable                                          ; $6ee0: $c7
	ld [hl], c                                       ; $6ee1: $71
	sub l                                            ; $6ee2: $95
	ld [hl], e                                       ; $6ee3: $73
	jp c, Jump_015_799b                              ; $6ee4: $da $9b $79

	ld de, $d7ff                                     ; $6ee7: $11 $ff $d7

jr_015_6eea:
	ld a, e                                          ; $6eea: $7b
	ld l, [hl]                                       ; $6eeb: $6e
	sbc d                                            ; $6eec: $9a
	rst AddAOntoHL                                          ; $6eed: $ef
	cp a                                             ; $6eee: $bf
	rst $38                                          ; $6eef: $ff
	ld bc, $772f                                     ; $6ef0: $01 $2f $77
	ld hl, sp+$7f                                    ; $6ef3: $f8 $7f
	ldh a, [$7b]                                     ; $6ef5: $f0 $7b

jr_015_6ef7:
	jr nz, jr_015_6ecf                               ; $6ef7: $20 $d6

	rst $38                                          ; $6ef9: $ff
	rst SubAFromDE                                          ; $6efa: $df
	inc bc                                           ; $6efb: $03
	sbc d                                            ; $6efc: $9a
	rst $38                                          ; $6efd: $ff
	add e                                            ; $6efe: $83
	dec sp                                           ; $6eff: $3b
	ld l, b                                          ; $6f00: $68
	ret z                                            ; $6f01: $c8

	sbc $fe                                          ; $6f02: $de $fe
	sbc c                                            ; $6f04: $99
	ld [bc], a                                       ; $6f05: $02
	add e                                            ; $6f06: $83
	dec sp                                           ; $6f07: $3b
	ld a, b                                          ; $6f08: $78
	ld hl, sp-$72                                    ; $6f09: $f8 $8e
	sbc $02                                          ; $6f0b: $de $02
	sbc [hl]                                         ; $6f0d: $9e
	ld a, h                                          ; $6f0e: $7c
	ld l, l                                          ; $6f0f: $6d
	dec hl                                           ; $6f10: $2b
	db $db                                           ; $6f11: $db
	rst $38                                          ; $6f12: $ff
	sbc l                                            ; $6f13: $9d
	add h                                            ; $6f14: $84
	add b                                            ; $6f15: $80
	ld [hl], e                                       ; $6f16: $73
	ld l, $de                                        ; $6f17: $2e $de
	rst $38                                          ; $6f19: $ff
	sbc [hl]                                         ; $6f1a: $9e
	add [hl]                                         ; $6f1b: $86
	ld [hl], e                                       ; $6f1c: $73
	ld hl, sp+$7f                                    ; $6f1d: $f8 $7f
	ldh a, [$9e]                                     ; $6f1f: $f0 $9e
	add d                                            ; $6f21: $82
	ld e, a                                          ; $6f22: $5f
	ret nz                                           ; $6f23: $c0

	ld a, a                                          ; $6f24: $7f
	adc e                                            ; $6f25: $8b
	sbc l                                            ; $6f26: $9d
	rst $38                                          ; $6f27: $ff
	ld h, e                                          ; $6f28: $63
	ld [hl], l                                       ; $6f29: $75
	and c                                            ; $6f2a: $a1
	adc [hl]                                         ; $6f2b: $8e
	di                                               ; $6f2c: $f3
	nop                                              ; $6f2d: $00
	cp $bd                                           ; $6f2e: $fe $bd
	rst $38                                          ; $6f30: $ff
	ld sp, rIE                                     ; $6f31: $31 $ff $ff
	ld hl, $fe00                                     ; $6f34: $21 $00 $fe
	ld h, e                                          ; $6f37: $63
	ld bc, $0011                                     ; $6f38: $01 $11 $00
	nop                                              ; $6f3b: $00

jr_015_6f3c:
	sbc $68                                          ; $6f3c: $de $68
	pop af                                           ; $6f3e: $f1
	adc c                                            ; $6f3f: $89
	xor $ff                                          ; $6f40: $ee $ff
	rst $38                                          ; $6f42: $ff
	ld sp, hl                                        ; $6f43: $f9
	ldh [rIE], a                                     ; $6f44: $e0 $ff
	daa                                              ; $6f46: $27
	rst $38                                          ; $6f47: $ff
	pop af                                           ; $6f48: $f1
	ret nz                                           ; $6f49: $c0

	rra                                              ; $6f4a: $1f
	ld [hl], $7f                                     ; $6f4b: $36 $7f
	ld b, b                                          ; $6f4d: $40
	rst $38                                          ; $6f4e: $ff
	rst $38                                          ; $6f4f: $ff

jr_015_6f50:
	ret nz                                           ; $6f50: $c0

	add b                                            ; $6f51: $80
	rra                                              ; $6f52: $1f
	add hl, sp                                       ; $6f53: $39
	ld h, b                                          ; $6f54: $60
	ld b, b                                          ; $6f55: $40
	ld e, h                                          ; $6f56: $5c
	ld h, d                                          ; $6f57: $62
	ld a, e                                          ; $6f58: $7b
	jr nz, jr_015_6ef7                               ; $6f59: $20 $9c

	db $e4                                           ; $6f5b: $e4
	ld b, h                                          ; $6f5c: $44
	rst $38                                          ; $6f5d: $ff
	ld [hl], a                                       ; $6f5e: $77
	jr nz, jr_015_6fd9                               ; $6f5f: $20 $78

	add l                                            ; $6f61: $85
	sub l                                            ; $6f62: $95
	inc b                                            ; $6f63: $04
	rst JumpTable                                          ; $6f64: $c7
	rst $38                                          ; $6f65: $ff
	ld b, b                                          ; $6f66: $40
	nop                                              ; $6f67: $00
	cp a                                             ; $6f68: $bf
	db $e4                                           ; $6f69: $e4
	ld b, h                                          ; $6f6a: $44
	inc b                                            ; $6f6b: $04
	nop                                              ; $6f6c: $00
	ld [hl], a                                       ; $6f6d: $77
	ldh a, [c]                                       ; $6f6e: $f2
	ld [hl], e                                       ; $6f6f: $73
	jr nz, jr_015_6f50                               ; $6f70: $20 $de

	rst $38                                          ; $6f72: $ff
	sbc e                                            ; $6f73: $9b
	ld sp, $ff00                                     ; $6f74: $31 $00 $ff
	jp nc, $8877                                     ; $6f77: $d2 $77 $88

	ld a, [hl]                                       ; $6f7a: $7e
	xor $9c                                          ; $6f7b: $ee $9c
	jr nc, jr_015_6f3c                               ; $6f7d: $30 $bd

	cp $7b                                           ; $6f7f: $fe $7b
	ld hl, sp+$7f                                    ; $6f81: $f8 $7f
	ldh a, [$9d]                                     ; $6f83: $f0 $9d
	db $10                                           ; $6f85: $10
	ld bc, $2e71                                     ; $6f86: $01 $71 $2e
	ld a, c                                          ; $6f89: $79
	xor [hl]                                         ; $6f8a: $ae
	ld [hl], a                                       ; $6f8b: $77
	sbc c                                            ; $6f8c: $99
	rst SubAFromDE                                          ; $6f8d: $df
	pop bc                                           ; $6f8e: $c1
	ld a, a                                          ; $6f8f: $7f
	sbc c                                            ; $6f90: $99
	rst SubAFromDE                                          ; $6f91: $df
	ld h, c                                          ; $6f92: $61
	ld [hl], a                                       ; $6f93: $77
	xor a                                            ; $6f94: $af
	sbc [hl]                                         ; $6f95: $9e
	pop bc                                           ; $6f96: $c1
	sbc $7f                                          ; $6f97: $de $7f
	sbc l                                            ; $6f99: $9d
	inc sp                                           ; $6f9a: $33
	ld a, a                                          ; $6f9b: $7f
	sbc $c1                                          ; $6f9c: $de $c1
	rst SubAFromHL                                          ; $6f9e: $d7
	rst $38                                          ; $6f9f: $ff
	sbc [hl]                                         ; $6fa0: $9e

jr_015_6fa1:
	db $ed                                           ; $6fa1: $ed
	ld a, e                                          ; $6fa2: $7b
	ld h, l                                          ; $6fa3: $65
	adc e                                            ; $6fa4: $8b
	ret nz                                           ; $6fa5: $c0

	rst $38                                          ; $6fa6: $ff
	sbc a                                            ; $6fa7: $9f
	cp a                                             ; $6fa8: $bf
	or e                                             ; $6fa9: $b3
	nop                                              ; $6faa: $00
	ccf                                              ; $6fab: $3f
	ld l, l                                          ; $6fac: $6d
	rst $38                                          ; $6fad: $ff
	add b                                            ; $6fae: $80
	cp a                                             ; $6faf: $bf
	sbc a                                            ; $6fb0: $9f
	add b                                            ; $6fb1: $80
	nop                                              ; $6fb2: $00
	ccf                                              ; $6fb3: $3f
	ld [hl], e                                       ; $6fb4: $73
	ret nz                                           ; $6fb5: $c0

	add b                                            ; $6fb6: $80
	ldh [$e0], a                                     ; $6fb7: $e0 $e0
	reti                                             ; $6fb9: $d9


	rst $38                                          ; $6fba: $ff
	ld a, e                                          ; $6fbb: $7b
	add b                                            ; $6fbc: $80
	sbc l                                            ; $6fbd: $9d
	rst GetHLinHL                                          ; $6fbe: $cf
	adc a                                            ; $6fbf: $8f
	ld [hl], a                                       ; $6fc0: $77
	or [hl]                                          ; $6fc1: $b6
	adc a                                            ; $6fc2: $8f
	ld bc, $f979                                     ; $6fc3: $01 $79 $f9
	ld sp, hl                                        ; $6fc6: $f9
	add hl, bc                                       ; $6fc7: $09
	rst $38                                          ; $6fc8: $ff
	rst $38                                          ; $6fc9: $ff
	add c                                            ; $6fca: $81
	ld bc, $c979                                     ; $6fcb: $01 $79 $c9
	adc c                                            ; $6fce: $89
	add hl, bc                                       ; $6fcf: $09
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	ld a, [hl]                                       ; $6fd2: $7e
	call c, $94fe                                    ; $6fd3: $dc $fe $94
	add l                                            ; $6fd6: $85
	xor a                                            ; $6fd7: $af
	ccf                                              ; $6fd8: $3f

jr_015_6fd9:
	ld l, l                                          ; $6fd9: $6d
	ld [hl], e                                       ; $6fda: $73
	ld a, a                                          ; $6fdb: $7f
	dec bc                                           ; $6fdc: $0b
	rrca                                             ; $6fdd: $0f
	ld a, a                                          ; $6fde: $7f
	ld e, c                                          ; $6fdf: $59
	db $fd                                           ; $6fe0: $fd
	sbc $9b                                          ; $6fe1: $de $9b
	rst SubAFromDE                                          ; $6fe3: $df
	rst FarCall                                          ; $6fe4: $f7
	sbc h                                            ; $6fe5: $9c
	add e                                            ; $6fe6: $83
	rlca                                             ; $6fe7: $07
	inc bc                                           ; $6fe8: $03
	ld a, e                                          ; $6fe9: $7b
	cp $df                                           ; $6fea: $fe $df
	rrca                                             ; $6fec: $0f
	ld sp, hl                                        ; $6fed: $f9
	sbc [hl]                                         ; $6fee: $9e
	db $e3                                           ; $6fef: $e3
	ld [hl], c                                       ; $6ff0: $71
	ld b, [hl]                                       ; $6ff1: $46
	sbc e                                            ; $6ff2: $9b
	db $fc                                           ; $6ff3: $fc
	rrca                                             ; $6ff4: $0f
	rst $38                                          ; $6ff5: $ff
	inc de                                           ; $6ff6: $13
	ld [hl], h                                       ; $6ff7: $74
	ld a, [hl]                                       ; $6ff8: $7e
	sbc l                                            ; $6ff9: $9d
	rrca                                             ; $6ffa: $0f
	ldh a, [$65]                                     ; $6ffb: $f0 $65
	ld [hl], $61                                     ; $6ffd: $36 $61

Jump_015_6fff:
	ldh [$7d], a                                     ; $6fff: $e0 $7d
	sub e                                            ; $7001: $93
	ld a, l                                          ; $7002: $7d
	jr nz, jr_015_6fa1                               ; $7003: $20 $9c

	rst FarCall                                          ; $7005: $f7
	cp $8b                                           ; $7006: $fe $8b
	ld c, c                                          ; $7008: $49
	jp c, Jump_015_6059                              ; $7009: $da $59 $60

	ld a, c                                          ; $700c: $79
	db $fd                                           ; $700d: $fd
	call c, $9eff                                    ; $700e: $dc $ff $9e
	dec b                                            ; $7011: $05
	ld a, e                                          ; $7012: $7b
	cp c                                             ; $7013: $b9
	ld [hl], a                                       ; $7014: $77
	db $f4                                           ; $7015: $f4
	ld l, a                                          ; $7016: $6f
	ldh a, [$63]                                     ; $7017: $f0 $63
	ldh [$9e], a                                     ; $7019: $e0 $9e
	ld [hl], d                                       ; $701b: $72
	ld a, e                                          ; $701c: $7b
	dec hl                                           ; $701d: $2b
	sbc e                                            ; $701e: $9b
	ld e, a                                          ; $701f: $5f
	rst $38                                          ; $7020: $ff
	rst GetHLinHL                                          ; $7021: $cf
	rst $38                                          ; $7022: $ff
	ld a, d                                          ; $7023: $7a
	ld a, l                                          ; $7024: $7d
	sub e                                            ; $7025: $93
	ret nc                                           ; $7026: $d0

	ld [hl], a                                       ; $7027: $77
	rst $38                                          ; $7028: $ff
	sub a                                            ; $7029: $97
	rst $38                                          ; $702a: $ff
	ldh a, [c]                                       ; $702b: $f2
	rst $38                                          ; $702c: $ff
	rst $38                                          ; $702d: $ff
	pop de                                           ; $702e: $d1
	ld a, a                                          ; $702f: $7f
	rst $38                                          ; $7030: $ff
	rst SubAFromDE                                          ; $7031: $df
	ld sp, hl                                        ; $7032: $f9
	adc [hl]                                         ; $7033: $8e
	add b                                            ; $7034: $80
	rst SubAFromBC                                          ; $7035: $e7
	rst $38                                          ; $7036: $ff
	ret nc                                           ; $7037: $d0

	ccf                                              ; $7038: $3f
	or $5f                                           ; $7039: $f6 $5f
	pop hl                                           ; $703b: $e1
	sub b                                            ; $703c: $90
	rra                                              ; $703d: $1f
	rst $38                                          ; $703e: $ff
	ldh [$7f], a                                     ; $703f: $e0 $7f
	ld sp, hl                                        ; $7041: $f9
	ccf                                              ; $7042: $3f
	rst $38                                          ; $7043: $ff
	sub b                                            ; $7044: $90
	ld a, b                                          ; $7045: $78
	add h                                            ; $7046: $84
	ld a, a                                          ; $7047: $7f
	pop hl                                           ; $7048: $e1
	ld a, a                                          ; $7049: $7f
	cp $f9                                           ; $704a: $fe $f9
	add a                                            ; $704c: $87
	inc c                                            ; $704d: $0c
	ei                                               ; $704e: $fb
	db $e3                                           ; $704f: $e3
	sbc a                                            ; $7050: $9f
	db $10                                           ; $7051: $10
	ld hl, sp-$65                                    ; $7052: $f8 $9b
	jp z, $fd01                                      ; $7054: $ca $01 $fd

	add b                                            ; $7057: $80
	cp $80                                           ; $7058: $fe $80
	ldh a, [$34]                                     ; $705a: $f0 $34
	rst GetHLinHL                                          ; $705c: $cf
	dec c                                            ; $705d: $0d
	rst $38                                          ; $705e: $ff
	db $e3                                           ; $705f: $e3
	rst $38                                          ; $7060: $ff
	sub b                                            ; $7061: $90
	ld hl, sp-$41                                    ; $7062: $f8 $bf
	rst GetHLinHL                                          ; $7064: $cf
	ld sp, hl                                        ; $7065: $f9
	add a                                            ; $7066: $87
	cp $fc                                           ; $7067: $fe $fc
	or $e0                                           ; $7069: $f6 $e0
	db $eb                                           ; $706b: $eb
	db $db                                           ; $706c: $db
	adc a                                            ; $706d: $8f
	rst SubAFromDE                                          ; $706e: $df
	cp $f5                                           ; $706f: $fe $f5
	pop hl                                           ; $7071: $e1
	rst AddAOntoHL                                          ; $7072: $ef
	rst SubAFromBC                                          ; $7073: $e7
	rst JumpTable                                          ; $7074: $c7
	rst $38                                          ; $7075: $ff
	inc a                                            ; $7076: $3c
	cp $fd                                           ; $7077: $fe $fd
	rst FarCall                                          ; $7079: $f7
	rst AddAOntoHL                                          ; $707a: $ef

jr_015_707b:
	xor $dc                                          ; $707b: $ee $dc
	ld hl, sp-$20                                    ; $707d: $f8 $e0
	ld sp, hl                                        ; $707f: $f9
	sbc e                                            ; $7080: $9b
	cp a                                             ; $7081: $bf
	rst JumpTable                                          ; $7082: $c7
	ccf                                              ; $7083: $3f
	rrca                                             ; $7084: $0f
	sbc $fe                                          ; $7085: $de $fe
	ld a, [hl]                                       ; $7087: $7e
	ld l, d                                          ; $7088: $6a
	ld a, l                                          ; $7089: $7d
	jp hl                                            ; $708a: $e9


	ld a, c                                          ; $708b: $79
	xor $95                                          ; $708c: $ee $95
	dec e                                            ; $708e: $1d
	inc c                                            ; $708f: $0c
	rst $38                                          ; $7090: $ff
	rst $38                                          ; $7091: $ff
	db $fd                                           ; $7092: $fd
	db $fc                                           ; $7093: $fc
	dec b                                            ; $7094: $05
	ld bc, $0603                                     ; $7095: $01 $03 $06
	ld sp, hl                                        ; $7098: $f9
	sbc c                                            ; $7099: $99
	db $ec                                           ; $709a: $ec
	db $e4                                           ; $709b: $e4
	rst $38                                          ; $709c: $ff
	sbc c                                            ; $709d: $99
	ld e, [hl]                                       ; $709e: $5e
	ld sp, hl                                        ; $709f: $f9
	db $dd                                           ; $70a0: $dd
	rst $38                                          ; $70a1: $ff
	sub e                                            ; $70a2: $93
	db $e3                                           ; $70a3: $e3
	rst FarCall                                          ; $70a4: $f7
	or l                                             ; $70a5: $b5
	ld b, $01                                        ; $70a6: $06 $01
	nop                                              ; $70a8: $00
	ldh a, [$f8]                                     ; $70a9: $f0 $f8
	call c, $c3ce                                    ; $70ab: $dc $ce $c3
	add c                                            ; $70ae: $81
	rst FarCall                                          ; $70af: $f7
	adc a                                            ; $70b0: $8f
	ld a, $ff                                        ; $70b1: $3e $ff
	and h                                            ; $70b3: $a4
	or $fd                                           ; $70b4: $f6 $fd
	ret                                              ; $70b6: $c9


	pop af                                           ; $70b7: $f1
	jr jr_015_707b                                   ; $70b8: $18 $c1

	add b                                            ; $70ba: $80
	db $db                                           ; $70bb: $db
	add hl, hl                                       ; $70bc: $29
	ld h, b                                          ; $70bd: $60
	ld [hl], $1e                                     ; $70be: $36 $1e
	rst JumpTable                                          ; $70c0: $c7
	ld [hl], e                                       ; $70c1: $73
	ld c, h                                          ; $70c2: $4c
	sbc h                                            ; $70c3: $9c
	ret nz                                           ; $70c4: $c0

	ldh [rAUD2LOW], a                                ; $70c5: $e0 $18
	ld sp, hl                                        ; $70c7: $f9
	ld a, l                                          ; $70c8: $7d
	inc l                                            ; $70c9: $2c
	adc c                                            ; $70ca: $89
	inc de                                           ; $70cb: $13
	cp b                                             ; $70cc: $b8
	ld a, [hl]                                       ; $70cd: $7e
	rst GetHLinHL                                          ; $70ce: $cf
	ld [hl], a                                       ; $70cf: $77
	rst SubAFromDE                                          ; $70d0: $df
	cp a                                             ; $70d1: $bf
	ld e, a                                          ; $70d2: $5f
	db $fc                                           ; $70d3: $fc
	ld [hl], a                                       ; $70d4: $77
	cp c                                             ; $70d5: $b9
	ld [hl], h                                       ; $70d6: $74
	db $eb                                           ; $70d7: $eb
	ldh [$7f], a                                     ; $70d8: $e0 $7f
	rra                                              ; $70da: $1f
	ld a, $3e                                        ; $70db: $3e $3e
	ld h, a                                          ; $70dd: $67
	ld h, e                                          ; $70de: $63
	ld b, b                                          ; $70df: $40
	ret nz                                           ; $70e0: $c0

	ld sp, hl                                        ; $70e1: $f9
	add a                                            ; $70e2: $87
	and e                                            ; $70e3: $a3
	rst AddAOntoHL                                          ; $70e4: $ef
	xor [hl]                                         ; $70e5: $ae
	or $f6                                           ; $70e6: $f6 $f6
	ld [hl], e                                       ; $70e8: $73
	cp a                                             ; $70e9: $bf
	sbc $da                                          ; $70ea: $de $da
	sub l                                            ; $70ec: $95
	di                                               ; $70ed: $f3
	xor b                                            ; $70ee: $a8
	sbc c                                            ; $70ef: $99
	call z, $a760                                    ; $70f0: $cc $60 $a7
	add e                                            ; $70f3: $83
	jp Jump_015_4041                                 ; $70f4: $c3 $41 $40


	ld h, b                                          ; $70f7: $60
	or b                                             ; $70f8: $b0
	ret c                                            ; $70f9: $d8

	ld a, b                                          ; $70fa: $78
	ld sp, hl                                        ; $70fb: $f9
	ld a, a                                          ; $70fc: $7f
	push hl                                          ; $70fd: $e5
	sbc [hl]                                         ; $70fe: $9e
	ld l, a                                          ; $70ff: $6f
	ld [hl], a                                       ; $7100: $77
	ld de, $fe7f                                     ; $7101: $11 $7f $fe
	ld a, [hl]                                       ; $7104: $7e
	daa                                              ; $7105: $27
	sbc [hl]                                         ; $7106: $9e
	rst AddAOntoHL                                          ; $7107: $ef
	sbc $7f                                          ; $7108: $de $7f
	ld a, a                                          ; $710a: $7f
	rst FarCall                                          ; $710b: $f7
	ld a, [hl]                                       ; $710c: $7e
	db $fd                                           ; $710d: $fd
	sbc [hl]                                         ; $710e: $9e
	sbc a                                            ; $710f: $9f
	ld [hl], a                                       ; $7110: $77
	ldh a, [$f9]                                     ; $7111: $f0 $f9
	add a                                            ; $7113: $87
	rst AddAOntoHL                                          ; $7114: $ef
	ld a, [$70ff]                                    ; $7115: $fa $ff $70
	or b                                             ; $7118: $b0
	rst AddAOntoHL                                          ; $7119: $ef
	xor $f9                                          ; $711a: $ee $f9
	ld b, a                                          ; $711c: $47
	ld l, a                                          ; $711d: $6f
	ld h, b                                          ; $711e: $60
	adc a                                            ; $711f: $8f
	rst SubAFromDE                                          ; $7120: $df
	sub [hl]                                         ; $7121: $96
	db $dd                                           ; $7122: $dd
	rst FarCall                                          ; $7123: $f7
	xor a                                            ; $7124: $af
	add c                                            ; $7125: $81
	add b                                            ; $7126: $80
	ldh [$a0], a                                     ; $7127: $e0 $a0
	ldh [$e3], a                                     ; $7129: $e0 $e3
	rst AddAOntoHL                                          ; $712b: $ef
	ld sp, hl                                        ; $712c: $f9
	sbc e                                            ; $712d: $9b
	add a                                            ; $712e: $87
	rst AddAOntoHL                                          ; $712f: $ef
	rst $38                                          ; $7130: $ff
	cp a                                             ; $7131: $bf
	ld a, c                                          ; $7132: $79
	ret z                                            ; $7133: $c8

	sub e                                            ; $7134: $93
	ld a, a                                          ; $7135: $7f
	ld a, [hl]                                       ; $7136: $7e
	ld a, h                                          ; $7137: $7c
	inc hl                                           ; $7138: $23
	add e                                            ; $7139: $83
	cp a                                             ; $713a: $bf
	ccf                                              ; $713b: $3f
	cp a                                             ; $713c: $bf
	rst $38                                          ; $713d: $ff
	add c                                            ; $713e: $81
	add e                                            ; $713f: $83
	rst SubAFromDE                                          ; $7140: $df
	ld a, c                                          ; $7141: $79
	add a                                            ; $7142: $87
	ld e, [hl]                                       ; $7143: $5e
	ret nz                                           ; $7144: $c0

	rst SubAFromDE                                          ; $7145: $df
	cp a                                             ; $7146: $bf
	ld a, a                                          ; $7147: $7f
	rrca                                             ; $7148: $0f
	sub [hl]                                         ; $7149: $96
	rst AddAOntoHL                                          ; $714a: $ef
	ld [hl], a                                       ; $714b: $77
	cp a                                             ; $714c: $bf
	rst $38                                          ; $714d: $ff
	ld e, l                                          ; $714e: $5d
	push de                                          ; $714f: $d5
	pop de                                           ; $7150: $d1
	db $fd                                           ; $7151: $fd
	di                                               ; $7152: $f3
	ld a, e                                          ; $7153: $7b
	jr @-$63                                         ; $7154: $18 $9b

	db $e3                                           ; $7156: $e3
	db $eb                                           ; $7157: $eb
	rst AddAOntoHL                                          ; $7158: $ef
	pop hl                                           ; $7159: $e1
	ld d, [hl]                                       ; $715a: $56
	ld h, b                                          ; $715b: $60
	ld a, [hl]                                       ; $715c: $7e
	ld de, $586d                                     ; $715d: $11 $6d $58
	sbc d                                            ; $7160: $9a
	cpl                                              ; $7161: $2f
	db $10                                           ; $7162: $10
	db $10                                           ; $7163: $10
	pop de                                           ; $7164: $d1
	db $ed                                           ; $7165: $ed
	sbc $e0                                          ; $7166: $de $e0
	sbc [hl]                                         ; $7168: $9e
	ldh a, [$7b]                                     ; $7169: $f0 $7b
	and d                                            ; $716b: $a2
	ld a, l                                          ; $716c: $7d
	ei                                               ; $716d: $fb
	ld e, d                                          ; $716e: $5a
	ld b, b                                          ; $716f: $40
	sbc l                                            ; $7170: $9d
	rst $38                                          ; $7171: $ff
	ld hl, sp-$22                                    ; $7172: $f8 $de
	rst $38                                          ; $7174: $ff
	rst SubAFromDE                                          ; $7175: $df
	ld sp, hl                                        ; $7176: $f9
	rst SubAFromDE                                          ; $7177: $df
	ret z                                            ; $7178: $c8

	rst SubAFromDE                                          ; $7179: $df
	rst GetHLinHL                                          ; $717a: $cf
	ld l, a                                          ; $717b: $6f
	db $fc                                           ; $717c: $fc
	ld [hl], a                                       ; $717d: $77
	ld a, [$cfdf]                                    ; $717e: $fa $df $cf
	reti                                             ; $7181: $d9


	ccf                                              ; $7182: $3f
	sbc h                                            ; $7183: $9c
	xor a                                            ; $7184: $af
	rst $38                                          ; $7185: $ff
	ld [hl], c                                       ; $7186: $71
	ld [hl], h                                       ; $7187: $74
	ld a, a                                          ; $7188: $7f
	sub l                                            ; $7189: $95
	add a                                            ; $718a: $87
	ld [hl], c                                       ; $718b: $71
	ld d, c                                          ; $718c: $51
	rst SubAFromDE                                          ; $718d: $df
	rst SubAFromDE                                          ; $718e: $df
	ld hl, $ff01                                     ; $718f: $21 $01 $ff
	cp $21                                           ; $7192: $fe $21
	sbc $51                                          ; $7194: $de $51
	sbc $ff                                          ; $7196: $de $ff
	ld e, c                                          ; $7198: $59
	db $d3                                           ; $7199: $d3
	ld [hl], h                                       ; $719a: $74
	sub a                                            ; $719b: $97
	ld a, [hl]                                       ; $719c: $7e
	adc $9e                                          ; $719d: $ce $9e
	rra                                              ; $719f: $1f
	ld a, e                                          ; $71a0: $7b
	ld sp, hl                                        ; $71a1: $f9
	sbc [hl]                                         ; $71a2: $9e
	ld c, $7b                                        ; $71a3: $0e $7b
	db $fc                                           ; $71a5: $fc
	ld a, a                                          ; $71a6: $7f
	ld hl, sp-$63                                    ; $71a7: $f8 $9d
	nop                                              ; $71a9: $00
	rra                                              ; $71aa: $1f
	push de                                          ; $71ab: $d5
	rst $38                                          ; $71ac: $ff
	ld a, a                                          ; $71ad: $7f
	rst SubAFromHL                                          ; $71ae: $d7
	ld a, h                                          ; $71af: $7c
	inc h                                            ; $71b0: $24
	rst SubAFromDE                                          ; $71b1: $df
	rst $38                                          ; $71b2: $ff
	sbc h                                            ; $71b3: $9c
	jr c, @+$7e                                      ; $71b4: $38 $7c

	ld de, $f97b                                     ; $71b6: $11 $7b $f9
	rst SubAFromDE                                          ; $71b9: $df
	db $10                                           ; $71ba: $10
	ld a, l                                          ; $71bb: $7d
	sub d                                            ; $71bc: $92
	sbc e                                            ; $71bd: $9b
	db $10                                           ; $71be: $10
	ld de, $f111                                     ; $71bf: $11 $11 $f1
	sbc $ff                                          ; $71c2: $de $ff
	ld a, c                                          ; $71c4: $79
	ld [hl], h                                       ; $71c5: $74
	db $db                                           ; $71c6: $db
	rst $38                                          ; $71c7: $ff
	ld a, a                                          ; $71c8: $7f
	ld h, d                                          ; $71c9: $62
	ld [hl], h                                       ; $71ca: $74
	push af                                          ; $71cb: $f5
	sbc b                                            ; $71cc: $98
	ld de, $c139                                     ; $71cd: $11 $39 $c1
	ld b, c                                          ; $71d0: $41
	ld a, a                                          ; $71d1: $7f
	ld a, a                                          ; $71d2: $7f
	add c                                            ; $71d3: $81
	ld a, b                                          ; $71d4: $78
	call z, $819e                                    ; $71d5: $cc $9e $81
	sbc $41                                          ; $71d8: $de $41
	db $d3                                           ; $71da: $d3
	rst $38                                          ; $71db: $ff
	ld a, l                                          ; $71dc: $7d
	and l                                            ; $71dd: $a5
	rst SubAFromDE                                          ; $71de: $df
	rst $38                                          ; $71df: $ff
	sub c                                            ; $71e0: $91
	jp $cee7                                         ; $71e1: $c3 $e7 $ce


	ld c, b                                          ; $71e4: $48
	ld a, [hl]                                       ; $71e5: $7e
	ld a, [hl]                                       ; $71e6: $7e
	ld b, d                                          ; $71e7: $42
	ld b, d                                          ; $71e8: $42
	ld a, [hl]                                       ; $71e9: $7e
	ld a, [hl]                                       ; $71ea: $7e
	adc $48                                          ; $71eb: $ce $48

jr_015_71ed:
	ld c, [hl]                                       ; $71ed: $4e
	ld c, d                                          ; $71ee: $4a
	db $dd                                           ; $71ef: $dd
	ld a, [hl]                                       ; $71f0: $7e
	rst SubAFromHL                                          ; $71f1: $d7
	rst $38                                          ; $71f2: $ff
	sbc [hl]                                         ; $71f3: $9e
	add $de                                          ; $71f4: $c6 $de
	rst $38                                          ; $71f6: $ff
	rst SubAFromDE                                          ; $71f7: $df
	add [hl]                                         ; $71f8: $86
	sbc l                                            ; $71f9: $9d
	add $46                                          ; $71fa: $c6 $46
	ld [hl], a                                       ; $71fc: $77
	ld a, [$f27b]                                    ; $71fd: $fa $7b $f2
	sbc l                                            ; $7200: $9d
	ld b, [hl]                                       ; $7201: $46
	add $77                                          ; $7202: $c6 $77
	rst AddAOntoHL                                          ; $7204: $ef
	sub $ff                                          ; $7205: $d6 $ff
	sbc [hl]                                         ; $7207: $9e
	ld sp, $ffde                                     ; $7208: $31 $de $ff
	rst SubAFromDE                                          ; $720b: $df
	jr nc, jr_015_71ed                               ; $720c: $30 $df

	ld sp, $fa77                                     ; $720e: $31 $77 $fa
	ld a, e                                          ; $7211: $7b
	ldh a, [c]                                       ; $7212: $f2
	sbc $31                                          ; $7213: $de $31
	push de                                          ; $7215: $d5
	rst $38                                          ; $7216: $ff
	ld a, [hl]                                       ; $7217: $7e
	add c                                            ; $7218: $81
	ld a, l                                          ; $7219: $7d
	xor e                                            ; $721a: $ab
	rst SubAFromDE                                          ; $721b: $df
	rst $38                                          ; $721c: $ff
	ld a, [hl]                                       ; $721d: $7e
	db $ed                                           ; $721e: $ed
	sub e                                            ; $721f: $93
	ld b, a                                          ; $7220: $47
	ld b, l                                          ; $7221: $45
	db $fd                                           ; $7222: $fd
	db $fd                                           ; $7223: $fd
	jp nz, $ffc0                                     ; $7224: $c2 $c0 $ff

	cp a                                             ; $7227: $bf
	ld b, d                                          ; $7228: $42
	ld b, l                                          ; $7229: $45
	push bc                                          ; $722a: $c5
	push bc                                          ; $722b: $c5
	ld [hl], e                                       ; $722c: $73
	ld l, c                                          ; $722d: $69
	ret c                                            ; $722e: $d8

	rst $38                                          ; $722f: $ff
	sbc [hl]                                         ; $7230: $9e
	ld b, $de                                        ; $7231: $06 $de
	rst $38                                          ; $7233: $ff
	sbc h                                            ; $7234: $9c
	ld b, h                                          ; $7235: $44
	db $e4                                           ; $7236: $e4
	ld b, $7b                                        ; $7237: $06 $7b
	ld sp, hl                                        ; $7239: $f9
	rst SubAFromDE                                          ; $723a: $df
	inc b                                            ; $723b: $04
	ld a, e                                          ; $723c: $7b
	ldh a, [c]                                       ; $723d: $f2
	sbc $06                                          ; $723e: $de $06
	db $d3                                           ; $7240: $d3
	rst $38                                          ; $7241: $ff
	ld a, e                                          ; $7242: $7b
	xor e                                            ; $7243: $ab
	ld a, e                                          ; $7244: $7b
	ld h, $77                                        ; $7245: $26 $77
	and h                                            ; $7247: $a4
	ld a, e                                          ; $7248: $7b
	jr nz, jr_015_72c6                               ; $7249: $20 $7b

	sbc h                                            ; $724b: $9c
	ld [hl], a                                       ; $724c: $77
	or $d5                                           ; $724d: $f6 $d5
	rst $38                                          ; $724f: $ff
	halt                                             ; $7250: $76
	ld [hl], c                                       ; $7251: $71
	rst SubAFromDE                                          ; $7252: $df
	ld b, b                                          ; $7253: $40
	sbc l                                            ; $7254: $9d
	pop hl                                           ; $7255: $e1
	and c                                            ; $7256: $a1
	ld [hl], a                                       ; $7257: $77
	ld a, [$f27b]                                    ; $7258: $fa $7b $f2
	sbc l                                            ; $725b: $9d
	and c                                            ; $725c: $a1
	pop hl                                           ; $725d: $e1
	ld [hl], d                                       ; $725e: $72
	ld h, b                                          ; $725f: $60
	reti                                             ; $7260: $d9


	rst $38                                          ; $7261: $ff
	sbc h                                            ; $7262: $9c
	push af                                          ; $7263: $f5
	rst $38                                          ; $7264: $ff
	adc [hl]                                         ; $7265: $8e
	sbc $ff                                          ; $7266: $de $ff
	sbc b                                            ; $7268: $98
	ret nz                                           ; $7269: $c0

	pop hl                                           ; $726a: $e1
	adc [hl]                                         ; $726b: $8e
	adc d                                            ; $726c: $8a
	ei                                               ; $726d: $fb
	ei                                               ; $726e: $fb
	add h                                            ; $726f: $84
	ld a, b                                          ; $7270: $78
	cp h                                             ; $7271: $bc
	sbc [hl]                                         ; $7272: $9e
	add h                                            ; $7273: $84
	sbc $8a                                          ; $7274: $de $8a
	db $d3                                           ; $7276: $d3
	rst $38                                          ; $7277: $ff
	ld a, h                                          ; $7278: $7c
	ld b, l                                          ; $7279: $45
	rst SubAFromDE                                          ; $727a: $df
	rst $38                                          ; $727b: $ff
	sbc c                                            ; $727c: $99
	adc a                                            ; $727d: $8f
	rst GetHLinHL                                          ; $727e: $cf
	add hl, bc                                       ; $727f: $09
	add hl, bc                                       ; $7280: $09
	ld sp, hl                                        ; $7281: $f9
	ld sp, hl                                        ; $7282: $f9
	ld l, a                                          ; $7283: $6f
	db $fc                                           ; $7284: $fc
	ld [hl], a                                       ; $7285: $77
	ld a, [$f9df]                                    ; $7286: $fa $df $f9
	rst SubAFromHL                                          ; $7289: $d7
	cp $cb                                           ; $728a: $fe $cb
	rst $38                                          ; $728c: $ff
	ld h, c                                          ; $728d: $61
	and b                                            ; $728e: $a0
	sbc [hl]                                         ; $728f: $9e
	db $fd                                           ; $7290: $fd
	ld a, b                                          ; $7291: $78
	ld d, b                                          ; $7292: $50
	sbc [hl]                                         ; $7293: $9e
	db $fd                                           ; $7294: $fd
	ld a, b                                          ; $7295: $78
	ld c, d                                          ; $7296: $4a
	rst SubAFromDE                                          ; $7297: $df
	rst GetHLinHL                                          ; $7298: $cf
	ld [hl], d                                       ; $7299: $72
	ld c, e                                          ; $729a: $4b
	halt                                             ; $729b: $76
	or d                                             ; $729c: $b2
	ld d, a                                          ; $729d: $57
	ldh [$7d], a                                     ; $729e: $e0 $7d
	ld h, d                                          ; $72a0: $62
	sbc l                                            ; $72a1: $9d
	db $fc                                           ; $72a2: $fc
	cp $77                                           ; $72a3: $fe $77
	rst SubAFromBC                                          ; $72a5: $e7
	sbc [hl]                                         ; $72a6: $9e
	sub a                                            ; $72a7: $97
	ld a, e                                          ; $72a8: $7b
	ld c, $7f                                        ; $72a9: $0e $7f
	ld sp, hl                                        ; $72ab: $f9
	ld a, c                                          ; $72ac: $79
	sub [hl]                                         ; $72ad: $96
	ld c, e                                          ; $72ae: $4b
	ldh [rPCM12], a                                  ; $72af: $e0 $76
	ld d, h                                          ; $72b1: $54
	ld a, h                                          ; $72b2: $7c
	db $fc                                           ; $72b3: $fc
	sbc l                                            ; $72b4: $9d
	cp a                                             ; $72b5: $bf
	db $ec                                           ; $72b6: $ec
	call c, $9cff                                    ; $72b7: $dc $ff $9c
	ld a, a                                          ; $72ba: $7f
	cp $f7                                           ; $72bb: $fe $f7
	ld b, a                                          ; $72bd: $47
	ldh [hDisp1_WX], a                                     ; $72be: $e0 $96
	db $fd                                           ; $72c0: $fd
	cp a                                             ; $72c1: $bf
	db $fd                                           ; $72c2: $fd
	cp a                                             ; $72c3: $bf
	ei                                               ; $72c4: $fb
	db $eb                                           ; $72c5: $eb

jr_015_72c6:
	add a                                            ; $72c6: $87
	rst $38                                          ; $72c7: $ff
	sbc [hl]                                         ; $72c8: $9e
	halt                                             ; $72c9: $76
	call $f59c                                       ; $72ca: $cd $9c $f5
	ld a, [hl]                                       ; $72cd: $7e
	xor $3f                                          ; $72ce: $ee $3f
	ret nz                                           ; $72d0: $c0

	sbc h                                            ; $72d1: $9c
	rst SubAFromDE                                          ; $72d2: $df
	rst JumpTable                                          ; $72d3: $c7
	ld b, a                                          ; $72d4: $47
	sbc $f7                                          ; $72d5: $de $f7
	sbc $ff                                          ; $72d7: $de $ff
	sbc e                                            ; $72d9: $9b
	ei                                               ; $72da: $fb
	cp [hl]                                          ; $72db: $be
	ld [$6e08], a                                    ; $72dc: $ea $08 $6e
	xor b                                            ; $72df: $a8

jr_015_72e0:
	rst SubAFromDE                                          ; $72e0: $df
	rst FarCall                                          ; $72e1: $f7
	sbc [hl]                                         ; $72e2: $9e
	ld h, a                                          ; $72e3: $67
	ld sp, hl                                        ; $72e4: $f9
	sbc d                                            ; $72e5: $9a
	or $ce                                           ; $72e6: $f6 $ce
	ld b, a                                          ; $72e8: $47
	ei                                               ; $72e9: $fb
	rst SubAFromDE                                          ; $72ea: $df
	ld [hl], e                                       ; $72eb: $73
	adc c                                            ; $72ec: $89
	sbc e                                            ; $72ed: $9b
	cp a                                             ; $72ee: $bf
	call nz, $8720                                   ; $72ef: $c4 $20 $87
	ld a, e                                          ; $72f2: $7b
	ld d, h                                          ; $72f3: $54
	ld a, e                                          ; $72f4: $7b
	ret c                                            ; $72f5: $d8

	ld [hl], a                                       ; $72f6: $77
	ldh a, [$63]                                     ; $72f7: $f0 $63
	ret nz                                           ; $72f9: $c0

	rst SubAFromDE                                          ; $72fa: $df
	ld a, a                                          ; $72fb: $7f
	ld a, c                                          ; $72fc: $79
	dec e                                            ; $72fd: $1d
	sbc h                                            ; $72fe: $9c
	cp a                                             ; $72ff: $bf
	add b                                            ; $7300: $80
	jr jr_015_72e0                                   ; $7301: $18 $dd

	ld hl, sp-$62                                    ; $7303: $f8 $9e
	db $fc                                           ; $7305: $fc
	ld a, d                                          ; $7306: $7a
	ld d, [hl]                                       ; $7307: $56
	sbc c                                            ; $7308: $99
	ret nz                                           ; $7309: $c0

	add b                                            ; $730a: $80
	ret nz                                           ; $730b: $c0

	ret nc                                           ; $730c: $d0

	ret nz                                           ; $730d: $c0

	ldh [$63], a                                     ; $730e: $e0 $63
	ldh [rLYC], a                                    ; $7310: $e0 $45
	adc b                                            ; $7312: $88
	add a                                            ; $7313: $87
	db $fc                                           ; $7314: $fc
	cp $ff                                           ; $7315: $fe $ff
	cp $fe                                           ; $7317: $fe $fe
	db $fd                                           ; $7319: $fd
	rst $38                                          ; $731a: $ff
	ld h, e                                          ; $731b: $63
	rrca                                             ; $731c: $0f
	dec c                                            ; $731d: $0d
	ld b, $07                                        ; $731e: $06 $07
	rlca                                             ; $7320: $07
	rrca                                             ; $7321: $0f
	rst GetHLinHL                                          ; $7322: $cf
	cp $03                                           ; $7323: $fe $03
	inc bc                                           ; $7325: $03
	nop                                              ; $7326: $00
	ld bc, $0201                                     ; $7327: $01 $01 $02
	nop                                              ; $732a: $00
	db $dd                                           ; $732b: $dd
	ld sp, hl                                        ; $732c: $f9
	rst SubAFromDE                                          ; $732d: $df
	rst $38                                          ; $732e: $ff
	sub c                                            ; $732f: $91
	ccf                                              ; $7330: $3f
	cp $ff                                           ; $7331: $fe $ff
	ld h, e                                          ; $7333: $63
	db $fc                                           ; $7334: $fc
	db $db                                           ; $7335: $db
	rra                                              ; $7336: $1f
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	inc bc                                           ; $7339: $03
	dec b                                            ; $733a: $05
	db $fc                                           ; $733b: $fc
	rst $38                                          ; $733c: $ff
	ei                                               ; $733d: $fb
	sbc $ff                                          ; $733e: $de $ff
	sbc d                                            ; $7340: $9a
	db $fd                                           ; $7341: $fd
	ei                                               ; $7342: $fb
	inc bc                                           ; $7343: $03
	rst $38                                          ; $7344: $ff
	db $e3                                           ; $7345: $e3
	ld sp, hl                                        ; $7346: $f9
	ld a, a                                          ; $7347: $7f
	db $e3                                           ; $7348: $e3
	adc c                                            ; $7349: $89
	ld a, c                                          ; $734a: $79
	cp $f5                                           ; $734b: $fe $f5
	ccf                                              ; $734d: $3f
	xor l                                            ; $734e: $ad
	ccf                                              ; $734f: $3f
	pop af                                           ; $7350: $f1
	db $fc                                           ; $7351: $fc
	add a                                            ; $7352: $87
	db $e3                                           ; $7353: $e3
	cp a                                             ; $7354: $bf
	push bc                                          ; $7355: $c5
	ei                                               ; $7356: $fb
	ld a, [hl]                                       ; $7357: $7e
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	ld hl, sp+$1d                                    ; $735a: $f8 $1d
	ld bc, $c7fb                                     ; $735c: $01 $fb $c7
	ld a, a                                          ; $735f: $7f
	ld sp, hl                                        ; $7360: $f9
	add a                                            ; $7361: $87
	ld a, e                                          ; $7362: $7b
	db $fd                                           ; $7363: $fd
	call c, $ffe4                                    ; $7364: $dc $e4 $ff
	cp e                                             ; $7367: $bb
	jp z, $fcff                                      ; $7368: $ca $ff $fc

	inc de                                           ; $736b: $13
	db $e3                                           ; $736c: $e3
	db $fd                                           ; $736d: $fd
	push bc                                          ; $736e: $c5
	db $fc                                           ; $736f: $fc
	rst FarCall                                          ; $7370: $f7
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	xor $ff                                          ; $7373: $ee $ff
	pop bc                                           ; $7375: $c1
	ei                                               ; $7376: $fb
	jp rIE                                         ; $7377: $c3 $ff $ff


	ld h, e                                          ; $737a: $63
	and b                                            ; $737b: $a0
	adc b                                            ; $737c: $88
	ld a, a                                          ; $737d: $7f
	ld hl, sp-$01                                    ; $737e: $f8 $ff
	ld e, a                                          ; $7380: $5f
	cp e                                             ; $7381: $bb
	sbc a                                            ; $7382: $9f
	rst $38                                          ; $7383: $ff
	ld l, $80                                        ; $7384: $2e $80
	rst JumpTable                                          ; $7386: $c7
	rlca                                             ; $7387: $07
	cp b                                             ; $7388: $b8
	rst $38                                          ; $7389: $ff
	cp $f3                                           ; $738a: $fe $f3
	pop de                                           ; $738c: $d1
	ccf                                              ; $738d: $3f
	nop                                              ; $738e: $00
	ld hl, sp-$79                                    ; $738f: $f8 $87
	db $fc                                           ; $7391: $fc
	rst $38                                          ; $7392: $ff
	db $fc                                           ; $7393: $fc
	ld sp, hl                                        ; $7394: $f9
	add a                                            ; $7395: $87
	db $db                                           ; $7396: $db
	sub a                                            ; $7397: $97
	rst SubAFromHL                                          ; $7398: $d7
	rst SubAFromDE                                          ; $7399: $df
	db $eb                                           ; $739a: $eb
	cp [hl]                                          ; $739b: $be
	cp $03                                           ; $739c: $fe $03
	ld [hl], a                                       ; $739e: $77
	ld a, a                                          ; $739f: $7f
	xor a                                            ; $73a0: $af
	or a                                             ; $73a1: $b7
	ld a, a                                          ; $73a2: $7f
	rst $38                                          ; $73a3: $ff
	rrca                                             ; $73a4: $0f
	rst $38                                          ; $73a5: $ff
	adc a                                            ; $73a6: $8f
	rst JumpTable                                          ; $73a7: $c7
	ld a, a                                          ; $73a8: $7f
	ld l, a                                          ; $73a9: $6f
	rst $38                                          ; $73aa: $ff
	ld a, a                                          ; $73ab: $7f
	rst $38                                          ; $73ac: $ff
	rra                                              ; $73ad: $1f
	ld sp, hl                                        ; $73ae: $f9
	adc b                                            ; $73af: $88
	call $fe7f                                       ; $73b0: $cd $7f $fe
	ld a, c                                          ; $73b3: $79
	ld a, a                                          ; $73b4: $7f
	db $fd                                           ; $73b5: $fd
	rra                                              ; $73b6: $1f
	and c                                            ; $73b7: $a1
	di                                               ; $73b8: $f3
	pop af                                           ; $73b9: $f1
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
	sub e                                            ; $73bc: $93
	ld e, a                                          ; $73bd: $5f
	rst $38                                          ; $73be: $ff
	cp $3b                                           ; $73bf: $fe $3b
	rst $38                                          ; $73c1: $ff
	pop hl                                           ; $73c2: $e1
	rst $38                                          ; $73c3: $ff
	rst AddAOntoHL                                          ; $73c4: $ef
	and b                                            ; $73c5: $a0
	ldh [$63], a                                     ; $73c6: $e0 $63
	add b                                            ; $73c8: $80
	ld a, a                                          ; $73c9: $7f
	xor $de                                          ; $73ca: $ee $de
	rst $38                                          ; $73cc: $ff
	sbc [hl]                                         ; $73cd: $9e
	xor $77                                          ; $73ce: $ee $77
	ei                                               ; $73d0: $fb
	rst SubAFromDE                                          ; $73d1: $df
	rst $38                                          ; $73d2: $ff
	sbc e                                            ; $73d3: $9b
	rst SubAFromBC                                          ; $73d4: $e7
	ld a, a                                          ; $73d5: $7f
	cp a                                             ; $73d6: $bf
	ccf                                              ; $73d7: $3f
	db $db                                           ; $73d8: $db
	rst $38                                          ; $73d9: $ff
	rst SubAFromDE                                          ; $73da: $df
	ld a, a                                          ; $73db: $7f
	ld sp, hl                                        ; $73dc: $f9
	sbc c                                            ; $73dd: $99
	rst FarCall                                          ; $73de: $f7
	rst AddAOntoHL                                          ; $73df: $ef
	rst $38                                          ; $73e0: $ff
	rst FarCall                                          ; $73e1: $f7
	ret c                                            ; $73e2: $d8

	rst $38                                          ; $73e3: $ff
	ld a, d                                          ; $73e4: $7a
	cp $df                                           ; $73e5: $fe $df
	rst $38                                          ; $73e7: $ff
	rst SubAFromDE                                          ; $73e8: $df
	rst AddAOntoHL                                          ; $73e9: $ef
	ld a, e                                          ; $73ea: $7b
	and a                                            ; $73eb: $a7
	reti                                             ; $73ec: $d9


	rst $38                                          ; $73ed: $ff
	ld sp, hl                                        ; $73ee: $f9
	sub h                                            ; $73ef: $94
	rst JumpTable                                          ; $73f0: $c7
	jp $ff91                                         ; $73f1: $c3 $91 $ff


	cp a                                             ; $73f4: $bf
	rst $38                                          ; $73f5: $ff
	ld e, a                                          ; $73f6: $5f
	rst SubAFromDE                                          ; $73f7: $df
	ld hl, sp-$04                                    ; $73f8: $f8 $fc
	ld l, [hl]                                       ; $73fa: $6e
	ld a, d                                          ; $73fb: $7a
	push af                                          ; $73fc: $f5
	ld h, e                                          ; $73fd: $63
	ret nz                                           ; $73fe: $c0

	ld e, a                                          ; $73ff: $5f
	ld b, b                                          ; $7400: $40
	jp c, $9cff                                      ; $7401: $da $ff $9c

	rst GetHLinHL                                          ; $7404: $cf
	ret nz                                           ; $7405: $c0

	ret nz                                           ; $7406: $c0

	ld d, e                                          ; $7407: $53
	ld hl, sp-$22                                    ; $7408: $f8 $de
	ccf                                              ; $740a: $3f
	ld l, e                                          ; $740b: $6b
	ldh [$7b], a                                     ; $740c: $e0 $7b
	inc c                                            ; $740e: $0c
	sbc $ff                                          ; $740f: $de $ff
	sbc h                                            ; $7411: $9c
	db $fc                                           ; $7412: $fc
	ld bc, $6b0f                                     ; $7413: $01 $0f $6b
	ld hl, sp+$7e                                    ; $7416: $f8 $7e
	jp $ffdc                                         ; $7418: $c3 $dc $ff


jr_015_741b:
	sbc [hl]                                         ; $741b: $9e
	cp $6f                                           ; $741c: $fe $6f
	dec e                                            ; $741e: $1d

jr_015_741f:
	rst SubAFromDE                                          ; $741f: $df
	rst $38                                          ; $7420: $ff
	sbc [hl]                                         ; $7421: $9e
	rst SubAFromDE                                          ; $7422: $df
	ld l, a                                          ; $7423: $6f
	xor [hl]                                         ; $7424: $ae
	sbc l                                            ; $7425: $9d
	nop                                              ; $7426: $00
	ldh [rOCPD], a                                   ; $7427: $e0 $6b
	ld hl, sp-$62                                    ; $7429: $f8 $9e
	add b                                            ; $742b: $80
	jp c, Jump_015_6fff                              ; $742c: $da $ff $6f

	ld e, l                                          ; $742f: $5d
	rst SubAFromDE                                          ; $7430: $df
	rst $38                                          ; $7431: $ff
	sbc [hl]                                         ; $7432: $9e
	ld a, l                                          ; $7433: $7d
	call c, $9dff                                    ; $7434: $dc $ff $9d
	rst JumpTable                                          ; $7437: $c7
	db $10                                           ; $7438: $10
	ld l, a                                          ; $7439: $6f
	inc a                                            ; $743a: $3c
	ld a, a                                          ; $743b: $7f
	ld hl, sp-$62                                    ; $743c: $f8 $9e
	jr c, jr_015_741b                                ; $743e: $38 $db

	rst $38                                          ; $7440: $ff
	sbc l                                            ; $7441: $9d
	rst AddAOntoHL                                          ; $7442: $ef
	rst JumpTable                                          ; $7443: $c7
	ld d, e                                          ; $7444: $53
	add b                                            ; $7445: $80
	sbc [hl]                                         ; $7446: $9e
	cp $6b                                           ; $7447: $fe $6b
	push af                                          ; $7449: $f5
	ld h, a                                          ; $744a: $67
	ld hl, sp+$67                                    ; $744b: $f8 $67
	dec a                                            ; $744d: $3d
	sbc h                                            ; $744e: $9c
	ld a, a                                          ; $744f: $7f
	cp [hl]                                          ; $7450: $be
	rst SubAFromBC                                          ; $7451: $e7
	call c, $9dff                                    ; $7452: $dc $ff $9d

jr_015_7455:
	cp h                                             ; $7455: $bc
	pop bc                                           ; $7456: $c1
	db $db                                           ; $7457: $db
	rst $38                                          ; $7458: $ff
	sbc l                                            ; $7459: $9d
	inc a                                            ; $745a: $3c
	add b                                            ; $745b: $80
	ld a, d                                          ; $745c: $7a
	add e                                            ; $745d: $83
	ld [hl], e                                       ; $745e: $73
	and c                                            ; $745f: $a1
	sbc [hl]                                         ; $7460: $9e
	inc a                                            ; $7461: $3c
	ld l, e                                          ; $7462: $6b
	ret nz                                           ; $7463: $c0

	ld l, e                                          ; $7464: $6b
	inc c                                            ; $7465: $0c
	ld h, a                                          ; $7466: $67
	adc b                                            ; $7467: $88
	ld c, e                                          ; $7468: $4b
	ret nz                                           ; $7469: $c0

	ld e, d                                          ; $746a: $5a
	rst AddAOntoHL                                          ; $746b: $ef
	dec hl                                           ; $746c: $2b
	ldh [$9e], a                                     ; $746d: $e0 $9e
	halt                                             ; $746f: $76
	call c, $9cff                                    ; $7470: $dc $ff $9c
	sbc a                                            ; $7473: $9f
	nop                                              ; $7474: $00
	ld sp, hl                                        ; $7475: $f9
	ld l, e                                          ; $7476: $6b
	ld hl, sp-$62                                    ; $7477: $f8 $9e
	jr nz, jr_015_7455                               ; $7479: $20 $da

	rst $38                                          ; $747b: $ff
	sbc [hl]                                         ; $747c: $9e
	rst SubAFromDE                                          ; $747d: $df
	ld d, e                                          ; $747e: $53
	jr nz, jr_015_741f                               ; $747f: $20 $9e

	cp a                                             ; $7481: $bf
	ld l, e                                          ; $7482: $6b
	jr nz, jr_015_7504                               ; $7483: $20 $7f

	ld hl, sp-$62                                    ; $7485: $f8 $9e
	ld b, b                                          ; $7487: $40
	jp c, Jump_015_7fff                              ; $7488: $da $ff $7f

	or $73                                           ; $748b: $f6 $73
	ldh [hDisp1_WY], a                                     ; $748d: $e0 $95
	cp a                                             ; $748f: $bf
	cp $ef                                           ; $7490: $fe $ef
	rst FarCall                                          ; $7492: $f7
	rst FarCall                                          ; $7493: $f7
	db $fc                                           ; $7494: $fc
	cp $7f                                           ; $7495: $fe $7f
	rst $38                                          ; $7497: $ff
	rst GetHLinHL                                          ; $7498: $cf
	ld a, e                                          ; $7499: $7b
	ld b, e                                          ; $749a: $43
	ld a, c                                          ; $749b: $79
	and b                                            ; $749c: $a0
	rst SubAFromDE                                          ; $749d: $df
	cp $de                                           ; $749e: $fe $de
	rst $38                                          ; $74a0: $ff
	ld a, [hl]                                       ; $74a1: $7e
	sub d                                            ; $74a2: $92
	ld e, l                                          ; $74a3: $5d
	and b                                            ; $74a4: $a0
	sbc [hl]                                         ; $74a5: $9e
	di                                               ; $74a6: $f3
	call z, Call_015_5eff                            ; $74a7: $cc $ff $5e
	add b                                            ; $74aa: $80
	sbc [hl]                                         ; $74ab: $9e
	ld l, l                                          ; $74ac: $6d
	ld l, e                                          ; $74ad: $6b
	rst AddAOntoHL                                          ; $74ae: $ef
	ld l, e                                          ; $74af: $6b
	ret c                                            ; $74b0: $d8

	ld b, a                                          ; $74b1: $47
	and b                                            ; $74b2: $a0
	ld l, e                                          ; $74b3: $6b
	add b                                            ; $74b4: $80
	sbc h                                            ; $74b5: $9c
	ld a, c                                          ; $74b6: $79
	ld bc, $6be1                                     ; $74b7: $01 $e1 $6b
	ld hl, sp-$62                                    ; $74ba: $f8 $9e
	add c                                            ; $74bc: $81
	ld l, [hl]                                       ; $74bd: $6e
	ret c                                            ; $74be: $d8

	sbc l                                            ; $74bf: $9d
	cp $7e                                           ; $74c0: $fe $7e
	db $fc                                           ; $74c2: $fc
	sub l                                            ; $74c3: $95
	or d                                             ; $74c4: $b2
	add e                                            ; $74c5: $83
	inc sp                                           ; $74c6: $33
	ld a, a                                          ; $74c7: $7f
	ld h, a                                          ; $74c8: $67
	add e                                            ; $74c9: $83
	rst GetHLinHL                                          ; $74ca: $cf
	rst AddAOntoHL                                          ; $74cb: $ef
	rst $38                                          ; $74cc: $ff
	db $fd                                           ; $74cd: $fd
	ld [hl], l                                       ; $74ce: $75
	inc h                                            ; $74cf: $24
	sub l                                            ; $74d0: $95
	or e                                             ; $74d1: $b3
	ld a, a                                          ; $74d2: $7f
	ld c, l                                          ; $74d3: $4d
	ld a, a                                          ; $74d4: $7f
	rst GetHLinHL                                          ; $74d5: $cf
	add a                                            ; $74d6: $87
	sbc e                                            ; $74d7: $9b
	ld a, a                                          ; $74d8: $7f
	ld a, a                                          ; $74d9: $7f
	di                                               ; $74da: $f3
	ld h, e                                          ; $74db: $63
	add b                                            ; $74dc: $80
	ld a, [hl]                                       ; $74dd: $7e
	inc bc                                           ; $74de: $03
	ld [hl], d                                       ; $74df: $72
	db $dd                                           ; $74e0: $dd
	sbc b                                            ; $74e1: $98
	db $fd                                           ; $74e2: $fd
	rst GetHLinHL                                          ; $74e3: $cf
	ld sp, hl                                        ; $74e4: $f9
	or a                                             ; $74e5: $b7
	add hl, bc                                       ; $74e6: $09
	adc a                                            ; $74e7: $8f
	db $e4                                           ; $74e8: $e4
	halt                                             ; $74e9: $76
	db $db                                           ; $74ea: $db
	sbc l                                            ; $74eb: $9d
	ld hl, sp-$0a                                    ; $74ec: $f8 $f6
	ld a, e                                          ; $74ee: $7b
	dec c                                            ; $74ef: $0d
	ld e, a                                          ; $74f0: $5f
	ld h, b                                          ; $74f1: $60
	ld a, e                                          ; $74f2: $7b
	db $e3                                           ; $74f3: $e3
	sbc [hl]                                         ; $74f4: $9e
	rst AddAOntoHL                                          ; $74f5: $ef
	ld a, e                                          ; $74f6: $7b
	ld b, h                                          ; $74f7: $44
	ld a, c                                          ; $74f8: $79
	cp h                                             ; $74f9: $bc
	sbc e                                            ; $74fa: $9b
	add l                                            ; $74fb: $85
	and c                                            ; $74fc: $a1
	adc b                                            ; $74fd: $88
	cp e                                             ; $74fe: $bb
	ld [hl], e                                       ; $74ff: $73
	and l                                            ; $7500: $a5
	sbc l                                            ; $7501: $9d
	adc $c7                                          ; $7502: $ce $c7

jr_015_7504:
	ld l, [hl]                                       ; $7504: $6e
	ld h, e                                          ; $7505: $63
	halt                                             ; $7506: $76
	add b                                            ; $7507: $80
	ld a, a                                          ; $7508: $7f
	add c                                            ; $7509: $81
	sub h                                            ; $750a: $94
	db $fc                                           ; $750b: $fc
	ccf                                              ; $750c: $3f
	cp a                                             ; $750d: $bf
	rst $38                                          ; $750e: $ff
	db $fc                                           ; $750f: $fc
	sbc a                                            ; $7510: $9f
	db $fc                                           ; $7511: $fc
	add hl, de                                       ; $7512: $19
	call c, $af2f                                    ; $7513: $dc $2f $af
	ld [hl], e                                       ; $7516: $73
	add [hl]                                         ; $7517: $86
	sbc e                                            ; $7518: $9b
	inc a                                            ; $7519: $3c
	dec e                                            ; $751a: $1d
	rra                                              ; $751b: $1f
	ccf                                              ; $751c: $3f
	ld h, e                                          ; $751d: $63
	jr nz, @+$81                                     ; $751e: $20 $7f

	call nz, $ed77                                   ; $7520: $c4 $77 $ed
	rst SubAFromDE                                          ; $7523: $df
	rst $38                                          ; $7524: $ff
	sbc h                                            ; $7525: $9c
	push de                                          ; $7526: $d5
	add b                                            ; $7527: $80
	rst JumpTable                                          ; $7528: $c7
	ld [hl], e                                       ; $7529: $73
	ld d, a                                          ; $752a: $57
	sbc [hl]                                         ; $752b: $9e
	xor $6d                                          ; $752c: $ee $6d
	ld a, e                                          ; $752e: $7b
	ld l, l                                          ; $752f: $6d
	jp $c077                                         ; $7530: $c3 $77 $c0


	jp c, $9eff                                      ; $7533: $da $ff $9e

	db $db                                           ; $7536: $db
	jp c, Jump_015_69ff                              ; $7537: $da $ff $69

	ld a, a                                          ; $753a: $7f
	ld h, e                                          ; $753b: $63
	add b                                            ; $753c: $80
	add a                                            ; $753d: $87
	sbc a                                            ; $753e: $9f
	rrca                                             ; $753f: $0f
	cpl                                              ; $7540: $2f
	rlca                                             ; $7541: $07
	rst SubAFromBC                                          ; $7542: $e7
	or l                                             ; $7543: $b5
	pop af                                           ; $7544: $f1
	di                                               ; $7545: $f3
	ld h, a                                          ; $7546: $67
	rst FarCall                                          ; $7547: $f7
	rst FarCall                                          ; $7548: $f7
	rst $38                                          ; $7549: $ff
	dec de                                           ; $754a: $1b
	ld c, e                                          ; $754b: $4b
	rrca                                             ; $754c: $0f
	dec c                                            ; $754d: $0d
	ld h, a                                          ; $754e: $67
	rst FarCall                                          ; $754f: $f7
	rst SubAFromHL                                          ; $7550: $d7
	rst $38                                          ; $7551: $ff
	ei                                               ; $7552: $fb
	cp e                                             ; $7553: $bb
	rra                                              ; $7554: $1f
	dec e                                            ; $7555: $1d
	ld e, c                                          ; $7556: $59
	ld h, b                                          ; $7557: $60
	sbc d                                            ; $7558: $9a

jr_015_7559:
	ld a, a                                          ; $7559: $7f
	ld h, l                                          ; $755a: $65
	jr nz, jr_015_7559                               ; $755b: $20 $fc

	db $fc                                           ; $755d: $fc
	ld [hl], e                                       ; $755e: $73
	add [hl]                                         ; $755f: $86
	db $db                                           ; $7560: $db
	rst $38                                          ; $7561: $ff
	sbc [hl]                                         ; $7562: $9e
	adc a                                            ; $7563: $8f
	ld [hl], a                                       ; $7564: $77
	db $eb                                           ; $7565: $eb
	ld e, a                                          ; $7566: $5f
	ldh [$99], a                                     ; $7567: $e0 $99
	sbc a                                            ; $7569: $9f
	db $10                                           ; $756a: $10
	cp a                                             ; $756b: $bf
	db $fd                                           ; $756c: $fd
	dec h                                            ; $756d: $25
	ld b, l                                          ; $756e: $45
	call c, Call_015_7cff                            ; $756f: $dc $ff $7c
	jp $fc7a                                         ; $7572: $c3 $7a $fc


	sbc c                                            ; $7575: $99
	rst $38                                          ; $7576: $ff
	db $ed                                           ; $7577: $ed
	ld b, b                                          ; $7578: $40
	rst JumpTable                                          ; $7579: $c7
	cpl                                              ; $757a: $2f
	ld e, a                                          ; $757b: $5f
	ld e, e                                          ; $757c: $5b
	ret nz                                           ; $757d: $c0

	sbc h                                            ; $757e: $9c
	ld hl, sp-$10                                    ; $757f: $f8 $f0
	or a                                             ; $7581: $b7
	ld l, l                                          ; $7582: $6d
	cp h                                             ; $7583: $bc
	sbc l                                            ; $7584: $9d
	rst $38                                          ; $7585: $ff
	ld c, b                                          ; $7586: $48
	ld a, d                                          ; $7587: $7a
	xor d                                            ; $7588: $aa
	ld a, e                                          ; $7589: $7b
	rst GetHLinHL                                          ; $758a: $cf
	ld a, l                                          ; $758b: $7d
	ld [hl], $7f                                     ; $758c: $36 $7f
	ldh a, [$63]                                     ; $758e: $f0 $63
	ldh [$78], a                                     ; $7590: $e0 $78
	add $9a                                          ; $7592: $c6 $9a
	ld sp, hl                                        ; $7594: $f9
	db $e3                                           ; $7595: $e3
	ld l, a                                          ; $7596: $6f
	ld a, a                                          ; $7597: $7f
	dec a                                            ; $7598: $3d
	ld [hl], c                                       ; $7599: $71
	inc hl                                           ; $759a: $23
	sbc [hl]                                         ; $759b: $9e
	sub a                                            ; $759c: $97
	halt                                             ; $759d: $76
	jp nc, Jump_015_604a                             ; $759e: $d2 $4a $60

	ld a, a                                          ; $75a1: $7f
	pop hl                                           ; $75a2: $e1
	sbc [hl]                                         ; $75a3: $9e
	adc a                                            ; $75a4: $8f
	ld l, a                                          ; $75a5: $6f
	ld c, e                                          ; $75a6: $4b
	sbc l                                            ; $75a7: $9d

jr_015_75a8:
	cp $f0                                           ; $75a8: $fe $f0
	ld a, [hl-]                                      ; $75aa: $3a
	ld b, b                                          ; $75ab: $40
	sbc l                                            ; $75ac: $9d
	push de                                          ; $75ad: $d5
	jp hl                                            ; $75ae: $e9


	ld a, e                                          ; $75af: $7b
	db $e3                                           ; $75b0: $e3
	adc a                                            ; $75b1: $8f
	db $eb                                           ; $75b2: $eb
	db $fd                                           ; $75b3: $fd
	cp a                                             ; $75b4: $bf
	db $eb                                           ; $75b5: $eb
	sub $c3                                          ; $75b6: $d6 $c3
	jr nz, jr_015_7611                               ; $75b8: $20 $57

	call nc, $ff9e                                   ; $75ba: $d4 $9e $ff
	db $fc                                           ; $75bd: $fc
	rst $38                                          ; $75be: $ff
	db $fc                                           ; $75bf: $fc
	rst SubAFromDE                                          ; $75c0: $df
	xor h                                            ; $75c1: $ac
	ld a, e                                          ; $75c2: $7b
	cp d                                             ; $75c3: $ba
	ld sp, hl                                        ; $75c4: $f9
	sbc [hl]                                         ; $75c5: $9e
	daa                                              ; $75c6: $27
	sbc $ff                                          ; $75c7: $de $ff
	sbc l                                            ; $75c9: $9d
	db $eb                                           ; $75ca: $eb
	ld [hl], a                                       ; $75cb: $77
	ld a, d                                          ; $75cc: $7a
	ld a, [hl-]                                      ; $75cd: $3a
	sbc e                                            ; $75ce: $9b
	inc de                                           ; $75cf: $13
	ei                                               ; $75d0: $fb
	di                                               ; $75d1: $f3
	scf                                              ; $75d2: $37
	ld [hl], a                                       ; $75d3: $77
	nop                                              ; $75d4: $00
	sbc l                                            ; $75d5: $9d
	rst AddAOntoHL                                          ; $75d6: $ef
	ccf                                              ; $75d7: $3f
	ld [hl], e                                       ; $75d8: $73
	or d                                             ; $75d9: $b2
	ld h, e                                          ; $75da: $63
	and b                                            ; $75db: $a0
	sub l                                            ; $75dc: $95
	halt                                             ; $75dd: $76
	rst SubAFromDE                                          ; $75de: $df
	rst SubAFromDE                                          ; $75df: $df
	adc a                                            ; $75e0: $8f
	rst SubAFromDE                                          ; $75e1: $df
	or $ce                                           ; $75e2: $f6 $ce
	ld l, l                                          ; $75e4: $6d
	rst $38                                          ; $75e5: $ff
	rst SubAFromBC                                          ; $75e6: $e7
	halt                                             ; $75e7: $76
	or [hl]                                          ; $75e8: $b6
	sbc l                                            ; $75e9: $9d
	rst $38                                          ; $75ea: $ff
	sub [hl]                                         ; $75eb: $96
	ld c, e                                          ; $75ec: $4b
	and b                                            ; $75ed: $a0
	pop hl                                           ; $75ee: $e1
	ld l, b                                          ; $75ef: $68
	or e                                             ; $75f0: $b3
	ld [hl], a                                       ; $75f1: $77
	ld [$ffdf], sp                                   ; $75f2: $08 $df $ff
	sbc [hl]                                         ; $75f5: $9e
	db $f4                                           ; $75f6: $f4
	ld [hl], l                                       ; $75f7: $75
	cp h                                             ; $75f8: $bc
	ld a, a                                          ; $75f9: $7f
	cp c                                             ; $75fa: $b9
	sbc e                                            ; $75fb: $9b
	ld h, b                                          ; $75fc: $60
	dec bc                                           ; $75fd: $0b
	db $fd                                           ; $75fe: $fd
	db $fd                                           ; $75ff: $fd
	ld sp, hl                                        ; $7600: $f9
	sbc b                                            ; $7601: $98
	ccf                                              ; $7602: $3f
	rra                                              ; $7603: $1f
	rra                                              ; $7604: $1f
	inc sp                                           ; $7605: $33
	ld e, $03                                        ; $7606: $1e $03
	rrca                                             ; $7608: $0f
	ld h, [hl]                                       ; $7609: $66
	adc c                                            ; $760a: $89
	call c, $9eff                                    ; $760b: $dc $ff $9e
	db $fd                                           ; $760e: $fd
	ld a, d                                          ; $760f: $7a
	or d                                             ; $7610: $b2

jr_015_7611:
	cpl                                              ; $7611: $2f
	cp b                                             ; $7612: $b8
	ccf                                              ; $7613: $3f
	jr nz, jr_015_75a8                               ; $7614: $20 $92

	inc sp                                           ; $7616: $33
	ld [hl], e                                       ; $7617: $73
	ld h, e                                          ; $7618: $63
	ld h, e                                          ; $7619: $63
	add hl, sp                                       ; $761a: $39
	ld e, l                                          ; $761b: $5d
	ld sp, $ff17                                     ; $761c: $31 $17 $ff
	cp a                                             ; $761f: $bf
	cp a                                             ; $7620: $bf
	sbc a                                            ; $7621: $9f
	rst JumpTable                                          ; $7622: $c7
	ld [hl], l                                       ; $7623: $75
	sbc b                                            ; $7624: $98
	ld l, e                                          ; $7625: $6b
	ld hl, sp+$27                                    ; $7626: $f8 $27
	ret z                                            ; $7628: $c8

	jp c, $9eff                                      ; $7629: $da $ff $9e

	ei                                               ; $762c: $fb
	ld e, a                                          ; $762d: $5f
	ldh [$99], a                                     ; $762e: $e0 $99
	ccf                                              ; $7630: $3f
	ld [hl], a                                       ; $7631: $77
	ld e, a                                          ; $7632: $5f
	rra                                              ; $7633: $1f
	rra                                              ; $7634: $1f
	dec d                                            ; $7635: $15
	daa                                              ; $7636: $27
	and b                                            ; $7637: $a0
	sbc [hl]                                         ; $7638: $9e
	ld bc, $800b                                     ; $7639: $01 $0b $80
	sbc b                                            ; $763c: $98
	ld a, l                                          ; $763d: $7d
	ld a, e                                          ; $763e: $7b
	ld a, e                                          ; $763f: $7b

jr_015_7640:
	pop af                                           ; $7640: $f1
	di                                               ; $7641: $f3
	di                                               ; $7642: $f3
	rst FarCall                                          ; $7643: $f7
	halt                                             ; $7644: $76
	push bc                                          ; $7645: $c5
	inc sp                                           ; $7646: $33
	ldh [hDisp1_LCDC], a                                     ; $7647: $e0 $8f
	ld de, $c09d                                     ; $7649: $11 $9d $c0
	ld b, [hl]                                       ; $764c: $46
	ld [bc], a                                       ; $764d: $02
	dec sp                                           ; $764e: $3b
	ld l, l                                          ; $764f: $6d
	rst FarCall                                          ; $7650: $f7
	rst AddAOntoHL                                          ; $7651: $ef
	ld h, a                                          ; $7652: $67
	ccf                                              ; $7653: $3f
	cp c                                             ; $7654: $b9
	db $fd                                           ; $7655: $fd
	db $fc                                           ; $7656: $fc
	cp $7e                                           ; $7657: $fe $7e
	call c, $9cff                                    ; $7659: $dc $ff $9c
	rst JumpTable                                          ; $765c: $c7
	sbc e                                            ; $765d: $9b
	cp c                                             ; $765e: $b9
	ld e, l                                          ; $765f: $5d
	jr nz, jr_015_7640                               ; $7660: $20 $de

	rst $38                                          ; $7662: $ff
	sub d                                            ; $7663: $92
	pop af                                           ; $7664: $f1
	and e                                            ; $7665: $a3
	jp z, $f0f1                                      ; $7666: $ca $f1 $f0

	ld hl, sp-$10                                    ; $7669: $f8 $f0
	ldh a, [$ee]                                     ; $766b: $f0 $ee
	call c, $efb5                                    ; $766d: $dc $b5 $ef
	rst AddAOntoHL                                          ; $7670: $ef
	ld l, l                                          ; $7671: $6d
	db $f4                                           ; $7672: $f4
	ld sp, hl                                        ; $7673: $f9
	sub d                                            ; $7674: $92
	db $fc                                           ; $7675: $fc
	rrca                                             ; $7676: $0f
	ld l, a                                          ; $7677: $6f
	ld a, l                                          ; $7678: $7d
	cp a                                             ; $7679: $bf
	ld a, a                                          ; $767a: $7f
	ld a, a                                          ; $767b: $7f
	ld a, l                                          ; $767c: $7d
	adc a                                            ; $767d: $8f
	ldh a, [$bf]                                     ; $767e: $f0 $bf
	rst GetHLinHL                                          ; $7680: $cf
	rst GetHLinHL                                          ; $7681: $cf
	ld a, c                                          ; $7682: $79
	sbc [hl]                                         ; $7683: $9e
	rst SubAFromDE                                          ; $7684: $df
	ld a, a                                          ; $7685: $7f
	sbc [hl]                                         ; $7686: $9e
	ld c, a                                          ; $7687: $4f
	call c, $f97f                                    ; $7688: $dc $7f $f9
	sub a                                            ; $768b: $97
	cp l                                             ; $768c: $bd
	adc l                                            ; $768d: $8d
	dec e                                            ; $768e: $1d
	or l                                             ; $768f: $b5
	push de                                          ; $7690: $d5
	sbc l                                            ; $7691: $9d
	push af                                          ; $7692: $f5
	ld a, l                                          ; $7693: $7d
	ld [hl], l                                       ; $7694: $75
	ld a, b                                          ; $7695: $78
	rst SubAFromDE                                          ; $7696: $df
	ld a, a                                          ; $7697: $7f
	rst SubAFromDE                                          ; $7698: $df
	rst $38                                          ; $7699: $ff
	ld a, b                                          ; $769a: $78
	sub $9d                                          ; $769b: $d6 $9d
	rst SubAFromDE                                          ; $769d: $df
	cp a                                             ; $769e: $bf
	ld a, c                                          ; $769f: $79
	dec e                                            ; $76a0: $1d
	ld sp, hl                                        ; $76a1: $f9
	sub a                                            ; $76a2: $97
	rst SubAFromDE                                          ; $76a3: $df
	rst AddAOntoHL                                          ; $76a4: $ef
	rst AddAOntoHL                                          ; $76a5: $ef
	rst $38                                          ; $76a6: $ff
	rst FarCall                                          ; $76a7: $f7
	or e                                             ; $76a8: $b3
	ei                                               ; $76a9: $fb
	dec sp                                           ; $76aa: $3b
	db $db                                           ; $76ab: $db
	rst $38                                          ; $76ac: $ff
	sbc [hl]                                         ; $76ad: $9e
	rst SubAFromDE                                          ; $76ae: $df
	ld a, c                                          ; $76af: $79
	or d                                             ; $76b0: $b2
	ld [hl], a                                       ; $76b1: $77
	sub $9d                                          ; $76b2: $d6 $9d
	ccf                                              ; $76b4: $3f
	rst SubAFromDE                                          ; $76b5: $df
	ld e, a                                          ; $76b6: $5f
	nop                                              ; $76b7: $00
	sbc [hl]                                         ; $76b8: $9e
	db $fd                                           ; $76b9: $fd
	ld [hl], e                                       ; $76ba: $73
	ld a, l                                          ; $76bb: $7d
	adc a                                            ; $76bc: $8f
	ld a, a                                          ; $76bd: $7f
	cp a                                             ; $76be: $bf
	db $db                                           ; $76bf: $db
	rst GetHLinHL                                          ; $76c0: $cf
	cp $f8                                           ; $76c1: $fe $f8
	db $fc                                           ; $76c3: $fc

Call_015_76c4:
	ld hl, sp-$71                                    ; $76c4: $f8 $8f
	rst JumpTable                                          ; $76c6: $c7
	rst SubAFromBC                                          ; $76c7: $e7
	pop af                                           ; $76c8: $f1
	pop hl                                           ; $76c9: $e1
	rst JumpTable                                          ; $76ca: $c7
	db $e3                                           ; $76cb: $e3
	rst SubAFromBC                                          ; $76cc: $e7
	ld h, d                                          ; $76cd: $62
	ld h, b                                          ; $76ce: $60
	sub l                                            ; $76cf: $95
	dec e                                            ; $76d0: $1d
	and a                                            ; $76d1: $a7
	add a                                            ; $76d2: $87
	push hl                                          ; $76d3: $e5
	push bc                                          ; $76d4: $c5
	rst GetHLinHL                                          ; $76d5: $cf
	sbc l                                            ; $76d6: $9d
	ld sp, hl                                        ; $76d7: $f9
	ei                                               ; $76d8: $fb
	db $fd                                           ; $76d9: $fd
	ld a, d                                          ; $76da: $7a
	and l                                            ; $76db: $a5
	ld a, e                                          ; $76dc: $7b
	ld b, l                                          ; $76dd: $45
	sbc c                                            ; $76de: $99
	push bc                                          ; $76df: $c5
	db $db                                           ; $76e0: $db
	db $fd                                           ; $76e1: $fd
	rst SubAFromDE                                          ; $76e2: $df
	rst $38                                          ; $76e3: $ff
	cp l                                             ; $76e4: $bd
	ld h, d                                          ; $76e5: $62
	and b                                            ; $76e6: $a0
	sbc [hl]                                         ; $76e7: $9e
	ld a, e                                          ; $76e8: $7b
	sbc $ff                                          ; $76e9: $de $ff
	ld a, a                                          ; $76eb: $7f
	jp hl                                            ; $76ec: $e9


	rst SubAFromDE                                          ; $76ed: $df
	rst SubAFromDE                                          ; $76ee: $df
	daa                                              ; $76ef: $27
	nop                                              ; $76f0: $00
	call nc, Call_015_7fff                           ; $76f1: $d4 $ff $7f
	ld l, c                                          ; $76f4: $69
	ld [hl], b                                       ; $76f5: $70
	ld e, [hl]                                       ; $76f6: $5e
	ld a, d                                          ; $76f7: $7a
	adc h                                            ; $76f8: $8c
	ld h, c                                          ; $76f9: $61
	nop                                              ; $76fa: $00
	ld a, a                                          ; $76fb: $7f
	ld a, [hl+]                                      ; $76fc: $2a
	sbc l                                            ; $76fd: $9d
	jp $6bed                                         ; $76fe: $c3 $ed $6b


	db $ec                                           ; $7701: $ec
	sub e                                            ; $7702: $93
	rra                                              ; $7703: $1f
	xor [hl]                                         ; $7704: $ae
	push bc                                          ; $7705: $c5
	or $fc                                           ; $7706: $f6 $fc
	ld a, a                                          ; $7708: $7f
	ccf                                              ; $7709: $3f
	rst $38                                          ; $770a: $ff
	di                                               ; $770b: $f3
	pop de                                           ; $770c: $d1
	ld a, [$63f9]                                    ; $770d: $fa $f9 $63
	ret nz                                           ; $7710: $c0

	add a                                            ; $7711: $87
	db $ed                                           ; $7712: $ed
	rst GetHLinHL                                          ; $7713: $cf
	xor $ee                                          ; $7714: $ee $ee
	rst FarCall                                          ; $7716: $f7
	jp hl                                            ; $7717: $e9


	db $fd                                           ; $7718: $fd
	ld a, a                                          ; $7719: $7f
	rst FarCall                                          ; $771a: $f7
	rst $38                                          ; $771b: $ff
	pop de                                           ; $771c: $d1
	pop de                                           ; $771d: $d1
	db $db                                           ; $771e: $db
	rst SubAFromDE                                          ; $771f: $df
	rst SubAFromDE                                          ; $7720: $df
	or a                                             ; $7721: $b7
	add sp, -$20                                     ; $7722: $e8 $e0
	xor $ee                                          ; $7724: $ee $ee
	push hl                                          ; $7726: $e5
	pop hl                                           ; $7727: $e1
	pop hl                                           ; $7728: $e1
	ret                                              ; $7729: $c9


	ld h, b                                          ; $772a: $60
	ld h, b                                          ; $772b: $60
	db $dd                                           ; $772c: $dd
	rst $38                                          ; $772d: $ff
	ld [hl], e                                       ; $772e: $73
	ei                                               ; $772f: $fb
	inc de                                           ; $7730: $13
	add b                                            ; $7731: $80
	ld [hl], b                                       ; $7732: $70
	ld h, b                                          ; $7733: $60
	inc bc                                           ; $7734: $03
	ld h, b                                          ; $7735: $60
	ld h, b                                          ; $7736: $60
	dec a                                            ; $7737: $3d
	ld d, e                                          ; $7738: $53
	ldh [$6f], a                                     ; $7739: $e0 $6f
	db $ec                                           ; $773b: $ec
	rst SubAFromDE                                          ; $773c: $df
	cp $9a                                           ; $773d: $fe $9a
	rst SubAFromBC                                          ; $773f: $e7
	db $dd                                           ; $7740: $dd
	cp [hl]                                          ; $7741: $be
	ld [hl+], a                                      ; $7742: $22
	ld [hl+], a                                      ; $7743: $22
	db $dd                                           ; $7744: $dd
	rst $38                                          ; $7745: $ff
	sbc [hl]                                         ; $7746: $9e
	db $e3                                           ; $7747: $e3
	sbc $c1                                          ; $7748: $de $c1
	ld sp, hl                                        ; $774a: $f9
	add a                                            ; $774b: $87
	call c, $db8f                                    ; $774c: $dc $8f $db
	db $eb                                           ; $774f: $eb
	ldh [$f6], a                                     ; $7750: $e0 $f6
	db $fc                                           ; $7752: $fc
	cp $3c                                           ; $7753: $fe $3c
	rst $38                                          ; $7755: $ff
	rst JumpTable                                          ; $7756: $c7
	rst SubAFromBC                                          ; $7757: $e7
	rst AddAOntoHL                                          ; $7758: $ef
	pop hl                                           ; $7759: $e1
	push af                                          ; $775a: $f5
	cp $e0                                           ; $775b: $fe $e0
	ld hl, sp-$24                                    ; $775d: $f8 $dc
	xor $ef                                          ; $775f: $ee $ef
	rst FarCall                                          ; $7761: $f7
	db $fd                                           ; $7762: $fd
	cp $f9                                           ; $7763: $fe $f9
	sub l                                            ; $7765: $95
	rrca                                             ; $7766: $0f
	ld e, $fe                                        ; $7767: $1e $fe
	cp $0f                                           ; $7769: $fe $0f
	ccf                                              ; $776b: $3f
	rst JumpTable                                          ; $776c: $c7
	cp a                                             ; $776d: $bf
	inc c                                            ; $776e: $0c
	dec e                                            ; $776f: $1d
	ld a, e                                          ; $7770: $7b
	ld a, e                                          ; $7771: $7b
	sub a                                            ; $7772: $97
	ld hl, sp+$78                                    ; $7773: $f8 $78
	ld b, b                                          ; $7775: $40
	ld b, $03                                        ; $7776: $06 $03
	ld bc, $fc05                                     ; $7778: $01 $05 $fc
	ld a, d                                          ; $777b: $7a
	ld a, d                                          ; $777c: $7a
	ld h, e                                          ; $777d: $63
	and b                                            ; $777e: $a0
	rst SubAFromDE                                          ; $777f: $df
	db $fd                                           ; $7780: $fd
	ld a, a                                          ; $7781: $7f
	db $fd                                           ; $7782: $fd
	sbc h                                            ; $7783: $9c
	ld sp, hl                                        ; $7784: $f9
	ld a, a                                          ; $7785: $7f
	ld a, b                                          ; $7786: $78
	daa                                              ; $7787: $27
	ld h, b                                          ; $7788: $60
	ld a, a                                          ; $7789: $7f
	and [hl]                                         ; $778a: $a6
	ld [hl], a                                       ; $778b: $77
	add b                                            ; $778c: $80
	ld [hl], a                                       ; $778d: $77
	ld a, l                                          ; $778e: $7d
	ld a, d                                          ; $778f: $7a
	inc b                                            ; $7790: $04
	scf                                              ; $7791: $37
	ld b, b                                          ; $7792: $40
	sbc c                                            ; $7793: $99
	rst AddAOntoHL                                          ; $7794: $ef
	ld a, a                                          ; $7795: $7f
	rst SubAFromDE                                          ; $7796: $df
	cp a                                             ; $7797: $bf
	db $ec                                           ; $7798: $ec
	ld a, a                                          ; $7799: $7f
	halt                                             ; $779a: $76
	add b                                            ; $779b: $80
	sbc e                                            ; $779c: $9b

jr_015_779d:
	ld a, a                                          ; $779d: $7f
	cp $f7                                           ; $779e: $fe $f7
	sbc a                                            ; $77a0: $9f
	ld h, e                                          ; $77a1: $63
	jr jr_015_779d                                   ; $77a2: $18 $f9

	sbc d                                            ; $77a4: $9a
	db $fd                                           ; $77a5: $fd
	cp a                                             ; $77a6: $bf
	ei                                               ; $77a7: $fb
	db $eb                                           ; $77a8: $eb
	add a                                            ; $77a9: $87
	ld a, b                                          ; $77aa: $78
	adc e                                            ; $77ab: $8b
	ld a, d                                          ; $77ac: $7a
	ld b, l                                          ; $77ad: $45
	sbc d                                            ; $77ae: $9a
	push af                                          ; $77af: $f5
	ld a, [hl]                                       ; $77b0: $7e
	xor $d5                                          ; $77b1: $ee $d5
	add b                                            ; $77b3: $80
	db $db                                           ; $77b4: $db
	rst $38                                          ; $77b5: $ff
	ld a, a                                          ; $77b6: $7f
	ld e, l                                          ; $77b7: $5d
	ld h, c                                          ; $77b8: $61
	ldh [$9d], a                                     ; $77b9: $e0 $9d
	rst JumpTable                                          ; $77bb: $c7
	ld b, a                                          ; $77bc: $47

jr_015_77bd:
	sbc $f7                                          ; $77bd: $de $f7
	ld a, e                                          ; $77bf: $7b
	and [hl]                                         ; $77c0: $a6
	sbc c                                            ; $77c1: $99
	ei                                               ; $77c2: $fb
	cp [hl]                                          ; $77c3: $be
	ld [$bf08], a                                    ; $77c4: $ea $08 $bf
	db $db                                           ; $77c7: $db
	db $dd                                           ; $77c8: $dd
	rst $38                                          ; $77c9: $ff
	rst SubAFromDE                                          ; $77ca: $df
	rst FarCall                                          ; $77cb: $f7
	ld a, l                                          ; $77cc: $7d
	ld d, h                                          ; $77cd: $54
	ld h, e                                          ; $77ce: $63
	ret nz                                           ; $77cf: $c0

	sbc h                                            ; $77d0: $9c
	ld b, a                                          ; $77d1: $47
	ei                                               ; $77d2: $fb
	rst SubAFromDE                                          ; $77d3: $df
	ld [hl], e                                       ; $77d4: $73
	adc c                                            ; $77d5: $89
	sbc e                                            ; $77d6: $9b
	cp a                                             ; $77d7: $bf
	call nz, $8720                                   ; $77d8: $c4 $20 $87
	ld [hl], b                                       ; $77db: $70
	ld e, e                                          ; $77dc: $5b
	ld l, e                                          ; $77dd: $6b
	ldh a, [$f9]                                     ; $77de: $f0 $f9
	sbc b                                            ; $77e0: $98
	rst FarCall                                          ; $77e1: $f7
	ei                                               ; $77e2: $fb
	dec sp                                           ; $77e3: $3b
	ld a, a                                          ; $77e4: $7f
	ld l, l                                          ; $77e5: $6d
	db $fd                                           ; $77e6: $fd
	ld hl, sp+$62                                    ; $77e7: $f8 $62
	ret z                                            ; $77e9: $c8

	ld a, $c0                                        ; $77ea: $3e $c0
	sbc d                                            ; $77ec: $9a
	pop af                                           ; $77ed: $f1
	add l                                            ; $77ee: $85
	inc b                                            ; $77ef: $04
	ret nz                                           ; $77f0: $c0

	ei                                               ; $77f1: $fb
	db $dd                                           ; $77f2: $dd
	rst $38                                          ; $77f3: $ff
	sbc [hl]                                         ; $77f4: $9e
	ld a, e                                          ; $77f5: $7b
	ld [hl], e                                       ; $77f6: $73
	ld a, [$e04b]                                    ; $77f7: $fa $4b $e0
	sub a                                            ; $77fa: $97
	or $ea                                           ; $77fb: $f6 $ea
	ld a, [hl]                                       ; $77fd: $7e
	rst JumpTable                                          ; $77fe: $c7
	cp $57                                           ; $77ff: $fe $57
	rst SubAFromDE                                          ; $7801: $df
	rst $38                                          ; $7802: $ff
	ld a, c                                          ; $7803: $79
	ei                                               ; $7804: $fb
	sub d                                            ; $7805: $92
	ld hl, sp-$05                                    ; $7806: $f8 $fb
	cp a                                             ; $7808: $bf
	rst $38                                          ; $7809: $ff
	db $fd                                           ; $780a: $fd
	ldh a, [c]                                       ; $780b: $f2
	ldh a, [$e0]                                     ; $780c: $f0 $e0
	and $e4                                          ; $780e: $e6 $e4
	ldh [$e0], a                                     ; $7810: $e0 $e0
	ldh [c], a                                       ; $7812: $e2
	ld sp, hl                                        ; $7813: $f9
	sub a                                            ; $7814: $97
	ld e, a                                          ; $7815: $5f
	di                                               ; $7816: $f3
	cp h                                             ; $7817: $bc
	dec b                                            ; $7818: $05
	db $e3                                           ; $7819: $e3
	db $fc                                           ; $781a: $fc
	cp $fe                                           ; $781b: $fe $fe
	ld a, b                                          ; $781d: $78
	db $fc                                           ; $781e: $fc
	ld [hl], d                                       ; $781f: $72
	ld a, [$8377]                                    ; $7820: $fa $77 $83
	ld [hl], l                                       ; $7823: $75
	dec sp                                           ; $7824: $3b
	ld e, a                                          ; $7825: $5f
	jr nz, jr_015_77bd                               ; $7826: $20 $95

	ld bc, $fbe9                                     ; $7828: $01 $e9 $fb
	db $e3                                           ; $782b: $e3
	pop af                                           ; $782c: $f1
	rst FarCall                                          ; $782d: $f7
	rst $38                                          ; $782e: $ff
	ld a, c                                          ; $782f: $79
	rst $38                                          ; $7830: $ff
	cp $7a                                           ; $7831: $fe $7a
	call nc, $fb7f                                   ; $7833: $d4 $7f $fb
	sbc l                                            ; $7836: $9d
	add $fe                                          ; $7837: $c6 $fe
	halt                                             ; $7839: $76
	xor l                                            ; $783a: $ad
	ld e, a                                          ; $783b: $5f
	add b                                            ; $783c: $80
	sbc c                                            ; $783d: $99
	rst JumpTable                                          ; $783e: $c7
	ld a, [hl]                                       ; $783f: $7e
	daa                                              ; $7840: $27
	db $e3                                           ; $7841: $e3
	rst $38                                          ; $7842: $ff
	rst AddAOntoHL                                          ; $7843: $ef
	ld a, e                                          ; $7844: $7b
	bit 5, c                                         ; $7845: $cb $69
	db $db                                           ; $7847: $db
	sbc l                                            ; $7848: $9d
	ld a, [$53e1]                                    ; $7849: $fa $e1 $53
	add b                                            ; $784c: $80
	sbc h                                            ; $784d: $9c
	ld a, a                                          ; $784e: $7f
	cp [hl]                                          ; $784f: $be
	ld a, a                                          ; $7850: $7f
	ld [hl], b                                       ; $7851: $70
	db $ec                                           ; $7852: $ec
	sbc d                                            ; $7853: $9a
	db $db                                           ; $7854: $db
	ret                                              ; $7855: $c9


	sbc c                                            ; $7856: $99
	ld a, [$787a]                                    ; $7857: $fa $7a $78
	cp d                                             ; $785a: $ba
	sub a                                            ; $785b: $97
	jr z, jr_015_7898                                ; $785c: $28 $3a

	ld a, d                                          ; $785e: $7a
	add hl, sp                                       ; $785f: $39
	ld sp, hl                                        ; $7860: $f9
	rst $38                                          ; $7861: $ff
	ld a, l                                          ; $7862: $7d
	db $fd                                           ; $7863: $fd
	ld h, e                                          ; $7864: $63
	ret nz                                           ; $7865: $c0

	sub a                                            ; $7866: $97
	cp $fd                                           ; $7867: $fe $fd
	ld sp, hl                                        ; $7869: $f9
	rst AddAOntoHL                                          ; $786a: $ef
	cp $e7                                           ; $786b: $fe $e7
	or $f3                                           ; $786d: $f6 $f3
	ld a, e                                          ; $786f: $7b
	add d                                            ; $7870: $82
	sbc e                                            ; $7871: $9b
	cp $eb                                           ; $7872: $fe $eb
	db $fd                                           ; $7874: $fd
	ld sp, hl                                        ; $7875: $f9
	ld a, b                                          ; $7876: $78
	ld e, d                                          ; $7877: $5a
	sbc d                                            ; $7878: $9a
	ldh a, [$f1]                                     ; $7879: $f0 $f1
	db $f4                                           ; $787b: $f4
	ldh a, [c]                                       ; $787c: $f2
	and $55                                          ; $787d: $e6 $55
	ret nz                                           ; $787f: $c0

	ld a, a                                          ; $7880: $7f
	ld l, h                                          ; $7881: $6c
	sbc l                                            ; $7882: $9d
	ld h, a                                          ; $7883: $67
	di                                               ; $7884: $f3
	ld l, b                                          ; $7885: $68
	and b                                            ; $7886: $a0
	ld l, d                                          ; $7887: $6a
	ld hl, sp-$62                                    ; $7888: $f8 $9e
	cp a                                             ; $788a: $bf
	ld h, e                                          ; $788b: $63
	ret nz                                           ; $788c: $c0

	ld [hl], a                                       ; $788d: $77
	and e                                            ; $788e: $a3
	ld a, a                                          ; $788f: $7f
	ld [$f89d], sp                                   ; $7890: $08 $9d $f8
	inc bc                                           ; $7893: $03
	ld h, $e0                                        ; $7894: $26 $e0
	rst SubAFromDE                                          ; $7896: $df
	ld [hl], a                                       ; $7897: $77

jr_015_7898:
	ld a, d                                          ; $7898: $7a
	sub c                                            ; $7899: $91
	adc l                                            ; $789a: $8d
	ld [$130b], a                                    ; $789b: $ea $0b $13
	db $ec                                           ; $789e: $ec
	db $ec                                           ; $789f: $ec
	call z, $9d8c                                    ; $78a0: $cc $8c $9d
	dec e                                            ; $78a3: $1d
	db $fc                                           ; $78a4: $fc
	cp $1b                                           ; $78a5: $fe $1b
	dec de                                           ; $78a7: $1b
	dec sp                                           ; $78a8: $3b
	ld a, e                                          ; $78a9: $7b
	ld a, d                                          ; $78aa: $7a
	ldh a, [c]                                       ; $78ab: $f2
	di                                               ; $78ac: $f3
	ld h, c                                          ; $78ad: $61
	and b                                            ; $78ae: $a0
	sbc h                                            ; $78af: $9c
	adc [hl]                                         ; $78b0: $8e
	ret nz                                           ; $78b1: $c0

	pop af                                           ; $78b2: $f1
	sbc $ff                                          ; $78b3: $de $ff
	sub c                                            ; $78b5: $91
	rra                                              ; $78b6: $1f
	ret nz                                           ; $78b7: $c0

	pop af                                           ; $78b8: $f1
	ld a, a                                          ; $78b9: $7f
	ld a, a                                          ; $78ba: $7f
	rra                                              ; $78bb: $1f
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	ldh [$7f], a                                     ; $78be: $e0 $7f
	nop                                              ; $78c0: $00
	add b                                            ; $78c1: $80
	add b                                            ; $78c2: $80
	ldh [rPCM34], a                                  ; $78c3: $e0 $77
	sbc a                                            ; $78c5: $9f
	ld sp, hl                                        ; $78c6: $f9
	sub a                                            ; $78c7: $97
	pop af                                           ; $78c8: $f1
	db $fd                                           ; $78c9: $fd
	ld sp, hl                                        ; $78ca: $f9
	ld sp, hl                                        ; $78cb: $f9
	ld hl, sp-$06                                    ; $78cc: $f8 $fa
	ldh a, [c]                                       ; $78ce: $f2
	db $f4                                           ; $78cf: $f4
	db $dd                                           ; $78d0: $dd
	cp $7a                                           ; $78d1: $fe $7a
	rst SubAFromBC                                          ; $78d3: $e7
	ld a, a                                          ; $78d4: $7f
	sub l                                            ; $78d5: $95
	ld a, d                                          ; $78d6: $7a
	sbc e                                            ; $78d7: $9b
	rst SubAFromDE                                          ; $78d8: $df
	ei                                               ; $78d9: $fb
	rst SubAFromDE                                          ; $78da: $df
	ld hl, sp+$60                                    ; $78db: $f8 $60
	ldh [$9e], a                                     ; $78dd: $e0 $9e
	ccf                                              ; $78df: $3f
	ld a, d                                          ; $78e0: $7a
	rst JumpTable                                          ; $78e1: $c7
	adc $ff                                          ; $78e2: $ce $ff
	ld sp, hl                                        ; $78e4: $f9
	sub a                                            ; $78e5: $97
	ld [hl], b                                       ; $78e6: $70
	dec c                                            ; $78e7: $0d
	sbc a                                            ; $78e8: $9f
	sbc $de                                          ; $78e9: $de $de
	call z, $99c1                                    ; $78eb: $cc $c1 $99
	ld a, d                                          ; $78ee: $7a
	ld e, b                                          ; $78ef: $58
	rst SubAFromDE                                          ; $78f0: $df
	di                                               ; $78f1: $f3
	db $dd                                           ; $78f2: $dd
	rst $38                                          ; $78f3: $ff
	sbc e                                            ; $78f4: $9b
	ldh a, [c]                                       ; $78f5: $f2
	ldh [$e1], a                                     ; $78f6: $e0 $e1
	pop hl                                           ; $78f8: $e1
	ld a, e                                          ; $78f9: $7b
	rst FarCall                                          ; $78fa: $f7
	ld sp, hl                                        ; $78fb: $f9
	sbc h                                            ; $78fc: $9c
	cp b                                             ; $78fd: $b8
	rst $38                                          ; $78fe: $ff
	cp a                                             ; $78ff: $bf
	ld [hl], b                                       ; $7900: $70
	inc h                                            ; $7901: $24
	sbc h                                            ; $7902: $9c
	rst JumpTable                                          ; $7903: $c7
	rst GetHLinHL                                          ; $7904: $cf
	add sp, $72                                      ; $7905: $e8 $72
	adc b                                            ; $7907: $88
	sbc h                                            ; $7908: $9c
	rst $38                                          ; $7909: $ff
	add b                                            ; $790a: $80
	ret nz                                           ; $790b: $c0

	ld [hl], a                                       ; $790c: $77
	add b                                            ; $790d: $80
	ld h, e                                          ; $790e: $63
	ldh [$df], a                                     ; $790f: $e0 $df
	db $db                                           ; $7911: $db
	sub l                                            ; $7912: $95
	cp d                                             ; $7913: $ba
	dec sp                                           ; $7914: $3b
	ld h, a                                          ; $7915: $67
	ld l, a                                          ; $7916: $6f
	ld h, a                                          ; $7917: $67
	ld [hl], a                                       ; $7918: $77
	scf                                              ; $7919: $37
	scf                                              ; $791a: $37
	ld [hl], l                                       ; $791b: $75
	rst AddAOntoHL                                          ; $791c: $ef
	sbc $df                                          ; $791d: $de $df
	sub [hl]                                         ; $791f: $96
	rst AddAOntoHL                                          ; $7920: $ef
	inc c                                            ; $7921: $0c
	inc c                                            ; $7922: $0c
	ld c, $14                                        ; $7923: $0e $14
	jr c, jr_015_7957                                ; $7925: $38 $30

	jr c, @+$1a                                      ; $7927: $38 $18

	ld sp, hl                                        ; $7929: $f9
	adc d                                            ; $792a: $8a
	dec c                                            ; $792b: $0d
	db $fd                                           ; $792c: $fd
	db $fd                                           ; $792d: $fd
	and c                                            ; $792e: $a1
	adc $9f                                          ; $792f: $ce $9f
	sbc a                                            ; $7931: $9f
	adc a                                            ; $7932: $8f
	or $06                                           ; $7933: $f6 $06
	ld a, [de]                                       ; $7935: $1a
	ld a, [hl]                                       ; $7936: $7e
	ld [hl], c                                       ; $7937: $71
	ldh [$e0], a                                     ; $7938: $e0 $e0
	ldh a, [$f8]                                     ; $793a: $f0 $f8
	ld hl, sp-$20                                    ; $793c: $f8 $e0
	add b                                            ; $793e: $80
	add b                                            ; $793f: $80
	or $7e                                           ; $7940: $f6 $7e
	ld c, e                                          ; $7942: $4b
	sbc l                                            ; $7943: $9d
	db $fc                                           ; $7944: $fc
	ld sp, hl                                        ; $7945: $f9
	db $dd                                           ; $7946: $dd
	di                                               ; $7947: $f3
	ld [hl], l                                       ; $7948: $75
	rra                                              ; $7949: $1f
	db $dd                                           ; $794a: $dd
	db $fc                                           ; $794b: $fc
	ld [hl], e                                       ; $794c: $73
	sbc h                                            ; $794d: $9c
	ld e, e                                          ; $794e: $5b
	and b                                            ; $794f: $a0
	sbc e                                            ; $7950: $9b
	ei                                               ; $7951: $fb
	rst SubAFromBC                                          ; $7952: $e7
	rst SubAFromDE                                          ; $7953: $df
	cp a                                             ; $7954: $bf
	scf                                              ; $7955: $37
	ccf                                              ; $7956: $3f

jr_015_7957:
	ld d, b                                          ; $7957: $50
	ld b, b                                          ; $7958: $40
	sbc l                                            ; $7959: $9d
	cp $f8                                           ; $795a: $fe $f8
	inc hl                                           ; $795c: $23
	ldh [hDisp1_SCY], a                                     ; $795d: $e0 $90
	ldh [$df], a                                     ; $795f: $e0 $df
	cp a                                             ; $7961: $bf
	rst $38                                          ; $7962: $ff
	cp $7f                                           ; $7963: $fe $7f
	jr z, jr_015_79d7                                ; $7965: $28 $70

	rst $38                                          ; $7967: $ff
	ldh [$c0], a                                     ; $7968: $e0 $c0
	add b                                            ; $796a: $80
	rlca                                             ; $796b: $07
	adc a                                            ; $796c: $8f
	rst SubAFromDE                                          ; $796d: $df
	ld [hl], c                                       ; $796e: $71
	ei                                               ; $796f: $fb
	ld a, [hl]                                       ; $7970: $7e
	inc a                                            ; $7971: $3c
	sbc l                                            ; $7972: $9d
	and b                                            ; $7973: $a0
	ldh [$f9], a                                     ; $7974: $e0 $f9
	sub c                                            ; $7976: $91
	ccf                                              ; $7977: $3f
	rst GetHLinHL                                          ; $7978: $cf
	di                                               ; $7979: $f3
	ld a, h                                          ; $797a: $7c
	adc h                                            ; $797b: $8c
	db $e4                                           ; $797c: $e4
	ld a, c                                          ; $797d: $79

Jump_015_797e:
jr_015_797e:
	jr jr_015_797e                                   ; $797e: $18 $fe

	inc a                                            ; $7980: $3c
	inc c                                            ; $7981: $0c
	add e                                            ; $7982: $83
	di                                               ; $7983: $f3
	ei                                               ; $7984: $fb
	ld [hl], d                                       ; $7985: $72
	ld b, c                                          ; $7986: $41
	sbc e                                            ; $7987: $9b
	ld a, a                                          ; $7988: $7f
	rrca                                             ; $7989: $0f
	rlca                                             ; $798a: $07
	ld bc, $73f8                                     ; $798b: $01 $f8 $73
	rst AddAOntoHL                                          ; $798e: $ef
	sbc d                                            ; $798f: $9a
	ccf                                              ; $7990: $3f
	cp a                                             ; $7991: $bf
	cp a                                             ; $7992: $bf
	or a                                             ; $7993: $b7
	ld e, l                                          ; $7994: $5d
	ld [hl], l                                       ; $7995: $75
	ret z                                            ; $7996: $c8

	rst SubAFromDE                                          ; $7997: $df
	ld a, a                                          ; $7998: $7f
	sbc l                                            ; $7999: $9d
	pop bc                                           ; $799a: $c1

Jump_015_799b:
	db $e3                                           ; $799b: $e3
	ld c, a                                          ; $799c: $4f
	and b                                            ; $799d: $a0
	sbc d                                            ; $799e: $9a
	cp e                                             ; $799f: $bb
	cp a                                             ; $79a0: $bf
	cp a                                             ; $79a1: $bf
	rst SubAFromDE                                          ; $79a2: $df
	ei                                               ; $79a3: $fb
	ld a, c                                          ; $79a4: $79
	db $e4                                           ; $79a5: $e4
	sub b                                            ; $79a6: $90
	db $f4                                           ; $79a7: $f4
	db $e4                                           ; $79a8: $e4
	ldh a, [$e0]                                     ; $79a9: $f0 $e0
	call nz, $c0c4                                   ; $79ab: $c4 $c4 $c0
	ret nz                                           ; $79ae: $c0

	set 3, e                                         ; $79af: $cb $db
	rst GetHLinHL                                          ; $79b1: $cf
	sbc a                                            ; $79b2: $9f
	cp e                                             ; $79b3: $bb
	cp e                                             ; $79b4: $bb
	cp [hl]                                          ; $79b5: $be
	ld h, d                                          ; $79b6: $62
	ld h, b                                          ; $79b7: $60
	ld a, d                                          ; $79b8: $7a
	add d                                            ; $79b9: $82
	ld a, c                                          ; $79ba: $79
	add [hl]                                         ; $79bb: $86
	adc l                                            ; $79bc: $8d
	cp a                                             ; $79bd: $bf
	ld [hl], a                                       ; $79be: $77
	ld [bc], a                                       ; $79bf: $02
	ld [bc], a                                       ; $79c0: $02
	nop                                              ; $79c1: $00
	ld [bc], a                                       ; $79c2: $02
	nop                                              ; $79c3: $00
	inc b                                            ; $79c4: $04
	nop                                              ; $79c5: $00
	inc c                                            ; $79c6: $0c
	ld a, h                                          ; $79c7: $7c
	ld a, h                                          ; $79c8: $7c
	cp $fc                                           ; $79c9: $fe $fc
	sbc h                                            ; $79cb: $9c
	ld hl, sp-$48                                    ; $79cc: $f8 $b8
	ld [hl], b                                       ; $79ce: $70
	ld h, b                                          ; $79cf: $60
	ret nz                                           ; $79d0: $c0

	sbc b                                            ; $79d1: $98
	rst FarCall                                          ; $79d2: $f7
	rst AddAOntoHL                                          ; $79d3: $ef
	rst AddAOntoHL                                          ; $79d4: $ef
	rst SubAFromDE                                          ; $79d5: $df
	cp l                                             ; $79d6: $bd

jr_015_79d7:
	or a                                             ; $79d7: $b7
	ld l, a                                          ; $79d8: $6f
	daa                                              ; $79d9: $27
	ld b, b                                          ; $79da: $40
	ld a, e                                          ; $79db: $7b
	inc b                                            ; $79dc: $04
	sbc l                                            ; $79dd: $9d
	rst AddAOntoHL                                          ; $79de: $ef
	rst GetHLinHL                                          ; $79df: $cf
	ld [hl], a                                       ; $79e0: $77
	dec e                                            ; $79e1: $1d
	sub d                                            ; $79e2: $92
	db $fd                                           ; $79e3: $fd
	add l                                            ; $79e4: $85
	and c                                            ; $79e5: $a1
	adc b                                            ; $79e6: $88
	cp e                                             ; $79e7: $bb
	rlca                                             ; $79e8: $07
	ccf                                              ; $79e9: $3f
	rst $38                                          ; $79ea: $ff
	cp $fe                                           ; $79eb: $fe $fe
	adc $47                                          ; $79ed: $ce $47
	ld b, a                                          ; $79ef: $47
	ld e, e                                          ; $79f0: $5b
	nop                                              ; $79f1: $00
	sub h                                            ; $79f2: $94
	db $fc                                           ; $79f3: $fc
	ccf                                              ; $79f4: $3f
	cp a                                             ; $79f5: $bf
	rst $38                                          ; $79f6: $ff
	db $fc                                           ; $79f7: $fc
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	add hl, de                                       ; $79fa: $19
	call c, $af2f                                    ; $79fb: $dc $2f $af
	ld [hl], d                                       ; $79fe: $72
	push af                                          ; $79ff: $f5
	sbc e                                            ; $7a00: $9b
	inc a                                            ; $7a01: $3c
	dec e                                            ; $7a02: $1d
	rra                                              ; $7a03: $1f
	ccf                                              ; $7a04: $3f
	ld a, e                                          ; $7a05: $7b
	ldh a, [$5b]                                     ; $7a06: $f0 $5b
	ld b, b                                          ; $7a08: $40
	ld [hl], e                                       ; $7a09: $73
	dec hl                                           ; $7a0a: $2b
	sbc [hl]                                         ; $7a0b: $9e
	rst JumpTable                                          ; $7a0c: $c7
	ld [hl], d                                       ; $7a0d: $72
	ld a, [hl-]                                      ; $7a0e: $3a
	ld l, b                                          ; $7a0f: $68
	cp a                                             ; $7a10: $bf
	ld a, b                                          ; $7a11: $78
	scf                                              ; $7a12: $37
	ld h, e                                          ; $7a13: $63
	ldh [hDisp1_WY], a                                     ; $7a14: $e0 $95
	rst GetHLinHL                                          ; $7a16: $cf
	ccf                                              ; $7a17: $3f
	rst GetHLinHL                                          ; $7a18: $cf
	rst $38                                          ; $7a19: $ff
	db $f4                                           ; $7a1a: $f4
	ret c                                            ; $7a1b: $d8

	ret z                                            ; $7a1c: $c8

	rst $38                                          ; $7a1d: $ff
	or $dc                                           ; $7a1e: $f6 $dc
	ld l, [hl]                                       ; $7a20: $6e
	add l                                            ; $7a21: $85
	sbc h                                            ; $7a22: $9c
	ld sp, hl                                        ; $7a23: $f9
	ldh [$f0], a                                     ; $7a24: $e0 $f0
	ld d, e                                          ; $7a26: $53
	add b                                            ; $7a27: $80
	adc b                                            ; $7a28: $88
	ld [hl], $f5                                     ; $7a29: $36 $f5
	ld sp, $ed8c                                     ; $7a2b: $31 $8c $ed
	ld [hl], a                                       ; $7a2e: $77
	or d                                             ; $7a2f: $b2
	ld [$fbeb], a                                    ; $7a30: $ea $eb $fb
	rst $38                                          ; $7a33: $ff
	ld a, a                                          ; $7a34: $7f
	rra                                              ; $7a35: $1f
	db $ed                                           ; $7a36: $ed
	ld a, a                                          ; $7a37: $7f
	ld de, $0010                                     ; $7a38: $11 $10 $00
	ret nz                                           ; $7a3b: $c0

	ldh a, [$f0]                                     ; $7a3c: $f0 $f0
	ld a, [de]                                       ; $7a3e: $1a
	inc c                                            ; $7a3f: $0c
	ld sp, hl                                        ; $7a40: $f9
	rst SubAFromDE                                          ; $7a41: $df
	adc b                                            ; $7a42: $88
	sbc c                                            ; $7a43: $99
	adc a                                            ; $7a44: $8f
	adc h                                            ; $7a45: $8c
	add c                                            ; $7a46: $81
	add a                                            ; $7a47: $87
	add [hl]                                         ; $7a48: $86
	inc l                                            ; $7a49: $2c
	ld [hl], a                                       ; $7a4a: $77
	jp Jump_015_797e                                 ; $7a4b: $c3 $7e $79


	sbc l                                            ; $7a4e: $9d
	ld a, e                                          ; $7a4f: $7b
	di                                               ; $7a50: $f3
	sbc $70                                          ; $7a51: $de $70
	sbc d                                            ; $7a53: $9a
	ld [hl], e                                       ; $7a54: $73
	ld a, a                                          ; $7a55: $7f
	ld a, a                                          ; $7a56: $7f
	call c, Call_015_5f5c                            ; $7a57: $dc $5c $5f
	add b                                            ; $7a5a: $80
	ld a, a                                          ; $7a5b: $7f
	ld h, c                                          ; $7a5c: $61
	sbc [hl]                                         ; $7a5d: $9e
	or a                                             ; $7a5e: $b7
	ld [hl], h                                       ; $7a5f: $74
	ld b, e                                          ; $7a60: $43
	ld l, h                                          ; $7a61: $6c
	add sp, $7a                                      ; $7a62: $e8 $7a
	cp [hl]                                          ; $7a64: $be
	call c, $9e7f                                    ; $7a65: $dc $7f $9e
	ccf                                              ; $7a68: $3f
	ld sp, hl                                        ; $7a69: $f9
	ld a, a                                          ; $7a6a: $7f
	ld l, c                                          ; $7a6b: $69
	ld [hl], d                                       ; $7a6c: $72
	ld hl, $c868                                     ; $7a6d: $21 $68 $c8
	ld l, $20                                        ; $7a70: $2e $20
	rst SubAFromDE                                          ; $7a72: $df
	cp $9e                                           ; $7a73: $fe $9e
	db $fd                                           ; $7a75: $fd
	ld a, c                                          ; $7a76: $79
	ld a, [hl+]                                      ; $7a77: $2a
	cpl                                              ; $7a78: $2f
	ldh [hDisp0_OBP1], a                                     ; $7a79: $e0 $87
	cp e                                             ; $7a7b: $bb
	xor a                                            ; $7a7c: $af
	ld a, [$7df6]                                    ; $7a7d: $fa $f6 $7d
	ld a, l                                          ; $7a80: $7d
	ld sp, hl                                        ; $7a81: $f9
	rst $38                                          ; $7a82: $ff
	ld l, h                                          ; $7a83: $6c
	ld [hl], l                                       ; $7a84: $75
	ld a, l                                          ; $7a85: $7d
	ld a, c                                          ; $7a86: $79
	sub d                                            ; $7a87: $92
	adc e                                            ; $7a88: $8b
	sbc d                                            ; $7a89: $9a
	ld c, d                                          ; $7a8a: $4a
	ld de, $0008                                     ; $7a8b: $11 $08 $00
	nop                                              ; $7a8e: $00
	ld l, c                                          ; $7a8f: $69
	ld [hl], b                                       ; $7a90: $70
	ld h, c                                          ; $7a91: $61
	or c                                             ; $7a92: $b1
	ld e, a                                          ; $7a93: $5f
	and b                                            ; $7a94: $a0
	adc h                                            ; $7a95: $8c
	ld sp, hl                                        ; $7a96: $f9
	jp hl                                            ; $7a97: $e9


	sbc a                                            ; $7a98: $9f
	adc a                                            ; $7a99: $8f
	adc a                                            ; $7a9a: $8f
	adc [hl]                                         ; $7a9b: $8e
	ld l, a                                          ; $7a9c: $6f
	ld b, [hl]                                       ; $7a9d: $46
	ld d, $36                                        ; $7a9e: $16 $36
	ld l, b                                          ; $7aa0: $68
	ldh a, [$f0]                                     ; $7aa1: $f0 $f0
	ld sp, hl                                        ; $7aa3: $f9
	sub b                                            ; $7aa4: $90
	sbc b                                            ; $7aa5: $98
	ret z                                            ; $7aa6: $c8

	ret z                                            ; $7aa7: $c8

	db $e4                                           ; $7aa8: $e4
	sbc $70                                          ; $7aa9: $de $70
	ld c, a                                          ; $7aab: $4f
	and b                                            ; $7aac: $a0
	ld h, e                                          ; $7aad: $63
	add c                                            ; $7aae: $81
	ld h, e                                          ; $7aaf: $63
	rst FarCall                                          ; $7ab0: $f7
	ld sp, hl                                        ; $7ab1: $f9
	sbc d                                            ; $7ab2: $9a
	rst SubAFromBC                                          ; $7ab3: $e7
	ld c, [hl]                                       ; $7ab4: $4e
	ld a, l                                          ; $7ab5: $7d
	jp hl                                            ; $7ab6: $e9


	sbc e                                            ; $7ab7: $9b
	ld a, d                                          ; $7ab8: $7a
	ld e, h                                          ; $7ab9: $5c
	sbc h                                            ; $7aba: $9c
	ld sp, hl                                        ; $7abb: $f9
	rst FarCall                                          ; $7abc: $f7
	rst JumpTable                                          ; $7abd: $c7
	call c, $9bff                                    ; $7abe: $dc $ff $9b
	rlca                                             ; $7ac1: $07
	rrca                                             ; $7ac2: $0f
	ccf                                              ; $7ac3: $3f
	ccf                                              ; $7ac4: $3f
	ld [hl], a                                       ; $7ac5: $77
	ld c, a                                          ; $7ac6: $4f
	ld sp, hl                                        ; $7ac7: $f9
	sbc e                                            ; $7ac8: $9b
	add $86                                          ; $7ac9: $c6 $86
	and [hl]                                         ; $7acb: $a6
	add b                                            ; $7acc: $80
	halt                                             ; $7acd: $76
	rst GetHLinHL                                          ; $7ace: $cf
	sbc $f9                                          ; $7acf: $de $f9
	call c, $ddff                                    ; $7ad1: $dc $ff $dd
	ldh [rPCM34], a                                  ; $7ad4: $e0 $77
	ldh a, [rHDMA1]                                  ; $7ad6: $f0 $51
	ld h, b                                          ; $7ad8: $60
	ld h, [hl]                                       ; $7ad9: $66
	add h                                            ; $7ada: $84
	dec sp                                           ; $7adb: $3b
	ld b, b                                          ; $7adc: $40
	adc b                                            ; $7add: $88
	ld a, [$efed]                                    ; $7ade: $fa $ed $ef
	pop de                                           ; $7ae1: $d1
	rst $38                                          ; $7ae2: $ff
	ei                                               ; $7ae3: $fb
	rst SubAFromDE                                          ; $7ae4: $df
	ld a, a                                          ; $7ae5: $7f
	dec d                                            ; $7ae6: $15
	dec de                                           ; $7ae7: $1b
	jr nc, @+$3e                                     ; $7ae8: $30 $3c

	ld h, h                                          ; $7aea: $64
	ld l, h                                          ; $7aeb: $6c
	dec [hl]                                         ; $7aec: $35
	and l                                            ; $7aed: $a5
	ldh [$e4], a                                     ; $7aee: $e0 $e4
	call $99c1                                       ; $7af0: $cd $c1 $99
	sub c                                            ; $7af3: $91
	adc b                                            ; $7af4: $88
	ld h, b                                          ; $7af5: $60
	ret nz                                           ; $7af6: $c0

	ld [hl], d                                       ; $7af7: $72
	ld c, l                                          ; $7af8: $4d
	sbc h                                            ; $7af9: $9c
	ld a, e                                          ; $7afa: $7b
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	db $dd                                           ; $7afd: $dd
	ret nz                                           ; $7afe: $c0

	sbc e                                            ; $7aff: $9b
	add c                                            ; $7b00: $81
	and $44                                          ; $7b01: $e6 $44
	ld h, b                                          ; $7b03: $60
	db $dd                                           ; $7b04: $dd
	cp a                                             ; $7b05: $bf
	sbc e                                            ; $7b06: $9b
	cp [hl]                                          ; $7b07: $be
	sbc c                                            ; $7b08: $99
	cp e                                             ; $7b09: $bb
	sbc a                                            ; $7b0a: $9f
	ld sp, hl                                        ; $7b0b: $f9
	sbc [hl]                                         ; $7b0c: $9e
	cp a                                             ; $7b0d: $bf
	ld a, c                                          ; $7b0e: $79
	ld h, h                                          ; $7b0f: $64
	ld a, [hl]                                       ; $7b10: $7e
	xor d                                            ; $7b11: $aa
	halt                                             ; $7b12: $76
	sbc a                                            ; $7b13: $9f
	db $dd                                           ; $7b14: $dd
	ld a, a                                          ; $7b15: $7f
	ld l, d                                          ; $7b16: $6a
	jr nz, jr_015_7b74                               ; $7b17: $20 $5b

	and b                                            ; $7b19: $a0
	sub l                                            ; $7b1a: $95
	adc $e6                                          ; $7b1b: $ce $e6
	or $f6                                           ; $7b1d: $f6 $f6
	cp $ec                                           ; $7b1f: $fe $ec
	jp hl                                            ; $7b21: $e9


	inc sp                                           ; $7b22: $33
	ccf                                              ; $7b23: $3f
	rra                                              ; $7b24: $1f
	sbc $0f                                          ; $7b25: $de $0f
	sbc h                                            ; $7b27: $9c
	rra                                              ; $7b28: $1f
	ld e, $fc                                        ; $7b29: $1e $fc
	ei                                               ; $7b2b: $fb
	sbc l                                            ; $7b2c: $9d
	ld bc, $f903                                     ; $7b2d: $01 $03 $f9
	add a                                            ; $7b30: $87
	ld [hl], e                                       ; $7b31: $73
	ld d, e                                          ; $7b32: $53
	ld d, a                                          ; $7b33: $57
	rla                                              ; $7b34: $17
	scf                                              ; $7b35: $37
	ld e, e                                          ; $7b36: $5b
	add l                                            ; $7b37: $85
	dec bc                                           ; $7b38: $0b
	sbc h                                            ; $7b39: $9c
	cp h                                             ; $7b3a: $bc
	cp b                                             ; $7b3b: $b8
	ld hl, sp-$08                                    ; $7b3c: $f8 $f8
	cp h                                             ; $7b3e: $bc
	cp $fc                                           ; $7b3f: $fe $fc
	ldh [$c0], a                                     ; $7b41: $e0 $c0
	ret nz                                           ; $7b43: $c0

	add b                                            ; $7b44: $80
	add b                                            ; $7b45: $80
	ret nz                                           ; $7b46: $c0

	ld hl, sp-$10                                    ; $7b47: $f8 $f0
	ld sp, hl                                        ; $7b49: $f9
	sbc c                                            ; $7b4a: $99
	ld a, b                                          ; $7b4b: $78
	push af                                          ; $7b4c: $f5
	ld a, a                                          ; $7b4d: $7f
	db $fc                                           ; $7b4e: $fc
	ei                                               ; $7b4f: $fb
	cp a                                             ; $7b50: $bf
	rra                                              ; $7b51: $1f
	ld b, b                                          ; $7b52: $40
	ldh [rP1], a                                     ; $7b53: $e0 $00
	ldh [c], a                                       ; $7b55: $e2
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff

jr_015_7b74:
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff

Call_015_7ca4:
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
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

Call_015_7cff:
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

Call_015_7e2e:
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

Jump_015_7ebf:
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
	rst $38                                          ; $7f80: $ff
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

Jump_015_7f9e:
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

Jump_015_7fdd:
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
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_015_7fff:
Jump_015_7fff:
	rst $38                                          ; $7fff: $ff
