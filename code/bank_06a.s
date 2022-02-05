; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

	jr nz, jr_06a_4012                               ; $4000: $20 $10

	rrca                                             ; $4002: $0f
	rra                                              ; $4003: $1f
	ld b, $07                                        ; $4004: $06 $07
	inc bc                                           ; $4006: $03
	inc bc                                           ; $4007: $03
	ld h, b                                          ; $4008: $60
	ld b, a                                          ; $4009: $47
	ld h, b                                          ; $400a: $60
	sub e                                            ; $400b: $93
	ld a, a                                          ; $400c: $7f
	add [hl]                                         ; $400d: $86
	sbc a                                            ; $400e: $9f
	and $67                                          ; $400f: $e6 $67
	ld a, d                                          ; $4011: $7a

jr_06a_4012:
	inc a                                            ; $4012: $3c
	nop                                              ; $4013: $00
	db $fc                                           ; $4014: $fc
	jr nc, jr_06a_4017                               ; $4015: $30 $00

jr_06a_4017:
	ldh [$2f], a                                     ; $4017: $e0 $2f
	ld h, b                                          ; $4019: $60
	sbc [hl]                                         ; $401a: $9e
	ld b, $7a                                        ; $401b: $06 $7a
	and b                                            ; $401d: $a0
	sub l                                            ; $401e: $95
	dec l                                            ; $401f: $2d
	ld e, $0f                                        ; $4020: $1e $0f
	jr nc, jr_06a_4063                               ; $4022: $30 $3f

	nop                                              ; $4024: $00
	ld [hl], a                                       ; $4025: $77
	ccf                                              ; $4026: $3f
	ld a, l                                          ; $4027: $7d
	ld e, $37                                        ; $4028: $1e $37
	ld h, b                                          ; $402a: $60
	ld a, a                                          ; $402b: $7f
	cp $27                                           ; $402c: $fe $27
	ld h, b                                          ; $402e: $60
	ld a, [hl]                                       ; $402f: $7e
	ret nz                                           ; $4030: $c0

	sbc e                                            ; $4031: $9b
	ld l, $ff                                        ; $4032: $2e $ff
	rst $38                                          ; $4034: $ff
	ld sp, hl                                        ; $4035: $f9
	ld l, a                                          ; $4036: $6f
	ld h, b                                          ; $4037: $60
	sbc h                                            ; $4038: $9c
	add hl, de                                       ; $4039: $19
	inc c                                            ; $403a: $0c
	dec bc                                           ; $403b: $0b
	inc bc                                           ; $403c: $03
	ld h, b                                          ; $403d: $60
	ld a, [hl-]                                      ; $403e: $3a
	ret nz                                           ; $403f: $c0

	sub d                                            ; $4040: $92
	ld b, $bf                                        ; $4041: $06 $bf
	add $77                                          ; $4043: $c6 $77
	ld a, d                                          ; $4045: $7a
	inc h                                            ; $4046: $24
	jr @+$3e                                         ; $4047: $18 $3c

	nop                                              ; $4049: $00
	or b                                             ; $404a: $b0
	ld [hl], b                                       ; $404b: $70
	ret nc                                           ; $404c: $d0

	ldh [$57], a                                     ; $404d: $e0 $57
	ld e, a                                          ; $404f: $5f
	ld h, a                                          ; $4050: $67
	ld h, b                                          ; $4051: $60
	ld a, a                                          ; $4052: $7f
	xor h                                            ; $4053: $ac
	sub e                                            ; $4054: $93
	inc e                                            ; $4055: $1c
	inc bc                                           ; $4056: $03
	rlca                                             ; $4057: $07
	ld a, $3f                                        ; $4058: $3e $3f
	jr jr_06a_409b                                   ; $405a: $18 $3f

	nop                                              ; $405c: $00
	ld l, e                                          ; $405d: $6b
	scf                                              ; $405e: $37
	ld l, [hl]                                       ; $405f: $6e
	rra                                              ; $4060: $1f
	ccf                                              ; $4061: $3f
	ld h, b                                          ; $4062: $60

jr_06a_4063:
	ld a, [hl]                                       ; $4063: $7e
	jp nz, Jump_06a_606b                             ; $4064: $c2 $6b $60

	ld c, d                                          ; $4067: $4a
	nop                                              ; $4068: $00
	rst $38                                          ; $4069: $ff
	sbc h                                            ; $406a: $9c
	rlca                                             ; $406b: $07
	ld b, $07                                        ; $406c: $06 $07
	cp h                                             ; $406e: $bc
	ld bc, $0303                                     ; $406f: $01 $03 $03
	add e                                            ; $4072: $83
	jp nz, $8180                                     ; $4073: $c2 $80 $81

	rst FarCall                                          ; $4076: $f7
	db $e3                                           ; $4077: $e3
	rst $38                                          ; $4078: $ff
	rst $38                                          ; $4079: $ff
	pop af                                           ; $407a: $f1
	ld a, a                                          ; $407b: $7f
	ldh a, [$1f]                                     ; $407c: $f0 $1f
	ld [hl], b                                       ; $407e: $70
	rra                                              ; $407f: $1f
	jr jr_06a_40a1                                   ; $4080: $18 $1f

	inc e                                            ; $4082: $1c
	rrca                                             ; $4083: $0f
	ld a, $07                                        ; $4084: $3e $07
	cp $03                                           ; $4086: $fe $03
	ld a, [$fc87]                                    ; $4088: $fa $87 $fc
	rlca                                             ; $408b: $07
	db $fc                                           ; $408c: $fc
	rrca                                             ; $408d: $0f
	db $f4                                           ; $408e: $f4
	rra                                              ; $408f: $1f
	and $3f                                          ; $4090: $e6 $3f
	ldh [c], a                                       ; $4092: $e2
	ld a, a                                          ; $4093: $7f
	sbc b                                            ; $4094: $98
	ldh [c], a                                       ; $4095: $e2
	rst $38                                          ; $4096: $ff
	ld [hl], e                                       ; $4097: $73
	rst $38                                          ; $4098: $ff
	ld d, c                                          ; $4099: $51
	rst $38                                          ; $409a: $ff

jr_06a_409b:
	ret                                              ; $409b: $c9


	ld a, e                                          ; $409c: $7b
	cp $97                                           ; $409d: $fe $97
	ld c, b                                          ; $409f: $48
	rst $38                                          ; $40a0: $ff

jr_06a_40a1:
	ld b, h                                          ; $40a1: $44
	rst $38                                          ; $40a2: $ff
	ld h, h                                          ; $40a3: $64
	rst $38                                          ; $40a4: $ff
	inc h                                            ; $40a5: $24
	rst $38                                          ; $40a6: $ff
	ld [hl], a                                       ; $40a7: $77
	ret nz                                           ; $40a8: $c0

	rst SubAFromDE                                          ; $40a9: $df
	inc bc                                           ; $40aa: $03
	rra                                              ; $40ab: $1f
	ret nz                                           ; $40ac: $c0

	rst $38                                          ; $40ad: $ff
	sbc l                                            ; $40ae: $9d
	ld b, $02                                        ; $40af: $06 $02
	sbc $07                                          ; $40b1: $de $07
	rst SubAFromDE                                          ; $40b3: $df
	inc bc                                           ; $40b4: $03
	rla                                              ; $40b5: $17
	and b                                            ; $40b6: $a0
	ld a, a                                          ; $40b7: $7f
	cp $1b                                           ; $40b8: $fe $1b
	and b                                            ; $40ba: $a0
	ld [hl], e                                       ; $40bb: $73
	ret nz                                           ; $40bc: $c0

	rst SubAFromDE                                          ; $40bd: $df
	rlca                                             ; $40be: $07
	sbc [hl]                                         ; $40bf: $9e
	ld [bc], a                                       ; $40c0: $02
	inc bc                                           ; $40c1: $03
	ret nz                                           ; $40c2: $c0

	inc sp                                           ; $40c3: $33
	ret nz                                           ; $40c4: $c0

	rst AddAOntoHL                                          ; $40c5: $ef
	ld bc, $2180                                     ; $40c6: $01 $80 $21
	rst $38                                          ; $40c9: $ff
	ld a, a                                          ; $40ca: $7f
	rst $38                                          ; $40cb: $ff
	ld c, c                                          ; $40cc: $49
	rst $38                                          ; $40cd: $ff
	sub d                                            ; $40ce: $92
	rst $38                                          ; $40cf: $ff
	and h                                            ; $40d0: $a4
	rst $38                                          ; $40d1: $ff
	add hl, hl                                       ; $40d2: $29
	rst $38                                          ; $40d3: $ff
	ld b, e                                          ; $40d4: $43
	rst $38                                          ; $40d5: $ff
	inc bc                                           ; $40d6: $03
	rst $38                                          ; $40d7: $ff
	dec b                                            ; $40d8: $05
	rst $38                                          ; $40d9: $ff
	dec c                                            ; $40da: $0d
	rst $38                                          ; $40db: $ff
	dec e                                            ; $40dc: $1d
	rst FarCall                                          ; $40dd: $f7
	dec a                                            ; $40de: $3d
	rst SubAFromBC                                          ; $40df: $e7
	ccf                                              ; $40e0: $3f
	db $e3                                           ; $40e1: $e3
	ld a, a                                          ; $40e2: $7f
	ldh a, [rBGP]                                    ; $40e3: $f0 $47
	add sp, $45                                      ; $40e5: $e8 $45
	sub l                                            ; $40e7: $95
	sub $47                                          ; $40e8: $d6 $47
	add $47                                          ; $40ea: $c6 $47
	xor $7b                                          ; $40ec: $ee $7b
	cp $d3                                           ; $40ee: $fe $d3
	cp $93                                           ; $40f0: $fe $93
	ld a, e                                          ; $40f2: $7b
	cp $9b                                           ; $40f3: $fe $9b
	sub c                                            ; $40f5: $91
	cp $97                                           ; $40f6: $fe $97
	db $fc                                           ; $40f8: $fc
	ld [hl], a                                       ; $40f9: $77
	cp $9a                                           ; $40fa: $fe $9a
	sbc a                                            ; $40fc: $9f
	db $fc                                           ; $40fd: $fc
	rst GetHLinHL                                          ; $40fe: $cf
	ld hl, sp+$4f                                    ; $40ff: $f8 $4f
	ld a, e                                          ; $4101: $7b
	cp $87                                           ; $4102: $fe $87
	ld b, a                                          ; $4104: $47
	db $fc                                           ; $4105: $fc
	inc hl                                           ; $4106: $23
	rst $38                                          ; $4107: $ff
	db $e3                                           ; $4108: $e3
	rst $38                                          ; $4109: $ff
	sbc a                                            ; $410a: $9f
	db $fc                                           ; $410b: $fc
	rra                                              ; $410c: $1f
	ldh a, [$3c]                                     ; $410d: $f0 $3c
	di                                               ; $410f: $f3
	jp $c0ff                                         ; $4110: $c3 $ff $c0


	add b                                            ; $4113: $80
	add c                                            ; $4114: $81
	inc bc                                           ; $4115: $03
	inc e                                            ; $4116: $1c
	dec a                                            ; $4117: $3d
	dec c                                            ; $4118: $0d
	rlca                                             ; $4119: $07
	dec bc                                           ; $411a: $0b
	rlca                                             ; $411b: $07
	ld sp, hl                                        ; $411c: $f9
	sbc [hl]                                         ; $411d: $9e
	add b                                            ; $411e: $80
	cp [hl]                                          ; $411f: $be
	add b                                            ; $4120: $80
	ret nz                                           ; $4121: $c0

	ret nz                                           ; $4122: $c0

	adc l                                            ; $4123: $8d
	add b                                            ; $4124: $80
	ldh [rLCDC], a                                   ; $4125: $e0 $40
	or b                                             ; $4127: $b0
	ld h, b                                          ; $4128: $60
	ld hl, sp+$30                                    ; $4129: $f8 $30
	cp $1c                                           ; $412b: $fe $1c
	or $0f                                           ; $412d: $f6 $0f
	rlc a                                            ; $412f: $cb $07
	add l                                            ; $4131: $85
	inc bc                                           ; $4132: $03
	add d                                            ; $4133: $82
	ld bc, $bd81                                     ; $4134: $01 $81 $bd
	ret nz                                           ; $4137: $c0

	ret nz                                           ; $4138: $c0

	ret nz                                           ; $4139: $c0

	ldh [$8b], a                                     ; $413a: $e0 $8b
	ld b, b                                          ; $413c: $40
	ldh [$c0], a                                     ; $413d: $e0 $c0
	db $fd                                           ; $413f: $fd
	rlca                                             ; $4140: $07
	rst $38                                          ; $4141: $ff
	ld b, $f7                                        ; $4142: $06 $f7
	ld a, $4f                                        ; $4144: $3e $4f
	or $ff                                           ; $4146: $f6 $ff
	add [hl]                                         ; $4148: $86
	rst $38                                          ; $4149: $ff
	ld [hl+], a                                      ; $414a: $22
	db $ec                                           ; $414b: $ec
	ldh a, [$ac]                                     ; $414c: $f0 $ac
	ret nc                                           ; $414e: $d0

	add b                                            ; $414f: $80
	ld [hl], a                                       ; $4150: $77
	res 6, a                                         ; $4151: $cb $b7
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	add c                                            ; $4158: $81
	add c                                            ; $4159: $81
	ld bc, $1703                                     ; $415a: $01 $03 $17
	sub c                                            ; $415d: $91
	jr @+$1f                                         ; $415e: $18 $1d

	ld c, $0f                                        ; $4160: $0e $0f
	inc de                                           ; $4162: $13
	dec sp                                           ; $4163: $3b
	inc e                                            ; $4164: $1c
	rra                                              ; $4165: $1f
	ld [hl], $75                                     ; $4166: $36 $75
	rra                                              ; $4168: $1f
	ld l, a                                          ; $4169: $6f
	inc e                                            ; $416a: $1c
	ld a, a                                          ; $416b: $7f
	cp a                                             ; $416c: $bf
	ld a, a                                          ; $416d: $7f
	ccf                                              ; $416e: $3f
	adc h                                            ; $416f: $8c
	ld b, c                                          ; $4170: $41
	cp a                                             ; $4171: $bf
	pop bc                                           ; $4172: $c1
	ld a, l                                          ; $4173: $7d
	add e                                            ; $4174: $83
	and d                                            ; $4175: $a2
	rst $38                                          ; $4176: $ff
	jp nz, $c2ff                                     ; $4177: $c2 $ff $c2

	ld a, a                                          ; $417a: $7f
	jp nz, $e57f                                     ; $417b: $c2 $7f $e5

	ld a, a                                          ; $417e: $7f
	push hl                                          ; $417f: $e5
	rst $38                                          ; $4180: $ff
	ld c, e                                          ; $4181: $4b
	rst $38                                          ; $4182: $ff
	ld a, e                                          ; $4183: $7b
	inc sp                                           ; $4184: $33
	add e                                            ; $4185: $83
	ld h, [hl]                                       ; $4186: $66
	ld e, a                                          ; $4187: $5f
	pop af                                           ; $4188: $f1
	rst GetHLinHL                                          ; $4189: $cf
	db $fc                                           ; $418a: $fc
	rst FarCall                                          ; $418b: $f7
	sbc [hl]                                         ; $418c: $9e
	rst $38                                          ; $418d: $ff
	adc $7f                                          ; $418e: $ce $7f
	rst SubAFromBC                                          ; $4190: $e7
	rra                                              ; $4191: $1f
	pop af                                           ; $4192: $f1
	rst $38                                          ; $4193: $ff
	ld hl, sp-$01                                    ; $4194: $f8 $ff
	adc h                                            ; $4196: $8c
	rst $38                                          ; $4197: $ff
	ldh [c], a                                       ; $4198: $e2
	ld a, a                                          ; $4199: $7f
	pop af                                           ; $419a: $f1
	ld e, a                                          ; $419b: $5f
	db $fc                                           ; $419c: $fc
	ld d, a                                          ; $419d: $57
	db $f4                                           ; $419e: $f4
	ld c, e                                          ; $419f: $4b
	ld a, [$732b]                                    ; $41a0: $fa $2b $73
	cp $9a                                           ; $41a3: $fe $9a
	dec d                                            ; $41a5: $15
	db $fd                                           ; $41a6: $fd
	dec d                                            ; $41a7: $15
	db $fd                                           ; $41a8: $fd
	sub l                                            ; $41a9: $95
	ld a, e                                          ; $41aa: $7b
	cp $99                                           ; $41ab: $fe $99
	sub h                                            ; $41ad: $94
	db $fc                                           ; $41ae: $fc
	sub h                                            ; $41af: $94
	db $fc                                           ; $41b0: $fc
	sub $fe                                          ; $41b1: $d6 $fe
	ld l, a                                          ; $41b3: $6f
	ld b, b                                          ; $41b4: $40
	sbc h                                            ; $41b5: $9c
	ld a, $f1                                        ; $41b6: $3e $f1
	db $e3                                           ; $41b8: $e3
	ld [hl], a                                       ; $41b9: $77
	ld b, b                                          ; $41ba: $40
	sbc c                                            ; $41bb: $99
	nop                                              ; $41bc: $00
	rrca                                             ; $41bd: $0f
	ccf                                              ; $41be: $3f
	dec bc                                           ; $41bf: $0b
	dec c                                            ; $41c0: $0d
	dec c                                            ; $41c1: $0d
	inc bc                                           ; $41c2: $03
	ld b, b                                          ; $41c3: $40
	ld b, a                                          ; $41c4: $47
	ld b, b                                          ; $41c5: $40
	sbc h                                            ; $41c6: $9c
	rst SubAFromHL                                          ; $41c7: $d7
	ld a, $7f                                        ; $41c8: $3e $7f
	ld a, e                                          ; $41ca: $7b
	ld b, b                                          ; $41cb: $40
	sub [hl]                                         ; $41cc: $96
	ld a, a                                          ; $41cd: $7f
	ld [bc], a                                       ; $41ce: $02
	db $fc                                           ; $41cf: $fc
	ld [hl], b                                       ; $41d0: $70
	cp h                                             ; $41d1: $bc
	ret nz                                           ; $41d2: $c0

	jr nz, @-$3e                                     ; $41d3: $20 $c0

	ret nz                                           ; $41d5: $c0

	inc sp                                           ; $41d6: $33
	ld b, b                                          ; $41d7: $40
	sub c                                            ; $41d8: $91
	rrca                                             ; $41d9: $0f
	db $10                                           ; $41da: $10
	dec c                                            ; $41db: $0d
	ld e, $1b                                        ; $41dc: $1e $1b
	rlca                                             ; $41de: $07
	ccf                                              ; $41df: $3f
	nop                                              ; $41e0: $00
	rra                                              ; $41e1: $1f
	ld a, $5b                                        ; $41e2: $3e $5b
	scf                                              ; $41e4: $37
	ld l, a                                          ; $41e5: $6f
	ld e, $37                                        ; $41e6: $1e $37
	ld b, b                                          ; $41e8: $40
	sbc [hl]                                         ; $41e9: $9e
	ld h, l                                          ; $41ea: $65
	ld l, e                                          ; $41eb: $6b
	ld b, b                                          ; $41ec: $40
	sbc [hl]                                         ; $41ed: $9e
	rst SubAFromDE                                          ; $41ee: $df
	ld d, e                                          ; $41ef: $53
	ld b, b                                          ; $41f0: $40
	ld [hl], a                                       ; $41f1: $77
	ld h, b                                          ; $41f2: $60
	sbc l                                            ; $41f3: $9d
	rla                                              ; $41f4: $17
	ld hl, sp+$77                                    ; $41f5: $f8 $77
	ld h, b                                          ; $41f7: $60
	sbc [hl]                                         ; $41f8: $9e
	jp $e57a                                         ; $41f9: $c3 $7a $e5


	rst $38                                          ; $41fc: $ff
	sbc d                                            ; $41fd: $9a
	ld l, a                                          ; $41fe: $6f
	rra                                              ; $41ff: $1f
	ld d, $0f                                        ; $4200: $16 $0f
	inc bc                                           ; $4202: $03
	inc bc                                           ; $4203: $03
	ld h, b                                          ; $4204: $60
	ld c, a                                          ; $4205: $4f
	ld h, b                                          ; $4206: $60
	sub c                                            ; $4207: $91
	rst JumpTable                                          ; $4208: $c7
	ld a, $3f                                        ; $4209: $3e $3f
	or $ff                                           ; $420b: $f6 $ff
	add $ff                                          ; $420d: $c6 $ff
	ld [bc], a                                       ; $420f: $02
	inc a                                            ; $4210: $3c
	nop                                              ; $4211: $00
	db $fc                                           ; $4212: $fc
	jr nc, jr_06a_4215                               ; $4213: $30 $00

jr_06a_4215:
	ldh [$37], a                                     ; $4215: $e0 $37
	ld h, b                                          ; $4217: $60
	ld a, a                                          ; $4218: $7f
	cp $98                                           ; $4219: $fe $98
	rra                                              ; $421b: $1f
	db $10                                           ; $421c: $10
	dec bc                                           ; $421d: $0b
	inc e                                            ; $421e: $1c
	scf                                              ; $421f: $37
	rrca                                             ; $4220: $0f
	ccf                                              ; $4221: $3f
	cp a                                             ; $4222: $bf
	ccf                                              ; $4223: $3f
	ld [hl], a                                       ; $4224: $77
	sbc h                                            ; $4225: $9c
	add hl, sp                                       ; $4226: $39
	ld a, h                                          ; $4227: $7c
	rra                                              ; $4228: $1f
	ld d, $a0                                        ; $4229: $16 $a0
	ccf                                              ; $422b: $3f
	ld h, b                                          ; $422c: $60
	ld a, d                                          ; $422d: $7a
	nop                                              ; $422e: $00
	sbc e                                            ; $422f: $9b
	db $e3                                           ; $4230: $e3
	ld sp, hl                                        ; $4231: $f9
	rst $38                                          ; $4232: $ff
	pop bc                                           ; $4233: $c1
	ld [hl], e                                       ; $4234: $73
	ld h, b                                          ; $4235: $60
	sbc e                                            ; $4236: $9b
	jr jr_06a_4259                                   ; $4237: $18 $20

	cpl                                              ; $4239: $2f
	rra                                              ; $423a: $1f
	inc bc                                           ; $423b: $03
	ld h, b                                          ; $423c: $60
	inc hl                                           ; $423d: $23
	ld h, b                                          ; $423e: $60
	ld a, a                                          ; $423f: $7f
	cp $9b                                           ; $4240: $fe $9b
	or b                                             ; $4242: $b0
	ld [hl], b                                       ; $4243: $70
	ret nc                                           ; $4244: $d0

	ldh [$57], a                                     ; $4245: $e0 $57
	ld e, a                                          ; $4247: $5f
	ld e, a                                          ; $4248: $5f
	ld h, b                                          ; $4249: $60
	sbc [hl]                                         ; $424a: $9e
	rrca                                             ; $424b: $0f
	ld l, e                                          ; $424c: $6b
	ld h, b                                          ; $424d: $60
	sbc h                                            ; $424e: $9c
	ld l, a                                          ; $424f: $6f
	ld sp, $0f6e                                     ; $4250: $31 $6e $0f
	ld h, b                                          ; $4253: $60
	sbc [hl]                                         ; $4254: $9e
	ld [hl], c                                       ; $4255: $71
	ld d, a                                          ; $4256: $57
	ld h, b                                          ; $4257: $60
	rst $38                                          ; $4258: $ff

jr_06a_4259:
	rst SubAFromDE                                          ; $4259: $df
	ld [bc], a                                       ; $425a: $02
	sbc l                                            ; $425b: $9d
	inc b                                            ; $425c: $04
	inc bc                                           ; $425d: $03
	halt                                             ; $425e: $76
	ld a, [hl]                                       ; $425f: $7e
	ld a, a                                          ; $4260: $7f
	cp $80                                           ; $4261: $fe $80
	add e                                            ; $4263: $83
	nop                                              ; $4264: $00
	jp nz, $f781                                     ; $4265: $c2 $81 $f7

	db $e3                                           ; $4268: $e3
	rst $38                                          ; $4269: $ff
	rst $38                                          ; $426a: $ff
	pop af                                           ; $426b: $f1
	ld a, a                                          ; $426c: $7f
	ldh a, [$1f]                                     ; $426d: $f0 $1f
	ld [hl], b                                       ; $426f: $70
	rra                                              ; $4270: $1f
	jr jr_06a_4292                                   ; $4271: $18 $1f

	inc e                                            ; $4273: $1c
	rrca                                             ; $4274: $0f
	ld a, $07                                        ; $4275: $3e $07
	cp $03                                           ; $4277: $fe $03
	ld a, [$fc87]                                    ; $4279: $fa $87 $fc
	rlca                                             ; $427c: $07
	db $fc                                           ; $427d: $fc
	rrca                                             ; $427e: $0f
	db $f4                                           ; $427f: $f4
	rra                                              ; $4280: $1f
	and $95                                          ; $4281: $e6 $95
	ccf                                              ; $4283: $3f
	ldh [c], a                                       ; $4284: $e2
	ld a, a                                          ; $4285: $7f
	ldh [c], a                                       ; $4286: $e2
	rst $38                                          ; $4287: $ff
	ld [hl], e                                       ; $4288: $73
	rst $38                                          ; $4289: $ff
	ld d, c                                          ; $428a: $51
	rst $38                                          ; $428b: $ff
	ret                                              ; $428c: $c9


	ld a, e                                          ; $428d: $7b
	cp $92                                           ; $428e: $fe $92
	ld c, b                                          ; $4290: $48
	rst $38                                          ; $4291: $ff

jr_06a_4292:
	ld b, h                                          ; $4292: $44
	rst $38                                          ; $4293: $ff
	ld h, h                                          ; $4294: $64
	rst $38                                          ; $4295: $ff
	inc h                                            ; $4296: $24
	rst $38                                          ; $4297: $ff
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00
	ld b, $02                                        ; $429a: $06 $02
	inc bc                                           ; $429c: $03
	dec de                                           ; $429d: $1b
	ret nz                                           ; $429e: $c0

	ld [hl], a                                       ; $429f: $77
	ldh [$de], a                                     ; $42a0: $e0 $de
	rlca                                             ; $42a2: $07
	rst SubAFromDE                                          ; $42a3: $df
	inc bc                                           ; $42a4: $03
	rla                                              ; $42a5: $17
	and b                                            ; $42a6: $a0

jr_06a_42a7:
	ld a, a                                          ; $42a7: $7f
	cp $13                                           ; $42a8: $fe $13
	and b                                            ; $42aa: $a0
	db $dd                                           ; $42ab: $dd
	rlca                                             ; $42ac: $07
	sbc l                                            ; $42ad: $9d
	inc bc                                           ; $42ae: $03
	ld [bc], a                                       ; $42af: $02
	inc bc                                           ; $42b0: $03
	ret nz                                           ; $42b1: $c0

	inc sp                                           ; $42b2: $33
	ret nz                                           ; $42b3: $c0

	ei                                               ; $42b4: $fb
	ld [bc], a                                       ; $42b5: $02
	rst SubAFromDE                                          ; $42b6: $df
	ld bc, $0280                                     ; $42b7: $01 $80 $02
	inc bc                                           ; $42ba: $03
	dec b                                            ; $42bb: $05
	ld b, $0b                                        ; $42bc: $06 $0b
	inc c                                            ; $42be: $0c
	ld c, $09                                        ; $42bf: $0e $09
	ld d, $19                                        ; $42c1: $16 $19
	dec e                                            ; $42c3: $1d
	ld [de], a                                       ; $42c4: $12
	dec l                                            ; $42c5: $2d
	ld [hl-], a                                      ; $42c6: $32
	inc l                                            ; $42c7: $2c
	inc sp                                           ; $42c8: $33
	inc l                                            ; $42c9: $2c
	inc sp                                           ; $42ca: $33
	jr z, jr_06a_4304                                ; $42cb: $28 $37

	ld a, [hl+]                                      ; $42cd: $2a
	scf                                              ; $42ce: $37
	dec hl                                           ; $42cf: $2b
	ld [hl], $33                                     ; $42d0: $36 $33
	ld a, $12                                        ; $42d2: $3e $12
	rra                                              ; $42d4: $1f
	ld [de], a                                       ; $42d5: $12
	rra                                              ; $42d6: $1f
	rla                                              ; $42d7: $17
	sub [hl]                                         ; $42d8: $96
	rra                                              ; $42d9: $1f
	dec d                                            ; $42da: $15
	dec e                                            ; $42db: $1d
	dec d                                            ; $42dc: $15
	dec e                                            ; $42dd: $1d
	add hl, sp                                       ; $42de: $39
	add hl, sp                                       ; $42df: $39
	ld [hl], c                                       ; $42e0: $71
	ld [hl], c                                       ; $42e1: $71
	push af                                          ; $42e2: $f5
	rst SubAFromDE                                          ; $42e3: $df
	ld [bc], a                                       ; $42e4: $02
	rst SubAFromDE                                          ; $42e5: $df
	ld bc, $dffb                                     ; $42e6: $01 $fb $df
	db $10                                           ; $42e9: $10
	sub l                                            ; $42ea: $95
	ld hl, $2731                                     ; $42eb: $21 $31 $27
	ccf                                              ; $42ee: $3f
	ld [de], a                                       ; $42ef: $12
	rra                                              ; $42f0: $1f
	rrca                                             ; $42f1: $0f
	ld c, $07                                        ; $42f2: $0e $07
	inc b                                            ; $42f4: $04
	ld l, a                                          ; $42f5: $6f
	cp d                                             ; $42f6: $ba
	sbc b                                            ; $42f7: $98
	inc d                                            ; $42f8: $14
	dec de                                           ; $42f9: $1b
	dec d                                            ; $42fa: $15
	dec de                                           ; $42fb: $1b
	rla                                              ; $42fc: $17
	dec de                                           ; $42fd: $1b
	dec bc                                           ; $42fe: $0b
	sbc $0f                                          ; $42ff: $de $0f
	rst SubAFromDE                                          ; $4301: $df
	dec c                                            ; $4302: $0d
	rst SubAFromDE                                          ; $4303: $df

jr_06a_4304:
	add hl, bc                                       ; $4304: $09
	db $eb                                           ; $4305: $eb
	rst SubAFromDE                                          ; $4306: $df
	ld bc, $0fdf                                     ; $4307: $01 $df $0f
	add b                                            ; $430a: $80
	dec sp                                           ; $430b: $3b
	inc a                                            ; $430c: $3c
	ld e, a                                          ; $430d: $5f
	ld h, b                                          ; $430e: $60
	db $ec                                           ; $430f: $ec
	di                                               ; $4310: $f3
	cp c                                             ; $4311: $b9
	add $e4                                          ; $4312: $c6 $e4
	jr jr_06a_42a7                                   ; $4314: $18 $91

	ld h, b                                          ; $4316: $60
	ld b, [hl]                                       ; $4317: $46
	add c                                            ; $4318: $81
	sbc b                                            ; $4319: $98
	rlca                                             ; $431a: $07
	ld h, a                                          ; $431b: $67
	jr jr_06a_42a7                                   ; $431c: $18 $89

	ld [hl], b                                       ; $431e: $70
	ld h, $c1                                        ; $431f: $26 $c1
	ld e, h                                          ; $4321: $5c
	add e                                            ; $4322: $83
	xor e                                            ; $4323: $ab
	ld [de], a                                       ; $4324: $12
	ld d, [hl]                                       ; $4325: $56
	inc h                                            ; $4326: $24
	xor [hl]                                         ; $4327: $ae
	ld b, h                                          ; $4328: $44
	ld [$cd98], sp                                   ; $4329: $08 $98 $cd
	ld e, h                                          ; $432c: $5c
	adc c                                            ; $432d: $89
	ld a, e                                          ; $432e: $7b
	adc c                                            ; $432f: $89
	add hl, hl                                       ; $4330: $29
	db $db                                           ; $4331: $db
	ldh [$c1], a                                     ; $4332: $e0 $c1
	sbc h                                            ; $4334: $9c
	add [hl]                                         ; $4335: $86
	rst $38                                          ; $4336: $ff
	adc [hl]                                         ; $4337: $8e
	ld a, e                                          ; $4338: $7b
	cp $91                                           ; $4339: $fe $91
	adc d                                            ; $433b: $8a
	ei                                               ; $433c: $fb
	set 7, e                                         ; $433d: $cb $fb
	ld c, c                                          ; $433f: $49
	ld a, c                                          ; $4340: $79
	ld h, h                                          ; $4341: $64
	ld a, h                                          ; $4342: $7c
	inc sp                                           ; $4343: $33
	ccf                                              ; $4344: $3f
	jr jr_06a_4366                                   ; $4345: $18 $1f

	rlca                                             ; $4347: $07
	rlca                                             ; $4348: $07
	ld [hl], a                                       ; $4349: $77
	add b                                            ; $434a: $80
	db $dd                                           ; $434b: $dd
	inc bc                                           ; $434c: $03
	sbc e                                            ; $434d: $9b
	rlca                                             ; $434e: $07
	ld b, $0f                                        ; $434f: $06 $0f
	inc c                                            ; $4351: $0c
	rst AddAOntoHL                                          ; $4352: $ef
	sub c                                            ; $4353: $91
	inc [hl]                                         ; $4354: $34
	inc a                                            ; $4355: $3c
	dec de                                           ; $4356: $1b
	rra                                              ; $4357: $1f
	ei                                               ; $4358: $fb
	db $fc                                           ; $4359: $fc
	ld [hl], l                                       ; $435a: $75
	adc [hl]                                         ; $435b: $8e
	ei                                               ; $435c: $fb
	ld b, $1e                                        ; $435d: $06 $1e
	db $e3                                           ; $435f: $e3
	dec c                                            ; $4360: $0d
	di                                               ; $4361: $f3
	cp [hl]                                          ; $4362: $be
	rst $38                                          ; $4363: $ff
	ccf                                              ; $4364: $3f
	adc a                                            ; $4365: $8f

jr_06a_4366:
	adc c                                            ; $4366: $89
	ld [bc], a                                       ; $4367: $02
	rst AddAOntoHL                                          ; $4368: $ef
	jp $36ff                                         ; $4369: $c3 $ff $36


	rst $38                                          ; $436c: $ff
	inc e                                            ; $436d: $1c
	rst $38                                          ; $436e: $ff
	db $fc                                           ; $436f: $fc
	rst $38                                          ; $4370: $ff
	ld [hl+], a                                      ; $4371: $22
	rst $38                                          ; $4372: $ff
	ld b, [hl]                                       ; $4373: $46
	ld l, a                                          ; $4374: $6f
	adc a                                            ; $4375: $8f
	rst SubAFromDE                                          ; $4376: $df
	sbc b                                            ; $4377: $98
	or b                                             ; $4378: $b0
	or b                                             ; $4379: $b0
	and b                                            ; $437a: $a0

jr_06a_437b:
	or b                                             ; $437b: $b0
	ldh [rPCM34], a                                  ; $437c: $e0 $77
	cp $e0                                           ; $437e: $fe $e0
	pop bc                                           ; $4380: $c1
	add e                                            ; $4381: $83
	call z, $ccff                                    ; $4382: $cc $ff $cc
	rst $38                                          ; $4385: $ff
	push bc                                          ; $4386: $c5
	rst $38                                          ; $4387: $ff
	ld b, l                                          ; $4388: $45
	rst $38                                          ; $4389: $ff
	ld h, a                                          ; $438a: $67
	cp $bf                                           ; $438b: $fe $bf
	db $fc                                           ; $438d: $fc
	rst SubAFromDE                                          ; $438e: $df
	ld hl, sp-$01                                    ; $438f: $f8 $ff
	pop af                                           ; $4391: $f1
	rst $38                                          ; $4392: $ff
	db $e3                                           ; $4393: $e3
	rst $38                                          ; $4394: $ff
	rst JumpTable                                          ; $4395: $c7
	rst $38                                          ; $4396: $ff
	adc l                                            ; $4397: $8d
	rst $38                                          ; $4398: $ff
	add hl, sp                                       ; $4399: $39
	rst $38                                          ; $439a: $ff
	pop hl                                           ; $439b: $e1
	rst $38                                          ; $439c: $ff
	ld bc, $fe77                                     ; $439d: $01 $77 $fe
	rst AddAOntoHL                                          ; $43a0: $ef
	rst SubAFromDE                                          ; $43a1: $df
	inc bc                                           ; $43a2: $03
	adc a                                            ; $43a3: $8f
	dec c                                            ; $43a4: $0d
	ld c, $96                                        ; $43a5: $0e $96
	sbc c                                            ; $43a7: $99
	ld l, a                                          ; $43a8: $6f
	di                                               ; $43a9: $f3
	db $dd                                           ; $43aa: $dd
	ld l, [hl]                                       ; $43ab: $6e
	cp e                                             ; $43ac: $bb
	ld a, h                                          ; $43ad: $7c
	xor a                                            ; $43ae: $af
	ld [hl], b                                       ; $43af: $70
	ld b, b                                          ; $43b0: $40
	rst $38                                          ; $43b1: $ff
	add b                                            ; $43b2: $80
	cp $bf                                           ; $43b3: $fe $bf
	rst $38                                          ; $43b5: $ff
	ret nz                                           ; $43b6: $c0

	add a                                            ; $43b7: $87
	add b                                            ; $43b8: $80

jr_06a_43b9:
	db $fc                                           ; $43b9: $fc
	nop                                              ; $43ba: $00
	rst $38                                          ; $43bb: $ff
	ld bc, $00e7                                     ; $43bc: $01 $e7 $00
	ld sp, hl                                        ; $43bf: $f9
	ret nz                                           ; $43c0: $c0

	cp $32                                           ; $43c1: $fe $32
	rst FarCall                                          ; $43c3: $f7
	sub c                                            ; $43c4: $91
	ei                                               ; $43c5: $fb
	ld c, c                                          ; $43c6: $49
	ld a, l                                          ; $43c7: $7d
	ld c, h                                          ; $43c8: $4c
	ld a, l                                          ; $43c9: $7d
	ld l, h                                          ; $43ca: $6c
	ld a, [hl]                                       ; $43cb: $7e
	ld a, [hl+]                                      ; $43cc: $2a
	ld a, [hl-]                                      ; $43cd: $3a
	ld [hl-], a                                      ; $43ce: $32

jr_06a_43cf:
	inc sp                                           ; $43cf: $33
	ldh [$c1], a                                     ; $43d0: $e0 $c1
	rst SubAFromDE                                          ; $43d2: $df
	rst $38                                          ; $43d3: $ff
	add c                                            ; $43d4: $81
	rst FarCall                                          ; $43d5: $f7
	ld hl, sp-$05                                    ; $43d6: $f8 $fb
	rst JumpTable                                          ; $43d8: $c7
	ld l, h                                          ; $43d9: $6c
	sbc a                                            ; $43da: $9f
	ldh a, [$3f]                                     ; $43db: $f0 $3f
	jp $bb7c                                         ; $43dd: $c3 $7c $bb


	call nz, $8877                                   ; $43e0: $c4 $77 $88
	rst FarCall                                          ; $43e3: $f7
	ld [$10ef], sp                                   ; $43e4: $08 $ef $10
	rst GetHLinHL                                          ; $43e7: $cf
	jr nc, jr_06a_43b9                               ; $43e8: $30 $cf

	jr nc, jr_06a_437b                               ; $43ea: $30 $8f

	ld [hl], b                                       ; $43ec: $70
	ld e, a                                          ; $43ed: $5f
	ldh [$9f], a                                     ; $43ee: $e0 $9f
	ldh [$bf], a                                     ; $43f0: $e0 $bf
	ret nz                                           ; $43f2: $c0

	rst AddAOntoHL                                          ; $43f3: $ef
	rst SubAFromDE                                          ; $43f4: $df
	ret nz                                           ; $43f5: $c0

	sub e                                            ; $43f6: $93
	cp b                                             ; $43f7: $b8
	ld a, b                                          ; $43f8: $78
	rst $38                                          ; $43f9: $ff
	rst $38                                          ; $43fa: $ff
	cp c                                             ; $43fb: $b9
	rst JumpTable                                          ; $43fc: $c7
	cp $01                                           ; $43fd: $fe $01
	rst $38                                          ; $43ff: $ff
	nop                                              ; $4400: $00
	ldh a, [rIF]                                     ; $4401: $f0 $0f
	cp d                                             ; $4403: $ba
	rst GetHLinHL                                          ; $4404: $cf
	inc bc                                           ; $4405: $03
	ld hl, sp-$02                                    ; $4406: $f8 $fe
	ccf                                              ; $4408: $3f
	rra                                              ; $4409: $1f
	adc a                                            ; $440a: $8f
	adc l                                            ; $440b: $8d
	add d                                            ; $440c: $82
	rst GetHLinHL                                          ; $440d: $cf
	ld b, c                                          ; $440e: $41
	rst SubAFromBC                                          ; $440f: $e7
	ld b, c                                          ; $4410: $41
	ld [hl], a                                       ; $4411: $77
	jr nz, jr_06a_448f                               ; $4412: $20 $7b

	jr nc, jr_06a_43cf                               ; $4414: $30 $b9

	sub b                                            ; $4416: $90
	cp l                                             ; $4417: $bd
	adc b                                            ; $4418: $88
	rst SubAFromDE                                          ; $4419: $df
	ld c, h                                          ; $441a: $4c
	rst AddAOntoHL                                          ; $441b: $ef
	ld b, [hl]                                       ; $441c: $46
	rst $38                                          ; $441d: $ff
	ldh [$c1], a                                     ; $441e: $e0 $c1
	sub l                                            ; $4420: $95
	rst $38                                          ; $4421: $ff
	rra                                              ; $4422: $1f
	ldh a, [rIE]                                     ; $4423: $f0 $ff
	cp a                                             ; $4425: $bf
	ret nz                                           ; $4426: $c0

	inc bc                                           ; $4427: $03
	db $fc                                           ; $4428: $fc
	ld hl, sp+$07                                    ; $4429: $f8 $07
	ld [hl], a                                       ; $442b: $77
	sub b                                            ; $442c: $90
	sbc l                                            ; $442d: $9d
	db $fd                                           ; $442e: $fd
	ld [bc], a                                       ; $442f: $02
	ld [hl], a                                       ; $4430: $77
	ld a, [$fe77]                                    ; $4431: $fa $77 $fe
	sbc e                                            ; $4434: $9b
	db $fc                                           ; $4435: $fc
	inc bc                                           ; $4436: $03
	cp $01                                           ; $4437: $fe $01
	ld [hl], a                                       ; $4439: $77
	cp $e9                                           ; $443a: $fe $e9
	rst SubAFromDE                                          ; $443c: $df
	ret nz                                           ; $443d: $c0

	sub b                                            ; $443e: $90
	ld [hl], b                                       ; $443f: $70
	ldh a, [$dc]                                     ; $4440: $f0 $dc
	inc a                                            ; $4442: $3c
	ld a, [hl]                                       ; $4443: $7e
	add [hl]                                         ; $4444: $86
	dec de                                           ; $4445: $1b
	rst SubAFromBC                                          ; $4446: $e7
	adc $31                                          ; $4447: $ce $31
	rst SubAFromBC                                          ; $4449: $e7
	jr jr_06a_44c5                                   ; $444a: $18 $79

	ld b, $bc                                        ; $444c: $06 $bc
	ld a, e                                          ; $444e: $7b
	ret nc                                           ; $444f: $d0

	adc e                                            ; $4450: $8b
	db $db                                           ; $4451: $db
	inc h                                            ; $4452: $24
	db $ed                                           ; $4453: $ed
	ld [de], a                                       ; $4454: $12
	db $e4                                           ; $4455: $e4
	dec de                                           ; $4456: $1b
	ld [hl], h                                       ; $4457: $74
	adc e                                            ; $4458: $8b
	or d                                             ; $4459: $b2
	call $c5ba                                       ; $445a: $cd $ba $c5
	ld e, e                                          ; $445d: $5b
	db $e4                                           ; $445e: $e4
	ret                                              ; $445f: $c9


	halt                                             ; $4460: $76
	xor l                                            ; $4461: $ad
	ld [hl], d                                       ; $4462: $72
	and h                                            ; $4463: $a4
	ld a, e                                          ; $4464: $7b
	ldh [$c1], a                                     ; $4465: $e0 $c1
	add b                                            ; $4467: $80
	ld c, a                                          ; $4468: $4f
	add e                                            ; $4469: $83
	rst SubAFromBC                                          ; $446a: $e7
	pop bc                                           ; $446b: $c1
	ld [hl], a                                       ; $446c: $77
	pop hl                                           ; $446d: $e1
	and e                                            ; $446e: $a3
	ld [hl], c                                       ; $446f: $71
	cp e                                             ; $4470: $bb
	ld [hl], c                                       ; $4471: $71
	ld e, e                                          ; $4472: $5b
	or c                                             ; $4473: $b1
	dec de                                           ; $4474: $1b
	pop af                                           ; $4475: $f1
	sbc e                                            ; $4476: $9b
	ld [hl], c                                       ; $4477: $71
	dec d                                            ; $4478: $15
	ld hl, sp+$1d                                    ; $4479: $f8 $1d
	ld hl, sp-$73                                    ; $447b: $f8 $8d
	ld a, b                                          ; $447d: $78
	ret z                                            ; $447e: $c8

	inc a                                            ; $447f: $3c
	jp z, Jump_06a_463c                              ; $4480: $ca $3c $46

	cp h                                             ; $4483: $bc
	ld b, $fc                                        ; $4484: $06 $fc
	ld b, $7e                                        ; $4486: $06 $7e
	ld c, d                                          ; $4488: $4a
	add b                                            ; $4489: $80
	nop                                              ; $448a: $00
	add b                                            ; $448b: $80
	add b                                            ; $448c: $80
	ld b, b                                          ; $448d: $40
	ret nz                                           ; $448e: $c0

jr_06a_448f:
	and b                                            ; $448f: $a0
	ld h, b                                          ; $4490: $60
	ldh [rAUD4LEN], a                                ; $4491: $e0 $20
	ld d, b                                          ; $4493: $50
	or b                                             ; $4494: $b0
	ld [hl], b                                       ; $4495: $70
	sub b                                            ; $4496: $90
	cp b                                             ; $4497: $b8
	ld e, b                                          ; $4498: $58
	xor b                                            ; $4499: $a8
	ld e, b                                          ; $449a: $58
	ret c                                            ; $449b: $d8

	jr z, jr_06a_44ea                                ; $449c: $28 $4c

	cp h                                             ; $449e: $bc
	ld l, h                                          ; $449f: $6c
	sub h                                            ; $44a0: $94
	ld h, $de                                        ; $44a1: $26 $de
	ld [hl-], a                                      ; $44a3: $32
	adc $92                                          ; $44a4: $ce $92
	ld l, [hl]                                       ; $44a6: $6e
	sbc e                                            ; $44a7: $9b
	ld h, a                                          ; $44a8: $67
	add b                                            ; $44a9: $80
	ld sp, hl                                        ; $44aa: $f9
	daa                                              ; $44ab: $27
	ld l, h                                          ; $44ac: $6c
	or e                                             ; $44ad: $b3
	ld a, [hl]                                       ; $44ae: $7e
	sub c                                            ; $44af: $91
	cp e                                             ; $44b0: $bb
	call c, $eed9                                    ; $44b1: $dc $d9 $ee
	ld l, c                                          ; $44b4: $69
	rst $38                                          ; $44b5: $ff
	cp l                                             ; $44b6: $bd
	ld a, [hl]                                       ; $44b7: $7e
	xor l                                            ; $44b8: $ad
	ld a, [hl]                                       ; $44b9: $7e
	sub $3f                                          ; $44ba: $d6 $3f
	db $db                                           ; $44bc: $db
	scf                                              ; $44bd: $37
	push de                                          ; $44be: $d5
	dec sp                                           ; $44bf: $3b
	jp z, Jump_06a_473d                              ; $44c0: $ca $3d $47

	cp h                                             ; $44c3: $bc
	ld h, l                                          ; $44c4: $65

jr_06a_44c5:
	sbc [hl]                                         ; $44c5: $9e
	ld h, e                                          ; $44c6: $63
	sbc [hl]                                         ; $44c7: $9e
	ld h, [hl]                                       ; $44c8: $66
	add b                                            ; $44c9: $80
	sbc e                                            ; $44ca: $9b
	ld [hl], h                                       ; $44cb: $74
	adc e                                            ; $44cc: $8b
	halt                                             ; $44cd: $76
	adc c                                            ; $44ce: $89
	ld h, [hl]                                       ; $44cf: $66
	adc c                                            ; $44d0: $89
	ld h, h                                          ; $44d1: $64
	adc c                                            ; $44d2: $89
	ld b, l                                          ; $44d3: $45
	adc b                                            ; $44d4: $88
	pop bc                                           ; $44d5: $c1
	ld [$08c1], sp                                   ; $44d6: $08 $c1 $08
	ret nc                                           ; $44d9: $d0

	ld [$0891], sp                                   ; $44da: $08 $91 $08
	adc d                                            ; $44dd: $8a
	ld de, $118a                                     ; $44de: $11 $8a $11
	and h                                            ; $44e1: $a4
	inc de                                           ; $44e2: $13
	and [hl]                                         ; $44e3: $a6
	inc de                                           ; $44e4: $13
	add e                                            ; $44e5: $83
	ld [hl], $8b                                     ; $44e6: $36 $8b
	ld [hl], $9a                                     ; $44e8: $36 $9a

jr_06a_44ea:
	db $db                                           ; $44ea: $db
	ld h, $04                                        ; $44eb: $26 $04
	rst $38                                          ; $44ed: $ff
	inc h                                            ; $44ee: $24
	ld [hl], e                                       ; $44ef: $73
	cp $9e                                           ; $44f0: $fe $9e
	ld h, $79                                        ; $44f2: $26 $79
	ld b, [hl]                                       ; $44f4: $46
	add b                                            ; $44f5: $80
	ld [de], a                                       ; $44f6: $12
	rst $38                                          ; $44f7: $ff
	sub d                                            ; $44f8: $92
	rst $38                                          ; $44f9: $ff
	sub e                                            ; $44fa: $93
	rst $38                                          ; $44fb: $ff
	ret                                              ; $44fc: $c9


	rst $38                                          ; $44fd: $ff
	ret                                              ; $44fe: $c9


	ld a, a                                          ; $44ff: $7f
	jp hl                                            ; $4500: $e9


	ld a, a                                          ; $4501: $7f
	db $fc                                           ; $4502: $fc
	ccf                                              ; $4503: $3f
	db $fc                                           ; $4504: $fc
	rrca                                             ; $4505: $0f
	cp $07                                           ; $4506: $fe $07
	rst $38                                          ; $4508: $ff
	inc bc                                           ; $4509: $03
	add b                                            ; $450a: $80
	add b                                            ; $450b: $80
	ret nz                                           ; $450c: $c0

	ret nz                                           ; $450d: $c0

	ld h, b                                          ; $450e: $60
	ldh [$38], a                                     ; $450f: $e0 $38
	ld hl, sp-$34                                    ; $4511: $f8 $cc
	ld a, h                                          ; $4513: $7c
	ld h, $80                                        ; $4514: $26 $80
	cp $d3                                           ; $4516: $fe $d3
	cp a                                             ; $4518: $bf
	add hl, hl                                       ; $4519: $29
	rst SubAFromDE                                          ; $451a: $df
	call nc, Call_06a_6a6f                           ; $451b: $d4 $6f $6a
	or a                                             ; $451e: $b7
	push de                                          ; $451f: $d5
	cp e                                             ; $4520: $bb
	xor d                                            ; $4521: $aa
	db $dd                                           ; $4522: $dd
	ld d, a                                          ; $4523: $57
	db $ec                                           ; $4524: $ec
	dec sp                                           ; $4525: $3b
	and $a7                                          ; $4526: $e6 $a7
	ld [hl], e                                       ; $4528: $73
	reti                                             ; $4529: $d9


	inc sp                                           ; $452a: $33
	db $db                                           ; $452b: $db
	ld sp, $39d0                                     ; $452c: $31 $d0 $39
	adc h                                            ; $452f: $8c
	add hl, sp                                       ; $4530: $39
	xor l                                            ; $4531: $ad
	jr @-$56                                         ; $4532: $18 $a8

	inc e                                            ; $4534: $1c
	sbc h                                            ; $4535: $9c
	adc h                                            ; $4536: $8c
	inc e                                            ; $4537: $1c
	dec b                                            ; $4538: $05
	ld a, e                                          ; $4539: $7b
	cp $9c                                           ; $453a: $fe $9c
	dec l                                            ; $453c: $2d
	inc d                                            ; $453d: $14
	xor a                                            ; $453e: $af
	ld [hl], e                                       ; $453f: $73
	cp $83                                           ; $4540: $fe $83
	ld l, $15                                        ; $4542: $2e $15
	ld e, [hl]                                       ; $4544: $5e
	dec h                                            ; $4545: $25
	ld d, h                                          ; $4546: $54
	cpl                                              ; $4547: $2f
	inc [hl]                                         ; $4548: $34
	ld c, a                                          ; $4549: $4f
	dec l                                            ; $454a: $2d
	rst SubAFromDE                                          ; $454b: $df
	add hl, hl                                       ; $454c: $29
	rst SubAFromDE                                          ; $454d: $df
	adc d                                            ; $454e: $8a
	rst $38                                          ; $454f: $ff
	sbc a                                            ; $4550: $9f
	rst $38                                          ; $4551: $ff
	sbc c                                            ; $4552: $99
	ld sp, hl                                        ; $4553: $f9
	sub b                                            ; $4554: $90
	ldh a, [$b0]                                     ; $4555: $f0 $b0
	ldh a, [$60]                                     ; $4557: $f0 $60
	ldh [$61], a                                     ; $4559: $e0 $61
	pop hl                                           ; $455b: $e1
	ld b, c                                          ; $455c: $41
	pop bc                                           ; $455d: $c1
	ld [hl], a                                       ; $455e: $77
	cp $df                                           ; $455f: $fe $df
	jp $e699                                         ; $4561: $c3 $99 $e6


	rst SubAFromBC                                          ; $4564: $e7
	ld a, [hl]                                       ; $4565: $7e
	ld sp, hl                                        ; $4566: $f9
	dec de                                           ; $4567: $1b
	rst SubAFromBC                                          ; $4568: $e7
	di                                               ; $4569: $f3
	db $dd                                           ; $456a: $dd
	add b                                            ; $456b: $80
	ld a, a                                          ; $456c: $7f
	ld [de], a                                       ; $456d: $12
	ld a, a                                          ; $456e: $7f
	cp $77                                           ; $456f: $fe $77
	adc h                                            ; $4571: $8c
	ld a, a                                          ; $4572: $7f
	inc c                                            ; $4573: $0c
	adc a                                            ; $4574: $8f
	ldh a, [$30]                                     ; $4575: $f0 $30
	ld d, b                                          ; $4577: $50
	or b                                             ; $4578: $b0
	ld hl, sp-$68                                    ; $4579: $f8 $98
	xor b                                            ; $457b: $a8
	ret c                                            ; $457c: $d8

	ld a, b                                          ; $457d: $78

Call_06a_457e:
	ret z                                            ; $457e: $c8

	ld a, b                                          ; $457f: $78
	ret z                                            ; $4580: $c8

	ld a, h                                          ; $4581: $7c
	call z, Call_06a_4cf4                            ; $4582: $cc $f4 $4c
	ld [hl], a                                       ; $4585: $77
	cp $7f                                           ; $4586: $fe $7f
	ld hl, sp-$7b                                    ; $4588: $f8 $85
	ld l, b                                          ; $458a: $68
	ret c                                            ; $458b: $d8

	ld l, b                                          ; $458c: $68
	ret c                                            ; $458d: $d8

	ld e, b                                          ; $458e: $58
	ld hl, sp+$50                                    ; $458f: $f8 $50
	ldh a, [rSVBK]                                   ; $4591: $f0 $70
	ldh a, [$e0]                                     ; $4593: $f0 $e0
	ldh [$c0], a                                     ; $4595: $e0 $c0
	ret z                                            ; $4597: $c8

	add h                                            ; $4598: $84
	adc h                                            ; $4599: $8c
	sub h                                            ; $459a: $94
	sbc h                                            ; $459b: $9c
	db $e4                                           ; $459c: $e4
	ld a, h                                          ; $459d: $7c
	ld l, b                                          ; $459e: $68
	sbc b                                            ; $459f: $98
	sbc b                                            ; $45a0: $98
	ld hl, sp+$60                                    ; $45a1: $f8 $60
	ld h, b                                          ; $45a3: $60
	cp d                                             ; $45a4: $ba
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	nop                                              ; $45a7: $00
	add b                                            ; $45a8: $80
	add b                                            ; $45a9: $80
	add b                                            ; $45aa: $80
	add b                                            ; $45ab: $80
	db $dd                                           ; $45ac: $dd
	add b                                            ; $45ad: $80
	rst $38                                          ; $45ae: $ff
	jr nz, jr_06a_45b1                               ; $45af: $20 $00

jr_06a_45b1:
	db $dd                                           ; $45b1: $dd
	adc b                                            ; $45b2: $88
	sub [hl]                                         ; $45b3: $96
	nop                                              ; $45b4: $00
	sbc c                                            ; $45b5: $99
	sbc c                                            ; $45b6: $99
	call z, Call_06a_7788                            ; $45b7: $cc $88 $77
	sbc c                                            ; $45ba: $99
	sbc c                                            ; $45bb: $99
	ld b, h                                          ; $45bc: $44
	ld [hl], a                                       ; $45bd: $77
	ei                                               ; $45be: $fb
	sbc [hl]                                         ; $45bf: $9e
	inc sp                                           ; $45c0: $33
	ld l, a                                          ; $45c1: $6f
	ei                                               ; $45c2: $fb
	ld a, e                                          ; $45c3: $7b
	db $ec                                           ; $45c4: $ec
	ld a, a                                          ; $45c5: $7f
	ei                                               ; $45c6: $fb
	sbc d                                            ; $45c7: $9a
	add b                                            ; $45c8: $80
	nop                                              ; $45c9: $00
	ld b, h                                          ; $45ca: $44
	add b                                            ; $45cb: $80
	nop                                              ; $45cc: $00
	db $dd                                           ; $45cd: $dd
	adc b                                            ; $45ce: $88
	ld c, $02                                        ; $45cf: $0e $02
	add b                                            ; $45d1: $80
	add hl, bc                                       ; $45d2: $09
	rst $38                                          ; $45d3: $ff
	dec bc                                           ; $45d4: $0b
	cp $0b                                           ; $45d5: $fe $0b
	cp $0f                                           ; $45d7: $fe $0f
	cp $8f                                           ; $45d9: $fe $8f
	ld a, [$f98e]                                    ; $45db: $fa $8e $f9
	set 7, a                                         ; $45de: $cb $ff
	ld c, e                                          ; $45e0: $4b
	ld a, h                                          ; $45e1: $7c
	ld c, a                                          ; $45e2: $4f
	ld a, b                                          ; $45e3: $78
	ld e, a                                          ; $45e4: $5f
	ld a, l                                          ; $45e5: $7d
	ld e, [hl]                                       ; $45e6: $5e
	ld a, a                                          ; $45e7: $7f
	or a                                             ; $45e8: $b7
	db $fc                                           ; $45e9: $fc
	di                                               ; $45ea: $f3
	cp $33                                           ; $45eb: $fe $33
	ld a, $61                                        ; $45ed: $3e $61
	ld a, a                                          ; $45ef: $7f
	ld h, c                                          ; $45f0: $61
	add b                                            ; $45f1: $80
	ld a, a                                          ; $45f2: $7f
	pop hl                                           ; $45f3: $e1
	rst $38                                          ; $45f4: $ff
	xor b                                            ; $45f5: $a8
	rst FarCall                                          ; $45f6: $f7
	db $ec                                           ; $45f7: $ec
	inc sp                                           ; $45f8: $33
	cp h                                             ; $45f9: $bc
	ld h, e                                          ; $45fa: $63
	cp l                                             ; $45fb: $bd
	ld h, d                                          ; $45fc: $62
	ld c, l                                          ; $45fd: $4d
	ldh [c], a                                       ; $45fe: $e2
	ld l, c                                          ; $45ff: $69
	add $6b                                          ; $4600: $c6 $6b
	call nz, $cc93                                   ; $4602: $c4 $93 $cc
	call nc, $d489                                   ; $4605: $d4 $89 $d4
	adc c                                            ; $4608: $89
	and d                                            ; $4609: $a2
	sbc c                                            ; $460a: $99
	dec hl                                           ; $460b: $2b
	sub c                                            ; $460c: $91
	rrca                                             ; $460d: $0f
	or e                                             ; $460e: $b3
	ld c, [hl]                                       ; $460f: $4e
	or a                                             ; $4610: $b7
	add b                                            ; $4611: $80
	ld d, [hl]                                       ; $4612: $56
	xor a                                            ; $4613: $af
	or b                                             ; $4614: $b0
	ldh [$f0], a                                     ; $4615: $e0 $f0
	ld h, b                                          ; $4617: $60
	ldh a, [$30]                                     ; $4618: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $461a: $f0 $10
	ld d, b                                          ; $461c: $50
	ldh [$f0], a                                     ; $461d: $e0 $f0
	add b                                            ; $461f: $80
	ld hl, sp+$00                                    ; $4620: $f8 $00
	xor b                                            ; $4622: $a8
	ld [hl], b                                       ; $4623: $70
	db $f4                                           ; $4624: $f4
	ld hl, sp-$24                                    ; $4625: $f8 $dc
	sbc b                                            ; $4627: $98
	ld [hl], b                                       ; $4628: $70
	ld a, b                                          ; $4629: $78
	sbc c                                            ; $462a: $99
	jr nc, @-$25                                     ; $462b: $30 $d9

	jr nz, jr_06a_46a0                               ; $462d: $20 $71

	inc bc                                           ; $462f: $03
	nop                                              ; $4630: $00
	adc e                                            ; $4631: $8b
	ld bc, $0080                                     ; $4632: $01 $80 $00
	inc sp                                           ; $4635: $33
	ld sp, $306f                                     ; $4636: $31 $6f $30
	ld [hl], e                                       ; $4639: $73
	inc a                                            ; $463a: $3c
	rst GetHLinHL                                          ; $463b: $cf

Jump_06a_463c:
	ccf                                              ; $463c: $3f
	rst $38                                          ; $463d: $ff
	nop                                              ; $463e: $00
	ld a, a                                          ; $463f: $7f
	ld bc, $073f                                     ; $4640: $01 $3f $07
	rrca                                             ; $4643: $0f
	dec b                                            ; $4644: $05
	nop                                              ; $4645: $00
	cp c                                             ; $4646: $b9
	add c                                            ; $4647: $81
	rst JumpTable                                          ; $4648: $c7
	pop bc                                           ; $4649: $c1
	ldh [$e0], a                                     ; $464a: $e0 $e0
	ret nz                                           ; $464c: $c0

	nop                                              ; $464d: $00
	inc hl                                           ; $464e: $23
	adc e                                            ; $464f: $8b
	rst $38                                          ; $4650: $ff
	or c                                             ; $4651: $b1
	rst $38                                          ; $4652: $ff
	db $ec                                           ; $4653: $ec
	rst $38                                          ; $4654: $ff
	ld a, $e7                                        ; $4655: $3e $e7
	rst $38                                          ; $4657: $ff
	inc bc                                           ; $4658: $03
	sbc a                                            ; $4659: $9f
	pop hl                                           ; $465a: $e1
	rst $38                                          ; $465b: $ff
	db $fc                                           ; $465c: $fc
	or a                                             ; $465d: $b7
	sbc b                                            ; $465e: $98
	sbc a                                            ; $465f: $9f
	ldh a, [$df]                                     ; $4660: $f0 $df
	ldh [rIE], a                                     ; $4662: $e0 $ff
	cp d                                             ; $4664: $ba
	rst AddAOntoHL                                          ; $4665: $ef
	rrca                                             ; $4666: $0f
	rra                                              ; $4667: $1f
	rra                                              ; $4668: $1f
	ccf                                              ; $4669: $3f
	ccf                                              ; $466a: $3f
	ld a, a                                          ; $466b: $7f
	sub c                                            ; $466c: $91

jr_06a_466d:
	ld bc, $037f                                     ; $466d: $01 $7f $03
	rst $38                                          ; $4670: $ff
	rlca                                             ; $4671: $07
	rst $38                                          ; $4672: $ff
	rra                                              ; $4673: $1f
	rst $38                                          ; $4674: $ff
	ld a, $ff                                        ; $4675: $3e $ff
	ldh a, [rIE]                                     ; $4677: $f0 $ff
	add b                                            ; $4679: $80
	adc a                                            ; $467a: $8f
	cp l                                             ; $467b: $bd

jr_06a_467c:
	rrca                                             ; $467c: $0f
	rra                                              ; $467d: $1f
	rra                                              ; $467e: $1f
	ccf                                              ; $467f: $3f

jr_06a_4680:
	add b                                            ; $4680: $80
	inc bc                                           ; $4681: $03
	ld a, a                                          ; $4682: $7f
	rra                                              ; $4683: $1f

jr_06a_4684:
	ld hl, sp-$01                                    ; $4684: $f8 $ff
	ret nz                                           ; $4686: $c0

	rst $38                                          ; $4687: $ff
	db $10                                           ; $4688: $10
	rst $38                                          ; $4689: $ff
	ld de, wPtrToScriptStack+1                                     ; $468a: $11 $ff $d1
	rst $38                                          ; $468d: $ff

jr_06a_468e:
	ld l, b                                          ; $468e: $68
	rst $38                                          ; $468f: $ff
	sbc b                                            ; $4690: $98
	rst $38                                          ; $4691: $ff
	db $fc                                           ; $4692: $fc
	rst $38                                          ; $4693: $ff
	and h                                            ; $4694: $a4
	rst $38                                          ; $4695: $ff
	or h                                             ; $4696: $b4
	rst $38                                          ; $4697: $ff
	or [hl]                                          ; $4698: $b6
	rst $38                                          ; $4699: $ff
	or d                                             ; $469a: $b2
	rst $38                                          ; $469b: $ff
	cp d                                             ; $469c: $ba
	rst GetHLinHL                                          ; $469d: $cf
	ld a, e                                          ; $469e: $7b
	adc a                                            ; $469f: $8f

jr_06a_46a0:
	adc [hl]                                         ; $46a0: $8e
	ld sp, hl                                        ; $46a1: $f9
	rra                                              ; $46a2: $1f
	db $dd                                           ; $46a3: $dd
	scf                                              ; $46a4: $37
	db $dd                                           ; $46a5: $dd
	rst SubAFromBC                                          ; $46a6: $e7
	push af                                          ; $46a7: $f5
	rst GetHLinHL                                          ; $46a8: $cf
	call $fdff                                       ; $46a9: $cd $ff $fd
	rst $38                                          ; $46ac: $ff
	dec [hl]                                         ; $46ad: $35
	rst $38                                          ; $46ae: $ff
	and l                                            ; $46af: $a5
	rst $38                                          ; $46b0: $ff
	xor l                                            ; $46b1: $ad
	ld a, e                                          ; $46b2: $7b
	cp $8b                                           ; $46b3: $fe $8b
	jp hl                                            ; $46b5: $e9


	rst $38                                          ; $46b6: $ff
	ld c, e                                          ; $46b7: $4b
	rst $38                                          ; $46b8: $ff
	ld c, d                                          ; $46b9: $4a
	rst $38                                          ; $46ba: $ff
	ld a, d                                          ; $46bb: $7a

jr_06a_46bc:
	rst $38                                          ; $46bc: $ff
	ld [hl], d                                       ; $46bd: $72
	rst $38                                          ; $46be: $ff
	and $ff                                          ; $46bf: $e6 $ff
	adc $ff                                          ; $46c1: $ce $ff
	ld e, $fb                                        ; $46c3: $1e $fb
	cp $e3                                           ; $46c5: $fe $e3
	ld a, $03                                        ; $46c7: $3e $03
	ld c, a                                          ; $46c9: $4f
	nop                                              ; $46ca: $00
	sbc l                                            ; $46cb: $9d
	ld c, c                                          ; $46cc: $49
	ld a, [hl]                                       ; $46cd: $7e
	ld b, a                                          ; $46ce: $47
	nop                                              ; $46cf: $00
	ld h, a                                          ; $46d0: $67
	jr nz, jr_06a_466d                               ; $46d1: $20 $9a

	or b                                             ; $46d3: $b0
	ld h, b                                          ; $46d4: $60
	ret nc                                           ; $46d5: $d0

	ldh [$f8], a                                     ; $46d6: $e0 $f8
	cp a                                             ; $46d8: $bf
	ld hl, sp-$0c                                    ; $46d9: $f8 $f4
	sbc [hl]                                         ; $46db: $9e
	ld a, b                                          ; $46dc: $78
	ld a, e                                          ; $46dd: $7b
	jr nz, jr_06a_467c                               ; $46de: $20 $9c

	ld hl, sp-$27                                    ; $46e0: $f8 $d9
	ld [hl], b                                       ; $46e2: $70
	ld c, a                                          ; $46e3: $4f
	jr nz, jr_06a_4684                               ; $46e4: $20 $9e

	adc $77                                          ; $46e6: $ce $77
	jr nz, jr_06a_4680                               ; $46e8: $20 $96

	nop                                              ; $46ea: $00
	ld a, $03                                        ; $46eb: $3e $03
	rrca                                             ; $46ed: $0f
	rlca                                             ; $46ee: $07
	nop                                              ; $46ef: $00
	ld bc, $0182                                     ; $46f0: $01 $82 $01
	cpl                                              ; $46f3: $2f
	jr nz, jr_06a_468e                               ; $46f4: $20 $98

	rst $38                                          ; $46f6: $ff

jr_06a_46f7:
	ld bc, $fc3f                                     ; $46f7: $01 $3f $fc
	or a                                             ; $46fa: $b7
	jr c, jr_06a_46bc                                ; $46fb: $38 $bf

	ld c, e                                          ; $46fd: $4b
	jr nz, @+$59                                     ; $46fe: $20 $57

	add b                                            ; $4700: $80
	sbc h                                            ; $4701: $9c
	ret                                              ; $4702: $c9


	rst $38                                          ; $4703: $ff
	ld c, a                                          ; $4704: $4f
	ld [hl], a                                       ; $4705: $77
	add b                                            ; $4706: $80
	sbc d                                            ; $4707: $9a
	ld a, h                                          ; $4708: $7c
	ld e, [hl]                                       ; $4709: $5e
	ld a, l                                          ; $470a: $7d
	or h                                             ; $470b: $b4
	rst $38                                          ; $470c: $ff
	ld b, a                                          ; $470d: $47
	add b                                            ; $470e: $80
	sbc d                                            ; $470f: $9a
	sub b                                            ; $4710: $90
	ld h, b                                          ; $4711: $60
	ld d, b                                          ; $4712: $50
	ldh [$f8], a                                     ; $4713: $e0 $f8
	ld a, d                                          ; $4715: $7a
	sbc [hl]                                         ; $4716: $9e
	sub l                                            ; $4717: $95
	db $f4                                           ; $4718: $f4
	ld [$78fc], sp                                   ; $4719: $08 $fc $78
	ld d, b                                          ; $471c: $50
	ld hl, sp-$07                                    ; $471d: $f8 $f9
	ldh a, [$f9]                                     ; $471f: $f0 $f9
	nop                                              ; $4721: $00
	ld e, a                                          ; $4722: $5f
	add b                                            ; $4723: $80
	sbc b                                            ; $4724: $98
	ld [hl], a                                       ; $4725: $77
	jr c, jr_06a_46f7                                ; $4726: $38 $cf

	ccf                                              ; $4728: $3f
	cp $01                                           ; $4729: $fe $01
	ld a, a                                          ; $472b: $7f
	cp a                                             ; $472c: $bf
	ccf                                              ; $472d: $3f
	rrca                                             ; $472e: $0f
	sbc h                                            ; $472f: $9c
	inc bc                                           ; $4730: $03
	ld bc, $3707                                     ; $4731: $01 $07 $37
	add b                                            ; $4734: $80
	sub e                                            ; $4735: $93
	cp [hl]                                          ; $4736: $be
	rst SubAFromBC                                          ; $4737: $e7
	ccf                                              ; $4738: $3f
	jp $01ff                                         ; $4739: $c3 $ff $01


	rst $38                                          ; $473c: $ff

Jump_06a_473d:
	nop                                              ; $473d: $00
	pop af                                           ; $473e: $f1
	cp $a7                                           ; $473f: $fe $a7
	ld a, b                                          ; $4741: $78
	inc bc                                           ; $4742: $03
	add b                                            ; $4743: $80
	sbc b                                            ; $4744: $98
	ld a, h                                          ; $4745: $7c
	ld e, a                                          ; $4746: $5f
	ld a, h                                          ; $4747: $7c
	or l                                             ; $4748: $b5
	rst $38                                          ; $4749: $ff
	ldh a, [c]                                       ; $474a: $f2
	rst $38                                          ; $474b: $ff
	ld c, a                                          ; $474c: $4f
	add b                                            ; $474d: $80
	sbc l                                            ; $474e: $9d
	ret nc                                           ; $474f: $d0

	jr nz, jr_06a_47c1                               ; $4750: $20 $6f

	add b                                            ; $4752: $80
	sub l                                            ; $4753: $95

jr_06a_4754:
	db $fc                                           ; $4754: $fc
	nop                                              ; $4755: $00
	ldh a, [$0c]                                     ; $4756: $f0 $0c
	ret z                                            ; $4758: $c8

	jr c, jr_06a_4754                                ; $4759: $38 $f9

	ldh a, [$79]                                     ; $475b: $f0 $79
	add b                                            ; $475d: $80
	ld c, a                                          ; $475e: $4f
	add b                                            ; $475f: $80
	ld [hl], a                                       ; $4760: $77
	nop                                              ; $4761: $00
	ld a, e                                          ; $4762: $7b
	add b                                            ; $4763: $80
	sbc e                                            ; $4764: $9b
	nop                                              ; $4765: $00
	ld c, $07                                        ; $4766: $0e $07
	add e                                            ; $4768: $83
	dec sp                                           ; $4769: $3b
	add b                                            ; $476a: $80
	sbc h                                            ; $476b: $9c
	ld h, $ff                                        ; $476c: $26 $ff
	rst $38                                          ; $476e: $ff
	ld [hl], e                                       ; $476f: $73
	add b                                            ; $4770: $80
	ld a, a                                          ; $4771: $7f
	cp $9d                                           ; $4772: $fe $9d
	add hl, sp                                       ; $4774: $39
	cp $4f                                           ; $4775: $fe $4f
	add b                                            ; $4777: $80
	rst SubAFromDE                                          ; $4778: $df
	add b                                            ; $4779: $80
	sub d                                            ; $477a: $92
	pop bc                                           ; $477b: $c1
	add c                                            ; $477c: $81
	ld b, b                                          ; $477d: $40
	ret nz                                           ; $477e: $c0

	ld h, b                                          ; $477f: $60
	ldh [$38], a                                     ; $4780: $e0 $38
	ldh a, [$3c]                                     ; $4782: $f0 $3c
	ld hl, sp+$2e                                    ; $4784: $f8 $2e
	db $fc                                           ; $4786: $fc
	dec hl                                           ; $4787: $2b
	ld a, d                                          ; $4788: $7a
	ld e, [hl]                                       ; $4789: $5e
	sbc h                                            ; $478a: $9c
	ld d, d                                          ; $478b: $52
	rst $38                                          ; $478c: $ff
	sub d                                            ; $478d: $92
	ld a, d                                          ; $478e: $7a
	inc a                                            ; $478f: $3c
	ld a, a                                          ; $4790: $7f
	adc $94                                          ; $4791: $ce $94
	ld h, h                                          ; $4793: $64
	rst $38                                          ; $4794: $ff
	call nz, $ccff                                   ; $4795: $c4 $ff $cc
	rst $38                                          ; $4798: $ff
	jr nz, jr_06a_479b                               ; $4799: $20 $00

jr_06a_479b:
	ldh [rLCDC], a                                   ; $479b: $e0 $40
	nop                                              ; $479d: $00
	cp h                                             ; $479e: $bc
	ret nz                                           ; $479f: $c0

	ld bc, $0703                                     ; $47a0: $01 $03 $07
	rst GetHLinHL                                          ; $47a3: $cf
	ld a, [hl]                                       ; $47a4: $7e
	cp d                                             ; $47a5: $ba
	adc h                                            ; $47a6: $8c
	rst GetHLinHL                                          ; $47a7: $cf
	cp $fc                                           ; $47a8: $fe $fc
	inc a                                            ; $47aa: $3c
	ld hl, sp+$38                                    ; $47ab: $f8 $38
	ld hl, sp+$28                                    ; $47ad: $f8 $28
	ld hl, sp+$68                                    ; $47af: $f8 $68
	ld hl, sp+$48                                    ; $47b1: $f8 $48
	ld hl, sp+$4f                                    ; $47b3: $f8 $4f
	ld sp, hl                                        ; $47b5: $f9
	ld h, b                                          ; $47b6: $60
	nop                                              ; $47b7: $00
	ldh [$60], a                                     ; $47b8: $e0 $60
	sbc $c0                                          ; $47ba: $de $c0
	cp l                                             ; $47bc: $bd
	pop bc                                           ; $47bd: $c1
	inc bc                                           ; $47be: $03
	rlca                                             ; $47bf: $07
	rst GetHLinHL                                          ; $47c0: $cf

jr_06a_47c1:
	dec sp                                           ; $47c1: $3b
	ldh [$df], a                                     ; $47c2: $e0 $df
	ld h, b                                          ; $47c4: $60
	sbc [hl]                                         ; $47c5: $9e
	ldh [$7b], a                                     ; $47c6: $e0 $7b
	ld [hl], a                                       ; $47c8: $77
	sbc [hl]                                         ; $47c9: $9e
	ld h, c                                          ; $47ca: $61
	dec hl                                           ; $47cb: $2b
	ldh [rPCM34], a                                  ; $47cc: $e0 $77
	add b                                            ; $47ce: $80
	sbc [hl]                                         ; $47cf: $9e
	ld b, c                                          ; $47d0: $41
	dec de                                           ; $47d1: $1b
	add b                                            ; $47d2: $80
	ld [hl], e                                       ; $47d3: $73
	ret nz                                           ; $47d4: $c0

	ld a, e                                          ; $47d5: $7b
	sbc l                                            ; $47d6: $9d
	ld a, a                                          ; $47d7: $7f
	add b                                            ; $47d8: $80
	sbc [hl]                                         ; $47d9: $9e
	ld h, e                                          ; $47da: $63
	inc sp                                           ; $47db: $33
	ret nz                                           ; $47dc: $c0

	ld [bc], a                                       ; $47dd: $02
	add d                                            ; $47de: $82
	sub [hl]                                         ; $47df: $96
	add hl, bc                                       ; $47e0: $09
	dec bc                                           ; $47e1: $0b
	dec bc                                           ; $47e2: $0b
	rrca                                             ; $47e3: $0f
	adc [hl]                                         ; $47e4: $8e
	adc c                                            ; $47e5: $89
	rst GetHLinHL                                          ; $47e6: $cf
	ld c, a                                          ; $47e7: $4f
	rst $38                                          ; $47e8: $ff
	sbc $fe                                          ; $47e9: $de $fe
	add b                                            ; $47eb: $80
	ei                                               ; $47ec: $fb
	rst $38                                          ; $47ed: $ff
	cp $78                                           ; $47ee: $fe $78
	ld c, a                                          ; $47f0: $4f
	ld e, a                                          ; $47f1: $5f
	ld e, [hl]                                       ; $47f2: $5e
	or l                                             ; $47f3: $b5
	di                                               ; $47f4: $f3
	inc sp                                           ; $47f5: $33
	ld h, c                                          ; $47f6: $61

jr_06a_47f7:
	ld h, c                                          ; $47f7: $61
	ld a, b                                          ; $47f8: $78
	ld a, h                                          ; $47f9: $7c
	ld a, a                                          ; $47fa: $7f
	rst $38                                          ; $47fb: $ff
	cp $3e                                           ; $47fc: $fe $3e
	ld a, a                                          ; $47fe: $7f
	ld a, a                                          ; $47ff: $7f
	pop hl                                           ; $4800: $e1
	xor b                                            ; $4801: $a8
	db $ec                                           ; $4802: $ec
	cp h                                             ; $4803: $bc
	cp l                                             ; $4804: $bd
	ld c, l                                          ; $4805: $4d
	ld l, c                                          ; $4806: $69
	ld l, e                                          ; $4807: $6b
	rst $38                                          ; $4808: $ff
	rst FarCall                                          ; $4809: $f7
	inc sp                                           ; $480a: $33
	adc c                                            ; $480b: $89
	ld h, e                                          ; $480c: $63
	ld h, d                                          ; $480d: $62
	ldh [c], a                                       ; $480e: $e2
	add $c4                                          ; $480f: $c6 $c4
	sub e                                            ; $4811: $93
	call nc, $a2d4                                   ; $4812: $d4 $d4 $a2
	dec hl                                           ; $4815: $2b
	ld c, $4e                                        ; $4816: $0e $4e
	ld d, l                                          ; $4818: $55
	call z, $8989                                    ; $4819: $cc $89 $89
	sbc c                                            ; $481c: $99
	sub c                                            ; $481d: $91
	or e                                             ; $481e: $b3
	or a                                             ; $481f: $b7
	xor a                                            ; $4820: $af
	or b                                             ; $4821: $b0
	sbc $f0                                          ; $4822: $de $f0
	add b                                            ; $4824: $80
	jr nc, jr_06a_47f7                               ; $4825: $30 $d0

	ld hl, sp-$08                                    ; $4827: $f8 $f8
	ldh [$60], a                                     ; $4829: $e0 $60
	jr nc, jr_06a_483d                               ; $482b: $30 $10

jr_06a_482d:
	ret nz                                           ; $482d: $c0

	ldh [rP1], a                                     ; $482e: $e0 $00
	nop                                              ; $4830: $00
	db $fc                                           ; $4831: $fc
	ldh a, [$c8]                                     ; $4832: $f0 $c8
	ld sp, hl                                        ; $4834: $f9
	ld d, c                                          ; $4835: $51
	ld bc, $8000                                     ; $4836: $01 $00 $80
	nop                                              ; $4839: $00
	inc c                                            ; $483a: $0c
	jr c, jr_06a_482d                                ; $483b: $38 $f0

jr_06a_483d:
	jr nz, jr_06a_4842                               ; $483d: $20 $03

	ld bc, $3300                                     ; $483f: $01 $00 $33

jr_06a_4842:
	ld l, [hl]                                       ; $4842: $6e
	ld [hl], c                                       ; $4843: $71
	sub l                                            ; $4844: $95
	rst GetHLinHL                                          ; $4845: $cf
	cp a                                             ; $4846: $bf
	ld a, a                                          ; $4847: $7f
	ccf                                              ; $4848: $3f
	rrca                                             ; $4849: $0f
	ld sp, $2f31                                     ; $484a: $31 $31 $2f
	inc a                                            ; $484d: $3c
	ld [hl], b                                       ; $484e: $70
	cp $95                                           ; $484f: $fe $95
	ld b, $83                                        ; $4851: $06 $83
	ret nz                                           ; $4853: $c0

	ret nz                                           ; $4854: $c0

	ldh [$e0], a                                     ; $4855: $e0 $e0
	ret nz                                           ; $4857: $c0

	nop                                              ; $4858: $00
	rlca                                             ; $4859: $07
	ld bc, $9bfb                                     ; $485a: $01 $fb $9b
	inc hl                                           ; $485d: $23
	or c                                             ; $485e: $b1
	db $ec                                           ; $485f: $ec
	cp $de                                           ; $4860: $fe $de
	rst $38                                          ; $4862: $ff
	sbc [hl]                                         ; $4863: $9e
	rst SubAFromBC                                          ; $4864: $e7
	sbc $ff                                          ; $4865: $de $ff
	sbc [hl]                                         ; $4867: $9e
	daa                                              ; $4868: $27
	ld a, e                                          ; $4869: $7b
	pop de                                           ; $486a: $d1
	sub l                                            ; $486b: $95
	inc e                                            ; $486c: $1c
	ccf                                              ; $486d: $3f
	rst SubAFromDE                                          ; $486e: $df
	rlca                                             ; $486f: $07

jr_06a_4870:
	rrca                                             ; $4870: $0f
	rrca                                             ; $4871: $0f
	rra                                              ; $4872: $1f
	rra                                              ; $4873: $1f
	ccf                                              ; $4874: $3f
	ld hl, sp+$7b                                    ; $4875: $f8 $7b
	or h                                             ; $4877: $b4

jr_06a_4878:
	db $fd                                           ; $4878: $fd
	sbc h                                            ; $4879: $9c
	ccf                                              ; $487a: $3f
	ld a, a                                          ; $487b: $7f
	ld a, a                                          ; $487c: $7f
	call c, $96ff                                    ; $487d: $dc $ff $96
	nop                                              ; $4880: $00
	ld bc, $0703                                     ; $4881: $01 $03 $07
	rra                                              ; $4884: $1f
	ld a, $f0                                        ; $4885: $3e $f0
	add b                                            ; $4887: $80
	adc a                                            ; $4888: $8f
	ld [hl], a                                       ; $4889: $77
	db $e3                                           ; $488a: $e3
	sbc h                                            ; $488b: $9c
	ld a, a                                          ; $488c: $7f

jr_06a_488d:
	ld hl, sp-$40                                    ; $488d: $f8 $c0
	db $fd                                           ; $488f: $fd
	sub e                                            ; $4890: $93
	inc bc                                           ; $4891: $03
	rra                                              ; $4892: $1f

jr_06a_4893:
	rst $38                                          ; $4893: $ff
	rst $38                                          ; $4894: $ff
	db $10                                           ; $4895: $10
	ld de, $68d1                                     ; $4896: $11 $d1 $68
	sbc b                                            ; $4899: $98
	db $fc                                           ; $489a: $fc
	and h                                            ; $489b: $a4
	or h                                             ; $489c: $b4
	reti                                             ; $489d: $d9


	rst $38                                          ; $489e: $ff
	add a                                            ; $489f: $87
	or [hl]                                          ; $48a0: $b6
	or d                                             ; $48a1: $b2
	cp d                                             ; $48a2: $ba
	ld a, e                                          ; $48a3: $7b
	ld sp, hl                                        ; $48a4: $f9
	db $dd                                           ; $48a5: $dd
	db $dd                                           ; $48a6: $dd
	push af                                          ; $48a7: $f5
	rst $38                                          ; $48a8: $ff
	rst $38                                          ; $48a9: $ff
	rst GetHLinHL                                          ; $48aa: $cf
	adc a                                            ; $48ab: $8f
	rra                                              ; $48ac: $1f
	scf                                              ; $48ad: $37
	rst SubAFromBC                                          ; $48ae: $e7
	rst GetHLinHL                                          ; $48af: $cf
	call $35fd                                       ; $48b0: $cd $fd $35
	and l                                            ; $48b3: $a5
	xor l                                            ; $48b4: $ad
	xor l                                            ; $48b5: $ad
	jp hl                                            ; $48b6: $e9


	ld c, e                                          ; $48b7: $4b
	reti                                             ; $48b8: $d9


	rst $38                                          ; $48b9: $ff
	sub a                                            ; $48ba: $97
	ld c, d                                          ; $48bb: $4a
	ld a, d                                          ; $48bc: $7a
	ld [hl], d                                       ; $48bd: $72
	and $ce                                          ; $48be: $e6 $ce
	ld e, $fe                                        ; $48c0: $1e $fe
	ld a, $dc                                        ; $48c2: $3e $dc
	rst $38                                          ; $48c4: $ff
	sbc h                                            ; $48c5: $9c
	ei                                               ; $48c6: $fb
	db $e3                                           ; $48c7: $e3
	inc bc                                           ; $48c8: $03

jr_06a_48c9:
	dec sp                                           ; $48c9: $3b
	nop                                              ; $48ca: $00
	sbc [hl]                                         ; $48cb: $9e
	or a                                             ; $48cc: $b7
	ld l, e                                          ; $48cd: $6b
	nop                                              ; $48ce: $00
	sbc [hl]                                         ; $48cf: $9e
	db $fc                                           ; $48d0: $fc
	ld [hl], a                                       ; $48d1: $77
	nop                                              ; $48d2: $00
	ld b, a                                          ; $48d3: $47
	jr nz, jr_06a_4870                               ; $48d4: $20 $9a

	db $f4                                           ; $48d6: $f4
	db $fc                                           ; $48d7: $fc
	ld d, b                                          ; $48d8: $50
	ld sp, hl                                        ; $48d9: $f9
	ld [hl], c                                       ; $48da: $71
	ld a, e                                          ; $48db: $7b
	jr nz, jr_06a_4878                               ; $48dc: $20 $9a

	ld [$f878], sp                                   ; $48de: $08 $78 $f8
	ldh a, [rP1]                                     ; $48e1: $f0 $00
	ccf                                              ; $48e3: $3f
	jr nz, jr_06a_4965                               ; $48e4: $20 $7f

	xor $9e                                          ; $48e6: $ee $9e
	add d                                            ; $48e8: $82
	inc sp                                           ; $48e9: $33
	jr nz, jr_06a_48c9                               ; $48ea: $20 $dd

	rst $38                                          ; $48ec: $ff
	ld [hl], a                                       ; $48ed: $77
	jr nz, jr_06a_488d                               ; $48ee: $20 $9d

jr_06a_48f0:
	db $fc                                           ; $48f0: $fc
	xor a                                            ; $48f1: $af
	ld l, e                                          ; $48f2: $6b
	jr nz, jr_06a_4893                               ; $48f3: $20 $9e

	ld [hl], b                                       ; $48f5: $70
	ld l, e                                          ; $48f6: $6b
	jr nz, jr_06a_496c                               ; $48f7: $20 $73

	add b                                            ; $48f9: $80
	sbc [hl]                                         ; $48fa: $9e
	adc e                                            ; $48fb: $8b
	ld h, a                                          ; $48fc: $67
	add b                                            ; $48fd: $80
	sbc [hl]                                         ; $48fe: $9e
	db $fc                                           ; $48ff: $fc
	ld e, a                                          ; $4900: $5f
	add b                                            ; $4901: $80
	sbc [hl]                                         ; $4902: $9e
	ld a, l                                          ; $4903: $7d
	dec hl                                           ; $4904: $2b
	add b                                            ; $4905: $80
	sbc e                                            ; $4906: $9b
	call c, $d970                                    ; $4907: $dc $70 $d9
	ld h, c                                          ; $490a: $61
	ld a, e                                          ; $490b: $7b
	add b                                            ; $490c: $80
	sbc e                                            ; $490d: $9b
	ld a, b                                          ; $490e: $78
	sbc b                                            ; $490f: $98
	ld hl, sp+$70                                    ; $4910: $f8 $70
	ld l, a                                          ; $4912: $6f
	add b                                            ; $4913: $80
	sbc l                                            ; $4914: $9d
	ld h, c                                          ; $4915: $61
	db $db                                           ; $4916: $db
	ld l, a                                          ; $4917: $6f
	add b                                            ; $4918: $80
	sub a                                            ; $4919: $97
	ccf                                              ; $491a: $3f
	inc a                                            ; $491b: $3c
	ld h, b                                          ; $491c: $60
	nop                                              ; $491d: $00
	inc bc                                           ; $491e: $03
	rlca                                             ; $491f: $07
	nop                                              ; $4920: $00
	add c                                            ; $4921: $81
	ld l, a                                          ; $4922: $6f
	add b                                            ; $4923: $80
	ld l, e                                          ; $4924: $6b
	add c                                            ; $4925: $81
	ld l, e                                          ; $4926: $6b
	add b                                            ; $4927: $80
	sbc l                                            ; $4928: $9d
	rst AddAOntoHL                                          ; $4929: $ef
	or a                                             ; $492a: $b7
	ld l, a                                          ; $492b: $6f
	add b                                            ; $492c: $80
	sbc h                                            ; $492d: $9c
	db $fc                                           ; $492e: $fc
	jr c, jr_06a_48f0                                ; $492f: $38 $bf

	ld l, e                                          ; $4931: $6b
	add b                                            ; $4932: $80
	sbc [hl]                                         ; $4933: $9e
	ldh a, [$5b]                                     ; $4934: $f0 $5b
	add b                                            ; $4936: $80
	sbc l                                            ; $4937: $9d
	adc d                                            ; $4938: $8a
	adc a                                            ; $4939: $8f
	ld l, a                                          ; $493a: $6f
	add b                                            ; $493b: $80
	rst SubAFromDE                                          ; $493c: $df
	rst $38                                          ; $493d: $ff
	sbc [hl]                                         ; $493e: $9e
	ld hl, sp+$5f                                    ; $493f: $f8 $5f
	add b                                            ; $4941: $80
	sbc l                                            ; $4942: $9d
	ld a, a                                          ; $4943: $7f
	ld a, l                                          ; $4944: $7d
	scf                                              ; $4945: $37
	add b                                            ; $4946: $80
	sbc c                                            ; $4947: $99
	ld h, b                                          ; $4948: $60
	call nc, $d09c                                   ; $4949: $d4 $9c $d0
	cp c                                             ; $494c: $b9
	ld bc, $807b                                     ; $494d: $01 $7b $80
	sbc e                                            ; $4950: $9b
	ld hl, sp-$28                                    ; $4951: $f8 $d8
	ld a, b                                          ; $4953: $78
	jr nc, jr_06a_49c9                               ; $4954: $30 $73

	add b                                            ; $4956: $80
	adc [hl]                                         ; $4957: $8e
	ld l, h                                          ; $4958: $6c
	ld h, e                                          ; $4959: $63
	rst SubAFromDE                                          ; $495a: $df
	cp a                                             ; $495b: $bf
	ld a, l                                          ; $495c: $7d
	ccf                                              ; $495d: $3f
	inc c                                            ; $495e: $0c
	ld sp, $3f33                                     ; $495f: $31 $33 $3f
	jr c, @+$62                                      ; $4962: $38 $60

	inc bc                                           ; $4964: $03

jr_06a_4965:
	rlca                                             ; $4965: $07
	dec b                                            ; $4966: $05
	nop                                              ; $4967: $00
	add b                                            ; $4968: $80
	ld l, a                                          ; $4969: $6f
	add b                                            ; $496a: $80
	ld sp, hl                                        ; $496b: $f9

jr_06a_496c:
	ld a, e                                          ; $496c: $7b
	add b                                            ; $496d: $80
	sbc e                                            ; $496e: $9b
	cp [hl]                                          ; $496f: $be
	rst $38                                          ; $4970: $ff
	rst $38                                          ; $4971: $ff
	sbc a                                            ; $4972: $9f
	ld [hl], a                                       ; $4973: $77
	add b                                            ; $4974: $80
	sbc d                                            ; $4975: $9a
	ld h, a                                          ; $4976: $67
	inc bc                                           ; $4977: $03
	pop hl                                           ; $4978: $e1
	db $fc                                           ; $4979: $fc
	cp b                                             ; $497a: $b8
	ld h, a                                          ; $497b: $67
	nop                                              ; $497c: $00
	rst SubAFromDE                                          ; $497d: $df
	ldh [$fb], a                                     ; $497e: $e0 $fb
	add a                                            ; $4980: $87
	add b                                            ; $4981: $80
	pop bc                                           ; $4982: $c1
	ld b, b                                          ; $4983: $40
	ld h, b                                          ; $4984: $60
	jr c, jr_06a_49c3                                ; $4985: $38 $3c

	ld l, $2b                                        ; $4987: $2e $2b
	add b                                            ; $4989: $80
	add c                                            ; $498a: $81
	ret nz                                           ; $498b: $c0

	ldh [$f0], a                                     ; $498c: $e0 $f0
	ld hl, sp-$04                                    ; $498e: $f8 $fc
	rst $38                                          ; $4990: $ff
	ld c, e                                          ; $4991: $4b
	ld d, d                                          ; $4992: $52
	sub d                                            ; $4993: $92
	or d                                             ; $4994: $b2
	ld h, $64                                        ; $4995: $26 $64
	call nz, $d9cc                                   ; $4997: $c4 $cc $d9
	rst $38                                          ; $499a: $ff
	sbc e                                            ; $499b: $9b
	jr nz, @+$62                                     ; $499c: $20 $60

	nop                                              ; $499e: $00
	ret nz                                           ; $499f: $c0

	ld a, d                                          ; $49a0: $7a
	dec b                                            ; $49a1: $05
	sbc h                                            ; $49a2: $9c
	rst GetHLinHL                                          ; $49a3: $cf
	nop                                              ; $49a4: $00
	ld b, b                                          ; $49a5: $40
	db $fc                                           ; $49a6: $fc
	sub h                                            ; $49a7: $94
	inc bc                                           ; $49a8: $03
	rst $38                                          ; $49a9: $ff
	cp $3c                                           ; $49aa: $fe $3c
	jr c, jr_06a_49d6                                ; $49ac: $38 $28

	ld l, b                                          ; $49ae: $68
	ld c, b                                          ; $49af: $48
	ld c, a                                          ; $49b0: $4f
	rst GetHLinHL                                          ; $49b1: $cf
	db $fc                                           ; $49b2: $fc
	call c, $9ef8                                    ; $49b3: $dc $f8 $9e
	ld sp, hl                                        ; $49b6: $f9
	inc bc                                           ; $49b7: $03
	ret nz                                           ; $49b8: $c0

	sbc e                                            ; $49b9: $9b
	ld b, b                                          ; $49ba: $40
	and b                                            ; $49bb: $a0
	nop                                              ; $49bc: $00
	pop bc                                           ; $49bd: $c1
	ld [hl], a                                       ; $49be: $77
	ret nz                                           ; $49bf: $c0

	sbc [hl]                                         ; $49c0: $9e
	ld h, b                                          ; $49c1: $60
	ld l, l                                          ; $49c2: $6d

jr_06a_49c3:
	call $c047                                       ; $49c3: $cd $47 $c0
	sbc d                                            ; $49c6: $9a
	jr nz, @+$72                                     ; $49c7: $20 $70

jr_06a_49c9:
	ret nz                                           ; $49c9: $c0

	nop                                              ; $49ca: $00
	ld h, c                                          ; $49cb: $61
	ld [hl], e                                       ; $49cc: $73
	ldh [$73], a                                     ; $49cd: $e0 $73
	ld c, e                                          ; $49cf: $4b
	dec sp                                           ; $49d0: $3b
	and b                                            ; $49d1: $a0
	sbc [hl]                                         ; $49d2: $9e
	ld b, c                                          ; $49d3: $41
	inc de                                           ; $49d4: $13
	and b                                            ; $49d5: $a0

jr_06a_49d6:
	sbc c                                            ; $49d6: $99
	nop                                              ; $49d7: $00
	ld [hl], b                                       ; $49d8: $70
	ldh [$e0], a                                     ; $49d9: $e0 $e0
	ld bc, $1f63                                     ; $49db: $01 $63 $1f
	ret nz                                           ; $49de: $c0

	ld hl, sp+$01                                    ; $49df: $f8 $01
	add b                                            ; $49e1: $80
	add hl, bc                                       ; $49e2: $09
	rst $38                                          ; $49e3: $ff
	dec bc                                           ; $49e4: $0b
	cp $0b                                           ; $49e5: $fe $0b
	cp $0f                                           ; $49e7: $fe $0f
	cp $8e                                           ; $49e9: $fe $8e
	ei                                               ; $49eb: $fb
	adc c                                            ; $49ec: $89
	rst $38                                          ; $49ed: $ff
	rst GetHLinHL                                          ; $49ee: $cf
	cp $4f                                           ; $49ef: $fe $4f
	ld a, b                                          ; $49f1: $78
	ld c, a                                          ; $49f2: $4f
	ld a, b                                          ; $49f3: $78
	ld e, a                                          ; $49f4: $5f
	ld a, l                                          ; $49f5: $7d
	ld e, [hl]                                       ; $49f6: $5e
	ld a, a                                          ; $49f7: $7f
	or a                                             ; $49f8: $b7
	db $fc                                           ; $49f9: $fc
	di                                               ; $49fa: $f3
	cp $33                                           ; $49fb: $fe $33
	ld a, $61                                        ; $49fd: $3e $61
	ld a, a                                          ; $49ff: $7f
	ld h, c                                          ; $4a00: $61
	add b                                            ; $4a01: $80
	ld a, a                                          ; $4a02: $7f
	pop hl                                           ; $4a03: $e1
	rst $38                                          ; $4a04: $ff
	xor b                                            ; $4a05: $a8
	rst FarCall                                          ; $4a06: $f7
	db $ec                                           ; $4a07: $ec
	inc sp                                           ; $4a08: $33
	cp h                                             ; $4a09: $bc
	ld h, e                                          ; $4a0a: $63
	cp l                                             ; $4a0b: $bd
	ld h, d                                          ; $4a0c: $62
	ld c, l                                          ; $4a0d: $4d
	ldh [c], a                                       ; $4a0e: $e2
	ld l, c                                          ; $4a0f: $69
	add $6b                                          ; $4a10: $c6 $6b
	call nz, $cc93                                   ; $4a12: $c4 $93 $cc
	call nc, $d489                                   ; $4a15: $d4 $89 $d4
	adc c                                            ; $4a18: $89
	and d                                            ; $4a19: $a2
	sbc c                                            ; $4a1a: $99
	dec hl                                           ; $4a1b: $2b
	sub c                                            ; $4a1c: $91
	ld c, $b3                                        ; $4a1d: $0e $b3
	ld c, [hl]                                       ; $4a1f: $4e
	or a                                             ; $4a20: $b7
	add b                                            ; $4a21: $80
	ld d, l                                          ; $4a22: $55
	xor a                                            ; $4a23: $af
	or b                                             ; $4a24: $b0
	ldh [$f0], a                                     ; $4a25: $e0 $f0
	ld h, b                                          ; $4a27: $60
	ldh a, [$30]                                     ; $4a28: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $4a2a: $f0 $10
	ld [hl], b                                       ; $4a2c: $70
	add b                                            ; $4a2d: $80
	ret nc                                           ; $4a2e: $d0

	ldh [$f8], a                                     ; $4a2f: $e0 $f8
	nop                                              ; $4a31: $00
	ld hl, sp+$60                                    ; $4a32: $f8 $60
	db $f4                                           ; $4a34: $f4
	ld hl, sp-$64                                    ; $4a35: $f8 $9c
	ret c                                            ; $4a37: $d8

	ldh a, [$78]                                     ; $4a38: $f0 $78
	sbc c                                            ; $4a3a: $99
	jr nc, jr_06a_4a3e                               ; $4a3b: $30 $01

	nop                                              ; $4a3d: $00

jr_06a_4a3e:
	ld bc, $0003                                     ; $4a3e: $01 $03 $00
	adc e                                            ; $4a41: $8b
	ld bc, $0080                                     ; $4a42: $01 $80 $00
	inc sp                                           ; $4a45: $33
	ld sp, $306f                                     ; $4a46: $31 $6f $30
	ld [hl], b                                       ; $4a49: $70
	cpl                                              ; $4a4a: $2f
	call $af3e                                       ; $4a4b: $cd $3e $af
	ld [hl], b                                       ; $4a4e: $70
	ld a, a                                          ; $4a4f: $7f
	inc bc                                           ; $4a50: $03
	ccf                                              ; $4a51: $3f
	rlca                                             ; $4a52: $07
	inc c                                            ; $4a53: $0c
	dec b                                            ; $4a54: $05
	nop                                              ; $4a55: $00
	cp c                                             ; $4a56: $b9
	add b                                            ; $4a57: $80
	ret nz                                           ; $4a58: $c0

	ret nz                                           ; $4a59: $c0

	ldh [$e0], a                                     ; $4a5a: $e0 $e0
	ret nz                                           ; $4a5c: $c0

	nop                                              ; $4a5d: $00
	inc hl                                           ; $4a5e: $23
	adc e                                            ; $4a5f: $8b
	rst $38                                          ; $4a60: $ff
	or c                                             ; $4a61: $b1
	rst $38                                          ; $4a62: $ff
	db $ec                                           ; $4a63: $ec
	rst $38                                          ; $4a64: $ff
	cp $27                                           ; $4a65: $fe $27
	rst $38                                          ; $4a67: $ff
	inc bc                                           ; $4a68: $03
	cp a                                             ; $4a69: $bf
	pop bc                                           ; $4a6a: $c1
	rst $38                                          ; $4a6b: $ff
	db $fc                                           ; $4a6c: $fc
	or a                                             ; $4a6d: $b7
	cp b                                             ; $4a6e: $b8
	xor a                                            ; $4a6f: $af
	ldh [$5f], a                                     ; $4a70: $e0 $5f
	ldh [rTAC], a                                    ; $4a72: $e0 $07
	cp d                                             ; $4a74: $ba
	rrca                                             ; $4a75: $0f
	rrca                                             ; $4a76: $0f
	rra                                              ; $4a77: $1f

jr_06a_4a78:
	rra                                              ; $4a78: $1f
	ccf                                              ; $4a79: $3f
	ccf                                              ; $4a7a: $3f

jr_06a_4a7b:
	ld a, a                                          ; $4a7b: $7f
	sub c                                            ; $4a7c: $91
	ld bc, $037f                                     ; $4a7d: $01 $7f $03
	rst $38                                          ; $4a80: $ff
	rlca                                             ; $4a81: $07
	rst $38                                          ; $4a82: $ff
	rra                                              ; $4a83: $1f
	rst $38                                          ; $4a84: $ff
	ld a, $ff                                        ; $4a85: $3e $ff
	ldh a, [rIE]                                     ; $4a87: $f0 $ff
	add b                                            ; $4a89: $80
	adc a                                            ; $4a8a: $8f

jr_06a_4a8b:
	cp l                                             ; $4a8b: $bd
	rrca                                             ; $4a8c: $0f
	rra                                              ; $4a8d: $1f

jr_06a_4a8e:
	rra                                              ; $4a8e: $1f
	ccf                                              ; $4a8f: $3f
	add b                                            ; $4a90: $80
	inc bc                                           ; $4a91: $03
	ld a, a                                          ; $4a92: $7f
	rra                                              ; $4a93: $1f
	ld hl, sp-$01                                    ; $4a94: $f8 $ff
	ret nz                                           ; $4a96: $c0

	rst $38                                          ; $4a97: $ff

jr_06a_4a98:
	db $10                                           ; $4a98: $10
	rst $38                                          ; $4a99: $ff
	ld de, wPtrToScriptStack+1                                     ; $4a9a: $11 $ff $d1
	rst $38                                          ; $4a9d: $ff
	ld l, b                                          ; $4a9e: $68
	rst $38                                          ; $4a9f: $ff
	sbc b                                            ; $4aa0: $98
	rst $38                                          ; $4aa1: $ff
	db $fc                                           ; $4aa2: $fc
	rst $38                                          ; $4aa3: $ff
	and h                                            ; $4aa4: $a4
	rst $38                                          ; $4aa5: $ff
	or h                                             ; $4aa6: $b4
	rst $38                                          ; $4aa7: $ff
	or [hl]                                          ; $4aa8: $b6
	rst $38                                          ; $4aa9: $ff
	or d                                             ; $4aaa: $b2
	rst $38                                          ; $4aab: $ff
	cp d                                             ; $4aac: $ba
	rst GetHLinHL                                          ; $4aad: $cf
	ld a, e                                          ; $4aae: $7b
	adc a                                            ; $4aaf: $8f
	adc [hl]                                         ; $4ab0: $8e
	ld sp, hl                                        ; $4ab1: $f9
	rra                                              ; $4ab2: $1f
	db $dd                                           ; $4ab3: $dd
	scf                                              ; $4ab4: $37
	db $dd                                           ; $4ab5: $dd
	rst SubAFromBC                                          ; $4ab6: $e7
	push af                                          ; $4ab7: $f5
	rst GetHLinHL                                          ; $4ab8: $cf
	call $fdff                                       ; $4ab9: $cd $ff $fd
	rst $38                                          ; $4abc: $ff
	dec [hl]                                         ; $4abd: $35
	rst $38                                          ; $4abe: $ff
	and l                                            ; $4abf: $a5
	rst $38                                          ; $4ac0: $ff
	xor l                                            ; $4ac1: $ad
	ld a, e                                          ; $4ac2: $7b
	cp $8b                                           ; $4ac3: $fe $8b
	jp hl                                            ; $4ac5: $e9


	rst $38                                          ; $4ac6: $ff
	ld c, e                                          ; $4ac7: $4b

jr_06a_4ac8:
	rst $38                                          ; $4ac8: $ff
	ld c, d                                          ; $4ac9: $4a
	rst $38                                          ; $4aca: $ff
	ld a, d                                          ; $4acb: $7a
	rst $38                                          ; $4acc: $ff
	ld [hl], d                                       ; $4acd: $72
	rst $38                                          ; $4ace: $ff
	and $ff                                          ; $4acf: $e6 $ff
	adc $ff                                          ; $4ad1: $ce $ff
	ld e, $fb                                        ; $4ad3: $1e $fb
	cp $e3                                           ; $4ad5: $fe $e3
	ld a, $03                                        ; $4ad7: $3e $03
	rlca                                             ; $4ad9: $07
	nop                                              ; $4ada: $00
	ld h, a                                          ; $4adb: $67
	jr nz, jr_06a_4a7b                               ; $4adc: $20 $9d

	ldh a, [rP1]                                     ; $4ade: $f0 $00
	ld [hl], e                                       ; $4ae0: $73
	jr nz, jr_06a_4a78                               ; $4ae1: $20 $95

	nop                                              ; $4ae3: $00
	db $f4                                           ; $4ae4: $f4
	ld a, b                                          ; $4ae5: $78
	call c, Call_06a_7098                            ; $4ae6: $dc $98 $70
	ld hl, sp-$27                                    ; $4ae9: $f8 $d9
	ld [hl], b                                       ; $4aeb: $70
	ld h, c                                          ; $4aec: $61
	ld e, e                                          ; $4aed: $5b
	jr nz, jr_06a_4a8b                               ; $4aee: $20 $9b

	ld a, b                                          ; $4af0: $78
	daa                                              ; $4af1: $27
	add $3f                                          ; $4af2: $c6 $3f
	ld a, e                                          ; $4af4: $7b
	jr nz, jr_06a_4a8e                               ; $4af5: $20 $97

	nop                                              ; $4af7: $00
	ld a, $03                                        ; $4af8: $3e $03
	rrca                                             ; $4afa: $0f
	rlca                                             ; $4afb: $07
	nop                                              ; $4afc: $00
	ld bc, $2b81                                     ; $4afd: $01 $81 $2b
	jr nz, jr_06a_4a98                               ; $4b00: $20 $96

	rst $38                                          ; $4b02: $ff
	ld bc, $fc3f                                     ; $4b03: $01 $3f $fc
	or a                                             ; $4b06: $b7
	jr c, jr_06a_4ac8                                ; $4b07: $38 $bf

	ldh a, [$df]                                     ; $4b09: $f0 $df
	ld d, e                                          ; $4b0b: $53
	jr nz, jr_06a_4b49                               ; $4b0c: $20 $3b

	add b                                            ; $4b0e: $80
	sbc [hl]                                         ; $4b0f: $9e
	ld a, h                                          ; $4b10: $7c
	inc de                                           ; $4b11: $13
	add b                                            ; $4b12: $80
	sub a                                            ; $4b13: $97
	ld [$78fc], sp                                   ; $4b14: $08 $fc $78
	ld d, b                                          ; $4b17: $50
	ld hl, sp-$07                                    ; $4b18: $f8 $f9
	ldh a, [$71]                                     ; $4b1a: $f0 $71
	ld e, e                                          ; $4b1c: $5b
	add b                                            ; $4b1d: $80
	sbc d                                            ; $4b1e: $9a
	ld a, h                                          ; $4b1f: $7c
	inc hl                                           ; $4b20: $23
	add $3f                                          ; $4b21: $c6 $3f
	cp a                                             ; $4b23: $bf
	ld a, e                                          ; $4b24: $7b
	add b                                            ; $4b25: $80
	ld a, a                                          ; $4b26: $7f
	or d                                             ; $4b27: $b2
	sbc c                                            ; $4b28: $99
	rrca                                             ; $4b29: $0f
	inc bc                                           ; $4b2a: $03
	ld bc, $8207                                     ; $4b2b: $01 $07 $82
	ld bc, $8027                                     ; $4b2e: $01 $27 $80
	sub a                                            ; $4b31: $97
	di                                               ; $4b32: $f3
	inc c                                            ; $4b33: $0c
	rst FarCall                                          ; $4b34: $f7
	ld hl, sp-$51                                    ; $4b35: $f8 $af
	ld [hl], b                                       ; $4b37: $70
	rst $38                                          ; $4b38: $ff
	ret nz                                           ; $4b39: $c0

	daa                                              ; $4b3a: $27
	add b                                            ; $4b3b: $80
	sbc l                                            ; $4b3c: $9d
	set 7, a                                         ; $4b3d: $cb $ff
	ld h, a                                          ; $4b3f: $67
	add b                                            ; $4b40: $80
	sbc l                                            ; $4b41: $9d
	or l                                             ; $4b42: $b5
	rst $38                                          ; $4b43: $ff
	daa                                              ; $4b44: $27
	add b                                            ; $4b45: $80
	sub l                                            ; $4b46: $95

jr_06a_4b47:
	db $fc                                           ; $4b47: $fc
	nop                                              ; $4b48: $00

jr_06a_4b49:
	ldh a, [$0c]                                     ; $4b49: $f0 $0c
	ret z                                            ; $4b4b: $c8

	jr c, jr_06a_4b47                                ; $4b4c: $38 $f9

	ldh a, [rHDMA1]                                  ; $4b4e: $f0 $51
	jr nz, jr_06a_4ba9                               ; $4b50: $20 $57

	add b                                            ; $4b52: $80
	sbc e                                            ; $4b53: $9b
	rst SubAFromBC                                          ; $4b54: $e7
	rra                                              ; $4b55: $1f
	or a                                             ; $4b56: $b7
	ld a, b                                          ; $4b57: $78
	ld [hl], e                                       ; $4b58: $73
	add b                                            ; $4b59: $80
	sbc e                                            ; $4b5a: $9b
	nop                                              ; $4b5b: $00
	ld b, $07                                        ; $4b5c: $06 $07
	add e                                            ; $4b5e: $83
	scf                                              ; $4b5f: $37
	add b                                            ; $4b60: $80
	sbc [hl]                                         ; $4b61: $9e
	and a                                            ; $4b62: $a7
	ld [hl], a                                       ; $4b63: $77
	add b                                            ; $4b64: $80
	sbc c                                            ; $4b65: $99
	rst $38                                          ; $4b66: $ff
	nop                                              ; $4b67: $00
	rst SubAFromBC                                          ; $4b68: $e7
	inc e                                            ; $4b69: $1c
	ccf                                              ; $4b6a: $3f
	ld hl, sp+$4f                                    ; $4b6b: $f8 $4f
	nop                                              ; $4b6d: $00
	rst SubAFromDE                                          ; $4b6e: $df
	add b                                            ; $4b6f: $80
	sub d                                            ; $4b70: $92
	pop bc                                           ; $4b71: $c1
	add c                                            ; $4b72: $81
	ld b, b                                          ; $4b73: $40
	ret nz                                           ; $4b74: $c0

	ld h, b                                          ; $4b75: $60
	ldh [$38], a                                     ; $4b76: $e0 $38
	ldh a, [$3c]                                     ; $4b78: $f0 $3c
	ld hl, sp+$2e                                    ; $4b7a: $f8 $2e
	db $fc                                           ; $4b7c: $fc
	dec hl                                           ; $4b7d: $2b
	ld a, d                                          ; $4b7e: $7a
	ld e, [hl]                                       ; $4b7f: $5e
	sbc h                                            ; $4b80: $9c
	ld d, d                                          ; $4b81: $52
	rst $38                                          ; $4b82: $ff
	sub d                                            ; $4b83: $92
	ld a, d                                          ; $4b84: $7a
	inc a                                            ; $4b85: $3c
	sub d                                            ; $4b86: $92
	ld h, $ff                                        ; $4b87: $26 $ff
	ld h, h                                          ; $4b89: $64
	rst $38                                          ; $4b8a: $ff
	call nz, $ccff                                   ; $4b8b: $c4 $ff $cc
	rst $38                                          ; $4b8e: $ff
	ld h, b                                          ; $4b8f: $60
	nop                                              ; $4b90: $00
	ret nz                                           ; $4b91: $c0

	ld b, b                                          ; $4b92: $40
	nop                                              ; $4b93: $00
	cp h                                             ; $4b94: $bc
	ret nz                                           ; $4b95: $c0

	ld bc, $0703                                     ; $4b96: $01 $03 $07
	rst GetHLinHL                                          ; $4b99: $cf
	ld a, a                                          ; $4b9a: $7f
	cp d                                             ; $4b9b: $ba
	ld a, [hl]                                       ; $4b9c: $7e
	db $db                                           ; $4b9d: $db
	sub d                                            ; $4b9e: $92
	db $fc                                           ; $4b9f: $fc
	inc a                                            ; $4ba0: $3c
	ld hl, sp+$38                                    ; $4ba1: $f8 $38
	ld hl, sp+$28                                    ; $4ba3: $f8 $28
	ld hl, sp+$68                                    ; $4ba5: $f8 $68
	ld hl, sp+$48                                    ; $4ba7: $f8 $48

jr_06a_4ba9:
	ld hl, sp+$4f                                    ; $4ba9: $f8 $4f
	ld sp, hl                                        ; $4bab: $f9
	ld a, e                                          ; $4bac: $7b
	ldh [$9b], a                                     ; $4bad: $e0 $9b
	ld h, b                                          ; $4baf: $60
	add b                                            ; $4bb0: $80
	ret nz                                           ; $4bb1: $c0

	ret nz                                           ; $4bb2: $c0

	cp l                                             ; $4bb3: $bd
	pop bc                                           ; $4bb4: $c1
	inc bc                                           ; $4bb5: $03
	rlca                                             ; $4bb6: $07
	rst GetHLinHL                                          ; $4bb7: $cf
	dec sp                                           ; $4bb8: $3b
	ldh [$df], a                                     ; $4bb9: $e0 $df
	ld h, b                                          ; $4bbb: $60
	sbc [hl]                                         ; $4bbc: $9e
	ldh [$7b], a                                     ; $4bbd: $e0 $7b
	ld [hl], a                                       ; $4bbf: $77
	ld a, [hl]                                       ; $4bc0: $7e
	ld d, b                                          ; $4bc1: $50
	cpl                                              ; $4bc2: $2f
	ldh [rPCM34], a                                  ; $4bc3: $e0 $77
	add b                                            ; $4bc5: $80
	sbc [hl]                                         ; $4bc6: $9e
	ld b, c                                          ; $4bc7: $41
	inc de                                           ; $4bc8: $13
	add b                                            ; $4bc9: $80
	ld a, e                                          ; $4bca: $7b
	ret nz                                           ; $4bcb: $c0

	sbc e                                            ; $4bcc: $9b
	ldh [$60], a                                     ; $4bcd: $e0 $60
	ret nz                                           ; $4bcf: $c0

	ld bc, $63be                                     ; $4bd0: $01 $be $63
	rlca                                             ; $4bd3: $07
	rst GetHLinHL                                          ; $4bd4: $cf
	ld b, e                                          ; $4bd5: $43
	ret nz                                           ; $4bd6: $c0

	ld sp, hl                                        ; $4bd7: $f9
	ld bc, $0980                                     ; $4bd8: $01 $80 $09
	rst $38                                          ; $4bdb: $ff
	dec bc                                           ; $4bdc: $0b
	cp $0b                                           ; $4bdd: $fe $0b
	cp $0f                                           ; $4bdf: $fe $0f
	cp $8f                                           ; $4be1: $fe $8f
	ld a, [$ff88]                                    ; $4be3: $fa $88 $ff
	rst GetHLinHL                                          ; $4be6: $cf
	rst $38                                          ; $4be7: $ff
	ld c, a                                          ; $4be8: $4f
	ld a, b                                          ; $4be9: $78
	ld c, a                                          ; $4bea: $4f
	ld a, b                                          ; $4beb: $78
	ld e, a                                          ; $4bec: $5f
	ld a, l                                          ; $4bed: $7d
	ld e, [hl]                                       ; $4bee: $5e
	ld a, a                                          ; $4bef: $7f
	or a                                             ; $4bf0: $b7
	db $fc                                           ; $4bf1: $fc
	di                                               ; $4bf2: $f3
	cp $33                                           ; $4bf3: $fe $33
	ld a, $61                                        ; $4bf5: $3e $61
	ld a, a                                          ; $4bf7: $7f
	ld h, c                                          ; $4bf8: $61
	add b                                            ; $4bf9: $80
	ld a, a                                          ; $4bfa: $7f
	pop hl                                           ; $4bfb: $e1
	rst $38                                          ; $4bfc: $ff
	xor b                                            ; $4bfd: $a8
	rst FarCall                                          ; $4bfe: $f7
	db $ec                                           ; $4bff: $ec
	inc sp                                           ; $4c00: $33
	cp h                                             ; $4c01: $bc
	ld h, e                                          ; $4c02: $63
	cp l                                             ; $4c03: $bd
	ld h, d                                          ; $4c04: $62
	ld c, l                                          ; $4c05: $4d
	ldh [c], a                                       ; $4c06: $e2
	ld l, c                                          ; $4c07: $69
	add $6b                                          ; $4c08: $c6 $6b
	call nz, $cc93                                   ; $4c0a: $c4 $93 $cc
	call nc, $d489                                   ; $4c0d: $d4 $89 $d4
	adc c                                            ; $4c10: $89
	and d                                            ; $4c11: $a2
	sbc c                                            ; $4c12: $99
	dec hl                                           ; $4c13: $2b
	sub c                                            ; $4c14: $91
	ld c, $b3                                        ; $4c15: $0e $b3
	ld c, [hl]                                       ; $4c17: $4e
	or a                                             ; $4c18: $b7
	add b                                            ; $4c19: $80
	ld d, l                                          ; $4c1a: $55
	xor a                                            ; $4c1b: $af
	or b                                             ; $4c1c: $b0
	ldh [$f0], a                                     ; $4c1d: $e0 $f0
	ld h, b                                          ; $4c1f: $60
	ldh a, [$30]                                     ; $4c20: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $4c22: $f0 $10
	ldh a, [rP1]                                     ; $4c24: $f0 $00
	ret nc                                           ; $4c26: $d0

	ldh [$f8], a                                     ; $4c27: $e0 $f8
	nop                                              ; $4c29: $00
	ret z                                            ; $4c2a: $c8

	jr nc, jr_06a_4ca1                               ; $4c2b: $30 $74

	ld hl, sp-$24                                    ; $4c2d: $f8 $dc
	ret c                                            ; $4c2f: $d8

	ld hl, sp+$78                                    ; $4c30: $f8 $78
	sbc c                                            ; $4c32: $99
	jr nc, jr_06a_4c36                               ; $4c33: $30 $01

	nop                                              ; $4c35: $00

jr_06a_4c36:
	ld bc, $0003                                     ; $4c36: $01 $03 $00
	adc e                                            ; $4c39: $8b
	ld bc, $0080                                     ; $4c3a: $01 $80 $00
	inc sp                                           ; $4c3d: $33
	ld sp, $306f                                     ; $4c3e: $31 $6f $30
	ld a, h                                          ; $4c41: $7c
	inc hl                                           ; $4c42: $23
	adc $3f                                          ; $4c43: $ce $3f
	or a                                             ; $4c45: $b7
	ld a, b                                          ; $4c46: $78
	ld a, [hl]                                       ; $4c47: $7e
	ld bc, $073b                                     ; $4c48: $01 $3b $07
	rrca                                             ; $4c4b: $0f
	dec b                                            ; $4c4c: $05
	nop                                              ; $4c4d: $00
	cp c                                             ; $4c4e: $b9
	add b                                            ; $4c4f: $80
	ret nz                                           ; $4c50: $c0

	ret nz                                           ; $4c51: $c0

	ldh [$e0], a                                     ; $4c52: $e0 $e0
	ret nz                                           ; $4c54: $c0

	nop                                              ; $4c55: $00
	inc hl                                           ; $4c56: $23
	adc e                                            ; $4c57: $8b
	rst $38                                          ; $4c58: $ff
	or c                                             ; $4c59: $b1
	rst $38                                          ; $4c5a: $ff
	db $ec                                           ; $4c5b: $ec
	rst $38                                          ; $4c5c: $ff
	cp $27                                           ; $4c5d: $fe $27
	rst $38                                          ; $4c5f: $ff
	inc bc                                           ; $4c60: $03
	ld a, a                                          ; $4c61: $7f
	add c                                            ; $4c62: $81
	rst $38                                          ; $4c63: $ff
	db $fc                                           ; $4c64: $fc
	or a                                             ; $4c65: $b7
	cp b                                             ; $4c66: $b8
	xor a                                            ; $4c67: $af

jr_06a_4c68:
	ldh [$df], a                                     ; $4c68: $e0 $df
	ldh [rTAC], a                                    ; $4c6a: $e0 $07
	cp d                                             ; $4c6c: $ba
	rrca                                             ; $4c6d: $0f
	rrca                                             ; $4c6e: $0f
	rra                                              ; $4c6f: $1f
	rra                                              ; $4c70: $1f
	ccf                                              ; $4c71: $3f
	ccf                                              ; $4c72: $3f
	ld a, a                                          ; $4c73: $7f
	sub c                                            ; $4c74: $91
	ld bc, $037f                                     ; $4c75: $01 $7f $03
	rst $38                                          ; $4c78: $ff
	rlca                                             ; $4c79: $07
	rst $38                                          ; $4c7a: $ff
	rra                                              ; $4c7b: $1f
	rst $38                                          ; $4c7c: $ff
	ld a, $ff                                        ; $4c7d: $3e $ff
	ldh a, [rIE]                                     ; $4c7f: $f0 $ff
	add b                                            ; $4c81: $80
	adc a                                            ; $4c82: $8f
	cp l                                             ; $4c83: $bd
	rrca                                             ; $4c84: $0f
	rra                                              ; $4c85: $1f
	rra                                              ; $4c86: $1f
	ccf                                              ; $4c87: $3f
	ld a, a                                          ; $4c88: $7f
	ret nc                                           ; $4c89: $d0

	add b                                            ; $4c8a: $80
	rra                                              ; $4c8b: $1f
	ld hl, sp-$01                                    ; $4c8c: $f8 $ff
	ret nz                                           ; $4c8e: $c0

	rst $38                                          ; $4c8f: $ff
	db $10                                           ; $4c90: $10

jr_06a_4c91:
	rst $38                                          ; $4c91: $ff
	ld de, wPtrToScriptStack+1                                     ; $4c92: $11 $ff $d1
	rst $38                                          ; $4c95: $ff
	ld l, b                                          ; $4c96: $68
	rst $38                                          ; $4c97: $ff

jr_06a_4c98:
	sbc b                                            ; $4c98: $98
	rst $38                                          ; $4c99: $ff
	db $fc                                           ; $4c9a: $fc
	rst $38                                          ; $4c9b: $ff
	and h                                            ; $4c9c: $a4
	rst $38                                          ; $4c9d: $ff
	or h                                             ; $4c9e: $b4
	rst $38                                          ; $4c9f: $ff
	or [hl]                                          ; $4ca0: $b6

jr_06a_4ca1:
	rst $38                                          ; $4ca1: $ff
	or d                                             ; $4ca2: $b2
	rst $38                                          ; $4ca3: $ff
	cp d                                             ; $4ca4: $ba
	rst GetHLinHL                                          ; $4ca5: $cf
	ld a, e                                          ; $4ca6: $7b
	adc a                                            ; $4ca7: $8f
	ld sp, hl                                        ; $4ca8: $f9
	rra                                              ; $4ca9: $1f
	sub b                                            ; $4caa: $90
	db $dd                                           ; $4cab: $dd
	scf                                              ; $4cac: $37
	db $dd                                           ; $4cad: $dd
	rst SubAFromBC                                          ; $4cae: $e7
	push af                                          ; $4caf: $f5

jr_06a_4cb0:
	rst GetHLinHL                                          ; $4cb0: $cf
	call $fdff                                       ; $4cb1: $cd $ff $fd
	rst $38                                          ; $4cb4: $ff
	dec [hl]                                         ; $4cb5: $35
	rst $38                                          ; $4cb6: $ff
	and l                                            ; $4cb7: $a5
	rst $38                                          ; $4cb8: $ff
	xor l                                            ; $4cb9: $ad
	ld a, e                                          ; $4cba: $7b
	cp $8b                                           ; $4cbb: $fe $8b
	jp hl                                            ; $4cbd: $e9


	rst $38                                          ; $4cbe: $ff
	ld c, e                                          ; $4cbf: $4b
	rst $38                                          ; $4cc0: $ff
	ld c, d                                          ; $4cc1: $4a
	rst $38                                          ; $4cc2: $ff
	ld a, d                                          ; $4cc3: $7a
	rst $38                                          ; $4cc4: $ff
	ld [hl], d                                       ; $4cc5: $72
	rst $38                                          ; $4cc6: $ff
	and $ff                                          ; $4cc7: $e6 $ff
	adc $ff                                          ; $4cc9: $ce $ff
	ld e, $fb                                        ; $4ccb: $1e $fb
	cp $e3                                           ; $4ccd: $fe $e3
	ld a, $03                                        ; $4ccf: $3e $03
	rlca                                             ; $4cd1: $07
	nop                                              ; $4cd2: $00
	ld d, a                                          ; $4cd3: $57
	jr nz, jr_06a_4c68                               ; $4cd4: $20 $92

	jr c, jr_06a_4c98                                ; $4cd6: $38 $c0

	ld hl, sp+$00                                    ; $4cd8: $f8 $00
	db $f4                                           ; $4cda: $f4
	ld a, b                                          ; $4cdb: $78
	call c, Call_06a_7098                            ; $4cdc: $dc $98 $70
	ld hl, sp-$27                                    ; $4cdf: $f8 $d9
	ld [hl], b                                       ; $4ce1: $70
	ld h, c                                          ; $4ce2: $61
	ld d, e                                          ; $4ce3: $53
	jr nz, @-$64                                     ; $4ce4: $20 $9a

	xor $1f                                          ; $4ce6: $ee $1f
	or e                                             ; $4ce8: $b3
	ld a, h                                          ; $4ce9: $7c
	ld a, a                                          ; $4cea: $7f
	ld a, e                                          ; $4ceb: $7b
	ld l, h                                          ; $4cec: $6c
	sbc d                                            ; $4ced: $9a
	rrca                                             ; $4cee: $0f
	rlca                                             ; $4cef: $07
	nop                                              ; $4cf0: $00
	ld bc, $4381                                     ; $4cf1: $01 $81 $43

Call_06a_4cf4:
	jr nz, @-$60                                     ; $4cf4: $20 $9e

	ld l, h                                          ; $4cf6: $6c
	ld [hl], e                                       ; $4cf7: $73
	jr nz, jr_06a_4c91                               ; $4cf8: $20 $97

	rst $38                                          ; $4cfa: $ff
	ld bc, $fcbf                                     ; $4cfb: $01 $bf $fc
	or a                                             ; $4cfe: $b7
	jr c, jr_06a_4cb0                                ; $4cff: $38 $af

	ldh a, [rVBK]                                    ; $4d01: $f0 $4f
	jr nz, jr_06a_4d40                               ; $4d03: $20 $3b

	add b                                            ; $4d05: $80
	sbc [hl]                                         ; $4d06: $9e
	ld a, h                                          ; $4d07: $7c
	cpl                                              ; $4d08: $2f
	add b                                            ; $4d09: $80
	sbc h                                            ; $4d0a: $9c
	db $10                                           ; $4d0b: $10
	ldh [$f8], a                                     ; $4d0c: $e0 $f8
	ld [hl], a                                       ; $4d0e: $77
	add b                                            ; $4d0f: $80
	sub a                                            ; $4d10: $97
	ld [$78fc], sp                                   ; $4d11: $08 $fc $78
	ld d, b                                          ; $4d14: $50
	ld hl, sp-$07                                    ; $4d15: $f8 $f9
	ldh a, [$71]                                     ; $4d17: $f0 $71
	ld d, e                                          ; $4d19: $53
	add b                                            ; $4d1a: $80
	sbc [hl]                                         ; $4d1b: $9e
	rst AddAOntoHL                                          ; $4d1c: $ef
	ld l, a                                          ; $4d1d: $6f
	add b                                            ; $4d1e: $80
	ld a, a                                          ; $4d1f: $7f
	xor d                                            ; $4d20: $aa
	sbc d                                            ; $4d21: $9a
	inc bc                                           ; $4d22: $03
	ld bc, $8207                                     ; $4d23: $01 $07 $82
	ld bc, $a03e                                     ; $4d26: $01 $3e $a0
	sbc l                                            ; $4d29: $9d
	ld a, [hl]                                       ; $4d2a: $7e
	and a                                            ; $4d2b: $a7
	ld [hl], a                                       ; $4d2c: $77
	add b                                            ; $4d2d: $80
	sub a                                            ; $4d2e: $97
	rst $38                                          ; $4d2f: $ff
	nop                                              ; $4d30: $00
	rst $38                                          ; $4d31: $ff
	db $fc                                           ; $4d32: $fc
	xor a                                            ; $4d33: $af
	ld [hl], b                                       ; $4d34: $70
	rst $38                                          ; $4d35: $ff
	ret nz                                           ; $4d36: $c0

	inc bc                                           ; $4d37: $03
	add b                                            ; $4d38: $80
	sbc h                                            ; $4d39: $9c
	ld a, a                                          ; $4d3a: $7f
	or l                                             ; $4d3b: $b5
	rst $38                                          ; $4d3c: $ff
	ccf                                              ; $4d3d: $3f
	add b                                            ; $4d3e: $80
	sbc h                                            ; $4d3f: $9c

jr_06a_4d40:
	ld [hl], b                                       ; $4d40: $70
	add b                                            ; $4d41: $80
	ret c                                            ; $4d42: $d8

	ld a, d                                          ; $4d43: $7a
	ld e, $95                                        ; $4d44: $1e $95

jr_06a_4d46:
	db $fc                                           ; $4d46: $fc
	nop                                              ; $4d47: $00
	ldh a, [$0c]                                     ; $4d48: $f0 $0c
	ret z                                            ; $4d4a: $c8

	jr c, jr_06a_4d46                                ; $4d4b: $38 $f9

	ldh a, [rHDMA1]                                  ; $4d4d: $f0 $51

Jump_06a_4d4f:
	jr nz, @+$51                                     ; $4d4f: $20 $4f

	add b                                            ; $4d51: $80
	sbc e                                            ; $4d52: $9b
	di                                               ; $4d53: $f3
	inc a                                            ; $4d54: $3c
	rra                                              ; $4d55: $1f
	ld h, b                                          ; $4d56: $60
	ld a, e                                          ; $4d57: $7b
	add b                                            ; $4d58: $80
	sbc e                                            ; $4d59: $9b
	nop                                              ; $4d5a: $00
	ld b, $07                                        ; $4d5b: $06 $07
	add e                                            ; $4d5d: $83
	dec sp                                           ; $4d5e: $3b
	add b                                            ; $4d5f: $80
	sbc l                                            ; $4d60: $9d
	ld a, $e7                                        ; $4d61: $3e $e7
	ld l, a                                          ; $4d63: $6f
	add b                                            ; $4d64: $80
	sbc e                                            ; $4d65: $9b
	rst SubAFromBC                                          ; $4d66: $e7
	inc e                                            ; $4d67: $1c
	ccf                                              ; $4d68: $3f
	ld hl, sp+$4f                                    ; $4d69: $f8 $4f
	nop                                              ; $4d6b: $00
	rst SubAFromDE                                          ; $4d6c: $df
	add b                                            ; $4d6d: $80
	sub d                                            ; $4d6e: $92
	pop bc                                           ; $4d6f: $c1
	add c                                            ; $4d70: $81
	ld b, b                                          ; $4d71: $40
	ret nz                                           ; $4d72: $c0

	ld h, b                                          ; $4d73: $60
	ldh [$38], a                                     ; $4d74: $e0 $38
	ldh a, [$3c]                                     ; $4d76: $f0 $3c
	ld hl, sp+$2e                                    ; $4d78: $f8 $2e
	db $fc                                           ; $4d7a: $fc
	dec hl                                           ; $4d7b: $2b
	ld a, d                                          ; $4d7c: $7a
	ld e, [hl]                                       ; $4d7d: $5e
	sbc h                                            ; $4d7e: $9c
	ld d, d                                          ; $4d7f: $52
	rst $38                                          ; $4d80: $ff
	sub d                                            ; $4d81: $92
	ld a, d                                          ; $4d82: $7a
	inc a                                            ; $4d83: $3c
	sub d                                            ; $4d84: $92
	ld h, $ff                                        ; $4d85: $26 $ff
	ld h, h                                          ; $4d87: $64
	rst $38                                          ; $4d88: $ff
	call nz, $ccff                                   ; $4d89: $c4 $ff $cc
	rst $38                                          ; $4d8c: $ff
	nop                                              ; $4d8d: $00
	nop                                              ; $4d8e: $00
	ldh [rLCDC], a                                   ; $4d8f: $e0 $40
	nop                                              ; $4d91: $00
	cp h                                             ; $4d92: $bc
	ret nz                                           ; $4d93: $c0

	ld bc, $0703                                     ; $4d94: $01 $03 $07
	rst GetHLinHL                                          ; $4d97: $cf
	ld a, a                                          ; $4d98: $7f
	cp d                                             ; $4d99: $ba
	sub b                                            ; $4d9a: $90
	rst GetHLinHL                                          ; $4d9b: $cf
	cp $fc                                           ; $4d9c: $fe $fc
	inc a                                            ; $4d9e: $3c
	ld hl, sp+$38                                    ; $4d9f: $f8 $38
	ld hl, sp+$28                                    ; $4da1: $f8 $28
	ld hl, sp+$68                                    ; $4da3: $f8 $68
	ld hl, sp+$48                                    ; $4da5: $f8 $48
	ld hl, sp+$4f                                    ; $4da7: $f8 $4f
	ld sp, hl                                        ; $4da9: $f9
	ld a, e                                          ; $4daa: $7b
	db $e4                                           ; $4dab: $e4
	ld a, a                                          ; $4dac: $7f
	jp $977b                                         ; $4dad: $c3 $7b $97


	sbc [hl]                                         ; $4db0: $9e
	pop bc                                           ; $4db1: $c1
	inc hl                                           ; $4db2: $23
	ldh [$df], a                                     ; $4db3: $e0 $df
	ld h, b                                          ; $4db5: $60
	ld [hl], a                                       ; $4db6: $77
	ldh [$7e], a                                     ; $4db7: $e0 $7e
	ld d, b                                          ; $4db9: $50
	cpl                                              ; $4dba: $2f
	ldh [rPCM34], a                                  ; $4dbb: $e0 $77
	add b                                            ; $4dbd: $80
	sbc [hl]                                         ; $4dbe: $9e
	ld b, c                                          ; $4dbf: $41
	inc de                                           ; $4dc0: $13
	add b                                            ; $4dc1: $80
	sbc b                                            ; $4dc2: $98
	ld b, b                                          ; $4dc3: $40
	ld h, b                                          ; $4dc4: $60
	ldh [$e0], a                                     ; $4dc5: $e0 $e0
	ld h, b                                          ; $4dc7: $60
	ret nz                                           ; $4dc8: $c0

	ld bc, $63be                                     ; $4dc9: $01 $be $63
	rlca                                             ; $4dcc: $07
	rst GetHLinHL                                          ; $4dcd: $cf
	ld b, e                                          ; $4dce: $43
	ret nz                                           ; $4dcf: $c0

	ld a, [$8001]                                    ; $4dd0: $fa $01 $80
	add hl, bc                                       ; $4dd3: $09
	rst $38                                          ; $4dd4: $ff
	dec bc                                           ; $4dd5: $0b
	cp $0b                                           ; $4dd6: $fe $0b
	cp $0f                                           ; $4dd8: $fe $0f
	cp $8a                                           ; $4dda: $fe $8a
	rst $38                                          ; $4ddc: $ff
	adc a                                            ; $4ddd: $8f
	ei                                               ; $4dde: $fb
	rst GetHLinHL                                          ; $4ddf: $cf
	ld hl, sp+$4f                                    ; $4de0: $f8 $4f
	ld a, b                                          ; $4de2: $78
	ld c, a                                          ; $4de3: $4f
	ld a, b                                          ; $4de4: $78
	ld e, a                                          ; $4de5: $5f
	ld a, l                                          ; $4de6: $7d
	ld e, [hl]                                       ; $4de7: $5e
	ld a, a                                          ; $4de8: $7f
	or a                                             ; $4de9: $b7
	db $fc                                           ; $4dea: $fc
	di                                               ; $4deb: $f3
	cp $33                                           ; $4dec: $fe $33
	ld a, $61                                        ; $4dee: $3e $61
	ld a, a                                          ; $4df0: $7f
	ld h, c                                          ; $4df1: $61
	add b                                            ; $4df2: $80
	ld a, a                                          ; $4df3: $7f
	pop hl                                           ; $4df4: $e1
	rst $38                                          ; $4df5: $ff
	xor b                                            ; $4df6: $a8
	rst FarCall                                          ; $4df7: $f7
	db $ec                                           ; $4df8: $ec
	inc sp                                           ; $4df9: $33
	cp h                                             ; $4dfa: $bc
	ld h, e                                          ; $4dfb: $63
	cp l                                             ; $4dfc: $bd

Jump_06a_4dfd:
	ld h, d                                          ; $4dfd: $62
	ld c, l                                          ; $4dfe: $4d
	ldh [c], a                                       ; $4dff: $e2
	ld l, c                                          ; $4e00: $69
	add $6b                                          ; $4e01: $c6 $6b
	call nz, $cc93                                   ; $4e03: $c4 $93 $cc
	call nc, $d489                                   ; $4e06: $d4 $89 $d4
	adc c                                            ; $4e09: $89
	and d                                            ; $4e0a: $a2
	sbc c                                            ; $4e0b: $99
	dec hl                                           ; $4e0c: $2b
	sub c                                            ; $4e0d: $91
	ld c, $b3                                        ; $4e0e: $0e $b3
	ld c, [hl]                                       ; $4e10: $4e
	or a                                             ; $4e11: $b7
	add b                                            ; $4e12: $80
	ld d, l                                          ; $4e13: $55
	xor a                                            ; $4e14: $af
	or b                                             ; $4e15: $b0
	ldh [$f0], a                                     ; $4e16: $e0 $f0
	ld h, b                                          ; $4e18: $60
	ldh a, [$30]                                     ; $4e19: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $4e1b: $f0 $10
	ld [hl], b                                       ; $4e1d: $70
	add b                                            ; $4e1e: $80
	sub b                                            ; $4e1f: $90
	ldh [$f0], a                                     ; $4e20: $e0 $f0
	ld a, b                                          ; $4e22: $78
	ret z                                            ; $4e23: $c8

	jr nc, @-$0a                                     ; $4e24: $30 $f4

	ld hl, sp-$64                                    ; $4e26: $f8 $9c
	ret c                                            ; $4e28: $d8

	ldh a, [$78]                                     ; $4e29: $f0 $78
	sbc c                                            ; $4e2b: $99
	jr nc, jr_06a_4e2f                               ; $4e2c: $30 $01

	nop                                              ; $4e2e: $00

jr_06a_4e2f:
	ld bc, $0003                                     ; $4e2f: $01 $03 $00
	adc e                                            ; $4e32: $8b
	ld bc, $0080                                     ; $4e33: $01 $80 $00
	inc sp                                           ; $4e36: $33
	ld sp, $306f                                     ; $4e37: $31 $6f $30
	ld a, h                                          ; $4e3a: $7c
	inc hl                                           ; $4e3b: $23
	ei                                               ; $4e3c: $fb
	rlca                                             ; $4e3d: $07
	rst FarCall                                          ; $4e3e: $f7
	inc c                                            ; $4e3f: $0c
	ld e, [hl]                                       ; $4e40: $5e
	add hl, sp                                       ; $4e41: $39
	ccf                                              ; $4e42: $3f
	rlca                                             ; $4e43: $07
	ld c, $05                                        ; $4e44: $0e $05
	nop                                              ; $4e46: $00
	cp c                                             ; $4e47: $b9
	add b                                            ; $4e48: $80
	ret nz                                           ; $4e49: $c0

	ret nz                                           ; $4e4a: $c0

	ldh [$e0], a                                     ; $4e4b: $e0 $e0
	ret nz                                           ; $4e4d: $c0

	nop                                              ; $4e4e: $00
	inc hl                                           ; $4e4f: $23
	adc e                                            ; $4e50: $8b
	rst $38                                          ; $4e51: $ff
	or c                                             ; $4e52: $b1
	rst $38                                          ; $4e53: $ff
	db $ec                                           ; $4e54: $ec
	rst $38                                          ; $4e55: $ff
	cp $27                                           ; $4e56: $fe $27
	rst $38                                          ; $4e58: $ff
	inc bc                                           ; $4e59: $03
	ld a, a                                          ; $4e5a: $7f
	add c                                            ; $4e5b: $81
	rst $38                                          ; $4e5c: $ff
	db $fc                                           ; $4e5d: $fc
	scf                                              ; $4e5e: $37
	cp b                                             ; $4e5f: $b8
	xor a                                            ; $4e60: $af

jr_06a_4e61:
	ldh [$df], a                                     ; $4e61: $e0 $df
	ldh [rTAC], a                                    ; $4e63: $e0 $07
	cp d                                             ; $4e65: $ba
	rrca                                             ; $4e66: $0f
	rrca                                             ; $4e67: $0f
	rra                                              ; $4e68: $1f
	rra                                              ; $4e69: $1f
	ccf                                              ; $4e6a: $3f
	ccf                                              ; $4e6b: $3f
	ld a, a                                          ; $4e6c: $7f
	sub c                                            ; $4e6d: $91
	ld bc, $037f                                     ; $4e6e: $01 $7f $03
	rst $38                                          ; $4e71: $ff
	rlca                                             ; $4e72: $07
	rst $38                                          ; $4e73: $ff
	rra                                              ; $4e74: $1f

jr_06a_4e75:
	rst $38                                          ; $4e75: $ff
	ld a, $ff                                        ; $4e76: $3e $ff
	ldh a, [rIE]                                     ; $4e78: $f0 $ff
	add b                                            ; $4e7a: $80
	adc a                                            ; $4e7b: $8f
	cp l                                             ; $4e7c: $bd
	rrca                                             ; $4e7d: $0f
	rra                                              ; $4e7e: $1f
	rra                                              ; $4e7f: $1f
	ccf                                              ; $4e80: $3f
	ld a, a                                          ; $4e81: $7f

jr_06a_4e82:
	ret nc                                           ; $4e82: $d0

	add b                                            ; $4e83: $80
	rra                                              ; $4e84: $1f
	ld hl, sp-$01                                    ; $4e85: $f8 $ff
	ret nz                                           ; $4e87: $c0

	rst $38                                          ; $4e88: $ff
	db $10                                           ; $4e89: $10
	rst $38                                          ; $4e8a: $ff
	ld de, wPtrToScriptStack+1                                     ; $4e8b: $11 $ff $d1
	rst $38                                          ; $4e8e: $ff
	ld l, b                                          ; $4e8f: $68
	rst $38                                          ; $4e90: $ff
	sbc b                                            ; $4e91: $98
	rst $38                                          ; $4e92: $ff
	db $fc                                           ; $4e93: $fc
	rst $38                                          ; $4e94: $ff
	and h                                            ; $4e95: $a4
	rst $38                                          ; $4e96: $ff
	or h                                             ; $4e97: $b4
	rst $38                                          ; $4e98: $ff
	or [hl]                                          ; $4e99: $b6
	rst $38                                          ; $4e9a: $ff
	or d                                             ; $4e9b: $b2
	rst $38                                          ; $4e9c: $ff
	cp d                                             ; $4e9d: $ba
	rst GetHLinHL                                          ; $4e9e: $cf
	ld a, e                                          ; $4e9f: $7b
	adc a                                            ; $4ea0: $8f

jr_06a_4ea1:
	ld sp, hl                                        ; $4ea1: $f9
	rra                                              ; $4ea2: $1f
	sub b                                            ; $4ea3: $90
	db $dd                                           ; $4ea4: $dd
	scf                                              ; $4ea5: $37
	db $dd                                           ; $4ea6: $dd
	rst SubAFromBC                                          ; $4ea7: $e7
	push af                                          ; $4ea8: $f5
	rst GetHLinHL                                          ; $4ea9: $cf
	call $fdff                                       ; $4eaa: $cd $ff $fd
	rst $38                                          ; $4ead: $ff
	dec [hl]                                         ; $4eae: $35
	rst $38                                          ; $4eaf: $ff
	and l                                            ; $4eb0: $a5
	rst $38                                          ; $4eb1: $ff
	xor l                                            ; $4eb2: $ad
	ld a, e                                          ; $4eb3: $7b
	cp $8b                                           ; $4eb4: $fe $8b
	jp hl                                            ; $4eb6: $e9


	rst $38                                          ; $4eb7: $ff
	ld c, e                                          ; $4eb8: $4b
	rst $38                                          ; $4eb9: $ff
	ld c, d                                          ; $4eba: $4a
	rst $38                                          ; $4ebb: $ff
	ld a, d                                          ; $4ebc: $7a
	rst $38                                          ; $4ebd: $ff
	ld [hl], d                                       ; $4ebe: $72
	rst $38                                          ; $4ebf: $ff
	and $ff                                          ; $4ec0: $e6 $ff
	adc $ff                                          ; $4ec2: $ce $ff
	ld e, $fb                                        ; $4ec4: $1e $fb
	cp $e3                                           ; $4ec6: $fe $e3
	ld a, $03                                        ; $4ec8: $3e $03
	rlca                                             ; $4eca: $07
	nop                                              ; $4ecb: $00
	ld d, a                                          ; $4ecc: $57
	jr nz, jr_06a_4e61                               ; $4ecd: $20 $92

	ld hl, sp+$70                                    ; $4ecf: $f8 $70
	ldh [rAUD2LOW], a                                ; $4ed1: $e0 $18
	db $f4                                           ; $4ed3: $f4
	ld a, b                                          ; $4ed4: $78
	call c, Call_06a_7098                            ; $4ed5: $dc $98 $70
	ld hl, sp-$27                                    ; $4ed8: $f8 $d9
	ld [hl], b                                       ; $4eda: $70
	ld h, c                                          ; $4edb: $61
	ld b, e                                          ; $4edc: $43
	jr nz, jr_06a_4e75                               ; $4edd: $20 $96

	ld a, a                                          ; $4edf: $7f
	jr @+$11                                         ; $4ee0: $18 $0f

	ld sp, $070f                                     ; $4ee2: $31 $0f $07
	nop                                              ; $4ee5: $00
	ld bc, $2b81                                     ; $4ee6: $01 $81 $2b
	jr nz, jr_06a_4e82                               ; $4ee9: $20 $97

	rst $38                                          ; $4eeb: $ff
	ld bc, $fc9f                                     ; $4eec: $01 $9f $fc
	or a                                             ; $4eef: $b7
	jr c, jr_06a_4ea1                                ; $4ef0: $38 $af

	ldh a, [rVBK]                                    ; $4ef2: $f0 $4f
	jr nz, jr_06a_4f5d                               ; $4ef4: $20 $67

	add b                                            ; $4ef6: $80
	sbc e                                            ; $4ef7: $9b
	adc [hl]                                         ; $4ef8: $8e
	ei                                               ; $4ef9: $fb
	adc e                                            ; $4efa: $8b
	rst $38                                          ; $4efb: $ff
	ld l, e                                          ; $4efc: $6b
	add b                                            ; $4efd: $80
	sbc [hl]                                         ; $4efe: $9e
	ld a, h                                          ; $4eff: $7c
	scf                                              ; $4f00: $37
	add b                                            ; $4f01: $80
	sbc c                                            ; $4f02: $99
	ldh a, [rP1]                                     ; $4f03: $f0 $00
	sub b                                            ; $4f05: $90
	ldh [$78], a                                     ; $4f06: $e0 $78
	ldh a, [$7b]                                     ; $4f08: $f0 $7b
	add b                                            ; $4f0a: $80
	sub a                                            ; $4f0b: $97
	ld [$78fc], sp                                   ; $4f0c: $08 $fc $78
	ld d, b                                          ; $4f0f: $50
	ld hl, sp-$07                                    ; $4f10: $f8 $f9
	ldh a, [$71]                                     ; $4f12: $f0 $71
	ld e, e                                          ; $4f14: $5b
	add b                                            ; $4f15: $80
	sbc c                                            ; $4f16: $99
	ld a, [hl]                                       ; $4f17: $7e
	ld hl, $07fb                                     ; $4f18: $21 $fb $07
	push af                                          ; $4f1b: $f5
	ld c, $7b                                        ; $4f1c: $0e $7b
	add b                                            ; $4f1e: $80
	sbc b                                            ; $4f1f: $98
	jr nc, jr_06a_4f31                               ; $4f20: $30 $0f

	inc bc                                           ; $4f22: $03
	ld bc, $8207                                     ; $4f23: $01 $07 $82
	ld bc, $803b                                     ; $4f26: $01 $3b $80
	sbc [hl]                                         ; $4f29: $9e
	and a                                            ; $4f2a: $a7
	ld [hl], a                                       ; $4f2b: $77
	add b                                            ; $4f2c: $80
	sbc c                                            ; $4f2d: $99
	rst $38                                          ; $4f2e: $ff
	nop                                              ; $4f2f: $00
	rst $38                                          ; $4f30: $ff

jr_06a_4f31:
	db $fc                                           ; $4f31: $fc
	xor a                                            ; $4f32: $af
	ld [hl], b                                       ; $4f33: $70
	daa                                              ; $4f34: $27
	add b                                            ; $4f35: $80
	sbc [hl]                                         ; $4f36: $9e
	adc a                                            ; $4f37: $8f
	ld e, e                                          ; $4f38: $5b
	add b                                            ; $4f39: $80
	sbc l                                            ; $4f3a: $9d
	or l                                             ; $4f3b: $b5
	rst $38                                          ; $4f3c: $ff
	ccf                                              ; $4f3d: $3f
	add b                                            ; $4f3e: $80
	adc a                                            ; $4f3f: $8f
	or b                                             ; $4f40: $b0
	ret nz                                           ; $4f41: $c0

	ld l, b                                          ; $4f42: $68

jr_06a_4f43:
	ldh a, [$d0]                                     ; $4f43: $f0 $d0
	jr c, jr_06a_4f43                                ; $4f45: $38 $fc

	nop                                              ; $4f47: $00
	ldh a, [$0c]                                     ; $4f48: $f0 $0c
	add sp, $18                                      ; $4f4a: $e8 $18
	ld sp, hl                                        ; $4f4c: $f9
	ldh a, [rHDMA1]                                  ; $4f4d: $f0 $51
	jr nz, jr_06a_4fa8                               ; $4f4f: $20 $57

	add b                                            ; $4f51: $80
	ld a, a                                          ; $4f52: $7f
	and d                                            ; $4f53: $a2
	ld a, a                                          ; $4f54: $7f
	add b                                            ; $4f55: $80
	sub [hl]                                         ; $4f56: $96
	ld l, e                                          ; $4f57: $6b
	inc e                                            ; $4f58: $1c
	rra                                              ; $4f59: $1f
	jr nc, jr_06a_4f6b                               ; $4f5a: $30 $0f

	nop                                              ; $4f5c: $00

jr_06a_4f5d:
	ld b, $07                                        ; $4f5d: $06 $07
	add e                                            ; $4f5f: $83
	dec de                                           ; $4f60: $1b
	add b                                            ; $4f61: $80
	sbc e                                            ; $4f62: $9b
	rst SubAFromBC                                          ; $4f63: $e7
	inc e                                            ; $4f64: $1c
	ccf                                              ; $4f65: $3f
	ld hl, sp+$4f                                    ; $4f66: $f8 $4f
	add b                                            ; $4f68: $80
	rst SubAFromDE                                          ; $4f69: $df
	add b                                            ; $4f6a: $80

jr_06a_4f6b:
	sub d                                            ; $4f6b: $92
	pop bc                                           ; $4f6c: $c1
	add c                                            ; $4f6d: $81
	ld b, b                                          ; $4f6e: $40
	ret nz                                           ; $4f6f: $c0

	ld h, b                                          ; $4f70: $60
	ldh [$38], a                                     ; $4f71: $e0 $38
	ldh a, [$3c]                                     ; $4f73: $f0 $3c
	ld hl, sp+$2e                                    ; $4f75: $f8 $2e
	db $fc                                           ; $4f77: $fc
	dec hl                                           ; $4f78: $2b
	ld a, d                                          ; $4f79: $7a
	ld e, [hl]                                       ; $4f7a: $5e
	sbc h                                            ; $4f7b: $9c
	ld d, d                                          ; $4f7c: $52
	rst $38                                          ; $4f7d: $ff
	sub d                                            ; $4f7e: $92
	ld a, d                                          ; $4f7f: $7a
	inc a                                            ; $4f80: $3c
	sub d                                            ; $4f81: $92
	ld h, $ff                                        ; $4f82: $26 $ff
	ld h, h                                          ; $4f84: $64
	rst $38                                          ; $4f85: $ff
	call nz, $ccff                                   ; $4f86: $c4 $ff $cc
	rst $38                                          ; $4f89: $ff
	nop                                              ; $4f8a: $00
	nop                                              ; $4f8b: $00
	ldh [rLCDC], a                                   ; $4f8c: $e0 $40
	nop                                              ; $4f8e: $00
	cp h                                             ; $4f8f: $bc
	ret nz                                           ; $4f90: $c0

	ld bc, $0703                                     ; $4f91: $01 $03 $07
	rst GetHLinHL                                          ; $4f94: $cf
	ld a, a                                          ; $4f95: $7f
	cp d                                             ; $4f96: $ba
	sub b                                            ; $4f97: $90
	rst GetHLinHL                                          ; $4f98: $cf
	cp $fc                                           ; $4f99: $fe $fc
	inc a                                            ; $4f9b: $3c
	ld hl, sp+$38                                    ; $4f9c: $f8 $38
	ld hl, sp+$28                                    ; $4f9e: $f8 $28
	ld hl, sp+$68                                    ; $4fa0: $f8 $68
	ld hl, sp+$48                                    ; $4fa2: $f8 $48
	ld hl, sp+$4f                                    ; $4fa4: $f8 $4f
	ld sp, hl                                        ; $4fa6: $f9
	inc bc                                           ; $4fa7: $03

jr_06a_4fa8:
	ret nz                                           ; $4fa8: $c0

	ld a, e                                          ; $4fa9: $7b
	ret nz                                           ; $4faa: $c0

	rst SubAFromDE                                          ; $4fab: $df
	ret nz                                           ; $4fac: $c0

	rst $38                                          ; $4fad: $ff
	sbc [hl]                                         ; $4fae: $9e
	pop bc                                           ; $4faf: $c1
	dec de                                           ; $4fb0: $1b
	ret nz                                           ; $4fb1: $c0

	sbc [hl]                                         ; $4fb2: $9e
	ld b, c                                          ; $4fb3: $41
	inc de                                           ; $4fb4: $13
	ret nz                                           ; $4fb5: $c0

	sbc h                                            ; $4fb6: $9c
	ld h, b                                          ; $4fb7: $60
	ld b, b                                          ; $4fb8: $40
	ret nz                                           ; $4fb9: $c0

	ld a, e                                          ; $4fba: $7b
	dec [hl]                                         ; $4fbb: $35
	ld a, [hl]                                       ; $4fbc: $7e
	db $10                                           ; $4fbd: $10
	inc bc                                           ; $4fbe: $03
	ret nz                                           ; $4fbf: $c0

	inc hl                                           ; $4fc0: $23
	ret nz                                           ; $4fc1: $c0

	db $dd                                           ; $4fc2: $dd
	ldh [$9c], a                                     ; $4fc3: $e0 $9c
	ld h, c                                          ; $4fc5: $61
	ld b, b                                          ; $4fc6: $40
	ld b, e                                          ; $4fc7: $43
	inc sp                                           ; $4fc8: $33
	ret nz                                           ; $4fc9: $c0

	ld a, [bc]                                       ; $4fca: $0a
	ld [bc], a                                       ; $4fcb: $02
	add b                                            ; $4fcc: $80
	add hl, bc                                       ; $4fcd: $09
	rst $38                                          ; $4fce: $ff
	dec bc                                           ; $4fcf: $0b
	cp $0b                                           ; $4fd0: $fe $0b
	cp $0f                                           ; $4fd2: $fe $0f
	cp $8f                                           ; $4fd4: $fe $8f
	ld a, [$f88f]                                    ; $4fd6: $fa $8f $f8
	ret                                              ; $4fd9: $c9


	rst $38                                          ; $4fda: $ff
	ld c, a                                          ; $4fdb: $4f
	ld a, [hl]                                       ; $4fdc: $7e
	ld c, a                                          ; $4fdd: $4f
	ld a, b                                          ; $4fde: $78
	ld e, a                                          ; $4fdf: $5f
	ld a, l                                          ; $4fe0: $7d
	ld e, [hl]                                       ; $4fe1: $5e
	ld a, a                                          ; $4fe2: $7f
	or a                                             ; $4fe3: $b7
	db $fc                                           ; $4fe4: $fc
	di                                               ; $4fe5: $f3
	cp $33                                           ; $4fe6: $fe $33
	ld a, $61                                        ; $4fe8: $3e $61
	ld a, a                                          ; $4fea: $7f
	ld h, c                                          ; $4feb: $61
	add b                                            ; $4fec: $80
	ld a, a                                          ; $4fed: $7f
	pop hl                                           ; $4fee: $e1
	rst $38                                          ; $4fef: $ff
	xor b                                            ; $4ff0: $a8
	rst FarCall                                          ; $4ff1: $f7
	db $ec                                           ; $4ff2: $ec
	inc sp                                           ; $4ff3: $33
	cp h                                             ; $4ff4: $bc
	ld h, e                                          ; $4ff5: $63
	cp l                                             ; $4ff6: $bd
	ld h, d                                          ; $4ff7: $62
	ld c, l                                          ; $4ff8: $4d
	ldh [c], a                                       ; $4ff9: $e2
	ld l, c                                          ; $4ffa: $69
	add $6b                                          ; $4ffb: $c6 $6b
	call nz, $cc93                                   ; $4ffd: $c4 $93 $cc
	call nc, $d489                                   ; $5000: $d4 $89 $d4
	adc c                                            ; $5003: $89
	and d                                            ; $5004: $a2
	sbc c                                            ; $5005: $99
	dec hl                                           ; $5006: $2b
	sub c                                            ; $5007: $91
	ld c, $b3                                        ; $5008: $0e $b3
	ld c, [hl]                                       ; $500a: $4e

jr_06a_500b:
	or a                                             ; $500b: $b7
	add b                                            ; $500c: $80
	ld d, l                                          ; $500d: $55
	xor a                                            ; $500e: $af
	or b                                             ; $500f: $b0
	ldh [$f0], a                                     ; $5010: $e0 $f0
	ld h, b                                          ; $5012: $60
	ldh a, [$30]                                     ; $5013: $f0 $30
	ldh a, [rAUD1SWEEP]                              ; $5015: $f0 $10
	ldh a, [rAUD4LEN]                                ; $5017: $f0 $20
	ld d, b                                          ; $5019: $50
	ldh [$f8], a                                     ; $501a: $e0 $f8
	add b                                            ; $501c: $80
	ld hl, sp+$60                                    ; $501d: $f8 $60
	db $f4                                           ; $501f: $f4
	ld hl, sp-$64                                    ; $5020: $f8 $9c
	ret c                                            ; $5022: $d8

	ldh a, [$78]                                     ; $5023: $f0 $78
	sbc c                                            ; $5025: $99
	jr nc, jr_06a_5029                               ; $5026: $30 $01

	nop                                              ; $5028: $00

jr_06a_5029:
	ld bc, $0003                                     ; $5029: $01 $03 $00
	adc h                                            ; $502c: $8c
	ld bc, $0080                                     ; $502d: $01 $80 $00
	inc sp                                           ; $5030: $33
	ld sp, $306f                                     ; $5031: $31 $6f $30
	ld [hl], b                                       ; $5034: $70
	ccf                                              ; $5035: $3f
	rst GetHLinHL                                          ; $5036: $cf
	ccf                                              ; $5037: $3f
	rst $38                                          ; $5038: $ff
	nop                                              ; $5039: $00
	ld a, a                                          ; $503a: $7f
	ld bc, $073f                                     ; $503b: $01 $3f $07
	ld c, $05                                        ; $503e: $0e $05
	ld [hl], a                                       ; $5040: $77
	db $ec                                           ; $5041: $ec
	sbc [hl]                                         ; $5042: $9e
	ret nz                                           ; $5043: $c0

	cp e                                             ; $5044: $bb
	ret nz                                           ; $5045: $c0

	ldh [$e0], a                                     ; $5046: $e0 $e0
	ret nz                                           ; $5048: $c0

	nop                                              ; $5049: $00
	inc hl                                           ; $504a: $23
	adc e                                            ; $504b: $8b
	rst $38                                          ; $504c: $ff
	or c                                             ; $504d: $b1
	rst $38                                          ; $504e: $ff
	db $ec                                           ; $504f: $ec
	rst $38                                          ; $5050: $ff
	cp $e7                                           ; $5051: $fe $e7
	rst $38                                          ; $5053: $ff
	inc bc                                           ; $5054: $03
	sbc a                                            ; $5055: $9f
	pop hl                                           ; $5056: $e1
	rst $38                                          ; $5057: $ff
	db $fc                                           ; $5058: $fc
	ld [hl], a                                       ; $5059: $77
	jr c, jr_06a_500b                                ; $505a: $38 $af

	ldh [$df], a                                     ; $505c: $e0 $df
	ldh [rTAC], a                                    ; $505e: $e0 $07
	cp d                                             ; $5060: $ba
	rrca                                             ; $5061: $0f
	rrca                                             ; $5062: $0f
	rra                                              ; $5063: $1f
	rra                                              ; $5064: $1f
	ccf                                              ; $5065: $3f
	ccf                                              ; $5066: $3f

jr_06a_5067:
	ld a, a                                          ; $5067: $7f
	sub c                                            ; $5068: $91
	ld bc, $037f                                     ; $5069: $01 $7f $03
	rst $38                                          ; $506c: $ff

jr_06a_506d:
	rlca                                             ; $506d: $07
	rst $38                                          ; $506e: $ff
	rra                                              ; $506f: $1f
	rst $38                                          ; $5070: $ff
	ld a, $ff                                        ; $5071: $3e $ff
	ldh a, [rIE]                                     ; $5073: $f0 $ff
	add b                                            ; $5075: $80
	adc a                                            ; $5076: $8f
	cp l                                             ; $5077: $bd
	rrca                                             ; $5078: $0f
	rra                                              ; $5079: $1f
	rra                                              ; $507a: $1f

jr_06a_507b:
	ccf                                              ; $507b: $3f
	add b                                            ; $507c: $80
	inc bc                                           ; $507d: $03
	ld a, a                                          ; $507e: $7f

jr_06a_507f:
	rra                                              ; $507f: $1f
	ld hl, sp-$01                                    ; $5080: $f8 $ff
	ret nz                                           ; $5082: $c0

	rst $38                                          ; $5083: $ff
	db $10                                           ; $5084: $10
	rst $38                                          ; $5085: $ff

jr_06a_5086:
	ld de, wPtrToScriptStack+1                                     ; $5086: $11 $ff $d1
	rst $38                                          ; $5089: $ff
	ld l, b                                          ; $508a: $68
	rst $38                                          ; $508b: $ff
	sbc b                                            ; $508c: $98
	rst $38                                          ; $508d: $ff
	db $fc                                           ; $508e: $fc
	rst $38                                          ; $508f: $ff
	and h                                            ; $5090: $a4
	rst $38                                          ; $5091: $ff
	or h                                             ; $5092: $b4
	rst $38                                          ; $5093: $ff
	or [hl]                                          ; $5094: $b6
	rst $38                                          ; $5095: $ff

Jump_06a_5096:
	or d                                             ; $5096: $b2
	rst $38                                          ; $5097: $ff
	cp d                                             ; $5098: $ba
	rst GetHLinHL                                          ; $5099: $cf
	ld a, e                                          ; $509a: $7b
	adc a                                            ; $509b: $8f
	adc [hl]                                         ; $509c: $8e
	ld sp, hl                                        ; $509d: $f9
	rra                                              ; $509e: $1f
	db $dd                                           ; $509f: $dd
	scf                                              ; $50a0: $37
	db $dd                                           ; $50a1: $dd
	rst SubAFromBC                                          ; $50a2: $e7
	push af                                          ; $50a3: $f5
	rst GetHLinHL                                          ; $50a4: $cf
	call $fdff                                       ; $50a5: $cd $ff $fd
	rst $38                                          ; $50a8: $ff
	dec [hl]                                         ; $50a9: $35
	rst $38                                          ; $50aa: $ff
	and l                                            ; $50ab: $a5
	rst $38                                          ; $50ac: $ff
	xor l                                            ; $50ad: $ad
	ld a, e                                          ; $50ae: $7b
	cp $8b                                           ; $50af: $fe $8b
	jp hl                                            ; $50b1: $e9


	rst $38                                          ; $50b2: $ff
	ld c, e                                          ; $50b3: $4b
	rst $38                                          ; $50b4: $ff
	ld c, d                                          ; $50b5: $4a
	rst $38                                          ; $50b6: $ff

jr_06a_50b7:
	ld a, d                                          ; $50b7: $7a
	rst $38                                          ; $50b8: $ff
	ld [hl], d                                       ; $50b9: $72
	rst $38                                          ; $50ba: $ff
	and $ff                                          ; $50bb: $e6 $ff
	adc $ff                                          ; $50bd: $ce $ff
	ld e, $fb                                        ; $50bf: $1e $fb
	cp $e3                                           ; $50c1: $fe $e3
	ld a, $03                                        ; $50c3: $3e $03
	ld e, a                                          ; $50c5: $5f
	nop                                              ; $50c6: $00
	sbc l                                            ; $50c7: $9d
	adc [hl]                                         ; $50c8: $8e
	ld sp, hl                                        ; $50c9: $f9
	scf                                              ; $50ca: $37
	nop                                              ; $50cb: $00
	ld h, a                                          ; $50cc: $67
	jr nz, jr_06a_506d                               ; $50cd: $20 $9e

	ret nc                                           ; $50cf: $d0

	ld l, a                                          ; $50d0: $6f
	jr nz, jr_06a_5067                               ; $50d1: $20 $94

	nop                                              ; $50d3: $00
	db $f4                                           ; $50d4: $f4
	ld a, b                                          ; $50d5: $78
	call c, Call_06a_7098                            ; $50d6: $dc $98 $70
	ld hl, sp-$27                                    ; $50d9: $f8 $d9
	ld [hl], b                                       ; $50db: $70
	ld d, c                                          ; $50dc: $51
	jr nz, @+$61                                     ; $50dd: $20 $5f

	jr nz, jr_06a_507f                               ; $50df: $20 $9e

	ld h, b                                          ; $50e1: $60
	ld l, a                                          ; $50e2: $6f
	jr nz, jr_06a_507b                               ; $50e3: $20 $96

	nop                                              ; $50e5: $00
	ld a, $03                                        ; $50e6: $3e $03
	rrca                                             ; $50e8: $0f
	rlca                                             ; $50e9: $07
	nop                                              ; $50ea: $00
	ld bc, $0182                                     ; $50eb: $01 $82 $01
	cpl                                              ; $50ee: $2f
	jr nz, jr_06a_5086                               ; $50ef: $20 $95

	rst $38                                          ; $50f1: $ff
	ld bc, $fc3f                                     ; $50f2: $01 $3f $fc
	or a                                             ; $50f5: $b7
	jr c, jr_06a_50b7                                ; $50f6: $38 $bf

	ldh a, [$cf]                                     ; $50f8: $f0 $cf
	ldh a, [$57]                                     ; $50fa: $f0 $57
	jr nz, jr_06a_5139                               ; $50fc: $20 $3b

	add b                                            ; $50fe: $80
	sbc [hl]                                         ; $50ff: $9e
	ld a, h                                          ; $5100: $7c
	inc de                                           ; $5101: $13
	add b                                            ; $5102: $80
	sub a                                            ; $5103: $97
	ld [$78bc], sp                                   ; $5104: $08 $bc $78
	ld d, b                                          ; $5107: $50
	ld hl, sp-$07                                    ; $5108: $f8 $f9
	ldh a, [$71]                                     ; $510a: $f0 $71
	ld e, d                                          ; $510c: $5a
	and b                                            ; $510d: $a0
	sbc b                                            ; $510e: $98
	ld h, a                                          ; $510f: $67
	jr c, @+$01                                      ; $5110: $38 $ff

	ccf                                              ; $5112: $3f
	ld hl, sp+$07                                    ; $5113: $f8 $07
	ld a, a                                          ; $5115: $7f
	cp a                                             ; $5116: $bf
	ccf                                              ; $5117: $3f
	rrca                                             ; $5118: $0f
	sbc h                                            ; $5119: $9c
	inc bc                                           ; $511a: $03
	ld bc, $2f07                                     ; $511b: $01 $07 $2f
	add b                                            ; $511e: $80
	sub e                                            ; $511f: $93
	ld a, a                                          ; $5120: $7f
	add e                                            ; $5121: $83
	rst $38                                          ; $5122: $ff
	ld bc, $00ff                                     ; $5123: $01 $ff $00
	ei                                               ; $5126: $fb
	db $fc                                           ; $5127: $fc
	and a                                            ; $5128: $a7
	ld a, b                                          ; $5129: $78
	rst $38                                          ; $512a: $ff
	ret nz                                           ; $512b: $c0

	cpl                                              ; $512c: $2f
	add b                                            ; $512d: $80
	ld a, [hl]                                       ; $512e: $7e
	nop                                              ; $512f: $00
	sbc e                                            ; $5130: $9b
	ret z                                            ; $5131: $c8

	rst $38                                          ; $5132: $ff
	ld c, a                                          ; $5133: $4f
	ld a, a                                          ; $5134: $7f
	ld l, a                                          ; $5135: $6f
	add b                                            ; $5136: $80
	sbc l                                            ; $5137: $9d
	or l                                             ; $5138: $b5

jr_06a_5139:
	rst $38                                          ; $5139: $ff
	ld b, a                                          ; $513a: $47
	add b                                            ; $513b: $80
	sbc b                                            ; $513c: $98
	ldh a, [rP1]                                     ; $513d: $f0 $00
	sub b                                            ; $513f: $90
	ld h, b                                          ; $5140: $60
	ld hl, sp-$40                                    ; $5141: $f8 $c0
	ld hl, sp-$41                                    ; $5143: $f8 $bf

jr_06a_5145:
	db $fc                                           ; $5145: $fc
	ldh a, [$99]                                     ; $5146: $f0 $99
	inc c                                            ; $5148: $0c
	ret z                                            ; $5149: $c8

	jr c, jr_06a_5145                                ; $514a: $38 $f9

	ldh a, [$f1]                                     ; $514c: $f0 $f1

jr_06a_514e:
	ld e, e                                          ; $514e: $5b
	add b                                            ; $514f: $80
	sbc c                                            ; $5150: $99
	ld a, a                                          ; $5151: $7f
	jr nz, @-$0e                                     ; $5152: $20 $f0

	ccf                                              ; $5154: $3f
	rst AddAOntoHL                                          ; $5155: $ef
	rra                                              ; $5156: $1f
	ld [hl], e                                       ; $5157: $73
	add b                                            ; $5158: $80
	sbc e                                            ; $5159: $9b
	nop                                              ; $515a: $00
	ld b, $07                                        ; $515b: $06 $07
	add e                                            ; $515d: $83
	dec sp                                           ; $515e: $3b
	add b                                            ; $515f: $80
	sbc e                                            ; $5160: $9b
	ld l, [hl]                                       ; $5161: $6e
	rst FarCall                                          ; $5162: $f7
	cp a                                             ; $5163: $bf
	jp $8077                                         ; $5164: $c3 $77 $80


	ld a, a                                          ; $5167: $7f
	cp $9d                                           ; $5168: $fe $9d
	dec sp                                           ; $516a: $3b
	db $fc                                           ; $516b: $fc
	ld c, [hl]                                       ; $516c: $4e
	jr nz, jr_06a_514e                               ; $516d: $20 $df

	add b                                            ; $516f: $80
	sub d                                            ; $5170: $92
	pop bc                                           ; $5171: $c1
	add c                                            ; $5172: $81
	ld b, b                                          ; $5173: $40
	ret nz                                           ; $5174: $c0

	ld h, b                                          ; $5175: $60
	ldh [$38], a                                     ; $5176: $e0 $38
	ldh a, [$3c]                                     ; $5178: $f0 $3c
	ld hl, sp+$2e                                    ; $517a: $f8 $2e
	db $fc                                           ; $517c: $fc
	dec hl                                           ; $517d: $2b
	ld a, d                                          ; $517e: $7a
	ld e, [hl]                                       ; $517f: $5e
	sbc h                                            ; $5180: $9c
	ld d, d                                          ; $5181: $52
	rst $38                                          ; $5182: $ff
	sub d                                            ; $5183: $92
	ld a, d                                          ; $5184: $7a
	inc a                                            ; $5185: $3c
	sub e                                            ; $5186: $93
	ld h, $ff                                        ; $5187: $26 $ff
	ld h, h                                          ; $5189: $64
	rst $38                                          ; $518a: $ff
	call nz, $ccff                                   ; $518b: $c4 $ff $cc
	rst $38                                          ; $518e: $ff
	nop                                              ; $518f: $00
	nop                                              ; $5190: $00
	ret nz                                           ; $5191: $c0

	ld b, b                                          ; $5192: $40
	ld a, e                                          ; $5193: $7b
	db $fc                                           ; $5194: $fc
	cp l                                             ; $5195: $bd
	ld bc, $0703                                     ; $5196: $01 $03 $07
	rst GetHLinHL                                          ; $5199: $cf
	ld a, [hl]                                       ; $519a: $7e
	cp d                                             ; $519b: $ba
	adc e                                            ; $519c: $8b
	rst GetHLinHL                                          ; $519d: $cf
	cp $fc                                           ; $519e: $fe $fc
	inc a                                            ; $51a0: $3c
	ld hl, sp+$38                                    ; $51a1: $f8 $38
	ld hl, sp+$28                                    ; $51a3: $f8 $28
	ld hl, sp+$68                                    ; $51a5: $f8 $68
	ld hl, sp+$48                                    ; $51a7: $f8 $48
	ld hl, sp+$4f                                    ; $51a9: $f8 $4f
	ld sp, hl                                        ; $51ab: $f9
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	ld b, b                                          ; $51ae: $40
	ld h, b                                          ; $51af: $60
	add b                                            ; $51b0: $80
	ld a, e                                          ; $51b1: $7b
	sub a                                            ; $51b2: $97
	sbc [hl]                                         ; $51b3: $9e
	pop bc                                           ; $51b4: $c1
	inc hl                                           ; $51b5: $23
	ldh [$df], a                                     ; $51b6: $e0 $df
	ld h, b                                          ; $51b8: $60
	sbc [hl]                                         ; $51b9: $9e
	ldh [$7b], a                                     ; $51ba: $e0 $7b
	ldh [$9e], a                                     ; $51bc: $e0 $9e
	ld h, c                                          ; $51be: $61
	dec hl                                           ; $51bf: $2b
	ldh [rPCM34], a                                  ; $51c0: $e0 $77
	add b                                            ; $51c2: $80
	sbc [hl]                                         ; $51c3: $9e
	ld b, c                                          ; $51c4: $41
	inc de                                           ; $51c5: $13
	add b                                            ; $51c6: $80
	ld a, e                                          ; $51c7: $7b
	ret nz                                           ; $51c8: $c0

	sbc e                                            ; $51c9: $9b
	ldh [$60], a                                     ; $51ca: $e0 $60
	ret nz                                           ; $51cc: $c0

	ld bc, $63be                                     ; $51cd: $01 $be $63
	rlca                                             ; $51d0: $07
	rst GetHLinHL                                          ; $51d1: $cf
	ld b, e                                          ; $51d2: $43
	ret nz                                           ; $51d3: $c0

	db $fd                                           ; $51d4: $fd
	add d                                            ; $51d5: $82
	add h                                            ; $51d6: $84
	ld bc, $0702                                     ; $51d7: $01 $02 $07
	dec b                                            ; $51da: $05
	rlca                                             ; $51db: $07
	rrca                                             ; $51dc: $0f
	dec bc                                           ; $51dd: $0b
	ld c, $01                                        ; $51de: $0e $01
	inc bc                                           ; $51e0: $03
	ld b, $06                                        ; $51e1: $06 $06
	inc b                                            ; $51e3: $04
	inc c                                            ; $51e4: $0c
	inc c                                            ; $51e5: $0c
	add hl, bc                                       ; $51e6: $09
	rrca                                             ; $51e7: $0f
	dec c                                            ; $51e8: $0d
	dec c                                            ; $51e9: $0d
	inc de                                           ; $51ea: $13
	inc de                                           ; $51eb: $13
	rla                                              ; $51ec: $17
	dec l                                            ; $51ed: $2d
	sub c                                            ; $51ee: $91
	add hl, bc                                       ; $51ef: $09
	dec bc                                           ; $51f0: $0b
	dec bc                                           ; $51f1: $0b
	sbc $1f                                          ; $51f2: $de $1f
	sbc e                                            ; $51f4: $9b
	dec a                                            ; $51f5: $3d
	pop af                                           ; $51f6: $f1
	ld bc, $fc01                                     ; $51f7: $01 $01 $fc
	sbc $01                                          ; $51fa: $de $01
	ld h, e                                          ; $51fc: $63
	ld hl, sp-$62                                    ; $51fd: $f8 $9e
	inc bc                                           ; $51ff: $03
	ld l, e                                          ; $5200: $6b
	rst FarCall                                          ; $5201: $f7
	ld [hl], e                                       ; $5202: $73
	ld hl, sp-$01                                    ; $5203: $f8 $ff
	sbc c                                            ; $5205: $99
	db $10                                           ; $5206: $10
	ld sp, $2629                                     ; $5207: $31 $29 $26
	ld de, $fe0a                                     ; $520a: $11 $0a $fe
	add b                                            ; $520d: $80
	ld hl, $3f39                                     ; $520e: $21 $39 $3f
	ld e, $0d                                        ; $5211: $1e $0d
	ld e, $3f                                        ; $5213: $1e $3f
	dec l                                            ; $5215: $2d
	ld a, e                                          ; $5216: $7b
	ld e, a                                          ; $5217: $5f
	rst FarCall                                          ; $5218: $f7
	or [hl]                                          ; $5219: $b6
	sbc d                                            ; $521a: $9a
	add hl, de                                       ; $521b: $19
	jr nc, jr_06a_5250                               ; $521c: $30 $32

	ld h, [hl]                                       ; $521e: $66
	ld h, h                                          ; $521f: $64
	call z, $edcd                                    ; $5220: $cc $cd $ed
	adc b                                            ; $5223: $88
	ret z                                            ; $5224: $c8

	ld c, b                                          ; $5225: $48
	ld h, h                                          ; $5226: $64
	inc [hl]                                         ; $5227: $34
	ld a, [de]                                       ; $5228: $1a
	ld c, $0f                                        ; $5229: $0e $0f
	rst $38                                          ; $522b: $ff
	rst $38                                          ; $522c: $ff
	rst SubAFromDE                                          ; $522d: $df
	ld a, a                                          ; $522e: $7f
	sbc c                                            ; $522f: $99
	ccf                                              ; $5230: $3f
	rra                                              ; $5231: $1f
	rrca                                             ; $5232: $0f

jr_06a_5233:
	dec bc                                           ; $5233: $0b
	rrca                                             ; $5234: $0f
	rrca                                             ; $5235: $0f
	sbc $1f                                          ; $5236: $de $1f
	sbc $3f                                          ; $5238: $de $3f
	sub a                                            ; $523a: $97
	add hl, bc                                       ; $523b: $09
	ld [$1118], sp                                   ; $523c: $08 $18 $11
	ld [de], a                                       ; $523f: $12
	ld [hl], $3c                                     ; $5240: $36 $3c
	jr c, jr_06a_5233                                ; $5242: $38 $ef

	sbc c                                            ; $5244: $99
	ld bc, $1b06                                     ; $5245: $01 $06 $1b
	sbc l                                            ; $5248: $9d
	ld a, [hl]                                       ; $5249: $7e
	rst GetHLinHL                                          ; $524a: $cf
	ld a, e                                          ; $524b: $7b
	ld hl, sp-$80                                    ; $524c: $f8 $80
	rlca                                             ; $524e: $07
	inc e                                            ; $524f: $1c

jr_06a_5250:
	db $e3                                           ; $5250: $e3
	ld a, a                                          ; $5251: $7f
	ldh a, [$e1]                                     ; $5252: $f0 $e1
	adc h                                            ; $5254: $8c
	inc sp                                           ; $5255: $33
	ld b, a                                          ; $5256: $47
	cp b                                             ; $5257: $b8
	ld d, e                                          ; $5258: $53
	and [hl]                                         ; $5259: $a6
	xor l                                            ; $525a: $ad
	nop                                              ; $525b: $00
	inc bc                                           ; $525c: $03
	inc c                                            ; $525d: $0c
	jr c, jr_06a_52c0                                ; $525e: $38 $60

	ldh [$c1], a                                     ; $5260: $e0 $c1
	jp Jump_06a_558b                                 ; $5262: $c3 $8b $55


	ld d, a                                          ; $5265: $57
	halt                                             ; $5266: $76
	ld l, d                                          ; $5267: $6a
	ld l, h                                          ; $5268: $6c
	ld c, l                                          ; $5269: $4d
	ld c, l                                          ; $526a: $4d
	add $8e                                          ; $526b: $c6 $8e
	sbc c                                            ; $526d: $99
	adc h                                            ; $526e: $8c
	adc l                                            ; $526f: $8d
	sbc l                                            ; $5270: $9d
	sbc e                                            ; $5271: $9b
	cp d                                             ; $5272: $ba
	cp d                                             ; $5273: $ba
	ldh [$c1], a                                     ; $5274: $e0 $c1
	sbc b                                            ; $5276: $98
	ld c, a                                          ; $5277: $4f
	rst GetHLinHL                                          ; $5278: $cf
	rst SubAFromBC                                          ; $5279: $e7
	rst SubAFromBC                                          ; $527a: $e7
	di                                               ; $527b: $f3
	ld sp, hl                                        ; $527c: $f9
	rst $38                                          ; $527d: $ff
	call c, $9bfc                                    ; $527e: $dc $fc $9b
	cp [hl]                                          ; $5281: $be
	sbc a                                            ; $5282: $9f
	add [hl]                                         ; $5283: $86
	add b                                            ; $5284: $80
	sbc $e0                                          ; $5285: $de $e0
	rst SubAFromDE                                          ; $5287: $df
	ret nz                                           ; $5288: $c0

	sbc h                                            ; $5289: $9c
	add b                                            ; $528a: $80
	nop                                              ; $528b: $00
	nop                                              ; $528c: $00
	sbc $80                                          ; $528d: $de $80
	db $ec                                           ; $528f: $ec
	add a                                            ; $5290: $87
	ld bc, $c37c                                     ; $5291: $01 $7c $c3
	db $fc                                           ; $5294: $fc
	rst $38                                          ; $5295: $ff
	rst GetHLinHL                                          ; $5296: $cf
	pop bc                                           ; $5297: $c1
	cp $01                                           ; $5298: $fe $01
	ld a, h                                          ; $529a: $7c
	rst $38                                          ; $529b: $ff
	inc bc                                           ; $529c: $03
	nop                                              ; $529d: $00
	ldh a, [$3e]                                     ; $529e: $f0 $3e
	ld bc, $c738                                     ; $52a0: $01 $38 $c7
	nop                                              ; $52a3: $00
	inc bc                                           ; $52a4: $03
	inc e                                            ; $52a5: $1c
	ld h, b                                          ; $52a6: $60
	add b                                            ; $52a7: $80
	nop                                              ; $52a8: $00
	sbc $ff                                          ; $52a9: $de $ff
	ld a, e                                          ; $52ab: $7b
	inc e                                            ; $52ac: $1c
	adc l                                            ; $52ad: $8d
	rst $38                                          ; $52ae: $ff
	db $ed                                           ; $52af: $ed
	ld bc, $1713                                     ; $52b0: $01 $13 $17
	ld h, $2e                                        ; $52b3: $26 $2e
	ld l, $7e                                        ; $52b5: $2e $7e
	ld a, [hl]                                       ; $52b7: $7e
	db $db                                           ; $52b8: $db
	sub [hl]                                         ; $52b9: $96
	or h                                             ; $52ba: $b4
	ld a, h                                          ; $52bb: $7c
	ld a, b                                          ; $52bc: $78
	ld a, b                                          ; $52bd: $78
	ret c                                            ; $52be: $d8

	ret c                                            ; $52bf: $d8

jr_06a_52c0:
	ldh [$c1], a                                     ; $52c0: $e0 $c1
	add b                                            ; $52c2: $80
	db $fd                                           ; $52c3: $fd
	rst $38                                          ; $52c4: $ff
	rst $38                                          ; $52c5: $ff
	cp l                                             ; $52c6: $bd

jr_06a_52c7:
	cp a                                             ; $52c7: $bf
	cp [hl]                                          ; $52c8: $be
	or c                                             ; $52c9: $b1
	or c                                             ; $52ca: $b1
	ldh a, [c]                                       ; $52cb: $f2
	ldh [$e2], a                                     ; $52cc: $e0 $e2
	and d                                            ; $52ce: $a2
	and d                                            ; $52cf: $a2
	pop hl                                           ; $52d0: $e1
	rst AddAOntoHL                                          ; $52d1: $ef
	rst AddAOntoHL                                          ; $52d2: $ef
	sub b                                            ; $52d3: $90
	ld d, b                                          ; $52d4: $50
	ld d, b                                          ; $52d5: $50
	ld d, c                                          ; $52d6: $51
	ld c, c                                          ; $52d7: $49
	cpl                                              ; $52d8: $2f
	cpl                                              ; $52d9: $2f
	scf                                              ; $52da: $37
	rst SubAFromDE                                          ; $52db: $df

jr_06a_52dc:
	ld a, a                                          ; $52dc: $7f
	ld a, a                                          ; $52dd: $7f
	ld a, [hl]                                       ; $52de: $7e
	ld c, [hl]                                       ; $52df: $4e
	jr z, jr_06a_530a                                ; $52e0: $28 $28

	sbc [hl]                                         ; $52e2: $9e
	inc [hl]                                         ; $52e3: $34
	pop af                                           ; $52e4: $f1
	add b                                            ; $52e5: $80
	ldh [$b0], a                                     ; $52e6: $e0 $b0
	ld e, e                                          ; $52e8: $5b
	xor [hl]                                         ; $52e9: $ae
	ld a, h                                          ; $52ea: $7c
	cp c                                             ; $52eb: $b9
	rst SubAFromDE                                          ; $52ec: $df
	cp $e0                                           ; $52ed: $fe $e0
	ldh a, [$7b]                                     ; $52ef: $f0 $7b
	cp a                                             ; $52f1: $bf
	rst AddAOntoHL                                          ; $52f2: $ef
	ld l, [hl]                                       ; $52f3: $6e
	jr nc, jr_06a_52c7                               ; $52f4: $30 $d1

	ld b, b                                          ; $52f6: $40
	jr nz, @-$5e                                     ; $52f7: $20 $a0

	ldh [$60], a                                     ; $52f9: $e0 $60
	jr nz, jr_06a_531d                               ; $52fb: $20 $20

	ld a, b                                          ; $52fd: $78
	rst $38                                          ; $52fe: $ff
	cp $f9                                           ; $52ff: $fe $f9
	rst FarCall                                          ; $5301: $f7
	cp $ff                                           ; $5302: $fe $ff
	ei                                               ; $5304: $fb
	sbc d                                            ; $5305: $9a
	db $fd                                           ; $5306: $fd
	call c, $0206                                    ; $5307: $dc $06 $02

jr_06a_530a:
	ld [bc], a                                       ; $530a: $02
	db $dd                                           ; $530b: $dd
	inc bc                                           ; $530c: $03
	sbc [hl]                                         ; $530d: $9e
	and [hl]                                         ; $530e: $a6
	ld a, e                                          ; $530f: $7b
	ld sp, hl                                        ; $5310: $f9
	db $dd                                           ; $5311: $dd
	ld bc, sPreScriptSP                                     ; $5312: $01 $e0 $bd
	sbc e                                            ; $5315: $9b
	add d                                            ; $5316: $82
	xor e                                            ; $5317: $ab
	db $fc                                           ; $5318: $fc
	ret nc                                           ; $5319: $d0

	db $dd                                           ; $531a: $dd
	rst $38                                          ; $531b: $ff
	adc e                                            ; $531c: $8b

jr_06a_531d:
	ld a, l                                          ; $531d: $7d
	or $5b                                           ; $531e: $f6 $5b
	ccf                                              ; $5320: $3f
	ld sp, hl                                        ; $5321: $f9
	ldh [c], a                                       ; $5322: $e2
	add l                                            ; $5323: $85
	adc d                                            ; $5324: $8a
	sub h                                            ; $5325: $94
	add sp, -$30                                     ; $5326: $e8 $d0
	and b                                            ; $5328: $a0
	cp a                                             ; $5329: $bf
	sbc $7d                                          ; $532a: $de $7d
	ld a, d                                          ; $532c: $7a
	ld [hl], l                                       ; $532d: $75
	dec hl                                           ; $532e: $2b
	ld d, a                                          ; $532f: $57
	xor a                                            ; $5330: $af
	pop af                                           ; $5331: $f1
	add a                                            ; $5332: $87
	inc a                                            ; $5333: $3c
	rst SubAFromBC                                          ; $5334: $e7
	cp h                                             ; $5335: $bc
	rst GetHLinHL                                          ; $5336: $cf

jr_06a_5337:
	ccf                                              ; $5337: $3f
	rst $38                                          ; $5338: $ff
	add b                                            ; $5339: $80
	ld a, $3c                                        ; $533a: $3e $3c
	rst $38                                          ; $533c: $ff
	jp $c03f                                         ; $533d: $c3 $3f $c0


	nop                                              ; $5340: $00
	ld a, a                                          ; $5341: $7f
	pop bc                                           ; $5342: $c1
	rst $38                                          ; $5343: $ff
	rrca                                             ; $5344: $0f
	ld sp, hl                                        ; $5345: $f9
	sbc h                                            ; $5346: $9c
	ld h, $53                                        ; $5347: $26 $53
	dec l                                            ; $5349: $2d
	add e                                            ; $534a: $83
	cp $8a                                           ; $534b: $fe $8a
	ld h, b                                          ; $534d: $60
	jr jr_06a_52dc                                   ; $534e: $18 $8c

	add $66                                          ; $5350: $c6 $66
	ld d, [hl]                                       ; $5352: $56
	ld d, [hl]                                       ; $5353: $56
	and l                                            ; $5354: $a5
	xor a                                            ; $5355: $af
	and a                                            ; $5356: $a7
	rst FarCall                                          ; $5357: $f7
	jp z, $a3ca                                      ; $5358: $ca $ca $a3

	and e                                            ; $535b: $a3
	ld d, e                                          ; $535c: $53
	ld d, c                                          ; $535d: $51
	ld e, c                                          ; $535e: $59
	ld e, c                                          ; $535f: $59
	db $fd                                           ; $5360: $fd
	db $fd                                           ; $5361: $fd
	ldh [$c1], a                                     ; $5362: $e0 $c1
	adc l                                            ; $5364: $8d
	ccf                                              ; $5365: $3f
	ld a, a                                          ; $5366: $7f
	ld a, a                                          ; $5367: $7f
	cp l                                             ; $5368: $bd
	ld a, [$6834]                                    ; $5369: $fa $34 $68
	ret nc                                           ; $536c: $d0

	call $a793                                       ; $536d: $cd $93 $a7
	ld c, l                                          ; $5370: $4d
	adc d                                            ; $5371: $8a
	call nc, $d0a8                                   ; $5372: $d4 $a8 $d0
	jr nz, jr_06a_5337                               ; $5375: $20 $c0

	ei                                               ; $5377: $fb
	ld a, a                                          ; $5378: $7f
	ld hl, sp-$65                                    ; $5379: $f8 $9b
	ld e, $7c                                        ; $537b: $1e $7c
	ldh a, [$e0]                                     ; $537d: $f0 $e0
	halt                                             ; $537f: $76
	ld d, $f1                                        ; $5380: $16 $f1
	add b                                            ; $5382: $80
	ld [hl], b                                       ; $5383: $70
	ret nz                                           ; $5384: $c0

	ld [hl], b                                       ; $5385: $70
	ret c                                            ; $5386: $d8

	xor $7b                                          ; $5387: $ee $7b
	nop                                              ; $5389: $00
	nop                                              ; $538a: $00
	ldh a, [$c0]                                     ; $538b: $f0 $c0
	ldh a, [$38]                                     ; $538d: $f0 $38
	ld e, $87                                        ; $538f: $1e $87
	db $fd                                           ; $5391: $fd
	ld a, [hl]                                       ; $5392: $7e
	adc a                                            ; $5393: $8f
	ld h, a                                          ; $5394: $67
	ld de, $b448                                     ; $5395: $11 $48 $b4
	jp c, $8103                                      ; $5398: $da $03 $81

	ld [hl], b                                       ; $539b: $70
	jr jr_06a_53ac                                   ; $539c: $18 $0e

	rlca                                             ; $539e: $07
	inc bc                                           ; $539f: $03
	ld bc, $90b7                                     ; $53a0: $01 $b7 $90
	db $db                                           ; $53a3: $db
	ld c, e                                          ; $53a4: $4b
	ld h, l                                          ; $53a5: $65
	ld a, [hl+]                                      ; $53a6: $2a
	ld [hl], $95                                     ; $53a7: $36 $95
	adc a                                            ; $53a9: $8f
	ld c, b                                          ; $53aa: $48
	inc h                                            ; $53ab: $24

jr_06a_53ac:
	or h                                             ; $53ac: $b4
	sbc d                                            ; $53ad: $9a
	db $dd                                           ; $53ae: $dd
	call $f6ee                                       ; $53af: $cd $ee $f6
	ldh [$c1], a                                     ; $53b2: $e0 $c1
	sub a                                            ; $53b4: $97
	ldh a, [c]                                       ; $53b5: $f2
	add [hl]                                         ; $53b6: $86
	cp $fc                                           ; $53b7: $fe $fc
	ld a, b                                          ; $53b9: $78
	ld sp, $2632                                     ; $53ba: $31 $32 $26
	ld a, b                                          ; $53bd: $78
	ldh [$7c], a                                     ; $53be: $e0 $7c
	ld a, c                                          ; $53c0: $79
	sbc $1f                                          ; $53c1: $de $1f
	add b                                            ; $53c3: $80
	ld l, $2a                                        ; $53c4: $2e $2a
	ld [bc], a                                       ; $53c6: $02
	ld [de], a                                       ; $53c7: $12
	inc de                                           ; $53c8: $13
	inc hl                                           ; $53c9: $23
	inc bc                                           ; $53ca: $03
	inc bc                                           ; $53cb: $03
	ccf                                              ; $53cc: $3f
	dec sp                                           ; $53cd: $3b
	inc sp                                           ; $53ce: $33
	inc sp                                           ; $53cf: $33
	ld sp, $0121                                     ; $53d0: $31 $21 $01
	nop                                              ; $53d3: $00
	add b                                            ; $53d4: $80
	ret nz                                           ; $53d5: $c0

	ld h, b                                          ; $53d6: $60
	or b                                             ; $53d7: $b0
	ret nc                                           ; $53d8: $d0

	ld hl, sp+$68                                    ; $53d9: $f8 $68
	inc a                                            ; $53db: $3c
	add b                                            ; $53dc: $80
	ret nz                                           ; $53dd: $c0

	ldh [rSVBK], a                                   ; $53de: $e0 $70
	jr nc, jr_06a_53fa                               ; $53e0: $30 $18

	sbc b                                            ; $53e2: $98
	add l                                            ; $53e3: $85
	call z, $1c14                                    ; $53e4: $cc $14 $1c
	sbc [hl]                                         ; $53e7: $9e
	adc d                                            ; $53e8: $8a
	adc d                                            ; $53e9: $8a
	jp z, Jump_06a_4d4f                              ; $53ea: $ca $4f $4d

	db $ec                                           ; $53ed: $ec
	db $e4                                           ; $53ee: $e4
	ld h, [hl]                                       ; $53ef: $66
	halt                                             ; $53f0: $76
	halt                                             ; $53f1: $76
	ld [hl], $b3                                     ; $53f2: $36 $b3
	or e                                             ; $53f4: $b3
	xor l                                            ; $53f5: $ad
	and l                                            ; $53f6: $a5
	and h                                            ; $53f7: $a4
	and h                                            ; $53f8: $a4
	sub h                                            ; $53f9: $94

jr_06a_53fa:
	ret nc                                           ; $53fa: $d0

	ret nc                                           ; $53fb: $d0

	ld d, d                                          ; $53fc: $52
	ld d, e                                          ; $53fd: $53
	sbc $5b                                          ; $53fe: $de $5b
	add b                                            ; $5400: $80
	ld l, e                                          ; $5401: $6b
	cpl                                              ; $5402: $2f
	cpl                                              ; $5403: $2f
	xor l                                            ; $5404: $ad
	ld d, d                                          ; $5405: $52
	jp nc, $dbd3                                     ; $5406: $d2 $d3 $db

	ret                                              ; $5409: $c9


	jp hl                                            ; $540a: $e9


	db $ec                                           ; $540b: $ec
	and h                                            ; $540c: $a4
	xor l                                            ; $540d: $ad
	xor l                                            ; $540e: $ad
	xor h                                            ; $540f: $ac
	and h                                            ; $5410: $a4
	or [hl]                                          ; $5411: $b6
	sub [hl]                                         ; $5412: $96
	sub e                                            ; $5413: $93
	db $db                                           ; $5414: $db
	and [hl]                                         ; $5415: $a6
	dec [hl]                                         ; $5416: $35
	ld sp, $8a90                                     ; $5417: $31 $90 $8a
	adc b                                            ; $541a: $88
	pop bc                                           ; $541b: $c1
	ld b, d                                          ; $541c: $42
	reti                                             ; $541d: $d9


	ret z                                            ; $541e: $c8

	call z, Call_06a_6c92                            ; $541f: $cc $92 $6c
	ld h, h                                          ; $5422: $64
	ld h, [hl]                                       ; $5423: $66
	ld h, $25                                        ; $5424: $26 $25
	ld l, d                                          ; $5426: $6a
	ld a, [hl+]                                      ; $5427: $2a
	dec bc                                           ; $5428: $0b
	ld e, e                                          ; $5429: $5b
	db $d3                                           ; $542a: $d3
	sub a                                            ; $542b: $97
	dec b                                            ; $542c: $05
	ld h, a                                          ; $542d: $67
	db $dd                                           ; $542e: $dd
	dec b                                            ; $542f: $05
	add b                                            ; $5430: $80
	dec c                                            ; $5431: $0d
	ld c, c                                          ; $5432: $49
	db $db                                           ; $5433: $db
	sbc e                                            ; $5434: $9b
	inc bc                                           ; $5435: $03
	daa                                              ; $5436: $27
	cpl                                              ; $5437: $2f
	ld e, a                                          ; $5438: $5f
	cp a                                             ; $5439: $bf
	ld a, a                                          ; $543a: $7f
	ld [hl], a                                       ; $543b: $77
	rst SubAFromBC                                          ; $543c: $e7
	cp $fc                                           ; $543d: $fe $fc
	db $fc                                           ; $543f: $fc
	ld sp, hl                                        ; $5440: $f9
	pop af                                           ; $5441: $f1
	ldh [c], a                                       ; $5442: $e2
	jp nz, $e784                                     ; $5443: $c2 $84 $e7

	xor $bc                                          ; $5446: $ee $bc
	inc a                                            ; $5448: $3c
	inc a                                            ; $5449: $3c
	inc e                                            ; $544a: $1c
	dec e                                            ; $544b: $1d
	rrca                                             ; $544c: $0f
	and h                                            ; $544d: $a4
	and h                                            ; $544e: $a4
	xor b                                            ; $544f: $a8
	sbc d                                            ; $5450: $9a
	jr z, jr_06a_546b                                ; $5451: $28 $18

	jr @+$0a                                         ; $5453: $18 $08

	ld [$f674], sp                                   ; $5455: $08 $74 $f6
	ld a, e                                          ; $5458: $7b
	ld a, l                                          ; $5459: $7d
	sbc [hl]                                         ; $545a: $9e
	jp c, $f873                                      ; $545b: $da $73 $f8

	add b                                            ; $545e: $80
	ldh [c], a                                       ; $545f: $e2
	ld [hl], d                                       ; $5460: $72
	ld a, $52                                        ; $5461: $3e $52
	ld c, h                                          ; $5463: $4c
	ld [$76a6], a                                    ; $5464: $ea $a6 $76
	jp nc, $a9f9                                     ; $5467: $d2 $f9 $a9

	xor [hl]                                         ; $546a: $ae

jr_06a_546b:
	or h                                             ; $546b: $b4
	sub [hl]                                         ; $546c: $96
	jp c, Jump_06a_6eca                              ; $546d: $da $ca $6e

	ld h, a                                          ; $5470: $67
	ld [hl], a                                       ; $5471: $77
	cp l                                             ; $5472: $bd
	dec [hl]                                         ; $5473: $35
	ld c, l                                          ; $5474: $4d
	ld e, d                                          ; $5475: $5a
	xor d                                            ; $5476: $aa
	and $c6                                          ; $5477: $e6 $c6
	call nc, $9b33                                   ; $5479: $d4 $33 $9b
	sbc e                                            ; $547c: $9b
	adc l                                            ; $547d: $8d
	rst SubAFromDE                                          ; $547e: $df
	ld c, l                                          ; $547f: $4d
	sub e                                            ; $5480: $93
	ld l, l                                          ; $5481: $6d
	ld l, a                                          ; $5482: $6f
	or h                                             ; $5483: $b4
	or h                                             ; $5484: $b4
	and h                                            ; $5485: $a4
	and [hl]                                         ; $5486: $a6
	and d                                            ; $5487: $a2
	ld [hl+], a                                      ; $5488: $22
	ld h, d                                          ; $5489: $62
	rst $38                                          ; $548a: $ff
	ld l, a                                          ; $548b: $6f
	ld l, a                                          ; $548c: $6f
	sbc $7f                                          ; $548d: $de $7f
	db $db                                           ; $548f: $db
	rst $38                                          ; $5490: $ff
	sub a                                            ; $5491: $97
	ei                                               ; $5492: $fb
	di                                               ; $5493: $f3
	db $e3                                           ; $5494: $e3
	jp $4783                                         ; $5495: $c3 $83 $47


	jp $fc81                                         ; $5498: $c3 $81 $fc


	sbc e                                            ; $549b: $9b
	ld de, $6121                                     ; $549c: $11 $21 $61
	pop hl                                           ; $549f: $e1
	ld l, h                                          ; $54a0: $6c
	sbc [hl]                                         ; $54a1: $9e
	ld sp, hl                                        ; $54a2: $f9
	db $db                                           ; $54a3: $db
	add b                                            ; $54a4: $80
	ld h, a                                          ; $54a5: $67
	ld hl, sp-$23                                    ; $54a6: $f8 $dd
	add b                                            ; $54a8: $80
	rst SubAFromDE                                          ; $54a9: $df
	ret nz                                           ; $54aa: $c0

	sbc l                                            ; $54ab: $9d
	db $e4                                           ; $54ac: $e4
	ld [hl], h                                       ; $54ad: $74
	db $dd                                           ; $54ae: $dd
	add b                                            ; $54af: $80
	sbc c                                            ; $54b0: $99
	ld b, b                                          ; $54b1: $40
	ld b, h                                          ; $54b2: $44
	inc h                                            ; $54b3: $24
	adc h                                            ; $54b4: $8c
	adc b                                            ; $54b5: $88
	ldh a, [$73]                                     ; $54b6: $f0 $73
	rst AddAOntoHL                                          ; $54b8: $ef
	sbc l                                            ; $54b9: $9d
	ldh [$f8], a                                     ; $54ba: $e0 $f8
	ld [hl], e                                       ; $54bc: $73
	ld hl, sp-$65                                    ; $54bd: $f8 $9b
	ld b, b                                          ; $54bf: $40
	ld h, b                                          ; $54c0: $60
	ldh [$e0], a                                     ; $54c1: $e0 $e0
	sbc $f0                                          ; $54c3: $de $f0
	rst SubAFromDE                                          ; $54c5: $df
	ld hl, sp-$6a                                    ; $54c6: $f8 $96
	db $fc                                           ; $54c8: $fc
	jr nz, jr_06a_54eb                               ; $54c9: $20 $20

	jr nc, jr_06a_54dd                               ; $54cb: $30 $10

	db $10                                           ; $54cd: $10
	jr @+$0a                                         ; $54ce: $18 $08

	inc c                                            ; $54d0: $0c
	rra                                              ; $54d1: $1f
	nop                                              ; $54d2: $00
	sbc $88                                          ; $54d3: $de $88
	sub h                                            ; $54d5: $94
	call z, $0088                                    ; $54d6: $cc $88 $00
	sbc c                                            ; $54d9: $99
	sbc c                                            ; $54da: $99
	ld [hl], a                                       ; $54db: $77
	adc b                                            ; $54dc: $88

jr_06a_54dd:
	ld de, $9999                                     ; $54dd: $11 $99 $99
	ld h, [hl]                                       ; $54e0: $66
	ld l, a                                          ; $54e1: $6f
	ei                                               ; $54e2: $fb
	ld a, e                                          ; $54e3: $7b
	pop af                                           ; $54e4: $f1
	ld [hl], e                                       ; $54e5: $73
	ei                                               ; $54e6: $fb
	ld a, a                                          ; $54e7: $7f
	db $ec                                           ; $54e8: $ec
	rst $38                                          ; $54e9: $ff
	ld a, e                                          ; $54ea: $7b

jr_06a_54eb:
	db $fc                                           ; $54eb: $fc
	ld a, a                                          ; $54ec: $7f
	db $fd                                           ; $54ed: $fd
	sbc [hl]                                         ; $54ee: $9e
	call z, $01d3                                    ; $54ef: $cc $d3 $01
	add b                                            ; $54f2: $80
	ld a, [bc]                                       ; $54f3: $0a
	rst $38                                          ; $54f4: $ff
	ld a, [de]                                       ; $54f5: $1a
	rst $38                                          ; $54f6: $ff
	sub d                                            ; $54f7: $92
	rst $38                                          ; $54f8: $ff
	sub a                                            ; $54f9: $97
	rst $38                                          ; $54fa: $ff
	sub l                                            ; $54fb: $95
	rst $38                                          ; $54fc: $ff
	or a                                             ; $54fd: $b7
	db $fc                                           ; $54fe: $fc
	daa                                              ; $54ff: $27
	db $fc                                           ; $5500: $fc
	ld l, $fd                                        ; $5501: $2e $fd
	ld e, a                                          ; $5503: $5f
	db $f4                                           ; $5504: $f4
	ld a, a                                          ; $5505: $7f
	ldh a, [c]                                       ; $5506: $f2
	rst SubAFromDE                                          ; $5507: $df
	ldh a, [c]                                       ; $5508: $f2
	ld e, a                                          ; $5509: $5f
	ld [hl], d                                       ; $550a: $72
	ld c, [hl]                                       ; $550b: $4e
	ld a, c                                          ; $550c: $79
	ld b, l                                          ; $550d: $45
	ld a, a                                          ; $550e: $7f
	ld b, l                                          ; $550f: $45
	ld a, a                                          ; $5510: $7f
	adc $80                                          ; $5511: $ce $80
	ld sp, hl                                        ; $5513: $f9
	sbc e                                            ; $5514: $9b
	di                                               ; $5515: $f3
	sub e                                            ; $5516: $93
	db $f4                                           ; $5517: $f4
	jp nc, $99b5                                     ; $5518: $d2 $b5 $99

	or e                                             ; $551b: $b3
	ld e, l                                          ; $551c: $5d
	jr c, jr_06a_554b                                ; $551d: $38 $2c

	ld e, [hl]                                       ; $551f: $5e
	inc bc                                           ; $5520: $03
	rst SubAFromDE                                          ; $5521: $df
	ld [$48b7], sp                                   ; $5522: $08 $b7 $48
	daa                                              ; $5525: $27
	inc b                                            ; $5526: $04
	ld l, e                                          ; $5527: $6b
	add l                                            ; $5528: $85
	ld d, e                                          ; $5529: $53
	ld hl, $4287                                     ; $552a: $21 $87 $42
	xor a                                            ; $552d: $af
	ld d, $ef                                        ; $552e: $16 $ef
	ld b, a                                          ; $5530: $47
	rst $38                                          ; $5531: $ff
	adc b                                            ; $5532: $88
	ld c, a                                          ; $5533: $4f
	rst $38                                          ; $5534: $ff
	cp $88                                           ; $5535: $fe $88
	cp $88                                           ; $5537: $fe $88
	ldh a, [$8e]                                     ; $5539: $f0 $8e
	sbc h                                            ; $553b: $9c
	cp $ef                                           ; $553c: $fe $ef
	ldh a, [$f3]                                     ; $553e: $f0 $f3
	inc c                                            ; $5540: $0c
	cp a                                             ; $5541: $bf
	ld a, [hl]                                       ; $5542: $7e
	ei                                               ; $5543: $fb
	ei                                               ; $5544: $fb
	xor $bc                                          ; $5545: $ee $bc
	ld d, $1c                                        ; $5547: $16 $1c
	ld a, a                                          ; $5549: $7f
	cp h                                             ; $554a: $bc

jr_06a_554b:
	inc e                                            ; $554b: $1c
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	add b                                            ; $554e: $80
	add b                                            ; $554f: $80
	adc l                                            ; $5550: $8d
	add b                                            ; $5551: $80
	ret nz                                           ; $5552: $c0

	add b                                            ; $5553: $80
	ldh [$c0], a                                     ; $5554: $e0 $c0
	or b                                             ; $5556: $b0
	ldh [$78], a                                     ; $5557: $e0 $78
	or b                                             ; $5559: $b0
	xor h                                            ; $555a: $ac
	ld a, b                                          ; $555b: $78
	adc $fc                                          ; $555c: $ce $fc
	ld c, e                                          ; $555e: $4b
	cp $5b                                           ; $555f: $fe $5b
	rst $38                                          ; $5561: $ff
	sub c                                            ; $5562: $91
	ld a, e                                          ; $5563: $7b
	cp $8a                                           ; $5564: $fe $8a
	reti                                             ; $5566: $d9


	rst $38                                          ; $5567: $ff
	ld c, c                                          ; $5568: $49
	rst $38                                          ; $5569: $ff
	ld c, l                                          ; $556a: $4d
	rst $38                                          ; $556b: $ff
	daa                                              ; $556c: $27
	rst $38                                          ; $556d: $ff
	rra                                              ; $556e: $1f
	rst $38                                          ; $556f: $ff
	rst $38                                          ; $5570: $ff
	ldh a, [c]                                       ; $5571: $f2
	inc bc                                           ; $5572: $03
	ld bc, $0203                                     ; $5573: $01 $03 $02
	rlca                                             ; $5576: $07
	inc bc                                           ; $5577: $03
	inc b                                            ; $5578: $04
	inc bc                                           ; $5579: $03
	rlca                                             ; $557a: $07
	cp [hl]                                          ; $557b: $be
	add a                                            ; $557c: $87
	add a                                            ; $557d: $87
	add e                                            ; $557e: $83
	sbc [hl]                                         ; $557f: $9e
	ld bc, $9efd                                     ; $5580: $01 $fd $9e
	ld de, $18be                                     ; $5583: $11 $be $18
	inc a                                            ; $5586: $3c
	ld e, h                                          ; $5587: $5c
	add l                                            ; $5588: $85
	jr nz, jr_06a_55e3                               ; $5589: $20 $58

Jump_06a_558b:
	ld h, b                                          ; $558b: $60
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	db $e4                                           ; $558e: $e4
	ccf                                              ; $558f: $3f
	or $1f                                           ; $5590: $f6 $1f
	ccf                                              ; $5592: $3f
	rst GetHLinHL                                          ; $5593: $cf
	push hl                                          ; $5594: $e5
	rst $38                                          ; $5595: $ff
	rst $38                                          ; $5596: $ff
	ld c, $8f                                        ; $5597: $0e $8f
	ld [hl], b                                       ; $5599: $70
	ei                                               ; $559a: $fb
	db $fc                                           ; $559b: $fc
	rst FarCall                                          ; $559c: $f7
	or a                                             ; $559d: $b7
	cpl                                              ; $559e: $2f
	ld a, $37                                        ; $559f: $3e $37
	inc e                                            ; $55a1: $1c
	rst $38                                          ; $55a2: $ff
	cp d                                             ; $55a3: $ba
	ld a, c                                          ; $55a4: $79
	inc bc                                           ; $55a5: $03
	rlca                                             ; $55a6: $07
	rrca                                             ; $55a7: $0f
	rrca                                             ; $55a8: $0f
	rra                                              ; $55a9: $1f
	rra                                              ; $55aa: $1f
	add b                                            ; $55ab: $80
	ld bc, $033f                                     ; $55ac: $01 $3f $03
	scf                                              ; $55af: $37
	rrca                                             ; $55b0: $0f
	ld a, h                                          ; $55b1: $7c
	rra                                              ; $55b2: $1f
	cp d                                             ; $55b3: $ba
	ld a, a                                          ; $55b4: $7f
	ld a, [$faff]                                    ; $55b5: $fa $ff $fa
	rst $38                                          ; $55b8: $ff
	ld sp, hl                                        ; $55b9: $f9
	rst AddAOntoHL                                          ; $55ba: $ef
	ld sp, hl                                        ; $55bb: $f9
	rrca                                             ; $55bc: $0f
	ld sp, hl                                        ; $55bd: $f9
	rrca                                             ; $55be: $0f
	ei                                               ; $55bf: $fb
	rrca                                             ; $55c0: $0f
	ld a, [hl]                                       ; $55c1: $7e
	rrca                                             ; $55c2: $0f
	ld a, $0f                                        ; $55c3: $3e $0f
	ccf                                              ; $55c5: $3f
	rlca                                             ; $55c6: $07
	ccf                                              ; $55c7: $3f
	rlca                                             ; $55c8: $07
	ld d, d                                          ; $55c9: $52
	rst $38                                          ; $55ca: $ff
	adc e                                            ; $55cb: $8b
	ld c, e                                          ; $55cc: $4b
	rst $38                                          ; $55cd: $ff
	dec h                                            ; $55ce: $25
	rst $38                                          ; $55cf: $ff
	or a                                             ; $55d0: $b7
	rst $38                                          ; $55d1: $ff
	db $db                                           ; $55d2: $db
	rst $38                                          ; $55d3: $ff
	db $ed                                           ; $55d4: $ed
	ld a, a                                          ; $55d5: $7f
	rst $38                                          ; $55d6: $ff
	rra                                              ; $55d7: $1f
	ld a, e                                          ; $55d8: $7b
	sbc a                                            ; $55d9: $9f
	db $fd                                           ; $55da: $fd
	rra                                              ; $55db: $1f
	call nc, $fc3f                                   ; $55dc: $d4 $3f $fc
	scf                                              ; $55df: $37
	ld a, e                                          ; $55e0: $7b
	dec d                                            ; $55e1: $15
	add b                                            ; $55e2: $80

jr_06a_55e3:
	cpl                                              ; $55e3: $2f
	db $fc                                           ; $55e4: $fc
	ld a, a                                          ; $55e5: $7f
	db $fc                                           ; $55e6: $fc
	ld b, a                                          ; $55e7: $47
	db $fc                                           ; $55e8: $fc
	rst $38                                          ; $55e9: $ff
	cp l                                             ; $55ea: $bd
	rst SubAFromDE                                          ; $55eb: $df
	ld [hl], l                                       ; $55ec: $75
	xor a                                            ; $55ed: $af
	ld e, c                                          ; $55ee: $59
	xor a                                            ; $55ef: $af
	jp hl                                            ; $55f0: $e9


	cp a                                             ; $55f1: $bf
	ei                                               ; $55f2: $fb
	sbc a                                            ; $55f3: $9f
	ld d, e                                          ; $55f4: $53
	rst $38                                          ; $55f5: $ff
	ld h, e                                          ; $55f6: $63
	rst $38                                          ; $55f7: $ff
	ld h, l                                          ; $55f8: $65
	rst $38                                          ; $55f9: $ff
	ld b, l                                          ; $55fa: $45
	rst $38                                          ; $55fb: $ff
	call $89ff                                       ; $55fc: $cd $ff $89
	rst $38                                          ; $55ff: $ff
	dec de                                           ; $5600: $1b
	rst $38                                          ; $5601: $ff
	sbc b                                            ; $5602: $98
	ld [hl-], a                                      ; $5603: $32
	rst $38                                          ; $5604: $ff
	ld h, [hl]                                       ; $5605: $66
	rst $38                                          ; $5606: $ff
	adc h                                            ; $5607: $8c
	rst $38                                          ; $5608: $ff
	jr jr_06a_5666                                   ; $5609: $18 $5b

	jr nz, jr_06a_568c                               ; $560b: $20 $7f

	adc d                                            ; $560d: $8a
	sbc b                                            ; $560e: $98
	ei                                               ; $560f: $fb
	inc e                                            ; $5610: $1c
	rst $38                                          ; $5611: $ff
	rst $38                                          ; $5612: $ff
	ld h, [hl]                                       ; $5613: $66
	cp [hl]                                          ; $5614: $be
	ld a, [de]                                       ; $5615: $1a
	ld d, e                                          ; $5616: $53
	jr nz, jr_06a_561c                               ; $5617: $20 $03

	ld b, b                                          ; $5619: $40
	ld l, e                                          ; $561a: $6b
	ld b, b                                          ; $561b: $40

jr_06a_561c:
	sub e                                            ; $561c: $93
	cp $0f                                           ; $561d: $fe $0f
	rst $38                                          ; $561f: $ff
	nop                                              ; $5620: $00
	or a                                             ; $5621: $b7
	ld a, b                                          ; $5622: $78
	rst $38                                          ; $5623: $ff
	rst $38                                          ; $5624: $ff
	ld h, l                                          ; $5625: $65
	ld a, $3f                                        ; $5626: $3e $3f
	jr jr_06a_5681                                   ; $5628: $18 $57

	ld b, b                                          ; $562a: $40
	ld c, [hl]                                       ; $562b: $4e
	add b                                            ; $562c: $80
	ld a, a                                          ; $562d: $7f
	ld l, e                                          ; $562e: $6b
	sbc l                                            ; $562f: $9d
	ld e, [hl]                                       ; $5630: $5e
	push af                                          ; $5631: $f5
	ld c, [hl]                                       ; $5632: $4e
	add b                                            ; $5633: $80
	ld [hl], a                                       ; $5634: $77
	add b                                            ; $5635: $80
	sbc b                                            ; $5636: $98
	cp $80                                           ; $5637: $fe $80
	sbc h                                            ; $5639: $9c
	cp $e3                                           ; $563a: $fe $e3
	db $fc                                           ; $563c: $fc
	rst $38                                          ; $563d: $ff
	cp a                                             ; $563e: $bf
	rst $38                                          ; $563f: $ff
	ei                                               ; $5640: $fb
	sbc e                                            ; $5641: $9b
	dec c                                            ; $5642: $0d
	db $e4                                           ; $5643: $e4
	ld a, [$173e]                                    ; $5644: $fa $3e $17
	add b                                            ; $5647: $80
	sbc l                                            ; $5648: $9d
	nop                                              ; $5649: $00
	ld bc, $7e7b                                     ; $564a: $01 $7b $7e
	ld b, a                                          ; $564d: $47
	add b                                            ; $564e: $80
	sbc c                                            ; $564f: $99
	ld a, a                                          ; $5650: $7f
	adc a                                            ; $5651: $8f
	push hl                                          ; $5652: $e5
	rst $38                                          ; $5653: $ff
	sbc $3f                                          ; $5654: $de $3f
	ld [hl], a                                       ; $5656: $77
	ret nz                                           ; $5657: $c0

	sbc c                                            ; $5658: $99
	db $db                                           ; $5659: $db
	inc a                                            ; $565a: $3c
	rst SubAFromHL                                          ; $565b: $d7
	rst AddAOntoHL                                          ; $565c: $ef
	dec sp                                           ; $565d: $3b
	ld a, h                                          ; $565e: $7c
	ld d, a                                          ; $565f: $57
	add b                                            ; $5660: $80
	ld c, [hl]                                       ; $5661: $4e
	ldh [$9b], a                                     ; $5662: $e0 $9b
	ei                                               ; $5664: $fb
	rra                                              ; $5665: $1f

jr_06a_5666:
	ld a, l                                          ; $5666: $7d
	sbc a                                            ; $5667: $9f
	ld c, [hl]                                       ; $5668: $4e
	ldh [$03], a                                     ; $5669: $e0 $03
	ld h, b                                          ; $566b: $60
	ld [hl], e                                       ; $566c: $73
	ld h, b                                          ; $566d: $60
	sbc e                                            ; $566e: $9b
	add d                                            ; $566f: $82
	db $fc                                           ; $5670: $fc
	db $fd                                           ; $5671: $fd
	cp $77                                           ; $5672: $fe $77
	and b                                            ; $5674: $a0
	ld a, a                                          ; $5675: $7f
	cp $9b                                           ; $5676: $fe $9b
	pop bc                                           ; $5678: $c1

Jump_06a_5679:
	rst $38                                          ; $5679: $ff
	ld a, $7c                                        ; $567a: $3e $7c
	ld b, a                                          ; $567c: $47
	ld h, b                                          ; $567d: $60
	sbc h                                            ; $567e: $9c
	ld b, $03                                        ; $567f: $06 $03

jr_06a_5681:
	dec b                                            ; $5681: $05
	inc bc                                           ; $5682: $03
	ld h, b                                          ; $5683: $60
	sbc l                                            ; $5684: $9d
	sbc [hl]                                         ; $5685: $9e
	ld a, a                                          ; $5686: $7f
	ld l, a                                          ; $5687: $6f
	ret nz                                           ; $5688: $c0

	sbc h                                            ; $5689: $9c
	add [hl]                                         ; $568a: $86
	rst $38                                          ; $568b: $ff

jr_06a_568c:
	ld a, e                                          ; $568c: $7b
	inc de                                           ; $568d: $13
	ld h, b                                          ; $568e: $60
	ld b, [hl]                                       ; $568f: $46
	ld b, b                                          ; $5690: $40
	sbc d                                            ; $5691: $9a
	ld [$7858], sp                                   ; $5692: $08 $58 $78
	jr nc, jr_06a_5697                               ; $5695: $30 $00

jr_06a_5697:
	cp l                                             ; $5697: $bd
	jr nc, jr_06a_569a                               ; $5698: $30 $00

jr_06a_569a:
	nop                                              ; $569a: $00
	inc bc                                           ; $569b: $03
	sub a                                            ; $569c: $97
	ld bc, $87cf                                     ; $569d: $01 $cf $87
	rst GetHLinHL                                          ; $56a0: $cf
	rst $38                                          ; $56a1: $ff
	rst $38                                          ; $56a2: $ff
	ldh a, [$c7]                                     ; $56a3: $f0 $c7
	cp e                                             ; $56a5: $bb
	add c                                            ; $56a6: $81
	add b                                            ; $56a7: $80
	add b                                            ; $56a8: $80
	add b                                            ; $56a9: $80
	add b                                            ; $56aa: $80
	jr @+$7d                                         ; $56ab: $18 $7b

	ldh [$df], a                                     ; $56ad: $e0 $df
	jr nz, jr_06a_56d0                               ; $56af: $20 $1f

	ldh [$99], a                                     ; $56b1: $e0 $99
	ret c                                            ; $56b3: $d8

	ld e, b                                          ; $56b4: $58
	ld a, b                                          ; $56b5: $78
	ld [hl], b                                       ; $56b6: $70
	jr c, jr_06a_56e9                                ; $56b7: $38 $30

	inc de                                           ; $56b9: $13
	ldh [$df], a                                     ; $56ba: $e0 $df
	ld a, b                                          ; $56bc: $78
	sbc [hl]                                         ; $56bd: $9e
	ld [hl], b                                       ; $56be: $70
	ld a, e                                          ; $56bf: $7b
	cp l                                             ; $56c0: $bd
	dec hl                                           ; $56c1: $2b
	ldh [$e1], a                                     ; $56c2: $e0 $e1
	ld bc, $0a80                                     ; $56c4: $01 $80 $0a
	rst $38                                          ; $56c7: $ff
	ld a, [de]                                       ; $56c8: $1a
	rst $38                                          ; $56c9: $ff
	sub d                                            ; $56ca: $92
	rst $38                                          ; $56cb: $ff
	sub a                                            ; $56cc: $97
	rst $38                                          ; $56cd: $ff
	sub l                                            ; $56ce: $95
	rst $38                                          ; $56cf: $ff

jr_06a_56d0:
	or a                                             ; $56d0: $b7
	db $fc                                           ; $56d1: $fc
	daa                                              ; $56d2: $27
	db $fc                                           ; $56d3: $fc
	ld l, $fd                                        ; $56d4: $2e $fd
	ld e, a                                          ; $56d6: $5f
	db $f4                                           ; $56d7: $f4
	ld a, a                                          ; $56d8: $7f
	ldh a, [c]                                       ; $56d9: $f2

jr_06a_56da:
	rst SubAFromDE                                          ; $56da: $df
	ldh a, [c]                                       ; $56db: $f2
	ld e, a                                          ; $56dc: $5f
	ld [hl], d                                       ; $56dd: $72
	ld c, [hl]                                       ; $56de: $4e
	ld a, c                                          ; $56df: $79
	ld b, l                                          ; $56e0: $45
	ld a, a                                          ; $56e1: $7f
	ld b, l                                          ; $56e2: $45
	ld a, a                                          ; $56e3: $7f
	adc $80                                          ; $56e4: $ce $80
	ld sp, hl                                        ; $56e6: $f9
	sbc e                                            ; $56e7: $9b
	di                                               ; $56e8: $f3

jr_06a_56e9:
	sub e                                            ; $56e9: $93
	db $f4                                           ; $56ea: $f4
	jp nc, $99b5                                     ; $56eb: $d2 $b5 $99

	or e                                             ; $56ee: $b3
	ld e, l                                          ; $56ef: $5d
	jr c, jr_06a_571e                                ; $56f0: $38 $2c

	ld e, [hl]                                       ; $56f2: $5e
	inc bc                                           ; $56f3: $03
	rst SubAFromDE                                          ; $56f4: $df
	ld [$48b7], sp                                   ; $56f5: $08 $b7 $48
	daa                                              ; $56f8: $27
	inc b                                            ; $56f9: $04
	ld l, e                                          ; $56fa: $6b
	add l                                            ; $56fb: $85
	ld d, e                                          ; $56fc: $53
	ld hl, $4287                                     ; $56fd: $21 $87 $42
	xor a                                            ; $5700: $af
	ld d, $ef                                        ; $5701: $16 $ef
	ld b, a                                          ; $5703: $47
	rst $38                                          ; $5704: $ff
	sub d                                            ; $5705: $92
	ld c, a                                          ; $5706: $4f
	rst $38                                          ; $5707: $ff
	cp $88                                           ; $5708: $fe $88
	cp $88                                           ; $570a: $fe $88
	adc [hl]                                         ; $570c: $8e
	ldh a, [$f8]                                     ; $570d: $f0 $f8
	cp $fe                                           ; $570f: $fe $fe
	rlca                                             ; $5711: $07
	rst $38                                          ; $5712: $ff
	cp a                                             ; $5713: $bf
	rst $38                                          ; $5714: $ff
	ld a, a                                          ; $5715: $7f
	sbc c                                            ; $5716: $99
	add b                                            ; $5717: $80
	jp $beff                                         ; $5718: $c3 $ff $be


	inc a                                            ; $571b: $3c
	jr jr_06a_56da                                   ; $571c: $18 $bc

jr_06a_571e:
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	add b                                            ; $5721: $80
	add b                                            ; $5722: $80
	adc l                                            ; $5723: $8d
	add b                                            ; $5724: $80
	ret nz                                           ; $5725: $c0

	add b                                            ; $5726: $80
	ldh [$c0], a                                     ; $5727: $e0 $c0
	or b                                             ; $5729: $b0
	ldh [$78], a                                     ; $572a: $e0 $78
	or b                                             ; $572c: $b0
	xor h                                            ; $572d: $ac
	ld a, b                                          ; $572e: $78
	adc $fc                                          ; $572f: $ce $fc
	ld c, e                                          ; $5731: $4b
	cp $5b                                           ; $5732: $fe $5b
	rst $38                                          ; $5734: $ff
	sub c                                            ; $5735: $91
	ld a, e                                          ; $5736: $7b
	cp $88                                           ; $5737: $fe $88
	reti                                             ; $5739: $d9


	rst $38                                          ; $573a: $ff
	ld c, c                                          ; $573b: $49
	rst $38                                          ; $573c: $ff
	ld c, l                                          ; $573d: $4d
	rst $38                                          ; $573e: $ff
	daa                                              ; $573f: $27
	rst $38                                          ; $5740: $ff
	rra                                              ; $5741: $1f
	rst $38                                          ; $5742: $ff
	rst $38                                          ; $5743: $ff
	ldh a, [c]                                       ; $5744: $f2
	inc bc                                           ; $5745: $03
	ld bc, $0203                                     ; $5746: $01 $03 $02
	rlca                                             ; $5749: $07
	nop                                              ; $574a: $00
	ld b, $01                                        ; $574b: $06 $01
	rlca                                             ; $574d: $07
	inc bc                                           ; $574e: $03
	add a                                            ; $574f: $87
	cp [hl]                                          ; $5750: $be
	add a                                            ; $5751: $87
	add e                                            ; $5752: $83
	ld bc, $019d                                     ; $5753: $01 $9d $01
	nop                                              ; $5756: $00
	cp l                                             ; $5757: $bd
	db $10                                           ; $5758: $10
	jr @+$3e                                         ; $5759: $18 $3c

	ld e, h                                          ; $575b: $5c
	sub b                                            ; $575c: $90
	jr nz, jr_06a_57b7                               ; $575d: $20 $58

	ld h, b                                          ; $575f: $60
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	db $e4                                           ; $5762: $e4
	ccf                                              ; $5763: $3f
	or $1f                                           ; $5764: $f6 $1f
	adc a                                            ; $5766: $8f
	ld a, a                                          ; $5767: $7f
	ld a, l                                          ; $5768: $7d
	rst $38                                          ; $5769: $ff
	rst $38                                          ; $576a: $ff
	add b                                            ; $576b: $80
	ld [hl], a                                       ; $576c: $77
	and b                                            ; $576d: $a0
	sbc b                                            ; $576e: $98
	db $fc                                           ; $576f: $fc
	inc bc                                           ; $5770: $03
	add a                                            ; $5771: $87
	cp $7f                                           ; $5772: $fe $7f
	ld a, b                                          ; $5774: $78
	rrca                                             ; $5775: $0f
	cp d                                             ; $5776: $ba
	ld bc, $0703                                     ; $5777: $01 $03 $07
	rrca                                             ; $577a: $0f
	rrca                                             ; $577b: $0f
	rra                                              ; $577c: $1f
	rra                                              ; $577d: $1f
	add b                                            ; $577e: $80
	ld bc, $033f                                     ; $577f: $01 $3f $03
	scf                                              ; $5782: $37
	rrca                                             ; $5783: $0f
	ld a, h                                          ; $5784: $7c
	rra                                              ; $5785: $1f
	cp d                                             ; $5786: $ba
	ld a, a                                          ; $5787: $7f
	ld a, [$faff]                                    ; $5788: $fa $ff $fa
	rst $38                                          ; $578b: $ff
	ld sp, hl                                        ; $578c: $f9
	rst AddAOntoHL                                          ; $578d: $ef
	ld sp, hl                                        ; $578e: $f9
	rrca                                             ; $578f: $0f
	ld sp, hl                                        ; $5790: $f9
	rrca                                             ; $5791: $0f
	ei                                               ; $5792: $fb
	rrca                                             ; $5793: $0f
	ld a, [hl]                                       ; $5794: $7e
	rrca                                             ; $5795: $0f
	ld a, $0f                                        ; $5796: $3e $0f

jr_06a_5798:
	ccf                                              ; $5798: $3f
	rlca                                             ; $5799: $07

jr_06a_579a:
	ccf                                              ; $579a: $3f
	rlca                                             ; $579b: $07
	ld d, d                                          ; $579c: $52
	rst $38                                          ; $579d: $ff
	adc e                                            ; $579e: $8b
	ld c, e                                          ; $579f: $4b
	rst $38                                          ; $57a0: $ff
	dec h                                            ; $57a1: $25
	rst $38                                          ; $57a2: $ff

jr_06a_57a3:
	or a                                             ; $57a3: $b7
	rst $38                                          ; $57a4: $ff
	db $db                                           ; $57a5: $db
	rst $38                                          ; $57a6: $ff
	db $ed                                           ; $57a7: $ed
	ld a, a                                          ; $57a8: $7f
	rst $38                                          ; $57a9: $ff
	rra                                              ; $57aa: $1f
	ei                                               ; $57ab: $fb
	rra                                              ; $57ac: $1f
	db $fd                                           ; $57ad: $fd
	rra                                              ; $57ae: $1f
	call nc, $fc3f                                   ; $57af: $d4 $3f $fc
	scf                                              ; $57b2: $37
	ld a, e                                          ; $57b3: $7b
	dec d                                            ; $57b4: $15
	add b                                            ; $57b5: $80
	cpl                                              ; $57b6: $2f

jr_06a_57b7:
	db $fc                                           ; $57b7: $fc
	ld a, a                                          ; $57b8: $7f
	db $fc                                           ; $57b9: $fc
	ld b, a                                          ; $57ba: $47
	db $fc                                           ; $57bb: $fc
	rst $38                                          ; $57bc: $ff
	cp l                                             ; $57bd: $bd
	rst SubAFromDE                                          ; $57be: $df
	ld [hl], l                                       ; $57bf: $75
	xor a                                            ; $57c0: $af
	ld e, c                                          ; $57c1: $59
	xor a                                            ; $57c2: $af
	jp hl                                            ; $57c3: $e9


	cp a                                             ; $57c4: $bf
	ei                                               ; $57c5: $fb
	sbc a                                            ; $57c6: $9f
	ld d, e                                          ; $57c7: $53
	rst $38                                          ; $57c8: $ff
	ld h, e                                          ; $57c9: $63
	rst $38                                          ; $57ca: $ff
	ld h, l                                          ; $57cb: $65
	rst $38                                          ; $57cc: $ff
	ld b, l                                          ; $57cd: $45
	rst $38                                          ; $57ce: $ff
	call $89ff                                       ; $57cf: $cd $ff $89
	rst $38                                          ; $57d2: $ff
	dec de                                           ; $57d3: $1b
	rst $38                                          ; $57d4: $ff
	sub a                                            ; $57d5: $97
	ld [hl-], a                                      ; $57d6: $32
	rst $38                                          ; $57d7: $ff
	ld h, [hl]                                       ; $57d8: $66
	rst $38                                          ; $57d9: $ff
	adc h                                            ; $57da: $8c
	rst $38                                          ; $57db: $ff
	jr @+$01                                         ; $57dc: $18 $ff

	ld h, d                                          ; $57de: $62
	ldh [$9e], a                                     ; $57df: $e0 $9e
	cp $2e                                           ; $57e1: $fe $2e
	ldh [rPCM34], a                                  ; $57e3: $e0 $77
	nop                                              ; $57e5: $00
	sbc c                                            ; $57e6: $99
	add $f8                                          ; $57e7: $c6 $f8
	cp h                                             ; $57e9: $bc
	cp $fa                                           ; $57ea: $fe $fa
	add a                                            ; $57ec: $87
	ld [hl], a                                       ; $57ed: $77
	ld h, b                                          ; $57ee: $60
	sbc c                                            ; $57ef: $99
	ld e, a                                          ; $57f0: $5f
	cp c                                             ; $57f1: $b9
	xor $f6                                          ; $57f2: $ee $f6
	sbc [hl]                                         ; $57f4: $9e
	inc e                                            ; $57f5: $1c
	ld d, a                                          ; $57f6: $57
	nop                                              ; $57f7: $00
	ld l, a                                          ; $57f8: $6f
	jr nz, jr_06a_5798                               ; $57f9: $20 $9d

	inc b                                            ; $57fb: $04
	inc bc                                           ; $57fc: $03
	rla                                              ; $57fd: $17
	jr nz, jr_06a_579a                               ; $57fe: $20 $9a

	sbc a                                            ; $5800: $9f
	ld a, a                                          ; $5801: $7f
	push hl                                          ; $5802: $e5
	rst $38                                          ; $5803: $ff
	ld a, a                                          ; $5804: $7f
	ld l, a                                          ; $5805: $6f
	jr nz, jr_06a_57a3                               ; $5806: $20 $9b

	dec sp                                           ; $5808: $3b
	adc $ff                                          ; $5809: $ce $ff
	ccf                                              ; $580b: $3f
	ld d, e                                          ; $580c: $53
	jr nz, jr_06a_5812                               ; $580d: $20 $03

	add b                                            ; $580f: $80
	ld a, e                                          ; $5810: $7b
	add b                                            ; $5811: $80

jr_06a_5812:
	sub b                                            ; $5812: $90
	jp nz, $bcfc                                     ; $5813: $c2 $fc $bc

	cp $fe                                           ; $5816: $fe $fe
	add e                                            ; $5818: $83
	rst $38                                          ; $5819: $ff
	nop                                              ; $581a: $00
	db $db                                           ; $581b: $db
	inc a                                            ; $581c: $3c
	rst AddAOntoHL                                          ; $581d: $ef
	rst AddAOntoHL                                          ; $581e: $ef
	cp d                                             ; $581f: $ba
	ld a, h                                          ; $5820: $7c
	sub [hl]                                         ; $5821: $96
	rla                                              ; $5822: $17
	add b                                            ; $5823: $80
	ld a, e                                          ; $5824: $7b
	add d                                            ; $5825: $82
	ccf                                              ; $5826: $3f
	add b                                            ; $5827: $80
	sbc e                                            ; $5828: $9b
	ccf                                              ; $5829: $3f
	rst $38                                          ; $582a: $ff
	push hl                                          ; $582b: $e5
	rst SubAFromDE                                          ; $582c: $df
	ld [hl], a                                       ; $582d: $77
	add d                                            ; $582e: $82
	sub a                                            ; $582f: $97
	rst FarCall                                          ; $5830: $f7
	ld a, b                                          ; $5831: $78
	rst GetHLinHL                                          ; $5832: $cf
	rst SubAFromDE                                          ; $5833: $df
	ld a, l                                          ; $5834: $7d
	cp $6f                                           ; $5835: $fe $6f
	jr c, jr_06a_5890                                ; $5837: $38 $57

	add b                                            ; $5839: $80
	ld c, [hl]                                       ; $583a: $4e
	ret nz                                           ; $583b: $c0

	sbc l                                            ; $583c: $9d
	ld a, e                                          ; $583d: $7b
	sbc a                                            ; $583e: $9f
	ld b, [hl]                                       ; $583f: $46
	ret nz                                           ; $5840: $c0

	inc bc                                           ; $5841: $03
	ld h, b                                          ; $5842: $60
	adc h                                            ; $5843: $8c
	adc b                                            ; $5844: $88
	sbc [hl]                                         ; $5845: $9e
	add sp, -$1e                                     ; $5846: $e8 $e2
	db $fc                                           ; $5848: $fc
	cp h                                             ; $5849: $bc
	adc $fe                                          ; $584a: $ce $fe
	add e                                            ; $584c: $83
	db $fd                                           ; $584d: $fd
	ld e, $3e                                        ; $584e: $1e $3e
	rst $38                                          ; $5850: $ff
	push hl                                          ; $5851: $e5
	rst AddAOntoHL                                          ; $5852: $ef
	db $fd                                           ; $5853: $fd
	inc e                                            ; $5854: $1c
	sub h                                            ; $5855: $94
	inc e                                            ; $5856: $1c
	ld sp, hl                                        ; $5857: $f9
	ld b, a                                          ; $5858: $47
	ld h, b                                          ; $5859: $60
	sbc l                                            ; $585a: $9d
	add [hl]                                         ; $585b: $86
	ld bc, $6027                                     ; $585c: $01 $27 $60
	sbc l                                            ; $585f: $9d
	push af                                          ; $5860: $f5
	rst GetHLinHL                                          ; $5861: $cf
	ld a, c                                          ; $5862: $79
	and h                                            ; $5863: $a4
	sub a                                            ; $5864: $97
	ld hl, sp-$01                                    ; $5865: $f8 $ff
	cp $cb                                           ; $5867: $fe $cb
	ld e, a                                          ; $5869: $5f
	ld a, a                                          ; $586a: $7f
	ld a, b                                          ; $586b: $78
	dec hl                                           ; $586c: $2b
	inc bc                                           ; $586d: $03
	ld h, b                                          ; $586e: $60
	ld d, a                                          ; $586f: $57
	ld h, b                                          ; $5870: $60
	sbc d                                            ; $5871: $9a
	ld [$785c], sp                                   ; $5872: $08 $5c $78
	jr nc, jr_06a_5877                               ; $5875: $30 $00

jr_06a_5877:
	cp l                                             ; $5877: $bd
	jr nc, jr_06a_587a                               ; $5878: $30 $00

jr_06a_587a:
	nop                                              ; $587a: $00
	inc bc                                           ; $587b: $03
	sub a                                            ; $587c: $97
	ld bc, $87cf                                     ; $587d: $01 $cf $87
	rst GetHLinHL                                          ; $5880: $cf
	rst $38                                          ; $5881: $ff
	rst $38                                          ; $5882: $ff
	ldh a, [$c7]                                     ; $5883: $f0 $c7
	cp e                                             ; $5885: $bb
	add c                                            ; $5886: $81
	add b                                            ; $5887: $80
	add b                                            ; $5888: $80
	add b                                            ; $5889: $80
	add b                                            ; $588a: $80
	ld e, b                                          ; $588b: $58
	sbc h                                            ; $588c: $9c
	call c, Call_06a_7038                            ; $588d: $dc $38 $70

jr_06a_5890:
	rrca                                             ; $5890: $0f
	ldh [$9b], a                                     ; $5891: $e0 $9b
	ld [hl], b                                       ; $5893: $70
	ld a, b                                          ; $5894: $78
	ld [$1f30], sp                                   ; $5895: $08 $30 $1f
	ldh [$97], a                                     ; $5898: $e0 $97
	ld c, b                                          ; $589a: $48
	call c, $78fc                                    ; $589b: $dc $fc $78
	jr c, jr_06a_5910                                ; $589e: $38 $70

	db $10                                           ; $58a0: $10
	jr nz, jr_06a_58ca                               ; $58a1: $20 $27

	ldh [$c0], a                                     ; $58a3: $e0 $c0
	ld bc, $0a80                                     ; $58a5: $01 $80 $0a
	rst $38                                          ; $58a8: $ff
	ld a, [de]                                       ; $58a9: $1a
	rst $38                                          ; $58aa: $ff
	sub d                                            ; $58ab: $92
	rst $38                                          ; $58ac: $ff
	sub a                                            ; $58ad: $97
	rst $38                                          ; $58ae: $ff
	sub l                                            ; $58af: $95
	cp $b7                                           ; $58b0: $fe $b7
	db $fc                                           ; $58b2: $fc
	daa                                              ; $58b3: $27
	db $fc                                           ; $58b4: $fc
	ld l, $fd                                        ; $58b5: $2e $fd
	ld e, a                                          ; $58b7: $5f
	db $f4                                           ; $58b8: $f4
	ld a, a                                          ; $58b9: $7f
	ldh a, [c]                                       ; $58ba: $f2
	rst SubAFromDE                                          ; $58bb: $df
	ldh a, [c]                                       ; $58bc: $f2
	ld e, a                                          ; $58bd: $5f
	ld [hl], d                                       ; $58be: $72
	ld c, [hl]                                       ; $58bf: $4e
	ld a, c                                          ; $58c0: $79
	ld b, l                                          ; $58c1: $45
	ld a, a                                          ; $58c2: $7f
	ld b, l                                          ; $58c3: $45
	ld a, a                                          ; $58c4: $7f
	adc $80                                          ; $58c5: $ce $80
	ld sp, hl                                        ; $58c7: $f9
	sbc e                                            ; $58c8: $9b
	di                                               ; $58c9: $f3

jr_06a_58ca:
	sub e                                            ; $58ca: $93
	db $f4                                           ; $58cb: $f4
	jp nc, $99b5                                     ; $58cc: $d2 $b5 $99

	or e                                             ; $58cf: $b3
	ld e, l                                          ; $58d0: $5d
	jr c, jr_06a_58ff                                ; $58d1: $38 $2c

	ld e, [hl]                                       ; $58d3: $5e
	inc bc                                           ; $58d4: $03
	rst SubAFromDE                                          ; $58d5: $df
	ld [$48b7], sp                                   ; $58d6: $08 $b7 $48
	daa                                              ; $58d9: $27
	inc b                                            ; $58da: $04
	ld l, e                                          ; $58db: $6b
	add l                                            ; $58dc: $85
	ld d, e                                          ; $58dd: $53
	ld hl, $4287                                     ; $58de: $21 $87 $42
	xor a                                            ; $58e1: $af
	ld d, $ef                                        ; $58e2: $16 $ef
	ld b, a                                          ; $58e4: $47
	rst $38                                          ; $58e5: $ff
	adc c                                            ; $58e6: $89
	ld c, a                                          ; $58e7: $4f
	rst $38                                          ; $58e8: $ff
	cp $88                                           ; $58e9: $fe $88
	cp $88                                           ; $58eb: $fe $88
	add $f8                                          ; $58ed: $c6 $f8
	cp h                                             ; $58ef: $bc
	cp $fe                                           ; $58f0: $fe $fe
	add e                                            ; $58f2: $83
	pop hl                                           ; $58f3: $e1
	ld e, $be                                        ; $58f4: $1e $be
	ld a, a                                          ; $58f6: $7f
	rst SubAFromBC                                          ; $58f7: $e7
	rst AddAOntoHL                                          ; $58f8: $ef
	ld sp, hl                                        ; $58f9: $f9
	sbc h                                            ; $58fa: $9c
	sub h                                            ; $58fb: $94
	inc e                                            ; $58fc: $1c
	ld sp, hl                                        ; $58fd: $f9
	adc d                                            ; $58fe: $8a

jr_06a_58ff:
	add b                                            ; $58ff: $80
	nop                                              ; $5900: $00
	add b                                            ; $5901: $80
	add b                                            ; $5902: $80
	ret nz                                           ; $5903: $c0

	add b                                            ; $5904: $80
	ldh [$c0], a                                     ; $5905: $e0 $c0
	or b                                             ; $5907: $b0
	ldh [$78], a                                     ; $5908: $e0 $78
	or b                                             ; $590a: $b0
	xor h                                            ; $590b: $ac
	ld a, b                                          ; $590c: $78
	adc $fc                                          ; $590d: $ce $fc
	ld c, e                                          ; $590f: $4b

jr_06a_5910:
	cp $5b                                           ; $5910: $fe $5b
	rst $38                                          ; $5912: $ff
	sub c                                            ; $5913: $91
	ld a, e                                          ; $5914: $7b
	cp $83                                           ; $5915: $fe $83
	reti                                             ; $5917: $d9


	rst $38                                          ; $5918: $ff
	ld c, c                                          ; $5919: $49
	rst $38                                          ; $591a: $ff
	ld c, l                                          ; $591b: $4d
	rst $38                                          ; $591c: $ff
	daa                                              ; $591d: $27
	rst $38                                          ; $591e: $ff
	rra                                              ; $591f: $1f
	rst $38                                          ; $5920: $ff
	rst $38                                          ; $5921: $ff
	ldh a, [c]                                       ; $5922: $f2
	inc bc                                           ; $5923: $03
	ld bc, $0203                                     ; $5924: $01 $03 $02
	rlca                                             ; $5927: $07
	nop                                              ; $5928: $00
	ld b, $01                                        ; $5929: $06 $01
	rlca                                             ; $592b: $07
	inc bc                                           ; $592c: $03
	add a                                            ; $592d: $87
	nop                                              ; $592e: $00
	add [hl]                                         ; $592f: $86
	ld bc, $0183                                     ; $5930: $01 $83 $01
	db $fd                                           ; $5933: $fd
	sbc [hl]                                         ; $5934: $9e
	db $10                                           ; $5935: $10
	cp [hl]                                          ; $5936: $be
	jr jr_06a_5975                                   ; $5937: $18 $3c

	ld e, h                                          ; $5939: $5c
	add l                                            ; $593a: $85
	jr nz, jr_06a_5995                               ; $593b: $20 $58

	ld h, b                                          ; $593d: $60
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	db $e4                                           ; $5940: $e4
	ccf                                              ; $5941: $3f
	or $1f                                           ; $5942: $f6 $1f
	rst GetHLinHL                                          ; $5944: $cf
	ccf                                              ; $5945: $3f
	push hl                                          ; $5946: $e5
	rst $38                                          ; $5947: $ff
	ld a, a                                          ; $5948: $7f
	add b                                            ; $5949: $80
	add a                                            ; $594a: $87
	ld a, b                                          ; $594b: $78
	db $fd                                           ; $594c: $fd
	cp $cf                                           ; $594d: $fe $cf
	ld e, a                                          ; $594f: $5f
	ld a, [hl]                                       ; $5950: $7e

jr_06a_5951:
	ld a, c                                          ; $5951: $79
	dec hl                                           ; $5952: $2b
	jr c, jr_06a_5964                                ; $5953: $38 $0f

	cp d                                             ; $5955: $ba
	ld bc, $0703                                     ; $5956: $01 $03 $07
	rrca                                             ; $5959: $0f
	rrca                                             ; $595a: $0f
	rra                                              ; $595b: $1f
	rra                                              ; $595c: $1f
	add b                                            ; $595d: $80
	ld bc, $033f                                     ; $595e: $01 $3f $03
	scf                                              ; $5961: $37
	rrca                                             ; $5962: $0f
	ld a, h                                          ; $5963: $7c

jr_06a_5964:
	rra                                              ; $5964: $1f
	cp d                                             ; $5965: $ba
	ld a, a                                          ; $5966: $7f
	ld a, [$faff]                                    ; $5967: $fa $ff $fa
	rst $38                                          ; $596a: $ff
	ld sp, hl                                        ; $596b: $f9
	rst AddAOntoHL                                          ; $596c: $ef
	ld sp, hl                                        ; $596d: $f9
	rrca                                             ; $596e: $0f
	ld sp, hl                                        ; $596f: $f9
	rrca                                             ; $5970: $0f
	ei                                               ; $5971: $fb
	rrca                                             ; $5972: $0f
	ld a, [hl]                                       ; $5973: $7e
	rrca                                             ; $5974: $0f

jr_06a_5975:
	ld a, $0f                                        ; $5975: $3e $0f
	ccf                                              ; $5977: $3f
	rlca                                             ; $5978: $07
	ccf                                              ; $5979: $3f
	rlca                                             ; $597a: $07
	ld d, d                                          ; $597b: $52
	rst $38                                          ; $597c: $ff
	adc e                                            ; $597d: $8b
	ld c, e                                          ; $597e: $4b
	rst $38                                          ; $597f: $ff
	dec h                                            ; $5980: $25
	rst $38                                          ; $5981: $ff
	or a                                             ; $5982: $b7
	rst $38                                          ; $5983: $ff
	db $db                                           ; $5984: $db
	rst $38                                          ; $5985: $ff
	db $ed                                           ; $5986: $ed
	ld a, a                                          ; $5987: $7f
	rst $38                                          ; $5988: $ff
	rra                                              ; $5989: $1f
	ld a, e                                          ; $598a: $7b
	sbc a                                            ; $598b: $9f
	db $fd                                           ; $598c: $fd
	rra                                              ; $598d: $1f
	call nc, $fc3f                                   ; $598e: $d4 $3f $fc
	scf                                              ; $5991: $37
	ld a, e                                          ; $5992: $7b
	dec d                                            ; $5993: $15
	add b                                            ; $5994: $80

jr_06a_5995:
	cpl                                              ; $5995: $2f
	db $fc                                           ; $5996: $fc
	ld a, a                                          ; $5997: $7f
	db $fc                                           ; $5998: $fc
	ld b, a                                          ; $5999: $47
	db $fc                                           ; $599a: $fc
	rst $38                                          ; $599b: $ff
	cp l                                             ; $599c: $bd
	rst SubAFromDE                                          ; $599d: $df
	ld [hl], l                                       ; $599e: $75
	xor a                                            ; $599f: $af
	ld e, c                                          ; $59a0: $59
	xor a                                            ; $59a1: $af
	jp hl                                            ; $59a2: $e9


	cp a                                             ; $59a3: $bf
	ei                                               ; $59a4: $fb
	sbc a                                            ; $59a5: $9f
	ld d, e                                          ; $59a6: $53
	rst $38                                          ; $59a7: $ff
	ld h, e                                          ; $59a8: $63
	rst $38                                          ; $59a9: $ff
	ld h, l                                          ; $59aa: $65
	rst $38                                          ; $59ab: $ff
	ld b, l                                          ; $59ac: $45
	rst $38                                          ; $59ad: $ff
	call $89ff                                       ; $59ae: $cd $ff $89
	rst $38                                          ; $59b1: $ff
	dec de                                           ; $59b2: $1b
	rst $38                                          ; $59b3: $ff
	sbc b                                            ; $59b4: $98
	ld [hl-], a                                      ; $59b5: $32
	rst $38                                          ; $59b6: $ff
	ld h, [hl]                                       ; $59b7: $66
	rst $38                                          ; $59b8: $ff
	adc h                                            ; $59b9: $8c
	rst $38                                          ; $59ba: $ff
	jr jr_06a_5a20                                   ; $59bb: $18 $63

	jr nz, jr_06a_5951                               ; $59bd: $20 $92

	ld a, [$ff87]                                    ; $59bf: $fa $87 $ff
	nop                                              ; $59c2: $00
	ei                                               ; $59c3: $fb
	inc e                                            ; $59c4: $1c
	rst AddAOntoHL                                          ; $59c5: $ef
	rst AddAOntoHL                                          ; $59c6: $ef
	ld a, [$967c]                                    ; $59c7: $fa $7c $96
	inc e                                            ; $59ca: $1c
	jr jr_06a_5a28                                   ; $59cb: $18 $5b

	jr nz, jr_06a_5a26                               ; $59cd: $20 $57

	ld b, b                                          ; $59cf: $40
	ld a, a                                          ; $59d0: $7f
	cp $27                                           ; $59d1: $fe $27
	ld b, b                                          ; $59d3: $40
	ld a, a                                          ; $59d4: $7f
	xor b                                            ; $59d5: $a8
	sub h                                            ; $59d6: $94
	rst $38                                          ; $59d7: $ff
	add b                                            ; $59d8: $80
	rst $38                                          ; $59d9: $ff
	nop                                              ; $59da: $00
	rst FarCall                                          ; $59db: $f7
	ld a, b                                          ; $59dc: $78
	rst GetHLinHL                                          ; $59dd: $cf
	rst SubAFromDE                                          ; $59de: $df
	ld a, l                                          ; $59df: $7d
	cp $6f                                           ; $59e0: $fe $6f
	ld d, e                                          ; $59e2: $53
	ld b, b                                          ; $59e3: $40
	ld d, a                                          ; $59e4: $57
	and b                                            ; $59e5: $a0
	ld a, a                                          ; $59e6: $7f
	cp $9a                                           ; $59e7: $fe $9a
	rst SubAFromDE                                          ; $59e9: $df
	add hl, sp                                       ; $59ea: $39
	add sp, -$0a                                     ; $59eb: $e8 $f6
	sbc [hl]                                         ; $59ed: $9e
	rla                                              ; $59ee: $17
	and b                                            ; $59ef: $a0
	ld a, a                                          ; $59f0: $7f
	add $7b                                          ; $59f1: $c6 $7b
	sbc [hl]                                         ; $59f3: $9e
	daa                                              ; $59f4: $27
	and b                                            ; $59f5: $a0
	ld a, a                                          ; $59f6: $7f
	cp $99                                           ; $59f7: $fe $99
	cp $39                                           ; $59f9: $fe $39
	adc $ff                                          ; $59fb: $ce $ff
	ccf                                              ; $59fd: $3f
	ld a, b                                          ; $59fe: $78
	ld d, a                                          ; $59ff: $57
	and b                                            ; $5a00: $a0
	ld h, d                                          ; $5a01: $62
	jr nz, jr_06a_5a82                               ; $5a02: $20 $7e

	db $fc                                           ; $5a04: $fc
	ld [hl-], a                                      ; $5a05: $32
	jr nz, jr_06a_5a7f                               ; $5a06: $20 $77

	add b                                            ; $5a08: $80
	sbc c                                            ; $5a09: $99
	add [hl]                                         ; $5a0a: $86
	ld hl, sp-$06                                    ; $5a0b: $f8 $fa
	db $fc                                           ; $5a0d: $fc
	cp $07                                           ; $5a0e: $fe $07
	ld [hl], a                                       ; $5a10: $77
	ret nz                                           ; $5a11: $c0

	ld a, a                                          ; $5a12: $7f
	cp $9b                                           ; $5a13: $fe $9b
	pop bc                                           ; $5a15: $c1
	rst $38                                          ; $5a16: $ff
	cp [hl]                                          ; $5a17: $be
	inc a                                            ; $5a18: $3c
	inc bc                                           ; $5a19: $03
	add b                                            ; $5a1a: $80
	ld b, e                                          ; $5a1b: $43
	add b                                            ; $5a1c: $80
	sbc e                                            ; $5a1d: $9b
	ld a, c                                          ; $5a1e: $79
	rst $38                                          ; $5a1f: $ff

jr_06a_5a20:
	ld a, [hl]                                       ; $5a20: $7e
	add e                                            ; $5a21: $83
	ld l, a                                          ; $5a22: $6f
	ret nz                                           ; $5a23: $c0

	sbc h                                            ; $5a24: $9c
	add [hl]                                         ; $5a25: $86

jr_06a_5a26:
	rst $38                                          ; $5a26: $ff
	ld a, a                                          ; $5a27: $7f

jr_06a_5a28:
	ld d, e                                          ; $5a28: $53
	add b                                            ; $5a29: $80
	ld c, [hl]                                       ; $5a2a: $4e
	add b                                            ; $5a2b: $80
	sbc l                                            ; $5a2c: $9d
	ei                                               ; $5a2d: $fb
	rra                                              ; $5a2e: $1f
	ld b, [hl]                                       ; $5a2f: $46
	add b                                            ; $5a30: $80
	sbc d                                            ; $5a31: $9a
	ld [$7858], sp                                   ; $5a32: $08 $58 $78
	jr nc, jr_06a_5a37                               ; $5a35: $30 $00

jr_06a_5a37:
	cp l                                             ; $5a37: $bd
	jr nc, jr_06a_5a3a                               ; $5a38: $30 $00

jr_06a_5a3a:
	nop                                              ; $5a3a: $00
	inc bc                                           ; $5a3b: $03
	sub a                                            ; $5a3c: $97
	ld bc, $87cf                                     ; $5a3d: $01 $cf $87
	rst GetHLinHL                                          ; $5a40: $cf
	rst $38                                          ; $5a41: $ff
	rst $38                                          ; $5a42: $ff
	ldh a, [$c7]                                     ; $5a43: $f0 $c7
	cp e                                             ; $5a45: $bb
	add c                                            ; $5a46: $81
	add b                                            ; $5a47: $80
	add b                                            ; $5a48: $80
	add b                                            ; $5a49: $80
	add b                                            ; $5a4a: $80
	ret c                                            ; $5a4b: $d8

	sbc d                                            ; $5a4c: $9a
	ld e, b                                          ; $5a4d: $58
	jr c, jr_06a_5ac0                                ; $5a4e: $38 $70

	nop                                              ; $5a50: $00
	jr nz, jr_06a_5a6a                               ; $5a51: $20 $17

	ldh [$9b], a                                     ; $5a53: $e0 $9b
	ld a, b                                          ; $5a55: $78
	ld [hl], b                                       ; $5a56: $70
	jr c, jr_06a_5a89                                ; $5a57: $38 $30

	inc de                                           ; $5a59: $13
	ldh [$df], a                                     ; $5a5a: $e0 $df
	ld a, b                                          ; $5a5c: $78
	sbc e                                            ; $5a5d: $9b
	ld [hl], b                                       ; $5a5e: $70
	jr nc, jr_06a_5a81                               ; $5a5f: $30 $20

	jr nz, @+$2d                                     ; $5a61: $20 $2b

	ldh [$c2], a                                     ; $5a63: $e0 $c2
	ld bc, $0a80                                     ; $5a65: $01 $80 $0a
	rst $38                                          ; $5a68: $ff
	ld a, [de]                                       ; $5a69: $1a

jr_06a_5a6a:
	rst $38                                          ; $5a6a: $ff
	sub d                                            ; $5a6b: $92
	rst $38                                          ; $5a6c: $ff
	sub a                                            ; $5a6d: $97
	rst $38                                          ; $5a6e: $ff
	sub l                                            ; $5a6f: $95
	cp $b7                                           ; $5a70: $fe $b7
	db $fc                                           ; $5a72: $fc
	daa                                              ; $5a73: $27
	db $fc                                           ; $5a74: $fc
	ld l, $fd                                        ; $5a75: $2e $fd
	ld e, a                                          ; $5a77: $5f
	db $f4                                           ; $5a78: $f4
	ld a, a                                          ; $5a79: $7f
	ldh a, [c]                                       ; $5a7a: $f2
	rst SubAFromDE                                          ; $5a7b: $df
	ldh a, [c]                                       ; $5a7c: $f2
	ld e, a                                          ; $5a7d: $5f
	ld [hl], d                                       ; $5a7e: $72

jr_06a_5a7f:
	ld c, [hl]                                       ; $5a7f: $4e
	ld a, c                                          ; $5a80: $79

jr_06a_5a81:
	ld b, l                                          ; $5a81: $45

jr_06a_5a82:
	ld a, a                                          ; $5a82: $7f
	ld b, l                                          ; $5a83: $45
	ld a, a                                          ; $5a84: $7f
	adc $80                                          ; $5a85: $ce $80
	ld sp, hl                                        ; $5a87: $f9
	sbc e                                            ; $5a88: $9b

jr_06a_5a89:
	di                                               ; $5a89: $f3
	sub e                                            ; $5a8a: $93
	db $f4                                           ; $5a8b: $f4
	jp nc, $99b5                                     ; $5a8c: $d2 $b5 $99

	or e                                             ; $5a8f: $b3
	ld e, l                                          ; $5a90: $5d
	jr c, jr_06a_5abf                                ; $5a91: $38 $2c

	ld e, [hl]                                       ; $5a93: $5e
	inc bc                                           ; $5a94: $03
	rst SubAFromDE                                          ; $5a95: $df
	ld [$48b7], sp                                   ; $5a96: $08 $b7 $48
	daa                                              ; $5a99: $27
	inc b                                            ; $5a9a: $04
	ld l, e                                          ; $5a9b: $6b
	add l                                            ; $5a9c: $85
	ld d, e                                          ; $5a9d: $53
	ld hl, $4287                                     ; $5a9e: $21 $87 $42
	xor a                                            ; $5aa1: $af
	ld d, $ef                                        ; $5aa2: $16 $ef
	ld b, a                                          ; $5aa4: $47
	rst $38                                          ; $5aa5: $ff
	adc c                                            ; $5aa6: $89
	ld c, a                                          ; $5aa7: $4f
	rst $38                                          ; $5aa8: $ff
	cp $88                                           ; $5aa9: $fe $88
	cp $88                                           ; $5aab: $fe $88
	adc [hl]                                         ; $5aad: $8e
	ldh a, [$f2]                                     ; $5aae: $f0 $f2
	db $fc                                           ; $5ab0: $fc
	cp $87                                           ; $5ab1: $fe $87
	rst $38                                          ; $5ab3: $ff
	nop                                              ; $5ab4: $00
	cp h                                             ; $5ab5: $bc
	ld a, a                                          ; $5ab6: $7f
	rst SubAFromBC                                          ; $5ab7: $e7
	rst AddAOntoHL                                          ; $5ab8: $ef
	rst $38                                          ; $5ab9: $ff
	cp h                                             ; $5aba: $bc
	sub h                                            ; $5abb: $94
	inc e                                            ; $5abc: $1c
	ld sp, hl                                        ; $5abd: $f9
	adc d                                            ; $5abe: $8a

jr_06a_5abf:
	add b                                            ; $5abf: $80

jr_06a_5ac0:
	nop                                              ; $5ac0: $00
	add b                                            ; $5ac1: $80
	add b                                            ; $5ac2: $80
	ret nz                                           ; $5ac3: $c0

	add b                                            ; $5ac4: $80
	ldh [$c0], a                                     ; $5ac5: $e0 $c0
	or b                                             ; $5ac7: $b0
	ldh [$78], a                                     ; $5ac8: $e0 $78
	or b                                             ; $5aca: $b0
	xor h                                            ; $5acb: $ac
	ld a, b                                          ; $5acc: $78
	adc $fc                                          ; $5acd: $ce $fc
	ld c, e                                          ; $5acf: $4b
	cp $5b                                           ; $5ad0: $fe $5b
	rst $38                                          ; $5ad2: $ff
	sub c                                            ; $5ad3: $91
	ld a, e                                          ; $5ad4: $7b
	cp $83                                           ; $5ad5: $fe $83
	reti                                             ; $5ad7: $d9


	rst $38                                          ; $5ad8: $ff
	ld c, c                                          ; $5ad9: $49
	rst $38                                          ; $5ada: $ff
	ld c, l                                          ; $5adb: $4d
	rst $38                                          ; $5adc: $ff
	daa                                              ; $5add: $27
	rst $38                                          ; $5ade: $ff
	rra                                              ; $5adf: $1f
	rst $38                                          ; $5ae0: $ff
	rst $38                                          ; $5ae1: $ff
	ldh a, [c]                                       ; $5ae2: $f2
	inc bc                                           ; $5ae3: $03
	ld bc, $0203                                     ; $5ae4: $01 $03 $02
	rlca                                             ; $5ae7: $07
	nop                                              ; $5ae8: $00
	ld b, $01                                        ; $5ae9: $06 $01
	rlca                                             ; $5aeb: $07
	inc bc                                           ; $5aec: $03
	add a                                            ; $5aed: $87
	nop                                              ; $5aee: $00
	add [hl]                                         ; $5aef: $86
	ld bc, $0183                                     ; $5af0: $01 $83 $01
	db $fd                                           ; $5af3: $fd
	sbc [hl]                                         ; $5af4: $9e
	db $10                                           ; $5af5: $10
	cp [hl]                                          ; $5af6: $be
	jr jr_06a_5b35                                   ; $5af7: $18 $3c

	ld e, h                                          ; $5af9: $5c
	add l                                            ; $5afa: $85
	jr nz, jr_06a_5b55                               ; $5afb: $20 $58

	ld h, b                                          ; $5afd: $60
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	db $e4                                           ; $5b00: $e4
	ccf                                              ; $5b01: $3f
	or $1f                                           ; $5b02: $f6 $1f
	rst AddAOntoHL                                          ; $5b04: $ef
	rra                                              ; $5b05: $1f
	ld h, l                                          ; $5b06: $65
	rst $38                                          ; $5b07: $ff
	cp a                                             ; $5b08: $bf
	ret nz                                           ; $5b09: $c0

	rst $38                                          ; $5b0a: $ff
	nop                                              ; $5b0b: $00
	ei                                               ; $5b0c: $fb
	db $fc                                           ; $5b0d: $fc
	ld c, a                                          ; $5b0e: $4f
	rst SubAFromDE                                          ; $5b0f: $df
	ld a, [hl]                                       ; $5b10: $7e
	ld a, c                                          ; $5b11: $79
	dec hl                                           ; $5b12: $2b
	jr c, jr_06a_5b24                                ; $5b13: $38 $0f

	cp d                                             ; $5b15: $ba
	ld bc, $0703                                     ; $5b16: $01 $03 $07
	rrca                                             ; $5b19: $0f
	rrca                                             ; $5b1a: $0f
	rra                                              ; $5b1b: $1f

jr_06a_5b1c:
	rra                                              ; $5b1c: $1f
	add b                                            ; $5b1d: $80
	ld bc, $033f                                     ; $5b1e: $01 $3f $03
	scf                                              ; $5b21: $37
	rrca                                             ; $5b22: $0f
	ld a, h                                          ; $5b23: $7c

jr_06a_5b24:
	rra                                              ; $5b24: $1f
	cp d                                             ; $5b25: $ba
	ld a, a                                          ; $5b26: $7f
	ld a, [$faff]                                    ; $5b27: $fa $ff $fa
	rst $38                                          ; $5b2a: $ff
	ld sp, hl                                        ; $5b2b: $f9
	rst AddAOntoHL                                          ; $5b2c: $ef
	ld sp, hl                                        ; $5b2d: $f9
	rrca                                             ; $5b2e: $0f
	ld sp, hl                                        ; $5b2f: $f9
	rrca                                             ; $5b30: $0f
	ei                                               ; $5b31: $fb
	rrca                                             ; $5b32: $0f
	ld a, [hl]                                       ; $5b33: $7e
	rrca                                             ; $5b34: $0f

jr_06a_5b35:
	ld a, $0f                                        ; $5b35: $3e $0f
	ccf                                              ; $5b37: $3f
	rlca                                             ; $5b38: $07
	ccf                                              ; $5b39: $3f
	rlca                                             ; $5b3a: $07
	ld d, d                                          ; $5b3b: $52
	rst $38                                          ; $5b3c: $ff
	adc e                                            ; $5b3d: $8b
	ld c, e                                          ; $5b3e: $4b
	rst $38                                          ; $5b3f: $ff
	dec h                                            ; $5b40: $25
	rst $38                                          ; $5b41: $ff
	or a                                             ; $5b42: $b7
	rst $38                                          ; $5b43: $ff
	db $db                                           ; $5b44: $db
	rst $38                                          ; $5b45: $ff
	db $ed                                           ; $5b46: $ed
	ld a, a                                          ; $5b47: $7f
	rst $38                                          ; $5b48: $ff
	rra                                              ; $5b49: $1f
	ld a, e                                          ; $5b4a: $7b
	sbc a                                            ; $5b4b: $9f
	db $fd                                           ; $5b4c: $fd
	rra                                              ; $5b4d: $1f
	call nc, $fc3f                                   ; $5b4e: $d4 $3f $fc
	scf                                              ; $5b51: $37
	ld a, e                                          ; $5b52: $7b
	dec d                                            ; $5b53: $15
	add b                                            ; $5b54: $80

jr_06a_5b55:
	cpl                                              ; $5b55: $2f
	db $fc                                           ; $5b56: $fc
	ld a, a                                          ; $5b57: $7f
	db $fc                                           ; $5b58: $fc
	ld b, a                                          ; $5b59: $47
	db $fc                                           ; $5b5a: $fc
	rst $38                                          ; $5b5b: $ff
	cp l                                             ; $5b5c: $bd
	rst SubAFromDE                                          ; $5b5d: $df
	ld [hl], l                                       ; $5b5e: $75
	xor a                                            ; $5b5f: $af
	ld e, c                                          ; $5b60: $59
	xor a                                            ; $5b61: $af
	jp hl                                            ; $5b62: $e9


	cp a                                             ; $5b63: $bf
	ei                                               ; $5b64: $fb
	sbc a                                            ; $5b65: $9f
	ld d, e                                          ; $5b66: $53
	rst $38                                          ; $5b67: $ff
	ld h, e                                          ; $5b68: $63
	rst $38                                          ; $5b69: $ff
	ld h, l                                          ; $5b6a: $65
	rst $38                                          ; $5b6b: $ff
	ld b, l                                          ; $5b6c: $45
	rst $38                                          ; $5b6d: $ff
	call $89ff                                       ; $5b6e: $cd $ff $89
	rst $38                                          ; $5b71: $ff
	dec de                                           ; $5b72: $1b
	rst $38                                          ; $5b73: $ff
	sbc b                                            ; $5b74: $98
	ld [hl-], a                                      ; $5b75: $32
	rst $38                                          ; $5b76: $ff
	ld h, [hl]                                       ; $5b77: $66
	rst $38                                          ; $5b78: $ff
	adc h                                            ; $5b79: $8c
	rst $38                                          ; $5b7a: $ff
	jr jr_06a_5be0                                   ; $5b7b: $18 $63

	jr nz, jr_06a_5b1c                               ; $5b7d: $20 $9d

	xor $9f                                          ; $5b7f: $ee $9f
	ld a, e                                          ; $5b81: $7b
	add b                                            ; $5b82: $80
	sub a                                            ; $5b83: $97
	inc e                                            ; $5b84: $1c
	rst $38                                          ; $5b85: $ff
	rst AddAOntoHL                                          ; $5b86: $ef
	ld a, [$967c]                                    ; $5b87: $fa $7c $96
	inc e                                            ; $5b8a: $1c
	jr jr_06a_5be8                                   ; $5b8b: $18 $5b

	jr nz, jr_06a_5bfe                               ; $5b8d: $20 $6f

	ld b, b                                          ; $5b8f: $40
	ld a, e                                          ; $5b90: $7b
	cp $7b                                           ; $5b91: $fe $7b
	ld b, b                                          ; $5b93: $40
	ld a, a                                          ; $5b94: $7f
	cp $27                                           ; $5b95: $fe $27
	ld b, b                                          ; $5b97: $40
	sbc [hl]                                         ; $5b98: $9e
	dec a                                            ; $5b99: $3d
	ld [hl], e                                       ; $5b9a: $73
	ld b, b                                          ; $5b9b: $40
	sbc b                                            ; $5b9c: $98
	rst FarCall                                          ; $5b9d: $f7
	ld a, b                                          ; $5b9e: $78
	rst GetHLinHL                                          ; $5b9f: $cf
	rst SubAFromDE                                          ; $5ba0: $df
	ld a, l                                          ; $5ba1: $7d
	cp $6f                                           ; $5ba2: $fe $6f
	ld d, e                                          ; $5ba4: $53
	ld b, b                                          ; $5ba5: $40
	ld d, a                                          ; $5ba6: $57
	and b                                            ; $5ba7: $a0
	ld a, a                                          ; $5ba8: $7f
	cp $9a                                           ; $5ba9: $fe $9a
	rst SubAFromDE                                          ; $5bab: $df
	add hl, sp                                       ; $5bac: $39
	add sp, -$0a                                     ; $5bad: $e8 $f6
	sbc [hl]                                         ; $5baf: $9e
	rla                                              ; $5bb0: $17
	and b                                            ; $5bb1: $a0
	ld a, a                                          ; $5bb2: $7f
	add $7b                                          ; $5bb3: $c6 $7b
	sbc [hl]                                         ; $5bb5: $9e
	ld b, a                                          ; $5bb6: $47
	and b                                            ; $5bb7: $a0
	sbc l                                            ; $5bb8: $9d
	rst GetHLinHL                                          ; $5bb9: $cf
	ccf                                              ; $5bba: $3f
	ld l, a                                          ; $5bbb: $6f
	and b                                            ; $5bbc: $a0
	ld a, a                                          ; $5bbd: $7f
	cp $99                                           ; $5bbe: $fe $99
	cp $39                                           ; $5bc0: $fe $39
	adc $ff                                          ; $5bc2: $ce $ff
	ccf                                              ; $5bc4: $3f
	ld a, b                                          ; $5bc5: $78
	ld d, a                                          ; $5bc6: $57
	and b                                            ; $5bc7: $a0
	ld h, d                                          ; $5bc8: $62
	jr nz, jr_06a_5c49                               ; $5bc9: $20 $7e

	db $fc                                           ; $5bcb: $fc
	ld [hl-], a                                      ; $5bcc: $32
	jr nz, jr_06a_5c46                               ; $5bcd: $20 $77

	add b                                            ; $5bcf: $80
	sbc c                                            ; $5bd0: $99
	sbc [hl]                                         ; $5bd1: $9e
	ldh [$e2], a                                     ; $5bd2: $e0 $e2
	db $fc                                           ; $5bd4: $fc
	db $fc                                           ; $5bd5: $fc
	rra                                              ; $5bd6: $1f
	ld [hl], a                                       ; $5bd7: $77
	ret nz                                           ; $5bd8: $c0

	ld a, a                                          ; $5bd9: $7f
	cp $9b                                           ; $5bda: $fe $9b
	pop bc                                           ; $5bdc: $c1
	rst $38                                          ; $5bdd: $ff
	cp [hl]                                          ; $5bde: $be
	inc a                                            ; $5bdf: $3c

jr_06a_5be0:
	inc bc                                           ; $5be0: $03
	add b                                            ; $5be1: $80
	inc hl                                           ; $5be2: $23
	add b                                            ; $5be3: $80
	ld a, a                                          ; $5be4: $7f
	cp $9c                                           ; $5be5: $fe $9c
	add [hl]                                         ; $5be7: $86

jr_06a_5be8:
	rst $38                                          ; $5be8: $ff
	ld a, a                                          ; $5be9: $7f
	ld d, e                                          ; $5bea: $53
	add b                                            ; $5beb: $80
	ld c, [hl]                                       ; $5bec: $4e
	add b                                            ; $5bed: $80
	sbc l                                            ; $5bee: $9d
	ei                                               ; $5bef: $fb
	rra                                              ; $5bf0: $1f
	ld b, [hl]                                       ; $5bf1: $46
	add b                                            ; $5bf2: $80
	sbc h                                            ; $5bf3: $9c
	ld c, b                                          ; $5bf4: $48
	ld e, b                                          ; $5bf5: $58
	ld [hl], b                                       ; $5bf6: $70
	cp h                                             ; $5bf7: $bc
	nop                                              ; $5bf8: $00
	jr nc, jr_06a_5bfb                               ; $5bf9: $30 $00

jr_06a_5bfb:
	nop                                              ; $5bfb: $00
	inc bc                                           ; $5bfc: $03
	sub a                                            ; $5bfd: $97

jr_06a_5bfe:
	ld bc, $87cf                                     ; $5bfe: $01 $cf $87
	rst GetHLinHL                                          ; $5c01: $cf
	rst $38                                          ; $5c02: $ff
	rst $38                                          ; $5c03: $ff
	ldh a, [$c7]                                     ; $5c04: $f0 $c7
	cp e                                             ; $5c06: $bb
	add c                                            ; $5c07: $81
	add b                                            ; $5c08: $80
	add b                                            ; $5c09: $80
	add b                                            ; $5c0a: $80
	add b                                            ; $5c0b: $80
	db $10                                           ; $5c0c: $10
	sbc l                                            ; $5c0d: $9d
	ld e, b                                          ; $5c0e: $58
	ld a, b                                          ; $5c0f: $78
	ld a, e                                          ; $5c10: $7b
	db $e3                                           ; $5c11: $e3
	rra                                              ; $5c12: $1f
	ldh [$99], a                                     ; $5c13: $e0 $99
	ret c                                            ; $5c15: $d8

	ld d, b                                          ; $5c16: $50
	ld [hl], b                                       ; $5c17: $70
	ld a, b                                          ; $5c18: $78
	jr c, jr_06a_5c4b                                ; $5c19: $38 $30

	rra                                              ; $5c1b: $1f
	ldh [$99], a                                     ; $5c1c: $e0 $99
	ret nc                                           ; $5c1e: $d0

	ld d, b                                          ; $5c1f: $50
	ld a, b                                          ; $5c20: $78
	ld a, b                                          ; $5c21: $78
	jr c, jr_06a_5c94                                ; $5c22: $38 $70

	rra                                              ; $5c24: $1f
	ldh [$d6], a                                     ; $5c25: $e0 $d6
	ld bc, $0a80                                     ; $5c27: $01 $80 $0a
	rst $38                                          ; $5c2a: $ff
	ld a, [de]                                       ; $5c2b: $1a
	rst $38                                          ; $5c2c: $ff
	sub d                                            ; $5c2d: $92
	rst $38                                          ; $5c2e: $ff
	sub a                                            ; $5c2f: $97
	rst $38                                          ; $5c30: $ff
	sub l                                            ; $5c31: $95
	cp $b7                                           ; $5c32: $fe $b7
	db $fc                                           ; $5c34: $fc
	daa                                              ; $5c35: $27
	db $fc                                           ; $5c36: $fc
	ld l, $fd                                        ; $5c37: $2e $fd
	ld e, a                                          ; $5c39: $5f
	db $f4                                           ; $5c3a: $f4
	ld a, a                                          ; $5c3b: $7f
	ldh a, [c]                                       ; $5c3c: $f2
	rst SubAFromDE                                          ; $5c3d: $df
	ldh a, [c]                                       ; $5c3e: $f2
	ld e, a                                          ; $5c3f: $5f
	ld [hl], d                                       ; $5c40: $72
	ld c, [hl]                                       ; $5c41: $4e
	ld a, c                                          ; $5c42: $79
	ld b, l                                          ; $5c43: $45
	ld a, a                                          ; $5c44: $7f
	ld b, l                                          ; $5c45: $45

jr_06a_5c46:
	ld a, a                                          ; $5c46: $7f
	adc $80                                          ; $5c47: $ce $80

jr_06a_5c49:
	ld sp, hl                                        ; $5c49: $f9
	sbc e                                            ; $5c4a: $9b

jr_06a_5c4b:
	di                                               ; $5c4b: $f3
	sub e                                            ; $5c4c: $93
	db $f4                                           ; $5c4d: $f4
	jp nc, $99b5                                     ; $5c4e: $d2 $b5 $99

	or e                                             ; $5c51: $b3
	ld e, l                                          ; $5c52: $5d
	jr c, jr_06a_5c81                                ; $5c53: $38 $2c

	ld e, [hl]                                       ; $5c55: $5e
	inc bc                                           ; $5c56: $03
	rst SubAFromDE                                          ; $5c57: $df
	ld [$48b7], sp                                   ; $5c58: $08 $b7 $48
	daa                                              ; $5c5b: $27
	inc b                                            ; $5c5c: $04
	ld l, e                                          ; $5c5d: $6b
	add l                                            ; $5c5e: $85
	ld d, e                                          ; $5c5f: $53
	ld hl, $4287                                     ; $5c60: $21 $87 $42
	xor a                                            ; $5c63: $af
	ld d, $ef                                        ; $5c64: $16 $ef
	ld b, a                                          ; $5c66: $47
	rst $38                                          ; $5c67: $ff
	adc c                                            ; $5c68: $89
	ld c, a                                          ; $5c69: $4f
	rst $38                                          ; $5c6a: $ff
	cp $88                                           ; $5c6b: $fe $88
	cp $88                                           ; $5c6d: $fe $88
	cp [hl]                                          ; $5c6f: $be
	ret nz                                           ; $5c70: $c0

	and [hl]                                         ; $5c71: $a6
	ld hl, sp-$03                                    ; $5c72: $f8 $fd
	sbc [hl]                                         ; $5c74: $9e
	rst FarCall                                          ; $5c75: $f7
	rrca                                             ; $5c76: $0f
	sbc l                                            ; $5c77: $9d
	ld a, [hl]                                       ; $5c78: $7e
	rst SubAFromBC                                          ; $5c79: $e7
	rst AddAOntoHL                                          ; $5c7a: $ef
	db $dd                                           ; $5c7b: $dd
	cp h                                             ; $5c7c: $bc
	sub h                                            ; $5c7d: $94
	inc e                                            ; $5c7e: $1c
	ld sp, hl                                        ; $5c7f: $f9
	adc d                                            ; $5c80: $8a

jr_06a_5c81:
	add b                                            ; $5c81: $80
	nop                                              ; $5c82: $00
	add b                                            ; $5c83: $80
	add b                                            ; $5c84: $80
	ret nz                                           ; $5c85: $c0

	add b                                            ; $5c86: $80
	ldh [$c0], a                                     ; $5c87: $e0 $c0
	or b                                             ; $5c89: $b0
	ldh [$78], a                                     ; $5c8a: $e0 $78
	or b                                             ; $5c8c: $b0
	xor h                                            ; $5c8d: $ac
	ld a, b                                          ; $5c8e: $78
	adc $fc                                          ; $5c8f: $ce $fc
	ld c, e                                          ; $5c91: $4b
	cp $5b                                           ; $5c92: $fe $5b

jr_06a_5c94:
	rst $38                                          ; $5c94: $ff
	sub c                                            ; $5c95: $91
	ld a, e                                          ; $5c96: $7b
	cp $8e                                           ; $5c97: $fe $8e
	reti                                             ; $5c99: $d9


	rst $38                                          ; $5c9a: $ff
	ld c, c                                          ; $5c9b: $49
	rst $38                                          ; $5c9c: $ff
	ld c, l                                          ; $5c9d: $4d
	rst $38                                          ; $5c9e: $ff
	daa                                              ; $5c9f: $27
	rst $38                                          ; $5ca0: $ff
	rra                                              ; $5ca1: $1f
	rst $38                                          ; $5ca2: $ff
	rst $38                                          ; $5ca3: $ff
	ldh a, [c]                                       ; $5ca4: $f2
	inc bc                                           ; $5ca5: $03
	ld bc, $0203                                     ; $5ca6: $01 $03 $02
	rlca                                             ; $5ca9: $07
	cp a                                             ; $5caa: $bf
	rlca                                             ; $5cab: $07
	inc b                                            ; $5cac: $04
	sub a                                            ; $5cad: $97
	inc bc                                           ; $5cae: $03
	add a                                            ; $5caf: $87
	inc bc                                           ; $5cb0: $03
	add a                                            ; $5cb1: $87
	nop                                              ; $5cb2: $00
	add e                                            ; $5cb3: $83
	ld bc, $bc01                                     ; $5cb4: $01 $01 $bc
	nop                                              ; $5cb7: $00
	db $10                                           ; $5cb8: $10
	jr jr_06a_5cf7                                   ; $5cb9: $18 $3c

	ld e, h                                          ; $5cbb: $5c
	add l                                            ; $5cbc: $85
	jr nz, jr_06a_5d17                               ; $5cbd: $20 $58

	ld h, b                                          ; $5cbf: $60
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	db $e4                                           ; $5cc2: $e4
	ccf                                              ; $5cc3: $3f
	or $1f                                           ; $5cc4: $f6 $1f
	rst AddAOntoHL                                          ; $5cc6: $ef
	rra                                              ; $5cc7: $1f
	sbc l                                            ; $5cc8: $9d
	ld a, a                                          ; $5cc9: $7f
	rst $38                                          ; $5cca: $ff
	ldh [rIE], a                                     ; $5ccb: $e0 $ff
	add b                                            ; $5ccd: $80
	ld [hl], e                                       ; $5cce: $73

jr_06a_5ccf:
	db $fc                                           ; $5ccf: $fc
	rst GetHLinHL                                          ; $5cd0: $cf
	rst SubAFromDE                                          ; $5cd1: $df
	ld a, $79                                        ; $5cd2: $3e $79
	dec hl                                           ; $5cd4: $2b
	jr c, jr_06a_5ce6                                ; $5cd5: $38 $0f

	cp d                                             ; $5cd7: $ba
	ld bc, $0703                                     ; $5cd8: $01 $03 $07
	rrca                                             ; $5cdb: $0f
	rrca                                             ; $5cdc: $0f
	rra                                              ; $5cdd: $1f
	rra                                              ; $5cde: $1f
	add b                                            ; $5cdf: $80
	ld bc, $033f                                     ; $5ce0: $01 $3f $03
	scf                                              ; $5ce3: $37
	rrca                                             ; $5ce4: $0f
	ld a, h                                          ; $5ce5: $7c

jr_06a_5ce6:
	rra                                              ; $5ce6: $1f
	cp d                                             ; $5ce7: $ba
	ld a, a                                          ; $5ce8: $7f
	ld a, [$faff]                                    ; $5ce9: $fa $ff $fa
	rst $38                                          ; $5cec: $ff
	ld sp, hl                                        ; $5ced: $f9
	rst AddAOntoHL                                          ; $5cee: $ef
	ld sp, hl                                        ; $5cef: $f9
	rrca                                             ; $5cf0: $0f
	ld sp, hl                                        ; $5cf1: $f9
	rrca                                             ; $5cf2: $0f
	ei                                               ; $5cf3: $fb
	rrca                                             ; $5cf4: $0f
	ld a, [hl]                                       ; $5cf5: $7e
	rrca                                             ; $5cf6: $0f

jr_06a_5cf7:
	ld a, $0f                                        ; $5cf7: $3e $0f
	ccf                                              ; $5cf9: $3f
	rlca                                             ; $5cfa: $07
	ccf                                              ; $5cfb: $3f
	rlca                                             ; $5cfc: $07
	ld d, d                                          ; $5cfd: $52
	rst $38                                          ; $5cfe: $ff
	adc e                                            ; $5cff: $8b
	ld c, e                                          ; $5d00: $4b
	rst $38                                          ; $5d01: $ff
	dec h                                            ; $5d02: $25
	rst $38                                          ; $5d03: $ff
	or a                                             ; $5d04: $b7
	rst $38                                          ; $5d05: $ff
	db $db                                           ; $5d06: $db
	rst $38                                          ; $5d07: $ff
	db $ed                                           ; $5d08: $ed
	ld a, a                                          ; $5d09: $7f
	rst $38                                          ; $5d0a: $ff
	rra                                              ; $5d0b: $1f
	ld a, e                                          ; $5d0c: $7b
	sbc a                                            ; $5d0d: $9f
	db $fd                                           ; $5d0e: $fd
	rra                                              ; $5d0f: $1f
	call nc, $fc3f                                   ; $5d10: $d4 $3f $fc
	scf                                              ; $5d13: $37
	ld a, e                                          ; $5d14: $7b
	dec d                                            ; $5d15: $15
	add b                                            ; $5d16: $80

jr_06a_5d17:
	cpl                                              ; $5d17: $2f
	db $fc                                           ; $5d18: $fc
	ld a, a                                          ; $5d19: $7f
	db $fc                                           ; $5d1a: $fc
	ld b, a                                          ; $5d1b: $47
	db $fc                                           ; $5d1c: $fc
	rst $38                                          ; $5d1d: $ff
	cp l                                             ; $5d1e: $bd
	rst SubAFromDE                                          ; $5d1f: $df
	ld [hl], l                                       ; $5d20: $75
	xor a                                            ; $5d21: $af
	ld e, c                                          ; $5d22: $59
	xor a                                            ; $5d23: $af
	jp hl                                            ; $5d24: $e9


	cp a                                             ; $5d25: $bf
	ei                                               ; $5d26: $fb
	sbc a                                            ; $5d27: $9f
	ld d, e                                          ; $5d28: $53
	rst $38                                          ; $5d29: $ff
	ld h, e                                          ; $5d2a: $63
	rst $38                                          ; $5d2b: $ff
	ld h, l                                          ; $5d2c: $65
	rst $38                                          ; $5d2d: $ff
	ld b, l                                          ; $5d2e: $45
	rst $38                                          ; $5d2f: $ff
	call $89ff                                       ; $5d30: $cd $ff $89
	rst $38                                          ; $5d33: $ff
	dec de                                           ; $5d34: $1b
	rst $38                                          ; $5d35: $ff
	sbc b                                            ; $5d36: $98
	ld [hl-], a                                      ; $5d37: $32
	rst $38                                          ; $5d38: $ff
	ld h, [hl]                                       ; $5d39: $66
	rst $38                                          ; $5d3a: $ff
	adc h                                            ; $5d3b: $8c
	rst $38                                          ; $5d3c: $ff
	jr jr_06a_5db2                                   ; $5d3d: $18 $73

	jr nz, jr_06a_5ccf                               ; $5d3f: $20 $8e

	sbc $e0                                          ; $5d41: $de $e0
	and [hl]                                         ; $5d43: $a6
	ld hl, sp-$07                                    ; $5d44: $f8 $f9
	sbc [hl]                                         ; $5d46: $9e
	rst $38                                          ; $5d47: $ff
	rlca                                             ; $5d48: $07
	ei                                               ; $5d49: $fb
	inc e                                            ; $5d4a: $1c
	rst FarCall                                          ; $5d4b: $f7
	rst AddAOntoHL                                          ; $5d4c: $ef
	ld a, [$96bc]                                    ; $5d4d: $fa $bc $96
	inc e                                            ; $5d50: $1c
	jr jr_06a_5dae                                   ; $5d51: $18 $5b

	jr nz, jr_06a_5dbc                               ; $5d53: $20 $67

	ld b, b                                          ; $5d55: $40
	sbc l                                            ; $5d56: $9d
	ld b, $01                                        ; $5d57: $06 $01
	ld l, a                                          ; $5d59: $6f
	ld b, b                                          ; $5d5a: $40
	db $fd                                           ; $5d5b: $fd
	ccf                                              ; $5d5c: $3f
	ld b, b                                          ; $5d5d: $40
	sbc h                                            ; $5d5e: $9c
	add l                                            ; $5d5f: $85
	ld a, a                                          ; $5d60: $7f
	ld a, a                                          ; $5d61: $7f
	ld a, e                                          ; $5d62: $7b
	ld b, b                                          ; $5d63: $40
	sbc b                                            ; $5d64: $98
	rst FarCall                                          ; $5d65: $f7
	ld a, b                                          ; $5d66: $78
	rst GetHLinHL                                          ; $5d67: $cf
	rst SubAFromDE                                          ; $5d68: $df
	ld a, l                                          ; $5d69: $7d
	cp $6f                                           ; $5d6a: $fe $6f
	ld d, e                                          ; $5d6c: $53
	ld b, b                                          ; $5d6d: $40
	ld l, a                                          ; $5d6e: $6f
	and b                                            ; $5d6f: $a0
	sub d                                            ; $5d70: $92
	or [hl]                                          ; $5d71: $b6
	ld hl, sp-$13                                    ; $5d72: $f8 $ed
	sbc [hl]                                         ; $5d74: $9e
	ei                                               ; $5d75: $fb
	rlca                                             ; $5d76: $07
	rst $38                                          ; $5d77: $ff
	nop                                              ; $5d78: $00
	rst SubAFromDE                                          ; $5d79: $df
	add hl, sp                                       ; $5d7a: $39
	and $fe                                          ; $5d7b: $e6 $fe
	sbc [hl]                                         ; $5d7d: $9e
	rla                                              ; $5d7e: $17
	and b                                            ; $5d7f: $a0
	ld a, a                                          ; $5d80: $7f
	add $7b                                          ; $5d81: $c6 $7b
	sbc [hl]                                         ; $5d83: $9e
	ccf                                              ; $5d84: $3f
	and b                                            ; $5d85: $a0
	sbc [hl]                                         ; $5d86: $9e
	adc l                                            ; $5d87: $8d
	ld [hl], e                                       ; $5d88: $73
	and b                                            ; $5d89: $a0
	ld a, a                                          ; $5d8a: $7f
	ret nz                                           ; $5d8b: $c0

	sbc c                                            ; $5d8c: $99
	cp $39                                           ; $5d8d: $fe $39
	adc $ff                                          ; $5d8f: $ce $ff

jr_06a_5d91:
	ccf                                              ; $5d91: $3f
	ld a, b                                          ; $5d92: $78
	ld d, a                                          ; $5d93: $57
	and b                                            ; $5d94: $a0
	ld h, d                                          ; $5d95: $62
	jr nz, jr_06a_5e16                               ; $5d96: $20 $7e

	db $fc                                           ; $5d98: $fc
	ld [hl-], a                                      ; $5d99: $32
	jr nz, jr_06a_5e16                               ; $5d9a: $20 $7a

	ld b, d                                          ; $5d9c: $42
	adc [hl]                                         ; $5d9d: $8e
	ret z                                            ; $5d9e: $c8

	sbc $e0                                          ; $5d9f: $de $e0
	rst SubAFromBC                                          ; $5da1: $e7
	cp b                                             ; $5da2: $b8
	ld sp, hl                                        ; $5da3: $f9
	ld e, $ff                                        ; $5da4: $1e $ff
	inc bc                                           ; $5da6: $03
	rst $38                                          ; $5da7: $ff
	nop                                              ; $5da8: $00
	ld a, a                                          ; $5da9: $7f
	add b                                            ; $5daa: $80
	pop bc                                           ; $5dab: $c1
	rst $38                                          ; $5dac: $ff
	cp [hl]                                          ; $5dad: $be

jr_06a_5dae:
	inc a                                            ; $5dae: $3c
	inc bc                                           ; $5daf: $03
	add b                                            ; $5db0: $80
	ld c, e                                          ; $5db1: $4b

jr_06a_5db2:
	add b                                            ; $5db2: $80
	sbc c                                            ; $5db3: $99
	rst GetHLinHL                                          ; $5db4: $cf
	ccf                                              ; $5db5: $3f
	cp a                                             ; $5db6: $bf
	ld a, c                                          ; $5db7: $79
	rst $38                                          ; $5db8: $ff
	ret nz                                           ; $5db9: $c0

	ld [hl], e                                       ; $5dba: $73
	add b                                            ; $5dbb: $80

jr_06a_5dbc:
	sbc e                                            ; $5dbc: $9b
	ld bc, $ff86                                     ; $5dbd: $01 $86 $ff
	ld a, a                                          ; $5dc0: $7f
	ld d, e                                          ; $5dc1: $53
	add b                                            ; $5dc2: $80
	ld c, [hl]                                       ; $5dc3: $4e
	add b                                            ; $5dc4: $80
	sbc l                                            ; $5dc5: $9d
	ei                                               ; $5dc6: $fb
	rra                                              ; $5dc7: $1f
	ld b, [hl]                                       ; $5dc8: $46
	add b                                            ; $5dc9: $80
	sbc l                                            ; $5dca: $9d
	ld e, b                                          ; $5dcb: $58
	ld d, b                                          ; $5dcc: $50
	cp a                                             ; $5dcd: $bf
	ld [$9e00], sp                                   ; $5dce: $08 $00 $9e
	jr nc, jr_06a_5d91                               ; $5dd1: $30 $be

	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	inc bc                                           ; $5dd5: $03
	sub a                                            ; $5dd6: $97
	ld bc, $87cf                                     ; $5dd7: $01 $cf $87
	rst GetHLinHL                                          ; $5dda: $cf
	rst $38                                          ; $5ddb: $ff
	rst $38                                          ; $5ddc: $ff
	ldh a, [$c7]                                     ; $5ddd: $f0 $c7
	cp e                                             ; $5ddf: $bb
	add c                                            ; $5de0: $81
	add b                                            ; $5de1: $80
	add b                                            ; $5de2: $80
	add b                                            ; $5de3: $80
	add b                                            ; $5de4: $80
	ld e, b                                          ; $5de5: $58
	sbc h                                            ; $5de6: $9c
	ld d, b                                          ; $5de7: $50
	ld a, b                                          ; $5de8: $78
	jr c, jr_06a_5e02                                ; $5de9: $38 $17

	ldh [$9d], a                                     ; $5deb: $e0 $9d
	ret nc                                           ; $5ded: $d0

	ld d, b                                          ; $5dee: $50
	sbc $78                                          ; $5def: $de $78
	rst SubAFromDE                                          ; $5df1: $df
	jr c, jr_06a_5e03                                ; $5df2: $38 $0f

	ldh [$7b], a                                     ; $5df4: $e0 $7b
	sbc $9d                                          ; $5df6: $de $9d
	db $10                                           ; $5df8: $10
	jr nz, jr_06a_5e2a                               ; $5df9: $20 $2f

	ldh [rSTAT], a                                   ; $5dfb: $e0 $41
	add e                                            ; $5dfd: $83
	add b                                            ; $5dfe: $80
	ld bc, $0502                                     ; $5dff: $01 $02 $05

jr_06a_5e02:
	ld a, [bc]                                       ; $5e02: $0a

jr_06a_5e03:
	inc c                                            ; $5e03: $0c
	dec d                                            ; $5e04: $15
	ld a, [de]                                       ; $5e05: $1a
	cpl                                              ; $5e06: $2f
	ld bc, $0603                                     ; $5e07: $01 $03 $06
	dec c                                            ; $5e0a: $0d
	dec bc                                           ; $5e0b: $0b
	ld a, [de]                                       ; $5e0c: $1a
	dec d                                            ; $5e0d: $15
	ld sp, $3a2f                                     ; $5e0e: $31 $2f $3a
	ld e, [hl]                                       ; $5e11: $5e
	ld d, h                                          ; $5e12: $54
	ld e, h                                          ; $5e13: $5c
	ld l, l                                          ; $5e14: $6d
	dec l                                            ; $5e15: $2d

jr_06a_5e16:
	scf                                              ; $5e16: $37
	inc sp                                           ; $5e17: $33
	daa                                              ; $5e18: $27
	ld h, a                                          ; $5e19: $67
	ld l, a                                          ; $5e1a: $6f
	ld l, a                                          ; $5e1b: $6f
	ld a, a                                          ; $5e1c: $7f
	ccf                                              ; $5e1d: $3f
	sub c                                            ; $5e1e: $91
	scf                                              ; $5e1f: $37
	ld [hl], $16                                     ; $5e20: $36 $16
	inc d                                            ; $5e22: $14
	dec d                                            ; $5e23: $15

jr_06a_5e24:
	dec b                                            ; $5e24: $05
	rrca                                             ; $5e25: $0f
	dec bc                                           ; $5e26: $0b
	dec bc                                           ; $5e27: $0b
	scf                                              ; $5e28: $37
	rla                                              ; $5e29: $17

jr_06a_5e2a:
	rla                                              ; $5e2a: $17
	ld d, $06                                        ; $5e2b: $16 $06
	sbc $0c                                          ; $5e2d: $de $0c
	rst SubAFromDE                                          ; $5e2f: $df
	dec bc                                           ; $5e30: $0b
	rst SubAFromDE                                          ; $5e31: $df
	rrca                                             ; $5e32: $0f
	sbc [hl]                                         ; $5e33: $9e
	rra                                              ; $5e34: $1f
	sbc $17                                          ; $5e35: $de $17
	rst SubAFromDE                                          ; $5e37: $df
	inc c                                            ; $5e38: $0c
	rst SubAFromDE                                          ; $5e39: $df
	ld [$18dd], sp                                   ; $5e3a: $08 $dd $18
	sub h                                            ; $5e3d: $94
	nop                                              ; $5e3e: $00
	ld bc, $0703                                     ; $5e3f: $01 $03 $07
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	ld bc, $0001                                     ; $5e44: $01 $01 $00
	ld bc, $7302                                     ; $5e47: $01 $02 $73
	ld hl, sp-$7b                                    ; $5e4a: $f8 $85
	inc bc                                           ; $5e4c: $03
	ld h, a                                          ; $5e4d: $67
	ld e, a                                          ; $5e4e: $5f
	ld l, $1e                                        ; $5e4f: $2e $1e
	dec l                                            ; $5e51: $2d
	ld a, d                                          ; $5e52: $7a
	ldh a, [rSCX]                                    ; $5e53: $f0 $43
	ld h, [hl]                                       ; $5e55: $66
	ld a, h                                          ; $5e56: $7c
	add hl, sp                                       ; $5e57: $39
	ld de, $6532                                     ; $5e58: $11 $32 $65
	rst GetHLinHL                                          ; $5e5b: $cf
	ld b, c                                          ; $5e5c: $41
	add d                                            ; $5e5d: $82
	ld b, $1c                                        ; $5e5e: $06 $1c
	inc a                                            ; $5e60: $3c
	ld a, b                                          ; $5e61: $78
	xor b                                            ; $5e62: $a8
	jr z, jr_06a_5e24                                ; $5e63: $28 $bf

	ld a, a                                          ; $5e65: $7f
	db $db                                           ; $5e66: $db
	rst $38                                          ; $5e67: $ff
	sub a                                            ; $5e68: $97
	ld [hl], c                                       ; $5e69: $71
	ld d, c                                          ; $5e6a: $51
	pop de                                           ; $5e6b: $d1
	sub c                                            ; $5e6c: $91
	or c                                             ; $5e6d: $b1
	pop af                                           ; $5e6e: $f1
	pop af                                           ; $5e6f: $f1
	ld sp, hl                                        ; $5e70: $f9
	db $db                                           ; $5e71: $db
	rst $38                                          ; $5e72: $ff
	sub [hl]                                         ; $5e73: $96
	sbc a                                            ; $5e74: $9f
	rra                                              ; $5e75: $1f
	ld sp, hl                                        ; $5e76: $f9
	ld sp, hl                                        ; $5e77: $f9
	dec a                                            ; $5e78: $3d
	inc e                                            ; $5e79: $1c
	inc c                                            ; $5e7a: $0c
	ld c, $0e                                        ; $5e7b: $0e $0e
	db $dd                                           ; $5e7d: $dd
	rrca                                             ; $5e7e: $0f
	sbc $07                                          ; $5e7f: $de $07
	rst SubAFromDE                                          ; $5e81: $df
	inc bc                                           ; $5e82: $03
	ld a, e                                          ; $5e83: $7b
	and d                                            ; $5e84: $a2
	sbc d                                            ; $5e85: $9a
	rra                                              ; $5e86: $1f
	ld a, $7e                                        ; $5e87: $3e $7e
	ld a, h                                          ; $5e89: $7c
	ld a, h                                          ; $5e8a: $7c
	sbc $01                                          ; $5e8b: $de $01
	sbc d                                            ; $5e8d: $9a
	inc bc                                           ; $5e8e: $03
	ld [bc], a                                       ; $5e8f: $02
	ld b, $04                                        ; $5e90: $06 $04
	inc c                                            ; $5e92: $0c
	xor $9b                                          ; $5e93: $ee $9b
	ld bc, $7f07                                     ; $5e95: $01 $07 $7f
	add hl, de                                       ; $5e98: $19
	ld a, e                                          ; $5e99: $7b
	sub h                                            ; $5e9a: $94
	ld a, e                                          ; $5e9b: $7b
	ld hl, sp-$80                                    ; $5e9c: $f8 $80
	ld h, b                                          ; $5e9e: $60
	rra                                              ; $5e9f: $1f
	rlca                                             ; $5ea0: $07
	rlca                                             ; $5ea1: $07
	rrca                                             ; $5ea2: $0f
	ld e, $35                                        ; $5ea3: $1e $35
	dec hl                                           ; $5ea5: $2b
	ld [hl], e                                       ; $5ea6: $73
	ld [hl], a                                       ; $5ea7: $77
	ld d, [hl]                                       ; $5ea8: $56
	ld b, $0c                                        ; $5ea9: $06 $0c
	add hl, de                                       ; $5eab: $19
	ld a, [hl-]                                      ; $5eac: $3a
	inc [hl]                                         ; $5ead: $34
	ld l, h                                          ; $5eae: $6c
	ld l, b                                          ; $5eaf: $68
	ld l, c                                          ; $5eb0: $69
	xor $fe                                          ; $5eb1: $ee $fe
	cp h                                             ; $5eb3: $bc
	cp h                                             ; $5eb4: $bc
	db $ed                                           ; $5eb5: $ed
	db $fd                                           ; $5eb6: $fd
	ld sp, hl                                        ; $5eb7: $f9
	db $db                                           ; $5eb8: $db
	pop de                                           ; $5eb9: $d1
	pop de                                           ; $5eba: $d1
	db $d3                                           ; $5ebb: $d3
	db $d3                                           ; $5ebc: $d3
	sub c                                            ; $5ebd: $91
	or e                                             ; $5ebe: $b3
	and e                                            ; $5ebf: $a3
	and a                                            ; $5ec0: $a7
	rst SubAFromBC                                          ; $5ec1: $e7
	rst FarCall                                          ; $5ec2: $f7

jr_06a_5ec3:
	xor $b6                                          ; $5ec3: $ee $b6
	push af                                          ; $5ec5: $f5
	sbc a                                            ; $5ec6: $9f
	ret nc                                           ; $5ec7: $d0

	ld e, b                                          ; $5ec8: $58
	ret                                              ; $5ec9: $c9


	rst GetHLinHL                                          ; $5eca: $cf
	sbc a                                            ; $5ecb: $9f
	ld a, e                                          ; $5ecc: $7b
	ld a, a                                          ; $5ecd: $7f
	add h                                            ; $5ece: $84
	cp a                                             ; $5ecf: $bf
	or a                                             ; $5ed0: $b7
	scf                                              ; $5ed1: $37
	adc l                                            ; $5ed2: $8d
	sbc l                                            ; $5ed3: $9d
	dec d                                            ; $5ed4: $15
	dec d                                            ; $5ed5: $15
	or l                                             ; $5ed6: $b5
	ld l, a                                          ; $5ed7: $6f
	cp e                                             ; $5ed8: $bb
	db $db                                           ; $5ed9: $db
	ld [hl], e                                       ; $5eda: $73

jr_06a_5edb:
	ld h, e                                          ; $5edb: $63
	db $eb                                           ; $5edc: $eb
	db $eb                                           ; $5edd: $eb
	ld c, e                                          ; $5ede: $4b
	db $d3                                           ; $5edf: $d3
	rst SubAFromHL                                          ; $5ee0: $d7
	or a                                             ; $5ee1: $b7
	ld h, $26                                        ; $5ee2: $26 $26
	ld c, l                                          ; $5ee4: $4d
	ld c, l                                          ; $5ee5: $4d
	ld c, c                                          ; $5ee6: $49
	sbc c                                            ; $5ee7: $99
	sbc c                                            ; $5ee8: $99
	sub c                                            ; $5ee9: $91
	reti                                             ; $5eea: $d9


	rst $38                                          ; $5eeb: $ff
	sbc e                                            ; $5eec: $9b
	ld sp, $2021                                     ; $5eed: $31 $21 $20
	daa                                              ; $5ef0: $27
	db $dd                                           ; $5ef1: $dd
	ccf                                              ; $5ef2: $3f
	db $dd                                           ; $5ef3: $dd
	rst $38                                          ; $5ef4: $ff
	sbc d                                            ; $5ef5: $9a
	db $fc                                           ; $5ef6: $fc
	pop hl                                           ; $5ef7: $e1
	pop hl                                           ; $5ef8: $e1
	db $e3                                           ; $5ef9: $e3
	ccf                                              ; $5efa: $3f
	sbc $9f                                          ; $5efb: $de $9f
	sbc b                                            ; $5efd: $98
	rst GetHLinHL                                          ; $5efe: $cf
	pop hl                                           ; $5eff: $e1
	rst $38                                          ; $5f00: $ff
	ld a, c                                          ; $5f01: $79
	cp $fc                                           ; $5f02: $fe $fc
	db $fc                                           ; $5f04: $fc
	ld a, e                                          ; $5f05: $7b
	ld c, h                                          ; $5f06: $4c
	sbc c                                            ; $5f07: $99
	cp $c0                                           ; $5f08: $fe $c0
	ld [hl], c                                       ; $5f0a: $71
	ldh [$e0], a                                     ; $5f0b: $e0 $e0
	jr nc, @-$01                                     ; $5f0d: $30 $fd

	rst SubAFromDE                                          ; $5f0f: $df
	ret nz                                           ; $5f10: $c0

	sbc l                                            ; $5f11: $9d
	ldh [rAUD1SWEEP], a                              ; $5f12: $e0 $10
	db $ed                                           ; $5f14: $ed
	add b                                            ; $5f15: $80
	rlca                                             ; $5f16: $07
	dec e                                            ; $5f17: $1d
	ld [hl], a                                       ; $5f18: $77
	cp $60                                           ; $5f19: $fe $60
	ld [hl], a                                       ; $5f1b: $77
	cp c                                             ; $5f1c: $b9
	rst SubAFromBC                                          ; $5f1d: $e7
	rlca                                             ; $5f1e: $07
	ld e, $78                                        ; $5f1f: $1e $78
	pop bc                                           ; $5f21: $c1
	sbc a                                            ; $5f22: $9f
	ld hl, sp-$3a                                    ; $5f23: $f8 $c6
	jr jr_06a_5ec3                                   ; $5f25: $18 $9c

	ld [hl], e                                       ; $5f27: $73
	rst SubAFromBC                                          ; $5f28: $e7
	rst GetHLinHL                                          ; $5f29: $cf
	sbc e                                            ; $5f2a: $9b
	inc [hl]                                         ; $5f2b: $34
	add hl, hl                                       ; $5f2c: $29
	ld b, e                                          ; $5f2d: $43
	ld h, e                                          ; $5f2e: $63
	adc h                                            ; $5f2f: $8c
	jr jr_06a_5f62                                   ; $5f30: $18 $30

	ld h, b                                          ; $5f32: $60
	jp nz, $8ec4                                     ; $5f33: $c2 $c4 $8e

	adc h                                            ; $5f36: $8c
	ld d, [hl]                                       ; $5f37: $56
	jr nc, jr_06a_5edb                               ; $5f38: $30 $a1

	xor d                                            ; $5f3a: $aa
	or $d3                                           ; $5f3b: $f6 $d3
	jp c, $89b4                                      ; $5f3d: $da $b4 $89

	adc e                                            ; $5f40: $8b
	ld a, [de]                                       ; $5f41: $1a
	ld [de], a                                       ; $5f42: $12
	ld [de], a                                       ; $5f43: $12
	ld [hl], $37                                     ; $5f44: $36 $37
	ld l, a                                          ; $5f46: $6f
	ldh [$c1], a                                     ; $5f47: $e0 $c1
	sbc [hl]                                         ; $5f49: $9e
	ld [$9efa], sp                                   ; $5f4a: $08 $fa $9e
	ld a, [bc]                                       ; $5f4d: $0a
	ld a, e                                          ; $5f4e: $7b
	or c                                             ; $5f4f: $b1
	db $dd                                           ; $5f50: $dd
	ld [bc], a                                       ; $5f51: $02
	ld sp, hl                                        ; $5f52: $f9
	ld l, e                                          ; $5f53: $6b
	db $f4                                           ; $5f54: $f4
	sbc [hl]                                         ; $5f55: $9e
	ld b, b                                          ; $5f56: $40
	ld a, [$789e]                                    ; $5f57: $fa $9e $78
	ld h, a                                          ; $5f5a: $67
	ld hl, sp-$7e                                    ; $5f5b: $f8 $82
	xor $bb                                          ; $5f5d: $ee $bb
	db $ed                                           ; $5f5f: $ed
	ld a, [hl]                                       ; $5f60: $7e
	dec c                                            ; $5f61: $0d

jr_06a_5f62:
	ldh [c], a                                       ; $5f62: $e2
	db $fd                                           ; $5f63: $fd
	ret nz                                           ; $5f64: $c0

	ldh a, [c]                                       ; $5f65: $f2
	ld a, l                                          ; $5f66: $7d
	ld e, $83                                        ; $5f67: $1e $83
	di                                               ; $5f69: $f3
	dec e                                            ; $5f6a: $1d
	ld [bc], a                                       ; $5f6b: $02
	ccf                                              ; $5f6c: $3f
	ld sp, $01c0                                     ; $5f6d: $31 $c0 $01
	add hl, sp                                       ; $5f70: $39
	and $02                                          ; $5f71: $e6 $02
	rlca                                             ; $5f73: $07
	ld c, d                                          ; $5f74: $4a
	rst GetHLinHL                                          ; $5f75: $cf
	inc bc                                           ; $5f76: $03
	rst $38                                          ; $5f77: $ff
	rst $38                                          ; $5f78: $ff
	rra                                              ; $5f79: $1f
	ld a, d                                          ; $5f7a: $7a
	sbc $8f                                          ; $5f7b: $de $8f
	sub c                                            ; $5f7d: $91
	add l                                            ; $5f7e: $85
	rst AddAOntoHL                                          ; $5f7f: $ef
	ld a, a                                          ; $5f80: $7f
	ld a, a                                          ; $5f81: $7f
	rst $38                                          ; $5f82: $ff
	rst SubAFromDE                                          ; $5f83: $df
	rst SubAFromDE                                          ; $5f84: $df
	ld a, a                                          ; $5f85: $7f
	ld a, a                                          ; $5f86: $7f
	ld e, b                                          ; $5f87: $58
	ret c                                            ; $5f88: $d8

	ret nc                                           ; $5f89: $d0

	ret nc                                           ; $5f8a: $d0

	ldh a, [$f0]                                     ; $5f8b: $f0 $f0
	ldh [$c1], a                                     ; $5f8d: $e0 $c1
	call c, $df80                                    ; $5f8f: $dc $80 $df
	ret nz                                           ; $5f92: $c0

	sbc [hl]                                         ; $5f93: $9e
	sub b                                            ; $5f94: $90
	ld a, d                                          ; $5f95: $7a
	ret nc                                           ; $5f96: $d0

	adc d                                            ; $5f97: $8a
	ldh a, [$f8]                                     ; $5f98: $f0 $f8
	call z, $d0e0                                    ; $5f9a: $cc $e0 $d0
	ret z                                            ; $5f9d: $c8

jr_06a_5f9e:
	ld h, d                                          ; $5f9e: $62
	ld e, b                                          ; $5f9f: $58
	ld c, l                                          ; $5fa0: $4d
	ld b, e                                          ; $5fa1: $43
	ld b, b                                          ; $5fa2: $40
	ld h, b                                          ; $5fa3: $60
	jr nz, jr_06a_5f9e                               ; $5fa4: $20 $f8

	ld l, [hl]                                       ; $5fa6: $6e
	ld e, l                                          ; $5fa7: $5d
	ld c, a                                          ; $5fa8: $4f
	ld b, a                                          ; $5fa9: $47
	ld b, e                                          ; $5faa: $43
	ld h, e                                          ; $5fab: $63
	ld hl, $2342                                     ; $5fac: $21 $42 $23
	add b                                            ; $5faf: $80
	add [hl]                                         ; $5fb0: $86
	sbc $fb                                          ; $5fb1: $de $fb
	cp l                                             ; $5fb3: $bd
	cpl                                              ; $5fb4: $2f
	call c, $01b3                                    ; $5fb5: $dc $b3 $01
	add a                                            ; $5fb8: $87
	reti                                             ; $5fb9: $d9


	ld [hl], a                                       ; $5fba: $77

jr_06a_5fbb:
	ld a, [hl]                                       ; $5fbb: $7e
	ldh a, [$e3]                                     ; $5fbc: $f0 $e3
	call c, $80e0                                    ; $5fbe: $dc $e0 $80
	rlca                                             ; $5fc1: $07
	ld bc, $c418                                     ; $5fc2: $01 $18 $c4
	or [hl]                                          ; $5fc5: $b6
	ld a, [hl+]                                      ; $5fc6: $2a
	rst $38                                          ; $5fc7: $ff
	rst $38                                          ; $5fc8: $ff
	ld hl, sp-$02                                    ; $5fc9: $f8 $fe
	rst JumpTable                                          ; $5fcb: $c7
	di                                               ; $5fcc: $f3
	ld sp, hl                                        ; $5fcd: $f9
	db $dd                                           ; $5fce: $dd
	sub h                                            ; $5fcf: $94
	sub l                                            ; $5fd0: $95
	db $ed                                           ; $5fd1: $ed
	ldh a, [c]                                       ; $5fd2: $f2
	ld a, [$fbfb]                                    ; $5fd3: $fa $fb $fb
	rst $38                                          ; $5fd6: $ff
	rst $38                                          ; $5fd7: $ff
	xor $f6                                          ; $5fd8: $ee $f6
	rra                                              ; $5fda: $1f
	ld a, c                                          ; $5fdb: $79
	adc $df                                          ; $5fdc: $ce $df
	dec b                                            ; $5fde: $05
	ldh [$c1], a                                     ; $5fdf: $e0 $c1
	db $db                                           ; $5fe1: $db
	inc b                                            ; $5fe2: $04
	adc c                                            ; $5fe3: $89
	inc c                                            ; $5fe4: $0c
	inc d                                            ; $5fe5: $14
	inc c                                            ; $5fe6: $0c
	inc c                                            ; $5fe7: $0c
	inc e                                            ; $5fe8: $1c
	inc a                                            ; $5fe9: $3c
	ld a, h                                          ; $5fea: $7c
	call nz, $140c                                   ; $5feb: $c4 $0c $14
	inc h                                            ; $5fee: $24
	ld l, b                                          ; $5fef: $68
	sbc b                                            ; $5ff0: $98
	jr c, jr_06a_5fbb                                ; $5ff1: $38 $c8

	ld [$1018], sp                                   ; $5ff3: $08 $18 $10
	inc a                                            ; $5ff6: $3c
	ld l, b                                          ; $5ff7: $68
	cp b                                             ; $5ff8: $b8
	ld hl, sp+$77                                    ; $5ff9: $f8 $77
	ld hl, sp-$0f                                    ; $5ffb: $f8 $f1
	sub a                                            ; $5ffd: $97
	ret nz                                           ; $5ffe: $c0

	add b                                            ; $5fff: $80
	ldh a, [rAUD3HIGH]                               ; $6000: $f0 $1e
	di                                               ; $6002: $f3
	ei                                               ; $6003: $fb
	ld a, l                                          ; $6004: $7d
	ld e, $7b                                        ; $6005: $1e $7b
	ld hl, sp-$80                                    ; $6007: $f8 $80
	cp $0f                                           ; $6009: $fe $0f
	inc b                                            ; $600b: $04
	add d                                            ; $600c: $82
	pop hl                                           ; $600d: $e1
	ret                                              ; $600e: $c9


	db $e4                                           ; $600f: $e4
	ldh a, [c]                                       ; $6010: $f2
	ld [hl-], a                                      ; $6011: $32
	dec de                                           ; $6012: $1b
	sbc c                                            ; $6013: $99
	ld c, e                                          ; $6014: $4b
	ld c, d                                          ; $6015: $4a
	jr nc, @+$1a                                     ; $6016: $30 $18

	inc c                                            ; $6018: $0c
	inc c                                            ; $6019: $0c
	inc b                                            ; $601a: $04
	ld b, $86                                        ; $601b: $06 $86
	add a                                            ; $601d: $87
	dec hl                                           ; $601e: $2b
	xor l                                            ; $601f: $ad
	cp l                                             ; $6020: $bd
	sbc l                                            ; $6021: $9d
	call $e5ed                                       ; $6022: $cd $ed $e5
	ld d, l                                          ; $6025: $55
	rst JumpTable                                          ; $6026: $c7
	ld b, e                                          ; $6027: $43
	ld a, a                                          ; $6028: $7f
	inc hl                                           ; $6029: $23
	rst SubAFromDE                                          ; $602a: $df
	inc sp                                           ; $602b: $33
	sbc l                                            ; $602c: $9d
	dec sp                                           ; $602d: $3b
	cp e                                             ; $602e: $bb
	ldh [$c1], a                                     ; $602f: $e0 $c1
	adc l                                            ; $6031: $8d
	cp a                                             ; $6032: $bf
	sbc a                                            ; $6033: $9f
	rst SubAFromDE                                          ; $6034: $df
	ld c, a                                          ; $6035: $4f
	ld c, a                                          ; $6036: $4f
	ld b, a                                          ; $6037: $47
	daa                                              ; $6038: $27
	inc hl                                           ; $6039: $23
	rst $38                                          ; $603a: $ff
	di                                               ; $603b: $f3
	ld hl, sp-$08                                    ; $603c: $f8 $f8
	db $fc                                           ; $603e: $fc

Call_06a_603f:
	db $fc                                           ; $603f: $fc
	ld l, [hl]                                       ; $6040: $6e
	ld l, [hl]                                       ; $6041: $6e
	inc hl                                           ; $6042: $23
	ld bc, $99fb                                     ; $6043: $01 $fb $99
	daa                                              ; $6046: $27
	inc sp                                           ; $6047: $33
	inc sp                                           ; $6048: $33
	ld de, $0818                                     ; $6049: $11 $18 $08
	ld h, [hl]                                       ; $604c: $66
	ld [bc], a                                       ; $604d: $02
	ld c, d                                          ; $604e: $4a
	adc h                                            ; $604f: $8c
	ld a, [hl]                                       ; $6050: $7e
	sub h                                            ; $6051: $94
	sbc [hl]                                         ; $6052: $9e
	ret nc                                           ; $6053: $d0

	ld l, a                                          ; $6054: $6f
	ld hl, sp-$80                                    ; $6055: $f8 $80
	jr nz, jr_06a_6089                               ; $6057: $20 $30

	ld l, b                                          ; $6059: $68
	cp b                                             ; $605a: $b8
	sub h                                            ; $605b: $94
	call c, $cace                                    ; $605c: $dc $ce $ca
	ld [$98e6], a                                    ; $605f: $ea $e6 $98
	ld c, b                                          ; $6062: $48
	ld l, h                                          ; $6063: $6c
	inc h                                            ; $6064: $24
	ld [hl], $36                                     ; $6065: $36 $36
	ld d, $1a                                        ; $6067: $16 $1a
	and $e7                                          ; $6069: $e6 $e7

Jump_06a_606b:
	ld l, l                                          ; $606b: $6d
	db $ed                                           ; $606c: $ed
	xor a                                            ; $606d: $af
	ld l, e                                          ; $606e: $6b
	ld c, e                                          ; $606f: $4b
	dec hl                                           ; $6070: $2b
	ld a, [de]                                       ; $6071: $1a
	dec de                                           ; $6072: $1b
	sbc e                                            ; $6073: $9b
	sbc e                                            ; $6074: $9b
	reti                                             ; $6075: $d9


	sub d                                            ; $6076: $92
	db $dd                                           ; $6077: $dd
	db $fd                                           ; $6078: $fd
	db $fd                                           ; $6079: $fd
	and l                                            ; $607a: $a5
	sub l                                            ; $607b: $95
	sbc d                                            ; $607c: $9a
	ld c, l                                          ; $607d: $4d
	rst GetHLinHL                                          ; $607e: $cf
	ld h, h                                          ; $607f: $64
	dec c                                            ; $6080: $0d
	ld e, $ff                                        ; $6081: $1e $ff
	cp $dd                                           ; $6083: $fe $dd
	rst $38                                          ; $6085: $ff
	adc b                                            ; $6086: $88
	or $e3                                           ; $6087: $f6 $e3

jr_06a_6089:
	sbc l                                            ; $6089: $9d
	rst SubAFromHL                                          ; $608a: $d7
	jp nc, Jump_06a_7db9                             ; $608b: $d2 $b9 $7d

	db $f4                                           ; $608e: $f4
	xor [hl]                                         ; $608f: $ae
	jp c, $e1e3                                      ; $6090: $da $e3 $e1

	pop hl                                           ; $6093: $e1
	ldh [$b0], a                                     ; $6094: $e0 $b0
	sbc b                                            ; $6096: $98
	ret c                                            ; $6097: $d8

	db $ec                                           ; $6098: $ec
	ld c, h                                          ; $6099: $4c
	ld c, h                                          ; $609a: $4c
	ld b, [hl]                                       ; $609b: $46
	ld h, [hl]                                       ; $609c: $66
	ld h, [hl]                                       ; $609d: $66
	sbc $25                                          ; $609e: $de $25
	ld [hl], e                                       ; $60a0: $73
	pop hl                                           ; $60a1: $e1
	sbc $ff                                          ; $60a2: $de $ff
	sbc b                                            ; $60a4: $98
	ld h, l                                          ; $60a5: $65
	ld b, l                                          ; $60a6: $45
	ret                                              ; $60a7: $c9


	bit 7, a                                         ; $60a8: $cb $7f
	rra                                              ; $60aa: $1f
	sbc a                                            ; $60ab: $9f
	db $db                                           ; $60ac: $db
	rst $38                                          ; $60ad: $ff
	sbc h                                            ; $60ae: $9c
	ld sp, hl                                        ; $60af: $f9
	cp $e1                                           ; $60b0: $fe $e1
	reti                                             ; $60b2: $d9


	rst $38                                          ; $60b3: $ff
	sbc e                                            ; $60b4: $9b
	db $fc                                           ; $60b5: $fc
	ld b, $03                                        ; $60b6: $06 $03
	inc bc                                           ; $60b8: $03
	ld a, e                                          ; $60b9: $7b
	ld h, l                                          ; $60ba: $65
	sbc [hl]                                         ; $60bb: $9e
	ret nz                                           ; $60bc: $c0

	db $dd                                           ; $60bd: $dd
	rst $38                                          ; $60be: $ff
	rst SubAFromDE                                          ; $60bf: $df
	ld a, a                                          ; $60c0: $7f
	rst SubAFromDE                                          ; $60c1: $df
	ccf                                              ; $60c2: $3f
	ld [hl], d                                       ; $60c3: $72
	ld a, [bc]                                       ; $60c4: $0a
	sbc h                                            ; $60c5: $9c
	ldh [$60], a                                     ; $60c6: $e0 $60
	ld [hl], b                                       ; $60c8: $70
	ld [hl], a                                       ; $60c9: $77
	ld hl, sp-$65                                    ; $60ca: $f8 $9b
	ld b, b                                          ; $60cc: $40
	ret nz                                           ; $60cd: $c0

	ld h, b                                          ; $60ce: $60
	and b                                            ; $60cf: $a0
	ld [hl], e                                       ; $60d0: $73
	ldh a, [$7b]                                     ; $60d1: $f0 $7b
	rst AddAOntoHL                                          ; $60d3: $ef
	adc d                                            ; $60d4: $8a
	ldh a, [$50]                                     ; $60d5: $f0 $50
	xor b                                            ; $60d7: $a8
	call c, $d664                                    ; $60d8: $dc $64 $d6
	ld [$30da], a                                    ; $60db: $ea $da $30
	or b                                             ; $60de: $b0
	ret c                                            ; $60df: $d8

	db $ec                                           ; $60e0: $ec
	db $fc                                           ; $60e1: $fc
	ld a, [hl]                                       ; $60e2: $7e
	ld e, [hl]                                       ; $60e3: $5e
	ld l, [hl]                                       ; $60e4: $6e
	daa                                              ; $60e5: $27
	dec h                                            ; $60e6: $25
	daa                                              ; $60e7: $27
	inc de                                           ; $60e8: $13
	inc de                                           ; $60e9: $13
	sbc $19                                          ; $60ea: $de $19
	sbc $7f                                          ; $60ec: $de $7f
	sub [hl]                                         ; $60ee: $96
	ccf                                              ; $60ef: $3f
	cp a                                             ; $60f0: $bf
	cp a                                             ; $60f1: $bf
	rst $38                                          ; $60f2: $ff
	rst $38                                          ; $60f3: $ff
	dec [hl]                                         ; $60f4: $35
	dec h                                            ; $60f5: $25
	dec [hl]                                         ; $60f6: $35
	db $fd                                           ; $60f7: $fd
	reti                                             ; $60f8: $d9


	rst $38                                          ; $60f9: $ff
	sub b                                            ; $60fa: $90
	ld h, a                                          ; $60fb: $67
	sub e                                            ; $60fc: $93
	ld c, e                                          ; $60fd: $4b
	ld hl, $fead                                     ; $60fe: $21 $ad $fe
	cp $7f                                           ; $6101: $fe $7f
	cp a                                             ; $6103: $bf
	cp a                                             ; $6104: $bf
	rst SubAFromDE                                          ; $6105: $df
	ld l, a                                          ; $6106: $6f
	db $d3                                           ; $6107: $d3
	ld b, c                                          ; $6108: $41
	ld bc, $af77                                     ; $6109: $01 $77 $af
	adc [hl]                                         ; $610c: $8e
	ldh a, [$73]                                     ; $610d: $f0 $73
	ld e, e                                          ; $610f: $5b
	ld c, e                                          ; $6110: $4b
	ld d, a                                          ; $6111: $57
	ld [hl], a                                       ; $6112: $77
	ld l, [hl]                                       ; $6113: $6e
	ld a, [hl]                                       ; $6114: $7e
	ld e, [hl]                                       ; $6115: $5e
	db $fc                                           ; $6116: $fc
	call c, $d8cc                                    ; $6117: $dc $cc $d8
	ld hl, sp-$0f                                    ; $611a: $f8 $f1
	pop hl                                           ; $611c: $e1
	pop hl                                           ; $611d: $e1
	ld a, e                                          ; $611e: $7b
	and d                                            ; $611f: $a2
	rst SubAFromDE                                          ; $6120: $df
	jr nz, @-$1f                                     ; $6121: $20 $df

	sub b                                            ; $6123: $90
	sbc [hl]                                         ; $6124: $9e
	adc b                                            ; $6125: $88
	ld [hl], a                                       ; $6126: $77
	db $e3                                           ; $6127: $e3
	sbc e                                            ; $6128: $9b
	ldh [rSVBK], a                                   ; $6129: $e0 $70
	ld [hl], b                                       ; $612b: $70
	ld a, b                                          ; $612c: $78
	sbc $c8                                          ; $612d: $de $c8
	sbc d                                            ; $612f: $9a
	sbc b                                            ; $6130: $98
	db $10                                           ; $6131: $10
	jr nc, jr_06a_6154                               ; $6132: $30 $20

	ld h, b                                          ; $6134: $60
	sbc $38                                          ; $6135: $de $38
	sbc d                                            ; $6137: $9a
	ld a, b                                          ; $6138: $78
	ldh a, [$f0]                                     ; $6139: $f0 $f0
	ldh [$e0], a                                     ; $613b: $e0 $e0
	inc hl                                           ; $613d: $23
	nop                                              ; $613e: $00
	adc e                                            ; $613f: $8b
	adc b                                            ; $6140: $88
	xor $88                                          ; $6141: $ee $88
	ld de, $8811                                     ; $6143: $11 $11 $88
	adc b                                            ; $6146: $88
	nop                                              ; $6147: $00
	ld de, $8844                                     ; $6148: $11 $44 $88
	nop                                              ; $614b: $00
	sbc c                                            ; $614c: $99
	sbc c                                            ; $614d: $99
	ld [hl], a                                       ; $614e: $77
	adc b                                            ; $614f: $88
	inc sp                                           ; $6150: $33
	sbc c                                            ; $6151: $99
	sbc c                                            ; $6152: $99
	ld h, [hl]                                       ; $6153: $66

jr_06a_6154:
	ld l, a                                          ; $6154: $6f
	ei                                               ; $6155: $fb
	ld [hl], e                                       ; $6156: $73
	pop af                                           ; $6157: $f1
	ld a, e                                          ; $6158: $7b
	rst SubAFromBC                                          ; $6159: $e7
	ld a, a                                          ; $615a: $7f
	ei                                               ; $615b: $fb
	sbc h                                            ; $615c: $9c

jr_06a_615d:
	ld de, $eeee                                     ; $615d: $11 $ee $ee
	rst GetHLinHL                                          ; $6160: $cf
	ld bc, $2d80                                     ; $6161: $01 $80 $2d
	rst $38                                          ; $6164: $ff
	ld e, e                                          ; $6165: $5b
	cp $fe                                           ; $6166: $fe $fe
	db $fd                                           ; $6168: $fd
	pop af                                           ; $6169: $f1
	rst SubAFromDE                                          ; $616a: $df
	rst SubAFromDE                                          ; $616b: $df
	cp [hl]                                          ; $616c: $be
	cp $81                                           ; $616d: $fe $81
	cp e                                             ; $616f: $bb
	rst JumpTable                                          ; $6170: $c7
	xor $dd                                          ; $6171: $ee $dd
	ld sp, hl                                        ; $6173: $f9
	ld b, c                                          ; $6174: $41
	pop hl                                           ; $6175: $e1
	ld b, b                                          ; $6176: $40
	rst JumpTable                                          ; $6177: $c7
	ld h, b                                          ; $6178: $60
	jp $f060                                         ; $6179: $c3 $60 $f0


	jr nz, @-$1e                                     ; $617c: $20 $e0

	ld [hl], b                                       ; $617e: $70
	db $10                                           ; $617f: $10
	ldh a, [$f8]                                     ; $6180: $f0 $f8
	sub l                                            ; $6182: $95
	jr c, jr_06a_615d                                ; $6183: $38 $d8

	jr c, @-$0a                                      ; $6185: $38 $f4

	inc e                                            ; $6187: $1c
	ld [hl], d                                       ; $6188: $72
	cp [hl]                                          ; $6189: $be
	db $e3                                           ; $618a: $e3
	rst $38                                          ; $618b: $ff
	ld [hl+], a                                      ; $618c: $22
	ld [hl], e                                       ; $618d: $73
	cp $80                                           ; $618e: $fe $80
	inc sp                                           ; $6190: $33
	rst $38                                          ; $6191: $ff
	scf                                              ; $6192: $37
	cp $9f                                           ; $6193: $fe $9f
	cp $bf                                           ; $6195: $fe $bf
	db $f4                                           ; $6197: $f4

jr_06a_6198:
	rst $38                                          ; $6198: $ff
	db $ec                                           ; $6199: $ec

Jump_06a_619a:
	rst $38                                          ; $619a: $ff
	call z, $88fe                                    ; $619b: $cc $fe $88
	ld [$ca08], a                                    ; $619e: $ea $08 $ca
	ld [$30f8], sp                                   ; $61a1: $08 $f8 $30
	ld hl, sp+$10                                    ; $61a4: $f8 $10
	jr jr_06a_6198                                   ; $61a6: $18 $f0

	db $fc                                           ; $61a8: $fc
	ret z                                            ; $61a9: $c8

	db $fc                                           ; $61aa: $fc
	nop                                              ; $61ab: $00
	inc a                                            ; $61ac: $3c
	ret nz                                           ; $61ad: $c0

	ret c                                            ; $61ae: $d8

	sub a                                            ; $61af: $97
	ldh [$b8], a                                     ; $61b0: $e0 $b8
	or b                                             ; $61b2: $b0
	ld [hl], b                                       ; $61b3: $70
	ldh [$e0], a                                     ; $61b4: $e0 $e0
	ret nz                                           ; $61b6: $c0

	pop hl                                           ; $61b7: $e1
	cp a                                             ; $61b8: $bf
	add e                                            ; $61b9: $83
	ld bc, $029b                                     ; $61ba: $01 $9b $02
	inc bc                                           ; $61bd: $03
	ld [bc], a                                       ; $61be: $02
	inc bc                                           ; $61bf: $03
	cp a                                             ; $61c0: $bf
	nop                                              ; $61c1: $00
	rrca                                             ; $61c2: $0f
	adc a                                            ; $61c3: $8f
	dec b                                            ; $61c4: $05
	rrca                                             ; $61c5: $0f
	ld [$3c13], sp                                   ; $61c6: $08 $13 $3c
	ld l, $1f                                        ; $61c9: $2e $1f
	ld a, a                                          ; $61cb: $7f
	ld bc, $0e71                                     ; $61cc: $01 $71 $0e
	cpl                                              ; $61cf: $2f
	rra                                              ; $61d0: $1f
	ld a, $1e                                        ; $61d1: $3e $1e
	inc de                                           ; $61d3: $13
	ld a, e                                          ; $61d4: $7b
	jp hl                                            ; $61d5: $e9


jr_06a_61d6:
	sbc [hl]                                         ; $61d6: $9e
	rrca                                             ; $61d7: $0f
	cp e                                             ; $61d8: $bb
	add a                                            ; $61d9: $87
	ret nz                                           ; $61da: $c0

	add b                                            ; $61db: $80
	ld bc, $9001                                     ; $61dc: $01 $01 $90
	add b                                            ; $61df: $80
	rst $38                                          ; $61e0: $ff
	ret z                                            ; $61e1: $c8

	rst $38                                          ; $61e2: $ff
	db $ec                                           ; $61e3: $ec
	ld a, a                                          ; $61e4: $7f
	ld [hl], $ff                                     ; $61e5: $36 $ff
	ei                                               ; $61e7: $fb
	rst $38                                          ; $61e8: $ff
	cp $07                                           ; $61e9: $fe $07
	ld a, a                                          ; $61eb: $7f
	add e                                            ; $61ec: $83
	db $eb                                           ; $61ed: $eb
	rst FarCall                                          ; $61ee: $f7
	ld a, l                                          ; $61ef: $7d
	add $ff                                          ; $61f0: $c6 $ff
	add h                                            ; $61f2: $84
	rst FarCall                                          ; $61f3: $f7
	inc c                                            ; $61f4: $0c
	ld a, a                                          ; $61f5: $7f
	inc c                                            ; $61f6: $0c
	ld a, a                                          ; $61f7: $7f
	add hl, bc                                       ; $61f8: $09
	rst AddAOntoHL                                          ; $61f9: $ef
	dec de                                           ; $61fa: $1b
	cp $1f                                           ; $61fb: $fe $1f
	jp c, $923f                                      ; $61fd: $da $3f $92

	cp $37                                           ; $6200: $fe $37
	rst FarCall                                          ; $6202: $f7
	ld [hl], e                                       ; $6203: $73
	rst $38                                          ; $6204: $ff
	pop hl                                           ; $6205: $e1
	xor a                                            ; $6206: $af
	db $e3                                           ; $6207: $e3
	inc de                                           ; $6208: $13
	di                                               ; $6209: $f3
	dec e                                            ; $620a: $1d
	rst $38                                          ; $620b: $ff
	ld de, $fe73                                     ; $620c: $11 $73 $fe
	sub c                                            ; $620f: $91
	inc de                                           ; $6210: $13
	rst $38                                          ; $6211: $ff
	sub d                                            ; $6212: $92
	rst $38                                          ; $6213: $ff
	adc d                                            ; $6214: $8a
	rst $38                                          ; $6215: $ff
	adc c                                            ; $6216: $89
	rst $38                                          ; $6217: $ff
	ret                                              ; $6218: $c9


	rst $38                                          ; $6219: $ff
	push bc                                          ; $621a: $c5
	rst $38                                          ; $621b: $ff
	and h                                            ; $621c: $a4
	rst $38                                          ; $621d: $ff
	ld [hl], a                                       ; $621e: $77
	ld b, b                                          ; $621f: $40
	adc a                                            ; $6220: $8f
	rst $38                                          ; $6221: $ff
	db $fc                                           ; $6222: $fc
	ldh a, [$df]                                     ; $6223: $f0 $df
	rst SubAFromDE                                          ; $6225: $df
	cp a                                             ; $6226: $bf
	rst $38                                          ; $6227: $ff
	add b                                            ; $6228: $80
	cp b                                             ; $6229: $b8
	rst JumpTable                                          ; $622a: $c7
	rst AddAOntoHL                                          ; $622b: $ef
	rst SubAFromDE                                          ; $622c: $df
	or $4b                                           ; $622d: $f6 $4b
	db $e3                                           ; $622f: $e3
	ld b, c                                          ; $6230: $41
	ld d, a                                          ; $6231: $57
	ld b, b                                          ; $6232: $40
	ld l, a                                          ; $6233: $6f
	ld h, b                                          ; $6234: $60
	sbc h                                            ; $6235: $9c
	call c, $fce8                                    ; $6236: $dc $e8 $fc
	cp a                                             ; $6239: $bf
	db $fc                                           ; $623a: $fc
	jr c, jr_06a_61d6                                ; $623b: $38 $99

	ret nz                                           ; $623d: $c0

	add sp, -$10                                     ; $623e: $e8 $f0
	ld d, b                                          ; $6240: $50
	ldh [$a0], a                                     ; $6241: $e0 $a0
	inc sp                                           ; $6243: $33
	ld h, b                                          ; $6244: $60
	sub h                                            ; $6245: $94
	ld a, l                                          ; $6246: $7d
	inc bc                                           ; $6247: $03
	ld a, a                                          ; $6248: $7f
	nop                                              ; $6249: $00
	jr nc, jr_06a_625b                               ; $624a: $30 $0f

	ccf                                              ; $624c: $3f
	rra                                              ; $624d: $1f
	inc e                                            ; $624e: $1c
	rlca                                             ; $624f: $07
	rlca                                             ; $6250: $07
	inc sp                                           ; $6251: $33
	ld h, b                                          ; $6252: $60
	sub h                                            ; $6253: $94
	db $db                                           ; $6254: $db
	rst $38                                          ; $6255: $ff
	xor $37                                          ; $6256: $ee $37
	rst $38                                          ; $6258: $ff
	inc bc                                           ; $6259: $03
	db $eb                                           ; $625a: $eb

jr_06a_625b:
	rst FarCall                                          ; $625b: $f7
	db $fd                                           ; $625c: $fd
	add $7f                                          ; $625d: $c6 $7f
	ld d, e                                          ; $625f: $53
	ld h, b                                          ; $6260: $60
	ld d, a                                          ; $6261: $57
	add b                                            ; $6262: $80
	sub a                                            ; $6263: $97
	cp a                                             ; $6264: $bf
	ret nz                                           ; $6265: $c0

	rst AddAOntoHL                                          ; $6266: $ef
	ret nc                                           ; $6267: $d0

	rst FarCall                                          ; $6268: $f7
	ld c, a                                          ; $6269: $4f
	db $ed                                           ; $626a: $ed
	ld b, e                                          ; $626b: $43
	ccf                                              ; $626c: $3f
	add b                                            ; $626d: $80
	sbc [hl]                                         ; $626e: $9e
	db $fc                                           ; $626f: $fc
	ld [hl], e                                       ; $6270: $73
	add b                                            ; $6271: $80
	sbc c                                            ; $6272: $99
	ld hl, sp+$00                                    ; $6273: $f8 $00
	xor b                                            ; $6275: $a8
	ld [hl], b                                       ; $6276: $70
	ld h, b                                          ; $6277: $60
	ldh a, [$36]                                     ; $6278: $f0 $36
	ldh [$9c], a                                     ; $627a: $e0 $9c
	inc l                                            ; $627c: $2c
	rra                                              ; $627d: $1f
	ld a, a                                          ; $627e: $7f
	ld a, e                                          ; $627f: $7b
	add b                                            ; $6280: $80
	sub a                                            ; $6281: $97
	ccf                                              ; $6282: $3f
	nop                                              ; $6283: $00
	inc sp                                           ; $6284: $33
	inc c                                            ; $6285: $0c
	rrca                                             ; $6286: $0f
	rra                                              ; $6287: $1f
	inc bc                                           ; $6288: $03
	rlca                                             ; $6289: $07
	ccf                                              ; $628a: $3f
	add b                                            ; $628b: $80
	sub e                                            ; $628c: $93
	halt                                             ; $628d: $76
	cp a                                             ; $628e: $bf
	db $db                                           ; $628f: $db
	rst $38                                          ; $6290: $ff
	xor [hl]                                         ; $6291: $ae
	ld [hl], a                                       ; $6292: $77
	rst $38                                          ; $6293: $ff
	inc bc                                           ; $6294: $03
	swap a                                           ; $6295: $cb $37
	db $dd                                           ; $6297: $dd
	and $17                                          ; $6298: $e6 $17
	add b                                            ; $629a: $80
	sbc c                                            ; $629b: $99
	rst $38                                          ; $629c: $ff
	ret nz                                           ; $629d: $c0

	db $eb                                           ; $629e: $eb
	ld e, h                                          ; $629f: $5c
	db $eb                                           ; $62a0: $eb
	ld b, a                                          ; $62a1: $47
	ld b, a                                          ; $62a2: $47
	add b                                            ; $62a3: $80
	sbc c                                            ; $62a4: $99
	sbc b                                            ; $62a5: $98
	ld [hl], b                                       ; $62a6: $70
	ld a, h                                          ; $62a7: $7c
	add sp, -$04                                     ; $62a8: $e8 $fc
	add b                                            ; $62aa: $80
	ld [hl], a                                       ; $62ab: $77
	add b                                            ; $62ac: $80
	ld a, a                                          ; $62ad: $7f
	cp $9b                                           ; $62ae: $fe $9b
	and b                                            ; $62b0: $a0
	ld [hl], b                                       ; $62b1: $70
	ret nz                                           ; $62b2: $c0

	ldh [$1f], a                                     ; $62b3: $e0 $1f
	add b                                            ; $62b5: $80
	ld a, a                                          ; $62b6: $7f
	cp $9b                                           ; $62b7: $fe $9b
	dec bc                                           ; $62b9: $0b
	inc e                                            ; $62ba: $1c
	rlca                                             ; $62bb: $07
	rrca                                             ; $62bc: $0f
	scf                                              ; $62bd: $37
	add b                                            ; $62be: $80
	sbc h                                            ; $62bf: $9c
	sbc e                                            ; $62c0: $9b
	rst $38                                          ; $62c1: $ff
	cp $7b                                           ; $62c2: $fe $7b
	add b                                            ; $62c4: $80
	sbc c                                            ; $62c5: $99
	ei                                               ; $62c6: $fb
	rlca                                             ; $62c7: $07
	ld l, l                                          ; $62c8: $6d
	or $bf                                           ; $62c9: $f6 $bf
	call nz, $8057                                   ; $62cb: $c4 $57 $80
	rst SubAFromDE                                          ; $62ce: $df
	dec b                                            ; $62cf: $05
	ld a, a                                          ; $62d0: $7f
	or [hl]                                          ; $62d1: $b6
	rst $38                                          ; $62d2: $ff
	ld a, a                                          ; $62d3: $7f
	or b                                             ; $62d4: $b0
	adc h                                            ; $62d5: $8c
	ret nz                                           ; $62d6: $c0

	add b                                            ; $62d7: $80
	ldh [$c0], a                                     ; $62d8: $e0 $c0
	ldh a, [$b8]                                     ; $62da: $f0 $b8
	db $fc                                           ; $62dc: $fc
	adc a                                            ; $62dd: $8f
	rst $38                                          ; $62de: $ff
	add e                                            ; $62df: $83
	rst $38                                          ; $62e0: $ff
	add b                                            ; $62e1: $80
	di                                               ; $62e2: $f3
	add b                                            ; $62e3: $80
	pop af                                           ; $62e4: $f1
	add b                                            ; $62e5: $80
	ldh [$80], a                                     ; $62e6: $e0 $80
	ret nz                                           ; $62e8: $c0

	ld [hl], e                                       ; $62e9: $73
	cp $92                                           ; $62ea: $fe $92
	ld a, [hl]                                       ; $62ec: $7e
	add c                                            ; $62ed: $81
	db $fc                                           ; $62ee: $fc
	inc bc                                           ; $62ef: $03
	db $fc                                           ; $62f0: $fc
	inc bc                                           ; $62f1: $03
	ld sp, hl                                        ; $62f2: $f9
	rlca                                             ; $62f3: $07
	rst FarCall                                          ; $62f4: $f7
	rrca                                             ; $62f5: $0f
	rst SubAFromDE                                          ; $62f6: $df

Jump_06a_62f7:
	ccf                                              ; $62f7: $3f
	ld a, a                                          ; $62f8: $7f
	call c, $9cff                                    ; $62f9: $dc $ff $9c
	push hl                                          ; $62fc: $e5
	rst $38                                          ; $62fd: $ff
	dec b                                            ; $62fe: $05
	ld a, e                                          ; $62ff: $7b
	cp $94                                           ; $6300: $fe $94
	add l                                            ; $6302: $85
	ld a, a                                          ; $6303: $7f
	push bc                                          ; $6304: $c5
	ccf                                              ; $6305: $3f
	push hl                                          ; $6306: $e5
	rra                                              ; $6307: $1f
	db $e4                                           ; $6308: $e4
	rra                                              ; $6309: $1f
	dec c                                            ; $630a: $0d
	dec b                                            ; $630b: $05
	inc b                                            ; $630c: $04
	ld a, e                                          ; $630d: $7b
	ld a, c                                          ; $630e: $79
	inc bc                                           ; $630f: $03
	ret nz                                           ; $6310: $c0

	inc hl                                           ; $6311: $23
	ret nz                                           ; $6312: $c0

	sbc c                                            ; $6313: $99
	inc c                                            ; $6314: $0c
	dec b                                            ; $6315: $05
	rrca                                             ; $6316: $0f
	rlca                                             ; $6317: $07
	rlca                                             ; $6318: $07
	ld [bc], a                                       ; $6319: $02
	rra                                              ; $631a: $1f
	ret nz                                           ; $631b: $c0

	ld a, l                                          ; $631c: $7d
	ld a, [hl+]                                      ; $631d: $2a
	rrca                                             ; $631e: $0f
	ret nz                                           ; $631f: $c0

	sbc b                                            ; $6320: $98
	dec b                                            ; $6321: $05
	dec c                                            ; $6322: $0d
	rrca                                             ; $6323: $0f
	rlca                                             ; $6324: $07
	ld [bc], a                                       ; $6325: $02
	rlca                                             ; $6326: $07
	add d                                            ; $6327: $82
	dec de                                           ; $6328: $1b
	ret nz                                           ; $6329: $c0

	sbc l                                            ; $632a: $9d
	ld a, h                                          ; $632b: $7c

jr_06a_632c:
	add e                                            ; $632c: $83
	rla                                              ; $632d: $17
	ret nz                                           ; $632e: $c0

	pop de                                           ; $632f: $d1
	ld bc, $2d80                                     ; $6330: $01 $80 $2d
	rst $38                                          ; $6333: $ff
	ld e, e                                          ; $6334: $5b
	cp $fe                                           ; $6335: $fe $fe
	rst $38                                          ; $6337: $ff
	rst FarCall                                          ; $6338: $f7
	reti                                             ; $6339: $d9


	rst $38                                          ; $633a: $ff
	add b                                            ; $633b: $80
	rst $38                                          ; $633c: $ff
	add b                                            ; $633d: $80
	cp a                                             ; $633e: $bf
	ret nz                                           ; $633f: $c0

	rst $38                                          ; $6340: $ff
	ret nz                                           ; $6341: $c0

	db $eb                                           ; $6342: $eb
	ld e, h                                          ; $6343: $5c
	db $eb                                           ; $6344: $eb
	ld b, a                                          ; $6345: $47
	ret nz                                           ; $6346: $c0

jr_06a_6347:
	ld h, b                                          ; $6347: $60
	ret nz                                           ; $6348: $c0

	ld h, b                                          ; $6349: $60

jr_06a_634a:
	ldh a, [rAUD4LEN]                                ; $634a: $f0 $20
	ldh [rSVBK], a                                   ; $634c: $e0 $70
	db $10                                           ; $634e: $10
	ldh a, [$f8]                                     ; $634f: $f0 $f8
	sub l                                            ; $6351: $95
	jr c, jr_06a_632c                                ; $6352: $38 $d8

	jr c, jr_06a_634a                                ; $6354: $38 $f4

	inc e                                            ; $6356: $1c
	ld [hl], d                                       ; $6357: $72
	cp [hl]                                          ; $6358: $be
	db $e3                                           ; $6359: $e3
	rst $38                                          ; $635a: $ff
	ld [hl+], a                                      ; $635b: $22
	ld [hl], e                                       ; $635c: $73
	cp $82                                           ; $635d: $fe $82
	inc sp                                           ; $635f: $33
	rst $38                                          ; $6360: $ff
	scf                                              ; $6361: $37
	cp $9f                                           ; $6362: $fe $9f
	cp $bf                                           ; $6364: $fe $bf
	db $f4                                           ; $6366: $f4
	rst $38                                          ; $6367: $ff
	db $ec                                           ; $6368: $ec
	rst $38                                          ; $6369: $ff
	call z, $88fe                                    ; $636a: $cc $fe $88
	ld [$ca08], a                                    ; $636d: $ea $08 $ca
	ld [$30f8], sp                                   ; $6370: $08 $f8 $30
	ld hl, sp+$10                                    ; $6373: $f8 $10
	jr c, jr_06a_6347                                ; $6375: $38 $d0

	call c, $ece8                                    ; $6377: $dc $e8 $ec
	jr nc, @-$02                                     ; $637a: $30 $fc

	cp [hl]                                          ; $637c: $be
	ld hl, sp-$08                                    ; $637d: $f8 $f8
	and b                                            ; $637f: $a0
	sbc e                                            ; $6380: $9b
	ld [hl], b                                       ; $6381: $70
	ret nz                                           ; $6382: $c0

	ldh [rSB], a                                     ; $6383: $e0 $01
	cp a                                             ; $6385: $bf
	inc bc                                           ; $6386: $03
	ld bc, $029b                                     ; $6387: $01 $9b $02
	inc bc                                           ; $638a: $03
	ld [bc], a                                       ; $638b: $02
	inc bc                                           ; $638c: $03
	cp a                                             ; $638d: $bf
	nop                                              ; $638e: $00
	rrca                                             ; $638f: $0f
	sub e                                            ; $6390: $93
	dec b                                            ; $6391: $05
	rrca                                             ; $6392: $0f
	ld [$031c], sp                                   ; $6393: $08 $1c $03
	inc sp                                           ; $6396: $33
	rrca                                             ; $6397: $0f
	ld a, a                                          ; $6398: $7f
	inc e                                            ; $6399: $1c
	ld l, a                                          ; $639a: $6f
	db $10                                           ; $639b: $10
	ccf                                              ; $639c: $3f
	cp a                                             ; $639d: $bf
	ccf                                              ; $639e: $3f
	dec bc                                           ; $639f: $0b
	sbc e                                            ; $63a0: $9b
	inc e                                            ; $63a1: $1c
	rlca                                             ; $63a2: $07
	rrca                                             ; $63a3: $0f
	nop                                              ; $63a4: $00
	cp e                                             ; $63a5: $bb
	add b                                            ; $63a6: $80
	ret nz                                           ; $63a7: $c0

	add b                                            ; $63a8: $80
	ld bc, $9001                                     ; $63a9: $01 $01 $90
	sbc l                                            ; $63ac: $9d
	rst $38                                          ; $63ad: $ff
	ret z                                            ; $63ae: $c8

	ld a, e                                          ; $63af: $7b
	or e                                             ; $63b0: $b3
	add b                                            ; $63b1: $80
	ld [hl], $ff                                     ; $63b2: $36 $ff
	db $db                                           ; $63b4: $db
	ccf                                              ; $63b5: $3f
	cp $07                                           ; $63b6: $fe $07
	rst $38                                          ; $63b8: $ff
	inc bc                                           ; $63b9: $03
	ei                                               ; $63ba: $fb
	rlca                                             ; $63bb: $07
	ld l, l                                          ; $63bc: $6d
	or $bf                                           ; $63bd: $f6 $bf
	call nz, $0cf7                                   ; $63bf: $c4 $f7 $0c
	ccf                                              ; $63c2: $3f
	inc c                                            ; $63c3: $0c
	ld a, a                                          ; $63c4: $7f
	add hl, bc                                       ; $63c5: $09
	rst AddAOntoHL                                          ; $63c6: $ef
	dec de                                           ; $63c7: $1b
	cp $1f                                           ; $63c8: $fe $1f
	jp c, $fe3f                                      ; $63ca: $da $3f $fe

	scf                                              ; $63cd: $37
	rst FarCall                                          ; $63ce: $f7
	ld [hl], e                                       ; $63cf: $73
	rst $38                                          ; $63d0: $ff
	sub a                                            ; $63d1: $97
	pop hl                                           ; $63d2: $e1
	xor a                                            ; $63d3: $af
	db $e3                                           ; $63d4: $e3
	inc de                                           ; $63d5: $13
	di                                               ; $63d6: $f3
	dec e                                            ; $63d7: $1d
	rst $38                                          ; $63d8: $ff
	ld de, $fe73                                     ; $63d9: $11 $73 $fe
	sub c                                            ; $63dc: $91
	inc de                                           ; $63dd: $13
	rst $38                                          ; $63de: $ff
	sub d                                            ; $63df: $92
	rst $38                                          ; $63e0: $ff
	adc d                                            ; $63e1: $8a
	rst $38                                          ; $63e2: $ff
	adc c                                            ; $63e3: $89
	rst $38                                          ; $63e4: $ff
	ret                                              ; $63e5: $c9


	rst $38                                          ; $63e6: $ff
	push bc                                          ; $63e7: $c5
	rst $38                                          ; $63e8: $ff
	and h                                            ; $63e9: $a4
	rst $38                                          ; $63ea: $ff
	ld [hl], a                                       ; $63eb: $77
	ld b, b                                          ; $63ec: $40
	rst SubAFromDE                                          ; $63ed: $df
	rst $38                                          ; $63ee: $ff
	sbc [hl]                                         ; $63ef: $9e
	or $6b                                           ; $63f0: $f6 $6b
	ld b, b                                          ; $63f2: $40
	sbc c                                            ; $63f3: $99
	rst AddAOntoHL                                          ; $63f4: $ef
	ret nc                                           ; $63f5: $d0

	or $4f                                           ; $63f6: $f6 $4f
	db $ed                                           ; $63f8: $ed
	ld b, e                                          ; $63f9: $43
	ld d, a                                          ; $63fa: $57
	ld b, b                                          ; $63fb: $40
	ld c, a                                          ; $63fc: $4f
	ld h, b                                          ; $63fd: $60
	sbc c                                            ; $63fe: $99
	xor b                                            ; $63ff: $a8

jr_06a_6400:
	ld [hl], b                                       ; $6400: $70
	ret nc                                           ; $6401: $d0

	ldh [$c0], a                                     ; $6402: $e0 $c0
	add b                                            ; $6404: $80
	ccf                                              ; $6405: $3f
	ld h, b                                          ; $6406: $60
	sbc d                                            ; $6407: $9a
	scf                                              ; $6408: $37
	rrca                                             ; $6409: $0f
	ld e, e                                          ; $640a: $5b
	inc a                                            ; $640b: $3c
	ld a, a                                          ; $640c: $7f
	cp a                                             ; $640d: $bf
	ccf                                              ; $640e: $3f
	inc sp                                           ; $640f: $33
	sbc d                                            ; $6410: $9a
	inc c                                            ; $6411: $0c
	rrca                                             ; $6412: $0f
	rra                                              ; $6413: $1f
	dec bc                                           ; $6414: $0b
	rlca                                             ; $6415: $07
	rra                                              ; $6416: $1f
	ld h, b                                          ; $6417: $60
	sbc c                                            ; $6418: $99
	swap a                                           ; $6419: $cb $37
	db $dd                                           ; $641b: $dd
	and $7f                                          ; $641c: $e6 $7f
	add h                                            ; $641e: $84
	ld d, a                                          ; $641f: $57
	ld h, b                                          ; $6420: $60
	ld a, a                                          ; $6421: $7f
	add b                                            ; $6422: $80
	sbc [hl]                                         ; $6423: $9e
	ld e, d                                          ; $6424: $5a
	sbc $ff                                          ; $6425: $de $ff
	sbc l                                            ; $6427: $9d
	rst SubAFromHL                                          ; $6428: $d7
	ld hl, sp+$77                                    ; $6429: $f8 $77
	add b                                            ; $642b: $80
	sub a                                            ; $642c: $97
	cp b                                             ; $642d: $b8
	rst JumpTable                                          ; $642e: $c7
	rst AddAOntoHL                                          ; $642f: $ef
	rst SubAFromDE                                          ; $6430: $df
	ldh a, [c]                                       ; $6431: $f2
	ld c, a                                          ; $6432: $4f
	db $eb                                           ; $6433: $eb
	ld b, c                                          ; $6434: $41
	ccf                                              ; $6435: $3f
	add b                                            ; $6436: $80
	sbc h                                            ; $6437: $9c
	db $ec                                           ; $6438: $ec
	ld hl, sp-$34                                    ; $6439: $f8 $cc
	ld a, e                                          ; $643b: $7b
	add b                                            ; $643c: $80
	sbc b                                            ; $643d: $98
	jr c, jr_06a_6400                                ; $643e: $38 $c0

	add sp, -$10                                     ; $6440: $e8 $f0
	or b                                             ; $6442: $b0
	ret nz                                           ; $6443: $c0

	ld b, b                                          ; $6444: $40
	ld b, e                                          ; $6445: $43
	add b                                            ; $6446: $80
	sub b                                            ; $6447: $90
	add hl, de                                       ; $6448: $19
	rlca                                             ; $6449: $07
	ld h, $1f                                        ; $644a: $26 $1f
	ld e, a                                          ; $644c: $5f
	jr nc, jr_06a_64ce                               ; $644d: $30 $7f

	nop                                              ; $644f: $00
	jr nc, jr_06a_6461                               ; $6450: $30 $0f

	ccf                                              ; $6452: $3f
	rra                                              ; $6453: $1f
	inc e                                            ; $6454: $1c
	rlca                                             ; $6455: $07
	rlca                                             ; $6456: $07
	ld a, e                                          ; $6457: $7b
	jp hl                                            ; $6458: $e9


	daa                                              ; $6459: $27
	add b                                            ; $645a: $80
	sbc e                                            ; $645b: $9b
	db $eb                                           ; $645c: $eb
	rst FarCall                                          ; $645d: $f7
	db $fd                                           ; $645e: $fd
	add $27                                          ; $645f: $c6 $27

jr_06a_6461:
	add b                                            ; $6461: $80
	sub [hl]                                         ; $6462: $96
	db $fd                                           ; $6463: $fd
	add e                                            ; $6464: $83
	cp a                                             ; $6465: $bf
	rst JumpTable                                          ; $6466: $c7
	db $ed                                           ; $6467: $ed
	rst SubAFromDE                                          ; $6468: $df
	push af                                          ; $6469: $f5
	ld c, e                                          ; $646a: $4b
	add sp, $43                                      ; $646b: $e8 $43
	add b                                            ; $646d: $80
	sbc h                                            ; $646e: $9c
	cp b                                             ; $646f: $b8
	ret nc                                           ; $6470: $d0

	ld l, h                                          ; $6471: $6c
	ld a, e                                          ; $6472: $7b
	add b                                            ; $6473: $80
	sbc c                                            ; $6474: $99
	sbc h                                            ; $6475: $9c
	ldh [$e8], a                                     ; $6476: $e0 $e8
	ldh a, [rBCPS]                                   ; $6478: $f0 $68
	ld d, b                                          ; $647a: $50
	sbc $c0                                          ; $647b: $de $c0
	dec hl                                           ; $647d: $2b
	add b                                            ; $647e: $80
	sub [hl]                                         ; $647f: $96
	ld [hl], e                                       ; $6480: $73
	rrca                                             ; $6481: $0f
	cpl                                              ; $6482: $2f
	rra                                              ; $6483: $1f
	inc l                                            ; $6484: $2c
	ld d, $07                                        ; $6485: $16 $07
	rlca                                             ; $6487: $07
	ld b, $3b                                        ; $6488: $06 $3b
	add b                                            ; $648a: $80
	sub c                                            ; $648b: $91
	halt                                             ; $648c: $76
	cp a                                             ; $648d: $bf
	ei                                               ; $648e: $fb
	rra                                              ; $648f: $1f
	ld a, [hl]                                       ; $6490: $7e
	add a                                            ; $6491: $87
	cp a                                             ; $6492: $bf
	jp $f7eb                                         ; $6493: $c3 $eb $f7


	ld e, l                                          ; $6496: $5d
	and [hl]                                         ; $6497: $a6
	ld a, a                                          ; $6498: $7f
	inc b                                            ; $6499: $04
	ld d, a                                          ; $649a: $57
	add b                                            ; $649b: $80
	sbc l                                            ; $649c: $9d
	inc b                                            ; $649d: $04
	dec b                                            ; $649e: $05
	ld [hl], a                                       ; $649f: $77
	cp d                                             ; $64a0: $ba
	adc d                                            ; $64a1: $8a
	add e                                            ; $64a2: $83
	nop                                              ; $64a3: $00
	ret nz                                           ; $64a4: $c0

	add b                                            ; $64a5: $80
	ldh [$c0], a                                     ; $64a6: $e0 $c0
	ldh a, [$b8]                                     ; $64a8: $f0 $b8
	db $fc                                           ; $64aa: $fc
	adc a                                            ; $64ab: $8f
	rst $38                                          ; $64ac: $ff
	add e                                            ; $64ad: $83
	rst $38                                          ; $64ae: $ff
	add b                                            ; $64af: $80
	di                                               ; $64b0: $f3
	add b                                            ; $64b1: $80
	pop af                                           ; $64b2: $f1
	add b                                            ; $64b3: $80
	ldh [$80], a                                     ; $64b4: $e0 $80
	ret nz                                           ; $64b6: $c0

	ld [hl], e                                       ; $64b7: $73
	cp $92                                           ; $64b8: $fe $92
	cp $81                                           ; $64ba: $fe $81
	db $fc                                           ; $64bc: $fc
	inc bc                                           ; $64bd: $03
	db $fc                                           ; $64be: $fc
	inc bc                                           ; $64bf: $03
	ld sp, hl                                        ; $64c0: $f9
	rlca                                             ; $64c1: $07
	rst FarCall                                          ; $64c2: $f7
	rrca                                             ; $64c3: $0f
	rst SubAFromDE                                          ; $64c4: $df
	ccf                                              ; $64c5: $3f
	ld a, a                                          ; $64c6: $7f
	call c, $9cff                                    ; $64c7: $dc $ff $9c
	push hl                                          ; $64ca: $e5
	rst $38                                          ; $64cb: $ff
	dec b                                            ; $64cc: $05
	ld a, e                                          ; $64cd: $7b

jr_06a_64ce:
	cp $92                                           ; $64ce: $fe $92
	add l                                            ; $64d0: $85
	ld a, a                                          ; $64d1: $7f
	push bc                                          ; $64d2: $c5
	ccf                                              ; $64d3: $3f
	push hl                                          ; $64d4: $e5
	rra                                              ; $64d5: $1f
	db $e4                                           ; $64d6: $e4
	rra                                              ; $64d7: $1f
	inc c                                            ; $64d8: $0c
	dec b                                            ; $64d9: $05
	rlca                                             ; $64da: $07
	inc bc                                           ; $64db: $03
	inc bc                                           ; $64dc: $03
	inc de                                           ; $64dd: $13
	ret nz                                           ; $64de: $c0

	sbc l                                            ; $64df: $9d
	ld a, h                                          ; $64e0: $7c
	add e                                            ; $64e1: $83
	rla                                              ; $64e2: $17
	ret nz                                           ; $64e3: $c0

	sbc l                                            ; $64e4: $9d
	ld [$7a0d], sp                                   ; $64e5: $08 $0d $7a
	ld d, b                                          ; $64e8: $50
	sbc [hl]                                         ; $64e9: $9e
	inc bc                                           ; $64ea: $03
	rra                                              ; $64eb: $1f
	ret nz                                           ; $64ec: $c0

	sbc l                                            ; $64ed: $9d
	cp [hl]                                          ; $64ee: $be
	pop bc                                           ; $64ef: $c1
	rlca                                             ; $64f0: $07
	ret nz                                           ; $64f1: $c0

	sbc [hl]                                         ; $64f2: $9e
	rrca                                             ; $64f3: $0f
	ld a, d                                          ; $64f4: $7a
	adc [hl]                                         ; $64f5: $8e
	dec de                                           ; $64f6: $1b
	add b                                            ; $64f7: $80
	sbc d                                            ; $64f8: $9a
	pop bc                                           ; $64f9: $c1
	db $fc                                           ; $64fa: $fc
	add e                                            ; $64fb: $83

jr_06a_64fc:
	ld a, h                                          ; $64fc: $7c
	add e                                            ; $64fd: $83
	rra                                              ; $64fe: $1f
	ret nz                                           ; $64ff: $c0

	adc $01                                          ; $6500: $ce $01
	sbc h                                            ; $6502: $9c
	dec l                                            ; $6503: $2d
	rst $38                                          ; $6504: $ff
	ld e, d                                          ; $6505: $5a
	sbc $ff                                          ; $6506: $de $ff
	add b                                            ; $6508: $80
	rst FarCall                                          ; $6509: $f7
	ret c                                            ; $650a: $d8

	rst $38                                          ; $650b: $ff
	add b                                            ; $650c: $80
	cp $81                                           ; $650d: $fe $81
	cp e                                             ; $650f: $bb
	rst JumpTable                                          ; $6510: $c7
	xor $df                                          ; $6511: $ee $df
	push af                                          ; $6513: $f5
	ld c, e                                          ; $6514: $4b
	add sp, $41                                      ; $6515: $e8 $41
	ret nz                                           ; $6517: $c0

jr_06a_6518:
	ld h, b                                          ; $6518: $60
	ret nz                                           ; $6519: $c0

jr_06a_651a:
	ld h, b                                          ; $651a: $60
	ldh a, [rAUD4LEN]                                ; $651b: $f0 $20
	ldh [rSVBK], a                                   ; $651d: $e0 $70
	db $10                                           ; $651f: $10
	ldh a, [$f8]                                     ; $6520: $f0 $f8
	jr c, jr_06a_64fc                                ; $6522: $38 $d8

	jr c, jr_06a_651a                                ; $6524: $38 $f4

	inc e                                            ; $6526: $1c
	ld [hl], d                                       ; $6527: $72
	sbc e                                            ; $6528: $9b
	cp [hl]                                          ; $6529: $be
	db $e3                                           ; $652a: $e3
	rst $38                                          ; $652b: $ff
	ld [hl+], a                                      ; $652c: $22
	ld [hl], e                                       ; $652d: $73
	cp $80                                           ; $652e: $fe $80
	inc sp                                           ; $6530: $33
	rst $38                                          ; $6531: $ff
	scf                                              ; $6532: $37
	cp $9f                                           ; $6533: $fe $9f
	cp $bf                                           ; $6535: $fe $bf
	db $f4                                           ; $6537: $f4
	rst $38                                          ; $6538: $ff
	db $ec                                           ; $6539: $ec
	rst $38                                          ; $653a: $ff
	call z, $88fe                                    ; $653b: $cc $fe $88
	ld [$ca08], a                                    ; $653e: $ea $08 $ca
	ld [$30f8], sp                                   ; $6541: $08 $f8 $30
	ld hl, sp+$10                                    ; $6544: $f8 $10
	jr c, jr_06a_6518                                ; $6546: $38 $d0

	db $ec                                           ; $6548: $ec
	ld hl, sp-$34                                    ; $6549: $f8 $cc
	jr nc, jr_06a_65a9                               ; $654b: $30 $5c

	ldh [$e8], a                                     ; $654d: $e0 $e8
	sbc h                                            ; $654f: $9c
	ldh a, [rBCPS]                                   ; $6550: $f0 $68
	ld d, b                                          ; $6552: $50
	sbc $c0                                          ; $6553: $de $c0
	sbc l                                            ; $6555: $9d
	add b                                            ; $6556: $80
	ld bc, $03bf                                     ; $6557: $01 $bf $03
	ld bc, $029b                                     ; $655a: $01 $9b $02
	inc bc                                           ; $655d: $03
	ld [bc], a                                       ; $655e: $02
	inc bc                                           ; $655f: $03
	cp a                                             ; $6560: $bf
	nop                                              ; $6561: $00
	rrca                                             ; $6562: $0f
	adc l                                            ; $6563: $8d
	dec b                                            ; $6564: $05
	rrca                                             ; $6565: $0f
	ld [$0718], sp                                   ; $6566: $08 $18 $07
	daa                                              ; $6569: $27
	rra                                              ; $656a: $1f
	ld e, a                                          ; $656b: $5f
	jr nc, jr_06a_65d3                               ; $656c: $30 $65

	ld e, $2f                                        ; $656e: $1e $2f
	rra                                              ; $6570: $1f
	inc l                                            ; $6571: $2c
	ld d, $07                                        ; $6572: $16 $07
	rlca                                             ; $6574: $07
	ld b, $7b                                        ; $6575: $06 $7b
	jp hl                                            ; $6577: $e9


	sbc [hl]                                         ; $6578: $9e
	add b                                            ; $6579: $80
	cp h                                             ; $657a: $bc
	ret nz                                           ; $657b: $c0

	add b                                            ; $657c: $80
	ld bc, $9001                                     ; $657d: $01 $01 $90
	add b                                            ; $6580: $80
	rst $38                                          ; $6581: $ff
	ret z                                            ; $6582: $c8

	rst $38                                          ; $6583: $ff
	ld l, h                                          ; $6584: $6c
	rst $38                                          ; $6585: $ff
	or [hl]                                          ; $6586: $b6
	rst $38                                          ; $6587: $ff
	ei                                               ; $6588: $fb
	rra                                              ; $6589: $1f
	cp $07                                           ; $658a: $fe $07
	cp a                                             ; $658c: $bf
	jp $f7eb                                         ; $658d: $c3 $eb $f7


	ld e, l                                          ; $6590: $5d
	and [hl]                                         ; $6591: $a6
	ld a, a                                          ; $6592: $7f
	inc b                                            ; $6593: $04
	rst FarCall                                          ; $6594: $f7
	inc c                                            ; $6595: $0c
	ccf                                              ; $6596: $3f
	inc c                                            ; $6597: $0c
	ld a, a                                          ; $6598: $7f
	add hl, bc                                       ; $6599: $09
	rst AddAOntoHL                                          ; $659a: $ef
	dec de                                           ; $659b: $1b
	cp $1f                                           ; $659c: $fe $1f
	jp c, $923f                                      ; $659e: $da $3f $92

	cp $37                                           ; $65a1: $fe $37
	rst FarCall                                          ; $65a3: $f7
	ld [hl], e                                       ; $65a4: $73
	rst $38                                          ; $65a5: $ff
	pop hl                                           ; $65a6: $e1
	xor a                                            ; $65a7: $af
	db $e3                                           ; $65a8: $e3

jr_06a_65a9:
	inc de                                           ; $65a9: $13
	di                                               ; $65aa: $f3
	dec e                                            ; $65ab: $1d
	rst $38                                          ; $65ac: $ff
	ld de, $fe73                                     ; $65ad: $11 $73 $fe
	add b                                            ; $65b0: $80
	inc de                                           ; $65b1: $13
	rst $38                                          ; $65b2: $ff
	sub d                                            ; $65b3: $92
	rst $38                                          ; $65b4: $ff
	adc d                                            ; $65b5: $8a
	rst $38                                          ; $65b6: $ff
	adc c                                            ; $65b7: $89
	rst $38                                          ; $65b8: $ff
	ret                                              ; $65b9: $c9


	rst $38                                          ; $65ba: $ff
	push bc                                          ; $65bb: $c5
	rst $38                                          ; $65bc: $ff
	and h                                            ; $65bd: $a4
	rst $38                                          ; $65be: $ff
	dec l                                            ; $65bf: $2d
	rst $38                                          ; $65c0: $ff
	ld e, e                                          ; $65c1: $5b
	cp $fe                                           ; $65c2: $fe $fe
	rst $38                                          ; $65c4: $ff
	rst FarCall                                          ; $65c5: $f7
	reti                                             ; $65c6: $d9


	rst $38                                          ; $65c7: $ff
	add b                                            ; $65c8: $80
	rst $38                                          ; $65c9: $ff
	add b                                            ; $65ca: $80
	cp b                                             ; $65cb: $b8
	rst JumpTable                                          ; $65cc: $c7
	rst AddAOntoHL                                          ; $65cd: $ef
	rst SubAFromDE                                          ; $65ce: $df
	ldh a, [c]                                       ; $65cf: $f2
	sbc l                                            ; $65d0: $9d
	ld c, a                                          ; $65d1: $4f
	jp hl                                            ; $65d2: $e9


jr_06a_65d3:
	ld d, e                                          ; $65d3: $53
	ld b, b                                          ; $65d4: $40
	ld l, a                                          ; $65d5: $6f
	ld h, b                                          ; $65d6: $60
	sub d                                            ; $65d7: $92
	call z, $ecf8                                    ; $65d8: $cc $f8 $ec
	jr nc, @-$02                                     ; $65db: $30 $fc

	nop                                              ; $65dd: $00
	jr c, @-$3e                                      ; $65de: $38 $c0

	add sp, -$10                                     ; $65e0: $e8 $f0
	or b                                             ; $65e2: $b0
	ret nz                                           ; $65e3: $c0

	ld b, b                                          ; $65e4: $40
	ld b, e                                          ; $65e5: $43
	ld h, b                                          ; $65e6: $60
	sub b                                            ; $65e7: $90
	inc e                                            ; $65e8: $1c
	inc bc                                           ; $65e9: $03
	inc sp                                           ; $65ea: $33
	rrca                                             ; $65eb: $0f
	ld e, a                                          ; $65ec: $5f
	jr c, @+$81                                      ; $65ed: $38 $7f

	nop                                              ; $65ef: $00
	db $10                                           ; $65f0: $10
	cpl                                              ; $65f1: $2f
	ccf                                              ; $65f2: $3f
	rra                                              ; $65f3: $1f
	inc e                                            ; $65f4: $1c
	rlca                                             ; $65f5: $07
	rlca                                             ; $65f6: $07
	inc sp                                           ; $65f7: $33
	ld h, b                                          ; $65f8: $60
	sub e                                            ; $65f9: $93
	db $db                                           ; $65fa: $db
	ccf                                              ; $65fb: $3f
	cp $07                                           ; $65fc: $fe $07
	rst $38                                          ; $65fe: $ff
	inc bc                                           ; $65ff: $03
	db $eb                                           ; $6600: $eb
	rst FarCall                                          ; $6601: $f7
	db $fd                                           ; $6602: $fd
	add $7f                                          ; $6603: $c6 $7f
	add h                                            ; $6605: $84
	ld d, a                                          ; $6606: $57
	ld h, b                                          ; $6607: $60
	ld d, a                                          ; $6608: $57
	add b                                            ; $6609: $80
	sub a                                            ; $660a: $97
	cp a                                             ; $660b: $bf
	ret nz                                           ; $660c: $c0

	rst AddAOntoHL                                          ; $660d: $ef
	ret nc                                           ; $660e: $d0

	or $4f                                           ; $660f: $f6 $4f
	db $ed                                           ; $6611: $ed
	ld b, e                                          ; $6612: $43
	ld b, a                                          ; $6613: $47
	add b                                            ; $6614: $80
	sbc b                                            ; $6615: $98
	ld a, b                                          ; $6616: $78
	sub b                                            ; $6617: $90
	call c, $ace8                                    ; $6618: $dc $e8 $ac
	ld [hl], b                                       ; $661b: $70
	db $fc                                           ; $661c: $fc
	cp a                                             ; $661d: $bf
	ld hl, sp-$58                                    ; $661e: $f8 $a8
	sbc h                                            ; $6620: $9c
	ld [hl], b                                       ; $6621: $70
	ret nc                                           ; $6622: $d0

	ldh [$3e], a                                     ; $6623: $e0 $3e
	ldh [$67], a                                     ; $6625: $e0 $67
	add b                                            ; $6627: $80
	sub a                                            ; $6628: $97
	ccf                                              ; $6629: $3f
	nop                                              ; $662a: $00
	inc sp                                           ; $662b: $33
	inc c                                            ; $662c: $0c
	rrca                                             ; $662d: $0f
	rra                                              ; $662e: $1f
	dec bc                                           ; $662f: $0b
	rlca                                             ; $6630: $07
	rra                                              ; $6631: $1f
	add b                                            ; $6632: $80
	sbc e                                            ; $6633: $9b
	swap a                                           ; $6634: $cb $37
	db $dd                                           ; $6636: $dd
	and $33                                          ; $6637: $e6 $33
	add b                                            ; $6639: $80
	sbc [hl]                                         ; $663a: $9e
	db $db                                           ; $663b: $db
	ld l, a                                          ; $663c: $6f
	add b                                            ; $663d: $80
	sbc c                                            ; $663e: $99
	rst $38                                          ; $663f: $ff
	ret nz                                           ; $6640: $c0

	db $eb                                           ; $6641: $eb
	ld e, h                                          ; $6642: $5c
	db $eb                                           ; $6643: $eb
	ld b, a                                          ; $6644: $47
	rra                                              ; $6645: $1f
	add b                                            ; $6646: $80
	ld a, a                                          ; $6647: $7f
	cp $9b                                           ; $6648: $fe $9b
	and b                                            ; $664a: $a0
	ld [hl], b                                       ; $664b: $70
	ret nz                                           ; $664c: $c0

	ldh [rBGP], a                                    ; $664d: $e0 $47
	add b                                            ; $664f: $80
	sbc c                                            ; $6650: $99
	ld e, $01                                        ; $6651: $1e $01
	inc sp                                           ; $6653: $33
	rrca                                             ; $6654: $0f
	ld e, l                                          ; $6655: $5d
	ld a, $77                                        ; $6656: $3e $77
	add b                                            ; $6658: $80
	ld a, a                                          ; $6659: $7f
	cp $9b                                           ; $665a: $fe $9b
	dec bc                                           ; $665c: $0b
	inc e                                            ; $665d: $1c
	rlca                                             ; $665e: $07
	rrca                                             ; $665f: $0f
	ccf                                              ; $6660: $3f
	add b                                            ; $6661: $80
	sbc [hl]                                         ; $6662: $9e
	or $6b                                           ; $6663: $f6 $6b
	add b                                            ; $6665: $80
	sbc c                                            ; $6666: $99
	ei                                               ; $6667: $fb
	rlca                                             ; $6668: $07
	ld l, l                                          ; $6669: $6d
	or $bf                                           ; $666a: $f6 $bf
	call nz, $8057                                   ; $666c: $c4 $57 $80
	rst SubAFromDE                                          ; $666f: $df
	dec b                                            ; $6670: $05
	ld [hl], a                                       ; $6671: $77
	cp d                                             ; $6672: $ba
	adc d                                            ; $6673: $8a
	add e                                            ; $6674: $83
	nop                                              ; $6675: $00
	ret nz                                           ; $6676: $c0

	add b                                            ; $6677: $80
	ldh [$c0], a                                     ; $6678: $e0 $c0
	ldh a, [$b8]                                     ; $667a: $f0 $b8
	db $fc                                           ; $667c: $fc
	adc a                                            ; $667d: $8f
	rst $38                                          ; $667e: $ff
	add e                                            ; $667f: $83
	rst $38                                          ; $6680: $ff
	add b                                            ; $6681: $80
	di                                               ; $6682: $f3
	add b                                            ; $6683: $80
	pop af                                           ; $6684: $f1
	add b                                            ; $6685: $80
	ldh [$80], a                                     ; $6686: $e0 $80
	ret nz                                           ; $6688: $c0

	ld [hl], e                                       ; $6689: $73
	cp $92                                           ; $668a: $fe $92
	ld a, [hl]                                       ; $668c: $7e
	add c                                            ; $668d: $81
	db $fc                                           ; $668e: $fc
	inc bc                                           ; $668f: $03
	db $fc                                           ; $6690: $fc
	inc bc                                           ; $6691: $03
	ld sp, hl                                        ; $6692: $f9
	rlca                                             ; $6693: $07
	rst FarCall                                          ; $6694: $f7
	rrca                                             ; $6695: $0f
	rst SubAFromDE                                          ; $6696: $df
	ccf                                              ; $6697: $3f
	ld a, a                                          ; $6698: $7f
	call c, $9cff                                    ; $6699: $dc $ff $9c
	push hl                                          ; $669c: $e5
	rst $38                                          ; $669d: $ff
	dec b                                            ; $669e: $05
	ld a, e                                          ; $669f: $7b
	cp $94                                           ; $66a0: $fe $94
	add l                                            ; $66a2: $85
	ld a, a                                          ; $66a3: $7f
	push bc                                          ; $66a4: $c5
	ccf                                              ; $66a5: $3f
	push hl                                          ; $66a6: $e5
	rra                                              ; $66a7: $1f
	db $e4                                           ; $66a8: $e4
	rra                                              ; $66a9: $1f
	dec c                                            ; $66aa: $0d
	dec b                                            ; $66ab: $05
	inc b                                            ; $66ac: $04
	ld a, e                                          ; $66ad: $7b
	cp a                                             ; $66ae: $bf
	inc bc                                           ; $66af: $03
	ret nz                                           ; $66b0: $c0

	inc hl                                           ; $66b1: $23
	ret nz                                           ; $66b2: $c0

	sbc d                                            ; $66b3: $9a
	inc c                                            ; $66b4: $0c
	dec b                                            ; $66b5: $05
	dec bc                                           ; $66b6: $0b
	rlca                                             ; $66b7: $07
	ld bc, $c01b                                     ; $66b8: $01 $1b $c0
	ld a, l                                          ; $66bb: $7d
	ld a, [hl+]                                      ; $66bc: $2a
	rrca                                             ; $66bd: $0f
	ret nz                                           ; $66be: $c0

	sbc b                                            ; $66bf: $98
	dec b                                            ; $66c0: $05
	dec c                                            ; $66c1: $0d
	rrca                                             ; $66c2: $0f
	rlca                                             ; $66c3: $07
	ld [bc], a                                       ; $66c4: $02
	rlca                                             ; $66c5: $07
	add d                                            ; $66c6: $82
	dec de                                           ; $66c7: $1b
	ret nz                                           ; $66c8: $c0

	sbc l                                            ; $66c9: $9d

jr_06a_66ca:
	ld a, h                                          ; $66ca: $7c
	add e                                            ; $66cb: $83
	rla                                              ; $66cc: $17
	ret nz                                           ; $66cd: $c0

	and $01                                          ; $66ce: $e6 $01
	sbc h                                            ; $66d0: $9c
	dec l                                            ; $66d1: $2d
	rst $38                                          ; $66d2: $ff
	ld e, d                                          ; $66d3: $5a
	sbc $ff                                          ; $66d4: $de $ff
	add b                                            ; $66d6: $80
	rst FarCall                                          ; $66d7: $f7
	reti                                             ; $66d8: $d9


	rst $38                                          ; $66d9: $ff
	add b                                            ; $66da: $80
	cp $81                                           ; $66db: $fe $81
	cp e                                             ; $66dd: $bb
	rst JumpTable                                          ; $66de: $c7
	xor $df                                          ; $66df: $ee $df
	push af                                          ; $66e1: $f5
	ld c, e                                          ; $66e2: $4b
	jp hl                                            ; $66e3: $e9


	ld b, c                                          ; $66e4: $41
	ret nz                                           ; $66e5: $c0

jr_06a_66e6:
	ld h, b                                          ; $66e6: $60
	ret nz                                           ; $66e7: $c0

jr_06a_66e8:
	ld h, b                                          ; $66e8: $60
	ldh a, [rAUD4LEN]                                ; $66e9: $f0 $20
	ldh [rSVBK], a                                   ; $66eb: $e0 $70
	db $10                                           ; $66ed: $10
	ldh a, [$f8]                                     ; $66ee: $f0 $f8
	jr c, jr_06a_66ca                                ; $66f0: $38 $d8

	jr c, jr_06a_66e8                                ; $66f2: $38 $f4

	inc e                                            ; $66f4: $1c
	ld [hl], d                                       ; $66f5: $72
	sbc e                                            ; $66f6: $9b
	cp [hl]                                          ; $66f7: $be
	db $e3                                           ; $66f8: $e3
	rst $38                                          ; $66f9: $ff
	ld [hl+], a                                      ; $66fa: $22
	ld [hl], e                                       ; $66fb: $73
	cp $80                                           ; $66fc: $fe $80
	inc sp                                           ; $66fe: $33
	rst $38                                          ; $66ff: $ff
	scf                                              ; $6700: $37
	cp $9f                                           ; $6701: $fe $9f
	cp $bf                                           ; $6703: $fe $bf
	db $f4                                           ; $6705: $f4
	rst $38                                          ; $6706: $ff
	db $ec                                           ; $6707: $ec
	rst $38                                          ; $6708: $ff
	call z, $88fe                                    ; $6709: $cc $fe $88
	ld [$ca08], a                                    ; $670c: $ea $08 $ca
	ld [$30f8], sp                                   ; $670f: $08 $f8 $30
	ld hl, sp+$10                                    ; $6712: $f8 $10
	jr c, jr_06a_66e6                                ; $6714: $38 $d0

	db $ec                                           ; $6716: $ec
	ld hl, sp-$24                                    ; $6717: $f8 $dc
	jr nc, jr_06a_6797                               ; $6719: $30 $7c

	add b                                            ; $671b: $80
	ret c                                            ; $671c: $d8

	sub a                                            ; $671d: $97
	ldh [rBCPS], a                                   ; $671e: $e0 $68
	ld [hl], b                                       ; $6720: $70
	or b                                             ; $6721: $b0
	ret nz                                           ; $6722: $c0

	nop                                              ; $6723: $00
	add b                                            ; $6724: $80
	ld bc, $03bf                                     ; $6725: $01 $bf $03
	ld bc, $029b                                     ; $6728: $01 $9b $02
	inc bc                                           ; $672b: $03
	ld [bc], a                                       ; $672c: $02
	inc bc                                           ; $672d: $03
	cp a                                             ; $672e: $bf
	nop                                              ; $672f: $00
	rrca                                             ; $6730: $0f
	adc l                                            ; $6731: $8d
	dec b                                            ; $6732: $05
	rrca                                             ; $6733: $0f
	ld [$031c], sp                                   ; $6734: $08 $1c $03
	inc sp                                           ; $6737: $33
	rrca                                             ; $6738: $0f
	ld e, a                                          ; $6739: $5f
	inc a                                            ; $673a: $3c
	ld a, c                                          ; $673b: $79
	ld b, $27                                        ; $673c: $06 $27
	rra                                              ; $673e: $1f
	inc a                                            ; $673f: $3c
	ld e, $17                                        ; $6740: $1e $17
	rlca                                             ; $6742: $07
	dec b                                            ; $6743: $05
	ld a, e                                          ; $6744: $7b
	jp hl                                            ; $6745: $e9


	sbc [hl]                                         ; $6746: $9e
	add b                                            ; $6747: $80
	cp h                                             ; $6748: $bc
	ret nz                                           ; $6749: $c0

	add b                                            ; $674a: $80
	ld bc, $9001                                     ; $674b: $01 $01 $90
	add b                                            ; $674e: $80
	rst $38                                          ; $674f: $ff
	ret z                                            ; $6750: $c8

	rst $38                                          ; $6751: $ff
	ld l, h                                          ; $6752: $6c
	rst $38                                          ; $6753: $ff
	or [hl]                                          ; $6754: $b6
	rst $38                                          ; $6755: $ff
	ei                                               ; $6756: $fb
	rra                                              ; $6757: $1f
	cp $07                                           ; $6758: $fe $07
	ccf                                              ; $675a: $3f
	jp $f7eb                                         ; $675b: $c3 $eb $f7


	ld e, l                                          ; $675e: $5d
	and [hl]                                         ; $675f: $a6
	ld a, a                                          ; $6760: $7f
	inc b                                            ; $6761: $04
	rst FarCall                                          ; $6762: $f7
	inc c                                            ; $6763: $0c
	ccf                                              ; $6764: $3f
	inc c                                            ; $6765: $0c
	ld a, a                                          ; $6766: $7f
	add hl, bc                                       ; $6767: $09
	rst AddAOntoHL                                          ; $6768: $ef
	dec de                                           ; $6769: $1b

jr_06a_676a:
	cp $1f                                           ; $676a: $fe $1f
	jp c, $923f                                      ; $676c: $da $3f $92

	cp $37                                           ; $676f: $fe $37
	rst FarCall                                          ; $6771: $f7
	ld [hl], e                                       ; $6772: $73
	rst $38                                          ; $6773: $ff
	pop hl                                           ; $6774: $e1
	xor a                                            ; $6775: $af
	db $e3                                           ; $6776: $e3
	inc de                                           ; $6777: $13
	di                                               ; $6778: $f3
	dec e                                            ; $6779: $1d
	rst $38                                          ; $677a: $ff
	ld de, $fe73                                     ; $677b: $11 $73 $fe
	adc h                                            ; $677e: $8c
	inc de                                           ; $677f: $13
	rst $38                                          ; $6780: $ff
	sub d                                            ; $6781: $92
	rst $38                                          ; $6782: $ff
	adc d                                            ; $6783: $8a
	rst $38                                          ; $6784: $ff
	adc c                                            ; $6785: $89
	rst $38                                          ; $6786: $ff
	ret                                              ; $6787: $c9


	rst $38                                          ; $6788: $ff
	push bc                                          ; $6789: $c5
	rst $38                                          ; $678a: $ff
	and h                                            ; $678b: $a4
	rst $38                                          ; $678c: $ff
	dec l                                            ; $678d: $2d
	rst $38                                          ; $678e: $ff
	ld e, e                                          ; $678f: $5b
	cp $fe                                           ; $6790: $fe $fe
	ld [hl], e                                       ; $6792: $73
	ld b, b                                          ; $6793: $40
	ld a, a                                          ; $6794: $7f
	cp $99                                           ; $6795: $fe $99

jr_06a_6797:
	cp b                                             ; $6797: $b8
	rst JumpTable                                          ; $6798: $c7
	rst AddAOntoHL                                          ; $6799: $ef
	rst SubAFromDE                                          ; $679a: $df
	ldh a, [c]                                       ; $679b: $f2
	ld c, a                                          ; $679c: $4f
	ld c, a                                          ; $679d: $4f
	ld b, b                                          ; $679e: $40
	ld l, a                                          ; $679f: $6f
	ld h, b                                          ; $67a0: $60
	sub d                                            ; $67a1: $92
	call c, $ace8                                    ; $67a2: $dc $e8 $ac
	ld [hl], b                                       ; $67a5: $70
	db $fc                                           ; $67a6: $fc
	nop                                              ; $67a7: $00
	jr c, jr_06a_676a                                ; $67a8: $38 $c0

	add sp, -$10                                     ; $67aa: $e8 $f0
	or b                                             ; $67ac: $b0
	ret nz                                           ; $67ad: $c0

	ld b, b                                          ; $67ae: $40
	ld b, e                                          ; $67af: $43
	ld h, b                                          ; $67b0: $60
	sub b                                            ; $67b1: $90
	ld e, $01                                        ; $67b2: $1e $01
	dec sp                                           ; $67b4: $3b
	rlca                                             ; $67b5: $07
	ld e, l                                          ; $67b6: $5d
	ld a, $67                                        ; $67b7: $3e $67
	jr jr_06a_67eb                                   ; $67b9: $18 $30

	rrca                                             ; $67bb: $0f
	ccf                                              ; $67bc: $3f
	rra                                              ; $67bd: $1f
	inc e                                            ; $67be: $1c
	rlca                                             ; $67bf: $07
	rlca                                             ; $67c0: $07
	inc hl                                           ; $67c1: $23
	ld h, b                                          ; $67c2: $60
	sub a                                            ; $67c3: $97
	rst $38                                          ; $67c4: $ff
	inc bc                                           ; $67c5: $03
	db $eb                                           ; $67c6: $eb
	rst FarCall                                          ; $67c7: $f7
	db $fd                                           ; $67c8: $fd
	add $7f                                          ; $67c9: $c6 $7f
	add h                                            ; $67cb: $84
	ld d, a                                          ; $67cc: $57
	ld h, b                                          ; $67cd: $60
	ld l, a                                          ; $67ce: $6f
	add b                                            ; $67cf: $80
	sbc l                                            ; $67d0: $9d
	pop af                                           ; $67d1: $f1
	rst SubAFromDE                                          ; $67d2: $df
	ld [hl], a                                       ; $67d3: $77
	add b                                            ; $67d4: $80
	sub a                                            ; $67d5: $97
	cp a                                             ; $67d6: $bf
	ret nz                                           ; $67d7: $c0

	rst AddAOntoHL                                          ; $67d8: $ef
	ret nc                                           ; $67d9: $d0

	or $4f                                           ; $67da: $f6 $4f
	db $ed                                           ; $67dc: $ed
	ld b, e                                          ; $67dd: $43
	ld b, a                                          ; $67de: $47
	add b                                            ; $67df: $80
	ld a, a                                          ; $67e0: $7f
	cp $92                                           ; $67e1: $fe $92
	cp h                                             ; $67e3: $bc
	ret z                                            ; $67e4: $c8

	ld l, h                                          ; $67e5: $6c
	ldh a, [$ec]                                     ; $67e6: $f0 $ec
	db $10                                           ; $67e8: $10
	ld hl, sp+$00                                    ; $67e9: $f8 $00

jr_06a_67eb:
	xor b                                            ; $67eb: $a8
	ld [hl], b                                       ; $67ec: $70
	ret nc                                           ; $67ed: $d0

	ldh [$c0], a                                     ; $67ee: $e0 $c0
	ld b, e                                          ; $67f0: $43
	add b                                            ; $67f1: $80
	adc a                                            ; $67f2: $8f
	rra                                              ; $67f3: $1f
	nop                                              ; $67f4: $00
	dec a                                            ; $67f5: $3d
	inc bc                                           ; $67f6: $03
	ld a, [hl]                                       ; $67f7: $7e
	rra                                              ; $67f8: $1f
	ld b, a                                          ; $67f9: $47
	jr c, jr_06a_683b                                ; $67fa: $38 $3f

	nop                                              ; $67fc: $00
	inc sp                                           ; $67fd: $33
	inc c                                            ; $67fe: $0c
	rrca                                             ; $67ff: $0f
	rra                                              ; $6800: $1f
	dec bc                                           ; $6801: $0b
	rlca                                             ; $6802: $07
	ccf                                              ; $6803: $3f
	add b                                            ; $6804: $80
	sbc e                                            ; $6805: $9b
	or $ff                                           ; $6806: $f6 $ff
	ld a, e                                          ; $6808: $7b
	sbc a                                            ; $6809: $9f
	ld [hl], a                                       ; $680a: $77
	add b                                            ; $680b: $80
	sbc e                                            ; $680c: $9b
	swap a                                           ; $680d: $cb $37
	db $dd                                           ; $680f: $dd
	and $3f                                          ; $6810: $e6 $3f
	add b                                            ; $6812: $80
	sbc h                                            ; $6813: $9c
	rst $38                                          ; $6814: $ff
	cp $f3                                           ; $6815: $fe $f3
	ld l, e                                          ; $6817: $6b
	add b                                            ; $6818: $80
	sbc c                                            ; $6819: $99
	rst $38                                          ; $681a: $ff
	ret nz                                           ; $681b: $c0

	db $eb                                           ; $681c: $eb
	ld e, h                                          ; $681d: $5c
	db $eb                                           ; $681e: $eb
	ld b, a                                          ; $681f: $47
	cpl                                              ; $6820: $2f
	add b                                            ; $6821: $80
	ld a, [hl]                                       ; $6822: $7e
	ld e, [hl]                                       ; $6823: $5e
	ld a, a                                          ; $6824: $7f
	add b                                            ; $6825: $80
	ld a, a                                          ; $6826: $7f
	cp $9b                                           ; $6827: $fe $9b
	and b                                            ; $6829: $a0
	ld [hl], b                                       ; $682a: $70
	ret nz                                           ; $682b: $c0

	ldh [$3f], a                                     ; $682c: $e0 $3f
	add b                                            ; $682e: $80
	sbc d                                            ; $682f: $9a
	inc a                                            ; $6830: $3c
	inc bc                                           ; $6831: $03
	ld h, a                                          ; $6832: $67
	rra                                              ; $6833: $1f
	ld e, a                                          ; $6834: $5f
	ld a, e                                          ; $6835: $7b
	add b                                            ; $6836: $80
	ld a, a                                          ; $6837: $7f
	cp $9b                                           ; $6838: $fe $9b
	dec bc                                           ; $683a: $0b

jr_06a_683b:
	inc e                                            ; $683b: $1c
	rlca                                             ; $683c: $07
	rrca                                             ; $683d: $0f
	scf                                              ; $683e: $37
	add b                                            ; $683f: $80
	sbc l                                            ; $6840: $9d
	dec sp                                           ; $6841: $3b
	rst SubAFromDE                                          ; $6842: $df
	ld [hl], a                                       ; $6843: $77
	add b                                            ; $6844: $80
	sbc c                                            ; $6845: $99
	ei                                               ; $6846: $fb
	rlca                                             ; $6847: $07
	ld l, l                                          ; $6848: $6d
	or $bf                                           ; $6849: $f6 $bf
	call nz, $8057                                   ; $684b: $c4 $57 $80
	ld a, a                                          ; $684e: $7f
	ret nz                                           ; $684f: $c0

	rst $38                                          ; $6850: $ff
	ld a, a                                          ; $6851: $7f
	cp b                                             ; $6852: $b8
	ld a, e                                          ; $6853: $7b
	ret nc                                           ; $6854: $d0

	adc l                                            ; $6855: $8d
	add b                                            ; $6856: $80
	ldh [$c0], a                                     ; $6857: $e0 $c0
	ldh a, [$b8]                                     ; $6859: $f0 $b8
	db $fc                                           ; $685b: $fc
	adc a                                            ; $685c: $8f
	rst $38                                          ; $685d: $ff
	add e                                            ; $685e: $83
	rst $38                                          ; $685f: $ff
	add b                                            ; $6860: $80
	di                                               ; $6861: $f3
	add b                                            ; $6862: $80
	pop af                                           ; $6863: $f1
	add b                                            ; $6864: $80
	ldh [$80], a                                     ; $6865: $e0 $80
	ret nz                                           ; $6867: $c0

	ld [hl], e                                       ; $6868: $73
	cp $92                                           ; $6869: $fe $92
	ld a, [hl]                                       ; $686b: $7e
	add c                                            ; $686c: $81
	db $fc                                           ; $686d: $fc
	inc bc                                           ; $686e: $03
	db $fc                                           ; $686f: $fc
	inc bc                                           ; $6870: $03
	ld sp, hl                                        ; $6871: $f9
	rlca                                             ; $6872: $07
	rst FarCall                                          ; $6873: $f7
	rrca                                             ; $6874: $0f
	rst SubAFromDE                                          ; $6875: $df
	ccf                                              ; $6876: $3f
	ld a, a                                          ; $6877: $7f
	call c, $9cff                                    ; $6878: $dc $ff $9c
	push hl                                          ; $687b: $e5
	rst $38                                          ; $687c: $ff
	dec b                                            ; $687d: $05
	ld a, e                                          ; $687e: $7b
	cp $96                                           ; $687f: $fe $96
	add l                                            ; $6881: $85
	ld a, a                                          ; $6882: $7f
	push bc                                          ; $6883: $c5
	ccf                                              ; $6884: $3f
	push hl                                          ; $6885: $e5
	rra                                              ; $6886: $1f
	db $e4                                           ; $6887: $e4
	rra                                              ; $6888: $1f
	dec c                                            ; $6889: $0d
	halt                                             ; $688a: $76
	sub c                                            ; $688b: $91
	cp a                                             ; $688c: $bf
	add e                                            ; $688d: $83
	ret nz                                           ; $688e: $c0

	inc bc                                           ; $688f: $03
	ret nz                                           ; $6890: $c0

	cpl                                              ; $6891: $2f
	ret nz                                           ; $6892: $c0

	sub [hl]                                         ; $6893: $96
	inc c                                            ; $6894: $0c
	dec b                                            ; $6895: $05
	rrca                                             ; $6896: $0f
	rlca                                             ; $6897: $07
	ld b, $03                                        ; $6898: $06 $03
	add b                                            ; $689a: $80
	nop                                              ; $689b: $00
	jp $c023                                         ; $689c: $c3 $23 $c0


	sbc e                                            ; $689f: $9b
	ld a, h                                          ; $68a0: $7c
	add e                                            ; $68a1: $83
	ld a, h                                          ; $68a2: $7c
	add e                                            ; $68a3: $83
	dec de                                           ; $68a4: $1b
	add b                                            ; $68a5: $80
	sbc c                                            ; $68a6: $99
	dec b                                            ; $68a7: $05
	rlca                                             ; $68a8: $07
	rrca                                             ; $68a9: $0f
	ld b, $03                                        ; $68aa: $06 $03
	add d                                            ; $68ac: $82
	dec de                                           ; $68ad: $1b
	ret nz                                           ; $68ae: $c0

	sbc l                                            ; $68af: $9d
	db $fc                                           ; $68b0: $fc

jr_06a_68b1:
	add e                                            ; $68b1: $83
	rla                                              ; $68b2: $17
	add b                                            ; $68b3: $80
	ret nc                                           ; $68b4: $d0

	ld bc, $2d80                                     ; $68b5: $01 $80 $2d
	rst $38                                          ; $68b8: $ff
	ld e, d                                          ; $68b9: $5a
	rst $38                                          ; $68ba: $ff
	cp $ff                                           ; $68bb: $fe $ff
	rst FarCall                                          ; $68bd: $f7
	reti                                             ; $68be: $d9


	rst SubAFromDE                                          ; $68bf: $df
	and b                                            ; $68c0: $a0
	rst $38                                          ; $68c1: $ff
	add b                                            ; $68c2: $80
	cp e                                             ; $68c3: $bb
	rst JumpTable                                          ; $68c4: $c7
	db $ed                                           ; $68c5: $ed
	rst SubAFromDE                                          ; $68c6: $df
	rst FarCall                                          ; $68c7: $f7
	ld c, e                                          ; $68c8: $4b
	jp hl                                            ; $68c9: $e9


	ld b, c                                          ; $68ca: $41
	ret nz                                           ; $68cb: $c0

	ld h, b                                          ; $68cc: $60
	ret nz                                           ; $68cd: $c0

	ld h, b                                          ; $68ce: $60

jr_06a_68cf:
	ldh a, [rAUD4LEN]                                ; $68cf: $f0 $20
	ldh [rSVBK], a                                   ; $68d1: $e0 $70
	db $10                                           ; $68d3: $10
	ldh a, [$f8]                                     ; $68d4: $f0 $f8
	sub l                                            ; $68d6: $95
	jr c, jr_06a_68b1                                ; $68d7: $38 $d8

	jr c, jr_06a_68cf                                ; $68d9: $38 $f4

	inc e                                            ; $68db: $1c
	ld [hl], d                                       ; $68dc: $72
	cp [hl]                                          ; $68dd: $be
	db $e3                                           ; $68de: $e3
	rst $38                                          ; $68df: $ff
	ld [hl+], a                                      ; $68e0: $22
	ld [hl], e                                       ; $68e1: $73
	cp $80                                           ; $68e2: $fe $80
	inc sp                                           ; $68e4: $33
	rst $38                                          ; $68e5: $ff
	scf                                              ; $68e6: $37
	cp $9f                                           ; $68e7: $fe $9f
	cp $bf                                           ; $68e9: $fe $bf
	db $f4                                           ; $68eb: $f4
	rst $38                                          ; $68ec: $ff
	db $ec                                           ; $68ed: $ec
	rst $38                                          ; $68ee: $ff
	call z, $88fe                                    ; $68ef: $cc $fe $88
	ld [$ca08], a                                    ; $68f2: $ea $08 $ca
	ld [$30f8], sp                                   ; $68f5: $08 $f8 $30
	ld hl, sp+$10                                    ; $68f8: $f8 $10
	ld a, b                                          ; $68fa: $78
	sub b                                            ; $68fb: $90
	sbc h                                            ; $68fc: $9c
	add sp, -$14                                     ; $68fd: $e8 $ec
	ld [hl], b                                       ; $68ff: $70
	jr z, @-$2e                                      ; $6900: $28 $d0

	ret c                                            ; $6902: $d8

	sub a                                            ; $6903: $97
	ldh [$78], a                                     ; $6904: $e0 $78
	ld [hl], b                                       ; $6906: $70
	or b                                             ; $6907: $b0
	ret nz                                           ; $6908: $c0

	ld b, b                                          ; $6909: $40
	add b                                            ; $690a: $80
	ld bc, $03bf                                     ; $690b: $01 $bf $03
	ld bc, $029b                                     ; $690e: $01 $9b $02
	inc bc                                           ; $6911: $03
	ld [bc], a                                       ; $6912: $02
	inc bc                                           ; $6913: $03
	cp a                                             ; $6914: $bf
	nop                                              ; $6915: $00
	rrca                                             ; $6916: $0f
	adc l                                            ; $6917: $8d
	dec b                                            ; $6918: $05
	rrca                                             ; $6919: $0f
	ld [$031c], sp                                   ; $691a: $08 $1c $03
	inc sp                                           ; $691d: $33
	rrca                                             ; $691e: $0f
	ld l, a                                          ; $691f: $6f
	inc e                                            ; $6920: $1c
	ld [hl], e                                       ; $6921: $73
	inc a                                            ; $6922: $3c
	ld l, $1f                                        ; $6923: $2e $1f
	inc a                                            ; $6925: $3c
	ld e, $17                                        ; $6926: $1e $17
	rlca                                             ; $6928: $07
	dec b                                            ; $6929: $05
	ld a, e                                          ; $692a: $7b
	jp hl                                            ; $692b: $e9


	sbc [hl]                                         ; $692c: $9e
	add b                                            ; $692d: $80
	cp h                                             ; $692e: $bc
	ret nz                                           ; $692f: $c0

	add b                                            ; $6930: $80
	ld bc, $9001                                     ; $6931: $01 $01 $90
	sbc l                                            ; $6934: $9d
	rst $38                                          ; $6935: $ff
	ret z                                            ; $6936: $c8

	ld a, e                                          ; $6937: $7b
	or e                                             ; $6938: $b3
	add b                                            ; $6939: $80
	or $bf                                           ; $693a: $f6 $bf
	ei                                               ; $693c: $fb
	rra                                              ; $693d: $1f
	cp $07                                           ; $693e: $fe $07
	ld a, a                                          ; $6940: $7f
	add e                                            ; $6941: $83
	db $eb                                           ; $6942: $eb
	rst FarCall                                          ; $6943: $f7
	ld e, l                                          ; $6944: $5d
	and [hl]                                         ; $6945: $a6
	ld a, a                                          ; $6946: $7f
	inc b                                            ; $6947: $04
	rst FarCall                                          ; $6948: $f7
	inc c                                            ; $6949: $0c
	ccf                                              ; $694a: $3f
	inc c                                            ; $694b: $0c
	ld a, a                                          ; $694c: $7f
	add hl, bc                                       ; $694d: $09
	rst AddAOntoHL                                          ; $694e: $ef
	dec de                                           ; $694f: $1b
	cp $1f                                           ; $6950: $fe $1f
	jp c, $fe3f                                      ; $6952: $da $3f $fe

	scf                                              ; $6955: $37
	rst FarCall                                          ; $6956: $f7
	ld [hl], e                                       ; $6957: $73
	rst $38                                          ; $6958: $ff
	sub a                                            ; $6959: $97
	pop hl                                           ; $695a: $e1
	xor a                                            ; $695b: $af
	db $e3                                           ; $695c: $e3
	inc de                                           ; $695d: $13
	di                                               ; $695e: $f3
	dec e                                            ; $695f: $1d
	rst $38                                          ; $6960: $ff
	ld de, $fe73                                     ; $6961: $11 $73 $fe
	adc l                                            ; $6964: $8d
	inc de                                           ; $6965: $13
	rst $38                                          ; $6966: $ff
	sub d                                            ; $6967: $92
	rst $38                                          ; $6968: $ff
	adc d                                            ; $6969: $8a
	rst $38                                          ; $696a: $ff
	adc c                                            ; $696b: $89
	rst $38                                          ; $696c: $ff
	ret                                              ; $696d: $c9


	rst $38                                          ; $696e: $ff
	push bc                                          ; $696f: $c5
	rst $38                                          ; $6970: $ff
	and h                                            ; $6971: $a4
	rst $38                                          ; $6972: $ff
	dec l                                            ; $6973: $2d
	rst $38                                          ; $6974: $ff
	ld e, e                                          ; $6975: $5b
	cp $67                                           ; $6976: $fe $67
	ld b, b                                          ; $6978: $40
	sbc c                                            ; $6979: $99

jr_06a_697a:
	cp b                                             ; $697a: $b8
	rst JumpTable                                          ; $697b: $c7
	rst AddAOntoHL                                          ; $697c: $ef
	rst SubAFromDE                                          ; $697d: $df
	ldh a, [c]                                       ; $697e: $f2
	ld c, a                                          ; $697f: $4f
	ld c, a                                          ; $6980: $4f
	ld b, b                                          ; $6981: $40
	ld e, a                                          ; $6982: $5f
	ld h, b                                          ; $6983: $60
	sbc c                                            ; $6984: $99
	db $f4                                           ; $6985: $f4
	jr @+$3a                                         ; $6986: $18 $38

	ret nz                                           ; $6988: $c0

	add sp, -$10                                     ; $6989: $e8 $f0
	scf                                              ; $698b: $37
	ld h, b                                          ; $698c: $60
	sub b                                            ; $698d: $90
	ld e, $01                                        ; $698e: $1e $01
	add hl, sp                                       ; $6990: $39
	rlca                                             ; $6991: $07
	ld l, a                                          ; $6992: $6f
	ld e, $77                                        ; $6993: $1e $77
	jr c, jr_06a_69a7                                ; $6995: $38 $10

	cpl                                              ; $6997: $2f
	ccf                                              ; $6998: $3f
	rra                                              ; $6999: $1f
	inc e                                            ; $699a: $1c
	rlca                                             ; $699b: $07
	rlca                                             ; $699c: $07
	inc hl                                           ; $699d: $23
	ld h, b                                          ; $699e: $60
	sub a                                            ; $699f: $97
	rst $38                                          ; $69a0: $ff
	inc bc                                           ; $69a1: $03
	db $eb                                           ; $69a2: $eb
	rst FarCall                                          ; $69a3: $f7
	db $fd                                           ; $69a4: $fd
	add $7f                                          ; $69a5: $c6 $7f

jr_06a_69a7:
	add h                                            ; $69a7: $84
	ld d, a                                          ; $69a8: $57
	ld h, b                                          ; $69a9: $60
	ld d, a                                          ; $69aa: $57
	add b                                            ; $69ab: $80
	sub a                                            ; $69ac: $97
	cp a                                             ; $69ad: $bf
	ret nz                                           ; $69ae: $c0

	rst AddAOntoHL                                          ; $69af: $ef
	ret nc                                           ; $69b0: $d0

	or $4f                                           ; $69b1: $f6 $4f
	db $ed                                           ; $69b3: $ed
	ld b, e                                          ; $69b4: $43
	ld b, a                                          ; $69b5: $47
	add b                                            ; $69b6: $80
	ld a, a                                          ; $69b7: $7f
	cp $92                                           ; $69b8: $fe $92
	inc a                                            ; $69ba: $3c
	ret z                                            ; $69bb: $c8

	call z, $fcf0                                    ; $69bc: $cc $f0 $fc
	jr nc, @-$06                                     ; $69bf: $30 $f8

	nop                                              ; $69c1: $00
	xor b                                            ; $69c2: $a8
	ld [hl], b                                       ; $69c3: $70
	ret nc                                           ; $69c4: $d0

	ldh [$c0], a                                     ; $69c5: $e0 $c0
	inc sp                                           ; $69c7: $33
	add b                                            ; $69c8: $80
	sub e                                            ; $69c9: $93
	ld [hl], a                                       ; $69ca: $77
	ld c, $5f                                        ; $69cb: $0e $5f
	jr c, jr_06a_69fe                                ; $69cd: $38 $2f

	jr nc, jr_06a_6a04                               ; $69cf: $30 $33

	inc c                                            ; $69d1: $0c
	rrca                                             ; $69d2: $0f
	rra                                              ; $69d3: $1f
	dec bc                                           ; $69d4: $0b
	rlca                                             ; $69d5: $07
	rra                                              ; $69d6: $1f
	add b                                            ; $69d7: $80
	sbc e                                            ; $69d8: $9b
	swap a                                           ; $69d9: $cb $37
	db $dd                                           ; $69db: $dd
	and $33                                          ; $69dc: $e6 $33
	add b                                            ; $69de: $80
	sbc h                                            ; $69df: $9c
	db $db                                           ; $69e0: $db
	sbc $a1                                          ; $69e1: $de $a1
	ld [hl], a                                       ; $69e3: $77
	add b                                            ; $69e4: $80
	sbc c                                            ; $69e5: $99
	rst $38                                          ; $69e6: $ff
	ret nz                                           ; $69e7: $c0

	db $ed                                           ; $69e8: $ed
	ld e, [hl]                                       ; $69e9: $5e
	db $eb                                           ; $69ea: $eb
	ld b, a                                          ; $69eb: $47
	scf                                              ; $69ec: $37
	add b                                            ; $69ed: $80
	sbc d                                            ; $69ee: $9a
	call c, $bce0                                    ; $69ef: $dc $e0 $bc
	ld [hl], b                                       ; $69f2: $70
	ld hl, sp-$41                                    ; $69f3: $f8 $bf
	ld hl, sp-$40                                    ; $69f5: $f8 $c0
	sbc h                                            ; $69f7: $9c
	jr nc, jr_06a_697a                               ; $69f8: $30 $80

	ldh [rBGP], a                                    ; $69fa: $e0 $47
	add b                                            ; $69fc: $80
	adc a                                            ; $69fd: $8f

jr_06a_69fe:
	rra                                              ; $69fe: $1f
	nop                                              ; $69ff: $00
	inc a                                            ; $6a00: $3c
	inc bc                                           ; $6a01: $03
	ld [hl], a                                       ; $6a02: $77
	rrca                                             ; $6a03: $0f

jr_06a_6a04:
	ld e, e                                          ; $6a04: $5b
	inc a                                            ; $6a05: $3c
	cpl                                              ; $6a06: $2f
	jr nc, jr_06a_6a48                               ; $6a07: $30 $3f

	nop                                              ; $6a09: $00
	rrca                                             ; $6a0a: $0f
	db $10                                           ; $6a0b: $10
	rla                                              ; $6a0c: $17
	rra                                              ; $6a0d: $1f
	ccf                                              ; $6a0e: $3f
	add b                                            ; $6a0f: $80
	sbc l                                            ; $6a10: $9d
	or [hl]                                          ; $6a11: $b6
	rst $38                                          ; $6a12: $ff
	ld l, a                                          ; $6a13: $6f
	add b                                            ; $6a14: $80
	sbc c                                            ; $6a15: $99
	ei                                               ; $6a16: $fb
	rlca                                             ; $6a17: $07
	ld l, l                                          ; $6a18: $6d
	or $bf                                           ; $6a19: $f6 $bf
	call nz, $8057                                   ; $6a1b: $c4 $57 $80
	ld a, [hl]                                       ; $6a1e: $7e
	ld sp, $0c9e                                     ; $6a1f: $31 $9e $0c
	cp [hl]                                          ; $6a22: $be
	nop                                              ; $6a23: $00
	add e                                            ; $6a24: $83
	ret nz                                           ; $6a25: $c0

	ld a, a                                          ; $6a26: $7f
	xor c                                            ; $6a27: $a9
	adc a                                            ; $6a28: $8f
	ret nz                                           ; $6a29: $c0

	ldh a, [$b8]                                     ; $6a2a: $f0 $b8
	db $fc                                           ; $6a2c: $fc
	adc a                                            ; $6a2d: $8f
	rst $38                                          ; $6a2e: $ff
	add e                                            ; $6a2f: $83
	rst $38                                          ; $6a30: $ff
	add b                                            ; $6a31: $80
	di                                               ; $6a32: $f3
	add b                                            ; $6a33: $80
	pop af                                           ; $6a34: $f1
	add b                                            ; $6a35: $80
	ldh [$80], a                                     ; $6a36: $e0 $80
	ret nz                                           ; $6a38: $c0

	ld [hl], e                                       ; $6a39: $73
	cp $92                                           ; $6a3a: $fe $92
	cp $01                                           ; $6a3c: $fe $01
	ld a, h                                          ; $6a3e: $7c
	add e                                            ; $6a3f: $83
	db $fc                                           ; $6a40: $fc
	inc bc                                           ; $6a41: $03
	ld sp, hl                                        ; $6a42: $f9
	rlca                                             ; $6a43: $07
	rst FarCall                                          ; $6a44: $f7
	rrca                                             ; $6a45: $0f
	rst SubAFromDE                                          ; $6a46: $df
	ccf                                              ; $6a47: $3f

jr_06a_6a48:
	ld a, a                                          ; $6a48: $7f
	call c, $9cff                                    ; $6a49: $dc $ff $9c
	push hl                                          ; $6a4c: $e5
	rst $38                                          ; $6a4d: $ff
	dec b                                            ; $6a4e: $05
	ld a, e                                          ; $6a4f: $7b
	cp $94                                           ; $6a50: $fe $94
	add l                                            ; $6a52: $85
	ld a, a                                          ; $6a53: $7f
	push bc                                          ; $6a54: $c5
	ccf                                              ; $6a55: $3f
	push hl                                          ; $6a56: $e5
	rra                                              ; $6a57: $1f
	db $e4                                           ; $6a58: $e4
	rra                                              ; $6a59: $1f
	dec c                                            ; $6a5a: $0d
	rlca                                             ; $6a5b: $07
	inc bc                                           ; $6a5c: $03
	ld a, e                                          ; $6a5d: $7b
	db $10                                           ; $6a5e: $10
	rra                                              ; $6a5f: $1f
	ret nz                                           ; $6a60: $c0

	sbc h                                            ; $6a61: $9c
	ld a, [hl]                                       ; $6a62: $7e
	add c                                            ; $6a63: $81
	db $fc                                           ; $6a64: $fc
	inc de                                           ; $6a65: $13
	ret nz                                           ; $6a66: $c0

	sbc h                                            ; $6a67: $9c
	dec b                                            ; $6a68: $05
	rlca                                             ; $6a69: $07
	rrca                                             ; $6a6a: $0f
	ld a, d                                          ; $6a6b: $7a
	ld c, [hl]                                       ; $6a6c: $4e
	sbc h                                            ; $6a6d: $9c
	add c                                            ; $6a6e: $81

Call_06a_6a6f:
	ld [bc], a                                       ; $6a6f: $02
	jp $c01b                                         ; $6a70: $c3 $1b $c0


	ld a, a                                          ; $6a73: $7f
	ld a, [hl]                                       ; $6a74: $7e
	dec bc                                           ; $6a75: $0b
	ret nz                                           ; $6a76: $c0

	sbc h                                            ; $6a77: $9c
	rlca                                             ; $6a78: $07
	add a                                            ; $6a79: $87
	inc bc                                           ; $6a7a: $03
	rla                                              ; $6a7b: $17
	ret nz                                           ; $6a7c: $c0

	ld a, a                                          ; $6a7d: $7f
	cp $9d                                           ; $6a7e: $fe $9d
	ld a, c                                          ; $6a80: $79
	add a                                            ; $6a81: $87
	daa                                              ; $6a82: $27
	ret nz                                           ; $6a83: $c0

	ld c, l                                          ; $6a84: $4d
	inc bc                                           ; $6a85: $03
	rst $38                                          ; $6a86: $ff
	rst SubAFromDE                                          ; $6a87: $df
	ld bc, $03df                                     ; $6a88: $01 $df $03
	add b                                            ; $6a8b: $80
	rlca                                             ; $6a8c: $07
	ld b, $0a                                        ; $6a8d: $06 $0a
	dec c                                            ; $6a8f: $0d
	dec d                                            ; $6a90: $15
	dec de                                           ; $6a91: $1b
	cpl                                              ; $6a92: $2f
	ld [hl-], a                                      ; $6a93: $32
	dec sp                                           ; $6a94: $3b
	ld h, $5f                                        ; $6a95: $26 $5f
	ld h, h                                          ; $6a97: $64
	ld [hl], a                                       ; $6a98: $77
	ld c, h                                          ; $6a99: $4c
	cp d                                             ; $6a9a: $ba
	call $d9ae                                       ; $6a9b: $cd $ae $d9
	or h                                             ; $6a9e: $b4
	db $db                                           ; $6a9f: $db
	db $fd                                           ; $6aa0: $fd
	jp nc, Jump_06a_5679                             ; $6aa1: $d2 $79 $56

	ld d, d                                          ; $6aa4: $52
	ld a, l                                          ; $6aa5: $7d
	ld [hl], l                                       ; $6aa6: $75
	ld a, e                                          ; $6aa7: $7b
	dec hl                                           ; $6aa8: $2b
	scf                                              ; $6aa9: $37
	daa                                              ; $6aaa: $27
	sub d                                            ; $6aab: $92
	ccf                                              ; $6aac: $3f
	add hl, hl                                       ; $6aad: $29
	ccf                                              ; $6aae: $3f
	ld [hl-], a                                      ; $6aaf: $32
	ccf                                              ; $6ab0: $3f
	inc sp                                           ; $6ab1: $33
	ld a, $2d                                        ; $6ab2: $3e $2d
	ld [hl], $2f                                     ; $6ab4: $36 $2f
	inc [hl]                                         ; $6ab6: $34
	ld a, $25                                        ; $6ab7: $3e $25
	ld [hl], a                                       ; $6ab9: $77
	cp $96                                           ; $6aba: $fe $96
	inc a                                            ; $6abc: $3c
	daa                                              ; $6abd: $27
	inc l                                            ; $6abe: $2c
	scf                                              ; $6abf: $37
	inc e                                            ; $6ac0: $1c
	rla                                              ; $6ac1: $17
	ld [de], a                                       ; $6ac2: $12
	rra                                              ; $6ac3: $1f
	add hl, bc                                       ; $6ac4: $09
	sbc $0f                                          ; $6ac5: $de $0f
	rst SubAFromDE                                          ; $6ac7: $df
	rlca                                             ; $6ac8: $07
	sbc b                                            ; $6ac9: $98
	ld b, $07                                        ; $6aca: $06 $07
	inc b                                            ; $6acc: $04
	rlca                                             ; $6acd: $07
	inc c                                            ; $6ace: $0c
	rrca                                             ; $6acf: $0f
	ld [$fe63], sp                                   ; $6ad0: $08 $63 $fe
	sbc h                                            ; $6ad3: $9c
	jr jr_06a_6af5                                   ; $6ad4: $18 $1f

	db $10                                           ; $6ad6: $10
	ld [hl], e                                       ; $6ad7: $73
	cp $df                                           ; $6ad8: $fe $df
	rra                                              ; $6ada: $1f
	ld a, a                                          ; $6adb: $7f
	or $fd                                           ; $6adc: $f6 $fd
	db $dd                                           ; $6ade: $dd
	ld bc, $0298                                     ; $6adf: $01 $98 $02
	inc bc                                           ; $6ae2: $03
	ld [bc], a                                       ; $6ae3: $02
	inc bc                                           ; $6ae4: $03
	inc bc                                           ; $6ae5: $03
	ld [bc], a                                       ; $6ae6: $02
	dec b                                            ; $6ae7: $05
	ld [hl], a                                       ; $6ae8: $77
	push de                                          ; $6ae9: $d5
	add b                                            ; $6aea: $80
	inc b                                            ; $6aeb: $04
	ld a, [bc]                                       ; $6aec: $0a
	dec c                                            ; $6aed: $0d
	ld c, $09                                        ; $6aee: $0e $09
	ld e, $19                                        ; $6af0: $1e $19
	dec d                                            ; $6af2: $15
	ld a, [de]                                       ; $6af3: $1a
	dec [hl]                                         ; $6af4: $35

jr_06a_6af5:
	ld a, [hl-]                                      ; $6af5: $3a
	ld l, l                                          ; $6af6: $6d
	ld [hl], d                                       ; $6af7: $72
	set 6, h                                         ; $6af8: $cb $f4
	sbc d                                            ; $6afa: $9a
	push hl                                          ; $6afb: $e5

jr_06a_6afc:
	or h                                             ; $6afc: $b4
	ld c, e                                          ; $6afd: $4b
	ld [hl+], a                                      ; $6afe: $22
	rst SubAFromDE                                          ; $6aff: $df
	push hl                                          ; $6b00: $e5
	sbc [hl]                                         ; $6b01: $9e
	add $3c                                          ; $6b02: $c6 $3c
	sbc d                                            ; $6b04: $9a
	ld l, h                                          ; $6b05: $6c
	xor h                                            ; $6b06: $ac
	ld e, b                                          ; $6b07: $58
	dec [hl]                                         ; $6b08: $35
	ret c                                            ; $6b09: $d8

	add b                                            ; $6b0a: $80
	ld [hl], c                                       ; $6b0b: $71
	sbc b                                            ; $6b0c: $98
	ld a, e                                          ; $6b0d: $7b
	sub b                                            ; $6b0e: $90
	db $db                                           ; $6b0f: $db
	jr nc, jr_06a_6afc                               ; $6b10: $30 $ea

	ld sp, $71a6                                     ; $6b12: $31 $a6 $71

jr_06a_6b15:
	ld h, [hl]                                       ; $6b15: $66
	pop af                                           ; $6b16: $f1
	db $f4                                           ; $6b17: $f4
	db $e3                                           ; $6b18: $e3
	and l                                            ; $6b19: $a5
	ldh a, [c]                                       ; $6b1a: $f2
	and l                                            ; $6b1b: $a5
	ldh a, [c]                                       ; $6b1c: $f2
	ld e, c                                          ; $6b1d: $59
	or d                                             ; $6b1e: $b2
	reti                                             ; $6b1f: $d9


	ld [hl-], a                                      ; $6b20: $32
	sub l                                            ; $6b21: $95
	ld a, d                                          ; $6b22: $7a
	or l                                             ; $6b23: $b5
	ld e, d                                          ; $6b24: $5a
	inc [hl]                                         ; $6b25: $34
	db $db                                           ; $6b26: $db
	ld [hl], a                                       ; $6b27: $77
	sbc c                                            ; $6b28: $99
	ld e, e                                          ; $6b29: $5b
	adc [hl]                                         ; $6b2a: $8e
	cp l                                             ; $6b2b: $bd
	db $eb                                           ; $6b2c: $eb
	dec a                                            ; $6b2d: $3d
	xor d                                            ; $6b2e: $aa

jr_06a_6b2f:
	ld a, l                                          ; $6b2f: $7d
	call Call_06a_457e                               ; $6b30: $cd $7e $45
	cp $46                                           ; $6b33: $fe $46
	rst $38                                          ; $6b35: $ff
	adc a                                            ; $6b36: $8f
	rst $38                                          ; $6b37: $ff
	cp a                                             ; $6b38: $bf
	rst $38                                          ; $6b39: $ff
	pop hl                                           ; $6b3a: $e1
	rst $38                                          ; $6b3b: $ff
	cp a                                             ; $6b3c: $bf
	rst $38                                          ; $6b3d: $ff
	rst $38                                          ; $6b3e: $ff
	sbc [hl]                                         ; $6b3f: $9e
	ld bc, $fa73                                     ; $6b40: $01 $73 $fa
	adc e                                            ; $6b43: $8b
	jr nc, jr_06a_6b15                               ; $6b44: $30 $cf

	jr jr_06a_6b2f                                   ; $6b46: $18 $e7

	inc c                                            ; $6b48: $0c
	di                                               ; $6b49: $f3
	ld a, [hl]                                       ; $6b4a: $7e
	add c                                            ; $6b4b: $81
	rst $38                                          ; $6b4c: $ff
	nop                                              ; $6b4d: $00
	ccf                                              ; $6b4e: $3f
	ret nz                                           ; $6b4f: $c0

	rrca                                             ; $6b50: $0f
	ldh a, [rP1]                                     ; $6b51: $f0 $00
	rst $38                                          ; $6b53: $ff
	ldh a, [rIE]                                     ; $6b54: $f0 $ff
	rrca                                             ; $6b56: $0f
	rst $38                                          ; $6b57: $ff
	db $eb                                           ; $6b58: $eb
	rst SubAFromDE                                          ; $6b59: $df
	inc bc                                           ; $6b5a: $03
	add h                                            ; $6b5b: $84
	rrca                                             ; $6b5c: $0f
	ld c, $1a                                        ; $6b5d: $0e $1a
	dec e                                            ; $6b5f: $1d
	jr z, jr_06a_6b99                                ; $6b60: $28 $37

	ld b, e                                          ; $6b62: $43
	ld a, h                                          ; $6b63: $7c
	rst GetHLinHL                                          ; $6b64: $cf
	ldh a, [hDisp1_WX]                                     ; $6b65: $f0 $96
	ldh [$2c], a                                     ; $6b67: $e0 $2c
	ret nz                                           ; $6b69: $c0

	ld e, e                                          ; $6b6a: $5b
	add b                                            ; $6b6b: $80
	or d                                             ; $6b6c: $b2
	ld bc, $03a4                                     ; $6b6d: $01 $a4 $03
	ld l, c                                          ; $6b70: $69
	ld b, $d6                                        ; $6b71: $06 $d6

jr_06a_6b73:
	inc c                                            ; $6b73: $0c
	ld a, b                                          ; $6b74: $78
	adc h                                            ; $6b75: $8c
	ld [hl], l                                       ; $6b76: $75
	ld a, e                                          ; $6b77: $7b
	add b                                            ; $6b78: $80
	add b                                            ; $6b79: $80
	db $eb                                           ; $6b7a: $eb
	jr nc, jr_06a_6b73                               ; $6b7b: $30 $f6

	ld hl, $62dd                                     ; $6b7d: $21 $dd $62
	di                                               ; $6b80: $f3
	ld c, h                                          ; $6b81: $4c
	ld b, a                                          ; $6b82: $47
	ld hl, sp-$71                                    ; $6b83: $f8 $8f
	ldh a, [$bf]                                     ; $6b85: $f0 $bf
	ret nz                                           ; $6b87: $c0

	ld l, a                                          ; $6b88: $6f
	add b                                            ; $6b89: $80
	sbc a                                            ; $6b8a: $9f
	nop                                              ; $6b8b: $00
	ld a, $01                                        ; $6b8c: $3e $01
	ld a, l                                          ; $6b8e: $7d
	inc bc                                           ; $6b8f: $03
	ld l, d                                          ; $6b90: $6a
	inc de                                           ; $6b91: $13
	db $d3                                           ; $6b92: $d3
	ld h, $ad                                        ; $6b93: $26 $ad
	ld b, [hl]                                       ; $6b95: $46
	adc a                                            ; $6b96: $8f
	ld b, h                                          ; $6b97: $44
	ld b, e                                          ; $6b98: $43

jr_06a_6b99:
	sub c                                            ; $6b99: $91
	adc l                                            ; $6b9a: $8d
	rla                                              ; $6b9b: $17
	adc c                                            ; $6b9c: $89
	sub l                                            ; $6b9d: $95
	dec bc                                           ; $6b9e: $0b
	add a                                            ; $6b9f: $87
	dec de                                           ; $6ba0: $1b
	daa                                              ; $6ba1: $27
	dec de                                           ; $6ba2: $1b
	cpl                                              ; $6ba3: $2f
	inc de                                           ; $6ba4: $13
	dec hl                                           ; $6ba5: $2b
	rla                                              ; $6ba6: $17
	ld d, $7b                                        ; $6ba7: $16 $7b
	nop                                              ; $6ba9: $00
	add b                                            ; $6baa: $80
	inc [hl]                                         ; $6bab: $34
	rlca                                             ; $6bac: $07
	ld h, h                                          ; $6bad: $64
	rla                                              ; $6bae: $17
	ld h, h                                          ; $6baf: $64
	rla                                              ; $6bb0: $17
	ld c, h                                          ; $6bb1: $4c
	scf                                              ; $6bb2: $37
	call z, $ce37                                    ; $6bb3: $cc $37 $ce
	scf                                              ; $6bb6: $37
	ld l, d                                          ; $6bb7: $6a
	sub a                                            ; $6bb8: $97
	db $eb                                           ; $6bb9: $eb
	sub a                                            ; $6bba: $97
	and a                                            ; $6bbb: $a7
	db $db                                           ; $6bbc: $db
	rst JumpTable                                          ; $6bbd: $c7
	ei                                               ; $6bbe: $fb
	ld h, l                                          ; $6bbf: $65
	ei                                               ; $6bc0: $fb
	pop af                                           ; $6bc1: $f1
	ld a, a                                          ; $6bc2: $7f
	ld a, l                                          ; $6bc3: $7d
	rst $38                                          ; $6bc4: $ff
	rst GetHLinHL                                          ; $6bc5: $cf
	rst $38                                          ; $6bc6: $ff
	add e                                            ; $6bc7: $83
	rst $38                                          ; $6bc8: $ff
	add c                                            ; $6bc9: $81
	ld a, e                                          ; $6bca: $7b
	ld h, b                                          ; $6bcb: $60
	add a                                            ; $6bcc: $87
	ld h, c                                          ; $6bcd: $61
	sbc a                                            ; $6bce: $9f
	ld h, e                                          ; $6bcf: $63
	sbc l                                            ; $6bd0: $9d
	inc sp                                           ; $6bd1: $33
	call z, $cc33                                    ; $6bd2: $cc $33 $cc
	add hl, sp                                       ; $6bd5: $39
	add $19                                          ; $6bd6: $c6 $19
	and $5d                                          ; $6bd8: $e6 $5d
	ldh [c], a                                       ; $6bda: $e2
	xor l                                            ; $6bdb: $ad
	ld [hl], d                                       ; $6bdc: $72
	xor $31                                          ; $6bdd: $ee $31
	sub $39                                          ; $6bdf: $d6 $39
	ld e, d                                          ; $6be1: $5a
	cp l                                             ; $6be2: $bd
	ld a, [bc]                                       ; $6be3: $0a
	db $fd                                           ; $6be4: $fd
	pop af                                           ; $6be5: $f1
	rst SubAFromDE                                          ; $6be6: $df
	ld bc, $1fdf                                     ; $6be7: $01 $df $1f
	adc b                                            ; $6bea: $88
	rst FarCall                                          ; $6beb: $f7
	ld hl, sp-$48                                    ; $6bec: $f8 $b8
	rst JumpTable                                          ; $6bee: $c7
	add a                                            ; $6bef: $87
	ld a, b                                          ; $6bf0: $78
	ccf                                              ; $6bf1: $3f
	ret nz                                           ; $6bf2: $c0

	cp $01                                           ; $6bf3: $fe $01
	ld hl, sp+$07                                    ; $6bf5: $f8 $07
	ld sp, $640e                                     ; $6bf7: $31 $0e $64
	jr @-$6d                                         ; $6bfa: $18 $91

	ld h, b                                          ; $6bfc: $60
	inc hl                                           ; $6bfd: $23
	ret nz                                           ; $6bfe: $c0

	ld b, b                                          ; $6bff: $40
	add b                                            ; $6c00: $80
	sbc b                                            ; $6c01: $98
	cp a                                             ; $6c02: $bf
	add hl, sp                                       ; $6c03: $39
	ld a, d                                          ; $6c04: $7a
	adc [hl]                                         ; $6c05: $8e
	ld bc, $02f1                                     ; $6c06: $01 $f1 $02
	push af                                          ; $6c09: $f5
	ld [bc], a                                       ; $6c0a: $02
	jp hl                                            ; $6c0b: $e9


	ld b, $d7                                        ; $6c0c: $06 $d7
	inc c                                            ; $6c0e: $0c
	ld a, [$ed0d]                                    ; $6c0f: $fa $0d $ed
	dec de                                           ; $6c12: $1b
	jp nc, $af3f                                     ; $6c13: $d2 $3f $af

	ld a, a                                          ; $6c16: $7f
	ldh [$c1], a                                     ; $6c17: $e0 $c1
	adc a                                            ; $6c19: $8f
	ldh [$3c], a                                     ; $6c1a: $e0 $3c
	ldh a, [rAUD3HIGH]                               ; $6c1c: $f0 $1e
	ld hl, sp-$71                                    ; $6c1e: $f8 $8f
	ld hl, sp-$71                                    ; $6c20: $f8 $8f
	db $fc                                           ; $6c22: $fc
	inc b                                            ; $6c23: $04
	db $fc                                           ; $6c24: $fc
	add a                                            ; $6c25: $87
	cp $83                                           ; $6c26: $fe $83
	cp $c3                                           ; $6c28: $fe $c3
	pop hl                                           ; $6c2a: $e1
	sub h                                            ; $6c2b: $94
	ld h, c                                          ; $6c2c: $61
	pop hl                                           ; $6c2d: $e1
	ld hl, $30e1                                     ; $6c2e: $21 $e1 $30
	ldh a, [rAUD1SWEEP]                              ; $6c31: $f0 $10
	ldh a, [$08]                                     ; $6c33: $f0 $08
	ld hl, sp+$0c                                    ; $6c35: $f8 $0c
	ld a, e                                          ; $6c37: $7b
	call $029d                                       ; $6c38: $cd $9d $02
	cp $f3                                           ; $6c3b: $fe $f3
	rst SubAFromDE                                          ; $6c3d: $df
	inc a                                            ; $6c3e: $3c
	adc e                                            ; $6c3f: $8b
	rst AddAOntoHL                                          ; $6c40: $ef
	di                                               ; $6c41: $f3
	ld a, [hl-]                                      ; $6c42: $3a
	db $fd                                           ; $6c43: $fd
	add l                                            ; $6c44: $85
	ld a, [hl]                                       ; $6c45: $7e
	inc bc                                           ; $6c46: $03
	cp $f0                                           ; $6c47: $fe $f0
	rrca                                             ; $6c49: $0f
	adc [hl]                                         ; $6c4a: $8e
	ld [hl], c                                       ; $6c4b: $71
	dec a                                            ; $6c4c: $3d
	cp $73                                           ; $6c4d: $fe $73
	adc a                                            ; $6c4f: $8f
	ld bc, $06ff                                     ; $6c50: $01 $ff $06
	rst AddAOntoHL                                          ; $6c53: $ef
	cp h                                             ; $6c54: $bc
	sbc h                                            ; $6c55: $9c
	inc sp                                           ; $6c56: $33
	ld h, a                                          ; $6c57: $67
	adc $dc                                          ; $6c58: $ce $dc
	adc l                                            ; $6c5a: $8d
	db $10                                           ; $6c5b: $10
	cp c                                             ; $6c5c: $b9
	db $10                                           ; $6c5d: $10
	inc sp                                           ; $6c5e: $33
	jr nz, @+$79                                     ; $6c5f: $20 $77

	ld hl, $43ef                                     ; $6c61: $21 $ef $43
	xor $c7                                          ; $6c64: $ee $c7
	db $fc                                           ; $6c66: $fc
	adc $f8                                          ; $6c67: $ce $f8
	sbc h                                            ; $6c69: $9c
	ldh a, [$b8]                                     ; $6c6a: $f0 $b8
	ldh [$e0], a                                     ; $6c6c: $e0 $e0
	ret nz                                           ; $6c6e: $c0

	sbc [hl]                                         ; $6c6f: $9e
	ld h, b                                          ; $6c70: $60
	cp b                                             ; $6c71: $b8
	pop af                                           ; $6c72: $f1
	ld sp, hl                                        ; $6c73: $f9
	db $fd                                           ; $6c74: $fd
	rra                                              ; $6c75: $1f
	rlca                                             ; $6c76: $07
	ldh [$c0], a                                     ; $6c77: $e0 $c0
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	sbc $80                                          ; $6c7b: $de $80
	sub [hl]                                         ; $6c7d: $96
	add d                                            ; $6c7e: $82
	ret nz                                           ; $6c7f: $c0

	ld b, e                                          ; $6c80: $43
	ret nz                                           ; $6c81: $c0

	ld b, c                                          ; $6c82: $41
	ldh [rAUD4ENV], a                                ; $6c83: $e0 $21
	ldh [rAUD4ENV], a                                ; $6c85: $e0 $21
	di                                               ; $6c87: $f3
	add b                                            ; $6c88: $80
	ld [hl], $3e                                     ; $6c89: $36 $3e
	ret z                                            ; $6c8b: $c8

	ld hl, sp-$01                                    ; $6c8c: $f8 $ff
	cp a                                             ; $6c8e: $bf
	reti                                             ; $6c8f: $d9


	ld h, a                                          ; $6c90: $67
	or a                                             ; $6c91: $b7

Call_06a_6c92:
	ret z                                            ; $6c92: $c8

	cpl                                              ; $6c93: $2f
	ret nc                                           ; $6c94: $d0

	adc h                                            ; $6c95: $8c
	di                                               ; $6c96: $f3
	ld e, c                                          ; $6c97: $59
	and $4b                                          ; $6c98: $e6 $4b
	db $fc                                           ; $6c9a: $fc
	ldh a, [rIE]                                     ; $6c9b: $f0 $ff
	jr nc, @+$01                                     ; $6c9d: $30 $ff

	inc c                                            ; $6c9f: $0c
	ld a, a                                          ; $6ca0: $7f
	ld b, $fe                                        ; $6ca1: $06 $fe
	ld [bc], a                                       ; $6ca3: $02
	rst $38                                          ; $6ca4: $ff
	ld [bc], a                                       ; $6ca5: $02
	rra                                              ; $6ca6: $1f
	ld [bc], a                                       ; $6ca7: $02
	adc a                                            ; $6ca8: $8f
	ld a, a                                          ; $6ca9: $7f
	dec sp                                           ; $6caa: $3b
	rst $38                                          ; $6cab: $ff
	ld b, [hl]                                       ; $6cac: $46
	rst $38                                          ; $6cad: $ff
	adc e                                            ; $6cae: $8b
	rst SubAFromDE                                          ; $6caf: $df
	sbc a                                            ; $6cb0: $9f
	or b                                             ; $6cb1: $b0
	sub b                                            ; $6cb2: $90
	or b                                             ; $6cb3: $b0
	or b                                             ; $6cb4: $b0
	ldh [$b0], a                                     ; $6cb5: $e0 $b0
	ldh [$a0], a                                     ; $6cb7: $e0 $a0
	ld a, e                                          ; $6cb9: $7b
	cp $e0                                           ; $6cba: $fe $e0
	pop bc                                           ; $6cbc: $c1
	ld a, [hl]                                       ; $6cbd: $7e
	inc sp                                           ; $6cbe: $33
	sbc l                                            ; $6cbf: $9d
	rra                                              ; $6cc0: $1f
	ldh a, [c]                                       ; $6cc1: $f2
	ld a, e                                          ; $6cc2: $7b
	cp $98                                           ; $6cc3: $fe $98
	jp nc, $921f                                     ; $6cc5: $d2 $1f $92

	rra                                              ; $6cc8: $1f
	ld [de], a                                       ; $6cc9: $12
	ccf                                              ; $6cca: $3f
	ld [hl+], a                                      ; $6ccb: $22
	ld [hl], e                                       ; $6ccc: $73
	cp $9c                                           ; $6ccd: $fe $9c
	ld [hl-], a                                      ; $6ccf: $32
	rrca                                             ; $6cd0: $0f
	ld c, $78                                        ; $6cd1: $0e $78
	ld a, [$8498]                                    ; $6cd3: $fa $98 $84
	rlca                                             ; $6cd6: $07
	call nz, $c407                                   ; $6cd7: $c4 $07 $c4
	rrca                                             ; $6cda: $0f
	ret z                                            ; $6cdb: $c8

	ld [hl-], a                                      ; $6cdc: $32
	ld l, h                                          ; $6cdd: $6c
	sub h                                            ; $6cde: $94
	ldh [$d8], a                                     ; $6cdf: $e0 $d8
	jr c, jr_06a_6ce9                                ; $6ce1: $38 $06

	cp $7d                                           ; $6ce3: $fe $7d
	add e                                            ; $6ce5: $83
	rst JumpTable                                          ; $6ce6: $c7
	jr c, jr_06a_6d24                                ; $6ce7: $38 $3b

jr_06a_6ce9:
	rst JumpTable                                          ; $6ce9: $c7
	cp [hl]                                          ; $6cea: $be
	rst JumpTable                                          ; $6ceb: $c7
	add hl, de                                       ; $6cec: $19
	ld a, a                                          ; $6ced: $7f
	add l                                            ; $6cee: $85
	ld b, $ff                                        ; $6cef: $06 $ff
	ld bc, $00c7                                     ; $6cf1: $01 $c7 $00
	ld sp, hl                                        ; $6cf4: $f9
	db $10                                           ; $6cf5: $10
	rst SubAFromDE                                          ; $6cf6: $df
	adc b                                            ; $6cf7: $88
	rst AddAOntoHL                                          ; $6cf8: $ef
	ld b, h                                          ; $6cf9: $44
	rst FarCall                                          ; $6cfa: $f7
	ld [hl+], a                                      ; $6cfb: $22
	or a                                             ; $6cfc: $b7
	sub d                                            ; $6cfd: $92
	db $db                                           ; $6cfe: $db
	sub d                                            ; $6cff: $92
	db $db                                           ; $6d00: $db
	reti                                             ; $6d01: $d9


	ld a, a                                          ; $6d02: $7f
	reti                                             ; $6d03: $d9


	ld a, a                                          ; $6d04: $7f
	ld e, l                                          ; $6d05: $5d
	ld [hl], a                                       ; $6d06: $77
	ld a, l                                          ; $6d07: $7d
	daa                                              ; $6d08: $27
	ldh [$c1], a                                     ; $6d09: $e0 $c1
	rst SubAFromDE                                          ; $6d0b: $df
	rst $38                                          ; $6d0c: $ff
	sbc d                                            ; $6d0d: $9a
	db $fd                                           ; $6d0e: $fd
	rst $38                                          ; $6d0f: $ff
	ld sp, $213f                                     ; $6d10: $31 $3f $21
	ld l, e                                          ; $6d13: $6b
	cp $9a                                           ; $6d14: $fe $9a
	daa                                              ; $6d16: $27
	ccf                                              ; $6d17: $3f
	add hl, hl                                       ; $6d18: $29
	ccf                                              ; $6d19: $3f
	jr z, jr_06a_6d97                                ; $6d1a: $28 $7b

	cp $96                                           ; $6d1c: $fe $96

jr_06a_6d1e:
	inc l                                            ; $6d1e: $2c
	ccf                                              ; $6d1f: $3f
	inc h                                            ; $6d20: $24
	ccf                                              ; $6d21: $3f
	cpl                                              ; $6d22: $2f
	ccf                                              ; $6d23: $3f

jr_06a_6d24:
	ld c, b                                          ; $6d24: $48
	ld a, a                                          ; $6d25: $7f
	ld e, b                                          ; $6d26: $58
	dec e                                            ; $6d27: $1d
	and b                                            ; $6d28: $a0
	add b                                            ; $6d29: $80
	ld [$f8f0], sp                                   ; $6d2a: $08 $f0 $f8
	add sp, $18                                      ; $6d2d: $e8 $18
	or b                                             ; $6d2f: $b0
	ldh a, [$60]                                     ; $6d30: $f0 $60
	ldh [$d0], a                                     ; $6d32: $e0 $d0
	jr nc, jr_06a_6d1e                               ; $6d34: $30 $e8

	jr jr_06a_6d70                                   ; $6d36: $18 $38

	ret z                                            ; $6d38: $c8

	sub h                                            ; $6d39: $94
	db $ec                                           ; $6d3a: $ec
	call z, $e474                                    ; $6d3b: $cc $74 $e4
	inc a                                            ; $6d3e: $3c
	ld d, d                                          ; $6d3f: $52
	cp [hl]                                          ; $6d40: $be
	ld [hl-], a                                      ; $6d41: $32
	sbc $aa                                          ; $6d42: $de $aa
	ld e, [hl]                                       ; $6d44: $5e
	cp h                                             ; $6d45: $bc
	ld c, [hl]                                       ; $6d46: $4e
	db $db                                           ; $6d47: $db
	dec hl                                           ; $6d48: $2b
	adc e                                            ; $6d49: $8b
	ret c                                            ; $6d4a: $d8

	jr z, @+$5a                                      ; $6d4b: $28 $58

	xor b                                            ; $6d4d: $a8
	ld l, b                                          ; $6d4e: $68
	sbc b                                            ; $6d4f: $98
	xor b                                            ; $6d50: $a8
	ret c                                            ; $6d51: $d8

	xor b                                            ; $6d52: $a8
	ret c                                            ; $6d53: $d8

	sub b                                            ; $6d54: $90
	ldh a, [hDisp1_SCY]                                     ; $6d55: $f0 $90
	ldh a, [rAUD4LEN]                                ; $6d57: $f0 $20
	ldh [rAUD4LEN], a                                ; $6d59: $e0 $20
	ldh [rLCDC], a                                   ; $6d5b: $e0 $40
	ret nz                                           ; $6d5d: $c0

	reti                                             ; $6d5e: $d9


	add b                                            ; $6d5f: $80
	ld a, a                                          ; $6d60: $7f
	or $7d                                           ; $6d61: $f6 $7d
	ld sp, $fc7f                                     ; $6d63: $31 $7f $fc
	sbc [hl]                                         ; $6d66: $9e
	ld h, b                                          ; $6d67: $60
	ld a, d                                          ; $6d68: $7a
	and c                                            ; $6d69: $a1
	add e                                            ; $6d6a: $83
	or b                                             ; $6d6b: $b0
	ret nc                                           ; $6d6c: $d0

	ret nc                                           ; $6d6d: $d0

	ldh a, [$d0]                                     ; $6d6e: $f0 $d0

jr_06a_6d70:
	ldh a, [$e8]                                     ; $6d70: $f0 $e8
	ld hl, sp+$78                                    ; $6d72: $f8 $78
	cp b                                             ; $6d74: $b8
	db $ec                                           ; $6d75: $ec
	sbc h                                            ; $6d76: $9c
	ei                                               ; $6d77: $fb
	rst GetHLinHL                                          ; $6d78: $cf
	push de                                          ; $6d79: $d5
	rst AddAOntoHL                                          ; $6d7a: $ef
	db $fd                                           ; $6d7b: $fd
	rst SubAFromBC                                          ; $6d7c: $e7
	rst $38                                          ; $6d7d: $ff
	db $e4                                           ; $6d7e: $e4
	rst $38                                          ; $6d7f: $ff
	db $e4                                           ; $6d80: $e4
	ei                                               ; $6d81: $fb
	db $e4                                           ; $6d82: $e4
	rst $38                                          ; $6d83: $ff
	ldh [rIE], a                                     ; $6d84: $e0 $ff
	ret nz                                           ; $6d86: $c0

	ld [hl], a                                       ; $6d87: $77
	cp $9a                                           ; $6d88: $fe $9a
	cp $81                                           ; $6d8a: $fe $81
	add c                                            ; $6d8c: $81
	add b                                            ; $6d8d: $80
	add c                                            ; $6d8e: $81
	cp [hl]                                          ; $6d8f: $be
	add e                                            ; $6d90: $83
	inc bc                                           ; $6d91: $03
	inc bc                                           ; $6d92: $03
	sub [hl]                                         ; $6d93: $96
	ld bc, $0187                                     ; $6d94: $01 $87 $01

jr_06a_6d97:
	add a                                            ; $6d97: $87
	inc bc                                           ; $6d98: $03
	adc [hl]                                         ; $6d99: $8e
	add a                                            ; $6d9a: $87
	db $fc                                           ; $6d9b: $fc
	rst $38                                          ; $6d9c: $ff
	cp [hl]                                          ; $6d9d: $be
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst $38                                          ; $6da0: $ff
	sbc h                                            ; $6da1: $9c
	inc bc                                           ; $6da2: $03
	rst $38                                          ; $6da3: $ff
	ld hl, sp+$6f                                    ; $6da4: $f8 $6f
	or $5a                                           ; $6da6: $f6 $5a
	jp z, Jump_06a_5096                              ; $6da8: $ca $96 $50

	ldh a, [rOBP0]                                   ; $6dab: $f0 $48
	ld hl, sp-$58                                    ; $6dad: $f8 $a8
	ld hl, sp-$5c                                    ; $6daf: $f8 $a4
	db $fc                                           ; $6db1: $fc
	sub h                                            ; $6db2: $94
	ld a, e                                          ; $6db3: $7b
	cp $9e                                           ; $6db4: $fe $9e
	inc d                                            ; $6db6: $14
	ld a, c                                          ; $6db7: $79
	ld h, d                                          ; $6db8: $62
	ld a, l                                          ; $6db9: $7d
	ld e, h                                          ; $6dba: $5c
	ld a, a                                          ; $6dbb: $7f
	cp $7d                                           ; $6dbc: $fe $7d
	ld d, l                                          ; $6dbe: $55
	ld a, a                                          ; $6dbf: $7f
	add l                                            ; $6dc0: $85
	ld a, b                                          ; $6dc1: $78
	jp $809e                                         ; $6dc2: $c3 $9e $80


	ld l, c                                          ; $6dc5: $69
	add sp, $67                                      ; $6dc6: $e8 $67
	add b                                            ; $6dc8: $80
	sbc [hl]                                         ; $6dc9: $9e
	ret nz                                           ; $6dca: $c0

	ld [hl], a                                       ; $6dcb: $77
	ld l, [hl]                                       ; $6dcc: $6e
	ld a, a                                          ; $6dcd: $7f
	cp $7d                                           ; $6dce: $fe $7d
	jr c, jr_06a_6df4                                ; $6dd0: $38 $22

	nop                                              ; $6dd2: $00
	rst SubAFromDE                                          ; $6dd3: $df
	adc b                                            ; $6dd4: $88
	sbc d                                            ; $6dd5: $9a
	call z, $0088                                    ; $6dd6: $cc $88 $00
	nop                                              ; $6dd9: $00
	ld b, h                                          ; $6dda: $44
	ld a, e                                          ; $6ddb: $7b
	db $fc                                           ; $6ddc: $fc
	ld [hl], a                                       ; $6ddd: $77
	ei                                               ; $6dde: $fb
	rst SubAFromDE                                          ; $6ddf: $df
	sbc c                                            ; $6de0: $99
	sbc c                                            ; $6de1: $99
	ld d, $88                                        ; $6de2: $16 $88
	ld [hl+], a                                      ; $6de4: $22
	sbc c                                            ; $6de5: $99
	sbc c                                            ; $6de6: $99
	ld de, $fb63                                     ; $6de7: $11 $63 $fb
	sbc [hl]                                         ; $6dea: $9e
	ld [hl], a                                       ; $6deb: $77
	sbc $88                                          ; $6dec: $de $88
	sbc e                                            ; $6dee: $9b
	cp e                                             ; $6def: $bb
	ld d, l                                          ; $6df0: $55
	cp e                                             ; $6df1: $bb
	xor $ab                                          ; $6df2: $ee $ab

jr_06a_6df4:
	ld bc, $ff80                                     ; $6df4: $01 $80 $ff
	db $fd                                           ; $6df7: $fd
	ld l, a                                          ; $6df8: $6f
	ei                                               ; $6df9: $fb
	ld c, a                                          ; $6dfa: $4f
	db $fc                                           ; $6dfb: $fc
	sbc h                                            ; $6dfc: $9c

jr_06a_6dfd:
	ei                                               ; $6dfd: $fb
	sbc h                                            ; $6dfe: $9c

jr_06a_6dff:
	ldh a, [$3c]                                     ; $6dff: $f0 $3c
	ldh a, [$7c]                                     ; $6e01: $f0 $7c
	pop hl                                           ; $6e03: $e1
	ld e, e                                          ; $6e04: $5b
	db $e3                                           ; $6e05: $e3
	pop de                                           ; $6e06: $d1
	and b                                            ; $6e07: $a0
	ret nc                                           ; $6e08: $d0

	and b                                            ; $6e09: $a0
	ret nc                                           ; $6e0a: $d0

	jr nz, jr_06a_6dfd                               ; $6e0b: $20 $f0

	jr nz, jr_06a_6dff                               ; $6e0d: $20 $f0

	and b                                            ; $6e0f: $a0
	ldh [$f0], a                                     ; $6e10: $e0 $f0
	sbc b                                            ; $6e12: $98
	ldh a, [$08]                                     ; $6e13: $f0 $08
	add b                                            ; $6e15: $80
	ret nc                                           ; $6e16: $d0

	sbc b                                            ; $6e17: $98
	db $fc                                           ; $6e18: $fc
	db $fc                                           ; $6e19: $fc
	cp $fe                                           ; $6e1a: $fe $fe
	rst $38                                          ; $6e1c: $ff
	ei                                               ; $6e1d: $fb
	rst $38                                          ; $6e1e: $ff
	ld sp, hl                                        ; $6e1f: $f9
	rst $38                                          ; $6e20: $ff
	ld hl, sp-$01                                    ; $6e21: $f8 $ff
	ld hl, sp-$21                                    ; $6e23: $f8 $df
	ldh a, [$9e]                                     ; $6e25: $f0 $9e
	ldh a, [$be]                                     ; $6e27: $f0 $be
	ldh a, [$bc]                                     ; $6e29: $f0 $bc
	ret nc                                           ; $6e2b: $d0

	ld a, h                                          ; $6e2c: $7c
	ret nc                                           ; $6e2d: $d0

	ld a, h                                          ; $6e2e: $7c
	ret nz                                           ; $6e2f: $c0

	ld a, b                                          ; $6e30: $78
	ret nz                                           ; $6e31: $c0

	ld a, b                                          ; $6e32: $78
	ldh [$78], a                                     ; $6e33: $e0 $78
	add [hl]                                         ; $6e35: $86
	ldh [$38], a                                     ; $6e36: $e0 $38
	ld [hl], b                                       ; $6e38: $70
	ret nz                                           ; $6e39: $c0

	db $e3                                           ; $6e3a: $e3
	adc a                                            ; $6e3b: $8f
	inc c                                            ; $6e3c: $0c
	cp $ff                                           ; $6e3d: $fe $ff
	ldh a, [$1f]                                     ; $6e3f: $f0 $1f
	nop                                              ; $6e41: $00
	ld e, a                                          ; $6e42: $5f
	inc a                                            ; $6e43: $3c
	rst FarCall                                          ; $6e44: $f7
	cp $a7                                           ; $6e45: $fe $a7
	xor [hl]                                         ; $6e47: $ae

jr_06a_6e48:
	inc e                                            ; $6e48: $1c
	inc a                                            ; $6e49: $3c
	ld [hl], h                                       ; $6e4a: $74
	jr @+$01                                         ; $6e4b: $18 $ff

	nop                                              ; $6e4d: $00
	jr c, jr_06a_6e48                                ; $6e4e: $38 $f8

	adc a                                            ; $6e50: $8f
	ld h, b                                          ; $6e51: $60
	ld b, b                                          ; $6e52: $40
	ld h, c                                          ; $6e53: $61
	ld b, c                                          ; $6e54: $41
	ld h, c                                          ; $6e55: $61
	ld b, b                                          ; $6e56: $40
	inc hl                                           ; $6e57: $23
	nop                                              ; $6e58: $00
	add a                                            ; $6e59: $87
	nop                                              ; $6e5a: $00
	add l                                            ; $6e5b: $85
	inc bc                                           ; $6e5c: $03
	inc bc                                           ; $6e5d: $03
	rlca                                             ; $6e5e: $07
	dec b                                            ; $6e5f: $05
	ld [bc], a                                       ; $6e60: $02
	db $fd                                           ; $6e61: $fd
	add b                                            ; $6e62: $80
	inc bc                                           ; $6e63: $03
	nop                                              ; $6e64: $00
	ld [$0c00], sp                                   ; $6e65: $08 $00 $0c
	nop                                              ; $6e68: $00
	ld b, $08                                        ; $6e69: $06 $08
	inc c                                            ; $6e6b: $0c
	jr jr_06a_6e6e                                   ; $6e6c: $18 $00

jr_06a_6e6e:
	nop                                              ; $6e6e: $00
	rst $38                                          ; $6e6f: $ff
	ld h, $7f                                        ; $6e70: $26 $7f
	add [hl]                                         ; $6e72: $86
	db $dd                                           ; $6e73: $dd
	rst SubAFromBC                                          ; $6e74: $e7
	xor l                                            ; $6e75: $ad
	ld [hl], a                                       ; $6e76: $77
	ei                                               ; $6e77: $fb
	rra                                              ; $6e78: $1f
	cp $c3                                           ; $6e79: $fe $c3
	ld [$bff7], a                                    ; $6e7b: $ea $f7 $bf
	cp a                                             ; $6e7e: $bf
	ld a, l                                          ; $6e7f: $7d
	rst SubAFromBC                                          ; $6e80: $e7
	or l                                             ; $6e81: $b5
	sub a                                            ; $6e82: $97
	rst AddAOntoHL                                          ; $6e83: $ef
	db $fd                                           ; $6e84: $fd
	rrca                                             ; $6e85: $0f
	db $fd                                           ; $6e86: $fd
	rrca                                             ; $6e87: $0f
	dec a                                            ; $6e88: $3d
	rra                                              ; $6e89: $1f
	ld a, l                                          ; $6e8a: $7d
	ld a, e                                          ; $6e8b: $7b
	cp $92                                           ; $6e8c: $fe $92
	push de                                          ; $6e8e: $d5
	ccf                                              ; $6e8f: $3f
	db $ed                                           ; $6e90: $ed
	scf                                              ; $6e91: $37
	cp l                                             ; $6e92: $bd
	ld h, a                                          ; $6e93: $67
	db $fd                                           ; $6e94: $fd
	ld a, a                                          ; $6e95: $7f
	xor l                                            ; $6e96: $ad
	rst $38                                          ; $6e97: $ff
	xor l                                            ; $6e98: $ad
	rst $38                                          ; $6e99: $ff
	xor d                                            ; $6e9a: $aa
	ld l, e                                          ; $6e9b: $6b
	cp $91                                           ; $6e9c: $fe $91
	ld a, [hl+]                                      ; $6e9e: $2a
	rst $38                                          ; $6e9f: $ff
	add hl, hl                                       ; $6ea0: $29
	rst $38                                          ; $6ea1: $ff
	xor c                                            ; $6ea2: $a9
	rst $38                                          ; $6ea3: $ff
	pop hl                                           ; $6ea4: $e1
	rst $38                                          ; $6ea5: $ff
	pop bc                                           ; $6ea6: $c1
	rst $38                                          ; $6ea7: $ff
	inc bc                                           ; $6ea8: $03
	rst $38                                          ; $6ea9: $ff
	rlca                                             ; $6eaa: $07
	rst $38                                          ; $6eab: $ff
	ld l, a                                          ; $6eac: $6f
	ld b, b                                          ; $6ead: $40
	sbc e                                            ; $6eae: $9b
	sbc [hl]                                         ; $6eaf: $9e
	ld sp, hl                                        ; $6eb0: $f9
	sbc h                                            ; $6eb1: $9c
	ldh a, [c]                                       ; $6eb2: $f2
	ld a, e                                          ; $6eb3: $7b
	ld b, b                                          ; $6eb4: $40
	sbc d                                            ; $6eb5: $9a
	ldh [$58], a                                     ; $6eb6: $e0 $58
	pop hl                                           ; $6eb8: $e1
	db $d3                                           ; $6eb9: $d3
	and e                                            ; $6eba: $a3
	ld c, a                                          ; $6ebb: $4f
	ld b, b                                          ; $6ebc: $40
	ld [hl], a                                       ; $6ebd: $77
	ld h, b                                          ; $6ebe: $60
	sbc l                                            ; $6ebf: $9d
	adc h                                            ; $6ec0: $8c
	ld a, [hl]                                       ; $6ec1: $7e
	ld [hl], a                                       ; $6ec2: $77
	ld h, b                                          ; $6ec3: $60
	sbc h                                            ; $6ec4: $9c
	rrca                                             ; $6ec5: $0f
	nop                                              ; $6ec6: $00
	ld e, e                                          ; $6ec7: $5b
	ld a, e                                          ; $6ec8: $7b
	ld e, [hl]                                       ; $6ec9: $5e

Jump_06a_6eca:
	rst SubAFromDE                                          ; $6eca: $df
	xor [hl]                                         ; $6ecb: $ae
	daa                                              ; $6ecc: $27
	ld h, b                                          ; $6ecd: $60
	ld a, a                                          ; $6ece: $7f
	cp $9e                                           ; $6ecf: $fe $9e
	dec b                                            ; $6ed1: $05
	ld l, e                                          ; $6ed2: $6b
	ld e, [hl]                                       ; $6ed3: $5e
	ld c, e                                          ; $6ed4: $4b
	ld h, b                                          ; $6ed5: $60
	sbc [hl]                                         ; $6ed6: $9e
	and [hl]                                         ; $6ed7: $a6
	ld [hl], a                                       ; $6ed8: $77
	ld h, b                                          ; $6ed9: $60
	sub l                                            ; $6eda: $95
	di                                               ; $6edb: $f3
	rra                                              ; $6edc: $1f
	cp $0b                                           ; $6edd: $fe $0b
	ld a, [$efc7]                                    ; $6edf: $fa $c7 $ef
	rst FarCall                                          ; $6ee2: $f7
	cp l                                             ; $6ee3: $bd
	cp a                                             ; $6ee4: $bf
	ld c, a                                          ; $6ee5: $4f
	ld h, b                                          ; $6ee6: $60
	ld l, a                                          ; $6ee7: $6f
	add b                                            ; $6ee8: $80
	sbc e                                            ; $6ee9: $9b
	sbc a                                            ; $6eea: $9f
	ld hl, sp-$64                                    ; $6eeb: $f8 $9c
	di                                               ; $6eed: $f3
	ld [hl], e                                       ; $6eee: $73
	add b                                            ; $6eef: $80
	sbc [hl]                                         ; $6ef0: $9e
	ldh [$3f], a                                     ; $6ef1: $e0 $3f
	add b                                            ; $6ef3: $80
	sbc c                                            ; $6ef4: $99
	pop hl                                           ; $6ef5: $e1
	add a                                            ; $6ef6: $87
	adc [hl]                                         ; $6ef7: $8e
	ld a, a                                          ; $6ef8: $7f
	rst FarCall                                          ; $6ef9: $f7
	ld hl, sp+$77                                    ; $6efa: $f8 $77
	add b                                            ; $6efc: $80
	sub a                                            ; $6efd: $97
	rlca                                             ; $6efe: $07
	nop                                              ; $6eff: $00
	ccf                                              ; $6f00: $3f
	ld a, b                                          ; $6f01: $78
	xor $fe                                          ; $6f02: $ee $fe
	jr c, jr_06a_6f82                                ; $6f04: $38 $7c

	ld c, a                                          ; $6f06: $4f
	add b                                            ; $6f07: $80
	sbc e                                            ; $6f08: $9b
	ld h, b                                          ; $6f09: $60
	ld b, c                                          ; $6f0a: $41
	ld h, c                                          ; $6f0b: $61
	ld b, c                                          ; $6f0c: $41
	ld l, a                                          ; $6f0d: $6f
	add b                                            ; $6f0e: $80
	ld a, a                                          ; $6f0f: $7f
	ldh [$7f], a                                     ; $6f10: $e0 $7f
	ld a, [hl]                                       ; $6f12: $7e
	rst SubAFromDE                                          ; $6f13: $df
	rlca                                             ; $6f14: $07
	sbc l                                            ; $6f15: $9d
	nop                                              ; $6f16: $00
	ld bc, $804f                                     ; $6f17: $01 $4f $80
	ld a, a                                          ; $6f1a: $7f
	cp $99                                           ; $6f1b: $fe $99
	db $fd                                           ; $6f1d: $fd
	rst JumpTable                                          ; $6f1e: $c7
	dec l                                            ; $6f1f: $2d
	rst FarCall                                          ; $6f20: $f7
	db $d3                                           ; $6f21: $d3
	ccf                                              ; $6f22: $3f
	ld a, e                                          ; $6f23: $7b
	add b                                            ; $6f24: $80
	ld a, a                                          ; $6f25: $7f
	ld de, $879c                                     ; $6f26: $11 $9c $87
	db $fd                                           ; $6f29: $fd
	rst $38                                          ; $6f2a: $ff
	inc bc                                           ; $6f2b: $03
	add b                                            ; $6f2c: $80
	dec de                                           ; $6f2d: $1b
	add b                                            ; $6f2e: $80
	ld a, a                                          ; $6f2f: $7f
	cp $9c                                           ; $6f30: $fe $9c
	add $fe                                          ; $6f32: $c6 $fe
	ld a, h                                          ; $6f34: $7c
	dec de                                           ; $6f35: $1b
	add b                                            ; $6f36: $80
	ld a, a                                          ; $6f37: $7f
	cp $9c                                           ; $6f38: $fe $9c
	ld b, $07                                        ; $6f3a: $06 $07

Jump_06a_6f3c:
	ld bc, $803f                                     ; $6f3c: $01 $3f $80
	sbc b                                            ; $6f3f: $98
	add a                                            ; $6f40: $87
	ld a, l                                          ; $6f41: $7d
	rst SubAFromBC                                          ; $6f42: $e7
	sub e                                            ; $6f43: $93
	ld a, a                                          ; $6f44: $7f
	xor $1b                                          ; $6f45: $ee $1b
	ld a, e                                          ; $6f47: $7b
	add b                                            ; $6f48: $80
	sbc e                                            ; $6f49: $9b
	rlca                                             ; $6f4a: $07
	dec a                                            ; $6f4b: $3d
	rst $38                                          ; $6f4c: $ff
	push af                                          ; $6f4d: $f5
	ld d, e                                          ; $6f4e: $53
	add b                                            ; $6f4f: $80
	ei                                               ; $6f50: $fb
	sub c                                            ; $6f51: $91
	add b                                            ; $6f52: $80
	nop                                              ; $6f53: $00
	ldh [$c0], a                                     ; $6f54: $e0 $c0
	ld hl, sp+$70                                    ; $6f56: $f8 $70
	cp $3c                                           ; $6f58: $fe $3c
	ld a, a                                          ; $6f5a: $7f
	rrca                                             ; $6f5b: $0f
	ccf                                              ; $6f5c: $3f
	rlca                                             ; $6f5d: $07
	rra                                              ; $6f5e: $1f
	inc bc                                           ; $6f5f: $03
	ld [hl], a                                       ; $6f60: $77
	sub [hl]                                         ; $6f61: $96
	sbc [hl]                                         ; $6f62: $9e
	inc bc                                           ; $6f63: $03
	sbc $01                                          ; $6f64: $de $01
	db $fd                                           ; $6f66: $fd
	add b                                            ; $6f67: $80
	jr nc, jr_06a_6f6a                               ; $6f68: $30 $00

jr_06a_6f6a:
	pop de                                           ; $6f6a: $d1
	ld d, b                                          ; $6f6b: $50
	ld d, c                                          ; $6f6c: $51
	jr nz, @+$05                                     ; $6f6d: $20 $03

	nop                                              ; $6f6f: $00
	ld h, a                                          ; $6f70: $67
	ld bc, $030f                                     ; $6f71: $01 $0f $03
	inc e                                            ; $6f74: $1c
	rrca                                             ; $6f75: $0f
	ld a, b                                          ; $6f76: $78
	sbc a                                            ; $6f77: $9f
	ld sp, hl                                        ; $6f78: $f9
	rst $38                                          ; $6f79: $ff
	db $ed                                           ; $6f7a: $ed
	rst $38                                          ; $6f7b: $ff
	or a                                             ; $6f7c: $b7
	rst $38                                          ; $6f7d: $ff
	pop de                                           ; $6f7e: $d1
	cp a                                             ; $6f7f: $bf
	ret c                                            ; $6f80: $d8

	cp a                                             ; $6f81: $bf

jr_06a_6f82:
	db $fd                                           ; $6f82: $fd
	sbc a                                            ; $6f83: $9f
	or $9f                                           ; $6f84: $f6 $9f
	rst FarCall                                          ; $6f86: $f7
	sbc b                                            ; $6f87: $98
	rra                                              ; $6f88: $1f
	jr nc, jr_06a_6f8b                               ; $6f89: $30 $00

jr_06a_6f8b:
	ld b, c                                          ; $6f8b: $41
	ret nc                                           ; $6f8c: $d0

	ld h, c                                          ; $6f8d: $61
	ld h, b                                          ; $6f8e: $60
	inc bc                                           ; $6f8f: $03
	ldh [$9b], a                                     ; $6f90: $e0 $9b
	ld b, b                                          ; $6f92: $40
	rlca                                             ; $6f93: $07
	ld bc, $1f6f                                     ; $6f94: $01 $6f $1f
	ldh [$9c], a                                     ; $6f97: $e0 $9c
	ldh [$c3], a                                     ; $6f99: $e0 $c3
	ld h, b                                          ; $6f9b: $60
	daa                                              ; $6f9c: $27
	ldh [$a6], a                                     ; $6f9d: $e0 $a6
	ld bc, $ff80                                     ; $6f9f: $01 $80 $ff
	db $fd                                           ; $6fa2: $fd
	ld l, a                                          ; $6fa3: $6f
	ei                                               ; $6fa4: $fb
	ld c, a                                          ; $6fa5: $4f
	rst $38                                          ; $6fa6: $ff
	sbc [hl]                                         ; $6fa7: $9e

jr_06a_6fa8:
	ld hl, sp-$64                                    ; $6fa8: $f8 $9c

jr_06a_6faa:
	ldh a, [$3c]                                     ; $6faa: $f0 $3c
	ldh a, [$7c]                                     ; $6fac: $f0 $7c
	ldh [$58], a                                     ; $6fae: $e0 $58
	ldh [$d3], a                                     ; $6fb0: $e0 $d3
	and e                                            ; $6fb2: $a3
	ret nc                                           ; $6fb3: $d0

	and b                                            ; $6fb4: $a0
	ret nc                                           ; $6fb5: $d0

	jr nz, jr_06a_6fa8                               ; $6fb6: $20 $f0

	jr nz, jr_06a_6faa                               ; $6fb8: $20 $f0

	and b                                            ; $6fba: $a0
	ldh [$f0], a                                     ; $6fbb: $e0 $f0
	sbc b                                            ; $6fbd: $98
	ldh a, [$08]                                     ; $6fbe: $f0 $08
	add b                                            ; $6fc0: $80
	ret nc                                           ; $6fc1: $d0

	sbc b                                            ; $6fc2: $98
	db $fc                                           ; $6fc3: $fc
	db $fc                                           ; $6fc4: $fc
	cp $fe                                           ; $6fc5: $fe $fe
	rst $38                                          ; $6fc7: $ff
	ei                                               ; $6fc8: $fb
	rst $38                                          ; $6fc9: $ff
	ld sp, hl                                        ; $6fca: $f9
	rst $38                                          ; $6fcb: $ff
	ld hl, sp-$01                                    ; $6fcc: $f8 $ff
	ld hl, sp-$21                                    ; $6fce: $f8 $df
	ldh a, [$9e]                                     ; $6fd0: $f0 $9e
	ldh a, [$be]                                     ; $6fd2: $f0 $be
	ldh a, [$bc]                                     ; $6fd4: $f0 $bc
	ret nc                                           ; $6fd6: $d0

	ld a, h                                          ; $6fd7: $7c
	ret nc                                           ; $6fd8: $d0

	ld a, h                                          ; $6fd9: $7c
	ret nz                                           ; $6fda: $c0

	ld a, b                                          ; $6fdb: $78
	ret nz                                           ; $6fdc: $c0

	ld a, b                                          ; $6fdd: $78
	ldh [$78], a                                     ; $6fde: $e0 $78
	sub h                                            ; $6fe0: $94
	ldh [$38], a                                     ; $6fe1: $e0 $38
	ld [hl], b                                       ; $6fe3: $70
	ret nz                                           ; $6fe4: $c0

	ldh [$f0], a                                     ; $6fe5: $e0 $f0
	inc e                                            ; $6fe7: $1c
	cp $32                                           ; $6fe8: $fe $32
	rrca                                             ; $6fea: $0f
	rra                                              ; $6feb: $1f
	cp l                                             ; $6fec: $bd
	rrca                                             ; $6fed: $0f
	rlca                                             ; $6fee: $07
	rlca                                             ; $6fef: $07
	adc $9c                                          ; $6ff0: $ce $9c
	cp $f8                                           ; $6ff2: $fe $f8
	ld hl, sp-$0b                                    ; $6ff4: $f8 $f5
	sbc l                                            ; $6ff6: $9d
	ld h, b                                          ; $6ff7: $60
	ld b, b                                          ; $6ff8: $40
	ld a, e                                          ; $6ff9: $7b
	cp $9b                                           ; $6ffa: $fe $9b
	ld b, e                                          ; $6ffc: $43
	inc hl                                           ; $6ffd: $23
	inc bc                                           ; $6ffe: $03
	add a                                            ; $6fff: $87
	cp l                                             ; $7000: $bd
	add a                                            ; $7001: $87
	rlca                                             ; $7002: $07
	rlca                                             ; $7003: $07
	inc b                                            ; $7004: $04
	sbc e                                            ; $7005: $9b
	rlca                                             ; $7006: $07
	inc bc                                           ; $7007: $03
	inc bc                                           ; $7008: $03
	nop                                              ; $7009: $00
	cp [hl]                                          ; $700a: $be
	ld [$060c], sp                                   ; $700b: $08 $0c $06
	add b                                            ; $700e: $80
	ld [$180c], sp                                   ; $700f: $08 $0c $18
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	rst $38                                          ; $7014: $ff
	ld h, $1f                                        ; $7015: $26 $1f
	and $fd                                          ; $7017: $e6 $fd
	rst $38                                          ; $7019: $ff
	push hl                                          ; $701a: $e5
	rra                                              ; $701b: $1f
	rst $38                                          ; $701c: $ff
	inc bc                                           ; $701d: $03
	cp $03                                           ; $701e: $fe $03
	ld a, [$ff07]                                    ; $7020: $fa $07 $ff
	rlca                                             ; $7023: $07
	ld a, l                                          ; $7024: $7d
	rst $38                                          ; $7025: $ff
	push de                                          ; $7026: $d5
	rst AddAOntoHL                                          ; $7027: $ef
	db $fd                                           ; $7028: $fd
	rrca                                             ; $7029: $0f
	dec a                                            ; $702a: $3d
	rrca                                             ; $702b: $0f
	dec a                                            ; $702c: $3d
	rra                                              ; $702d: $1f
	sbc [hl]                                         ; $702e: $9e
	ld a, l                                          ; $702f: $7d
	ld a, e                                          ; $7030: $7b
	cp $92                                           ; $7031: $fe $92
	push de                                          ; $7033: $d5
	ccf                                              ; $7034: $3f
	db $ed                                           ; $7035: $ed
	scf                                              ; $7036: $37
	cp l                                             ; $7037: $bd

Call_06a_7038:
	ld h, a                                          ; $7038: $67
	db $fd                                           ; $7039: $fd
	ld a, a                                          ; $703a: $7f
	xor l                                            ; $703b: $ad
	rst $38                                          ; $703c: $ff
	xor l                                            ; $703d: $ad
	rst $38                                          ; $703e: $ff
	xor d                                            ; $703f: $aa
	ld l, e                                          ; $7040: $6b
	cp $91                                           ; $7041: $fe $91
	ld a, [hl+]                                      ; $7043: $2a
	rst $38                                          ; $7044: $ff
	add hl, hl                                       ; $7045: $29
	rst $38                                          ; $7046: $ff
	xor c                                            ; $7047: $a9
	rst $38                                          ; $7048: $ff
	pop hl                                           ; $7049: $e1
	rst $38                                          ; $704a: $ff
	pop bc                                           ; $704b: $c1
	rst $38                                          ; $704c: $ff
	inc bc                                           ; $704d: $03
	rst $38                                          ; $704e: $ff
	rlca                                             ; $704f: $07
	rst $38                                          ; $7050: $ff
	ld c, a                                          ; $7051: $4f
	ld b, b                                          ; $7052: $40
	sbc [hl]                                         ; $7053: $9e
	ld e, e                                          ; $7054: $5b
	ld b, e                                          ; $7055: $43
	ld b, b                                          ; $7056: $40
	ld a, a                                          ; $7057: $7f
	ld h, b                                          ; $7058: $60
	sbc c                                            ; $7059: $99
	ldh a, [$f8]                                     ; $705a: $f0 $f8
	inc c                                            ; $705c: $0c
	cp $3a                                           ; $705d: $fe $3a
	rlca                                             ; $705f: $07
	ld [hl], e                                       ; $7060: $73
	ld h, b                                          ; $7061: $60
	sbc b                                            ; $7062: $98
	jr c, jr_06a_70e2                                ; $7063: $38 $7d

	cp $d6                                           ; $7065: $fe $d6
	cp $f8                                           ; $7067: $fe $f8
	ld [hl], b                                       ; $7069: $70
	rra                                              ; $706a: $1f
	ld h, b                                          ; $706b: $60
	sbc d                                            ; $706c: $9a
	dec b                                            ; $706d: $05
	inc bc                                           ; $706e: $03
	inc bc                                           ; $706f: $03
	rlca                                             ; $7070: $07
	ld [bc], a                                       ; $7071: $02
	ld c, e                                          ; $7072: $4b
	ld h, b                                          ; $7073: $60
	sbc c                                            ; $7074: $99
	rlca                                             ; $7075: $07
	cp $fd                                           ; $7076: $fe $fd
	rst $38                                          ; $7078: $ff
	db $fd                                           ; $7079: $fd
	rlca                                             ; $707a: $07
	ld l, a                                          ; $707b: $6f
	ld h, b                                          ; $707c: $60
	sbc c                                            ; $707d: $99
	rst SubAFromDE                                          ; $707e: $df
	rst SubAFromBC                                          ; $707f: $e7
	db $fd                                           ; $7080: $fd
	rst $38                                          ; $7081: $ff
	or l                                             ; $7082: $b5
	rst GetHLinHL                                          ; $7083: $cf
	ld d, a                                          ; $7084: $57
	ld h, b                                          ; $7085: $60
	ld d, a                                          ; $7086: $57
	add b                                            ; $7087: $80
	sbc c                                            ; $7088: $99
	ld a, a                                          ; $7089: $7f
	ldh [$5b], a                                     ; $708a: $e0 $5b
	db $e3                                           ; $708c: $e3
	pop de                                           ; $708d: $d1
	and b                                            ; $708e: $a0
	ld b, e                                          ; $708f: $43
	add b                                            ; $7090: $80
	adc a                                            ; $7091: $8f
	db $fc                                           ; $7092: $fc
	ld c, $fe                                        ; $7093: $0e $fe
	inc a                                            ; $7095: $3c
	inc bc                                           ; $7096: $03
	rra                                              ; $7097: $1f

Call_06a_7098:
	nop                                              ; $7098: $00
	rlca                                             ; $7099: $07
	jr jr_06a_7119                                   ; $709a: $18 $7d

	cp $d7                                           ; $709c: $fe $d7
	cp $98                                           ; $709e: $fe $98
	or d                                             ; $70a0: $b2
	ret c                                            ; $70a1: $d8

	ld b, a                                          ; $70a2: $47
	add b                                            ; $70a3: $80
	sbc d                                            ; $70a4: $9a
	ld b, c                                          ; $70a5: $41
	ld h, c                                          ; $70a6: $61
	ld b, e                                          ; $70a7: $43
	inc hl                                           ; $70a8: $23
	ld [bc], a                                       ; $70a9: $02
	ld [hl], a                                       ; $70aa: $77
	add b                                            ; $70ab: $80
	ld [hl], a                                       ; $70ac: $77
	add d                                            ; $70ad: $82
	sbc l                                            ; $70ae: $9d
	ld b, $03                                        ; $70af: $06 $03
	rra                                              ; $70b1: $1f
	add b                                            ; $70b2: $80
	sbc l                                            ; $70b3: $9d
	jp c, Jump_06a_7be7                              ; $70b4: $da $e7 $7b

	ld de, $c79c                                     ; $70b7: $11 $9c $c7
	or l                                             ; $70ba: $b5
	adc a                                            ; $70bb: $8f
	ld b, a                                          ; $70bc: $47
	add b                                            ; $70bd: $80
	sbc [hl]                                         ; $70be: $9e
	ld c, h                                          ; $70bf: $4c
	ld h, a                                          ; $70c0: $67
	add b                                            ; $70c1: $80
	sbc h                                            ; $70c2: $9c
	db $e3                                           ; $70c3: $e3
	ld e, c                                          ; $70c4: $59
	ldh [$7b], a                                     ; $70c5: $e0 $7b
	add d                                            ; $70c7: $82
	inc sp                                           ; $70c8: $33
	add b                                            ; $70c9: $80
	ld l, a                                          ; $70ca: $6f
	add d                                            ; $70cb: $82
	sbc e                                            ; $70cc: $9b
	sbc c                                            ; $70cd: $99
	or d                                             ; $70ce: $b2
	ld [hl], b                                       ; $70cf: $70
	ld [hl], b                                       ; $70d0: $70
	daa                                              ; $70d1: $27
	add b                                            ; $70d2: $80
	sbc [hl]                                         ; $70d3: $9e
	add l                                            ; $70d4: $85
	ld [hl], a                                       ; $70d5: $77
	add d                                            ; $70d6: $82
	ld a, a                                          ; $70d7: $7f
	add e                                            ; $70d8: $83
	ld b, e                                          ; $70d9: $43
	add b                                            ; $70da: $80
	sbc h                                            ; $70db: $9c
	ccf                                              ; $70dc: $3f
	cp $c5                                           ; $70dd: $fe $c5
	ld [hl], e                                       ; $70df: $73
	add b                                            ; $70e0: $80
	sub a                                            ; $70e1: $97

jr_06a_70e2:
	sbc $e3                                          ; $70e2: $de $e3
	ld a, d                                          ; $70e4: $7a
	rst SubAFromBC                                          ; $70e5: $e7
	ld e, a                                          ; $70e6: $5f
	rst $38                                          ; $70e7: $ff
	cp l                                             ; $70e8: $bd
	add a                                            ; $70e9: $87
	ld c, a                                          ; $70ea: $4f
	add b                                            ; $70eb: $80
	rst $38                                          ; $70ec: $ff
	sbc [hl]                                         ; $70ed: $9e
	ld bc, $00be                                     ; $70ee: $01 $be $00
	add b                                            ; $70f1: $80
	ldh [hDisp1_OBP1], a                                     ; $70f2: $e0 $94
	ret nz                                           ; $70f4: $c0

	ld hl, sp+$70                                    ; $70f5: $f8 $70
	cp $3c                                           ; $70f7: $fe $3c
	ld a, a                                          ; $70f9: $7f
	rrca                                             ; $70fa: $0f
	ccf                                              ; $70fb: $3f
	rlca                                             ; $70fc: $07
	rra                                              ; $70fd: $1f
	inc bc                                           ; $70fe: $03
	ld [hl], l                                       ; $70ff: $75
	or $9e                                           ; $7100: $f6 $9e
	inc bc                                           ; $7102: $03
	sbc $01                                          ; $7103: $de $01
	db $fd                                           ; $7105: $fd
	sbc d                                            ; $7106: $9a
	jr nc, jr_06a_7109                               ; $7107: $30 $00

jr_06a_7109:
	pop de                                           ; $7109: $d1
	ret nc                                           ; $710a: $d0

	ld h, c                                          ; $710b: $61
	cp a                                             ; $710c: $bf
	inc bc                                           ; $710d: $03
	ld h, a                                          ; $710e: $67
	adc b                                            ; $710f: $88
	ld bc, $030f                                     ; $7110: $01 $0f $03
	inc e                                            ; $7113: $1c
	rrca                                             ; $7114: $0f
	ld a, b                                          ; $7115: $78
	sbc a                                            ; $7116: $9f
	ld sp, hl                                        ; $7117: $f9
	rst $38                                          ; $7118: $ff

jr_06a_7119:
	db $ed                                           ; $7119: $ed
	rst $38                                          ; $711a: $ff
	or a                                             ; $711b: $b7
	rst $38                                          ; $711c: $ff
	pop de                                           ; $711d: $d1
	cp a                                             ; $711e: $bf
	ret c                                            ; $711f: $d8

	cp a                                             ; $7120: $bf
	db $fd                                           ; $7121: $fd
	sbc a                                            ; $7122: $9f
	or $9f                                           ; $7123: $f6 $9f
	rst FarCall                                          ; $7125: $f7
	rra                                              ; $7126: $1f
	ld [hl], a                                       ; $7127: $77
	ldh [$9d], a                                     ; $7128: $e0 $9d
	ld hl, $0f60                                     ; $712a: $21 $60 $0f
	ldh [$98], a                                     ; $712d: $e0 $98
	ld [hl], c                                       ; $712f: $71
	ldh [$03], a                                     ; $7130: $e0 $03
	ld h, b                                          ; $7132: $60
	rlca                                             ; $7133: $07
	ld bc, $236f                                     ; $7134: $01 $6f $23
	ldh [hDisp1_WX], a                                     ; $7137: $e0 $96
	pop af                                           ; $7139: $f1
	ldh [rSCX], a                                    ; $713a: $e0 $43
	ld h, b                                          ; $713c: $60
	rlca                                             ; $713d: $07
	ld b, c                                          ; $713e: $41
	rrca                                             ; $713f: $0f
	inc bc                                           ; $7140: $03
	ld a, h                                          ; $7141: $7c
	dec sp                                           ; $7142: $3b
	ldh [$9d], a                                     ; $7143: $e0 $9d
	ld bc, $ff80                                     ; $7145: $01 $80 $ff
	db $fd                                           ; $7148: $fd
	ld l, a                                          ; $7149: $6f
	ei                                               ; $714a: $fb
	ld c, h                                          ; $714b: $4c
	rst $38                                          ; $714c: $ff
	sbc [hl]                                         ; $714d: $9e

jr_06a_714e:
	ld hl, sp-$64                                    ; $714e: $f8 $9c

jr_06a_7150:
	ldh a, [$3c]                                     ; $7150: $f0 $3c
	ldh a, [$7f]                                     ; $7152: $f0 $7f
	db $e3                                           ; $7154: $e3
	ld e, c                                          ; $7155: $59
	pop hl                                           ; $7156: $e1
	pop de                                           ; $7157: $d1
	and b                                            ; $7158: $a0
	ret nc                                           ; $7159: $d0

	and b                                            ; $715a: $a0
	ret nc                                           ; $715b: $d0

	jr nz, jr_06a_714e                               ; $715c: $20 $f0

	jr nz, jr_06a_7150                               ; $715e: $20 $f0

	and b                                            ; $7160: $a0
	ldh [$f0], a                                     ; $7161: $e0 $f0
	sbc b                                            ; $7163: $98
	ldh a, [$08]                                     ; $7164: $f0 $08
	add b                                            ; $7166: $80
	ret nc                                           ; $7167: $d0

	sbc b                                            ; $7168: $98
	db $fc                                           ; $7169: $fc
	db $fc                                           ; $716a: $fc
	cp $fe                                           ; $716b: $fe $fe
	rst $38                                          ; $716d: $ff
	ei                                               ; $716e: $fb
	rst $38                                          ; $716f: $ff
	ld sp, hl                                        ; $7170: $f9
	rst $38                                          ; $7171: $ff
	ld hl, sp-$01                                    ; $7172: $f8 $ff
	ld hl, sp-$21                                    ; $7174: $f8 $df
	ldh a, [$9e]                                     ; $7176: $f0 $9e
	ldh a, [$be]                                     ; $7178: $f0 $be
	ldh a, [$bc]                                     ; $717a: $f0 $bc
	ret nc                                           ; $717c: $d0

	ld a, h                                          ; $717d: $7c
	ret nc                                           ; $717e: $d0

	ld a, h                                          ; $717f: $7c
	ret nz                                           ; $7180: $c0

	ld a, b                                          ; $7181: $78
	ret nz                                           ; $7182: $c0

	ld a, b                                          ; $7183: $78
	ldh [$78], a                                     ; $7184: $e0 $78
	adc c                                            ; $7186: $89
	ldh [$38], a                                     ; $7187: $e0 $38
	ld [hl], b                                       ; $7189: $70
	ret nz                                           ; $718a: $c0

	add b                                            ; $718b: $80
	ld hl, sp-$08                                    ; $718c: $f8 $f8
	cp $3e                                           ; $718e: $fe $3e
	rlca                                             ; $7190: $07
	rra                                              ; $7191: $1f
	nop                                              ; $7192: $00
	dec a                                            ; $7193: $3d
	ld a, [hl]                                       ; $7194: $7e
	rst FarCall                                          ; $7195: $f7
	cp $99                                           ; $7196: $fe $99
	or d                                             ; $7198: $b2
	ld [hl], b                                       ; $7199: $70
	ld [hl], b                                       ; $719a: $70
	ret c                                            ; $719b: $d8

	ld [hl], b                                       ; $719c: $70
	push af                                          ; $719d: $f5
	adc d                                            ; $719e: $8a
	ld h, b                                          ; $719f: $60
	ld b, b                                          ; $71a0: $40
	ld h, b                                          ; $71a1: $60
	ld b, b                                          ; $71a2: $40
	ld h, c                                          ; $71a3: $61
	ld b, b                                          ; $71a4: $40
	inc hl                                           ; $71a5: $23
	inc bc                                           ; $71a6: $03
	add a                                            ; $71a7: $87
	nop                                              ; $71a8: $00
	add l                                            ; $71a9: $85
	inc bc                                           ; $71aa: $03
	inc bc                                           ; $71ab: $03
	rlca                                             ; $71ac: $07
	ld b, $02                                        ; $71ad: $06 $02
	inc bc                                           ; $71af: $03
	inc bc                                           ; $71b0: $03
	ld [bc], a                                       ; $71b1: $02
	inc bc                                           ; $71b2: $03
	nop                                              ; $71b3: $00
	cp [hl]                                          ; $71b4: $be
	ld [$060c], sp                                   ; $71b5: $08 $0c $06
	add b                                            ; $71b8: $80
	ld [$180c], sp                                   ; $71b9: $08 $0c $18
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	rst $38                                          ; $71be: $ff
	ld h, $c7                                        ; $71bf: $26 $c7
	ld a, $7d                                        ; $71c1: $3e $7d
	rst $38                                          ; $71c3: $ff
	or l                                             ; $71c4: $b5
	rst GetHLinHL                                          ; $71c5: $cf
	rst $38                                          ; $71c6: $ff
	inc bc                                           ; $71c7: $03
	cp [hl]                                          ; $71c8: $be
	jp $e7fa                                         ; $71c9: $c3 $fa $e7


	ld e, a                                          ; $71cc: $5f
	rst $38                                          ; $71cd: $ff
	cp l                                             ; $71ce: $bd
	and a                                            ; $71cf: $a7
	or l                                             ; $71d0: $b5
	adc a                                            ; $71d1: $8f
	db $fd                                           ; $71d2: $fd
	rrca                                             ; $71d3: $0f
	dec a                                            ; $71d4: $3d
	rrca                                             ; $71d5: $0f
	dec a                                            ; $71d6: $3d
	rra                                              ; $71d7: $1f
	sbc [hl]                                         ; $71d8: $9e
	ld a, l                                          ; $71d9: $7d
	ld a, e                                          ; $71da: $7b
	cp $92                                           ; $71db: $fe $92
	push de                                          ; $71dd: $d5
	ccf                                              ; $71de: $3f
	db $ed                                           ; $71df: $ed
	scf                                              ; $71e0: $37
	cp l                                             ; $71e1: $bd
	ld h, a                                          ; $71e2: $67
	db $fd                                           ; $71e3: $fd
	ld a, a                                          ; $71e4: $7f
	xor l                                            ; $71e5: $ad
	rst $38                                          ; $71e6: $ff
	xor l                                            ; $71e7: $ad
	rst $38                                          ; $71e8: $ff
	xor d                                            ; $71e9: $aa
	ld l, e                                          ; $71ea: $6b
	cp $91                                           ; $71eb: $fe $91
	ld a, [hl+]                                      ; $71ed: $2a
	rst $38                                          ; $71ee: $ff
	add hl, hl                                       ; $71ef: $29
	rst $38                                          ; $71f0: $ff
	xor c                                            ; $71f1: $a9
	rst $38                                          ; $71f2: $ff
	pop hl                                           ; $71f3: $e1
	rst $38                                          ; $71f4: $ff
	pop bc                                           ; $71f5: $c1
	rst $38                                          ; $71f6: $ff
	inc bc                                           ; $71f7: $03
	rst $38                                          ; $71f8: $ff
	rlca                                             ; $71f9: $07
	rst $38                                          ; $71fa: $ff
	ld [hl], a                                       ; $71fb: $77
	ld b, b                                          ; $71fc: $40
	sbc [hl]                                         ; $71fd: $9e
	ld c, a                                          ; $71fe: $4f
	ld l, e                                          ; $71ff: $6b
	ld b, b                                          ; $7200: $40
	sbc c                                            ; $7201: $99
	ld a, h                                          ; $7202: $7c
	ldh [$5b], a                                     ; $7203: $e0 $5b
	db $e3                                           ; $7205: $e3
	pop de                                           ; $7206: $d1
	and c                                            ; $7207: $a1
	ld c, a                                          ; $7208: $4f
	ld b, b                                          ; $7209: $40
	ld e, a                                          ; $720a: $5f
	ld h, b                                          ; $720b: $60
	sbc [hl]                                         ; $720c: $9e
	rrca                                             ; $720d: $0f
	ld [hl], e                                       ; $720e: $73
	ld e, [hl]                                       ; $720f: $5e
	sbc l                                            ; $7210: $9d
	cp b                                             ; $7211: $b8
	or d                                             ; $7212: $b2
	daa                                              ; $7213: $27
	ld h, b                                          ; $7214: $60
	ld a, a                                          ; $7215: $7f
	cp $9e                                           ; $7216: $fe $9e
	dec b                                            ; $7218: $05
	ld a, e                                          ; $7219: $7b
	ld e, [hl]                                       ; $721a: $5e
	ccf                                              ; $721b: $3f
	ld h, b                                          ; $721c: $60
	adc a                                            ; $721d: $8f
	rst $38                                          ; $721e: $ff
	ld b, $7d                                        ; $721f: $06 $7d
	rst $38                                          ; $7221: $ff
	add l                                            ; $7222: $85
	rst $38                                          ; $7223: $ff
	rst $38                                          ; $7224: $ff
	inc bc                                           ; $7225: $03
	cp $03                                           ; $7226: $fe $03
	cp d                                             ; $7228: $ba
	rst JumpTable                                          ; $7229: $c7
	rst $38                                          ; $722a: $ff
	rst SubAFromBC                                          ; $722b: $e7
	db $fd                                           ; $722c: $fd
	cp a                                             ; $722d: $bf
	ld c, a                                          ; $722e: $4f
	ld h, b                                          ; $722f: $60
	ld c, a                                          ; $7230: $4f
	add b                                            ; $7231: $80
	sbc e                                            ; $7232: $9b
	ld e, b                                          ; $7233: $58
	ldh [$d3], a                                     ; $7234: $e0 $d3
	and e                                            ; $7236: $a3
	ld b, e                                          ; $7237: $43
	add b                                            ; $7238: $80
	sub a                                            ; $7239: $97
	ldh a, [$f8]                                     ; $723a: $f0 $f8
	cp $36                                           ; $723c: $fe $36
	rrca                                             ; $723e: $0f
	ld e, $01                                        ; $723f: $1e $01
	rrca                                             ; $7241: $0f
	cp a                                             ; $7242: $bf
	rlca                                             ; $7243: $07
	dec sp                                           ; $7244: $3b
	sbc d                                            ; $7245: $9a
	ld a, h                                          ; $7246: $7c
	or $fe                                           ; $7247: $f6 $fe
	ld e, b                                          ; $7249: $58
	ld hl, sp+$3b                                    ; $724a: $f8 $3b
	add b                                            ; $724c: $80
	sbc l                                            ; $724d: $9d
	ld bc, $7b82                                     ; $724e: $01 $82 $7b
	ld a, [hl]                                       ; $7251: $7e
	ld a, a                                          ; $7252: $7f
	ldh [rPCM34], a                                  ; $7253: $e0 $77
	ld a, [hl]                                       ; $7255: $7e
	rra                                              ; $7256: $1f
	add b                                            ; $7257: $80
	sbc d                                            ; $7258: $9a
	ld a, [$bf07]                                    ; $7259: $fa $07 $bf
	rst JumpTable                                          ; $725c: $c7
	db $fd                                           ; $725d: $fd
	ld a, d                                          ; $725e: $7a
	call nc, $8003                                   ; $725f: $d4 $03 $80
	ld c, a                                          ; $7262: $4f
	add b                                            ; $7263: $80
	sbc d                                            ; $7264: $9a
	ldh [$f8], a                                     ; $7265: $e0 $f8
	cp $26                                           ; $7267: $fe $26
	rra                                              ; $7269: $1f
	ld l, a                                          ; $726a: $6f
	add b                                            ; $726b: $80
	ld a, a                                          ; $726c: $7f
	cp $9c                                           ; $726d: $fe $9c
	adc $fe                                          ; $726f: $ce $fe
	ld hl, sp+$1b                                    ; $7271: $f8 $1b
	add b                                            ; $7273: $80
	ld a, a                                          ; $7274: $7f
	cp $9e                                           ; $7275: $fe $9e
	inc b                                            ; $7277: $04
	ld a, d                                          ; $7278: $7a
	cp $47                                           ; $7279: $fe $47
	add b                                            ; $727b: $80
	sbc c                                            ; $727c: $99
	sbc l                                            ; $727d: $9d
	ld a, a                                          ; $727e: $7f
	push hl                                          ; $727f: $e5
	rst $38                                          ; $7280: $ff
	ld a, a                                          ; $7281: $7f
	add e                                            ; $7282: $83
	ld [hl], a                                       ; $7283: $77
	add b                                            ; $7284: $80
	ld a, [hl]                                       ; $7285: $7e
	adc a                                            ; $7286: $8f
	ld a, a                                          ; $7287: $7f
	ld [hl], h                                       ; $7288: $74
	sbc l                                            ; $7289: $9d
	push de                                          ; $728a: $d5
	rst AddAOntoHL                                          ; $728b: $ef
	ld d, a                                          ; $728c: $57
	add b                                            ; $728d: $80
	ei                                               ; $728e: $fb
	sub c                                            ; $728f: $91
	add b                                            ; $7290: $80
	nop                                              ; $7291: $00
	ldh [$c0], a                                     ; $7292: $e0 $c0
	ld hl, sp+$70                                    ; $7294: $f8 $70
	cp $3c                                           ; $7296: $fe $3c
	ld a, a                                          ; $7298: $7f
	rrca                                             ; $7299: $0f
	ccf                                              ; $729a: $3f
	rlca                                             ; $729b: $07
	rra                                              ; $729c: $1f
	inc bc                                           ; $729d: $03
	ld [hl], a                                       ; $729e: $77

Jump_06a_729f:
	sub [hl]                                         ; $729f: $96
	sbc [hl]                                         ; $72a0: $9e
	inc bc                                           ; $72a1: $03
	sbc $01                                          ; $72a2: $de $01
	db $fd                                           ; $72a4: $fd
	sbc d                                            ; $72a5: $9a
	jr nc, jr_06a_72a8                               ; $72a6: $30 $00

jr_06a_72a8:
	ld b, c                                          ; $72a8: $41
	ret nc                                           ; $72a9: $d0

	ld h, c                                          ; $72aa: $61
	cp a                                             ; $72ab: $bf
	inc bc                                           ; $72ac: $03
	ld h, a                                          ; $72ad: $67
	ld a, a                                          ; $72ae: $7f
	add b                                            ; $72af: $80
	add h                                            ; $72b0: $84
	inc bc                                           ; $72b1: $03
	inc e                                            ; $72b2: $1c
	rrca                                             ; $72b3: $0f
	ld a, b                                          ; $72b4: $78
	sbc a                                            ; $72b5: $9f
	ld sp, hl                                        ; $72b6: $f9
	rst $38                                          ; $72b7: $ff
	db $ed                                           ; $72b8: $ed
	rst $38                                          ; $72b9: $ff
	or a                                             ; $72ba: $b7
	rst $38                                          ; $72bb: $ff
	pop de                                           ; $72bc: $d1
	cp a                                             ; $72bd: $bf
	ret c                                            ; $72be: $d8

	cp a                                             ; $72bf: $bf
	db $fd                                           ; $72c0: $fd
	sbc a                                            ; $72c1: $9f
	or $9f                                           ; $72c2: $f6 $9f
	rst FarCall                                          ; $72c4: $f7
	rra                                              ; $72c5: $1f
	jr nc, jr_06a_72c8                               ; $72c6: $30 $00

jr_06a_72c8:
	pop bc                                           ; $72c8: $c1
	ld d, b                                          ; $72c9: $50
	ld [hl], c                                       ; $72ca: $71
	ld h, b                                          ; $72cb: $60
	rrca                                             ; $72cc: $0f
	ldh [$98], a                                     ; $72cd: $e0 $98
	ld h, c                                          ; $72cf: $61
	ld [hl], b                                       ; $72d0: $70
	inc hl                                           ; $72d1: $23
	jr nz, jr_06a_731b                               ; $72d2: $20 $47

	ld bc, $2b6f                                     ; $72d4: $01 $6f $2b
	ldh [$9e], a                                     ; $72d7: $e0 $9e
	pop de                                           ; $72d9: $d1
	ld [hl], a                                       ; $72da: $77
	ldh [$9d], a                                     ; $72db: $e0 $9d
	ld h, b                                          ; $72dd: $60
	rlca                                             ; $72de: $07
	dec hl                                           ; $72df: $2b
	ldh [$b5], a                                     ; $72e0: $e0 $b5
	ld bc, $ff80                                     ; $72e2: $01 $80 $ff
	db $fd                                           ; $72e5: $fd
	ld l, a                                          ; $72e6: $6f
	ei                                               ; $72e7: $fb
	ld c, h                                          ; $72e8: $4c
	rst $38                                          ; $72e9: $ff
	sbc [hl]                                         ; $72ea: $9e

jr_06a_72eb:
	ld hl, sp-$64                                    ; $72eb: $f8 $9c

jr_06a_72ed:
	ldh a, [$3c]                                     ; $72ed: $f0 $3c
	ldh a, [$7e]                                     ; $72ef: $f0 $7e
	pop hl                                           ; $72f1: $e1
	ld e, e                                          ; $72f2: $5b
	db $e3                                           ; $72f3: $e3
	pop de                                           ; $72f4: $d1
	and b                                            ; $72f5: $a0
	ret nc                                           ; $72f6: $d0

	and b                                            ; $72f7: $a0
	ret nc                                           ; $72f8: $d0

	jr nz, jr_06a_72eb                               ; $72f9: $20 $f0

	jr nz, jr_06a_72ed                               ; $72fb: $20 $f0

	and b                                            ; $72fd: $a0
	ldh [$f0], a                                     ; $72fe: $e0 $f0
	sbc b                                            ; $7300: $98
	ldh a, [$08]                                     ; $7301: $f0 $08
	add b                                            ; $7303: $80
	ret nc                                           ; $7304: $d0

	sbc b                                            ; $7305: $98
	db $fc                                           ; $7306: $fc
	db $fc                                           ; $7307: $fc
	cp $fe                                           ; $7308: $fe $fe
	rst $38                                          ; $730a: $ff
	ei                                               ; $730b: $fb
	rst $38                                          ; $730c: $ff
	ld sp, hl                                        ; $730d: $f9
	rst $38                                          ; $730e: $ff
	ld hl, sp-$01                                    ; $730f: $f8 $ff
	ld hl, sp-$21                                    ; $7311: $f8 $df
	ldh a, [$9e]                                     ; $7313: $f0 $9e
	ldh a, [$be]                                     ; $7315: $f0 $be
	ldh a, [$bc]                                     ; $7317: $f0 $bc
	ret nc                                           ; $7319: $d0

	ld a, h                                          ; $731a: $7c

jr_06a_731b:
	ret nc                                           ; $731b: $d0

	ld a, h                                          ; $731c: $7c
	ret nz                                           ; $731d: $c0

	ld a, b                                          ; $731e: $78
	ret nz                                           ; $731f: $c0

	ld a, b                                          ; $7320: $78
	ldh [$78], a                                     ; $7321: $e0 $78
	adc c                                            ; $7323: $89
	ldh [$38], a                                     ; $7324: $e0 $38
	ld [hl], b                                       ; $7326: $70
	ret nz                                           ; $7327: $c0

	and b                                            ; $7328: $a0
	ret nz                                           ; $7329: $c0

	ldh a, [$fc]                                     ; $732a: $f0 $fc
	ld c, $3f                                        ; $732c: $0e $3f
	rra                                              ; $732e: $1f
	nop                                              ; $732f: $00
	inc bc                                           ; $7330: $03
	inc a                                            ; $7331: $3c
	rst $38                                          ; $7332: $ff
	cp $99                                           ; $7333: $fe $99
	or d                                             ; $7335: $b2
	ld [hl], b                                       ; $7336: $70
	ld [hl], b                                       ; $7337: $70
	ret c                                            ; $7338: $d8

	ld [hl], b                                       ; $7339: $70
	push af                                          ; $733a: $f5
	adc d                                            ; $733b: $8a
	ld h, b                                          ; $733c: $60
	ld b, b                                          ; $733d: $40
	ld h, b                                          ; $733e: $60
	ld b, b                                          ; $733f: $40
	ld h, c                                          ; $7340: $61
	ld b, b                                          ; $7341: $40
	inc hl                                           ; $7342: $23
	inc bc                                           ; $7343: $03
	add a                                            ; $7344: $87
	nop                                              ; $7345: $00
	add h                                            ; $7346: $84
	inc bc                                           ; $7347: $03
	inc bc                                           ; $7348: $03
	rlca                                             ; $7349: $07
	ld b, $02                                        ; $734a: $06 $02
	inc bc                                           ; $734c: $03
	inc bc                                           ; $734d: $03
	ld [bc], a                                       ; $734e: $02
	inc bc                                           ; $734f: $03
	nop                                              ; $7350: $00
	cp [hl]                                          ; $7351: $be
	ld [$060c], sp                                   ; $7352: $08 $0c $06
	add b                                            ; $7355: $80
	ld [$180c], sp                                   ; $7356: $08 $0c $18
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	rst $38                                          ; $735b: $ff
	ld h, $ff                                        ; $735c: $26 $ff
	ld b, $3d                                        ; $735e: $06 $3d
	rst $38                                          ; $7360: $ff
	push bc                                          ; $7361: $c5
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	inc bc                                           ; $7364: $03
	ld a, [hl]                                       ; $7365: $7e
	add e                                            ; $7366: $83
	jp c, Jump_06a_7fe7                              ; $7367: $da $e7 $7f

	rst $38                                          ; $736a: $ff
	cp l                                             ; $736b: $bd
	and a                                            ; $736c: $a7
	or l                                             ; $736d: $b5
	adc a                                            ; $736e: $8f
	db $fd                                           ; $736f: $fd
	rrca                                             ; $7370: $0f
	dec a                                            ; $7371: $3d
	rrca                                             ; $7372: $0f
	dec a                                            ; $7373: $3d
	rra                                              ; $7374: $1f
	sbc [hl]                                         ; $7375: $9e
	ld a, l                                          ; $7376: $7d
	ld a, e                                          ; $7377: $7b
	cp $92                                           ; $7378: $fe $92
	push de                                          ; $737a: $d5
	ccf                                              ; $737b: $3f
	db $ed                                           ; $737c: $ed
	scf                                              ; $737d: $37
	cp l                                             ; $737e: $bd
	ld h, a                                          ; $737f: $67
	db $fd                                           ; $7380: $fd
	ld a, a                                          ; $7381: $7f
	xor l                                            ; $7382: $ad
	rst $38                                          ; $7383: $ff
	xor l                                            ; $7384: $ad
	rst $38                                          ; $7385: $ff
	xor d                                            ; $7386: $aa
	ld l, e                                          ; $7387: $6b
	cp $91                                           ; $7388: $fe $91
	ld a, [hl+]                                      ; $738a: $2a
	rst $38                                          ; $738b: $ff
	add hl, hl                                       ; $738c: $29
	rst $38                                          ; $738d: $ff
	xor c                                            ; $738e: $a9
	rst $38                                          ; $738f: $ff
	pop hl                                           ; $7390: $e1
	rst $38                                          ; $7391: $ff
	pop bc                                           ; $7392: $c1
	rst $38                                          ; $7393: $ff
	inc bc                                           ; $7394: $03
	rst $38                                          ; $7395: $ff
	rlca                                             ; $7396: $07
	rst $38                                          ; $7397: $ff
	ld [hl], a                                       ; $7398: $77
	ld b, b                                          ; $7399: $40
	sbc [hl]                                         ; $739a: $9e
	ld c, l                                          ; $739b: $4d
	ld l, e                                          ; $739c: $6b
	ld b, b                                          ; $739d: $40
	sbc l                                            ; $739e: $9d
	ld a, h                                          ; $739f: $7c
	ldh [$7b], a                                     ; $73a0: $e0 $7b
	ld b, b                                          ; $73a2: $40
	sbc [hl]                                         ; $73a3: $9e
	and c                                            ; $73a4: $a1
	ld c, a                                          ; $73a5: $4f
	ld b, b                                          ; $73a6: $40
	ld l, a                                          ; $73a7: $6f
	ld h, b                                          ; $73a8: $60
	sbc b                                            ; $73a9: $98
	rrca                                             ; $73aa: $0f
	ld a, $1c                                        ; $73ab: $3e $1c
	inc bc                                           ; $73ad: $03
	rrca                                             ; $73ae: $0f
	nop                                              ; $73af: $00
	dec de                                           ; $73b0: $1b
	ld a, e                                          ; $73b1: $7b
	ld e, [hl]                                       ; $73b2: $5e
	sbc l                                            ; $73b3: $9d
	cp b                                             ; $73b4: $b8
	or d                                             ; $73b5: $b2
	inc sp                                           ; $73b6: $33
	ld h, b                                          ; $73b7: $60
	sbc l                                            ; $73b8: $9d
	ld bc, $7b86                                     ; $73b9: $01 $86 $7b
	ld e, [hl]                                       ; $73bc: $5e
	sbc [hl]                                         ; $73bd: $9e
	dec b                                            ; $73be: $05
	ld a, e                                          ; $73bf: $7b
	ld e, [hl]                                       ; $73c0: $5e
	rra                                              ; $73c1: $1f
	ld h, b                                          ; $73c2: $60
	sub a                                            ; $73c3: $97
	cp $03                                           ; $73c4: $fe $03
	ld a, d                                          ; $73c6: $7a
	add a                                            ; $73c7: $87
	rst $38                                          ; $73c8: $ff
	rst SubAFromBC                                          ; $73c9: $e7
	db $fd                                           ; $73ca: $fd
	cp a                                             ; $73cb: $bf
	ld c, a                                          ; $73cc: $4f
	ld h, b                                          ; $73cd: $60
	ld [hl], a                                       ; $73ce: $77
	add b                                            ; $73cf: $80
	sbc [hl]                                         ; $73d0: $9e
	ld c, a                                          ; $73d1: $4f
	ld h, e                                          ; $73d2: $63
	add b                                            ; $73d3: $80
	sbc e                                            ; $73d4: $9b
	ld e, b                                          ; $73d5: $58
	ldh [$d3], a                                     ; $73d6: $e0 $d3
	and e                                            ; $73d8: $a3
	ld b, a                                          ; $73d9: $47
	add b                                            ; $73da: $80
	sbc l                                            ; $73db: $9d
	ldh [$80], a                                     ; $73dc: $e0 $80
	ld a, e                                          ; $73de: $7b
	add b                                            ; $73df: $80
	sbc [hl]                                         ; $73e0: $9e
	cp $77                                           ; $73e1: $fe $77
	add b                                            ; $73e3: $80
	sub a                                            ; $73e4: $97
	rlca                                             ; $73e5: $07
	nop                                              ; $73e6: $00
	dec sp                                           ; $73e7: $3b
	ld a, h                                          ; $73e8: $7c
	or $fe                                           ; $73e9: $f6 $fe
	ld e, b                                          ; $73eb: $58
	ld hl, sp+$27                                    ; $73ec: $f8 $27
	add b                                            ; $73ee: $80
	ld a, a                                          ; $73ef: $7f
	ldh [rPCM34], a                                  ; $73f0: $e0 $77
	ld a, [hl]                                       ; $73f2: $7e
	ccf                                              ; $73f3: $3f
	add b                                            ; $73f4: $80
	sbc h                                            ; $73f5: $9c
	dec [hl]                                         ; $73f6: $35
	rst $38                                          ; $73f7: $ff
	call $8073                                       ; $73f8: $cd $73 $80
	sub a                                            ; $73fb: $97
	ld a, [$bf07]                                    ; $73fc: $fa $07 $bf
	rst JumpTable                                          ; $73ff: $c7
	db $fd                                           ; $7400: $fd
	rst $38                                          ; $7401: $ff
	or l                                             ; $7402: $b5
	rst GetHLinHL                                          ; $7403: $cf
	inc bc                                           ; $7404: $03
	add b                                            ; $7405: $80
	ld c, e                                          ; $7406: $4b
	add b                                            ; $7407: $80
	sbc d                                            ; $7408: $9a
	ldh [$fc], a                                     ; $7409: $e0 $fc
	dec e                                            ; $740b: $1d
	cp $1e                                           ; $740c: $fe $1e
	ld [hl], e                                       ; $740e: $73
	add b                                            ; $740f: $80
	ld a, a                                          ; $7410: $7f
	cp $9c                                           ; $7411: $fe $9c
	adc $fe                                          ; $7413: $ce $fe
	ld hl, sp+$37                                    ; $7415: $f8 $37
	add b                                            ; $7417: $80
	sbc l                                            ; $7418: $9d
	nop                                              ; $7419: $00
	add a                                            ; $741a: $87
	ld [hl], e                                       ; $741b: $73
	add b                                            ; $741c: $80
	ld a, a                                          ; $741d: $7f
	cp $9e                                           ; $741e: $fe $9e
	inc b                                            ; $7420: $04
	ld a, d                                          ; $7421: $7a
	cp $47                                           ; $7422: $fe $47
	add b                                            ; $7424: $80
	sbc c                                            ; $7425: $99
	or l                                             ; $7426: $b5
	ld a, a                                          ; $7427: $7f
	call Call_06a_7fff                               ; $7428: $cd $ff $7f
	add e                                            ; $742b: $83
	ld [hl], a                                       ; $742c: $77
	add b                                            ; $742d: $80
	ld a, [hl]                                       ; $742e: $7e
	adc a                                            ; $742f: $8f
	sbc e                                            ; $7430: $9b
	ld a, l                                          ; $7431: $7d
	rst $38                                          ; $7432: $ff
	push de                                          ; $7433: $d5
	rst AddAOntoHL                                          ; $7434: $ef
	ld d, a                                          ; $7435: $57
	add b                                            ; $7436: $80
	ei                                               ; $7437: $fb
	sub d                                            ; $7438: $92
	add b                                            ; $7439: $80
	nop                                              ; $743a: $00
	ldh [$c0], a                                     ; $743b: $e0 $c0
	ld hl, sp+$70                                    ; $743d: $f8 $70
	cp $3c                                           ; $743f: $fe $3c
	ld a, a                                          ; $7441: $7f
	rrca                                             ; $7442: $0f
	ccf                                              ; $7443: $3f
	rlca                                             ; $7444: $07
	rra                                              ; $7445: $1f
	ld [hl], e                                       ; $7446: $73
	sub [hl]                                         ; $7447: $96
	sbc [hl]                                         ; $7448: $9e
	inc bc                                           ; $7449: $03
	sbc $01                                          ; $744a: $de $01
	db $fd                                           ; $744c: $fd
	sbc d                                            ; $744d: $9a
	jr nc, jr_06a_7450                               ; $744e: $30 $00

jr_06a_7450:
	ld b, c                                          ; $7450: $41
	ret nc                                           ; $7451: $d0

	ld bc, $63bf                                     ; $7452: $01 $bf $63
	rlca                                             ; $7455: $07
	add b                                            ; $7456: $80
	ld bc, $030f                                     ; $7457: $01 $0f $03
	inc e                                            ; $745a: $1c
	rrca                                             ; $745b: $0f
	ld a, b                                          ; $745c: $78
	sbc a                                            ; $745d: $9f
	ld sp, hl                                        ; $745e: $f9
	rst $38                                          ; $745f: $ff
	db $ed                                           ; $7460: $ed
	rst $38                                          ; $7461: $ff
	or a                                             ; $7462: $b7
	rst $38                                          ; $7463: $ff
	pop de                                           ; $7464: $d1
	cp a                                             ; $7465: $bf
	ret c                                            ; $7466: $d8

	cp a                                             ; $7467: $bf
	db $fd                                           ; $7468: $fd
	sbc a                                            ; $7469: $9f
	or $9f                                           ; $746a: $f6 $9f
	rst FarCall                                          ; $746c: $f7
	rra                                              ; $746d: $1f
	jr nc, jr_06a_7470                               ; $746e: $30 $00

jr_06a_7470:
	ld b, b                                          ; $7470: $40
	ret nc                                           ; $7471: $d0

	ld h, c                                          ; $7472: $61
	ld h, b                                          ; $7473: $60
	inc hl                                           ; $7474: $23
	nop                                              ; $7475: $00
	sub a                                            ; $7476: $97
	ld h, l                                          ; $7477: $65
	inc bc                                           ; $7478: $03
	rrca                                             ; $7479: $0f
	rlca                                             ; $747a: $07
	inc a                                            ; $747b: $3c
	rrca                                             ; $747c: $0f
	ld hl, sp+$3f                                    ; $747d: $f8 $3f
	ccf                                              ; $747f: $3f
	ldh [hDisp1_WX], a                                     ; $7480: $e0 $96
	ret nz                                           ; $7482: $c0

	ld d, b                                          ; $7483: $50
	ld [hl], c                                       ; $7484: $71
	ldh [rSCX], a                                    ; $7485: $e0 $43
	ldh [$65], a                                     ; $7487: $e0 $65
	inc bc                                           ; $7489: $03
	ld c, a                                          ; $748a: $4f
	rra                                              ; $748b: $1f
	ldh [$99], a                                     ; $748c: $e0 $99
	ldh a, [$63]                                     ; $748e: $f0 $63
	ldh [rAUDTERM], a                                ; $7490: $e0 $25
	ld b, e                                          ; $7492: $43
	rst GetHLinHL                                          ; $7493: $cf
	inc sp                                           ; $7494: $33
	ldh [$b3], a                                     ; $7495: $e0 $b3
	ld bc, $ff80                                     ; $7497: $01 $80 $ff
	db $fd                                           ; $749a: $fd
	ld l, a                                          ; $749b: $6f
	ei                                               ; $749c: $fb
	ld c, h                                          ; $749d: $4c
	rst $38                                          ; $749e: $ff
	sbc [hl]                                         ; $749f: $9e

jr_06a_74a0:
	ld hl, sp-$64                                    ; $74a0: $f8 $9c

jr_06a_74a2:
	ldh a, [$3c]                                     ; $74a2: $f0 $3c
	ldh a, [$7e]                                     ; $74a4: $f0 $7e
	pop hl                                           ; $74a6: $e1
	ld e, e                                          ; $74a7: $5b
	db $e3                                           ; $74a8: $e3
	pop de                                           ; $74a9: $d1
	and b                                            ; $74aa: $a0
	ret nc                                           ; $74ab: $d0

	and b                                            ; $74ac: $a0
	ret nc                                           ; $74ad: $d0

	jr nz, jr_06a_74a0                               ; $74ae: $20 $f0

	jr nz, jr_06a_74a2                               ; $74b0: $20 $f0

	and b                                            ; $74b2: $a0
	ldh [$f0], a                                     ; $74b3: $e0 $f0
	sbc b                                            ; $74b5: $98
	ldh a, [$08]                                     ; $74b6: $f0 $08
	add b                                            ; $74b8: $80
	ret nc                                           ; $74b9: $d0

	sbc b                                            ; $74ba: $98
	db $fc                                           ; $74bb: $fc
	db $fc                                           ; $74bc: $fc
	cp $fe                                           ; $74bd: $fe $fe
	rst $38                                          ; $74bf: $ff
	ei                                               ; $74c0: $fb
	rst $38                                          ; $74c1: $ff
	ld sp, hl                                        ; $74c2: $f9
	rst $38                                          ; $74c3: $ff
	ld hl, sp-$01                                    ; $74c4: $f8 $ff
	ld hl, sp-$21                                    ; $74c6: $f8 $df
	ldh a, [$9e]                                     ; $74c8: $f0 $9e
	ldh a, [$be]                                     ; $74ca: $f0 $be
	ldh a, [$bc]                                     ; $74cc: $f0 $bc
	ret nc                                           ; $74ce: $d0

	ld a, h                                          ; $74cf: $7c
	ret nc                                           ; $74d0: $d0

	ld a, h                                          ; $74d1: $7c
	ret nz                                           ; $74d2: $c0

	ld a, b                                          ; $74d3: $78
	ret nz                                           ; $74d4: $c0

	ld a, b                                          ; $74d5: $78
	ldh [$78], a                                     ; $74d6: $e0 $78
	adc c                                            ; $74d8: $89
	ldh [$38], a                                     ; $74d9: $e0 $38
	ld [hl], b                                       ; $74db: $70
	ret nz                                           ; $74dc: $c0

	and b                                            ; $74dd: $a0
	ret nz                                           ; $74de: $c0

	ldh [$f0], a                                     ; $74df: $e0 $f0
	dec de                                           ; $74e1: $1b
	inc a                                            ; $74e2: $3c
	rla                                              ; $74e3: $17
	ld c, $01                                        ; $74e4: $0e $01
	ccf                                              ; $74e6: $3f
	rst $38                                          ; $74e7: $ff
	cp $99                                           ; $74e8: $fe $99
	or d                                             ; $74ea: $b2
	ld [hl], b                                       ; $74eb: $70
	ld [hl], b                                       ; $74ec: $70
	ret c                                            ; $74ed: $d8

	ld [hl], b                                       ; $74ee: $70
	push af                                          ; $74ef: $f5
	adc d                                            ; $74f0: $8a
	ld h, b                                          ; $74f1: $60
	ld b, b                                          ; $74f2: $40
	ld h, b                                          ; $74f3: $60
	ld b, b                                          ; $74f4: $40
	ld h, c                                          ; $74f5: $61
	ld b, b                                          ; $74f6: $40
	inc hl                                           ; $74f7: $23
	nop                                              ; $74f8: $00
	add a                                            ; $74f9: $87
	ld bc, $0782                                     ; $74fa: $01 $82 $07
	inc bc                                           ; $74fd: $03
	rlca                                             ; $74fe: $07
	ld b, $02                                        ; $74ff: $06 $02
	inc bc                                           ; $7501: $03
	inc bc                                           ; $7502: $03
	ld [bc], a                                       ; $7503: $02
	inc bc                                           ; $7504: $03
	nop                                              ; $7505: $00
	cp [hl]                                          ; $7506: $be
	ld [$060c], sp                                   ; $7507: $08 $0c $06
	add b                                            ; $750a: $80
	ld [$180c], sp                                   ; $750b: $08 $0c $18
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	rst $38                                          ; $7510: $ff
	ld h, $ff                                        ; $7511: $26 $ff
	ld b, $dd                                        ; $7513: $06 $dd
	ccf                                              ; $7515: $3f
	ld h, l                                          ; $7516: $65
	rst $38                                          ; $7517: $ff
	cp a                                             ; $7518: $bf
	jp $837e                                         ; $7519: $c3 $7e $83


	jp c, Jump_06a_7fe7                              ; $751c: $da $e7 $7f

	rst $38                                          ; $751f: $ff
	cp l                                             ; $7520: $bd
	and a                                            ; $7521: $a7
	or l                                             ; $7522: $b5
	adc a                                            ; $7523: $8f
	db $fd                                           ; $7524: $fd
	rrca                                             ; $7525: $0f
	dec a                                            ; $7526: $3d
	rrca                                             ; $7527: $0f
	dec a                                            ; $7528: $3d
	rra                                              ; $7529: $1f
	sbc [hl]                                         ; $752a: $9e
	ld a, l                                          ; $752b: $7d
	ld a, e                                          ; $752c: $7b
	cp $92                                           ; $752d: $fe $92
	push de                                          ; $752f: $d5
	ccf                                              ; $7530: $3f
	db $ed                                           ; $7531: $ed
	scf                                              ; $7532: $37
	cp l                                             ; $7533: $bd
	ld h, a                                          ; $7534: $67
	db $fd                                           ; $7535: $fd
	ld a, a                                          ; $7536: $7f
	xor l                                            ; $7537: $ad
	rst $38                                          ; $7538: $ff
	xor l                                            ; $7539: $ad
	rst $38                                          ; $753a: $ff
	xor d                                            ; $753b: $aa
	ld l, e                                          ; $753c: $6b
	cp $91                                           ; $753d: $fe $91
	ld a, [hl+]                                      ; $753f: $2a
	rst $38                                          ; $7540: $ff
	add hl, hl                                       ; $7541: $29
	rst $38                                          ; $7542: $ff
	xor c                                            ; $7543: $a9
	rst $38                                          ; $7544: $ff
	pop hl                                           ; $7545: $e1
	rst $38                                          ; $7546: $ff
	pop bc                                           ; $7547: $c1
	rst $38                                          ; $7548: $ff
	inc bc                                           ; $7549: $03
	rst $38                                          ; $754a: $ff
	rlca                                             ; $754b: $07
	rst $38                                          ; $754c: $ff
	ld [hl], a                                       ; $754d: $77
	ld b, b                                          ; $754e: $40
	sbc [hl]                                         ; $754f: $9e
	ld c, l                                          ; $7550: $4d
	ld l, e                                          ; $7551: $6b
	ld b, b                                          ; $7552: $40
	sbc l                                            ; $7553: $9d
	ld a, h                                          ; $7554: $7c
	ldh [$7b], a                                     ; $7555: $e0 $7b
	ld b, b                                          ; $7557: $40
	sbc [hl]                                         ; $7558: $9e
	and c                                            ; $7559: $a1
	ld c, a                                          ; $755a: $4f
	ld b, b                                          ; $755b: $40
	ld [hl], a                                       ; $755c: $77
	ld h, b                                          ; $755d: $60
	ld a, a                                          ; $755e: $7f
	ld e, a                                          ; $755f: $5f
	sub e                                            ; $7560: $93
	dec sp                                           ; $7561: $3b
	inc a                                            ; $7562: $3c
	dec b                                            ; $7563: $05
	ld e, $0f                                        ; $7564: $1e $0f
	inc bc                                           ; $7566: $03
	dec de                                           ; $7567: $1b
	inc a                                            ; $7568: $3c
	rst $38                                          ; $7569: $ff
	cp $b8                                           ; $756a: $fe $b8
	or d                                             ; $756c: $b2
	cpl                                              ; $756d: $2f
	ld h, b                                          ; $756e: $60
	sbc d                                            ; $756f: $9a
	add [hl]                                         ; $7570: $86
	ld bc, $0387                                     ; $7571: $01 $87 $03
	ld bc, $5e7b                                     ; $7574: $01 $7b $5e
	rra                                              ; $7577: $1f
	ld h, b                                          ; $7578: $60
	sub a                                            ; $7579: $97
	cp $03                                           ; $757a: $fe $03
	ld a, d                                          ; $757c: $7a
	add a                                            ; $757d: $87
	rst $38                                          ; $757e: $ff
	rst SubAFromBC                                          ; $757f: $e7
	db $fd                                           ; $7580: $fd
	cp a                                             ; $7581: $bf
	ld c, a                                          ; $7582: $4f
	ld h, b                                          ; $7583: $60
	ld [hl], a                                       ; $7584: $77
	add b                                            ; $7585: $80
	sbc [hl]                                         ; $7586: $9e
	ld c, a                                          ; $7587: $4f
	ld h, e                                          ; $7588: $63
	add b                                            ; $7589: $80
	sbc e                                            ; $758a: $9b
	ld e, b                                          ; $758b: $58
	ldh [$d3], a                                     ; $758c: $e0 $d3
	and e                                            ; $758e: $a3
	ld b, a                                          ; $758f: $47
	add b                                            ; $7590: $80
	adc l                                            ; $7591: $8d
	ldh [$80], a                                     ; $7592: $e0 $80
	ldh [$c0], a                                     ; $7594: $e0 $c0
	scf                                              ; $7596: $37
	ld hl, sp+$0d                                    ; $7597: $f8 $0d
	ld e, $0b                                        ; $7599: $1e $0b
	rlca                                             ; $759b: $07
	rlca                                             ; $759c: $07
	nop                                              ; $759d: $00
	dec sp                                           ; $759e: $3b
	ld a, h                                          ; $759f: $7c
	or $fe                                           ; $75a0: $f6 $fe
	ld e, b                                          ; $75a2: $58
	ld hl, sp+$27                                    ; $75a3: $f8 $27
	add b                                            ; $75a5: $80
	ld a, a                                          ; $75a6: $7f
	ldh [$9b], a                                     ; $75a7: $e0 $9b
	dec b                                            ; $75a9: $05
	inc bc                                           ; $75aa: $03
	inc bc                                           ; $75ab: $03
	rlca                                             ; $75ac: $07
	ccf                                              ; $75ad: $3f
	add b                                            ; $75ae: $80
	adc a                                            ; $75af: $8f
	push hl                                          ; $75b0: $e5
	rra                                              ; $75b1: $1f
	db $fd                                           ; $75b2: $fd
	ld a, a                                          ; $75b3: $7f
	sbc a                                            ; $75b4: $9f
	db $e3                                           ; $75b5: $e3
	cp $03                                           ; $75b6: $fe $03
	ld a, [$bf07]                                    ; $75b8: $fa $07 $bf
	rst JumpTable                                          ; $75bb: $c7
	db $fd                                           ; $75bc: $fd
	rst $38                                          ; $75bd: $ff
	or l                                             ; $75be: $b5
	rst GetHLinHL                                          ; $75bf: $cf
	inc bc                                           ; $75c0: $03
	add b                                            ; $75c1: $80
	ld b, e                                          ; $75c2: $43
	add b                                            ; $75c3: $80
	sub d                                            ; $75c4: $92
	ccf                                              ; $75c5: $3f
	ldh a, [$0d]                                     ; $75c6: $f0 $0d
	ld a, $02                                        ; $75c8: $3e $02
	rrca                                             ; $75ca: $0f
	rlca                                             ; $75cb: $07
	ld bc, $0007                                     ; $75cc: $01 $07 $00
	adc $fe                                          ; $75cf: $ce $fe
	ld hl, sp+$33                                    ; $75d1: $f8 $33
	add b                                            ; $75d3: $80
	sbc h                                            ; $75d4: $9c
	add a                                            ; $75d5: $87
	nop                                              ; $75d6: $00
	add l                                            ; $75d7: $85
	ld a, e                                          ; $75d8: $7b
	add l                                            ; $75d9: $85
	ld a, a                                          ; $75da: $7f
	ldh [$9e], a                                     ; $75db: $e0 $9e
	inc b                                            ; $75dd: $04
	ld a, d                                          ; $75de: $7a
	cp $47                                           ; $75df: $fe $47
	add b                                            ; $75e1: $80
	adc a                                            ; $75e2: $8f
	push af                                          ; $75e3: $f5
	rrca                                             ; $75e4: $0f
	cp l                                             ; $75e5: $bd
	ld a, a                                          ; $75e6: $7f
	rst SubAFromDE                                          ; $75e7: $df
	db $e3                                           ; $75e8: $e3
	ld a, [hl]                                       ; $75e9: $7e
	add e                                            ; $75ea: $83
	ld a, [$ff07]                                    ; $75eb: $fa $07 $ff
	rlca                                             ; $75ee: $07
	ld a, l                                          ; $75ef: $7d
	rst $38                                          ; $75f0: $ff
	push de                                          ; $75f1: $d5
	rst AddAOntoHL                                          ; $75f2: $ef
	ld d, a                                          ; $75f3: $57
	add b                                            ; $75f4: $80
	ei                                               ; $75f5: $fb
	sub b                                            ; $75f6: $90
	add b                                            ; $75f7: $80
	nop                                              ; $75f8: $00
	ldh [$c0], a                                     ; $75f9: $e0 $c0
	ld hl, sp+$70                                    ; $75fb: $f8 $70
	cp $3c                                           ; $75fd: $fe $3c
	ld a, a                                          ; $75ff: $7f
	rrca                                             ; $7600: $0f
	ccf                                              ; $7601: $3f
	rlca                                             ; $7602: $07
	rra                                              ; $7603: $1f
	inc bc                                           ; $7604: $03
	rrca                                             ; $7605: $0f
	cp a                                             ; $7606: $bf
	rlca                                             ; $7607: $07
	inc bc                                           ; $7608: $03
	sbc $01                                          ; $7609: $de $01
	db $fd                                           ; $760b: $fd
	sbc d                                            ; $760c: $9a
	jr nc, jr_06a_760f                               ; $760d: $30 $00

jr_06a_760f:
	ld h, c                                          ; $760f: $61
	ret nc                                           ; $7610: $d0

	ld bc, $63bf                                     ; $7611: $01 $bf $63
	rlca                                             ; $7614: $07
	add b                                            ; $7615: $80
	ld bc, $030f                                     ; $7616: $01 $0f $03
	inc e                                            ; $7619: $1c
	rrca                                             ; $761a: $0f
	ld a, b                                          ; $761b: $78
	sbc a                                            ; $761c: $9f
	ld sp, hl                                        ; $761d: $f9
	rst $38                                          ; $761e: $ff
	db $ed                                           ; $761f: $ed
	rst $38                                          ; $7620: $ff
	or a                                             ; $7621: $b7
	rst $38                                          ; $7622: $ff
	pop de                                           ; $7623: $d1
	cp a                                             ; $7624: $bf
	ret c                                            ; $7625: $d8

	cp a                                             ; $7626: $bf
	db $fd                                           ; $7627: $fd
	sbc a                                            ; $7628: $9f
	or $9f                                           ; $7629: $f6 $9f
	rst FarCall                                          ; $762b: $f7
	rra                                              ; $762c: $1f
	jr nc, jr_06a_762f                               ; $762d: $30 $00

jr_06a_762f:
	ld b, c                                          ; $762f: $41
	ret nc                                           ; $7630: $d0

	ld h, c                                          ; $7631: $61
	ld h, b                                          ; $7632: $60
	inc bc                                           ; $7633: $03
	nop                                              ; $7634: $00
	sbc [hl]                                         ; $7635: $9e
	ld h, a                                          ; $7636: $67
	rra                                              ; $7637: $1f
	ldh [$97], a                                     ; $7638: $e0 $97
	ld d, b                                          ; $763a: $50
	ld h, c                                          ; $763b: $61
	ldh [hDisp0_SCY], a                                     ; $763c: $e0 $83
	ld b, b                                          ; $763e: $40
	rlca                                             ; $763f: $07
	ld bc, $1b6f                                     ; $7640: $01 $6f $1b
	ldh [$9d], a                                     ; $7643: $e0 $9d
	db $e3                                           ; $7645: $e3
	ld h, b                                          ; $7646: $60
	daa                                              ; $7647: $27
	ldh [rOBP0], a                                   ; $7648: $e0 $48
	inc bc                                           ; $764a: $03
	db $fd                                           ; $764b: $fd
	db $dd                                           ; $764c: $dd
	ld bc, $029d                                     ; $764d: $01 $9d $02
	inc bc                                           ; $7650: $03
	ld e, a                                          ; $7651: $5f
	cp $dd                                           ; $7652: $fe $dd
	ld bc, $dff5                                     ; $7654: $01 $f5 $df
	ld bc, $03df                                     ; $7657: $01 $df $03
	rst SubAFromDE                                          ; $765a: $df
	rlca                                             ; $765b: $07
	add b                                            ; $765c: $80
	rrca                                             ; $765d: $0f
	dec c                                            ; $765e: $0d
	rra                                              ; $765f: $1f
	add hl, de                                       ; $7660: $19
	dec d                                            ; $7661: $15
	dec de                                           ; $7662: $1b
	ld a, $33                                        ; $7663: $3e $33
	ld a, [hl+]                                      ; $7665: $2a
	scf                                              ; $7666: $37
	dec l                                            ; $7667: $2d
	ld [hl], $25                                     ; $7668: $36 $25
	ld a, $25                                        ; $766a: $3e $25
	ld a, $37                                        ; $766c: $3e $37
	inc a                                            ; $766e: $3c
	dec sp                                           ; $766f: $3b
	inc a                                            ; $7670: $3c
	dec de                                           ; $7671: $1b
	inc e                                            ; $7672: $1c
	ld bc, $3601                                     ; $7673: $01 $01 $36
	cpl                                              ; $7676: $2f
	dec de                                           ; $7677: $1b
	ld e, $05                                        ; $7678: $1e $05
	ld b, $07                                        ; $767a: $06 $07
	sub e                                            ; $767c: $93
	inc b                                            ; $767d: $04
	rlca                                             ; $767e: $07
	inc b                                            ; $767f: $04
	dec bc                                           ; $7680: $0b
	inc c                                            ; $7681: $0c
	ld a, [bc]                                       ; $7682: $0a
	dec c                                            ; $7683: $0d
	ld c, $09                                        ; $7684: $0e $09
	ld c, $09                                        ; $7686: $0e $09
	rrca                                             ; $7688: $0f
	ld [hl], e                                       ; $7689: $73
	cp $95                                           ; $768a: $fe $95
	dec b                                            ; $768c: $05
	dec bc                                           ; $768d: $0b
	dec e                                            ; $768e: $1d
	sub e                                            ; $768f: $93
	cp d                                             ; $7690: $ba
	rst JumpTable                                          ; $7691: $c7
	ld l, [hl]                                       ; $7692: $6e
	ld a, a                                          ; $7693: $7f
	rra                                              ; $7694: $1f
	inc e                                            ; $7695: $1c
	ld [hl], a                                       ; $7696: $77
	db $e4                                           ; $7697: $e4
	sbc l                                            ; $7698: $9d
	dec b                                            ; $7699: $05
	rlca                                             ; $769a: $07
	db $dd                                           ; $769b: $dd
	inc bc                                           ; $769c: $03
	add b                                            ; $769d: $80
	ld b, e                                          ; $769e: $43
	ld b, d                                          ; $769f: $42
	dec a                                            ; $76a0: $3d
	ld a, [hl]                                       ; $76a1: $7e
	ld d, a                                          ; $76a2: $57
	ld l, h                                          ; $76a3: $6c
	dec hl                                           ; $76a4: $2b
	inc a                                            ; $76a5: $3c
	ld e, $19                                        ; $76a6: $1e $19
	ld e, $11                                        ; $76a8: $1e $11
	ld l, $31                                        ; $76aa: $2e $31
	ld e, h                                          ; $76ac: $5c
	ld h, e                                          ; $76ad: $63
	ld e, b                                          ; $76ae: $58
	ld h, a                                          ; $76af: $67
	sub b                                            ; $76b0: $90
	rst $38                                          ; $76b1: $ff
	and c                                            ; $76b2: $a1
	rst $38                                          ; $76b3: $ff
	inc hl                                           ; $76b4: $23
	rst $38                                          ; $76b5: $ff
	ld b, [hl]                                       ; $76b6: $46
	rst $38                                          ; $76b7: $ff
	ld c, [hl]                                       ; $76b8: $4e
	rst $38                                          ; $76b9: $ff
	sbc [hl]                                         ; $76ba: $9e
	rst $38                                          ; $76bb: $ff
	sub h                                            ; $76bc: $94
	sbc l                                            ; $76bd: $9d
	rst $38                                          ; $76be: $ff
	or h                                             ; $76bf: $b4
	ld a, e                                          ; $76c0: $7b
	cp $8d                                           ; $76c1: $fe $8d
	call nc, $dcff                                   ; $76c3: $d4 $ff $dc
	rst $38                                          ; $76c6: $ff
	cp h                                             ; $76c7: $bc
	rst FarCall                                          ; $76c8: $f7
	cp [hl]                                          ; $76c9: $be
	rst SubAFromBC                                          ; $76ca: $e7
	cp $e3                                           ; $76cb: $fe $e3
	rst $38                                          ; $76cd: $ff
	jp $c1ff                                         ; $76ce: $c3 $ff $c1


	cp [hl]                                          ; $76d1: $be
	pop bc                                           ; $76d2: $c1
	cp a                                             ; $76d3: $bf
	ret nz                                           ; $76d4: $c0

	ld [hl], a                                       ; $76d5: $77
	cp $9e                                           ; $76d6: $fe $9e
	ccf                                              ; $76d8: $3f
	ld l, e                                          ; $76d9: $6b
	cp $92                                           ; $76da: $fe $92
	ld a, a                                          ; $76dc: $7f
	add b                                            ; $76dd: $80
	cp $01                                           ; $76de: $fe $01
	db $fc                                           ; $76e0: $fc
	inc bc                                           ; $76e1: $03
	db $fc                                           ; $76e2: $fc
	inc bc                                           ; $76e3: $03
	ld hl, sp+$07                                    ; $76e4: $f8 $07
	ld hl, sp+$07                                    ; $76e6: $f8 $07
	ld sp, hl                                        ; $76e8: $f9
	ld a, e                                          ; $76e9: $7b
	cp $ef                                           ; $76ea: $fe $ef
	rst SubAFromDE                                          ; $76ec: $df
	inc bc                                           ; $76ed: $03
	add b                                            ; $76ee: $80
	ld c, $0f                                        ; $76ef: $0e $0f
	dec de                                           ; $76f1: $1b
	inc e                                            ; $76f2: $1c
	ccf                                              ; $76f3: $3f
	jr nc, jr_06a_776e                               ; $76f4: $30 $78

	ld h, a                                          ; $76f6: $67
	rst JumpTable                                          ; $76f7: $c7
	ld hl, sp-$61                                    ; $76f8: $f8 $9f
	ldh [rWY], a                                     ; $76fa: $e0 $4a
	add c                                            ; $76fc: $81
	sub l                                            ; $76fd: $95
	ld [bc], a                                       ; $76fe: $02
	ld a, [hl+]                                      ; $76ff: $2a
	inc b                                            ; $7700: $04
	ld d, h                                          ; $7701: $54
	ld [$10c8], sp                                   ; $7702: $08 $c8 $10
	and $10                                          ; $7705: $e6 $10
	ld d, l                                          ; $7707: $55
	and b                                            ; $7708: $a0
	ld c, h                                          ; $7709: $4c
	and c                                            ; $770a: $a1
	rst JumpTable                                          ; $770b: $c7
	add hl, hl                                       ; $770c: $29
	rst SubAFromHL                                          ; $770d: $d7
	sub d                                            ; $770e: $92
	add hl, hl                                       ; $770f: $29
	or l                                             ; $7710: $b5
	ld c, e                                          ; $7711: $4b
	and l                                            ; $7712: $a5
	ld e, e                                          ; $7713: $5b
	rst SubAFromBC                                          ; $7714: $e7
	ld e, d                                          ; $7715: $5a
	ld a, e                                          ; $7716: $7b
	sub $dc                                          ; $7717: $d6 $dc
	rst FarCall                                          ; $7719: $f7
	push de                                          ; $771a: $d5
	rst $38                                          ; $771b: $ff
	ldh [$c1], a                                     ; $771c: $e0 $c1
	add b                                            ; $771e: $80
	add $fc                                          ; $771f: $c6 $fc
	ld h, [hl]                                       ; $7721: $66
	db $fc                                           ; $7722: $fc
	ld [hl], $fc                                     ; $7723: $36 $fc
	ld b, $fe                                        ; $7725: $06 $fe
	dec bc                                           ; $7727: $0b
	cp $0f                                           ; $7728: $fe $0f
	ld a, [$f91f]                                    ; $772a: $fa $1f $f9
	rra                                              ; $772d: $1f
	ldh a, [$3e]                                     ; $772e: $f0 $3e
	ldh a, [$3e]                                     ; $7730: $f0 $3e
	ldh [$7e], a                                     ; $7732: $e0 $7e
	ldh [$4c], a                                     ; $7734: $e0 $4c
	ret nz                                           ; $7736: $c0

	ldh [$80], a                                     ; $7737: $e0 $80
	ldh a, [$80]                                     ; $7739: $f0 $80
	db $fc                                           ; $773b: $fc
	nop                                              ; $773c: $00
	ldh a, [$f2]                                     ; $773d: $f0 $f2
	rst SubAFromDE                                          ; $773f: $df
	ld e, $80                                        ; $7740: $1e $80
	pop hl                                           ; $7742: $e1
	rst $38                                          ; $7743: $ff
	cp a                                             ; $7744: $bf
	ret nz                                           ; $7745: $c0

	inc bc                                           ; $7746: $03
	db $fc                                           ; $7747: $fc
	ldh a, [rIF]                                     ; $7748: $f0 $0f
	cp $01                                           ; $774a: $fe $01
	rrca                                             ; $774c: $0f
	ldh a, [$f3]                                     ; $774d: $f0 $f3
	inc c                                            ; $774f: $0c
	inc c                                            ; $7750: $0c
	di                                               ; $7751: $f3
	nop                                              ; $7752: $00
	rst $38                                          ; $7753: $ff
	ld bc, $003f                                     ; $7754: $01 $3f $00
	rst $38                                          ; $7757: $ff
	jr nz, jr_06a_77cd                               ; $7758: $20 $73

	ld b, b                                          ; $775a: $40
	rst AddAOntoHL                                          ; $775b: $ef
	add b                                            ; $775c: $80
	db $dd                                           ; $775d: $dd
	add b                                            ; $775e: $80
	sbc e                                            ; $775f: $9b
	ld [bc], a                                       ; $7760: $02
	adc [hl]                                         ; $7761: $8e
	or [hl]                                          ; $7762: $b6
	inc h                                            ; $7763: $24
	xor l                                            ; $7764: $ad
	dec h                                            ; $7765: $25
	db $ed                                           ; $7766: $ed
	ld c, c                                          ; $7767: $49
	ei                                               ; $7768: $fb
	ld c, e                                          ; $7769: $4b
	cp $4b                                           ; $776a: $fe $4b
	cp $9f                                           ; $776c: $fe $9f

jr_06a_776e:
	or $be                                           ; $776e: $f6 $be
	db $e4                                           ; $7770: $e4
	ld a, $e4                                        ; $7771: $3e $e4
	ldh [$c1], a                                     ; $7773: $e0 $c1
	sbc [hl]                                         ; $7775: $9e
	ld a, b                                          ; $7776: $78
	db $fc                                           ; $7777: $fc
	sub h                                            ; $7778: $94
	ld c, $00                                        ; $7779: $0e $00
	ccf                                              ; $777b: $3f
	nop                                              ; $777c: $00
	ccf                                              ; $777d: $3f
	rrca                                             ; $777e: $0f
	ld [hl], a                                       ; $777f: $77
	ld a, b                                          ; $7780: $78
	rst $38                                          ; $7781: $ff
	nop                                              ; $7782: $00
	rra                                              ; $7783: $1f
	ld h, [hl]                                       ; $7784: $66
	jp c, $009b                                      ; $7785: $da $9b $00

Call_06a_7788:
	rrca                                             ; $7788: $0f
	nop                                              ; $7789: $00
	inc a                                            ; $778a: $3c
	ldh a, [$df]                                     ; $778b: $f0 $df
	jr nc, jr_06a_776e                               ; $778d: $30 $df

	sbc b                                            ; $778f: $98
	add b                                            ; $7790: $80
	ld [hl], h                                       ; $7791: $74
	db $fc                                           ; $7792: $fc
	sub $3a                                          ; $7793: $d6 $3a
	rst $38                                          ; $7795: $ff
	add hl, de                                       ; $7796: $19
	ld l, e                                          ; $7797: $6b
	sbc l                                            ; $7798: $9d
	xor d                                            ; $7799: $aa
	rst SubAFromDE                                          ; $779a: $df
	ld l, h                                          ; $779b: $6c
	rst SubAFromDE                                          ; $779c: $df
	ld e, c                                          ; $779d: $59
	cp $30                                           ; $779e: $fe $30
	cp $20                                           ; $77a0: $fe $20
	ld sp, hl                                        ; $77a2: $f9
	ldh [rIE], a                                     ; $77a3: $e0 $ff
	ld b, b                                          ; $77a5: $40
	rst $38                                          ; $77a6: $ff
	nop                                              ; $77a7: $00

jr_06a_77a8:
	db $fc                                           ; $77a8: $fc
	nop                                              ; $77a9: $00
	di                                               ; $77aa: $f3
	daa                                              ; $77ab: $27
	rst $38                                          ; $77ac: $ff
	jr nc, jr_06a_77a8                               ; $77ad: $30 $f9

	ld h, b                                          ; $77af: $60
	rst SubAFromDE                                          ; $77b0: $df
	cp $9b                                           ; $77b1: $fe $9b
	sbc a                                            ; $77b3: $9f
	rst $38                                          ; $77b4: $ff
	inc bc                                           ; $77b5: $03
	add e                                            ; $77b6: $83
	ld c, l                                          ; $77b7: $4d
	rst SubAFromDE                                          ; $77b8: $df
	ldh [$c6], a                                     ; $77b9: $e0 $c6
	ld a, [hl]                                       ; $77bb: $7e
	ccf                                              ; $77bc: $3f
	ld a, a                                          ; $77bd: $7f
	cp $8b                                           ; $77be: $fe $8b
	ld b, $01                                        ; $77c0: $06 $01
	rla                                              ; $77c2: $17
	rrca                                             ; $77c3: $0f
	ld a, e                                          ; $77c4: $7b
	db $fc                                           ; $77c5: $fc
	cp a                                             ; $77c6: $bf
	pop bc                                           ; $77c7: $c1
	rst $38                                          ; $77c8: $ff
	ld bc, $01e7                                     ; $77c9: $01 $e7 $01
	adc [hl]                                         ; $77cc: $8e

jr_06a_77cd:
	inc bc                                           ; $77cd: $03
	ld e, $03                                        ; $77ce: $1e $03
	ld a, $03                                        ; $77d0: $3e $03
	db $fc                                           ; $77d2: $fc
	rlca                                             ; $77d3: $07
	ld [hl], a                                       ; $77d4: $77
	cp $9c                                           ; $77d5: $fe $9c
	ld a, b                                          ; $77d7: $78
	rrca                                             ; $77d8: $0f
	ld hl, sp+$67                                    ; $77d9: $f8 $67
	ld d, c                                          ; $77db: $51
	ld a, [$38df]                                    ; $77dc: $fa $df $38
	adc a                                            ; $77df: $8f
	ld b, a                                          ; $77e0: $47
	ld a, a                                          ; $77e1: $7f
	call c, $b3bc                                    ; $77e2: $dc $bc $b3
	rst $38                                          ; $77e5: $ff
	sbc a                                            ; $77e6: $9f
	ld h, b                                          ; $77e7: $60
	nop                                              ; $77e8: $00
	rst $38                                          ; $77e9: $ff
	cp $01                                           ; $77ea: $fe $01
	rlca                                             ; $77ec: $07
	ld hl, sp-$10                                    ; $77ed: $f8 $f0
	rrca                                             ; $77ef: $0f
	ld a, e                                          ; $77f0: $7b

jr_06a_77f1:
	add hl, sp                                       ; $77f1: $39
	add d                                            ; $77f2: $82
	jp $f100                                         ; $77f3: $c3 $00 $f1


	jr nc, jr_06a_77f1                               ; $77f6: $30 $f9

	jr jr_06a_7836                                   ; $77f8: $18 $3c

	ld [$041e], sp                                   ; $77fa: $08 $1e $04
	rst SubAFromDE                                          ; $77fd: $df
	add h                                            ; $77fe: $84
	rst AddAOntoHL                                          ; $77ff: $ef
	ld b, d                                          ; $7800: $42
	rst AddAOntoHL                                          ; $7801: $ef
	ld h, e                                          ; $7802: $63
	ld [hl], a                                       ; $7803: $77

jr_06a_7804:
	inc hl                                           ; $7804: $23
	ld [hl], a                                       ; $7805: $77
	ld hl, $b1ff                                     ; $7806: $21 $ff $b1
	rst $38                                          ; $7809: $ff
	cp c                                             ; $780a: $b9
	rst $38                                          ; $780b: $ff
	ld hl, sp+$6f                                    ; $780c: $f8 $6f
	db $fc                                           ; $780e: $fc
	ld b, a                                          ; $780f: $47
	ldh [$c1], a                                     ; $7810: $e0 $c1
	sbc d                                            ; $7812: $9a
	db $ec                                           ; $7813: $ec
	ld [hl], e                                       ; $7814: $73
	rst SubAFromDE                                          ; $7815: $df
	ldh [rIE], a                                     ; $7816: $e0 $ff

jr_06a_7818:
	ld h, c                                          ; $7818: $61
	ld a, [hl]                                       ; $7819: $7e
	ld a, l                                          ; $781a: $7d
	add d                                            ; $781b: $82
	ld h, a                                          ; $781c: $67
	cp $7e                                           ; $781d: $fe $7e
	rst AddAOntoHL                                          ; $781f: $ef
	ld l, a                                          ; $7820: $6f
	cp $ed                                           ; $7821: $fe $ed
	rst SubAFromDE                                          ; $7823: $df
	ret nz                                           ; $7824: $c0

	add b                                            ; $7825: $80
	jr nc, jr_06a_7818                               ; $7826: $30 $f0

	ld hl, sp+$18                                    ; $7828: $f8 $18
	inc a                                            ; $782a: $3c
	call nz, $32ce                                   ; $782b: $c4 $ce $32
	di                                               ; $782e: $f3
	dec c                                            ; $782f: $0d
	ld l, b                                          ; $7830: $68
	add a                                            ; $7831: $87
	inc [hl]                                         ; $7832: $34
	jp Jump_06a_619a                                 ; $7833: $c3 $9a $61


jr_06a_7836:
	xor d                                            ; $7836: $aa
	ld [hl], c                                       ; $7837: $71
	push de                                          ; $7838: $d5
	jr c, jr_06a_7804                                ; $7839: $38 $c9

	inc a                                            ; $783b: $3c
	ld l, e                                          ; $783c: $6b
	inc e                                            ; $783d: $1c
	ld h, a                                          ; $783e: $67
	inc e                                            ; $783f: $1c
	and l                                            ; $7840: $a5
	ld e, $73                                        ; $7841: $1e $73
	adc [hl]                                         ; $7843: $8e
	or d                                             ; $7844: $b2
	add b                                            ; $7845: $80
	rst GetHLinHL                                          ; $7846: $cf
	db $d3                                           ; $7847: $d3
	rst AddAOntoHL                                          ; $7848: $ef
	xor e                                            ; $7849: $ab
	rst FarCall                                          ; $784a: $f7
	ld d, c                                          ; $784b: $51
	rst $38                                          ; $784c: $ff
	xor c                                            ; $784d: $a9
	rst $38                                          ; $784e: $ff
	and [hl]                                         ; $784f: $a6
	rst $38                                          ; $7850: $ff
	ld d, a                                          ; $7851: $57
	rst $38                                          ; $7852: $ff
	jp nc, Jump_06a_62f7                             ; $7853: $d2 $f7 $62

	ei                                               ; $7856: $fb
	and c                                            ; $7857: $a1
	ld a, e                                          ; $7858: $7b
	and c                                            ; $7859: $a1
	ld a, l                                          ; $785a: $7d
	and b                                            ; $785b: $a0
	ld a, l                                          ; $785c: $7d
	ldh a, [$7c]                                     ; $785d: $f0 $7c
	ret z                                            ; $785f: $c8

	ld a, [hl]                                       ; $7860: $7e
	ret z                                            ; $7861: $c8

	ld a, [hl]                                       ; $7862: $7e
	ld e, h                                          ; $7863: $5c
	or $8b                                           ; $7864: $f6 $8b
	ld a, h                                          ; $7866: $7c
	rst SubAFromBC                                          ; $7867: $e7
	cp $cf                                           ; $7868: $fe $cf
	jp nc, $f2ff                                     ; $786a: $d2 $ff $f2

	rst $38                                          ; $786d: $ff
	or d                                             ; $786e: $b2
	sbc a                                            ; $786f: $9f
	jp nc, Jump_06a_729f                             ; $7870: $d2 $9f $72

	rst $38                                          ; $7873: $ff
	cp $df                                           ; $7874: $fe $df
	cp $87                                           ; $7876: $fe $87
	cp $83                                           ; $7878: $fe $83
	ld a, e                                          ; $787a: $7b
	cp $9e                                           ; $787b: $fe $9e
	inc bc                                           ; $787d: $03
	ld l, a                                          ; $787e: $6f
	cp $6e                                           ; $787f: $fe $6e
	db $e4                                           ; $7881: $e4
	sub e                                            ; $7882: $93
	ld hl, sp+$0f                                    ; $7883: $f8 $0f
	ldh a, [$1f]                                     ; $7885: $f0 $1f
	pop hl                                           ; $7887: $e1
	rst $38                                          ; $7888: $ff
	rlca                                             ; $7889: $07
	cp $f8                                           ; $788a: $fe $f8
	rst $38                                          ; $788c: $ff
	rlca                                             ; $788d: $07

jr_06a_788e:
	ld hl, sp+$77                                    ; $788e: $f8 $77

jr_06a_7890:
	ld a, b                                          ; $7890: $78
	ld [hl], h                                       ; $7891: $74
	ld [$ec74], a                                    ; $7892: $ea $74 $ec
	ld a, [hl]                                       ; $7895: $7e
	xor $7f                                          ; $7896: $ee $7f
	cp $9c                                           ; $7898: $fe $9c
	ldh [$1f], a                                     ; $789a: $e0 $1f
	pop hl                                           ; $789c: $e1
	ld a, e                                          ; $789d: $7b
	cp $9c                                           ; $789e: $fe $9c
	jp $c23f                                         ; $78a0: $c3 $3f $c2


	ld a, e                                          ; $78a3: $7b
	cp $dd                                           ; $78a4: $fe $dd
	add b                                            ; $78a6: $80
	sub b                                            ; $78a7: $90
	ld b, b                                          ; $78a8: $40
	ret nz                                           ; $78a9: $c0

	ld b, b                                          ; $78aa: $40
	ret nz                                           ; $78ab: $c0

	jr nz, jr_06a_788e                               ; $78ac: $20 $e0

	jr nz, jr_06a_7890                               ; $78ae: $20 $e0

	and b                                            ; $78b0: $a0
	ld h, b                                          ; $78b1: $60
	and b                                            ; $78b2: $a0
	ld h, b                                          ; $78b3: $60
	ldh a, [$30]                                     ; $78b4: $f0 $30
	ret nc                                           ; $78b6: $d0

	ld a, e                                          ; $78b7: $7b
	cp $80                                           ; $78b8: $fe $80
	ret z                                            ; $78ba: $c8

	jr c, jr_06a_7925                                ; $78bb: $38 $68

	sbc b                                            ; $78bd: $98
	cp h                                             ; $78be: $bc
	call z, $ecd4                                    ; $78bf: $cc $d4 $ec
	ld a, [$bde6]                                    ; $78c2: $fa $e6 $bd
	di                                               ; $78c5: $f3
	jp c, Jump_06a_4dfd                              ; $78c6: $da $fd $4d

	cp $26                                           ; $78c9: $fe $26
	rst $38                                          ; $78cb: $ff
	dec h                                            ; $78cc: $25
	rst $38                                          ; $78cd: $ff
	or d                                             ; $78ce: $b2
	rst $38                                          ; $78cf: $ff
	or [hl]                                          ; $78d0: $b6
	db $db                                           ; $78d1: $db
	ld [hl], l                                       ; $78d2: $75
	db $db                                           ; $78d3: $db
	ld e, e                                          ; $78d4: $5b
	db $ed                                           ; $78d5: $ed
	cp e                                             ; $78d6: $bb
	ld l, h                                          ; $78d7: $6c
	or a                                             ; $78d8: $b7
	sub d                                            ; $78d9: $92
	ld l, h                                          ; $78da: $6c
	db $ed                                           ; $78db: $ed
	ld [hl], $ed                                     ; $78dc: $36 $ed
	ld [hl], $5a                                     ; $78de: $36 $5a
	or a                                             ; $78e0: $b7

jr_06a_78e1:
	ld d, d                                          ; $78e1: $52
	cp a                                             ; $78e2: $bf
	ld d, d                                          ; $78e3: $52
	cp a                                             ; $78e4: $bf
	ld [de], a                                       ; $78e5: $12
	rst $38                                          ; $78e6: $ff
	ld h, a                                          ; $78e7: $67
	cp $9c                                           ; $78e8: $fe $9c
	ld d, $ff                                        ; $78ea: $16 $ff
	inc d                                            ; $78ec: $14
	ld a, e                                          ; $78ed: $7b

Call_06a_78ee:
	cp $95                                           ; $78ee: $fe $95
	jr c, jr_06a_78e1                                ; $78f0: $38 $ef

	add hl, sp                                       ; $78f2: $39
	rst AddAOntoHL                                          ; $78f3: $ef
	ld a, a                                          ; $78f4: $7f

jr_06a_78f5:
	rst JumpTable                                          ; $78f5: $c7
	ld a, a                                          ; $78f6: $7f
	call nz, $84ff                                   ; $78f7: $c4 $ff $84
	ld a, e                                          ; $78fa: $7b
	cp $80                                           ; $78fb: $fe $80
	inc b                                            ; $78fd: $04
	rst $38                                          ; $78fe: $ff
	ld [$fc0b], sp                                   ; $78ff: $08 $0b $fc
	adc a                                            ; $7902: $8f

jr_06a_7903:
	ld a, b                                          ; $7903: $78
	sub [hl]                                         ; $7904: $96
	ld a, c                                          ; $7905: $79
	ld d, $f9                                        ; $7906: $16 $f9
	inc e                                            ; $7908: $1c
	di                                               ; $7909: $f3
	jr z, jr_06a_7903                                ; $790a: $28 $f7

	jr c, jr_06a_78f5                                ; $790c: $38 $e7

	ld d, c                                          ; $790e: $51
	xor $71                                          ; $790f: $ee $71
	adc $c1                                          ; $7911: $ce $c1
	cp $c1                                           ; $7913: $fe $c1
	cp $e3                                           ; $7915: $fe $e3
	db $fc                                           ; $7917: $fc
	inc sp                                           ; $7918: $33
	db $fc                                           ; $7919: $fc
	rla                                              ; $791a: $17
	ld hl, sp-$64                                    ; $791b: $f8 $9c
	db $10                                           ; $791d: $10
	rst $38                                          ; $791e: $ff
	db $10                                           ; $791f: $10
	ld a, d                                          ; $7920: $7a
	rst SubAFromDE                                          ; $7921: $df
	ld [hl], a                                       ; $7922: $77
	add b                                            ; $7923: $80
	add e                                            ; $7924: $83

jr_06a_7925:
	ld h, b                                          ; $7925: $60
	ldh [$b0], a                                     ; $7926: $e0 $b0
	ldh a, [$50]                                     ; $7928: $f0 $50
	ldh a, [$a8]                                     ; $792a: $f0 $a8
	ld a, b                                          ; $792c: $78
	ld d, h                                          ; $792d: $54
	cp h                                             ; $792e: $bc
	ld l, h                                          ; $792f: $6c
	sbc h                                            ; $7930: $9c
	or [hl]                                          ; $7931: $b6
	adc $5a                                          ; $7932: $ce $5a
	and $da                                          ; $7934: $e6 $da
	ld h, [hl]                                       ; $7936: $66
	call $ad73                                       ; $7937: $cd $73 $ad
	ld [hl], e                                       ; $793a: $73
	and l                                            ; $793b: $a5
	ld a, e                                          ; $793c: $7b
	and l                                            ; $793d: $a5
	ld a, e                                          ; $793e: $7b
	ld hl, $77ff                                     ; $793f: $21 $ff $77
	cp $80                                           ; $7942: $fe $80
	inc hl                                           ; $7944: $23
	rst $38                                          ; $7945: $ff
	ld [hl+], a                                      ; $7946: $22
	cp $26                                           ; $7947: $fe $26
	cp $44                                           ; $7949: $fe $44
	db $fc                                           ; $794b: $fc
	ld c, h                                          ; $794c: $4c
	db $fc                                           ; $794d: $fc
	sbc b                                            ; $794e: $98
	ld hl, sp-$50                                    ; $794f: $f8 $b0
	ldh a, [$e0]                                     ; $7951: $f0 $e0

jr_06a_7953:
	ldh [$f8], a                                     ; $7953: $e0 $f8

jr_06a_7955:
	jr c, jr_06a_7953                                ; $7955: $38 $fc

	inc c                                            ; $7957: $0c
	db $fc                                           ; $7958: $fc
	inc b                                            ; $7959: $04
	cp $06                                           ; $795a: $fe $06
	rst $38                                          ; $795c: $ff
	inc bc                                           ; $795d: $03
	ld sp, $79cf                                     ; $795e: $31 $cf $79
	add a                                            ; $7961: $87
	ld a, b                                          ; $7962: $78
	ld a, e                                          ; $7963: $7b
	cp $77                                           ; $7964: $fe $77
	inc h                                            ; $7966: $24

jr_06a_7967:
	ld [hl], a                                       ; $7967: $77
	cp $7f                                           ; $7968: $fe $7f
	ld a, [de]                                       ; $796a: $1a
	ld a, a                                          ; $796b: $7f
	cp $7f                                           ; $796c: $fe $7f
	inc d                                            ; $796e: $14
	ld l, [hl]                                       ; $796f: $6e
	add h                                            ; $7970: $84
	ld a, [hl]                                       ; $7971: $7e
	ld [hl], b                                       ; $7972: $70
	ld a, a                                          ; $7973: $7f
	inc de                                           ; $7974: $13
	ld [hl], a                                       ; $7975: $77
	and b                                            ; $7976: $a0
	rst SubAFromDE                                          ; $7977: $df
	add b                                            ; $7978: $80
	rst SubAFromDE                                          ; $7979: $df
	ret nz                                           ; $797a: $c0

	ld [hl], a                                       ; $797b: $77
	sbc h                                            ; $797c: $9c
	ld a, [hl]                                       ; $797d: $7e
	adc d                                            ; $797e: $8a
	sbc d                                            ; $797f: $9a
	db $10                                           ; $7980: $10
	ldh a, [rAUD2LOW]                                ; $7981: $f0 $18
	ld hl, sp+$08                                    ; $7983: $f8 $08
	ld a, e                                          ; $7985: $7b
	cp $98                                           ; $7986: $fe $98
	adc b                                            ; $7988: $88
	ld a, b                                          ; $7989: $78
	ret z                                            ; $798a: $c8

	jr c, jr_06a_7955                                ; $798b: $38 $c8

	jr c, jr_06a_7967                                ; $798d: $38 $d8

	ld a, e                                          ; $798f: $7b
	cp $1e                                           ; $7990: $fe $1e
	nop                                              ; $7992: $00
	sub d                                            ; $7993: $92
	adc b                                            ; $7994: $88
	call z, $8888                                    ; $7995: $cc $88 $88
	ld h, [hl]                                       ; $7998: $66
	ld b, h                                          ; $7999: $44
	adc b                                            ; $799a: $88
	nop                                              ; $799b: $00
	sbc c                                            ; $799c: $99
	sbc c                                            ; $799d: $99
	inc sp                                           ; $799e: $33
	adc b                                            ; $799f: $88
	ld [hl+], a                                      ; $79a0: $22
	ld d, a                                          ; $79a1: $57
	ei                                               ; $79a2: $fb
	ld a, e                                          ; $79a3: $7b
	db $ec                                           ; $79a4: $ec
	sbc [hl]                                         ; $79a5: $9e
	ld [hl+], a                                      ; $79a6: $22
	ld [hl], a                                       ; $79a7: $77
	rst SubAFromBC                                          ; $79a8: $e7
	ld a, e                                          ; $79a9: $7b
	db $fc                                           ; $79aa: $fc
	sbc h                                            ; $79ab: $9c
	xor $44                                          ; $79ac: $ee $44
	call z, $01aa                                    ; $79ae: $cc $aa $01
	add b                                            ; $79b1: $80
	ld e, e                                          ; $79b2: $5b
	rst $38                                          ; $79b3: $ff
	ld e, a                                          ; $79b4: $5f
	db $fd                                           ; $79b5: $fd
	rst $38                                          ; $79b6: $ff
	ld sp, hl                                        ; $79b7: $f9
	xor [hl]                                         ; $79b8: $ae
	ld sp, hl                                        ; $79b9: $f9
	adc l                                            ; $79ba: $8d
	ei                                               ; $79bb: $fb
	inc c                                            ; $79bc: $0c
	db $fc                                           ; $79bd: $fc
	inc e                                            ; $79be: $1c
	push af                                          ; $79bf: $f5
	ld a, $e4                                        ; $79c0: $3e $e4
	ld a, $e6                                        ; $79c2: $3e $e6
	ld a, $ee                                        ; $79c4: $3e $ee
	ld a, $f2                                        ; $79c6: $3e $f2
	ld l, $fa                                        ; $79c8: $2e $fa
	ld h, a                                          ; $79ca: $67
	cp $46                                           ; $79cb: $fe $46
	rst $38                                          ; $79cd: $ff
	ld c, e                                          ; $79ce: $4b
	ld sp, hl                                        ; $79cf: $f9
	adc l                                            ; $79d0: $8d
	sbc e                                            ; $79d1: $9b
	ld sp, hl                                        ; $79d2: $f9
	sub a                                            ; $79d3: $97
	rst $38                                          ; $79d4: $ff
	dec d                                            ; $79d5: $15
	ld a, e                                          ; $79d6: $7b
	cp $9c                                           ; $79d7: $fe $9c
	dec h                                            ; $79d9: $25
	rst $38                                          ; $79da: $ff
	add hl, hl                                       ; $79db: $29
	ld a, e                                          ; $79dc: $7b
	cp $80                                           ; $79dd: $fe $80
	ld l, $ff                                        ; $79df: $2e $ff
	add hl, sp                                       ; $79e1: $39
	cp $37                                           ; $79e2: $fe $37
	ld hl, sp+$3f                                    ; $79e4: $f8 $3f
	ldh [$7f], a                                     ; $79e6: $e0 $7f
	pop hl                                           ; $79e8: $e1
	ld a, a                                          ; $79e9: $7f
	pop bc                                           ; $79ea: $c1
	ld a, [hl]                                       ; $79eb: $7e
	jp $c27e                                         ; $79ec: $c3 $7e $c2


	ld a, h                                          ; $79ef: $7c
	add $7c                                          ; $79f0: $c6 $7c
	call nz, $c47e                                   ; $79f2: $c4 $7e $c4
	cp $86                                           ; $79f5: $fe $86
	jp nc, Jump_06a_6f3c                             ; $79f7: $d2 $3c $6f

	ldh a, [$b3]                                     ; $79fa: $f0 $b3
	adc h                                            ; $79fc: $8c
	ld e, a                                          ; $79fd: $5f
	sub a                                            ; $79fe: $97
	inc a                                            ; $79ff: $3c
	push af                                          ; $7a00: $f5
	ldh a, [c]                                       ; $7a01: $f2
	inc l                                            ; $7a02: $2c
	sbc [hl]                                         ; $7a03: $9e
	ld d, $0c                                        ; $7a04: $16 $0c
	ld a, h                                          ; $7a06: $7c
	cp e                                             ; $7a07: $bb
	jr c, jr_06a_7a0a                                ; $7a08: $38 $00

jr_06a_7a0a:
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	add b                                            ; $7a0c: $80
	nop                                              ; $7a0d: $00
	ld a, e                                          ; $7a0e: $7b
	db $fd                                           ; $7a0f: $fd
	sub e                                            ; $7a10: $93
	inc b                                            ; $7a11: $04
	rlca                                             ; $7a12: $07
	dec b                                            ; $7a13: $05
	inc bc                                           ; $7a14: $03
	rrca                                             ; $7a15: $0f
	nop                                              ; $7a16: $00
	inc c                                            ; $7a17: $0c
	inc bc                                           ; $7a18: $03
	rrca                                             ; $7a19: $0f
	inc bc                                           ; $7a1a: $03
	ld b, $03                                        ; $7a1b: $06 $03
	db $fd                                           ; $7a1d: $fd
	sbc [hl]                                         ; $7a1e: $9e
	ld hl, $60be                                     ; $7a1f: $21 $be $60
	ldh a, [rSVBK]                                   ; $7a22: $f0 $70
	sbc e                                            ; $7a24: $9b
	add b                                            ; $7a25: $80
	and b                                            ; $7a26: $a0
	ret nz                                           ; $7a27: $c0

	nop                                              ; $7a28: $00
	cp a                                             ; $7a29: $bf
	ret nz                                           ; $7a2a: $c0

	ld a, [hl]                                       ; $7a2b: $7e
	adc l                                            ; $7a2c: $8d
	ld b, e                                          ; $7a2d: $43
	rst $38                                          ; $7a2e: $ff
	ld b, c                                          ; $7a2f: $41
	rst SubAFromDE                                          ; $7a30: $df
	ldh [$b3], a                                     ; $7a31: $e0 $b3
	ld a, h                                          ; $7a33: $7c
	ld a, l                                          ; $7a34: $7d
	adc [hl]                                         ; $7a35: $8e
	rst AddAOntoHL                                          ; $7a36: $ef
	ldh a, [$ab]                                     ; $7a37: $f0 $ab
	ld c, h                                          ; $7a39: $4c
	ld [hl], $7f                                     ; $7a3a: $36 $7f
	cpl                                              ; $7a3c: $2f
	jr c, @+$01                                      ; $7a3d: $38 $ff

	cp [hl]                                          ; $7a3f: $be
	ld [hl], e                                       ; $7a40: $73
	rrca                                             ; $7a41: $0f
	ld e, $80                                        ; $7a42: $1e $80
	ld bc, $013f                    ; $7a44: $01 $3f $01
	ld a, l                                          ; $7a47: $7d
	inc bc                                           ; $7a48: $03
	ld a, [hl]                                       ; $7a49: $7e
	inc bc                                           ; $7a4a: $03
	rst $38                                          ; $7a4b: $ff
	rlca                                             ; $7a4c: $07
	rst $38                                          ; $7a4d: $ff
	rrca                                             ; $7a4e: $0f
	call c, $fe3f                                    ; $7a4f: $dc $3f $fe
	db $fd                                           ; $7a52: $fd
	cp $f9                                           ; $7a53: $fe $f9
	rst $38                                          ; $7a55: $ff
	pop af                                           ; $7a56: $f1
	db $fd                                           ; $7a57: $fd
	db $e3                                           ; $7a58: $e3
	cp $c3                                           ; $7a59: $fe $c3
	ld a, [$fe87]                                    ; $7a5b: $fa $87 $fe
	rlca                                             ; $7a5e: $07
	db $f4                                           ; $7a5f: $f4
	rrca                                             ; $7a60: $0f
	ld hl, sp+$0f                                    ; $7a61: $f8 $0f
	sub a                                            ; $7a63: $97
	ld hl, sp+$1f                                    ; $7a64: $f8 $1f
	or $1f                                           ; $7a66: $f6 $1f
	db $d3                                           ; $7a68: $d3
	ccf                                              ; $7a69: $3f
	pop hl                                           ; $7a6a: $e1
	ccf                                              ; $7a6b: $3f
	ld l, a                                          ; $7a6c: $6f
	ld b, b                                          ; $7a6d: $40
	sbc c                                            ; $7a6e: $99
	xor a                                            ; $7a6f: $af
	ld hl, sp-$74                                    ; $7a70: $f8 $8c
	ei                                               ; $7a72: $fb
	inc c                                            ; $7a73: $0c
	rst $38                                          ; $7a74: $ff
	scf                                              ; $7a75: $37
	ld b, b                                          ; $7a76: $40
	ld [hl], a                                       ; $7a77: $77
	ld h, b                                          ; $7a78: $60
	sub e                                            ; $7a79: $93
	jp c, $2f3c                                      ; $7a7a: $da $3c $2f

	ldh a, [rIE]                                     ; $7a7d: $f0 $ff
	ret nz                                           ; $7a7f: $c0

	dec l                                            ; $7a80: $2d
	ld e, $f5                                        ; $7a81: $1e $f5
	ld a, [$be5c]                                    ; $7a83: $fa $5c $be
	daa                                              ; $7a86: $27
	ld h, b                                          ; $7a87: $60
	ld [hl], a                                       ; $7a88: $77
	ld e, [hl]                                       ; $7a89: $5e
	sbc [hl]                                         ; $7a8a: $9e
	rlca                                             ; $7a8b: $07
	inc hl                                           ; $7a8c: $23
	ld h, b                                          ; $7a8d: $60
	sub a                                            ; $7a8e: $97
	daa                                              ; $7a8f: $27
	ld hl, sp-$03                                    ; $7a90: $f8 $fd
	ld e, $dd                                        ; $7a92: $1e $dd
	ldh [c], a                                       ; $7a94: $e2
	dec hl                                           ; $7a95: $2b
	call c, Call_06a_603f                            ; $7a96: $dc $3f $60
	ld d, e                                          ; $7a99: $53
	add b                                            ; $7a9a: $80
	sbc h                                            ; $7a9b: $9c
	db $f4                                           ; $7a9c: $f4
	ld a, $e5                                        ; $7a9d: $3e $e5
	scf                                              ; $7a9f: $37
	add b                                            ; $7aa0: $80
	sub c                                            ; $7aa1: $91
	ldh a, [c]                                       ; $7aa2: $f2
	inc c                                            ; $7aa3: $0c
	cp e                                             ; $7aa4: $bb
	ld a, h                                          ; $7aa5: $7c
	rst GetHLinHL                                          ; $7aa6: $cf
	ldh a, [$3f]                                     ; $7aa7: $f0 $3f
	nop                                              ; $7aa9: $00
	ld h, a                                          ; $7aaa: $67
	sbc [hl]                                         ; $7aab: $9e
	ld a, h                                          ; $7aac: $7c
	cp $16                                           ; $7aad: $fe $16
	inc e                                            ; $7aaf: $1c
	ld b, a                                          ; $7ab0: $47
	add b                                            ; $7ab1: $80
	sbc e                                            ; $7ab2: $9b
	rlca                                             ; $7ab3: $07
	nop                                              ; $7ab4: $00
	inc bc                                           ; $7ab5: $03
	rlca                                             ; $7ab6: $07
	ld [hl], a                                       ; $7ab7: $77
	add b                                            ; $7ab8: $80
	sbc l                                            ; $7ab9: $9d
	ld c, $01                                        ; $7aba: $0e $01
	daa                                              ; $7abc: $27
	add b                                            ; $7abd: $80
	sub d                                            ; $7abe: $92
	cp a                                             ; $7abf: $bf
	ret nz                                           ; $7ac0: $c0

	ld l, a                                          ; $7ac1: $6f
	ldh a, [$dd]                                     ; $7ac2: $f0 $dd
	ld a, $79                                        ; $7ac4: $3e $79
	add [hl]                                         ; $7ac6: $86
	rst SubAFromDE                                          ; $7ac7: $df
	ld hl, sp+$26                                    ; $7ac8: $f8 $26
	ld a, a                                          ; $7aca: $7f
	ccf                                              ; $7acb: $3f

jr_06a_7acc:
	inc hl                                           ; $7acc: $23
	add b                                            ; $7acd: $80
	sbc [hl]                                         ; $7ace: $9e
	dec c                                            ; $7acf: $0d
	inc hl                                           ; $7ad0: $23
	add b                                            ; $7ad1: $80
	sub c                                            ; $7ad2: $91
	ld a, [$db04]                                    ; $7ad3: $fa $04 $db
	inc a                                            ; $7ad6: $3c
	rst AddAOntoHL                                          ; $7ad7: $ef
	ldh a, [$3f]                                     ; $7ad8: $f0 $3f
	add b                                            ; $7ada: $80
	rra                                              ; $7adb: $1f
	nop                                              ; $7adc: $00
	call nc, $3aee                                   ; $7add: $d4 $ee $3a
	ld a, h                                          ; $7ae0: $7c
	scf                                              ; $7ae1: $37
	add b                                            ; $7ae2: $80
	ld a, a                                          ; $7ae3: $7f
	add h                                            ; $7ae4: $84
	ld [hl], a                                       ; $7ae5: $77
	ld a, [hl]                                       ; $7ae6: $7e
	ld a, a                                          ; $7ae7: $7f
	or $9e                                           ; $7ae8: $f6 $9e
	ld bc, $7e7b                                     ; $7aea: $01 $7b $7e
	ccf                                              ; $7aed: $3f
	add b                                            ; $7aee: $80
	sub c                                            ; $7aef: $91
	ld a, a                                          ; $7af0: $7f
	add b                                            ; $7af1: $80
	rst AddAOntoHL                                          ; $7af2: $ef
	ldh a, [$99]                                     ; $7af3: $f0 $99
	ld a, [hl]                                       ; $7af5: $7e
	ld sp, hl                                        ; $7af6: $f9
	ld b, $ff                                        ; $7af7: $06 $ff
	nop                                              ; $7af9: $00
	or d                                             ; $7afa: $b2
	rst GetHLinHL                                          ; $7afb: $cf
	ld a, e                                          ; $7afc: $7b
	db $fc                                           ; $7afd: $fc
	ld c, a                                          ; $7afe: $4f
	add b                                            ; $7aff: $80
	add b                                            ; $7b00: $80
	ret nz                                           ; $7b01: $c0

	add b                                            ; $7b02: $80
	ldh [$c0], a                                     ; $7b03: $e0 $c0
	ld [hl], b                                       ; $7b05: $70
	ldh [$58], a                                     ; $7b06: $e0 $58
	ldh a, [$7c]                                     ; $7b08: $f0 $7c
	ld hl, sp-$04                                    ; $7b0a: $f8 $fc
	cp $fb                                           ; $7b0c: $fe $fb
	rst $38                                          ; $7b0e: $ff
	di                                               ; $7b0f: $f3
	cp $fb                                           ; $7b10: $fe $fb
	and $ff                                          ; $7b12: $e6 $ff
	jp nz, $86cb                                     ; $7b14: $c2 $cb $86

	sbc e                                            ; $7b17: $9b
	ld b, $97                                        ; $7b18: $06 $97
	inc c                                            ; $7b1a: $0c
	rlca                                             ; $7b1b: $07
	inc e                                            ; $7b1c: $1c
	cpl                                              ; $7b1d: $2f
	rra                                              ; $7b1e: $1f
	ld a, l                                          ; $7b1f: $7d
	sbc c                                            ; $7b20: $99
	ld a, $b0                                        ; $7b21: $3e $b0
	and b                                            ; $7b23: $a0
	nop                                              ; $7b24: $00
	ld b, b                                          ; $7b25: $40
	ld h, c                                          ; $7b26: $61
	cp a                                             ; $7b27: $bf
	inc bc                                           ; $7b28: $03
	rlca                                             ; $7b29: $07
	sbc l                                            ; $7b2a: $9d
	inc bc                                           ; $7b2b: $03
	rla                                              ; $7b2c: $17
	ld a, d                                          ; $7b2d: $7a
	jr c, jr_06a_7acc                                ; $7b2e: $38 $9c

	xor $f1                                          ; $7b30: $ee $f1
	rrca                                             ; $7b32: $0f
	ld a, e                                          ; $7b33: $7b
	ld a, [de]                                       ; $7b34: $1a
	adc a                                            ; $7b35: $8f
	ld c, $04                                        ; $7b36: $0e $04
	dec e                                            ; $7b38: $1d
	ld [$3039], sp                                   ; $7b39: $08 $39 $30
	db $d3                                           ; $7b3c: $d3
	ld h, b                                          ; $7b3d: $60
	jp $0380                                         ; $7b3e: $c3 $80 $03


	nop                                              ; $7b41: $00
	or b                                             ; $7b42: $b0
	and b                                            ; $7b43: $a0
	ret nz                                           ; $7b44: $c0

	ld h, b                                          ; $7b45: $60
	dec bc                                           ; $7b46: $0b
	ldh [$9b], a                                     ; $7b47: $e0 $9b
	ldh [$e1], a                                     ; $7b49: $e0 $e1
	ld b, b                                          ; $7b4b: $40
	ld h, e                                          ; $7b4c: $63
	dec de                                           ; $7b4d: $1b
	ldh [$98], a                                     ; $7b4e: $e0 $98
	ldh a, [$e0]                                     ; $7b50: $f0 $e0
	ld b, c                                          ; $7b52: $41
	ldh [hDisp0_SCY], a                                     ; $7b53: $e0 $83
	ld b, b                                          ; $7b55: $40
	ld b, a                                          ; $7b56: $47
	dec hl                                           ; $7b57: $2b
	ldh [$9f], a                                     ; $7b58: $e0 $9f
	ld bc, $5b80                                     ; $7b5a: $01 $80 $5b
	rst $38                                          ; $7b5d: $ff
	ld e, a                                          ; $7b5e: $5f
	db $fd                                           ; $7b5f: $fd
	rst $38                                          ; $7b60: $ff
	ei                                               ; $7b61: $fb
	xor l                                            ; $7b62: $ad
	ld a, [$f88c]                                    ; $7b63: $fa $8c $f8
	inc c                                            ; $7b66: $0c
	db $fc                                           ; $7b67: $fc
	inc e                                            ; $7b68: $1c
	db $f4                                           ; $7b69: $f4
	ld a, $e5                                        ; $7b6a: $3e $e5
	ld a, $e6                                        ; $7b6c: $3e $e6
	ld a, $ee                                        ; $7b6e: $3e $ee
	ld a, $f2                                        ; $7b70: $3e $f2
	ld l, $fa                                        ; $7b72: $2e $fa
	ld h, a                                          ; $7b74: $67
	cp $46                                           ; $7b75: $fe $46
	rst $38                                          ; $7b77: $ff
	ld c, e                                          ; $7b78: $4b
	ld sp, hl                                        ; $7b79: $f9
	adc l                                            ; $7b7a: $8d
	sbc e                                            ; $7b7b: $9b
	ld sp, hl                                        ; $7b7c: $f9
	sub a                                            ; $7b7d: $97
	rst $38                                          ; $7b7e: $ff
	dec d                                            ; $7b7f: $15
	ld a, e                                          ; $7b80: $7b
	cp $9c                                           ; $7b81: $fe $9c
	dec h                                            ; $7b83: $25
	rst $38                                          ; $7b84: $ff
	add hl, hl                                       ; $7b85: $29
	ld a, e                                          ; $7b86: $7b
	cp $80                                           ; $7b87: $fe $80
	ld l, $ff                                        ; $7b89: $2e $ff
	add hl, sp                                       ; $7b8b: $39
	cp $37                                           ; $7b8c: $fe $37
	ld hl, sp+$3f                                    ; $7b8e: $f8 $3f
	ldh [$7f], a                                     ; $7b90: $e0 $7f
	pop hl                                           ; $7b92: $e1
	ld a, a                                          ; $7b93: $7f
	pop bc                                           ; $7b94: $c1
	ld a, [hl]                                       ; $7b95: $7e
	jp $c27e                                         ; $7b96: $c3 $7e $c2


	ld a, h                                          ; $7b99: $7c
	add $7c                                          ; $7b9a: $c6 $7c
	call nz, $c47e                                   ; $7b9c: $c4 $7e $c4
	sbc [hl]                                         ; $7b9f: $9e
	ldh [c], a                                       ; $7ba0: $e2
	and $f8                                          ; $7ba1: $e6 $f8
	db $fd                                           ; $7ba3: $fd
	ld e, $3d                                        ; $7ba4: $1e $3d
	ld [bc], a                                       ; $7ba6: $02
	ccf                                              ; $7ba7: $3f
	cp a                                             ; $7ba8: $bf
	rra                                              ; $7ba9: $1f
	call nc, $ee9c                                   ; $7baa: $d4 $9c $ee
	cp b                                             ; $7bad: $b8
	ld a, b                                          ; $7bae: $78
	rst FarCall                                          ; $7baf: $f7
	sbc [hl]                                         ; $7bb0: $9e
	add b                                            ; $7bb1: $80
	ld [hl], e                                       ; $7bb2: $73
	db $fd                                           ; $7bb3: $fd
	rst $38                                          ; $7bb4: $ff
	sbc b                                            ; $7bb5: $98
	rlca                                             ; $7bb6: $07
	nop                                              ; $7bb7: $00
	dec c                                            ; $7bb8: $0d
	inc bc                                           ; $7bb9: $03
	dec bc                                           ; $7bba: $0b
	ld b, $0f                                        ; $7bbb: $06 $0f
	cp a                                             ; $7bbd: $bf
	rlca                                             ; $7bbe: $07
	ld bc, $039d                                     ; $7bbf: $01 $9d $03
	nop                                              ; $7bc2: $00
	cp l                                             ; $7bc3: $bd
	jr nz, jr_06a_7c26                               ; $7bc4: $20 $60

	ldh a, [rSVBK]                                   ; $7bc6: $f0 $70
	sbc e                                            ; $7bc8: $9b
	add b                                            ; $7bc9: $80
	and b                                            ; $7bca: $a0
	ret nz                                           ; $7bcb: $c0

	nop                                              ; $7bcc: $00
	cp a                                             ; $7bcd: $bf
	ret nz                                           ; $7bce: $c0

	ld a, [hl]                                       ; $7bcf: $7e
	sub a                                            ; $7bd0: $97
	ld b, e                                          ; $7bd1: $43
	ld h, e                                          ; $7bd2: $63
	ld e, l                                          ; $7bd3: $5d
	dec e                                            ; $7bd4: $1d
	cp $ff                                           ; $7bd5: $fe $ff
	ldh [rIE], a                                     ; $7bd7: $e0 $ff
	cp [hl]                                          ; $7bd9: $be
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	ld l, l                                          ; $7bdc: $6d
	sbc e                                            ; $7bdd: $9b
	sbc [hl]                                         ; $7bde: $9e
	ld [hl], a                                       ; $7bdf: $77
	ld hl, sp+$3f                                    ; $7be0: $f8 $3f
	cp [hl]                                          ; $7be2: $be
	inc bc                                           ; $7be3: $03
	rrca                                             ; $7be4: $0f
	ld e, $80                                        ; $7be5: $1e $80

Jump_06a_7be7:
	ld bc, $013f                    ; $7be7: $01 $3f $01
	ld a, l                                          ; $7bea: $7d
	inc bc                                           ; $7beb: $03
	ld a, [hl]                                       ; $7bec: $7e
	inc bc                                           ; $7bed: $03
	rst $38                                          ; $7bee: $ff
	rlca                                             ; $7bef: $07
	rst $38                                          ; $7bf0: $ff
	rrca                                             ; $7bf1: $0f
	call c, $fe3f                                    ; $7bf2: $dc $3f $fe
	db $fd                                           ; $7bf5: $fd
	cp $f9                                           ; $7bf6: $fe $f9
	rst $38                                          ; $7bf8: $ff
	pop af                                           ; $7bf9: $f1
	db $fd                                           ; $7bfa: $fd
	db $e3                                           ; $7bfb: $e3
	cp $c3                                           ; $7bfc: $fe $c3
	ld a, [$fe87]                                    ; $7bfe: $fa $87 $fe
	rlca                                             ; $7c01: $07
	db $f4                                           ; $7c02: $f4
	rrca                                             ; $7c03: $0f
	ld hl, sp+$0f                                    ; $7c04: $f8 $0f
	adc [hl]                                         ; $7c06: $8e
	ld hl, sp+$1f                                    ; $7c07: $f8 $1f
	or $1f                                           ; $7c09: $f6 $1f
	db $d3                                           ; $7c0b: $d3
	ccf                                              ; $7c0c: $3f
	pop hl                                           ; $7c0d: $e1
	ccf                                              ; $7c0e: $3f
	ld a, [hl]                                       ; $7c0f: $7e
	call nz, $f28e                                   ; $7c10: $c4 $8e $f2
	ldh a, [c]                                       ; $7c13: $f2
	db $fc                                           ; $7c14: $fc
	db $fd                                           ; $7c15: $fd
	ld c, $3f                                        ; $7c16: $0e $3f
	cp a                                             ; $7c18: $bf
	ccf                                              ; $7c19: $3f
	inc sp                                           ; $7c1a: $33
	sbc d                                            ; $7c1b: $9a
	db $fc                                           ; $7c1c: $fc
	db $ec                                           ; $7c1d: $ec
	cp $74                                           ; $7c1e: $fe $74
	inc e                                            ; $7c20: $1c
	ccf                                              ; $7c21: $3f
	add b                                            ; $7c22: $80
	sub [hl]                                         ; $7c23: $96
	inc b                                            ; $7c24: $04
	inc bc                                           ; $7c25: $03

jr_06a_7c26:
	dec bc                                           ; $7c26: $0b
	rlca                                             ; $7c27: $07
	rrca                                             ; $7c28: $0f
	inc b                                            ; $7c29: $04
	rrca                                             ; $7c2a: $0f
	nop                                              ; $7c2b: $00
	ld b, $7b                                        ; $7c2c: $06 $7b
	add d                                            ; $7c2e: $82
	ccf                                              ; $7c2f: $3f
	add b                                            ; $7c30: $80
	sbc e                                            ; $7c31: $9b
	ld b, e                                          ; $7c32: $43
	db $fd                                           ; $7c33: $fd
	ld a, l                                          ; $7c34: $7d
	cp $6f                                           ; $7c35: $fe $6f
	add d                                            ; $7c37: $82
	sbc c                                            ; $7c38: $99
	adc e                                            ; $7c39: $8b
	db $fc                                           ; $7c3a: $fc
	ld [hl], l                                       ; $7c3b: $75
	cp $d7                                           ; $7c3c: $fe $d7
	ld [hl], b                                       ; $7c3e: $70
	ld c, a                                          ; $7c3f: $4f
	add b                                            ; $7c40: $80
	ld d, d                                          ; $7c41: $52
	ldh [$9c], a                                     ; $7c42: $e0 $9c
	push af                                          ; $7c44: $f5
	ld a, $e4                                        ; $7c45: $3e $e4
	ld b, [hl]                                       ; $7c47: $46
	ldh [rPCM34], a                                  ; $7c48: $e0 $77
	add b                                            ; $7c4a: $80
	sbc h                                            ; $7c4b: $9c
	ld a, [$f5fc]                                    ; $7c4c: $fa $fc $f5
	ld a, e                                          ; $7c4f: $7b
	add b                                            ; $7c50: $80
	sbc c                                            ; $7c51: $99
	dec de                                           ; $7c52: $1b
	inc a                                            ; $7c53: $3c
	rst AddAOntoHL                                          ; $7c54: $ef
	or $1e                                           ; $7c55: $f6 $1e
	cp h                                             ; $7c57: $bc
	cpl                                              ; $7c58: $2f
	add b                                            ; $7c59: $80
	sub a                                            ; $7c5a: $97
	ld c, $07                                        ; $7c5b: $0e $07
	dec bc                                           ; $7c5d: $0b
	inc b                                            ; $7c5e: $04
	inc c                                            ; $7c5f: $0c
	inc bc                                           ; $7c60: $03
	rlca                                             ; $7c61: $07
	ld [bc], a                                       ; $7c62: $02
	cpl                                              ; $7c63: $2f
	add b                                            ; $7c64: $80
	ld a, a                                          ; $7c65: $7f
	inc hl                                           ; $7c66: $23
	ld [hl], a                                       ; $7c67: $77
	add d                                            ; $7c68: $82
	sbc c                                            ; $7c69: $99
	rst GetHLinHL                                          ; $7c6a: $cf
	ldh a, [$73]                                     ; $7c6b: $f0 $73
	cp h                                             ; $7c6d: $bc
	push af                                          ; $7c6e: $f5
	ld a, [hl]                                       ; $7c6f: $7e
	inc bc                                           ; $7c70: $03
	add b                                            ; $7c71: $80
	ld b, e                                          ; $7c72: $43
	add b                                            ; $7c73: $80
	sub c                                            ; $7c74: $91
	add [hl]                                         ; $7c75: $86
	ld a, [$fefc]                                    ; $7c76: $fa $fc $fe
	rst $38                                          ; $7c79: $ff
	ld [bc], a                                       ; $7c7a: $02
	dec hl                                           ; $7c7b: $2b
	inc e                                            ; $7c7c: $1c
	ld [hl], l                                       ; $7c7d: $75
	cp $d3                                           ; $7c7e: $fe $d3
	and $1e                                          ; $7c80: $e6 $1e
	sbc h                                            ; $7c82: $9c
	dec hl                                           ; $7c83: $2b
	nop                                              ; $7c84: $00
	sbc e                                            ; $7c85: $9b
	ld b, $0e                                        ; $7c86: $06 $0e
	ld bc, $130d                                     ; $7c88: $01 $0d $13
	add b                                            ; $7c8b: $80
	sbc c                                            ; $7c8c: $99
	rst SubAFromDE                                          ; $7c8d: $df
	ldh [$f7], a                                     ; $7c8e: $e0 $f7
	ld hl, sp+$5b                                    ; $7c90: $f8 $5b
	sbc h                                            ; $7c92: $9c
	ccf                                              ; $7c93: $3f
	add b                                            ; $7c94: $80
	add b                                            ; $7c95: $80
	pop bc                                           ; $7c96: $c1
	add b                                            ; $7c97: $80
	ldh [$c0], a                                     ; $7c98: $e0 $c0
	ld [hl], b                                       ; $7c9a: $70
	ldh [$58], a                                     ; $7c9b: $e0 $58
	ldh a, [$7c]                                     ; $7c9d: $f0 $7c
	ld hl, sp-$04                                    ; $7c9f: $f8 $fc

jr_06a_7ca1:
	cp $fb                                           ; $7ca1: $fe $fb
	rst $38                                          ; $7ca3: $ff
	di                                               ; $7ca4: $f3
	cp $fb                                           ; $7ca5: $fe $fb
	and $ff                                          ; $7ca7: $e6 $ff
	jp nz, $86cb                                     ; $7ca9: $c2 $cb $86

	sbc e                                            ; $7cac: $9b
	ld b, $97                                        ; $7cad: $06 $97
	inc c                                            ; $7caf: $0c
	rlca                                             ; $7cb0: $07
	inc e                                            ; $7cb1: $1c
	cpl                                              ; $7cb2: $2f
	rra                                              ; $7cb3: $1f
	ld a, l                                          ; $7cb4: $7d
	sbc c                                            ; $7cb5: $99
	ld a, $a0                                        ; $7cb6: $3e $a0
	or b                                             ; $7cb8: $b0
	and b                                            ; $7cb9: $a0
	ld b, b                                          ; $7cba: $40
	ld h, c                                          ; $7cbb: $61
	cp a                                             ; $7cbc: $bf
	inc bc                                           ; $7cbd: $03
	rlca                                             ; $7cbe: $07
	sbc l                                            ; $7cbf: $9d
	inc bc                                           ; $7cc0: $03
	rla                                              ; $7cc1: $17
	ld a, d                                          ; $7cc2: $7a
	ld e, b                                          ; $7cc3: $58
	adc e                                            ; $7cc4: $8b
	xor $f1                                          ; $7cc5: $ee $f1
	rrca                                             ; $7cc7: $0f
	ld bc, $0307                                     ; $7cc8: $01 $07 $03
	ld c, $04                                        ; $7ccb: $0e $04
	dec e                                            ; $7ccd: $1d
	ld [$3039], sp                                   ; $7cce: $08 $39 $30
	db $d3                                           ; $7cd1: $d3
	ld h, b                                          ; $7cd2: $60
	jp $0380                                         ; $7cd3: $c3 $80 $03


	nop                                              ; $7cd6: $00
	ret nz                                           ; $7cd7: $c0

	add c                                            ; $7cd8: $81
	rlca                                             ; $7cd9: $07
	ret nz                                           ; $7cda: $c0

	sbc l                                            ; $7cdb: $9d
	ld b, b                                          ; $7cdc: $40
	ldh [$03], a                                     ; $7cdd: $e0 $03
	ret nz                                           ; $7cdf: $c0

	dec bc                                           ; $7ce0: $0b
	ret nz                                           ; $7ce1: $c0

	sbc h                                            ; $7ce2: $9c
	and c                                            ; $7ce3: $a1
	ld b, b                                          ; $7ce4: $40
	ld b, e                                          ; $7ce5: $43
	inc hl                                           ; $7ce6: $23
	ret nz                                           ; $7ce7: $c0

	sbc h                                            ; $7ce8: $9c
	pop bc                                           ; $7ce9: $c1
	add c                                            ; $7cea: $81
	pop hl                                           ; $7ceb: $e1
	inc de                                           ; $7cec: $13
	ret nz                                           ; $7ced: $c0

	sbc b                                            ; $7cee: $98
	jr jr_06a_7ca1                                   ; $7cef: $18 $b0

	ldh [$f0], a                                     ; $7cf1: $e0 $f0
	ld b, c                                          ; $7cf3: $41
	ldh [$63], a                                     ; $7cf4: $e0 $63
	inc hl                                           ; $7cf6: $23
	ret nz                                           ; $7cf7: $c0

	sub [hl]                                         ; $7cf8: $96
	ld bc, $5b80                                     ; $7cf9: $01 $80 $5b
	rst $38                                          ; $7cfc: $ff
	ld e, a                                          ; $7cfd: $5f
	db $fd                                           ; $7cfe: $fd
	rst $38                                          ; $7cff: $ff
	ei                                               ; $7d00: $fb
	xor l                                            ; $7d01: $ad
	ld a, [$f88c]                                    ; $7d02: $fa $8c $f8
	inc c                                            ; $7d05: $0c
	db $fc                                           ; $7d06: $fc
	inc e                                            ; $7d07: $1c
	push af                                          ; $7d08: $f5
	ld a, $e4                                        ; $7d09: $3e $e4
	ld a, $e6                                        ; $7d0b: $3e $e6
	ld a, $ee                                        ; $7d0d: $3e $ee
	ld a, $f2                                        ; $7d0f: $3e $f2
	ld l, $fa                                        ; $7d11: $2e $fa
	ld h, a                                          ; $7d13: $67
	cp $46                                           ; $7d14: $fe $46
	rst $38                                          ; $7d16: $ff
	ld c, e                                          ; $7d17: $4b
	ld sp, hl                                        ; $7d18: $f9
	adc l                                            ; $7d19: $8d
	sbc e                                            ; $7d1a: $9b
	ld sp, hl                                        ; $7d1b: $f9
	sub a                                            ; $7d1c: $97
	rst $38                                          ; $7d1d: $ff
	dec d                                            ; $7d1e: $15
	ld a, e                                          ; $7d1f: $7b
	cp $9c                                           ; $7d20: $fe $9c

jr_06a_7d22:
	dec h                                            ; $7d22: $25
	rst $38                                          ; $7d23: $ff
	add hl, hl                                       ; $7d24: $29
	ld a, e                                          ; $7d25: $7b
	cp $80                                           ; $7d26: $fe $80
	ld l, $ff                                        ; $7d28: $2e $ff
	add hl, sp                                       ; $7d2a: $39
	cp $37                                           ; $7d2b: $fe $37
	ld hl, sp+$3f                                    ; $7d2d: $f8 $3f
	ldh [$7f], a                                     ; $7d2f: $e0 $7f
	pop hl                                           ; $7d31: $e1
	ld a, a                                          ; $7d32: $7f
	pop bc                                           ; $7d33: $c1
	ld a, [hl]                                       ; $7d34: $7e
	jp $c27e                                         ; $7d35: $c3 $7e $c2


	ld a, h                                          ; $7d38: $7c
	add $7c                                          ; $7d39: $c6 $7c
	call nz, $c47e                                   ; $7d3b: $c4 $7e $c4
	adc [hl]                                         ; $7d3e: $8e
	ldh a, [c]                                       ; $7d3f: $f2
	ld a, [$fdfc]                                    ; $7d40: $fa $fc $fd
	ld b, $23                                        ; $7d43: $06 $23
	inc e                                            ; $7d45: $1c
	dec a                                            ; $7d46: $3d
	sbc b                                            ; $7d47: $98
	ld a, [hl]                                       ; $7d48: $7e
	db $e3                                           ; $7d49: $e3
	or $3e                                           ; $7d4a: $f6 $3e
	sbc h                                            ; $7d4c: $9c
	ld [hl], h                                       ; $7d4d: $74
	inc e                                            ; $7d4e: $1c
	rst FarCall                                          ; $7d4f: $f7
	sbc [hl]                                         ; $7d50: $9e
	add b                                            ; $7d51: $80
	ld [hl], e                                       ; $7d52: $73
	db $fd                                           ; $7d53: $fd
	rst $38                                          ; $7d54: $ff
	sub l                                            ; $7d55: $95
	ld b, $01                                        ; $7d56: $06 $01
	ld c, $07                                        ; $7d58: $0e $07
	ld a, [bc]                                       ; $7d5a: $0a
	dec b                                            ; $7d5b: $05
	dec c                                            ; $7d5c: $0d
	inc bc                                           ; $7d5d: $03
	rlca                                             ; $7d5e: $07
	ld [bc], a                                       ; $7d5f: $02
	db $fd                                           ; $7d60: $fd
	sbc [hl]                                         ; $7d61: $9e
	jr nz, jr_06a_7d22                               ; $7d62: $20 $be

	ld h, b                                          ; $7d64: $60
	ldh a, [rSVBK]                                   ; $7d65: $f0 $70
	sbc e                                            ; $7d67: $9b
	add b                                            ; $7d68: $80
	and b                                            ; $7d69: $a0
	ret nz                                           ; $7d6a: $c0

	nop                                              ; $7d6b: $00
	cp a                                             ; $7d6c: $bf
	ret nz                                           ; $7d6d: $c0

	ld a, [hl]                                       ; $7d6e: $7e
	rst SubAFromDE                                          ; $7d6f: $df
	ld b, e                                          ; $7d70: $43
	rst SubAFromDE                                          ; $7d71: $df
	db $fd                                           ; $7d72: $fd
	sub c                                            ; $7d73: $91
	cp $ff                                           ; $7d74: $fe $ff
	nop                                              ; $7d76: $00
	ccf                                              ; $7d77: $3f
	ret nz                                           ; $7d78: $c0

	rst AddAOntoHL                                          ; $7d79: $ef
	ldh a, [rAUD3LEN]                                ; $7d7a: $f0 $1b
	call c, $7ef5                                    ; $7d7c: $dc $f5 $7e
	rst SubAFromHL                                          ; $7d7f: $d7
	ld [hl], b                                       ; $7d80: $70
	ccf                                              ; $7d81: $3f
	cp [hl]                                          ; $7d82: $be
	inc bc                                           ; $7d83: $03
	rrca                                             ; $7d84: $0f
	ld e, $80                                        ; $7d85: $1e $80
	ld bc, $013f                    ; $7d87: $01 $3f $01
	ld a, l                                          ; $7d8a: $7d
	inc bc                                           ; $7d8b: $03
	ld a, [hl]                                       ; $7d8c: $7e
	inc bc                                           ; $7d8d: $03
	rst $38                                          ; $7d8e: $ff
	rlca                                             ; $7d8f: $07
	rst $38                                          ; $7d90: $ff
	rrca                                             ; $7d91: $0f
	call c, $fe3f                                    ; $7d92: $dc $3f $fe
	db $fd                                           ; $7d95: $fd
	cp $f9                                           ; $7d96: $fe $f9
	rst $38                                          ; $7d98: $ff
	pop af                                           ; $7d99: $f1
	db $fd                                           ; $7d9a: $fd
	db $e3                                           ; $7d9b: $e3
	cp $c3                                           ; $7d9c: $fe $c3
	ld a, [$fe87]                                    ; $7d9e: $fa $87 $fe
	rlca                                             ; $7da1: $07
	db $f4                                           ; $7da2: $f4
	rrca                                             ; $7da3: $0f
	ld hl, sp+$0f                                    ; $7da4: $f8 $0f
	sub a                                            ; $7da6: $97
	ld hl, sp+$1f                                    ; $7da7: $f8 $1f
	or $1f                                           ; $7da9: $f6 $1f
	db $d3                                           ; $7dab: $d3
	ccf                                              ; $7dac: $3f
	pop hl                                           ; $7dad: $e1
	ccf                                              ; $7dae: $3f
	ld h, a                                          ; $7daf: $67
	add b                                            ; $7db0: $80
	ld a, a                                          ; $7db1: $7f
	jp z, $1b99                                      ; $7db2: $ca $99 $1b

	inc a                                            ; $7db5: $3c
	rst AddAOntoHL                                          ; $7db6: $ef
	or $1e                                           ; $7db7: $f6 $1e

Jump_06a_7db9:
	cp h                                             ; $7db9: $bc
	daa                                              ; $7dba: $27
	add b                                            ; $7dbb: $80
	sbc h                                            ; $7dbc: $9c
	dec bc                                           ; $7dbd: $0b
	inc b                                            ; $7dbe: $04
	inc c                                            ; $7dbf: $0c
	inc de                                           ; $7dc0: $13
	add b                                            ; $7dc1: $80
	ld a, a                                          ; $7dc2: $7f
	cp $9b                                           ; $7dc3: $fe $9b
	rst GetHLinHL                                          ; $7dc5: $cf
	ldh a, [$73]                                     ; $7dc6: $f0 $73
	cp h                                             ; $7dc8: $bc
	ccf                                              ; $7dc9: $3f
	add b                                            ; $7dca: $80
	ld d, d                                          ; $7dcb: $52
	ldh [$9c], a                                     ; $7dcc: $e0 $9c
	db $f4                                           ; $7dce: $f4
	ld a, $e5                                        ; $7dcf: $3e $e5
	ld b, [hl]                                       ; $7dd1: $46
	ldh [$7f], a                                     ; $7dd2: $e0 $7f
	add b                                            ; $7dd4: $80
	sub c                                            ; $7dd5: $91
	sbc [hl]                                         ; $7dd6: $9e
	ldh [c], a                                       ; $7dd7: $e2
	and $f8                                          ; $7dd8: $e6 $f8
	db $fd                                           ; $7dda: $fd
	ld e, $3d                                        ; $7ddb: $1e $3d
	ld [bc], a                                       ; $7ddd: $02
	ccf                                              ; $7dde: $3f
	nop                                              ; $7ddf: $00
	inc sp                                           ; $7de0: $33
	db $fc                                           ; $7de1: $fc
	db $ec                                           ; $7de2: $ec
	cp $37                                           ; $7de3: $fe $37
	add b                                            ; $7de5: $80
	sub l                                            ; $7de6: $95
	rlca                                             ; $7de7: $07
	nop                                              ; $7de8: $00
	ld c, $03                                        ; $7de9: $0e $03
	dec bc                                           ; $7deb: $0b
	ld b, $0f                                        ; $7dec: $06 $0f
	nop                                              ; $7dee: $00
	ld b, $03                                        ; $7def: $06 $03
	scf                                              ; $7df1: $37
	add b                                            ; $7df2: $80
	sbc c                                            ; $7df3: $99
	ld [hl], e                                       ; $7df4: $73
	ld c, l                                          ; $7df5: $4d
	dec c                                            ; $7df6: $0d
	cp $ff                                           ; $7df7: $fe $ff
	ldh a, [rPCM34]                                  ; $7df9: $f0 $77
	ld a, [hl]                                       ; $7dfb: $7e
	sbc e                                            ; $7dfc: $9b
	adc e                                            ; $7dfd: $8b
	db $fc                                           ; $7dfe: $fc
	ld [hl], l                                       ; $7dff: $75
	cp $03                                           ; $7e00: $fe $03
	add b                                            ; $7e02: $80
	ld b, e                                          ; $7e03: $43
	add b                                            ; $7e04: $80
	sbc b                                            ; $7e05: $98
	cp [hl]                                          ; $7e06: $be
	jp nz, $f8c6                                     ; $7e07: $c2 $c6 $f8

	ld sp, hl                                        ; $7e0a: $f9
	ld a, $3d                                        ; $7e0b: $3e $3d
	ld a, d                                          ; $7e0d: $7a
	cp $99                                           ; $7e0e: $fe $99
	rra                                              ; $7e10: $1f
	nop                                              ; $7e11: $00
	call nc, Call_06a_78ee                           ; $7e12: $d4 $ee $78
	jr c, jr_06a_7e4e                                ; $7e15: $38 $37

	add b                                            ; $7e17: $80
	ld a, a                                          ; $7e18: $7f
	inc b                                            ; $7e19: $04
	ld [hl], a                                       ; $7e1a: $77
	add b                                            ; $7e1b: $80
	ld a, a                                          ; $7e1c: $7f
	ld hl, sp-$62                                    ; $7e1d: $f8 $9e
	ld bc, $7e7b                                     ; $7e1f: $01 $7b $7e
	ld b, a                                          ; $7e22: $47
	add b                                            ; $7e23: $80
	sbc c                                            ; $7e24: $99
	ld a, a                                          ; $7e25: $7f
	ld b, c                                          ; $7e26: $41
	ld bc, $fffe                                     ; $7e27: $01 $fe $ff
	db $fc                                           ; $7e2a: $fc
	ld [hl], a                                       ; $7e2b: $77
	add b                                            ; $7e2c: $80
	ld a, a                                          ; $7e2d: $7f
	cp $9b                                           ; $7e2e: $fe $9b
	ld l, l                                          ; $7e30: $6d
	sbc [hl]                                         ; $7e31: $9e
	ld [hl], a                                       ; $7e32: $77
	ld hl, sp+$4f                                    ; $7e33: $f8 $4f
	add b                                            ; $7e35: $80
	add b                                            ; $7e36: $80
	ret nz                                           ; $7e37: $c0

	add b                                            ; $7e38: $80
	ldh [$c0], a                                     ; $7e39: $e0 $c0
	ld [hl], b                                       ; $7e3b: $70
	ldh [$58], a                                     ; $7e3c: $e0 $58
	ldh a, [$7c]                                     ; $7e3e: $f0 $7c
	ld hl, sp-$04                                    ; $7e40: $f8 $fc
	cp $fb                                           ; $7e42: $fe $fb
	rst $38                                          ; $7e44: $ff
	di                                               ; $7e45: $f3
	cp $fb                                           ; $7e46: $fe $fb
	and $ff                                          ; $7e48: $e6 $ff
	jp nz, $86cb                                     ; $7e4a: $c2 $cb $86

	sbc e                                            ; $7e4d: $9b

jr_06a_7e4e:
	ld b, $97                                        ; $7e4e: $06 $97
	inc c                                            ; $7e50: $0c
	rlca                                             ; $7e51: $07
	inc e                                            ; $7e52: $1c
	cpl                                              ; $7e53: $2f
	rra                                              ; $7e54: $1f
	ld a, l                                          ; $7e55: $7d
	sbc e                                            ; $7e56: $9b
	ld a, $b0                                        ; $7e57: $3e $b0
	and b                                            ; $7e59: $a0
	nop                                              ; $7e5a: $00
	cp [hl]                                          ; $7e5b: $be
	ld h, c                                          ; $7e5c: $61
	inc bc                                           ; $7e5d: $03
	rlca                                             ; $7e5e: $07
	sbc l                                            ; $7e5f: $9d
	inc bc                                           ; $7e60: $03
	rla                                              ; $7e61: $17
	ld a, d                                          ; $7e62: $7a
	ld e, b                                          ; $7e63: $58
	adc c                                            ; $7e64: $89
	xor $f1                                          ; $7e65: $ee $f1
	rrca                                             ; $7e67: $0f
	ld bc, $0307                                     ; $7e68: $01 $07 $03
	ld c, $04                                        ; $7e6b: $0e $04
	dec e                                            ; $7e6d: $1d
	ld [$3039], sp                                   ; $7e6e: $08 $39 $30
	db $d3                                           ; $7e71: $d3
	ld h, b                                          ; $7e72: $60
	jp $0380                                         ; $7e73: $c3 $80 $03


	nop                                              ; $7e76: $00
	and b                                            ; $7e77: $a0
	or b                                             ; $7e78: $b0
	nop                                              ; $7e79: $00
	ld h, b                                          ; $7e7a: $60
	rla                                              ; $7e7b: $17
	ldh [$df], a                                     ; $7e7c: $e0 $df
	or b                                             ; $7e7e: $b0
	sbc e                                            ; $7e7f: $9b
	ld b, b                                          ; $7e80: $40
	ld h, b                                          ; $7e81: $60
	ld hl, $1740                                     ; $7e82: $21 $40 $17
	ldh [$9a], a                                     ; $7e85: $e0 $9a
	ldh a, [$60]                                     ; $7e87: $f0 $60
	ld b, c                                          ; $7e89: $41
	ld h, b                                          ; $7e8a: $60
	ld h, e                                          ; $7e8b: $63
	inc hl                                           ; $7e8c: $23
	ldh [$9d], a                                     ; $7e8d: $e0 $9d
	ld bc, $5b80                                     ; $7e8f: $01 $80 $5b
	rst $38                                          ; $7e92: $ff
	ld e, a                                          ; $7e93: $5f
	db $fd                                           ; $7e94: $fd
	rst $38                                          ; $7e95: $ff
	ei                                               ; $7e96: $fb
	xor l                                            ; $7e97: $ad
	ld a, [$f88c]                                    ; $7e98: $fa $8c $f8
	inc c                                            ; $7e9b: $0c
	db $fc                                           ; $7e9c: $fc
	inc e                                            ; $7e9d: $1c
	push af                                          ; $7e9e: $f5
	ld a, $e4                                        ; $7e9f: $3e $e4
	ld a, $e6                                        ; $7ea1: $3e $e6
	ld a, $ee                                        ; $7ea3: $3e $ee
	ld a, $f2                                        ; $7ea5: $3e $f2
	ld l, $fa                                        ; $7ea7: $2e $fa
	ld h, a                                          ; $7ea9: $67
	cp $46                                           ; $7eaa: $fe $46
	rst $38                                          ; $7eac: $ff
	ld c, e                                          ; $7ead: $4b
	ld sp, hl                                        ; $7eae: $f9
	adc l                                            ; $7eaf: $8d
	sbc e                                            ; $7eb0: $9b
	ld sp, hl                                        ; $7eb1: $f9
	sub a                                            ; $7eb2: $97
	rst $38                                          ; $7eb3: $ff
	dec d                                            ; $7eb4: $15
	ld a, e                                          ; $7eb5: $7b
	cp $9c                                           ; $7eb6: $fe $9c

jr_06a_7eb8:
	dec h                                            ; $7eb8: $25
	rst $38                                          ; $7eb9: $ff
	add hl, hl                                       ; $7eba: $29
	ld a, e                                          ; $7ebb: $7b
	cp $80                                           ; $7ebc: $fe $80
	ld l, $ff                                        ; $7ebe: $2e $ff
	add hl, sp                                       ; $7ec0: $39
	cp $37                                           ; $7ec1: $fe $37
	ld hl, sp+$3f                                    ; $7ec3: $f8 $3f
	ldh [$7f], a                                     ; $7ec5: $e0 $7f
	pop hl                                           ; $7ec7: $e1
	ld a, a                                          ; $7ec8: $7f
	pop bc                                           ; $7ec9: $c1
	ld a, [hl]                                       ; $7eca: $7e
	jp $c27e                                         ; $7ecb: $c3 $7e $c2


	ld a, h                                          ; $7ece: $7c
	add $7c                                          ; $7ecf: $c6 $7c
	call nz, $c47e                                   ; $7ed1: $c4 $7e $c4
	sbc [hl]                                         ; $7ed4: $9e
	ldh [c], a                                       ; $7ed5: $e2
	ldh a, [c]                                       ; $7ed6: $f2
	db $fc                                           ; $7ed7: $fc
	db $ed                                           ; $7ed8: $ed
	ld e, $33                                        ; $7ed9: $1e $33
	inc c                                            ; $7edb: $0c
	ccf                                              ; $7edc: $3f
	sbc b                                            ; $7edd: $98
	ld a, h                                          ; $7ede: $7c
	db $e3                                           ; $7edf: $e3
	or $3c                                           ; $7ee0: $f6 $3c
	sbc [hl]                                         ; $7ee2: $9e
	ld [hl], h                                       ; $7ee3: $74
	inc e                                            ; $7ee4: $1c
	rst FarCall                                          ; $7ee5: $f7
	sbc [hl]                                         ; $7ee6: $9e
	add b                                            ; $7ee7: $80
	ld [hl], e                                       ; $7ee8: $73
	db $fd                                           ; $7ee9: $fd
	rst $38                                          ; $7eea: $ff
	sub l                                            ; $7eeb: $95
	ld b, $01                                        ; $7eec: $06 $01
	dec bc                                           ; $7eee: $0b
	rlca                                             ; $7eef: $07
	inc c                                            ; $7ef0: $0c
	rlca                                             ; $7ef1: $07
	rrca                                             ; $7ef2: $0f
	ld bc, $0306                                     ; $7ef3: $01 $06 $03
	db $fd                                           ; $7ef6: $fd
	sbc [hl]                                         ; $7ef7: $9e
	jr nz, jr_06a_7eb8                               ; $7ef8: $20 $be

	ld h, b                                          ; $7efa: $60
	ldh a, [rSVBK]                                   ; $7efb: $f0 $70
	sbc e                                            ; $7efd: $9b
	add b                                            ; $7efe: $80
	and b                                            ; $7eff: $a0
	ret nz                                           ; $7f00: $c0

	nop                                              ; $7f01: $00
	cp a                                             ; $7f02: $bf
	ret nz                                           ; $7f03: $c0

	ld a, [hl]                                       ; $7f04: $7e
	adc l                                            ; $7f05: $8d
	ld b, e                                          ; $7f06: $43
	jp $7d7d                                         ; $7f07: $c3 $7d $7d


	cp $ff                                           ; $7f0a: $fe $ff
	add b                                            ; $7f0c: $80
	ccf                                              ; $7f0d: $3f
	ret nz                                           ; $7f0e: $c0

	rst AddAOntoHL                                          ; $7f0f: $ef
	ldh a, [rAUD3LEN]                                ; $7f10: $f0 $1b
	call c, $7ef5                                    ; $7f12: $dc $f5 $7e
	rst SubAFromHL                                          ; $7f15: $d7
	ld [hl], b                                       ; $7f16: $70
	ccf                                              ; $7f17: $3f
	cp [hl]                                          ; $7f18: $be
	inc bc                                           ; $7f19: $03
	rrca                                             ; $7f1a: $0f
	ld e, $80                                        ; $7f1b: $1e $80
	ld bc, $013f                    ; $7f1d: $01 $3f $01
	ld a, l                                          ; $7f20: $7d
	inc bc                                           ; $7f21: $03
	ld a, [hl]                                       ; $7f22: $7e
	inc bc                                           ; $7f23: $03
	rst $38                                          ; $7f24: $ff
	rlca                                             ; $7f25: $07
	rst $38                                          ; $7f26: $ff
	rrca                                             ; $7f27: $0f
	call c, $fe3f                                    ; $7f28: $dc $3f $fe
	db $fd                                           ; $7f2b: $fd
	cp $f9                                           ; $7f2c: $fe $f9
	rst $38                                          ; $7f2e: $ff
	pop af                                           ; $7f2f: $f1
	db $fd                                           ; $7f30: $fd
	db $e3                                           ; $7f31: $e3
	cp $c3                                           ; $7f32: $fe $c3
	ld a, [$fe87]                                    ; $7f34: $fa $87 $fe
	rlca                                             ; $7f37: $07
	db $f4                                           ; $7f38: $f4
	rrca                                             ; $7f39: $0f
	ld hl, sp+$0f                                    ; $7f3a: $f8 $0f
	add a                                            ; $7f3c: $87
	ld hl, sp+$1f                                    ; $7f3d: $f8 $1f
	or $1f                                           ; $7f3f: $f6 $1f
	db $d3                                           ; $7f41: $d3
	ccf                                              ; $7f42: $3f
	pop hl                                           ; $7f43: $e1
	ccf                                              ; $7f44: $3f
	ld a, [hl]                                       ; $7f45: $7e
	call nz, $c2be                                   ; $7f46: $c4 $be $c2
	adc $f0                                          ; $7f49: $ce $f0
	di                                               ; $7f4b: $f3
	inc a                                            ; $7f4c: $3c
	dec a                                            ; $7f4d: $3d
	ld b, $1b                                        ; $7f4e: $06 $1b
	inc a                                            ; $7f50: $3c
	rst AddAOntoHL                                          ; $7f51: $ef
	or $1e                                           ; $7f52: $f6 $1e
	cp h                                             ; $7f54: $bc
	scf                                              ; $7f55: $37
	add b                                            ; $7f56: $80
	sub a                                            ; $7f57: $97
	rlca                                             ; $7f58: $07
	nop                                              ; $7f59: $00
	dec c                                            ; $7f5a: $0d
	inc bc                                           ; $7f5b: $03
	dec bc                                           ; $7f5c: $0b
	rlca                                             ; $7f5d: $07
	dec c                                            ; $7f5e: $0d
	inc bc                                           ; $7f5f: $03
	daa                                              ; $7f60: $27
	add b                                            ; $7f61: $80
	sub l                                            ; $7f62: $95
	dec a                                            ; $7f63: $3d
	cp $ff                                           ; $7f64: $fe $ff
	ret nz                                           ; $7f66: $c0

	rst $38                                          ; $7f67: $ff
	nop                                              ; $7f68: $00
	rst SubAFromDE                                          ; $7f69: $df
	ldh [$73], a                                     ; $7f6a: $e0 $73
	cp h                                             ; $7f6c: $bc
	ccf                                              ; $7f6d: $3f
	add b                                            ; $7f6e: $80
	ld d, d                                          ; $7f6f: $52
	ldh [$9c], a                                     ; $7f70: $e0 $9c
	db $f4                                           ; $7f72: $f4
	ld a, $e5                                        ; $7f73: $3e $e5
	ld b, [hl]                                       ; $7f75: $46
	ldh [$6f], a                                     ; $7f76: $e0 $6f
	add b                                            ; $7f78: $80
	sub l                                            ; $7f79: $95
	cp e                                             ; $7f7a: $bb
	ld a, h                                          ; $7f7b: $7c
	scf                                              ; $7f7c: $37
	ld c, $3d                                        ; $7f7d: $0e $3d
	ld [bc], a                                       ; $7f7f: $02
	inc sp                                           ; $7f80: $33
	db $fc                                           ; $7f81: $fc
	db $ec                                           ; $7f82: $ec
	cp $2f                                           ; $7f83: $fe $2f
	add b                                            ; $7f85: $80
	sbc [hl]                                         ; $7f86: $9e
	inc c                                            ; $7f87: $0c
	ld a, e                                          ; $7f88: $7b
	add b                                            ; $7f89: $80
	ld a, a                                          ; $7f8a: $7f
	xor h                                            ; $7f8b: $ac
	cpl                                              ; $7f8c: $2f
	add b                                            ; $7f8d: $80
	sub c                                            ; $7f8e: $91
	ld [hl], e                                       ; $7f8f: $73
	ld c, l                                          ; $7f90: $4d
	dec c                                            ; $7f91: $0d
	cp $ff                                           ; $7f92: $fe $ff
	ldh a, [$7f]                                     ; $7f94: $f0 $7f
	add b                                            ; $7f96: $80
	rst $38                                          ; $7f97: $ff
	nop                                              ; $7f98: $00
	adc e                                            ; $7f99: $8b
	db $fc                                           ; $7f9a: $fc
	ld [hl], l                                       ; $7f9b: $75
	cp $03                                           ; $7f9c: $fe $03
	add b                                            ; $7f9e: $80
	dec sp                                           ; $7f9f: $3b
	add b                                            ; $7fa0: $80
	sub c                                            ; $7fa1: $91
	sbc [hl]                                         ; $7fa2: $9e
	ldh [$e7], a                                     ; $7fa3: $e0 $e7
	ld hl, sp+$39                                    ; $7fa5: $f8 $39
	ld e, $3f                                        ; $7fa7: $1e $3f
	ld b, $1f                                        ; $7fa9: $06 $1f
	nop                                              ; $7fab: $00
	call nc, Call_06a_78ee                           ; $7fac: $d4 $ee $78
	jr c, @+$39                                      ; $7faf: $38 $37

	add b                                            ; $7fb1: $80
	sub [hl]                                         ; $7fb2: $96
	ld c, $01                                        ; $7fb3: $0e $01
	add hl, bc                                       ; $7fb5: $09
	rlca                                             ; $7fb6: $07
	dec bc                                           ; $7fb7: $0b
	ld b, $07                                        ; $7fb8: $06 $07
	nop                                              ; $7fba: $00
	ld bc, $7e7b                                     ; $7fbb: $01 $7b $7e
	ld b, a                                          ; $7fbe: $47
	add b                                            ; $7fbf: $80
	sbc b                                            ; $7fc0: $98
	ld a, a                                          ; $7fc1: $7f
	ld b, c                                          ; $7fc2: $41
	pop bc                                           ; $7fc3: $c1
	ld a, $3f                                        ; $7fc4: $3e $3f
	db $fc                                           ; $7fc6: $fc
	rst $38                                          ; $7fc7: $ff
	ld a, e                                          ; $7fc8: $7b
	add b                                            ; $7fc9: $80
	ld a, a                                          ; $7fca: $7f
	cp $9b                                           ; $7fcb: $fe $9b
	ld l, l                                          ; $7fcd: $6d
	sbc [hl]                                         ; $7fce: $9e
	ld [hl], a                                       ; $7fcf: $77
	ld hl, sp+$4f                                    ; $7fd0: $f8 $4f
	add b                                            ; $7fd2: $80
	add b                                            ; $7fd3: $80
	ret nz                                           ; $7fd4: $c0

	add b                                            ; $7fd5: $80
	ldh [$c0], a                                     ; $7fd6: $e0 $c0
	ld [hl], b                                       ; $7fd8: $70
	ldh [$58], a                                     ; $7fd9: $e0 $58
	ldh a, [$7c]                                     ; $7fdb: $f0 $7c
	ld hl, sp-$04                                    ; $7fdd: $f8 $fc
	cp $fb                                           ; $7fdf: $fe $fb
	rst $38                                          ; $7fe1: $ff
	di                                               ; $7fe2: $f3
	cp $fb                                           ; $7fe3: $fe $fb
	and $ff                                          ; $7fe5: $e6 $ff

Jump_06a_7fe7:
	jp nz, $86cb                                     ; $7fe7: $c2 $cb $86

	sbc e                                            ; $7fea: $9b
	ld b, $97                                        ; $7feb: $06 $97
	inc c                                            ; $7fed: $0c
	rlca                                             ; $7fee: $07
	inc e                                            ; $7fef: $1c
	cpl                                              ; $7ff0: $2f
	rra                                              ; $7ff1: $1f
	ld a, l                                          ; $7ff2: $7d
	sbc e                                            ; $7ff3: $9b
	ld a, $90                                        ; $7ff4: $3e $90
	ldh [rP1], a                                     ; $7ff6: $e0 $00
	cp [hl]                                          ; $7ff8: $be
	ld h, c                                          ; $7ff9: $61
	inc bc                                           ; $7ffa: $03
	rlca                                             ; $7ffb: $07
	sbc l                                            ; $7ffc: $9d
	inc bc                                           ; $7ffd: $03
	rla                                              ; $7ffe: $17

Call_06a_7fff:
	ld a, d                                          ; $7fff: $7a
